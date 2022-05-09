; ModuleID = '/llk/IR_all_yes/drivers/scsi/qedi/qedi_fw.c_pt.bc'
source_filename = "../drivers/scsi/qedi/qedi_fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qedi_cmd = type { %struct.list_head, i8, %struct.iscsi_hdr, ptr, ptr, ptr, %struct.qedi_io_bdt, %struct.iscsi_task_context, ptr, i32, i16, ptr, %struct.work_struct, i32, i32, ptr, i8, ptr, %struct.qedi_work }
%struct.list_head = type { ptr, ptr }
%struct.iscsi_hdr = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, [12 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.qedi_io_bdt = type { ptr, i32, i16 }
%struct.iscsi_task_context = type { %struct.ystorm_iscsi_task_st_ctx, %struct.ystorm_iscsi_task_ag_ctx, [2 x %struct.regpair], %struct.tdif_task_context, %struct.mstorm_iscsi_task_ag_ctx, [2 x %struct.regpair], %struct.ustorm_iscsi_task_ag_ctx, %struct.mstorm_iscsi_task_st_ctx, %struct.ustorm_iscsi_task_st_ctx, %struct.rdif_task_context }
%struct.ystorm_iscsi_task_st_ctx = type { %struct.ystorm_iscsi_task_state, %struct.ystorm_iscsi_task_rxmit_opt, %union.iscsi_task_hdr }
%struct.ystorm_iscsi_task_state = type { %struct.scsi_cached_sges, %struct.scsi_sgl_params, i32, i32, %union.iscsi_seq_num, %struct.iscsi_dif_flags, i8 }
%struct.scsi_cached_sges = type { [4 x %struct.scsi_sge] }
%struct.scsi_sge = type { %struct.regpair, i32, i32 }
%struct.regpair = type { i32, i32 }
%struct.scsi_sgl_params = type { %struct.regpair, i32, i32, i16, i8, i8 }
%union.iscsi_seq_num = type { i16 }
%struct.iscsi_dif_flags = type { i8 }
%struct.ystorm_iscsi_task_rxmit_opt = type { i32, i32, i32, i8, i8, i16 }
%union.iscsi_task_hdr = type { %struct.iscsi_common_hdr }
%struct.iscsi_common_hdr = type { i8, i8, i8, i8, i32, %struct.regpair, i32, i32, i32, i32, i32, [3 x i32] }
%struct.ystorm_iscsi_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i8, i8, i16 }
%struct.tdif_task_context = type { i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i16, i16, i32, [8 x i8], [8 x i8] }
%struct.mstorm_iscsi_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i8, i8, i16 }
%struct.ustorm_iscsi_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32 }
%struct.mstorm_iscsi_task_st_ctx = type { %struct.scsi_cached_sges, %struct.scsi_sgl_params, i32, i32, i8, %struct.iscsi_dif_flags, i16, %struct.regpair, i32, i32 }
%struct.ustorm_iscsi_task_st_ctx = type { i32, i32, i32, %struct.regpair, %struct.iscsi_reg1, i8, %struct.iscsi_dif_flags, i16, %struct.tqe_opaque, i32, i32, i32, i8, i8, i8, i8 }
%struct.iscsi_reg1 = type { i32 }
%struct.tqe_opaque = type { [2 x i16] }
%struct.rdif_task_context = type { i32, i16, i16, i8, [7 x i8], i16, i16, i32, i16, i16, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.qedi_work = type { %struct.list_head, ptr, %union.iscsi_cqe, i16, i8 }
%union.iscsi_cqe = type { %struct.iscsi_cqe_common }
%struct.iscsi_cqe_common = type { i16, i8, %union.cqe_error_status, [3 x i32], %union.iscsi_task_hdr }
%union.cqe_error_status = type { i8 }
%struct.qedi_ctx = type { %struct.qedi_dbg_ctx, ptr, ptr, ptr, %struct.qed_dev_iscsi_info, %struct.qed_int_info, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.spinlock, ptr, i32, i32, [6 x i8], [4 x i32], i8, i32, [256 x %struct.qedi_bdq_buf], ptr, i32, i32, ptr, i32, i8, ptr, i32, ptr, ptr, i16, i16, i32, i8, i32, i32, %struct.iscsi_cid_queue, ptr, %struct.qedi_portid_tbl, ptr, ptr, %struct.qed_iscsi_tid, %struct.atomic_t, [128 x i32], ptr, [4096 x i16], %struct.qed_pf_params, ptr, ptr, i16, ptr, %struct.delayed_work, %struct.delayed_work, %struct.spinlock, i32, i32, [2048 x %struct.qedi_io_log], %struct.spinlock, i16, i32, i32, i8, i32, i8, i32, i8, %struct.atomic_t, ptr, %struct.mutex }
%struct.qedi_dbg_ctx = type { i32, ptr, ptr }
%struct.qed_dev_iscsi_info = type { %struct.qed_dev_info, ptr, ptr, i8 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.qedi_bdq_buf = type { ptr, i32 }
%struct.iscsi_cid_queue = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.qedi_portid_tbl = type { %struct.spinlock, i16, i16, i16, ptr }
%struct.qed_iscsi_tid = type { i32, i32, [512 x ptr] }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qedi_io_log = type { i8, i16, i32, i32, i32, i8, [4 x i8], i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iscsi_cls_conn = type { %struct.list_head, ptr, ptr, i32, %struct.mutex, ptr, i32, %struct.work_struct, %struct.device, i32 }
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
%struct.iscsi_nopout = type { i8, i8, i16, i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, [16 x i8] }
%struct.iscsi_task = type { ptr, i16, i16, i32, i32, %struct.scsi_lun, i32, i32, %struct.iscsi_r2t_info, ptr, i32, ptr, ptr, i32, i32, i8, i8, i32, %struct.refcount_struct, %struct.list_head, ptr }
%struct.iscsi_r2t_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_conn = type { ptr, ptr, ptr, i32, %struct.timer_list, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_session = type { ptr, %struct.mutex, %struct.wait_queue_head, %struct.iscsi_tm, %struct.timer_list, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, ptr, %struct.iscsi_pool, ptr }
%struct.iscsi_tm = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.iscsi_pool = type { %struct.kfifo, ptr, i32 }
%struct.kfifo = type { %union.anon.112, [0 x i8] }
%union.anon.112 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_scsi_rsp = type { i8, i8, i8, i8, i8, [3 x i8], [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qedi_conn = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.generic_pdu_resc, %struct.list_head, %struct.wait_queue_head, %struct.spinlock, i8, i32 }
%struct.generic_pdu_resc = type { ptr, i32, i32, ptr, %struct.iscsi_hdr, ptr, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.iscsi_login_response_hdr = type { i8, i8, i8, i8, i32, i32, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, [2 x i32] }
%struct.iscsi_tm_rsp = type { i8, i8, i8, i8, i8, [3 x i8], [8 x i8], i32, i32, i32, i32, i32, [12 x i8] }
%struct.iscsi_logout_response_hdr = type { i8, i8, i8, i8, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, [1 x i32] }
%struct.qedi_work_map = type { %struct.list_head, ptr, ptr, i32, i32, ptr }
%struct.iscsi_cqe_solicited = type { i16, i8, %union.cqe_error_status, i16, i8, i8, i8, [3 x i8], i32, %union.iscsi_task_hdr }
%struct.iscsi_async_msg_hdr = type { i16, i8, i8, i32, %struct.regpair, i32, i32, i32, i32, i32, i16, i8, i8, i16, i16, i32 }
%struct.iscsi_login_req_hdr = type { i8, i8, i8, i8, i32, i32, i16, i16, i32, i16, i16, i32, i32, [4 x i32] }
%struct.scsi_sgl_task_params = type { ptr, %struct.regpair, i32, i16, i8 }
%struct.iscsi_task_params = type { ptr, ptr, i32, i32, i16, i16, i8 }
%struct.iscsi_login_req = type { i8, i8, i8, i8, i8, [3 x i8], [6 x i8], i16, i32, i16, i16, i32, i32, [16 x i8] }
%struct.qedi_endpoint = type { ptr, [4 x i32], [4 x i32], i16, i16, i16, i16, [6 x i8], [6 x i8], i8, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, %struct.iscsi_db_data, ptr, i32, i16, i16, i16, i32, ptr, i32, i32, ptr, %struct.work_struct }
%struct.iscsi_db_data = type { i8, i8, i16 }
%struct.iscsi_wqe = type { i16, i8, %struct.iscsi_dif_flags, i32 }
%struct.iscsi_logout_req_hdr = type { i16, i8, i8, i32, [2 x i32], i32, i16, i16, i32, i32, [4 x i32] }
%struct.iscsi_logout = type { i8, i8, [2 x i8], i8, [3 x i8], [8 x i8], i32, i16, [2 x i8], i32, i32, [16 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.qed_common_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_iscsi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iscsi_tmf_request_hdr = type { i16, i8, i8, i32, %struct.regpair, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.iscsi_text_request_hdr = type { i16, i8, i8, i32, %struct.regpair, i32, i32, i32, i32, [4 x i32] }
%struct.iscsi_text = type { i8, i8, [2 x i8], i8, [3 x i8], [8 x i8], i32, i32, i32, i32, [16 x i8] }
%struct.iscsi_nop_out_hdr = type { i16, i8, i8, i32, %struct.regpair, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iscsi_cmd_hdr = type { i16, i8, i8, i32, %struct.regpair, i32, i32, i32, i32, [4 x i32] }
%struct.iscsi_conn_params = type { i32, i32, i32, i8, i8 }
%struct.scsi_initiator_cmd_params = type { %struct.scsi_sge, %struct.regpair }
%struct.iscsi_cls_session = type { %struct.list_head, ptr, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i8, %struct.delayed_work, i32, i8, i32, i32, i32, ptr, %struct.device }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.115, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.115 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.iscsi_scsi_req = type { i8, i8, i16, i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, [16 x i8] }
%struct.iscsi_cqe_unsolicited = type { i16, i8, %union.cqe_error_status, i16, i8, i8, i16, [3 x i16], %union.iscsi_task_hdr }
%struct.scsi_bd = type { %struct.regpair, %union.scsi_opaque }
%union.scsi_opaque = type { %struct.regpair }

@__func__.qedi_fp_process_cqes = private unnamed_addr constant [21 x i8] c"qedi_fp_process_cqes\00", align 1
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"fw_cid=0x%x, cqe type=0x%x, opcode=0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid CqE type\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Session no longer exists for cid=0x%x!!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"task is NULL\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Dummy CqE\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CleanUp CqE\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Error cqe.\0A\00", [20 x i8] zeroinitializer }, align 32
@__func__.qedi_cleanup_all_io = private unnamed_addr constant [20 x i8] c"qedi_cleanup_all_io\00", align 1
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"active_cmd_count=%d, cid=0x%x, in_recovery=%d, lun_reset=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"tid=0x%x itt=0x%x scsi_cmd_ptr=%p device=%p task_state=%d cmd_state=0%x cid=0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Deleted active cmd list node io_cmd=%p, cid=0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmd_cleanup_req=%d, cid=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/scsi/qedi/qedi_fw.c\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"i/o cmd_cleanup_req=%d, equal to cmd_cleanup_cmpl=%d, cid=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"i/o cmd_cleanup_req=%d, not equal to cmd_cleanup_cmpl=%d, cid=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@qedi_ops = external dso_local local_unnamed_addr global ptr, align 4
@__func__.qedi_clearsq = private unnamed_addr constant [13 x i8] c"qedi_clearsq\00", align 1
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Cannot proceed, ep already disconnected, cid=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Clearing SQ for cid=0x%x, conn=%p, ep=%p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"fatal error, need hard reset, cid=0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@qedi_send_iscsi_tmf.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&qedi_cmd->tmf_work)\00", [57 x i8] zeroinitializer }, align 32
@__func__.qedi_send_iscsi_tmf = private unnamed_addr constant [20 x i8] c"qedi_send_iscsi_tmf\00", align 1
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid tmf, cid=0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__func__.qedi_iscsi_send_ioreq = private unnamed_addr constant [22 x i8] c"qedi_iscsi_send_ioreq\00", align 1
@.str.19 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s: %s-SGL: sg_len=0x%x num_sges=0x%x first-sge-lo=0x%x first-sge-hi=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Write \00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Read \00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Single\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SLOW\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FAST\00", [27 x i8] zeroinitializer }, align 32
@__func__.qedi_iscsi_cleanup_task = private unnamed_addr constant [24 x i8] c"qedi_iscsi_cleanup_task\00", align 1
@.str.25 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"issue cleanup tid=0x%x itt=0x%x task_state=%d cmd_state=0%x cid=0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.qedi_process_nopin_local_cmpl = private unnamed_addr constant [30 x i8] c"qedi_process_nopin_local_cmpl\00", align 1
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"itid=0x%x, cmd task id=0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.qedi_mtask_completion = private unnamed_addr constant [22 x i8] c"qedi_mtask_completion\00", align 1
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unknown opcode\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.qedi_scsi_completion = private unnamed_addr constant [21 x i8] c"qedi_scsi_completion\00", align 1
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sc_cmd is NULL!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SCp.ptr is NULL, returned in another context.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"request->q is NULL so request is not valid, sc_cmd=%p.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Under flow itt=0x%x proto flags=0x%x tid=0x%x cid 0x%x fw resid 0x%x sc dlen 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Freeing tid=0x%x for cid=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@qedi_io_tracing = external dso_local local_unnamed_addr global i32, align 4
@__func__.qedi_process_login_resp = private unnamed_addr constant [24 x i8] c"qedi_process_login_resp\00", align 1
@__func__.qedi_process_tmf_resp = private unnamed_addr constant [22 x i8] c"qedi_process_tmf_resp\00", align 1
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate resp buf, cid=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@qedi_process_tmf_resp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.qedi_process_text_resp = private unnamed_addr constant [23 x i8] c"qedi_process_text_resp\00", align 1
@.str.34 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Active cmd list node already deleted, tid=0x%x, cid=0x%x, io_cmd_node=%p\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.qedi_process_logout_resp = private unnamed_addr constant [25 x i8] c"qedi_process_logout_resp\00", align 1
@__func__.qedi_process_nopin_mesg = private unnamed_addr constant [24 x i8] c"qedi_process_nopin_mesg\00", align 1
@__func__.qedi_unsol_pdu_adjust_bdq = private unnamed_addr constant [26 x i8] c"qedi_unsol_pdu_adjust_bdq\00", align 1
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"num_bdqs [%d]\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.qedi_get_rq_bdq_buf = private unnamed_addr constant [20 x i8] c"qedi_get_rq_bdq_buf\00", align 1
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"pld_len [%d], bdq_prod_idx [%d], idx [%d]\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"wrong idx %d returned by FW, dropping the unsolicited pkt\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rqe_opaque [0x%p], idx [%d]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unsol_cqe_type = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.qedi_put_rq_bdq_buf = private unnamed_addr constant [20 x i8] c"qedi_put_rq_bdq_buf\00", align 1
@.str.40 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"pbl [0x%p] pbl->address hi [0x%llx] lo [0x%llx] idx [%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.qedi_process_cmd_cleanup_resp = private unnamed_addr constant [30 x i8] c"qedi_process_cmd_cleanup_resp\00", align 1
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"icid not found 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"TMF work not found, cqe->tid=0x%x, cid=0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"TMF work, cqe->tid=0x%x, tmf flags=0x%x, cid=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"IO task completed, tmf rtt=0x%x, cid=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Abort tmf rtt=0x%x, i/o itt=0x%x, i/o tid=0x%x, cid=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.qedi_ring_doorbell = private unnamed_addr constant [19 x i8] c"qedi_ring_doorbell\00", align 1
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"prod_idx=0x%x, fw_prod_idx=0x%x, cid=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.qedi_abort_work = private unnamed_addr constant [16 x i8] c"qedi_abort_work\00", align 1
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid RTT. Letting abort timeout.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Task already completed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Abort tmf rtt=0x%x, cmd itt=0x%x, cmd tid=0x%x, cid=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@qedi_do_not_recover = external dso_local local_unnamed_addr global i32, align 4
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DONT SEND CLEANUP/ABORT %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Memory allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Queue tmf work=%p, list node=%p, cid=0x%x, tmf flags=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"FW cleanup got escalated, cid=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.qedi_wait_for_cleanup_request = private unnamed_addr constant [30 x i8] c"qedi_wait_for_cleanup_request\00", align 1
@.str.54 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Cleanup timedout tid=0x%x, issue connection recovery, cid=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.qedi_map_scsi_sg = private unnamed_addr constant [17 x i8] c"qedi_map_scsi_sg\00", align 1
@.str.55 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"single-cached-sgl: bd_count:%d addr=%llx, len=%x\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sg[%d] size=0x%x\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"byte_count = %d != scsi_bufflen = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"byte_count = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.qedi_split_bd = private unnamed_addr constant [14 x i8] c"qedi_split_bd\00", align 1
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"split sge %d: addr=%llx, len=%x\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.60 = internal global [9 x i64] [i64 7, i64 8, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 8, i64 32, i64 50, i64 63]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 841, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 846, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 853, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 874, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 908, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 911, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 915, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1161, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1179, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1195, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1205, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1210, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1216, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1225, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1263, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1269, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1277, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1518, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1527, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 2095, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 2138, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 718, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 705, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 602, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 607, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 613, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 642, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 660, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 195, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 244, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 132, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 401, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 325, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 333, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 339, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 342, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 378, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 746, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 759, i32 5 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 779, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 785, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 793, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 936, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1333, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1339, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1350, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1356, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1363, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1375, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1389, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1303, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1809, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1845, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1861, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1865, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private constant [31 x i8] c"../drivers/scsi/qedi/qedi_fw.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1767, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @qedi_send_iscsi_tmf.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @qedi_process_tmf_resp.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_send_iscsi_tmf.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_process_tmf_resp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_iscsi_unmap_sg_list(ptr nocapture noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_cmd = getelementptr inbounds %struct.qedi_cmd, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %scsi_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsi_cmd, align 4
  %sge_valid = getelementptr inbounds %struct.qedi_cmd, ptr %cmd, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %sge_valid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sge_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %sge_valid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %sge_valid, align 4
  tail call void @scsi_dma_unmap(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_fp_process_cqes(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qedi1 = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedi1, align 4
  %cqe2 = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2
  %cqe_type = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %cqe_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cqe_type, align 2
  %conv = zext i8 %3 to i32
  %hdr_first_byte = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 3
  %4 = ptrtoint ptr %hdr_first_byte to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr_first_byte, align 1
  %conv4 = zext i8 %5 to i32
  %error_bitmap = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %error_bitmap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %error_bitmap, align 1
  %8 = ptrtoint ptr %cqe2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cqe2, align 4
  %conv5 = zext i16 %9 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_fp_process_cqes, i32 noundef 843, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv5, i32 noundef %conv, i32 noundef %conv4) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp ugt i8 %3, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %1, ptr noundef nonnull @__func__.qedi_fp_process_cqes, i32 noundef 846, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %cqe2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cqe2, align 4
  %conv9 = zext i16 %11 to i32
  %conn_cid_tbl = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 36, i32 6
  %12 = ptrtoint ptr %conn_cid_tbl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conn_cid_tbl, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %conv9
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %1, ptr noundef nonnull @__func__.qedi_fp_process_cqes, i32 noundef 855, ptr noundef nonnull @.str.2, i32 noundef %conv9) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dd_data, align 8
  %20 = and i8 %7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  br i1 %tobool16.not, label %if.end20, label %if.then19, !prof !156

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iscsi_conn_failure(ptr noundef %19, i32 noundef 1015) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %21 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %sw.default [
    i8 1, label %if.end20.sw.bb_crit_edge
    i8 3, label %if.end20.sw.bb_crit_edge182
    i8 2, label %sw.bb38
    i8 5, label %sw.bb42
    i8 4, label %sw.bb44
  ]

if.end20.sw.bb_crit_edge182:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end20.sw.bb_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end20.sw.bb_crit_edge, %if.end20.sw.bb_crit_edge182
  %task21 = getelementptr i8, ptr %work, i32 -68
  %22 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task21, align 4
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %1, ptr noundef nonnull @__func__.qedi_fp_process_cqes, i32 noundef 874, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end25:                                         ; preds = %sw.bb
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %itt = getelementptr inbounds %struct.iscsi_nopout, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %itt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp26 = icmp eq i32 %27, -1
  br i1 %cmp26, label %land.lhs.true, label %if.end25.if.else_crit_edge

if.end25.if.else_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end25
  %itid = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 3
  %28 = ptrtoint ptr %itid to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %itid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %29)
  %cmp29.not = icmp eq i16 %29, -1
  br i1 %cmp29.not, label %land.lhs.true.if.else_crit_edge, label %if.then31

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @qedi_process_nopin_local_cmpl(ptr noundef %1, ptr noundef %cqe2, ptr noundef nonnull %23, ptr noundef nonnull %15)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end25.if.else_crit_edge
  %itt33 = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 6
  %30 = ptrtoint ptr %itt33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %itt33, align 4
  %shr34 = lshr i32 %31, 16
  %conv35 = trunc i32 %shr34 to i16
  %itid36 = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 3
  %32 = ptrtoint ptr %itid36 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv35, ptr %itid36, align 4
  %33 = ptrtoint ptr %hdr_first_byte to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hdr_first_byte, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %34, label %sw.default.i [
    i8 33, label %if.else.sw.bb.i_crit_edge
    i8 37, label %if.else.sw.bb.i_crit_edge183
    i8 35, label %sw.bb1.i
    i8 34, label %sw.bb2.i
    i8 36, label %sw.bb3.i
    i8 38, label %sw.bb4.i
    i8 32, label %sw.bb5.i
  ]

if.else.sw.bb.i_crit_edge183:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.else.sw.bb.i_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.else.sw.bb.i_crit_edge, %if.else.sw.bb.i_crit_edge183
  %36 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %15, align 4
  %dd_data.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dd_data.i, align 8
  %dd_data.i.i = getelementptr inbounds %struct.iscsi_task, ptr %23, i32 0, i32 20
  %40 = ptrtoint ptr %dd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dd_data.i.i, align 4
  %session1.i.i = getelementptr inbounds %struct.iscsi_conn, ptr %39, i32 0, i32 2
  %42 = ptrtoint ptr %session1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %session1.i.i, align 8
  %44 = ptrtoint ptr %conn_cid_tbl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %conn_cid_tbl, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %45, i32 %conv9
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i, align 4
  %iscsi_hdr.i.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4
  %48 = ptrtoint ptr %error_bitmap to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %error_bitmap, align 1
  %back_lock.i.i = getelementptr inbounds %struct.iscsi_session, ptr %43, i32 0, i32 53
  tail call void @_raw_spin_lock_bh(ptr noundef %back_lock.i.i) #7
  %scsi_cmd.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %41, i32 0, i32 4
  %50 = ptrtoint ptr %scsi_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %scsi_cmd.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %1, ptr noundef nonnull @__func__.qedi_scsi_completion, i32 noundef 602, ptr noundef nonnull @.str.28) #7
  br label %qedi_scsi_completion.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  %SCp.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %51, i32 0, i32 22
  %52 = ptrtoint ptr %SCp.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %SCp.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %53, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %1, ptr noundef nonnull @__func__.qedi_scsi_completion, i32 noundef 608, ptr noundef nonnull @.str.29) #7
  br label %qedi_scsi_completion.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %51, i32 -192
  %54 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i.i.i.i, align 8
  %tobool6.not.i.i = icmp eq ptr %55, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %1, ptr noundef nonnull @__func__.qedi_scsi_completion, i32 noundef 615, ptr noundef nonnull @.str.30, ptr noundef nonnull %51) #7
  br label %qedi_scsi_completion.exit.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  %sge_valid.i.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %41, i32 0, i32 6, i32 2
  %56 = ptrtoint ptr %sge_valid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %sge_valid.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i.i.i = icmp eq i16 %57, 0
  br i1 %tobool.not.i.i.i, label %if.end9.i.i.qedi_iscsi_unmap_sg_list.exit.i.i_crit_edge, label %if.then.i.i.i

if.end9.i.i.qedi_iscsi_unmap_sg_list.exit.i.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qedi_iscsi_unmap_sg_list.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %sge_valid.i.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %sge_valid.i.i.i, align 4
  tail call void @scsi_dma_unmap(ptr noundef nonnull %51) #7
  br label %qedi_iscsi_unmap_sg_list.exit.i.i

qedi_iscsi_unmap_sg_list.exit.i.i:                ; preds = %if.then.i.i.i, %if.end9.i.i.qedi_iscsi_unmap_sg_list.exit.i.i_crit_edge
  %59 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %23, align 4
  %61 = ptrtoint ptr %hdr_first_byte to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %hdr_first_byte, align 1
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %60, align 4
  %max_cmd_sn.i.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 10
  %64 = ptrtoint ptr %max_cmd_sn.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_cmd_sn.i.i, align 4
  %max_cmdsn.i.i = getelementptr inbounds %struct.iscsi_scsi_rsp, ptr %60, i32 0, i32 11
  %66 = ptrtoint ptr %max_cmdsn.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %max_cmdsn.i.i, align 4
  %exp_cmd_sn.i.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 9
  %67 = ptrtoint ptr %exp_cmd_sn.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %exp_cmd_sn.i.i, align 4
  %exp_cmdsn.i.i = getelementptr inbounds %struct.iscsi_scsi_rsp, ptr %60, i32 0, i32 10
  %69 = ptrtoint ptr %exp_cmdsn.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %exp_cmdsn.i.i, align 4
  %70 = ptrtoint ptr %itid36 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %itid36, align 4
  %conv12.i.i = zext i16 %71 to i32
  %72 = ptrtoint ptr %session1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %session1.i.i, align 8
  %age.i.i = getelementptr inbounds %struct.iscsi_session, ptr %73, i32 0, i32 55
  %74 = ptrtoint ptr %age.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %age.i.i, align 4
  %shl.i.i = shl i32 %75, 28
  %or.i.i = or i32 %shl.i.i, %conv12.i.i
  %itt.i.i = getelementptr inbounds %struct.iscsi_scsi_rsp, ptr %60, i32 0, i32 7
  %76 = ptrtoint ptr %itt.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or.i.i, ptr %itt.i.i, align 4
  %reserved1.i.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 1
  %77 = ptrtoint ptr %reserved1.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %reserved1.i.i, align 1
  %response.i.i = getelementptr inbounds %struct.iscsi_scsi_rsp, ptr %60, i32 0, i32 2
  %79 = ptrtoint ptr %response.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %response.i.i, align 2
  %80 = ptrtoint ptr %iscsi_hdr.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %iscsi_hdr.i.i, align 4
  %cmd_status.i.i = getelementptr inbounds %struct.iscsi_scsi_rsp, ptr %60, i32 0, i32 3
  %82 = ptrtoint ptr %cmd_status.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %cmd_status.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2
  %83 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %flags.i.i, align 2
  %flags14.i.i = getelementptr inbounds %struct.iscsi_scsi_rsp, ptr %60, i32 0, i32 1
  %85 = ptrtoint ptr %flags14.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %flags14.i.i, align 1
  %residual_count.i.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 11, i32 2
  %86 = ptrtoint ptr %residual_count.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %residual_count.i.i, align 4
  %residual_count15.i.i = getelementptr inbounds %struct.iscsi_scsi_rsp, ptr %60, i32 0, i32 14
  %88 = ptrtoint ptr %residual_count15.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %residual_count15.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %81)
  %cmp.i.i = icmp eq i8 %81, 2
  br i1 %cmp.i.i, label %if.then19.i.i, label %qedi_iscsi_unmap_sg_list.exit.i.i.if.end20.i.i_crit_edge

qedi_iscsi_unmap_sg_list.exit.i.i.if.end20.i.i_crit_edge: ; preds = %qedi_iscsi_unmap_sg_list.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i.i

if.then19.i.i:                                    ; preds = %qedi_iscsi_unmap_sg_list.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %reserved2.i.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 4
  %89 = ptrtoint ptr %reserved2.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %reserved2.i.i, align 4
  %and.i.i = and i32 %90, 16777215
  %data.i.i = getelementptr inbounds %struct.iscsi_conn, ptr %39, i32 0, i32 14
  %91 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i.i, align 4
  %sense_buffer.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %41, i32 0, i32 8
  %93 = ptrtoint ptr %sense_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sense_buffer.i.i, align 4
  %95 = call ptr @memcpy(ptr %92, ptr %94, i32 %and.i.i)
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then19.i.i, %qedi_iscsi_unmap_sg_list.exit.i.i.if.end20.i.i_crit_edge
  %datalen.0.i.i = phi i32 [ %and.i.i, %if.then19.i.i ], [ 0, %qedi_iscsi_unmap_sg_list.exit.i.i.if.end20.i.i_crit_edge ]
  %96 = and i8 %49, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool25.not.i.i = icmp eq i8 %96, 0
  br i1 %tobool25.not.i.i, label %if.end20.i.i.if.end46.i.i_crit_edge, label %if.then28.i.i, !prof !156

if.end20.i.i.if.end46.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i.i

if.then28.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %itt.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %itt.i.i, align 4
  %99 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %flags.i.i, align 2
  %conv32.i.i = zext i8 %100 to i32
  %task_id.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %41, i32 0, i32 10
  %101 = ptrtoint ptr %task_id.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %task_id.i.i, align 4
  %conv33.i.i = zext i16 %102 to i32
  %iscsi_conn_id.i.i = getelementptr inbounds %struct.qedi_conn, ptr %47, i32 0, i32 9
  %103 = ptrtoint ptr %iscsi_conn_id.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %iscsi_conn_id.i.i, align 4
  %105 = ptrtoint ptr %residual_count15.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %residual_count15.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %51, i32 0, i32 17, i32 1
  %107 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %length.i.i.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_scsi_completion, i32 noundef 646, i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef %98, i32 noundef %conv32.i.i, i32 noundef %conv33.i.i, i32 noundef %104, i32 noundef %106, i32 noundef %108) #7
  %109 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %length.i.i.i, align 4
  %111 = ptrtoint ptr %residual_count15.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %residual_count15.i.i, align 4
  %112 = ptrtoint ptr %flags14.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %flags14.i.i, align 1
  %114 = and i8 %113, -7
  %115 = or i8 %114, 2
  store i8 %115, ptr %flags14.i.i, align 1
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then28.i.i, %if.end20.i.i.if.end46.i.i_crit_edge
  %list_lock.i.i = getelementptr inbounds %struct.qedi_conn, ptr %47, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %list_lock.i.i) #7
  %io_cmd_in_list.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %41, i32 0, i32 1
  %116 = ptrtoint ptr %io_cmd_in_list.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %io_cmd_in_list.i.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool47.not.i.i = icmp eq i8 %117, 0
  br i1 %tobool47.not.i.i, label %if.end46.i.i.if.end56.i.i_crit_edge, label %if.then54.i.i, !prof !158

if.end46.i.i.if.end56.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i

if.then54.i.i:                                    ; preds = %if.end46.i.i
  %118 = ptrtoint ptr %io_cmd_in_list.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %io_cmd_in_list.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %41) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then54.i.i.list_del_init.exit.i.i_crit_edge

if.then54.i.i.list_del_init.exit.i.i_crit_edge:   ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %119 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev.i.i.i.i, align 4
  %121 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %41, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %120, ptr %prev1.i.i.i.i.i, align 4
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %122, ptr %120, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then54.i.i.list_del_init.exit.i.i_crit_edge
  %125 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %41, ptr %41, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %126 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %41, ptr %prev.i3.i.i.i, align 4
  %active_cmd_count.i.i = getelementptr inbounds %struct.qedi_conn, ptr %47, i32 0, i32 6
  %127 = ptrtoint ptr %active_cmd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %active_cmd_count.i.i, align 4
  %dec.i.i = add i32 %128, -1
  store i32 %dec.i.i, ptr %active_cmd_count.i.i, align 4
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %list_del_init.exit.i.i, %if.end46.i.i.if.end56.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %list_lock.i.i) #7
  %task_id59.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %41, i32 0, i32 10
  %129 = ptrtoint ptr %task_id59.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %task_id59.i.i, align 4
  %conv60.i.i = zext i16 %130 to i32
  %iscsi_conn_id61.i.i = getelementptr inbounds %struct.qedi_conn, ptr %47, i32 0, i32 9
  %131 = ptrtoint ptr %iscsi_conn_id61.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %iscsi_conn_id61.i.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_scsi_completion, i32 noundef 662, i32 noundef 524288, ptr noundef nonnull @.str.32, i32 noundef %conv60.i.i, i32 noundef %132) #7
  %state.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %41, i32 0, i32 13
  %133 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 6, ptr %state.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_io_tracing to i32))
  %134 = load i32, ptr @qedi_io_tracing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool62.not.i.i = icmp eq i32 %134, 0
  br i1 %tobool62.not.i.i, label %if.end56.i.i.if.end65.i.i_crit_edge, label %if.then63.i.i

if.end56.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i.i

if.then63.i.i:                                    ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %task_id59.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %task_id59.i.i, align 4
  tail call void @qedi_trace_io(ptr noundef %1, ptr noundef nonnull %23, i16 noundef zeroext %136, i8 noundef signext 1) #7
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %if.then63.i.i, %if.end56.i.i.if.end65.i.i_crit_edge
  %data66.i.i = getelementptr inbounds %struct.iscsi_conn, ptr %39, i32 0, i32 14
  %137 = ptrtoint ptr %data66.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data66.i.i, align 4
  %call67.i.i = tail call i32 @__iscsi_complete_pdu(ptr noundef %39, ptr noundef %60, ptr noundef %138, i32 noundef %datalen.0.i.i) #7
  br label %qedi_scsi_completion.exit.i

qedi_scsi_completion.exit.i:                      ; preds = %if.end65.i.i, %if.then7.i.i, %if.then3.i.i, %if.then.i.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %back_lock.i.i) #7
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.else
  %139 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %15, align 4
  %dd_data.i1.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %dd_data.i1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dd_data.i1.i, align 8
  %session1.i2.i = getelementptr inbounds %struct.iscsi_conn, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %session1.i2.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %session1.i2.i, align 8
  %dd_data2.i.i = getelementptr inbounds %struct.iscsi_task, ptr %23, i32 0, i32 20
  %145 = ptrtoint ptr %dd_data2.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dd_data2.i.i, align 4
  %iscsi_hdr.i3.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4
  %tasks.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 41
  %task_id.i4.i = getelementptr inbounds %struct.qedi_cmd, ptr %146, i32 0, i32 10
  %147 = ptrtoint ptr %task_id.i4.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %task_id.i4.i, align 4
  %conv.i5.i = zext i16 %148 to i32
  %num_tids_per_block.i.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 41, i32 1
  %149 = ptrtoint ptr %num_tids_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %num_tids_per_block.i.i.i, align 4
  %conv.i5.i.frozen = freeze i32 %conv.i5.i
  %.frozen = freeze i32 %150
  %div.i.i.i = udiv i32 %conv.i5.i.frozen, %.frozen
  %arrayidx.i.i.i = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 41, i32 2, i32 %div.i.i.i
  %151 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx.i.i.i, align 4
  %153 = ptrtoint ptr %tasks.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tasks.i.i, align 4
  %back_lock.i6.i = getelementptr inbounds %struct.iscsi_session, ptr %144, i32 0, i32 53
  tail call void @_raw_spin_lock(ptr noundef %back_lock.i6.i) #7
  %resp_hdr.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4
  %155 = call ptr @memset(ptr %resp_hdr.i.i, i32 0, i32 48)
  %156 = ptrtoint ptr %hdr_first_byte to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %hdr_first_byte, align 1
  %158 = ptrtoint ptr %resp_hdr.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %resp_hdr.i.i, align 4
  %flags_attr.i.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2
  %159 = ptrtoint ptr %flags_attr.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %flags_attr.i.i, align 2
  %flags.i8.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 1
  %161 = ptrtoint ptr %flags.i8.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %flags.i8.i, align 1
  %hlength.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 3
  %162 = ptrtoint ptr %hlength.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %hlength.i.i, align 4
  %hdr_second_dword.i.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 4
  %163 = ptrtoint ptr %hdr_second_dword.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %hdr_second_dword.i.i, align 4
  %and.i9.i = lshr i32 %164, 16
  %conv5.i.i = trunc i32 %and.i9.i to i8
  %dlength.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 4
  %165 = ptrtoint ptr %dlength.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv5.i.i, ptr %dlength.i.i, align 1
  %166 = load i32, ptr %hdr_second_dword.i.i, align 4
  %and7.i.i = lshr i32 %166, 8
  %conv10.i.i = trunc i32 %and7.i.i to i8
  %arrayidx12.i.i = getelementptr %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 4, i32 1
  %167 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv10.i.i, ptr %arrayidx12.i.i, align 1
  %168 = load i32, ptr %hdr_second_dword.i.i, align 4
  %conv16.i.i = trunc i32 %168 to i8
  %arrayidx18.i.i = getelementptr %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 4, i32 2
  %169 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv16.i.i, ptr %arrayidx18.i.i, align 1
  %170 = ptrtoint ptr %itid36 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %itid36, align 4
  %conv19.i.i = zext i16 %171 to i32
  %172 = ptrtoint ptr %session1.i2.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %session1.i2.i, align 8
  %age.i11.i = getelementptr inbounds %struct.iscsi_session, ptr %173, i32 0, i32 55
  %174 = ptrtoint ptr %age.i11.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %age.i11.i, align 4
  %shl.i12.i = shl i32 %175, 28
  %or.i13.i = or i32 %shl.i12.i, %conv19.i.i
  %itt.i14.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 6
  %176 = ptrtoint ptr %itt.i14.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %or.i13.i, ptr %itt.i14.i, align 4
  %tsih.i.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 5, i32 1
  %177 = ptrtoint ptr %tsih.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %tsih.i.i, align 4
  %tsih21.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 5, i32 0, i32 6
  %179 = ptrtoint ptr %tsih21.i.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %tsih21.i.i, align 2
  %stat_sn.i.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 8
  %180 = ptrtoint ptr %stat_sn.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %stat_sn.i.i, align 4
  %statsn.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 8
  %182 = ptrtoint ptr %statsn.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %statsn.i.i, align 4
  %exp_cmd_sn.i15.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 9
  %183 = ptrtoint ptr %exp_cmd_sn.i15.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %exp_cmd_sn.i15.i, align 4
  %exp_cmdsn.i16.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 9
  %185 = ptrtoint ptr %exp_cmdsn.i16.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %exp_cmdsn.i16.i, align 4
  %max_cmd_sn.i17.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 10
  %186 = ptrtoint ptr %max_cmd_sn.i17.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %max_cmd_sn.i17.i, align 4
  %max_cmdsn.i18.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 10
  %188 = ptrtoint ptr %max_cmdsn.i18.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %max_cmdsn.i18.i, align 4
  %status_class.i.i = getelementptr inbounds %struct.iscsi_login_response_hdr, ptr %iscsi_hdr.i3.i, i32 0, i32 15
  %189 = ptrtoint ptr %status_class.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %status_class.i.i, align 1
  %status_class22.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 11
  %191 = ptrtoint ptr %status_class22.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %status_class22.i.i, align 4
  %status_detail.i.i = getelementptr inbounds %struct.iscsi_login_response_hdr, ptr %iscsi_hdr.i3.i, i32 0, i32 14
  %192 = ptrtoint ptr %status_detail.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %status_detail.i.i, align 2
  %status_detail23.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 11, i32 1
  %194 = ptrtoint ptr %status_detail23.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %status_detail23.i.i, align 1
  %195 = load i32, ptr %hdr_second_dword.i.i, align 4
  %and25.i.i = and i32 %195, 16777215
  %resp_buf.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 5
  %196 = ptrtoint ptr %resp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %resp_buf.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %197, i32 %and25.i.i
  %resp_wr_ptr.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 8
  %198 = ptrtoint ptr %resp_wr_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %add.ptr.i.i, ptr %resp_wr_ptr.i.i, align 4
  %list_lock.i19.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %list_lock.i19.i) #7
  %io_cmd_in_list.i20.i = getelementptr inbounds %struct.qedi_cmd, ptr %146, i32 0, i32 1
  %199 = ptrtoint ptr %io_cmd_in_list.i20.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %io_cmd_in_list.i20.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool.not.i21.i = icmp eq i8 %200, 0
  br i1 %tobool.not.i21.i, label %sw.bb1.i.qedi_process_login_resp.exit.i_crit_edge, label %if.then.i23.i, !prof !158

sw.bb1.i.qedi_process_login_resp.exit.i_crit_edge: ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qedi_process_login_resp.exit.i

if.then.i23.i:                                    ; preds = %sw.bb1.i
  %201 = ptrtoint ptr %io_cmd_in_list.i20.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %io_cmd_in_list.i20.i, align 4
  %call.i.i.i22.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %146) #7
  br i1 %call.i.i.i22.i, label %if.end.i.i.i26.i, label %if.then.i23.i.list_del_init.exit.i30.i_crit_edge

if.then.i23.i.list_del_init.exit.i30.i_crit_edge: ; preds = %if.then.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i30.i

if.end.i.i.i26.i:                                 ; preds = %if.then.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i24.i = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  %202 = ptrtoint ptr %prev.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %prev.i.i.i24.i, align 4
  %204 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %146, align 4
  %prev1.i.i.i.i25.i = getelementptr inbounds %struct.list_head, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %prev1.i.i.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %203, ptr %prev1.i.i.i.i25.i, align 4
  %207 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %207)
  store volatile ptr %205, ptr %203, align 4
  br label %list_del_init.exit.i30.i

list_del_init.exit.i30.i:                         ; preds = %if.end.i.i.i26.i, %if.then.i23.i.list_del_init.exit.i30.i_crit_edge
  %208 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile ptr %146, ptr %146, align 4
  %prev.i3.i.i27.i = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  %209 = ptrtoint ptr %prev.i3.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %146, ptr %prev.i3.i.i27.i, align 4
  %active_cmd_count.i28.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 6
  %210 = ptrtoint ptr %active_cmd_count.i28.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %active_cmd_count.i28.i, align 4
  %dec.i29.i = add i32 %211, -1
  store i32 %dec.i29.i, ptr %active_cmd_count.i28.i, align 4
  br label %qedi_process_login_resp.exit.i

qedi_process_login_resp.exit.i:                   ; preds = %list_del_init.exit.i30.i, %sw.bb1.i.qedi_process_login_resp.exit.i_crit_edge
  %212 = mul i32 %div.i.i.i, %.frozen
  %rem.i.i.i.decomposed = sub i32 %conv.i5.i.frozen, %212
  %mul.i.i.i = mul i32 %rem.i.i.i.decomposed, %154
  %add.ptr.i.i.i = getelementptr i8, ptr %152, i32 %mul.i.i.i
  tail call void @_raw_spin_unlock(ptr noundef %list_lock.i19.i) #7
  %213 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 512)
  %214 = ptrtoint ptr %resp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %resp_buf.i.i, align 4
  %216 = ptrtoint ptr %resp_wr_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %resp_wr_ptr.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %217 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %215 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call38.i.i = tail call i32 @__iscsi_complete_pdu(ptr noundef %142, ptr noundef %resp_hdr.i.i, ptr noundef %215, i32 noundef %sub.ptr.sub.i.i) #7
  tail call void @_raw_spin_unlock(ptr noundef %back_lock.i6.i) #7
  %218 = ptrtoint ptr %task_id.i4.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %task_id.i4.i, align 4
  %conv41.i.i = zext i16 %219 to i32
  %iscsi_conn_id.i31.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 9
  %220 = ptrtoint ptr %iscsi_conn_id.i31.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %iscsi_conn_id.i31.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_process_login_resp, i32 noundef 315, i32 noundef 524288, ptr noundef nonnull @.str.32, i32 noundef %conv41.i.i, i32 noundef %221) #7
  %state.i32.i = getelementptr inbounds %struct.qedi_cmd, ptr %146, i32 0, i32 13
  %222 = ptrtoint ptr %state.i32.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 6, ptr %state.i32.i, align 4
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.else
  %223 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %15, align 4
  %dd_data.i34.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %dd_data.i34.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dd_data.i34.i, align 8
  %session1.i35.i = getelementptr inbounds %struct.iscsi_conn, ptr %226, i32 0, i32 2
  %227 = ptrtoint ptr %session1.i35.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %session1.i35.i, align 8
  %dd_data2.i36.i = getelementptr inbounds %struct.iscsi_task, ptr %23, i32 0, i32 20
  %229 = ptrtoint ptr %dd_data2.i36.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dd_data2.i36.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %231 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %231, i32 noundef 2848, i32 noundef 48) #10
  %tmf_resp_buf.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %230, i32 0, i32 17
  %232 = ptrtoint ptr %tmf_resp_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call7.i.i.i.i, ptr %tmf_resp_buf.i.i, align 4
  %tobool.not.i37.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i37.i, label %if.then.i39.i, label %if.end.i62.i

if.then.i39.i:                                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  %iscsi_conn_id.i38.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 9
  %233 = ptrtoint ptr %iscsi_conn_id.i38.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %iscsi_conn_id.i38.i, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedi_process_tmf_resp, i32 noundef 197, ptr noundef nonnull @.str.33, i32 noundef %234) #7
  br label %cleanup

if.end.i62.i:                                     ; preds = %sw.bb2.i
  %back_lock.i40.i = getelementptr inbounds %struct.iscsi_session, ptr %228, i32 0, i32 53
  tail call void @_raw_spin_lock(ptr noundef %back_lock.i40.i) #7
  %235 = ptrtoint ptr %tmf_resp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %tmf_resp_buf.i.i, align 4
  %237 = call ptr @memset(ptr %236, i32 0, i32 48)
  %238 = ptrtoint ptr %hdr_first_byte to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %hdr_first_byte, align 1
  %240 = ptrtoint ptr %236 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %239, ptr %236, align 4
  %hdr_flags.i.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2
  %241 = ptrtoint ptr %hdr_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %hdr_flags.i.i, align 2
  %flags.i42.i = getelementptr inbounds %struct.iscsi_tm_rsp, ptr %236, i32 0, i32 1
  %243 = ptrtoint ptr %flags.i42.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %flags.i42.i, align 1
  %hdr_response.i.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 1
  %244 = ptrtoint ptr %hdr_response.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %hdr_response.i.i, align 1
  %response.i43.i = getelementptr inbounds %struct.iscsi_tm_rsp, ptr %236, i32 0, i32 2
  %246 = ptrtoint ptr %response.i43.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %response.i43.i, align 2
  %hlength.i44.i = getelementptr inbounds %struct.iscsi_tm_rsp, ptr %236, i32 0, i32 4
  %247 = ptrtoint ptr %hlength.i44.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 0, ptr %hlength.i44.i, align 4
  %hdr_second_dword.i45.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 4
  %248 = ptrtoint ptr %hdr_second_dword.i45.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %hdr_second_dword.i45.i, align 4
  %and.i46.i = lshr i32 %249, 16
  %conv.i47.i = trunc i32 %and.i46.i to i8
  %dlength.i48.i = getelementptr inbounds %struct.iscsi_tm_rsp, ptr %236, i32 0, i32 5
  %250 = ptrtoint ptr %dlength.i48.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %conv.i47.i, ptr %dlength.i48.i, align 1
  %251 = load i32, ptr %hdr_second_dword.i45.i, align 4
  %and8.i.i = lshr i32 %251, 8
  %conv11.i.i = trunc i32 %and8.i.i to i8
  %arrayidx13.i.i = getelementptr %struct.iscsi_tm_rsp, ptr %236, i32 0, i32 5, i32 1
  %252 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %conv11.i.i, ptr %arrayidx13.i.i, align 1
  %253 = load i32, ptr %hdr_second_dword.i45.i, align 4
  %conv17.i.i = trunc i32 %253 to i8
  %arrayidx19.i.i = getelementptr %struct.iscsi_tm_rsp, ptr %236, i32 0, i32 5, i32 2
  %254 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %conv17.i.i, ptr %arrayidx19.i.i, align 1
  %255 = ptrtoint ptr %itid36 to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %itid36, align 4
  %conv20.i.i = zext i16 %256 to i32
  %257 = ptrtoint ptr %session1.i35.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %session1.i35.i, align 8
  %age.i50.i = getelementptr inbounds %struct.iscsi_session, ptr %258, i32 0, i32 55
  %259 = ptrtoint ptr %age.i50.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %age.i50.i, align 4
  %shl.i51.i = shl i32 %260, 28
  %or.i52.i = or i32 %shl.i51.i, %conv20.i.i
  %itt.i53.i = getelementptr inbounds %struct.iscsi_tm_rsp, ptr %236, i32 0, i32 7
  %261 = ptrtoint ptr %itt.i53.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %or.i52.i, ptr %itt.i53.i, align 4
  %stat_sn.i54.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 8
  %262 = ptrtoint ptr %stat_sn.i54.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %stat_sn.i54.i, align 4
  %statsn.i55.i = getelementptr inbounds %struct.iscsi_tm_rsp, ptr %236, i32 0, i32 9
  %264 = ptrtoint ptr %statsn.i55.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %263, ptr %statsn.i55.i, align 4
  %exp_cmd_sn.i56.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 9
  %265 = ptrtoint ptr %exp_cmd_sn.i56.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %exp_cmd_sn.i56.i, align 4
  %exp_cmdsn.i57.i = getelementptr inbounds %struct.iscsi_tm_rsp, ptr %236, i32 0, i32 10
  %267 = ptrtoint ptr %exp_cmdsn.i57.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %exp_cmdsn.i57.i, align 4
  %max_cmd_sn.i58.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 10
  %268 = ptrtoint ptr %max_cmd_sn.i58.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %max_cmd_sn.i58.i, align 4
  %max_cmdsn.i59.i = getelementptr inbounds %struct.iscsi_tm_rsp, ptr %236, i32 0, i32 11
  %270 = ptrtoint ptr %max_cmdsn.i59.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %269, ptr %max_cmdsn.i59.i, align 4
  %task22.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %230, i32 0, i32 11
  %271 = ptrtoint ptr %task22.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %task22.i.i, align 4
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %272, align 4
  %list_lock.i60.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %list_lock.i60.i) #7
  %io_cmd_in_list.i61.i = getelementptr inbounds %struct.qedi_cmd, ptr %230, i32 0, i32 1
  %275 = ptrtoint ptr %io_cmd_in_list.i61.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %io_cmd_in_list.i61.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool23.not.i.i = icmp eq i8 %276, 0
  br i1 %tobool23.not.i.i, label %if.end.i62.i.if.end28.i.i_crit_edge, label %if.then26.i.i, !prof !158

if.end.i62.i.if.end28.i.i_crit_edge:              ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i.i

if.then26.i.i:                                    ; preds = %if.end.i62.i
  %277 = ptrtoint ptr %io_cmd_in_list.i61.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 0, ptr %io_cmd_in_list.i61.i, align 4
  %call.i.i.i63.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %230) #7
  br i1 %call.i.i.i63.i, label %if.end.i.i.i66.i, label %if.then26.i.i.list_del_init.exit.i70.i_crit_edge

if.then26.i.i.list_del_init.exit.i70.i_crit_edge: ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i70.i

if.end.i.i.i66.i:                                 ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i64.i = getelementptr inbounds %struct.list_head, ptr %230, i32 0, i32 1
  %278 = ptrtoint ptr %prev.i.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %prev.i.i.i64.i, align 4
  %280 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %230, align 4
  %prev1.i.i.i.i65.i = getelementptr inbounds %struct.list_head, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %prev1.i.i.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %279, ptr %prev1.i.i.i.i65.i, align 4
  %283 = ptrtoint ptr %279 to i32
  call void @__asan_store4_noabort(i32 %283)
  store volatile ptr %281, ptr %279, align 4
  br label %list_del_init.exit.i70.i

list_del_init.exit.i70.i:                         ; preds = %if.end.i.i.i66.i, %if.then26.i.i.list_del_init.exit.i70.i_crit_edge
  %284 = ptrtoint ptr %230 to i32
  call void @__asan_store4_noabort(i32 %284)
  store volatile ptr %230, ptr %230, align 4
  %prev.i3.i.i67.i = getelementptr inbounds %struct.list_head, ptr %230, i32 0, i32 1
  %285 = ptrtoint ptr %prev.i3.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %230, ptr %prev.i3.i.i67.i, align 4
  %active_cmd_count.i68.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 6
  %286 = ptrtoint ptr %active_cmd_count.i68.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %active_cmd_count.i68.i, align 4
  %dec.i69.i = add i32 %287, -1
  store i32 %dec.i69.i, ptr %active_cmd_count.i68.i, align 4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %list_del_init.exit.i70.i, %if.end.i62.i.if.end28.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %list_lock.i60.i) #7
  %tmf_work_lock.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tmf_work_lock.i.i) #7
  %flags30.i.i = getelementptr inbounds %struct.iscsi_tm, ptr %274, i32 0, i32 1
  %288 = ptrtoint ptr %flags30.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %flags30.i.i, align 1
  %290 = and i8 %289, 127
  %and32.i.i = zext i8 %290 to i32
  %and32.off.i.i = add nsw i32 %and32.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and32.off.i.i)
  %switch.i.i = icmp ult i32 %and32.off.i.i, 3
  br i1 %switch.i.i, label %sw.bb.i.i, label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end28.i.i
  %ep_disconnect_starting.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 17
  %291 = ptrtoint ptr %ep_disconnect_starting.i.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %ep_disconnect_starting.i.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %292)
  %tobool33.not.i.i = icmp eq i8 %292, 0
  br i1 %tobool33.not.i.i, label %if.end36.i.i, label %if.then34.i.i

if.then34.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %tmf_work_lock.i.i) #7
  br label %unblock_sess.i.i

if.end36.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %fw_cleanup_works.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 18
  %293 = ptrtoint ptr %fw_cleanup_works.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %fw_cleanup_works.i.i, align 4
  %inc.i.i = add i32 %294, 1
  store i32 %inc.i.i, ptr %fw_cleanup_works.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tmf_work_lock.i.i) #7
  %tmf_work.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %230, i32 0, i32 12
  tail call void @__init_work(ptr noundef %tmf_work.i.i, i32 noundef 0) #7
  %295 = ptrtoint ptr %tmf_work.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 -64, ptr %tmf_work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %230, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @qedi_process_tmf_resp.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry41.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %230, i32 0, i32 12, i32 1
  %296 = ptrtoint ptr %entry41.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store volatile ptr %entry41.i.i, ptr %entry41.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %230, i32 0, i32 12, i32 1, i32 1
  %297 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %entry41.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %230, i32 0, i32 12, i32 2
  %298 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr @qedi_tmf_resp_work, ptr %func.i.i, align 4
  %tmf_thread.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 47
  %299 = ptrtoint ptr %tmf_thread.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %tmf_thread.i.i, align 8
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %300, ptr noundef %tmf_work.i.i) #7
  br label %unblock_sess.i.i

sw.epilog.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %tmf_work_lock.i.i) #7
  %call46.i.i = tail call i32 @__iscsi_complete_pdu(ptr noundef %226, ptr noundef %236, ptr noundef null, i32 noundef 0) #7
  tail call void @kfree(ptr noundef %236) #7
  br label %unblock_sess.i.i

unblock_sess.i.i:                                 ; preds = %sw.epilog.i.i, %if.end36.i.i, %if.then34.i.i
  tail call void @_raw_spin_unlock(ptr noundef %back_lock.i40.i) #7
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.else
  %301 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %15, align 4
  %dd_data.i71.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %302, i32 0, i32 1
  %303 = ptrtoint ptr %dd_data.i71.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %dd_data.i71.i, align 8
  %session1.i72.i = getelementptr inbounds %struct.iscsi_conn, ptr %304, i32 0, i32 2
  %305 = ptrtoint ptr %session1.i72.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %session1.i72.i, align 8
  %dd_data2.i73.i = getelementptr inbounds %struct.iscsi_task, ptr %23, i32 0, i32 20
  %307 = ptrtoint ptr %dd_data2.i73.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %dd_data2.i73.i, align 4
  %tasks.i74.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 41
  %task_id.i75.i = getelementptr inbounds %struct.qedi_cmd, ptr %308, i32 0, i32 10
  %309 = ptrtoint ptr %task_id.i75.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %task_id.i75.i, align 4
  %conv.i76.i = zext i16 %310 to i32
  %num_tids_per_block.i.i77.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 41, i32 1
  %311 = ptrtoint ptr %num_tids_per_block.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %num_tids_per_block.i.i77.i, align 4
  %conv.i76.i.frozen = freeze i32 %conv.i76.i
  %.frozen181 = freeze i32 %312
  %div.i.i78.i = udiv i32 %conv.i76.i.frozen, %.frozen181
  %arrayidx.i.i79.i = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 41, i32 2, i32 %div.i.i78.i
  %313 = ptrtoint ptr %arrayidx.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %arrayidx.i.i79.i, align 4
  %315 = mul i32 %div.i.i78.i, %.frozen181
  %rem.i.i80.i.decomposed = sub i32 %conv.i76.i.frozen, %315
  %316 = ptrtoint ptr %tasks.i74.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %tasks.i74.i, align 4
  %mul.i.i81.i = mul i32 %317, %rem.i.i80.i.decomposed
  %add.ptr.i.i82.i = getelementptr i8, ptr %314, i32 %mul.i.i81.i
  %back_lock.i83.i = getelementptr inbounds %struct.iscsi_session, ptr %306, i32 0, i32 53
  tail call void @_raw_spin_lock(ptr noundef %back_lock.i83.i) #7
  %resp_hdr.i84.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4
  %318 = call ptr @memset(ptr %resp_hdr.i84.i, i32 0, i32 48)
  %319 = ptrtoint ptr %hdr_first_byte to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %hdr_first_byte, align 1
  %321 = ptrtoint ptr %resp_hdr.i84.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %320, ptr %resp_hdr.i84.i, align 4
  %flags.i86.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2
  %322 = ptrtoint ptr %flags.i86.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %flags.i86.i, align 2
  %flags4.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 1
  %324 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %323, ptr %flags4.i.i, align 1
  %hlength.i87.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 3
  %325 = ptrtoint ptr %hlength.i87.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 0, ptr %hlength.i87.i, align 4
  %hdr_second_dword.i88.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 4
  %326 = ptrtoint ptr %hdr_second_dword.i88.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %hdr_second_dword.i88.i, align 4
  %and.i89.i = lshr i32 %327, 16
  %conv6.i.i = trunc i32 %and.i89.i to i8
  %dlength.i90.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 4
  %328 = ptrtoint ptr %dlength.i90.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %conv6.i.i, ptr %dlength.i90.i, align 1
  %329 = load i32, ptr %hdr_second_dword.i88.i, align 4
  %and8.i91.i = lshr i32 %329, 8
  %conv11.i92.i = trunc i32 %and8.i91.i to i8
  %arrayidx13.i93.i = getelementptr %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 4, i32 1
  %330 = ptrtoint ptr %arrayidx13.i93.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 %conv11.i92.i, ptr %arrayidx13.i93.i, align 1
  %331 = load i32, ptr %hdr_second_dword.i88.i, align 4
  %conv17.i94.i = trunc i32 %331 to i8
  %arrayidx19.i95.i = getelementptr %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 4, i32 2
  %332 = ptrtoint ptr %arrayidx19.i95.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %conv17.i94.i, ptr %arrayidx19.i95.i, align 1
  %333 = ptrtoint ptr %itid36 to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %itid36, align 4
  %conv20.i97.i = zext i16 %334 to i32
  %335 = ptrtoint ptr %session1.i72.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %session1.i72.i, align 8
  %age.i98.i = getelementptr inbounds %struct.iscsi_session, ptr %336, i32 0, i32 55
  %337 = ptrtoint ptr %age.i98.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %age.i98.i, align 4
  %shl.i99.i = shl i32 %338, 28
  %or.i100.i = or i32 %shl.i99.i, %conv20.i97.i
  %itt.i101.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 6
  %339 = ptrtoint ptr %itt.i101.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %or.i100.i, ptr %itt.i101.i, align 4
  %ttt.i.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 7
  %340 = ptrtoint ptr %ttt.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %ttt.i.i, align 4
  %ttt22.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 7
  %342 = ptrtoint ptr %ttt22.i.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %341, ptr %ttt22.i.i, align 4
  %stat_sn.i102.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 8
  %343 = ptrtoint ptr %stat_sn.i102.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %stat_sn.i102.i, align 4
  %statsn.i103.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 8
  %345 = ptrtoint ptr %statsn.i103.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %344, ptr %statsn.i103.i, align 4
  %exp_cmd_sn.i104.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 9
  %346 = ptrtoint ptr %exp_cmd_sn.i104.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %exp_cmd_sn.i104.i, align 4
  %exp_cmdsn.i105.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 9
  %348 = ptrtoint ptr %exp_cmdsn.i105.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %347, ptr %exp_cmdsn.i105.i, align 4
  %max_cmd_sn.i106.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 10
  %349 = ptrtoint ptr %max_cmd_sn.i106.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %max_cmd_sn.i106.i, align 4
  %max_cmdsn.i107.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 10
  %351 = ptrtoint ptr %max_cmdsn.i107.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %350, ptr %max_cmdsn.i107.i, align 4
  %352 = load i32, ptr %hdr_second_dword.i88.i, align 4
  %and24.i.i = and i32 %352, 16777215
  %resp_buf.i108.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 5
  %353 = ptrtoint ptr %resp_buf.i108.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %resp_buf.i108.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %354, i32 %and24.i.i
  %resp_wr_ptr.i110.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 8
  %355 = ptrtoint ptr %resp_wr_ptr.i110.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr %add.ptr.i109.i, ptr %resp_wr_ptr.i110.i, align 4
  %356 = call ptr @memset(ptr %add.ptr.i.i82.i, i32 0, i32 512)
  %357 = ptrtoint ptr %task_id.i75.i to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %task_id.i75.i, align 4
  %conv28.i.i = zext i16 %358 to i32
  %iscsi_conn_id.i111.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 9
  %359 = ptrtoint ptr %iscsi_conn_id.i111.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %iscsi_conn_id.i111.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_process_text_resp, i32 noundef 124, i32 noundef 524288, ptr noundef nonnull @.str.32, i32 noundef %conv28.i.i, i32 noundef %360) #7
  %list_lock.i112.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %list_lock.i112.i) #7
  %io_cmd_in_list.i113.i = getelementptr inbounds %struct.qedi_cmd, ptr %308, i32 0, i32 1
  %361 = ptrtoint ptr %io_cmd_in_list.i113.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %io_cmd_in_list.i113.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %362)
  %tobool.not.i114.i = icmp eq i8 %362, 0
  br i1 %tobool.not.i114.i, label %if.else.i.i, label %if.then.i116.i, !prof !158

if.then.i116.i:                                   ; preds = %sw.bb3.i
  %363 = ptrtoint ptr %io_cmd_in_list.i113.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 0, ptr %io_cmd_in_list.i113.i, align 4
  %call.i.i.i115.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %308) #7
  br i1 %call.i.i.i115.i, label %if.end.i.i.i119.i, label %if.then.i116.i.list_del_init.exit.i123.i_crit_edge

if.then.i116.i.list_del_init.exit.i123.i_crit_edge: ; preds = %if.then.i116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i123.i

if.end.i.i.i119.i:                                ; preds = %if.then.i116.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i117.i = getelementptr inbounds %struct.list_head, ptr %308, i32 0, i32 1
  %364 = ptrtoint ptr %prev.i.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %prev.i.i.i117.i, align 4
  %366 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %308, align 4
  %prev1.i.i.i.i118.i = getelementptr inbounds %struct.list_head, ptr %367, i32 0, i32 1
  %368 = ptrtoint ptr %prev1.i.i.i.i118.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %365, ptr %prev1.i.i.i.i118.i, align 4
  %369 = ptrtoint ptr %365 to i32
  call void @__asan_store4_noabort(i32 %369)
  store volatile ptr %367, ptr %365, align 4
  br label %list_del_init.exit.i123.i

list_del_init.exit.i123.i:                        ; preds = %if.end.i.i.i119.i, %if.then.i116.i.list_del_init.exit.i123.i_crit_edge
  %370 = ptrtoint ptr %308 to i32
  call void @__asan_store4_noabort(i32 %370)
  store volatile ptr %308, ptr %308, align 4
  %prev.i3.i.i120.i = getelementptr inbounds %struct.list_head, ptr %308, i32 0, i32 1
  %371 = ptrtoint ptr %prev.i3.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %308, ptr %prev.i3.i.i120.i, align 4
  %active_cmd_count.i121.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 6
  %372 = ptrtoint ptr %active_cmd_count.i121.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %active_cmd_count.i121.i, align 4
  %dec.i122.i = add i32 %373, -1
  store i32 %dec.i122.i, ptr %active_cmd_count.i121.i, align 4
  br label %qedi_process_text_resp.exit.i

if.else.i.i:                                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  %374 = ptrtoint ptr %task_id.i75.i to i32
  call void @__asan_load2_noabort(i32 %374)
  %375 = load i16, ptr %task_id.i75.i, align 4
  %conv34.i.i = zext i16 %375 to i32
  %376 = ptrtoint ptr %iscsi_conn_id.i111.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %iscsi_conn_id.i111.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_process_text_resp, i32 noundef 135, i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %conv34.i.i, i32 noundef %377, ptr noundef %308) #7
  br label %qedi_process_text_resp.exit.i

qedi_process_text_resp.exit.i:                    ; preds = %if.else.i.i, %list_del_init.exit.i123.i
  tail call void @_raw_spin_unlock(ptr noundef %list_lock.i112.i) #7
  %state.i124.i = getelementptr inbounds %struct.qedi_cmd, ptr %308, i32 0, i32 13
  %378 = ptrtoint ptr %state.i124.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 6, ptr %state.i124.i, align 4
  %379 = ptrtoint ptr %resp_buf.i108.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %resp_buf.i108.i, align 4
  %381 = ptrtoint ptr %resp_wr_ptr.i110.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %resp_wr_ptr.i110.i, align 4
  %sub.ptr.lhs.cast.i125.i = ptrtoint ptr %382 to i32
  %sub.ptr.rhs.cast.i126.i = ptrtoint ptr %380 to i32
  %sub.ptr.sub.i127.i = sub i32 %sub.ptr.lhs.cast.i125.i, %sub.ptr.rhs.cast.i126.i
  %call44.i.i = tail call i32 @__iscsi_complete_pdu(ptr noundef %304, ptr noundef %resp_hdr.i84.i, ptr noundef %380, i32 noundef %sub.ptr.sub.i127.i) #7
  tail call void @_raw_spin_unlock(ptr noundef %back_lock.i83.i) #7
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.else
  %383 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %15, align 4
  %dd_data.i129.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %384, i32 0, i32 1
  %385 = ptrtoint ptr %dd_data.i129.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %dd_data.i129.i, align 8
  %session1.i130.i = getelementptr inbounds %struct.iscsi_conn, ptr %386, i32 0, i32 2
  %387 = ptrtoint ptr %session1.i130.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %session1.i130.i, align 8
  %dd_data2.i131.i = getelementptr inbounds %struct.iscsi_task, ptr %23, i32 0, i32 20
  %389 = ptrtoint ptr %dd_data2.i131.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %dd_data2.i131.i, align 4
  %iscsi_hdr.i132.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4
  %back_lock.i133.i = getelementptr inbounds %struct.iscsi_session, ptr %388, i32 0, i32 53
  tail call void @_raw_spin_lock(ptr noundef %back_lock.i133.i) #7
  %resp_hdr3.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4
  %391 = call ptr @memset(ptr %resp_hdr3.i.i, i32 0, i32 48)
  %392 = ptrtoint ptr %hdr_first_byte to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %hdr_first_byte, align 1
  %394 = ptrtoint ptr %resp_hdr3.i.i to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 %393, ptr %resp_hdr3.i.i, align 4
  %flags.i135.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2
  %395 = ptrtoint ptr %flags.i135.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %flags.i135.i, align 2
  %flags5.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 1
  %397 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 %396, ptr %flags5.i.i, align 1
  %hlength.i136.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 3
  %398 = ptrtoint ptr %hlength.i136.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 0, ptr %hlength.i136.i, align 4
  %399 = ptrtoint ptr %itid36 to i32
  call void @__asan_load2_noabort(i32 %399)
  %400 = load i16, ptr %itid36, align 4
  %conv.i138.i = zext i16 %400 to i32
  %401 = ptrtoint ptr %session1.i130.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %session1.i130.i, align 8
  %age.i139.i = getelementptr inbounds %struct.iscsi_session, ptr %402, i32 0, i32 55
  %403 = ptrtoint ptr %age.i139.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %age.i139.i, align 4
  %shl.i140.i = shl i32 %404, 28
  %or.i141.i = or i32 %shl.i140.i, %conv.i138.i
  %itt.i142.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 6
  %405 = ptrtoint ptr %itt.i142.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %or.i141.i, ptr %itt.i142.i, align 4
  %stat_sn.i143.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 8
  %406 = ptrtoint ptr %stat_sn.i143.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %stat_sn.i143.i, align 4
  %statsn.i144.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 8
  %408 = ptrtoint ptr %statsn.i144.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %407, ptr %statsn.i144.i, align 4
  %exp_cmd_sn.i145.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 9
  %409 = ptrtoint ptr %exp_cmd_sn.i145.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %exp_cmd_sn.i145.i, align 4
  %exp_cmdsn.i146.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 9
  %411 = ptrtoint ptr %exp_cmdsn.i146.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %410, ptr %exp_cmdsn.i146.i, align 4
  %max_cmd_sn.i147.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 10
  %412 = ptrtoint ptr %max_cmd_sn.i147.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %max_cmd_sn.i147.i, align 4
  %max_cmdsn.i148.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 10
  %414 = ptrtoint ptr %max_cmdsn.i148.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 %413, ptr %max_cmdsn.i148.i, align 4
  %time_2_wait.i.i = getelementptr inbounds %struct.iscsi_logout_response_hdr, ptr %iscsi_hdr.i132.i, i32 0, i32 13
  %415 = ptrtoint ptr %time_2_wait.i.i to i32
  call void @__asan_load2_noabort(i32 %415)
  %416 = load i16, ptr %time_2_wait.i.i, align 2
  %t2wait.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 11, i32 4
  %417 = ptrtoint ptr %t2wait.i.i to i32
  call void @__asan_store2_noabort(i32 %417)
  store i16 %416, ptr %t2wait.i.i, align 4
  %time_2_retain.i.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 4, i32 0, i32 11, i32 1
  %418 = ptrtoint ptr %time_2_retain.i.i to i32
  call void @__asan_load2_noabort(i32 %418)
  %419 = load i16, ptr %time_2_retain.i.i, align 4
  %t2retain.i.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 13, i32 4, i32 11, i32 6
  %420 = ptrtoint ptr %t2retain.i.i to i32
  call void @__asan_store2_noabort(i32 %420)
  store i16 %419, ptr %t2retain.i.i, align 2
  %task_id.i149.i = getelementptr inbounds %struct.qedi_cmd, ptr %390, i32 0, i32 10
  %421 = ptrtoint ptr %task_id.i149.i to i32
  call void @__asan_load2_noabort(i32 %421)
  %422 = load i16, ptr %task_id.i149.i, align 4
  %conv11.i150.i = zext i16 %422 to i32
  %iscsi_conn_id.i151.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 9
  %423 = ptrtoint ptr %iscsi_conn_id.i151.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %iscsi_conn_id.i151.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_process_logout_resp, i32 noundef 60, i32 noundef 524288, ptr noundef nonnull @.str.32, i32 noundef %conv11.i150.i, i32 noundef %424) #7
  %list_lock.i152.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %list_lock.i152.i) #7
  %io_cmd_in_list.i153.i = getelementptr inbounds %struct.qedi_cmd, ptr %390, i32 0, i32 1
  %425 = ptrtoint ptr %io_cmd_in_list.i153.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %io_cmd_in_list.i153.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %426)
  %tobool.not.i154.i = icmp eq i8 %426, 0
  br i1 %tobool.not.i154.i, label %if.else.i165.i, label %if.then.i156.i, !prof !158

if.then.i156.i:                                   ; preds = %sw.bb4.i
  %427 = ptrtoint ptr %io_cmd_in_list.i153.i to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 0, ptr %io_cmd_in_list.i153.i, align 4
  %call.i.i.i155.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %390) #7
  br i1 %call.i.i.i155.i, label %if.end.i.i.i159.i, label %if.then.i156.i.list_del_init.exit.i163.i_crit_edge

if.then.i156.i.list_del_init.exit.i163.i_crit_edge: ; preds = %if.then.i156.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i163.i

if.end.i.i.i159.i:                                ; preds = %if.then.i156.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i157.i = getelementptr inbounds %struct.list_head, ptr %390, i32 0, i32 1
  %428 = ptrtoint ptr %prev.i.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %prev.i.i.i157.i, align 4
  %430 = ptrtoint ptr %390 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %390, align 4
  %prev1.i.i.i.i158.i = getelementptr inbounds %struct.list_head, ptr %431, i32 0, i32 1
  %432 = ptrtoint ptr %prev1.i.i.i.i158.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store ptr %429, ptr %prev1.i.i.i.i158.i, align 4
  %433 = ptrtoint ptr %429 to i32
  call void @__asan_store4_noabort(i32 %433)
  store volatile ptr %431, ptr %429, align 4
  br label %list_del_init.exit.i163.i

list_del_init.exit.i163.i:                        ; preds = %if.end.i.i.i159.i, %if.then.i156.i.list_del_init.exit.i163.i_crit_edge
  %434 = ptrtoint ptr %390 to i32
  call void @__asan_store4_noabort(i32 %434)
  store volatile ptr %390, ptr %390, align 4
  %prev.i3.i.i160.i = getelementptr inbounds %struct.list_head, ptr %390, i32 0, i32 1
  %435 = ptrtoint ptr %prev.i3.i.i160.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr %390, ptr %prev.i3.i.i160.i, align 4
  %active_cmd_count.i161.i = getelementptr inbounds %struct.qedi_conn, ptr %15, i32 0, i32 6
  %436 = ptrtoint ptr %active_cmd_count.i161.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %active_cmd_count.i161.i, align 4
  %dec.i162.i = add i32 %437, -1
  store i32 %dec.i162.i, ptr %active_cmd_count.i161.i, align 4
  br label %qedi_process_logout_resp.exit.i

if.else.i165.i:                                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  %438 = ptrtoint ptr %task_id.i149.i to i32
  call void @__asan_load2_noabort(i32 %438)
  %439 = load i16, ptr %task_id.i149.i, align 4
  %conv17.i164.i = zext i16 %439 to i32
  %440 = ptrtoint ptr %iscsi_conn_id.i151.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %iscsi_conn_id.i151.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_process_logout_resp, i32 noundef 71, i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %conv17.i164.i, i32 noundef %441, ptr noundef %390) #7
  br label %qedi_process_logout_resp.exit.i

qedi_process_logout_resp.exit.i:                  ; preds = %if.else.i165.i, %list_del_init.exit.i163.i
  tail call void @_raw_spin_unlock(ptr noundef %list_lock.i152.i) #7
  %state.i166.i = getelementptr inbounds %struct.qedi_cmd, ptr %390, i32 0, i32 13
  %442 = ptrtoint ptr %state.i166.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 6, ptr %state.i166.i, align 4
  %call.i.i = tail call i32 @__iscsi_complete_pdu(ptr noundef %386, ptr noundef %resp_hdr3.i.i, ptr noundef null, i32 noundef 0) #7
  tail call void @_raw_spin_unlock(ptr noundef %back_lock.i133.i) #7
  br label %cleanup

sw.bb5.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @qedi_process_nopin_mesg(ptr noundef %1, ptr noundef %cqe2, ptr noundef nonnull %23, ptr noundef nonnull %15) #7
  br label %cleanup

sw.default.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedi_mtask_completion, i32 noundef 705, ptr noundef nonnull @.str.27) #7
  br label %cleanup

sw.bb38:                                          ; preds = %if.end20
  %443 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %443, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %5, label %sw.bb38.cleanup_crit_edge [
    i8 32, label %sw.bb39
    i8 50, label %sw.bb40
    i8 63, label %sw.bb41
  ]

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb39:                                          ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @qedi_process_nopin_mesg(ptr noundef %1, ptr noundef %cqe2, ptr noundef null, ptr noundef nonnull %15)
  br label %cleanup

sw.bb40:                                          ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @qedi_process_async_mesg(ptr noundef %1, ptr noundef %cqe2, ptr noundef nonnull %15)
  br label %cleanup

sw.bb41:                                          ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @qedi_process_reject_mesg(ptr noundef %1, ptr noundef %cqe2, ptr noundef nonnull %15)
  br label %cleanup

sw.bb42:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_fp_process_cqes, i32 noundef 908, i32 noundef 256, ptr noundef nonnull @.str.4) #7
  br label %cleanup

sw.bb44:                                          ; preds = %if.end20
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_fp_process_cqes, i32 noundef 911, i32 noundef 256, ptr noundef nonnull @.str.5) #7
  %itid.i = getelementptr inbounds %struct.qedi_work, ptr %work, i32 0, i32 2, i32 0, i32 3
  %444 = ptrtoint ptr %itid.i to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %itid.i, align 4
  %conv.i = zext i16 %445 to i32
  %446 = ptrtoint ptr %cqe2 to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %cqe2, align 4
  %conv1.i = zext i16 %447 to i32
  %448 = ptrtoint ptr %conn_cid_tbl to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %conn_cid_tbl, align 4
  %arrayidx.i = getelementptr ptr, ptr %449, i32 %conv1.i
  %450 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %451, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_process_cmd_cleanup_resp, i32 noundef 747, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef %conv1.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb44
  %tmf_work_lock.i = getelementptr inbounds %struct.qedi_conn, ptr %451, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %tmf_work_lock.i) #7
  %tmf_work_list.i = getelementptr inbounds %struct.qedi_conn, ptr %451, i32 0, i32 14
  %452 = ptrtoint ptr %tmf_work_list.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %tmf_work_list.i, align 4
  %cmp.not151.i = icmp eq ptr %453, %tmf_work_list.i
  br i1 %cmp.not151.i, label %for.end.thread.i, label %for.body.lr.ph.i

for.end.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %tmf_work_lock.i) #7
  br label %check_cleanup_reqs.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %iscsi_conn_id.i = getelementptr inbounds %struct.qedi_conn, ptr %451, i32 0, i32 9
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %for.body.lr.ph.i
  %work.0156.i.ph = phi ptr [ %work_tmp.0158.i, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ %453, %for.body.lr.ph.i ]
  %tobool48.not.i = phi i1 [ false, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ true, %for.body.lr.ph.i ]
  %qedi_cmd.0154.i.ph = phi ptr [ %458, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ null, %for.body.lr.ph.i ]
  %tmf_hdr.0153.i.ph = phi ptr [ %468, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ null, %for.body.lr.ph.i ]
  %task.0152.i.ph = phi ptr [ %466, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ inttoptr (i32 -1 to ptr), %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %work.0156.i = phi ptr [ %work_tmp.0158.i, %for.inc.i.for.body.i_crit_edge ], [ %work.0156.i.ph, %for.body.i.outer ]
  %454 = ptrtoint ptr %work.0156.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %work_tmp.0158.i = load ptr, ptr %work.0156.i, align 4
  %rtid.i = getelementptr inbounds %struct.qedi_work_map, ptr %work.0156.i, i32 0, i32 3
  %455 = ptrtoint ptr %rtid.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %rtid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %456, i32 %conv.i)
  %cmp11.i = icmp eq i32 %456, %conv.i
  br i1 %cmp11.i, label %if.then13.i, label %for.inc.i

if.then13.i:                                      ; preds = %for.body.i
  %qedi_cmd14.i = getelementptr inbounds %struct.qedi_work_map, ptr %work.0156.i, i32 0, i32 1
  %457 = ptrtoint ptr %qedi_cmd14.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %qedi_cmd14.i, align 4
  %list_tmf_work.i = getelementptr inbounds %struct.qedi_cmd, ptr %458, i32 0, i32 15
  %459 = ptrtoint ptr %list_tmf_work.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %list_tmf_work.i, align 4
  %tobool15.not.i = icmp eq ptr %460, null
  br i1 %tobool15.not.i, label %if.then16.i, label %if.then13.i.if.end37.i_crit_edge

if.then13.i.if.end37.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then16.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %461 = ptrtoint ptr %iscsi_conn_id.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %iscsi_conn_id.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_process_cmd_cleanup_resp, i32 noundef 761, i32 noundef 256, ptr noundef nonnull @.str.42, i32 noundef %conv.i, i32 noundef %462) #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 762, i32 noundef 9, ptr noundef null) #7
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then16.i, %if.then13.i.if.end37.i_crit_edge
  %task38.i = getelementptr inbounds %struct.qedi_cmd, ptr %458, i32 0, i32 11
  %463 = ptrtoint ptr %task38.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %task38.i, align 4
  %ctask.i = getelementptr inbounds %struct.qedi_work_map, ptr %work.0156.i, i32 0, i32 2
  %465 = ptrtoint ptr %ctask.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %ctask.i, align 4
  %467 = ptrtoint ptr %464 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %464, align 4
  %call.i.i143.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %work.0156.i) #7
  br i1 %call.i.i143.i, label %if.end.i.i.i, label %if.end37.i.for.inc.i.thread_crit_edge

if.end37.i.for.inc.i.thread_crit_edge:            ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.thread

if.end.i.i.i:                                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i110 = getelementptr inbounds %struct.list_head, ptr %work.0156.i, i32 0, i32 1
  %469 = ptrtoint ptr %prev.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %prev.i.i.i110, align 4
  %471 = ptrtoint ptr %work.0156.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %work.0156.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %472, i32 0, i32 1
  %473 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store ptr %470, ptr %prev1.i.i.i.i, align 4
  %474 = ptrtoint ptr %470 to i32
  call void @__asan_store4_noabort(i32 %474)
  store volatile ptr %472, ptr %470, align 4
  br label %for.inc.i.thread

for.inc.i:                                        ; preds = %for.body.i
  %cmp.not.i = icmp eq ptr %work_tmp.0158.i, %tmf_work_list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %if.end.i.i.i, %if.end37.i.for.inc.i.thread_crit_edge
  %475 = ptrtoint ptr %work.0156.i to i32
  call void @__asan_store4_noabort(i32 %475)
  store volatile ptr %work.0156.i, ptr %work.0156.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %work.0156.i, i32 0, i32 1
  %476 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %476)
  store ptr %work.0156.i, ptr %prev.i3.i.i, align 4
  tail call void @kfree(ptr noundef %work.0156.i) #7
  %477 = ptrtoint ptr %list_tmf_work.i to i32
  call void @__asan_store4_noabort(i32 %477)
  store ptr null, ptr %list_tmf_work.i, align 4
  %cmp.not.i118 = icmp eq ptr %work_tmp.0158.i, %tmf_work_list.i
  br i1 %cmp.not.i118, label %for.end.i.thread, label %for.inc.i.thread.for.body.i.outer_crit_edge

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.outer

for.end.i.thread:                                 ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %tmf_work_lock.i) #7
  br label %if.end50.i

for.end.i:                                        ; preds = %for.inc.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %tmf_work_lock.i) #7
  br i1 %tobool48.not.i, label %for.end.i.check_cleanup_reqs.i_crit_edge, label %for.end.i.if.end50.i_crit_edge

for.end.i.if.end50.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

for.end.i.check_cleanup_reqs.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_cleanup_reqs.i

if.end50.i:                                       ; preds = %for.end.i.if.end50.i_crit_edge, %for.end.i.thread
  %task.1.i119130 = phi ptr [ %466, %for.end.i.thread ], [ %task.0152.i.ph, %for.end.i.if.end50.i_crit_edge ]
  %tmf_hdr.1.i120129 = phi ptr [ %468, %for.end.i.thread ], [ %tmf_hdr.0153.i.ph, %for.end.i.if.end50.i_crit_edge ]
  %qedi_cmd.1.i121128 = phi ptr [ %458, %for.end.i.thread ], [ %qedi_cmd.0154.i.ph, %for.end.i.if.end50.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.iscsi_tm, ptr %tmf_hdr.1.i120129, i32 0, i32 1
  %478 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %flags.i, align 1
  %conv52.i = zext i8 %479 to i32
  %480 = ptrtoint ptr %iscsi_conn_id.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %iscsi_conn_id.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_process_cmd_cleanup_resp, i32 noundef 781, i32 noundef 256, ptr noundef nonnull @.str.43, i32 noundef %conv.i, i32 noundef %conv52.i, i32 noundef %481) #7
  %session.i = getelementptr inbounds %struct.iscsi_conn, ptr %19, i32 0, i32 2
  %482 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %session.i, align 8
  %back_lock.i = getelementptr inbounds %struct.iscsi_session, ptr %483, i32 0, i32 53
  tail call void @_raw_spin_lock_bh(ptr noundef %back_lock.i) #7
  %state.i.i111 = getelementptr inbounds %struct.iscsi_task, ptr %task.1.i119130, i32 0, i32 17
  %484 = ptrtoint ptr %state.i.i111 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %state.i.i111, align 4
  %486 = zext i32 %485 to i64
  call void @__sanitizer_cov_trace_switch(i64 %486, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %485, label %if.end57.i [
    i32 1, label %if.end50.i.if.then54.i_crit_edge
    i32 4, label %if.end50.i.if.then54.i_crit_edge184
    i32 5, label %if.end50.i.if.then54.i_crit_edge185
  ]

if.end50.i.if.then54.i_crit_edge185:              ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54.i

if.end50.i.if.then54.i_crit_edge184:              ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54.i

if.end50.i.if.then54.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54.i

if.then54.i:                                      ; preds = %if.end50.i.if.then54.i_crit_edge, %if.end50.i.if.then54.i_crit_edge184, %if.end50.i.if.then54.i_crit_edge185
  %rtt.i = getelementptr inbounds %struct.iscsi_tm, ptr %tmf_hdr.1.i120129, i32 0, i32 7
  %487 = ptrtoint ptr %rtt.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %rtt.i, align 4
  %and.i = and i32 %488, 8191
  %489 = ptrtoint ptr %iscsi_conn_id.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %iscsi_conn_id.i, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_notice(ptr noundef %1, ptr noundef nonnull @__func__.qedi_process_cmd_cleanup_resp, i32 noundef 787, ptr noundef nonnull @.str.44, i32 noundef %and.i, i32 noundef %490) #7
  br label %unlock.i

if.end57.i:                                       ; preds = %if.end50.i
  %dd_data.i112 = getelementptr inbounds %struct.iscsi_task, ptr %task.1.i119130, i32 0, i32 20
  %491 = ptrtoint ptr %dd_data.i112 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %dd_data.i112, align 4
  %rtt59.i = getelementptr inbounds %struct.iscsi_tm, ptr %tmf_hdr.1.i120129, i32 0, i32 7
  %493 = ptrtoint ptr %rtt59.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %rtt59.i, align 4
  %and60.i = and i32 %494, 8191
  %itt.i = getelementptr inbounds %struct.iscsi_task, ptr %task.1.i119130, i32 0, i32 6
  %495 = ptrtoint ptr %itt.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %itt.i, align 4
  %and61.i = and i32 %496, 8191
  %task_id.i = getelementptr inbounds %struct.qedi_cmd, ptr %492, i32 0, i32 10
  %497 = ptrtoint ptr %task_id.i to i32
  call void @__asan_load2_noabort(i32 %497)
  %498 = load i16, ptr %task_id.i, align 4
  %conv62.i = zext i16 %498 to i32
  %499 = ptrtoint ptr %iscsi_conn_id.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %iscsi_conn_id.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_process_cmd_cleanup_resp, i32 noundef 796, i32 noundef 256, ptr noundef nonnull @.str.45, i32 noundef %and60.i, i32 noundef %and61.i, i32 noundef %conv62.i, i32 noundef %500) #7
  %list_lock.i = getelementptr inbounds %struct.qedi_conn, ptr %451, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %list_lock.i) #7
  %io_cmd_in_list.i = getelementptr inbounds %struct.qedi_cmd, ptr %492, i32 0, i32 1
  %501 = ptrtoint ptr %io_cmd_in_list.i to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %io_cmd_in_list.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %502)
  %tobool64.not.i = icmp eq i8 %502, 0
  br i1 %tobool64.not.i, label %if.end57.i.if.end73.i_crit_edge, label %if.then71.i, !prof !158

if.end57.i.if.end73.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.i

if.then71.i:                                      ; preds = %if.end57.i
  %503 = ptrtoint ptr %io_cmd_in_list.i to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 0, ptr %io_cmd_in_list.i, align 4
  %call.i.i144.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %492) #7
  br i1 %call.i.i144.i, label %if.end.i.i147.i, label %if.then71.i.list_del_init.exit149.i_crit_edge

if.then71.i.list_del_init.exit149.i_crit_edge:    ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit149.i

if.end.i.i147.i:                                  ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i145.i = getelementptr inbounds %struct.list_head, ptr %492, i32 0, i32 1
  %504 = ptrtoint ptr %prev.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %prev.i.i145.i, align 4
  %506 = ptrtoint ptr %492 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %492, align 4
  %prev1.i.i.i146.i = getelementptr inbounds %struct.list_head, ptr %507, i32 0, i32 1
  %508 = ptrtoint ptr %prev1.i.i.i146.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store ptr %505, ptr %prev1.i.i.i146.i, align 4
  %509 = ptrtoint ptr %505 to i32
  call void @__asan_store4_noabort(i32 %509)
  store volatile ptr %507, ptr %505, align 4
  br label %list_del_init.exit149.i

list_del_init.exit149.i:                          ; preds = %if.end.i.i147.i, %if.then71.i.list_del_init.exit149.i_crit_edge
  %510 = ptrtoint ptr %492 to i32
  call void @__asan_store4_noabort(i32 %510)
  store volatile ptr %492, ptr %492, align 4
  %prev.i3.i148.i = getelementptr inbounds %struct.list_head, ptr %492, i32 0, i32 1
  %511 = ptrtoint ptr %prev.i3.i148.i to i32
  call void @__asan_store4_noabort(i32 %511)
  store ptr %492, ptr %prev.i3.i148.i, align 4
  %active_cmd_count.i = getelementptr inbounds %struct.qedi_conn, ptr %451, i32 0, i32 6
  %512 = ptrtoint ptr %active_cmd_count.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %active_cmd_count.i, align 4
  %dec.i = add i32 %513, -1
  store i32 %dec.i, ptr %active_cmd_count.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %list_del_init.exit149.i, %if.end57.i.if.end73.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %list_lock.i) #7
  %state.i = getelementptr inbounds %struct.qedi_cmd, ptr %qedi_cmd.1.i121128, i32 0, i32 13
  %514 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 2, ptr %state.i, align 4
  br label %unlock.i

unlock.i:                                         ; preds = %if.end73.i, %if.then54.i
  %515 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %session.i, align 8
  %back_lock76.i = getelementptr inbounds %struct.iscsi_session, ptr %516, i32 0, i32 53
  tail call void @_raw_spin_unlock_bh(ptr noundef %back_lock76.i) #7
  %wait_queue.i = getelementptr inbounds %struct.qedi_conn, ptr %451, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %wait_queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

check_cleanup_reqs.i:                             ; preds = %for.end.i.check_cleanup_reqs.i_crit_edge, %for.end.thread.i
  %cmd_cleanup_cmpl.i = getelementptr inbounds %struct.qedi_conn, ptr %451, i32 0, i32 8
  %call.i.i.i113 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_cleanup_cmpl.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void @llvm.prefetch.p0(ptr %cmd_cleanup_cmpl.i, i32 1, i32 3, i32 1) #7
  %517 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_cleanup_cmpl.i, ptr %cmd_cleanup_cmpl.i, i32 1, ptr elementtype(i32) %cmd_cleanup_cmpl.i) #7, !srcloc !160
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %517, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !161
  %cmd_cleanup_req.i = getelementptr inbounds %struct.qedi_conn, ptr %451, i32 0, i32 7
  %518 = ptrtoint ptr %cmd_cleanup_req.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %cmd_cleanup_req.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i, i32 %519)
  %cmp78.i = icmp eq i32 %asmresult.i.i.i.i.i, %519
  br i1 %cmp78.i, label %if.then80.i, label %check_cleanup_reqs.i.cleanup_crit_edge

check_cleanup_reqs.i.cleanup_crit_edge:           ; preds = %check_cleanup_reqs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then80.i:                                      ; preds = %check_cleanup_reqs.i
  call void @__sanitizer_cov_trace_pc() #9
  %520 = ptrtoint ptr %itid.i to i32
  call void @__asan_load2_noabort(i32 %520)
  %521 = load i16, ptr %itid.i, align 4
  %conv83.i = zext i16 %521 to i32
  %iscsi_conn_id84.i = getelementptr inbounds %struct.qedi_conn, ptr %451, i32 0, i32 9
  %522 = ptrtoint ptr %iscsi_conn_id84.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %iscsi_conn_id84.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_process_cmd_cleanup_resp, i32 noundef 816, i32 noundef 256, ptr noundef nonnull @.str.32, i32 noundef %conv83.i, i32 noundef %523) #7
  %wait_queue85.i = getelementptr inbounds %struct.qedi_conn, ptr %451, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %wait_queue85.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

sw.default:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedi_fp_process_cqes, i32 noundef 915, ptr noundef nonnull @.str.6) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.then80.i, %check_cleanup_reqs.i.cleanup_crit_edge, %unlock.i, %if.then.i, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38.cleanup_crit_edge, %sw.default.i, %sw.bb5.i, %qedi_process_logout_resp.exit.i, %qedi_process_text_resp.exit.i, %unblock_sess.i.i, %if.then.i39.i, %qedi_process_login_resp.exit.i, %qedi_scsi_completion.exit.i, %if.then31, %if.then23, %if.then19, %if.then10, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_warn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_failure(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedi_process_nopin_local_cmpl(ptr noundef %qedi, ptr nocapture noundef readonly %cqe, ptr noundef %task, ptr nocapture noundef readonly %qedi_conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qedi_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedi_conn, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 8
  %session1 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %session1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %session1, align 8
  %dd_data2 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %6 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dd_data2, align 4
  %itid = getelementptr inbounds %struct.iscsi_cqe_solicited, ptr %cqe, i32 0, i32 3
  %8 = ptrtoint ptr %itid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %itid, align 4
  %conv = zext i16 %9 to i32
  %task_id = getelementptr inbounds %struct.qedi_cmd, ptr %7, i32 0, i32 10
  %10 = ptrtoint ptr %task_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %task_id, align 4
  %conv3 = zext i16 %11 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_process_nopin_local_cmpl, i32 noundef 720, i32 noundef 512, ptr noundef nonnull @.str.26, i32 noundef %conv, i32 noundef %conv3) #7
  %state = getelementptr inbounds %struct.qedi_cmd, ptr %7, i32 0, i32 13
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %state, align 4
  %back_lock = getelementptr inbounds %struct.iscsi_session, ptr %5, i32 0, i32 53
  tail call void @_raw_spin_lock_bh(ptr noundef %back_lock) #7
  tail call void @__iscsi_put_task(ptr noundef %task) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %back_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedi_process_nopin_mesg(ptr noundef %qedi, ptr nocapture noundef readonly %cqe, ptr noundef readonly %task, ptr noundef %qedi_conn) unnamed_addr #0 align 64 {
entry:
  %bdq_data = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qedi_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedi_conn, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 8
  %session1 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %session1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %session1, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %bdq_data) #7
  %6 = call ptr @memset(ptr %bdq_data, i32 255, i32 256)
  %back_lock = getelementptr inbounds %struct.iscsi_session, ptr %5, i32 0, i32 53
  tail call void @_raw_spin_lock_bh(ptr noundef %back_lock) #7
  %hdr_second_dword = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 4
  %7 = ptrtoint ptr %hdr_second_dword to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hdr_second_dword, align 4
  %and = and i32 %8, 16777215
  %resp_hdr = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4
  %9 = call ptr @memset(ptr %resp_hdr, i32 0, i32 48)
  %opcode = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 3
  %10 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %opcode, align 1
  %12 = ptrtoint ptr %resp_hdr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %resp_hdr, align 4
  %max_cmd_sn = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 10
  %13 = ptrtoint ptr %max_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_cmd_sn, align 4
  %max_cmdsn = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 10
  %15 = ptrtoint ptr %max_cmdsn to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %max_cmdsn, align 4
  %exp_cmd_sn = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 9
  %16 = ptrtoint ptr %exp_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %exp_cmd_sn, align 4
  %exp_cmdsn = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 9
  %18 = ptrtoint ptr %exp_cmdsn to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %exp_cmdsn, align 4
  %stat_sn = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 8
  %19 = ptrtoint ptr %stat_sn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stat_sn, align 4
  %statsn = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 8
  %21 = ptrtoint ptr %statsn to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %statsn, align 4
  %ttt = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 7
  %22 = ptrtoint ptr %ttt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ttt, align 4
  %ttt3 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 7
  %24 = ptrtoint ptr %ttt3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ttt3, align 4
  %cqe_type = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 1
  %25 = ptrtoint ptr %cqe_type to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cqe_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp = icmp eq i8 %26, 2
  br i1 %cmp, label %do.body5, label %if.end

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div1 = lshr i32 %and, 8
  %hba_lock = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 11
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hba_lock) #7
  call fastcc void @qedi_unsol_pdu_adjust_bdq(ptr noundef %qedi, ptr noundef %cqe, i32 noundef %and, i32 noundef %div1, ptr noundef nonnull %bdq_data)
  %itt = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 6
  %27 = ptrtoint ptr %itt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %itt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hba_lock, i32 noundef %call8) #7
  br label %done

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %task, null
  br i1 %tobool.not, label %if.end.done_crit_edge, label %if.then12

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then12:                                        ; preds = %if.end
  %dd_data13 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %28 = ptrtoint ptr %dd_data13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dd_data13, align 4
  %flags14 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 1
  %30 = ptrtoint ptr %flags14 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -128, ptr %flags14, align 1
  %itid = getelementptr inbounds %struct.iscsi_cqe_solicited, ptr %cqe, i32 0, i32 3
  %31 = ptrtoint ptr %itid to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %itid, align 4
  %conv15 = zext i16 %32 to i32
  %33 = ptrtoint ptr %session1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %session1, align 8
  %age = getelementptr inbounds %struct.iscsi_session, ptr %34, i32 0, i32 55
  %35 = ptrtoint ptr %age to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %age, align 4
  %shl = shl i32 %36, 28
  %or = or i32 %shl, %conv15
  %itt17 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 6
  %37 = ptrtoint ptr %itt17 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or, ptr %itt17, align 4
  %lun19 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 5
  %38 = ptrtoint ptr %lun19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %lun19, align 4
  %lun.sroa.5.0.lun19.sroa_idx = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 5, i32 0, i32 4
  %39 = ptrtoint ptr %lun.sroa.5.0.lun19.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %lun.sroa.5.0.lun19.sroa_idx, align 4
  %task_id = getelementptr inbounds %struct.qedi_cmd, ptr %29, i32 0, i32 10
  %40 = ptrtoint ptr %task_id to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %task_id, align 4
  %conv21 = zext i16 %41 to i32
  %iscsi_conn_id = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 9
  %42 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iscsi_conn_id, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_process_nopin_mesg, i32 noundef 460, i32 noundef 524288, ptr noundef nonnull @.str.32, i32 noundef %conv21, i32 noundef %43) #7
  %state = getelementptr inbounds %struct.qedi_cmd, ptr %29, i32 0, i32 13
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 6, ptr %state, align 4
  %list_lock = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %list_lock) #7
  %io_cmd_in_list = getelementptr inbounds %struct.qedi_cmd, ptr %29, i32 0, i32 1
  %45 = ptrtoint ptr %io_cmd_in_list to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %io_cmd_in_list, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool22.not = icmp eq i8 %46, 0
  br i1 %tobool22.not, label %if.then12.if.end27_crit_edge, label %if.then25, !prof !158

if.then12.if.end27_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then25:                                        ; preds = %if.then12
  %47 = ptrtoint ptr %io_cmd_in_list to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %io_cmd_in_list, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %29) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then25.list_del_init.exit_crit_edge

if.then25.list_del_init.exit_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %29, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then25.list_del_init.exit_crit_edge
  %54 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %29, ptr %29, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %29, ptr %prev.i3.i, align 4
  %active_cmd_count = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 6
  %56 = ptrtoint ptr %active_cmd_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %active_cmd_count, align 4
  %dec = add i32 %57, -1
  store i32 %dec, ptr %active_cmd_count, align 4
  br label %if.end27

if.end27:                                         ; preds = %list_del_init.exit, %if.then12.if.end27_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %list_lock) #7
  br label %done

done:                                             ; preds = %if.end27, %if.end.done_crit_edge, %do.body5
  %call31 = call i32 @__iscsi_complete_pdu(ptr noundef %3, ptr noundef %resp_hdr, ptr noundef nonnull %bdq_data, i32 noundef %and) #7
  call void @_raw_spin_unlock_bh(ptr noundef %back_lock) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %bdq_data) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedi_process_async_mesg(ptr noundef %qedi, ptr nocapture noundef readonly %cqe, ptr noundef %qedi_conn) unnamed_addr #0 align 64 {
entry:
  %bdq_data = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qedi_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedi_conn, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 8
  %session1 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %session1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %session1, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %bdq_data) #7
  %6 = call ptr @memset(ptr %bdq_data, i32 255, i32 256)
  %back_lock = getelementptr inbounds %struct.iscsi_session, ptr %5, i32 0, i32 53
  tail call void @_raw_spin_lock_bh(ptr noundef %back_lock) #7
  %hdr_second_dword = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 4
  %7 = ptrtoint ptr %hdr_second_dword to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hdr_second_dword, align 4
  %and = and i32 %8, 16777215
  %cqe_type = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 1
  %9 = ptrtoint ptr %cqe_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cqe_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp = icmp eq i8 %10, 2
  br i1 %cmp, label %do.body3, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div1 = lshr i32 %and, 8
  %hba_lock = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 11
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hba_lock) #7
  call fastcc void @qedi_unsol_pdu_adjust_bdq(ptr noundef %qedi, ptr noundef %cqe, i32 noundef %and, i32 noundef %div1, ptr noundef nonnull %bdq_data)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hba_lock, i32 noundef %call6) #7
  br label %if.end

if.end:                                           ; preds = %do.body3, %entry.if.end_crit_edge
  %iscsi_hdr = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4
  %resp_hdr10 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4
  %11 = call ptr @memset(ptr %resp_hdr10, i32 0, i32 48)
  %opcode = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 3
  %12 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %opcode, align 1
  %14 = ptrtoint ptr %resp_hdr10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %resp_hdr10, align 4
  %flags12 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 1
  %15 = ptrtoint ptr %flags12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -128, ptr %flags12, align 1
  %lun13 = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 5
  %16 = ptrtoint ptr %lun13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lun13, align 4
  %hi = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hi, align 4
  %lun16 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 5
  %20 = ptrtoint ptr %lun16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %lun16, align 4
  %lun.sroa.5.0.lun16.sroa_idx = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 5, i32 0, i32 4
  %21 = ptrtoint ptr %lun.sroa.5.0.lun16.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %lun.sroa.5.0.lun16.sroa_idx, align 4
  %exp_cmd_sn = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 9
  %22 = ptrtoint ptr %exp_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %exp_cmd_sn, align 4
  %exp_cmdsn = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 9
  %24 = ptrtoint ptr %exp_cmdsn to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %exp_cmdsn, align 4
  %max_cmd_sn = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 10
  %25 = ptrtoint ptr %max_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_cmd_sn, align 4
  %max_cmdsn = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 10
  %27 = ptrtoint ptr %max_cmdsn to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %max_cmdsn, align 4
  %stat_sn = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 8
  %28 = ptrtoint ptr %stat_sn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stat_sn, align 4
  %statsn = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 8
  %30 = ptrtoint ptr %statsn to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %statsn, align 4
  %async_event = getelementptr inbounds %struct.iscsi_async_msg_hdr, ptr %iscsi_hdr, i32 0, i32 12
  %31 = ptrtoint ptr %async_event to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %async_event, align 1
  %async_event18 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 11
  %33 = ptrtoint ptr %async_event18 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %async_event18, align 4
  %async_vcode = getelementptr inbounds %struct.iscsi_async_msg_hdr, ptr %iscsi_hdr, i32 0, i32 11
  %34 = ptrtoint ptr %async_vcode to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %async_vcode, align 2
  %async_vcode19 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 11, i32 1
  %36 = ptrtoint ptr %async_vcode19 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %async_vcode19, align 1
  %param1_rsrv = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 11
  %37 = ptrtoint ptr %param1_rsrv to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %param1_rsrv, align 4
  %param1 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 11, i32 2
  %39 = ptrtoint ptr %param1 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %param1, align 2
  %param2_rsrv = getelementptr inbounds %struct.iscsi_async_msg_hdr, ptr %iscsi_hdr, i32 0, i32 14
  %40 = ptrtoint ptr %param2_rsrv to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %param2_rsrv, align 2
  %param2 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 11, i32 4
  %42 = ptrtoint ptr %param2 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %param2, align 4
  %param3_rsrv = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 11, i32 1
  %43 = ptrtoint ptr %param3_rsrv to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %param3_rsrv, align 4
  %param3 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 11, i32 6
  %45 = ptrtoint ptr %param3 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %param3, align 2
  %call21 = call i32 @__iscsi_complete_pdu(ptr noundef %3, ptr noundef %resp_hdr10, ptr noundef nonnull %bdq_data, i32 noundef %and) #7
  call void @_raw_spin_unlock_bh(ptr noundef %back_lock) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %bdq_data) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedi_process_reject_mesg(ptr noundef %qedi, ptr nocapture noundef readonly %cqe, ptr noundef %qedi_conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qedi_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedi_conn, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 8
  %session1 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %session1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %session1, align 8
  %back_lock = getelementptr inbounds %struct.iscsi_session, ptr %5, i32 0, i32 53
  tail call void @_raw_spin_lock_bh(ptr noundef %back_lock) #7
  %hdr_second_dword = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 4
  %6 = ptrtoint ptr %hdr_second_dword to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hdr_second_dword, align 4
  %and = and i32 %7, 16777215
  %cqe_type = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 1
  %8 = ptrtoint ptr %cqe_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cqe_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp eq i8 %9, 2
  br i1 %cmp, label %do.body3, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div1 = lshr i32 %and, 8
  %hba_lock = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 11
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hba_lock) #7
  %data = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  tail call fastcc void @qedi_unsol_pdu_adjust_bdq(ptr noundef %qedi, ptr noundef %cqe, i32 noundef %and, i32 noundef %div1, ptr noundef %11)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hba_lock, i32 noundef %call6) #7
  br label %if.end

if.end:                                           ; preds = %do.body3, %entry.if.end_crit_edge
  %resp_hdr = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4
  %12 = call ptr @memset(ptr %resp_hdr, i32 0, i32 48)
  %opcode = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 3
  %13 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %opcode, align 1
  %15 = ptrtoint ptr %resp_hdr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %resp_hdr, align 4
  %hdr_reason = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %hdr_reason to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hdr_reason, align 1
  %reason = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 2
  %18 = ptrtoint ptr %reason to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %reason, align 2
  %hdr_flags = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 2
  %19 = ptrtoint ptr %hdr_flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hdr_flags, align 2
  %flags11 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 1
  %21 = ptrtoint ptr %flags11 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %flags11, align 1
  %22 = ptrtoint ptr %hdr_second_dword to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hdr_second_dword, align 4
  %and13 = lshr i32 %23, 16
  %conv15 = trunc i32 %and13 to i8
  %dlength = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 4
  %24 = ptrtoint ptr %dlength to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv15, ptr %dlength, align 1
  %25 = load i32, ptr %hdr_second_dword, align 4
  %and17 = lshr i32 %25, 8
  %conv20 = trunc i32 %and17 to i8
  %arrayidx22 = getelementptr %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 4, i32 1
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv20, ptr %arrayidx22, align 1
  %27 = load i32, ptr %hdr_second_dword, align 4
  %conv26 = trunc i32 %27 to i8
  %arrayidx28 = getelementptr %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 4, i32 2
  %28 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv26, ptr %arrayidx28, align 1
  %max_cmd_sn = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 10
  %29 = ptrtoint ptr %max_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_cmd_sn, align 4
  %max_cmdsn = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 10
  %31 = ptrtoint ptr %max_cmdsn to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %max_cmdsn, align 4
  %exp_cmd_sn = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 9
  %32 = ptrtoint ptr %exp_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %exp_cmd_sn, align 4
  %exp_cmdsn = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 9
  %34 = ptrtoint ptr %exp_cmdsn to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %exp_cmdsn, align 4
  %stat_sn = getelementptr inbounds %struct.iscsi_cqe_common, ptr %cqe, i32 0, i32 4, i32 0, i32 8
  %35 = ptrtoint ptr %stat_sn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stat_sn, align 4
  %statsn = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 8
  %37 = ptrtoint ptr %statsn to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %statsn, align 4
  %ffffffff = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 4, i32 6
  %38 = ptrtoint ptr %ffffffff to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %ffffffff, align 4
  %data29 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 14
  %39 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data29, align 4
  %call30 = tail call i32 @__iscsi_complete_pdu(ptr noundef %3, ptr noundef %resp_hdr, ptr noundef %40, i32 noundef %and) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %back_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_err(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedi_send_iscsi_login(ptr noundef %qedi_conn, ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  %login_req_pdu_header = alloca %struct.iscsi_login_req_hdr, align 4
  %tx_sgl_task_params = alloca %struct.scsi_sgl_task_params, align 4
  %rx_sgl_task_params = alloca %struct.scsi_sgl_task_params, align 4
  %task_params = alloca %struct.iscsi_task_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %login_req_pdu_header) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tx_sgl_task_params) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rx_sgl_task_params) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %task_params) #7
  %qedi1 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 1
  %0 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedi1, align 4
  %resp_bd_tbl = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %resp_bd_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resp_bd_tbl, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %ep2 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 2
  %6 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep2, align 4
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 4
  %call = tail call i32 @qedi_get_task_idx(ptr noundef %1) #7
  %sext = shl i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %sext)
  %cmp = icmp eq i32 %sext, -65536
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3 = ashr exact i32 %sext, 16
  %conv = trunc i32 %call to i16
  %tasks = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 41
  %num_tids_per_block.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 41, i32 1
  %10 = ptrtoint ptr %num_tids_per_block.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tids_per_block.i, align 4
  %conv3.frozen = freeze i32 %conv3
  %.frozen = freeze i32 %11
  %div.i = udiv i32 %conv3.frozen, %.frozen
  %arrayidx.i = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 41, i32 2, i32 %div.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %14 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %conv3.frozen, %14
  %15 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tasks, align 4
  %mul.i = mul i32 %16, %rem.i.decomposed
  %add.ptr.i = getelementptr i8, ptr %13, i32 %mul.i
  %17 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 512)
  %task_id = getelementptr inbounds %struct.qedi_cmd, ptr %5, i32 0, i32 10
  %18 = ptrtoint ptr %task_id to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %task_id, align 4
  %19 = getelementptr inbounds i8, ptr %task_params, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 20)
  %21 = getelementptr inbounds i8, ptr %login_req_pdu_header, i32 20
  %22 = call ptr @memset(ptr %21, i32 0, i32 28)
  %23 = getelementptr inbounds i8, ptr %tx_sgl_task_params, i32 16
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %23, align 4
  %25 = getelementptr inbounds i8, ptr %rx_sgl_task_params, i32 16
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %25, align 4
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %9, align 4
  %opcode7 = getelementptr inbounds %struct.iscsi_login_req_hdr, ptr %login_req_pdu_header, i32 0, i32 3
  %29 = ptrtoint ptr %opcode7 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %opcode7, align 1
  %min_version = getelementptr inbounds %struct.iscsi_login_req, ptr %9, i32 0, i32 3
  %30 = ptrtoint ptr %min_version to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %min_version, align 1
  %32 = ptrtoint ptr %login_req_pdu_header to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %login_req_pdu_header, align 4
  %max_version = getelementptr inbounds %struct.iscsi_login_req, ptr %9, i32 0, i32 2
  %33 = ptrtoint ptr %max_version to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %max_version, align 2
  %version_max = getelementptr inbounds %struct.iscsi_login_req_hdr, ptr %login_req_pdu_header, i32 0, i32 1
  %35 = ptrtoint ptr %version_max to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %version_max, align 1
  %flags = getelementptr inbounds %struct.iscsi_login_req, ptr %9, i32 0, i32 1
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flags, align 1
  %flags_attr = getelementptr inbounds %struct.iscsi_login_req_hdr, ptr %login_req_pdu_header, i32 0, i32 2
  %38 = ptrtoint ptr %flags_attr to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %flags_attr, align 2
  %isid = getelementptr inbounds %struct.iscsi_login_req, ptr %9, i32 0, i32 6
  %39 = ptrtoint ptr %isid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %isid, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  %isid_tabc = getelementptr inbounds %struct.iscsi_login_req_hdr, ptr %login_req_pdu_header, i32 0, i32 5
  %42 = ptrtoint ptr %isid_tabc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %isid_tabc, align 4
  %arrayidx = getelementptr %struct.iscsi_login_req, ptr %9, i32 0, i32 6, i32 4
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #7
  %isid_d = getelementptr inbounds %struct.iscsi_login_req_hdr, ptr %login_req_pdu_header, i32 0, i32 7
  %46 = ptrtoint ptr %isid_d to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %isid_d, align 2
  %tsih = getelementptr inbounds %struct.iscsi_login_req, ptr %9, i32 0, i32 7
  %47 = ptrtoint ptr %tsih to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %tsih, align 2
  %tsih11 = getelementptr inbounds %struct.iscsi_login_req_hdr, ptr %login_req_pdu_header, i32 0, i32 6
  %49 = ptrtoint ptr %tsih11 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %tsih11, align 4
  %dlength = getelementptr inbounds %struct.iscsi_login_req, ptr %9, i32 0, i32 5
  %50 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dlength, align 1
  %conv13 = zext i8 %51 to i32
  %shl = shl nuw nsw i32 %conv13, 16
  %arrayidx15 = getelementptr %struct.iscsi_login_req, ptr %9, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %53 to i32
  %shl17 = shl nuw nsw i32 %conv16, 8
  %or = or i32 %shl17, %shl
  %arrayidx19 = getelementptr %struct.iscsi_login_req, ptr %9, i32 0, i32 5, i32 2
  %54 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %55 to i32
  %or21 = or i32 %or, %conv20
  %hdr_second_dword = getelementptr inbounds %struct.iscsi_login_req_hdr, ptr %login_req_pdu_header, i32 0, i32 4
  %56 = ptrtoint ptr %hdr_second_dword to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or21, ptr %hdr_second_dword, align 4
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %57 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %itt, align 4
  tail call void @qedi_update_itt_map(ptr noundef %1, i32 noundef %conv3, i32 noundef %58, ptr noundef %5) #7
  %and = and i32 %call, 65535
  %59 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %itt, align 4
  %and25 = shl i32 %60, 16
  %shl26 = and i32 %and25, 536805376
  %or27 = or i32 %shl26, %and
  %itt28 = getelementptr inbounds %struct.iscsi_login_req_hdr, ptr %login_req_pdu_header, i32 0, i32 8
  %61 = ptrtoint ptr %itt28 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or27, ptr %itt28, align 4
  %iscsi_conn_id = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 9
  %62 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %iscsi_conn_id, align 4
  %conv29 = trunc i32 %63 to i16
  %cid = getelementptr inbounds %struct.iscsi_login_req_hdr, ptr %login_req_pdu_header, i32 0, i32 10
  %64 = ptrtoint ptr %cid to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv29, ptr %cid, align 2
  %cmdsn = getelementptr inbounds %struct.iscsi_login_req, ptr %9, i32 0, i32 11
  %65 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cmdsn, align 4
  %cmd_sn = getelementptr inbounds %struct.iscsi_login_req_hdr, ptr %login_req_pdu_header, i32 0, i32 11
  %67 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %cmd_sn, align 4
  %exp_stat_sn = getelementptr inbounds %struct.iscsi_login_req_hdr, ptr %login_req_pdu_header, i32 0, i32 12
  %68 = ptrtoint ptr %exp_stat_sn to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %exp_stat_sn, align 4
  %req_bd_tbl = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 9
  %69 = ptrtoint ptr %req_bd_tbl to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %req_bd_tbl, align 4
  %71 = ptrtoint ptr %tx_sgl_task_params to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %tx_sgl_task_params, align 4
  %req_dma_addr = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 1
  %72 = ptrtoint ptr %req_dma_addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %req_dma_addr, align 4
  %sgl_phys_addr = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 1
  %74 = ptrtoint ptr %sgl_phys_addr to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %sgl_phys_addr, align 4
  %hi = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %hi, align 4
  %76 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %dlength, align 1
  %conv40 = zext i8 %77 to i32
  %shl41 = shl nuw nsw i32 %conv40, 16
  %78 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx15, align 1
  %conv44 = zext i8 %79 to i32
  %shl45 = shl nuw nsw i32 %conv44, 8
  %or46 = or i32 %shl45, %shl41
  %80 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx19, align 1
  %conv49 = zext i8 %81 to i32
  %or50 = or i32 %or46, %conv49
  %total_buffer_size = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 2
  %82 = ptrtoint ptr %total_buffer_size to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or50, ptr %total_buffer_size, align 4
  %num_sges = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 3
  %83 = ptrtoint ptr %num_sges to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 1, ptr %num_sges, align 4
  %84 = ptrtoint ptr %resp_bd_tbl to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %resp_bd_tbl, align 4
  %86 = ptrtoint ptr %rx_sgl_task_params to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %rx_sgl_task_params, align 4
  %resp_dma_addr = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 6
  %87 = ptrtoint ptr %resp_dma_addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %resp_dma_addr, align 4
  %sgl_phys_addr55 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 1
  %89 = ptrtoint ptr %sgl_phys_addr55 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %sgl_phys_addr55, align 4
  %hi63 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 1, i32 1
  %90 = ptrtoint ptr %hi63 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %hi63, align 4
  %sge_len = getelementptr inbounds %struct.scsi_sge, ptr %3, i32 0, i32 1
  %91 = ptrtoint ptr %sge_len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sge_len, align 4
  %total_buffer_size64 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 2
  %93 = ptrtoint ptr %total_buffer_size64 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %total_buffer_size64, align 4
  %num_sges65 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 3
  %94 = ptrtoint ptr %num_sges65 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 1, ptr %num_sges65, align 4
  %95 = ptrtoint ptr %task_params to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %add.ptr.i, ptr %task_params, align 4
  %conn_icid = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 4
  %96 = ptrtoint ptr %conn_icid to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv29, ptr %conn_icid, align 4
  %itid = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 5
  %97 = ptrtoint ptr %itid to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv, ptr %itid, align 2
  %cq_rss_number = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 6
  %98 = ptrtoint ptr %cq_rss_number to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %cq_rss_number, align 4
  %99 = load i8, ptr %dlength, align 1
  %conv70 = zext i8 %99 to i32
  %shl71 = shl nuw nsw i32 %conv70, 16
  %100 = load i8, ptr %arrayidx15, align 1
  %conv74 = zext i8 %100 to i32
  %shl75 = shl nuw nsw i32 %conv74, 8
  %or76 = or i32 %shl75, %shl71
  %101 = load i8, ptr %arrayidx19, align 1
  %conv79 = zext i8 %101 to i32
  %or80 = or i32 %or76, %conv79
  %tx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %102 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or80, ptr %tx_io_size, align 4
  %103 = load i32, ptr %sge_len, align 4
  %rx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 3
  %104 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %rx_io_size, align 4
  %105 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ep2, align 4
  %sq_prod_idx.i = getelementptr inbounds %struct.qedi_endpoint, ptr %106, i32 0, i32 20
  %107 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %sq_prod_idx.i, align 4
  %inc.i = add i16 %108, 1
  store i16 %inc.i, ptr %sq_prod_idx.i, align 4
  %fw_sq_prod_idx.i = getelementptr inbounds %struct.qedi_endpoint, ptr %106, i32 0, i32 21
  %109 = ptrtoint ptr %fw_sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %fw_sq_prod_idx.i, align 2
  %inc3.i = add i16 %110, 1
  store i16 %inc3.i, ptr %fw_sq_prod_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %inc.i)
  %cmp.i = icmp eq i16 %inc.i, 1024
  br i1 %cmp.i, label %if.then.i, label %if.end.qedi_get_wqe_idx.exit_crit_edge

if.end.qedi_get_wqe_idx.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %qedi_get_wqe_idx.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %sq_prod_idx.i, align 4
  br label %qedi_get_wqe_idx.exit

qedi_get_wqe_idx.exit:                            ; preds = %if.then.i, %if.end.qedi_get_wqe_idx.exit_crit_edge
  %sq = getelementptr inbounds %struct.qedi_endpoint, ptr %7, i32 0, i32 18
  %112 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sq, align 4
  %idxprom = zext i16 %108 to i32
  %arrayidx83 = getelementptr %struct.iscsi_wqe, ptr %113, i32 %idxprom
  %sqe = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 1
  %114 = ptrtoint ptr %sqe to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %arrayidx83, ptr %sqe, align 4
  %115 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 8)
  store i64 0, ptr %arrayidx83, align 4
  %call85 = call i32 @init_initiator_login_request_task(ptr noundef nonnull %task_params, ptr noundef nonnull %login_req_pdu_header, ptr noundef nonnull %tx_sgl_task_params, ptr noundef nonnull %rx_sgl_task_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool.not = icmp eq i32 %call85, 0
  br i1 %tobool.not, label %if.end87, label %qedi_get_wqe_idx.exit.cleanup_crit_edge

qedi_get_wqe_idx.exit.cleanup_crit_edge:          ; preds = %qedi_get_wqe_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end87:                                         ; preds = %qedi_get_wqe_idx.exit
  %list_lock = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %list_lock) #7
  %active_cmd_list = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 4, i32 1
  %116 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %117, ptr noundef %active_cmd_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end87.list_add_tail.exit_crit_edge

if.end87.list_add_tail.exit_crit_edge:            ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %5, ptr %prev.i, align 4
  %119 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %active_cmd_list, ptr %5, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %120 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %prev3.i.i, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %5, ptr %117, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end87.list_add_tail.exit_crit_edge
  %io_cmd_in_list = getelementptr inbounds %struct.qedi_cmd, ptr %5, i32 0, i32 1
  %122 = ptrtoint ptr %io_cmd_in_list to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %io_cmd_in_list, align 4
  %active_cmd_count = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 6
  %123 = ptrtoint ptr %active_cmd_count to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %active_cmd_count, align 4
  %inc = add i32 %124, 1
  store i32 %inc, ptr %active_cmd_count, align 4
  call void @_raw_spin_unlock(ptr noundef %list_lock) #7
  %125 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ep2, align 4
  %fw_sq_prod_idx.i149 = getelementptr inbounds %struct.qedi_endpoint, ptr %126, i32 0, i32 21
  %127 = ptrtoint ptr %fw_sq_prod_idx.i149 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %fw_sq_prod_idx.i149, align 2
  %sq_prod.i = getelementptr inbounds %struct.qedi_endpoint, ptr %126, i32 0, i32 17, i32 2
  %129 = ptrtoint ptr %sq_prod.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %sq_prod.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  call void @arm_heavy_mb() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  call void @arm_heavy_mb() #7
  %130 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ep2, align 4
  %db_data5.i = getelementptr inbounds %struct.qedi_endpoint, ptr %131, i32 0, i32 17
  %132 = ptrtoint ptr %db_data5.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %db_data5.i, align 4
  %134 = call i32 @llvm.bswap.i32(i32 %133) #7
  %p_doorbell.i = getelementptr inbounds %struct.qedi_endpoint, ptr %131, i32 0, i32 16
  %135 = ptrtoint ptr %p_doorbell.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %p_doorbell.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %134) #7, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  call void @arm_heavy_mb() #7
  %137 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %qedi1, align 4
  %139 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ep2, align 4
  %sq_prod_idx.i150 = getelementptr inbounds %struct.qedi_endpoint, ptr %140, i32 0, i32 20
  %141 = ptrtoint ptr %sq_prod_idx.i150 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %sq_prod_idx.i150, align 4
  %conv.i = zext i16 %142 to i32
  %fw_sq_prod_idx11.i = getelementptr inbounds %struct.qedi_endpoint, ptr %140, i32 0, i32 21
  %143 = ptrtoint ptr %fw_sq_prod_idx11.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %fw_sq_prod_idx11.i, align 2
  %conv12.i = zext i16 %144 to i32
  %145 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %iscsi_conn_id, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %138, ptr noundef nonnull @__func__.qedi_ring_doorbell, i32 noundef 939, i32 noundef 128, ptr noundef nonnull @.str.46, i32 noundef %conv.i, i32 noundef %conv12.i, i32 noundef %146) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %qedi_get_wqe_idx.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ], [ -1, %qedi_get_wqe_idx.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %task_params) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rx_sgl_task_params) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tx_sgl_task_params) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %login_req_pdu_header) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedi_get_task_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_update_itt_map(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_initiator_login_request_task(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedi_send_iscsi_logout(ptr noundef %qedi_conn, ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  %logout_pdu_header = alloca %struct.iscsi_logout_req_hdr, align 4
  %task_params = alloca %struct.iscsi_task_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %logout_pdu_header) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %task_params) #7
  %qedi1 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 1
  %0 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedi1, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 4
  %ep2 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 2
  %6 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep2, align 4
  %call = tail call i32 @qedi_get_task_idx(ptr noundef %1) #7
  %sext = shl i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %sext)
  %cmp = icmp eq i32 %sext, -65536
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3 = ashr exact i32 %sext, 16
  %conv = trunc i32 %call to i16
  %tasks = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 41
  %num_tids_per_block.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 41, i32 1
  %8 = ptrtoint ptr %num_tids_per_block.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tids_per_block.i, align 4
  %.frozen = freeze i32 %9
  %div.i = udiv i32 %conv3, %.frozen
  %arrayidx.i = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 41, i32 2, i32 %div.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %conv3, %12
  %13 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tasks, align 4
  %mul.i = mul i32 %14, %rem.i.decomposed
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul.i
  %15 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 512)
  %task_id = getelementptr inbounds %struct.qedi_cmd, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %task_id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %task_id, align 4
  %17 = getelementptr inbounds i8, ptr %task_params, i32 20
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %17, align 4
  %19 = call ptr @memset(ptr %logout_pdu_header, i32 0, i32 48)
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %5, align 4
  %opcode7 = getelementptr inbounds %struct.iscsi_logout_req_hdr, ptr %logout_pdu_header, i32 0, i32 2
  %22 = ptrtoint ptr %opcode7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %opcode7, align 1
  %flags = getelementptr inbounds %struct.iscsi_logout, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags, align 1
  %25 = or i8 %24, -128
  %reason_code = getelementptr inbounds %struct.iscsi_logout_req_hdr, ptr %logout_pdu_header, i32 0, i32 1
  %26 = ptrtoint ptr %reason_code to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %reason_code, align 2
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %27 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %itt, align 4
  tail call void @qedi_update_itt_map(ptr noundef %1, i32 noundef %conv3, i32 noundef %28, ptr noundef %3) #7
  %and = and i32 %call, 65535
  %29 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %itt, align 4
  %and13 = shl i32 %30, 16
  %shl = and i32 %and13, 536805376
  %or14 = or i32 %shl, %and
  %itt15 = getelementptr inbounds %struct.iscsi_logout_req_hdr, ptr %logout_pdu_header, i32 0, i32 5
  %31 = ptrtoint ptr %itt15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or14, ptr %itt15, align 4
  %exp_statsn = getelementptr inbounds %struct.iscsi_logout, ptr %5, i32 0, i32 10
  %32 = ptrtoint ptr %exp_statsn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %exp_statsn, align 4
  %exp_stat_sn = getelementptr inbounds %struct.iscsi_logout_req_hdr, ptr %logout_pdu_header, i32 0, i32 9
  %34 = ptrtoint ptr %exp_stat_sn to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %exp_stat_sn, align 4
  %cmdsn = getelementptr inbounds %struct.iscsi_logout, ptr %5, i32 0, i32 9
  %35 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cmdsn, align 4
  %cmd_sn = getelementptr inbounds %struct.iscsi_logout_req_hdr, ptr %logout_pdu_header, i32 0, i32 8
  %37 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %cmd_sn, align 4
  %iscsi_conn_id = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 9
  %38 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iscsi_conn_id, align 4
  %conv16 = trunc i32 %39 to i16
  %cid = getelementptr inbounds %struct.iscsi_logout_req_hdr, ptr %logout_pdu_header, i32 0, i32 7
  %40 = ptrtoint ptr %cid to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv16, ptr %cid, align 2
  %41 = ptrtoint ptr %task_params to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr.i, ptr %task_params, align 4
  %conn_icid = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 4
  %42 = ptrtoint ptr %conn_icid to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv16, ptr %conn_icid, align 4
  %itid = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 5
  %43 = ptrtoint ptr %itid to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv, ptr %itid, align 2
  %cq_rss_number = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 6
  %44 = ptrtoint ptr %cq_rss_number to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %cq_rss_number, align 4
  %tx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %45 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tx_io_size, align 4
  %rx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 3
  %46 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %rx_io_size, align 4
  %47 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ep2, align 4
  %sq_prod_idx.i = getelementptr inbounds %struct.qedi_endpoint, ptr %48, i32 0, i32 20
  %49 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sq_prod_idx.i, align 4
  %inc.i = add i16 %50, 1
  store i16 %inc.i, ptr %sq_prod_idx.i, align 4
  %fw_sq_prod_idx.i = getelementptr inbounds %struct.qedi_endpoint, ptr %48, i32 0, i32 21
  %51 = ptrtoint ptr %fw_sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %fw_sq_prod_idx.i, align 2
  %inc3.i = add i16 %52, 1
  store i16 %inc3.i, ptr %fw_sq_prod_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %inc.i)
  %cmp.i = icmp eq i16 %inc.i, 1024
  br i1 %cmp.i, label %if.then.i, label %if.end.qedi_get_wqe_idx.exit_crit_edge

if.end.qedi_get_wqe_idx.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %qedi_get_wqe_idx.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %sq_prod_idx.i, align 4
  br label %qedi_get_wqe_idx.exit

qedi_get_wqe_idx.exit:                            ; preds = %if.then.i, %if.end.qedi_get_wqe_idx.exit_crit_edge
  %sq = getelementptr inbounds %struct.qedi_endpoint, ptr %7, i32 0, i32 18
  %54 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sq, align 4
  %idxprom = zext i16 %50 to i32
  %arrayidx = getelementptr %struct.iscsi_wqe, ptr %55, i32 %idxprom
  %sqe = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 1
  %56 = ptrtoint ptr %sqe to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx, ptr %sqe, align 4
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 0, ptr %arrayidx, align 4
  %call21 = call i32 @init_initiator_logout_request_task(ptr noundef nonnull %task_params, ptr noundef nonnull %logout_pdu_header, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end23, label %qedi_get_wqe_idx.exit.cleanup_crit_edge

qedi_get_wqe_idx.exit.cleanup_crit_edge:          ; preds = %qedi_get_wqe_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %qedi_get_wqe_idx.exit
  %list_lock = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %list_lock) #7
  %active_cmd_list = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %59, ptr noundef %active_cmd_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.list_add_tail.exit_crit_edge

if.end23.list_add_tail.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %3, ptr %prev.i, align 4
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %active_cmd_list, ptr %3, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %3, ptr %59, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end23.list_add_tail.exit_crit_edge
  %io_cmd_in_list = getelementptr inbounds %struct.qedi_cmd, ptr %3, i32 0, i32 1
  %64 = ptrtoint ptr %io_cmd_in_list to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %io_cmd_in_list, align 4
  %active_cmd_count = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 6
  %65 = ptrtoint ptr %active_cmd_count to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %active_cmd_count, align 4
  %inc = add i32 %66, 1
  store i32 %inc, ptr %active_cmd_count, align 4
  call void @_raw_spin_unlock(ptr noundef %list_lock) #7
  %67 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ep2, align 4
  %fw_sq_prod_idx.i62 = getelementptr inbounds %struct.qedi_endpoint, ptr %68, i32 0, i32 21
  %69 = ptrtoint ptr %fw_sq_prod_idx.i62 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %fw_sq_prod_idx.i62, align 2
  %sq_prod.i = getelementptr inbounds %struct.qedi_endpoint, ptr %68, i32 0, i32 17, i32 2
  %71 = ptrtoint ptr %sq_prod.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %sq_prod.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  call void @arm_heavy_mb() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  call void @arm_heavy_mb() #7
  %72 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ep2, align 4
  %db_data5.i = getelementptr inbounds %struct.qedi_endpoint, ptr %73, i32 0, i32 17
  %74 = ptrtoint ptr %db_data5.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %db_data5.i, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #7
  %p_doorbell.i = getelementptr inbounds %struct.qedi_endpoint, ptr %73, i32 0, i32 16
  %77 = ptrtoint ptr %p_doorbell.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %p_doorbell.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #7, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  call void @arm_heavy_mb() #7
  %79 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %qedi1, align 4
  %81 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ep2, align 4
  %sq_prod_idx.i63 = getelementptr inbounds %struct.qedi_endpoint, ptr %82, i32 0, i32 20
  %83 = ptrtoint ptr %sq_prod_idx.i63 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %sq_prod_idx.i63, align 4
  %conv.i = zext i16 %84 to i32
  %fw_sq_prod_idx11.i = getelementptr inbounds %struct.qedi_endpoint, ptr %82, i32 0, i32 21
  %85 = ptrtoint ptr %fw_sq_prod_idx11.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %fw_sq_prod_idx11.i, align 2
  %conv12.i = zext i16 %86 to i32
  %87 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %iscsi_conn_id, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %80, ptr noundef nonnull @__func__.qedi_ring_doorbell, i32 noundef 939, i32 noundef 128, ptr noundef nonnull @.str.46, i32 noundef %conv.i, i32 noundef %conv12.i, i32 noundef %88) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %qedi_get_wqe_idx.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ], [ -1, %qedi_get_wqe_idx.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %task_params) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %logout_pdu_header) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_initiator_logout_request_task(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedi_cleanup_all_io(ptr noundef %qedi, ptr noundef %qedi_conn, ptr noundef readonly %task, i1 noundef zeroext %in_recovery) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry190 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qedi_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedi_conn, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 8
  %session1 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %session1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %session1, align 8
  %tobool.not = icmp eq ptr %task, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 4
  %flags = getelementptr inbounds %struct.iscsi_tm, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 1
  %10 = and i8 %9, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %cmp = icmp eq i8 %10, 5
  br i1 %cmp, label %if.then3, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %lun4 = getelementptr inbounds %struct.iscsi_tm, ptr %7, i32 0, i32 5
  %call = tail call i64 @scsilun_to_int(ptr noundef %lun4) #7
  %conv5 = trunc i64 %call to i32
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %lun_reset.0.off0 = phi i1 [ true, %if.then3 ], [ false, %if.then.if.end6_crit_edge ], [ false, %entry.if.end6_crit_edge ]
  %lun.0 = phi i32 [ %conv5, %if.then3 ], [ 0, %if.then.if.end6_crit_edge ], [ 0, %entry.if.end6_crit_edge ]
  %cmd_cleanup_req = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 7
  %11 = ptrtoint ptr %cmd_cleanup_req to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cmd_cleanup_req, align 4
  %cmd_cleanup_cmpl = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_cleanup_cmpl, i32 noundef 4) #7
  %12 = ptrtoint ptr %cmd_cleanup_cmpl to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %cmd_cleanup_cmpl, align 4
  %active_cmd_count = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 6
  %13 = ptrtoint ptr %active_cmd_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %active_cmd_count, align 4
  %iscsi_conn_id = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 9
  %15 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iscsi_conn_id, align 4
  %conv8 = zext i1 %in_recovery to i32
  %conv10 = zext i1 %lun_reset.0.off0 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_cleanup_all_io, i32 noundef 1164, i32 noundef 256, ptr noundef nonnull @.str.7, i32 noundef %14, i32 noundef %16, i32 noundef %conv8, i32 noundef %conv10) #7
  br i1 %lun_reset.0.off0, label %if.then12, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %back_lock = getelementptr inbounds %struct.iscsi_session, ptr %5, i32 0, i32 53
  tail call void @_raw_spin_lock_bh(ptr noundef %back_lock) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end6.if.end13_crit_edge
  %list_lock = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %list_lock) #7
  %active_cmd_list = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 4
  %17 = ptrtoint ptr %active_cmd_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %active_cmd_list, align 4
  %cmp20.not400 = icmp eq ptr %18, %active_cmd_list
  br i1 %cmp20.not400, label %if.end13.for.end_crit_edge, label %for.body.lr.ph

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %conv44 = zext i32 %lun.0 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cmd.0401 = phi ptr [ %18, %for.body.lr.ph ], [ %cmd_tmp.0403, %for.inc.for.body_crit_edge ]
  %19 = ptrtoint ptr %cmd.0401 to i32
  call void @__asan_load4_noabort(i32 %19)
  %cmd_tmp.0403 = load ptr, ptr %cmd.0401, align 4
  %task22 = getelementptr inbounds %struct.qedi_cmd, ptr %cmd.0401, i32 0, i32 11
  %20 = ptrtoint ptr %task22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task22, align 4
  %cmp23 = icmp eq ptr %21, %task
  br i1 %cmp23, label %for.body.for.inc_crit_edge, label %if.end26

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end26:                                         ; preds = %for.body
  br i1 %lun_reset.0.off0, label %if.then28, label %if.end26.if.end50_crit_edge

if.end26.if.end50_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then28:                                        ; preds = %if.end26
  %scsi_cmd = getelementptr inbounds %struct.qedi_cmd, ptr %cmd.0401, i32 0, i32 4
  %22 = ptrtoint ptr %scsi_cmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %scsi_cmd, align 4
  %tobool29.not = icmp eq ptr %23, null
  br i1 %tobool29.not, label %if.then28.if.end50_crit_edge, label %land.lhs.true

if.then28.if.end50_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

land.lhs.true:                                    ; preds = %if.then28
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  %tobool31.not = icmp eq ptr %25, null
  br i1 %tobool31.not, label %land.lhs.true.if.end50_crit_edge, label %if.then32

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then32:                                        ; preds = %land.lhs.true
  %task_id = getelementptr inbounds %struct.qedi_cmd, ptr %cmd.0401, i32 0, i32 10
  %26 = ptrtoint ptr %task_id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %task_id, align 4
  %conv34 = zext i16 %27 to i32
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %21, i32 0, i32 6
  %28 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %itt, align 4
  %and35 = and i32 %29, 8191
  %state = getelementptr inbounds %struct.iscsi_task, ptr %21, i32 0, i32 17
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 4
  %state39 = getelementptr inbounds %struct.qedi_cmd, ptr %cmd.0401, i32 0, i32 13
  %32 = ptrtoint ptr %state39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state39, align 4
  %34 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iscsi_conn_id, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_cleanup_all_io, i32 noundef 1184, i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %conv34, i32 noundef %and35, ptr noundef nonnull %23, ptr noundef nonnull %25, i32 noundef %31, i32 noundef %33, i32 noundef %35) #7
  %36 = ptrtoint ptr %scsi_cmd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %scsi_cmd, align 4
  %device42 = getelementptr inbounds %struct.scsi_cmnd, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %device42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device42, align 4
  %lun43 = getelementptr inbounds %struct.scsi_device, ptr %39, i32 0, i32 18
  %40 = ptrtoint ptr %lun43 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %lun43, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %conv44)
  %cmp45.not = icmp eq i64 %41, %conv44
  br i1 %cmp45.not, label %if.then32.if.end50_crit_edge, label %if.then32.for.inc_crit_edge

if.then32.for.inc_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then32.if.end50_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.end50:                                         ; preds = %if.then32.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge, %if.then28.if.end50_crit_edge, %if.end26.if.end50_crit_edge
  %42 = ptrtoint ptr %cmd_cleanup_req to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cmd_cleanup_req, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %cmd_cleanup_req, align 4
  %call52 = tail call i32 @qedi_iscsi_cleanup_task(ptr noundef %21, i1 zeroext undef)
  %io_cmd_in_list = getelementptr inbounds %struct.qedi_cmd, ptr %cmd.0401, i32 0, i32 1
  %44 = ptrtoint ptr %io_cmd_in_list to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %io_cmd_in_list, align 4
  %call.i.i355 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cmd.0401) #7
  br i1 %call.i.i355, label %if.end.i.i, label %if.end50.list_del_init.exit_crit_edge

if.end50.list_del_init.exit_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cmd.0401, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %cmd.0401 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cmd.0401, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end50.list_del_init.exit_crit_edge
  %51 = ptrtoint ptr %cmd.0401 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %cmd.0401, ptr %cmd.0401, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %cmd.0401, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %cmd.0401, ptr %prev.i3.i, align 4
  %53 = ptrtoint ptr %active_cmd_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %active_cmd_count, align 4
  %dec = add i32 %54, -1
  store i32 %dec, ptr %active_cmd_count, align 4
  %55 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iscsi_conn_id, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_cleanup_all_io, i32 noundef 1197, ptr noundef nonnull @.str.9, ptr noundef %cmd.0401, i32 noundef %56) #7
  br label %for.inc

for.inc:                                          ; preds = %list_del_init.exit, %if.then32.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp20.not = icmp eq ptr %cmd_tmp.0403, %active_cmd_list
  br i1 %cmp20.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end13.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %list_lock) #7
  br i1 %lun_reset.0.off0, label %if.then65, label %for.end.if.end67_crit_edge

for.end.if.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then65:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %back_lock66 = getelementptr inbounds %struct.iscsi_session, ptr %5, i32 0, i32 53
  tail call void @_raw_spin_unlock_bh(ptr noundef %back_lock66) #7
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %for.end.if.end67_crit_edge
  %57 = ptrtoint ptr %cmd_cleanup_req to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cmd_cleanup_req, align 4
  %59 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iscsi_conn_id, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_cleanup_all_io, i32 noundef 1208, i32 noundef 256, ptr noundef nonnull @.str.10, i32 noundef %58, i32 noundef %60) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1214) #7
  %61 = ptrtoint ptr %cmd_cleanup_req to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cmd_cleanup_req, align 4
  %call.i.i343 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_cleanup_cmpl, i32 noundef 4) #7
  %63 = ptrtoint ptr %cmd_cleanup_cmpl to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %cmd_cleanup_cmpl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp77 = icmp eq i32 %62, %64
  br i1 %cmp77, label %if.end67.if.then141_crit_edge, label %lor.rhs

if.end67.if.then141_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then141

lor.rhs:                                          ; preds = %if.end67
  %flags79 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 14
  %65 = ptrtoint ptr %flags79 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %flags79, align 4
  %67 = and i32 %66, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool81.not = icmp eq i32 %67, 0
  br i1 %tobool81.not, label %if.then97, label %lor.rhs.if.then141_crit_edge

lor.rhs.if.then141_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then141

if.then97:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %68 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %wait_queue = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 15
  %call100404 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %69 = ptrtoint ptr %cmd_cleanup_req to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cmd_cleanup_req, align 4
  %call.i.i344405 = call zeroext i1 @__kasan_check_read(ptr noundef %cmd_cleanup_cmpl, i32 noundef 4) #7
  %71 = ptrtoint ptr %cmd_cleanup_cmpl to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %cmd_cleanup_cmpl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp105406 = icmp eq i32 %70, %72
  br i1 %cmp105406, label %if.then97.if.end138.thread372_crit_edge, label %if.then97.lor.end111_crit_edge

if.then97.lor.end111_crit_edge:                   ; preds = %if.then97
  br label %lor.end111

if.then97.if.end138.thread372_crit_edge:          ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138.thread372

lor.end111:                                       ; preds = %cleanup.lor.end111_crit_edge, %if.then97.lor.end111_crit_edge
  %call100408 = phi i32 [ %call100, %cleanup.lor.end111_crit_edge ], [ %call100404, %if.then97.lor.end111_crit_edge ]
  %__ret98.0407 = phi i32 [ %call134, %cleanup.lor.end111_crit_edge ], [ 500, %if.then97.lor.end111_crit_edge ]
  %73 = ptrtoint ptr %flags79 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %flags79, align 4
  %75 = and i32 %74, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool110.not = icmp eq i32 %75, 0
  br i1 %tobool110.not, label %76, label %lor.end111.if.end138.thread372_crit_edge

lor.end111.if.end138.thread372_crit_edge:         ; preds = %lor.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138.thread372

if.end138.thread372:                              ; preds = %cleanup.if.end138.thread372_crit_edge, %lor.end111.if.end138.thread372_crit_edge, %if.then97.if.end138.thread372_crit_edge
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.then141

76:                                               ; preds = %lor.end111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret98.0407)
  %tobool124.not = icmp eq i32 %__ret98.0407, 0
  br i1 %tobool124.not, label %if.end138, label %if.end130

if.end130:                                        ; preds = %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100408)
  %tobool131.not = icmp eq i32 %call100408, 0
  br i1 %tobool131.not, label %cleanup, label %if.end138.thread369

if.end138.thread369:                              ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.then141

cleanup:                                          ; preds = %if.end130
  %call134 = call i32 @schedule_timeout(i32 noundef %__ret98.0407) #7
  %call100 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %77 = ptrtoint ptr %cmd_cleanup_req to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cmd_cleanup_req, align 4
  %call.i.i344 = call zeroext i1 @__kasan_check_read(ptr noundef %cmd_cleanup_cmpl, i32 noundef 4) #7
  %79 = ptrtoint ptr %cmd_cleanup_cmpl to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %cmd_cleanup_cmpl, align 4
  %cmp105 = icmp eq i32 %78, %80
  br i1 %cmp105, label %cleanup.if.end138.thread372_crit_edge, label %cleanup.lor.end111_crit_edge

cleanup.lor.end111_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end111

cleanup.if.end138.thread372_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138.thread372

if.end138:                                        ; preds = %76
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  %81 = ptrtoint ptr %cmd_cleanup_req to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cmd_cleanup_req, align 4
  %call.i.i348 = call zeroext i1 @__kasan_check_read(ptr noundef %cmd_cleanup_cmpl, i32 noundef 4) #7
  %83 = ptrtoint ptr %cmd_cleanup_cmpl to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %cmd_cleanup_cmpl, align 4
  %85 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %iscsi_conn_id, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_cleanup_all_io, i32 noundef 1229, i32 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %82, i32 noundef %84, i32 noundef %86) #7
  %shost = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 1
  %87 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %shost, align 4
  call void @iscsi_host_for_each_session(ptr noundef %88, ptr noundef nonnull @qedi_mark_device_missing) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_ops to i32))
  %89 = load ptr, ptr @qedi_ops, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %drain = getelementptr inbounds %struct.qed_common_ops, ptr %91, i32 0, i32 22
  %92 = ptrtoint ptr %drain to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %drain, align 4
  %cdev = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 3
  %94 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cdev, align 4
  %call153 = call i32 %93(ptr noundef %95) #7
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1240) #7
  %96 = ptrtoint ptr %cmd_cleanup_req to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cmd_cleanup_req, align 4
  %call.i.i349 = call zeroext i1 @__kasan_check_read(ptr noundef %cmd_cleanup_cmpl, i32 noundef 4) #7
  %98 = ptrtoint ptr %cmd_cleanup_cmpl to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %cmd_cleanup_cmpl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp165 = icmp eq i32 %97, %99
  br i1 %cmp165, label %if.end138.if.end242_crit_edge, label %lor.rhs167

if.end138.if.end242_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242

if.then141:                                       ; preds = %if.end138.thread369, %if.end138.thread372, %lor.rhs.if.then141_crit_edge, %if.end67.if.then141_crit_edge
  %100 = ptrtoint ptr %cmd_cleanup_req to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cmd_cleanup_req, align 4
  %call.i.i347 = call zeroext i1 @__kasan_check_read(ptr noundef %cmd_cleanup_cmpl, i32 noundef 4) #7
  %102 = ptrtoint ptr %cmd_cleanup_cmpl to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %cmd_cleanup_cmpl, align 4
  %104 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %iscsi_conn_id, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_cleanup_all_io, i32 noundef 1220, i32 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %101, i32 noundef %103, i32 noundef %105) #7
  br label %cleanup244

lor.rhs167:                                       ; preds = %if.end138
  %106 = ptrtoint ptr %flags79 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %flags79, align 4
  %108 = and i32 %107, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool170.not = icmp eq i32 %108, 0
  br i1 %tobool170.not, label %if.then189, label %lor.rhs167.if.end242_crit_edge

lor.rhs167.if.end242_crit_edge:                   ; preds = %lor.rhs167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242

if.then189:                                       ; preds = %lor.rhs167
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry190) #7
  %109 = call ptr @memset(ptr %__wq_entry190, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry190, i32 noundef 0) #7
  %call195410 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry190, i32 noundef 1) #7
  %110 = ptrtoint ptr %cmd_cleanup_req to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cmd_cleanup_req, align 4
  %call.i.i352411 = call zeroext i1 @__kasan_check_read(ptr noundef %cmd_cleanup_cmpl, i32 noundef 4) #7
  %112 = ptrtoint ptr %cmd_cleanup_cmpl to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %cmd_cleanup_cmpl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %113)
  %cmp200412 = icmp eq i32 %111, %113
  br i1 %cmp200412, label %if.then189.if.end237.thread392_crit_edge, label %if.then189.lor.end206_crit_edge

if.then189.lor.end206_crit_edge:                  ; preds = %if.then189
  br label %lor.end206

if.then189.if.end237.thread392_crit_edge:         ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237.thread392

lor.end206:                                       ; preds = %cleanup230.lor.end206_crit_edge, %if.then189.lor.end206_crit_edge
  %call195414 = phi i32 [ %call195, %cleanup230.lor.end206_crit_edge ], [ %call195410, %if.then189.lor.end206_crit_edge ]
  %__ret191.0413 = phi i32 [ %call229, %cleanup230.lor.end206_crit_edge ], [ 500, %if.then189.lor.end206_crit_edge ]
  %114 = ptrtoint ptr %flags79 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %flags79, align 4
  %116 = and i32 %115, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool205.not = icmp eq i32 %116, 0
  br i1 %tobool205.not, label %117, label %lor.end206.if.end237.thread392_crit_edge

lor.end206.if.end237.thread392_crit_edge:         ; preds = %lor.end206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237.thread392

if.end237.thread392:                              ; preds = %cleanup230.if.end237.thread392_crit_edge, %lor.end206.if.end237.thread392_crit_edge, %if.then189.if.end237.thread392_crit_edge
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry190) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry190) #7
  br label %if.end242

117:                                              ; preds = %lor.end206
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret191.0413)
  %tobool219.not = icmp eq i32 %__ret191.0413, 0
  br i1 %tobool219.not, label %if.end237, label %if.end225

if.end225:                                        ; preds = %117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195414)
  %tobool226.not = icmp eq i32 %call195414, 0
  br i1 %tobool226.not, label %cleanup230, label %if.end237.thread389

if.end237.thread389:                              ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry190) #7
  br label %if.end242

cleanup230:                                       ; preds = %if.end225
  %call229 = call i32 @schedule_timeout(i32 noundef %__ret191.0413) #7
  %call195 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry190, i32 noundef 1) #7
  %118 = ptrtoint ptr %cmd_cleanup_req to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cmd_cleanup_req, align 4
  %call.i.i352 = call zeroext i1 @__kasan_check_read(ptr noundef %cmd_cleanup_cmpl, i32 noundef 4) #7
  %120 = ptrtoint ptr %cmd_cleanup_cmpl to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %cmd_cleanup_cmpl, align 4
  %cmp200 = icmp eq i32 %119, %121
  br i1 %cmp200, label %cleanup230.if.end237.thread392_crit_edge, label %cleanup230.lor.end206_crit_edge

cleanup230.lor.end206_crit_edge:                  ; preds = %cleanup230
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end206

cleanup230.if.end237.thread392_crit_edge:         ; preds = %cleanup230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237.thread392

if.end237:                                        ; preds = %117
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry190) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry190) #7
  %122 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %shost, align 4
  call void @iscsi_host_for_each_session(ptr noundef %123, ptr noundef nonnull @qedi_mark_device_available) #7
  br label %cleanup244

if.end242:                                        ; preds = %if.end237.thread389, %if.end237.thread392, %lor.rhs167.if.end242_crit_edge, %if.end138.if.end242_crit_edge
  %124 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %shost, align 4
  call void @iscsi_host_for_each_session(ptr noundef %125, ptr noundef nonnull @qedi_mark_device_available) #7
  br label %cleanup244

cleanup244:                                       ; preds = %if.end242, %if.end237, %if.then141
  %retval.0 = phi i32 [ 0, %if.then141 ], [ 0, %if.end242 ], [ -1, %if.end237 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @scsilun_to_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedi_iscsi_cleanup_task(ptr nocapture noundef readonly %task, i1 zeroext %mark_cmd_node_deleted) local_unnamed_addr #0 align 64 {
entry:
  %task_params = alloca %struct.iscsi_task_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %task_params) #7
  %conn1 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 12
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %dd_data2 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %4 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data2, align 4
  %qedi = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %qedi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qedi, align 4
  %task_id = getelementptr inbounds %struct.qedi_cmd, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %task_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %task_id, align 4
  %conv = zext i16 %9 to i32
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %10 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %itt, align 4
  %and = and i32 %11, 8191
  %state = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 17
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %state3 = getelementptr inbounds %struct.qedi_cmd, ptr %5, i32 0, i32 13
  %14 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state3, align 4
  %iscsi_conn_id = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iscsi_conn_id, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %7, ptr noundef nonnull @__func__.qedi_iscsi_cleanup_task, i32 noundef 2141, i32 noundef 256, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %and, i32 noundef %13, i32 noundef %15, i32 noundef %17) #7
  %18 = call ptr @memset(ptr %task_params, i32 0, i32 24)
  %ep4 = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %ep4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep4, align 4
  %sq_prod_idx.i = getelementptr inbounds %struct.qedi_endpoint, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sq_prod_idx.i, align 4
  %inc.i = add i16 %22, 1
  store i16 %inc.i, ptr %sq_prod_idx.i, align 4
  %fw_sq_prod_idx.i = getelementptr inbounds %struct.qedi_endpoint, ptr %20, i32 0, i32 21
  %23 = ptrtoint ptr %fw_sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fw_sq_prod_idx.i, align 2
  %inc3.i = add i16 %24, 1
  store i16 %inc3.i, ptr %fw_sq_prod_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %inc.i)
  %cmp.i = icmp eq i16 %inc.i, 1024
  br i1 %cmp.i, label %if.then.i, label %entry.qedi_get_wqe_idx.exit_crit_edge

entry.qedi_get_wqe_idx.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qedi_get_wqe_idx.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %sq_prod_idx.i, align 4
  br label %qedi_get_wqe_idx.exit

qedi_get_wqe_idx.exit:                            ; preds = %if.then.i, %entry.qedi_get_wqe_idx.exit_crit_edge
  %sq = getelementptr inbounds %struct.qedi_endpoint, ptr %20, i32 0, i32 18
  %26 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sq, align 4
  %idxprom = zext i16 %22 to i32
  %arrayidx = getelementptr %struct.iscsi_wqe, ptr %27, i32 %idxprom
  %sqe = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 1
  %28 = ptrtoint ptr %sqe to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx, ptr %sqe, align 4
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 0, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %task_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %task_id, align 4
  %itid = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 5
  %32 = ptrtoint ptr %itid to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %itid, align 2
  %call7 = call i32 @init_cleanup_task(ptr noundef nonnull %task_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %qedi_get_wqe_idx.exit.cleanup_crit_edge

qedi_get_wqe_idx.exit.cleanup_crit_edge:          ; preds = %qedi_get_wqe_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %qedi_get_wqe_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %ep4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ep4, align 4
  %fw_sq_prod_idx.i24 = getelementptr inbounds %struct.qedi_endpoint, ptr %34, i32 0, i32 21
  %35 = ptrtoint ptr %fw_sq_prod_idx.i24 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %fw_sq_prod_idx.i24, align 2
  %sq_prod.i = getelementptr inbounds %struct.qedi_endpoint, ptr %34, i32 0, i32 17, i32 2
  %37 = ptrtoint ptr %sq_prod.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %sq_prod.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  call void @arm_heavy_mb() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %ep4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ep4, align 4
  %db_data5.i = getelementptr inbounds %struct.qedi_endpoint, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %db_data5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %db_data5.i, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41) #7
  %p_doorbell.i = getelementptr inbounds %struct.qedi_endpoint, ptr %39, i32 0, i32 16
  %43 = ptrtoint ptr %p_doorbell.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %p_doorbell.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #7, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  call void @arm_heavy_mb() #7
  %45 = ptrtoint ptr %qedi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %qedi, align 4
  %47 = ptrtoint ptr %ep4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ep4, align 4
  %sq_prod_idx.i25 = getelementptr inbounds %struct.qedi_endpoint, ptr %48, i32 0, i32 20
  %49 = ptrtoint ptr %sq_prod_idx.i25 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sq_prod_idx.i25, align 4
  %conv.i = zext i16 %50 to i32
  %fw_sq_prod_idx11.i = getelementptr inbounds %struct.qedi_endpoint, ptr %48, i32 0, i32 21
  %51 = ptrtoint ptr %fw_sq_prod_idx11.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %fw_sq_prod_idx11.i, align 2
  %conv12.i = zext i16 %52 to i32
  %53 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iscsi_conn_id, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %46, ptr noundef nonnull @__func__.qedi_ring_doorbell, i32 noundef 939, i32 noundef 128, ptr noundef nonnull @.str.46, i32 noundef %conv.i, i32 noundef %conv12.i, i32 noundef %54) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qedi_get_wqe_idx.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %task_params) #7
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_host_for_each_session(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_mark_device_missing(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_mark_device_available(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_clearsq(ptr noundef %qedi, ptr noundef %qedi_conn, ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 2
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %cmd_cleanup_req = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 7
  %2 = ptrtoint ptr %cmd_cleanup_req to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmd_cleanup_req, align 4
  %cmd_cleanup_cmpl = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_cleanup_cmpl, i32 noundef 4) #7
  %3 = ptrtoint ptr %cmd_cleanup_cmpl to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %cmd_cleanup_cmpl, align 4
  %tobool.not = icmp eq ptr %1, null
  %iscsi_conn_id = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 9
  %4 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iscsi_conn_id, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_clearsq, i32 noundef 1265, ptr noundef nonnull @.str.14, i32 noundef %5) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_clearsq, i32 noundef 1271, i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %5, ptr noundef %qedi_conn, ptr noundef nonnull %1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_ops to i32))
  %6 = load ptr, ptr @qedi_ops, align 4
  %clear_sq = getelementptr inbounds %struct.qed_iscsi_ops, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %clear_sq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clear_sq, align 4
  %cdev = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 3
  %9 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cdev, align 4
  %handle = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %handle, align 4
  %call = tail call i32 %8(ptr noundef %10, i32 noundef %12) #7
  %call3 = tail call i32 @qedi_cleanup_all_io(ptr noundef %qedi, ptr noundef %qedi_conn, ptr noundef %task, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iscsi_conn_id, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_clearsq, i32 noundef 1279, ptr noundef nonnull @.str.16, i32 noundef %14) #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1280, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedi_send_iscsi_tmf(ptr noundef %qedi_conn, ptr nocapture noundef readonly %mtask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mtask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtask, align 4
  %qedi1 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 1
  %2 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qedi1, align 4
  %flags = getelementptr inbounds %struct.iscsi_tm, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 1
  %6 = and i8 %5, 127
  %and = zext i8 %6 to i32
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %entry.sw.bb9_crit_edge
    i32 6, label %entry.sw.bb9_crit_edge27
    i32 7, label %entry.sw.bb9_crit_edge28
  ]

entry.sw.bb9_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dd_data = getelementptr inbounds %struct.iscsi_task, ptr %mtask, i32 0, i32 20
  %8 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dd_data, align 4
  %tmf_work_lock = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tmf_work_lock) #7
  %fw_cleanup_works = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 18
  %10 = ptrtoint ptr %fw_cleanup_works to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_cleanup_works, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %fw_cleanup_works, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tmf_work_lock) #7
  %tmf_work = getelementptr inbounds %struct.qedi_cmd, ptr %9, i32 0, i32 12
  tail call void @__init_work(ptr noundef %tmf_work, i32 noundef 0) #7
  %12 = ptrtoint ptr %tmf_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %tmf_work, align 4
  %lockdep_map = getelementptr inbounds %struct.qedi_cmd, ptr %9, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @qedi_send_iscsi_tmf.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry6 = getelementptr inbounds %struct.qedi_cmd, ptr %9, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.qedi_cmd, ptr %9, i32 0, i32 12, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry6, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qedi_cmd, ptr %9, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @qedi_abort_work, ptr %func, align 4
  %tmf_thread = getelementptr inbounds %struct.qedi_ctx, ptr %3, i32 0, i32 47
  %16 = ptrtoint ptr %tmf_thread to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tmf_thread, align 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %tmf_work) #7
  br label %cleanup

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge27, %entry.sw.bb9_crit_edge28
  %call10 = tail call fastcc i32 @send_iscsi_tmf(ptr noundef %qedi_conn, ptr noundef %mtask, ptr noundef null)
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %iscsi_conn_id = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 9
  %18 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iscsi_conn_id, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %3, ptr noundef nonnull @__func__.qedi_send_iscsi_tmf, i32 noundef 1528, ptr noundef nonnull @.str.18, i32 noundef %19) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb9, %sw.bb
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call10, %sw.bb9 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_abort_work(ptr noundef %work) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -612
  %conn = getelementptr i8, ptr %work, i32 -552
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %qedi1 = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qedi1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dd_data, align 8
  %task = getelementptr i8, ptr %work, i32 -4
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %session = getelementptr inbounds %struct.iscsi_conn, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %session, align 8
  %back_lock = getelementptr inbounds %struct.iscsi_session, ptr %13, i32 0, i32 53
  tail call void @_raw_spin_lock_bh(ptr noundef %back_lock) #7
  %rtt = getelementptr inbounds %struct.iscsi_tm, ptr %11, i32 0, i32 7
  %14 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rtt, align 4
  %call = tail call ptr @iscsi_itt_to_ctask(ptr noundef %7, i32 noundef %15) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %session, align 8
  %back_lock4 = getelementptr inbounds %struct.iscsi_session, ptr %17, i32 0, i32 53
  tail call void @_raw_spin_unlock_bh(ptr noundef %back_lock4) #7
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %3, ptr noundef nonnull @__func__.qedi_abort_work, i32 noundef 1333, ptr noundef nonnull @.str.47) #7
  br label %clear_cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.iscsi_task, ptr %call, i32 0, i32 17
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %19, label %if.end10 [
    i32 1, label %if.end.if.then6_crit_edge
    i32 4, label %if.end.if.then6_crit_edge138
    i32 5, label %if.end.if.then6_crit_edge139
  ]

if.end.if.then6_crit_edge139:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end.if.then6_crit_edge138:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.if.then6_crit_edge138, %if.end.if.then6_crit_edge139
  %21 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %session, align 8
  %back_lock8 = getelementptr inbounds %struct.iscsi_session, ptr %22, i32 0, i32 53
  tail call void @_raw_spin_unlock_bh(ptr noundef %back_lock8) #7
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %3, ptr noundef nonnull @__func__.qedi_abort_work, i32 noundef 1340, i32 noundef 2, ptr noundef nonnull @.str.48) #7
  br label %send_tmf

if.end10:                                         ; preds = %if.end
  %23 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %session, align 8
  %back_lock12 = getelementptr inbounds %struct.iscsi_session, ptr %24, i32 0, i32 53
  tail call void @_raw_spin_unlock_bh(ptr noundef %back_lock12) #7
  %dd_data13 = getelementptr inbounds %struct.iscsi_task, ptr %call, i32 0, i32 20
  %25 = ptrtoint ptr %dd_data13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dd_data13, align 4
  %27 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rtt, align 4
  %and = and i32 %28, 8191
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %call, i32 0, i32 6
  %29 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %itt, align 4
  %and16 = and i32 %30, 8191
  %task_id = getelementptr inbounds %struct.qedi_cmd, ptr %26, i32 0, i32 10
  %31 = ptrtoint ptr %task_id to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %task_id, align 4
  %conv = zext i16 %32 to i32
  %iscsi_conn_id = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iscsi_conn_id, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %3, ptr noundef nonnull @__func__.qedi_abort_work, i32 noundef 1353, i32 noundef 2, ptr noundef nonnull @.str.49, i32 noundef %and, i32 noundef %and16, i32 noundef %conv, i32 noundef %34) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_do_not_recover to i32))
  %35 = load i32, ptr @qedi_do_not_recover, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool17.not = icmp eq i32 %35, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %3, ptr noundef nonnull @__func__.qedi_abort_work, i32 noundef 1357, ptr noundef nonnull @.str.50, i32 noundef %35) #7
  br label %clear_cleanup

if.end20:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3328, i32 noundef 28) #10
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %3, ptr noundef nonnull @__func__.qedi_abort_work, i32 noundef 1363, ptr noundef nonnull @.str.51) #7
  br label %clear_cleanup

if.end25:                                         ; preds = %if.end20
  %type = getelementptr i8, ptr %work, i32 48
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %type, align 4
  %state = getelementptr i8, ptr %work, i32 44
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %state, align 4
  %qedi_cmd26 = getelementptr inbounds %struct.qedi_work_map, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %qedi_cmd26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr, ptr %qedi_cmd26, align 8
  %40 = ptrtoint ptr %task_id to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %task_id, align 4
  %conv28 = zext i16 %41 to i32
  %rtid = getelementptr inbounds %struct.qedi_work_map, ptr %call7.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %rtid to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv28, ptr %rtid, align 8
  %state29 = getelementptr inbounds %struct.qedi_work_map, ptr %call7.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %state29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %state29, align 4
  %ctask30 = getelementptr inbounds %struct.qedi_work_map, ptr %call7.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %ctask30 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call, ptr %ctask30, align 4
  %list_tmf_work = getelementptr i8, ptr %work, i32 52
  %45 = ptrtoint ptr %list_tmf_work to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i, ptr %list_tmf_work, align 4
  %ptr_tmf_work = getelementptr inbounds %struct.qedi_work_map, ptr %call7.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %ptr_tmf_work to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ptr_tmf_work, align 8
  %48 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iscsi_conn_id, align 4
  %flags = getelementptr inbounds %struct.iscsi_tm, ptr %11, i32 0, i32 1
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flags, align 1
  %conv33 = zext i8 %51 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %3, ptr noundef nonnull @__func__.qedi_abort_work, i32 noundef 1378, i32 noundef 256, ptr noundef nonnull @.str.52, ptr noundef %47, ptr noundef nonnull %call7.i.i, i32 noundef %49, i32 noundef %conv33) #7
  %tmf_work_lock = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %tmf_work_lock) #7
  %tmf_work_list = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 14
  %prev.i = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 14, i32 1
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %53, ptr noundef %tmf_work_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.list_add_tail.exit_crit_edge

if.end25.list_add_tail.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %55 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %tmf_work_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %call7.i.i, ptr %53, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end25.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tmf_work_lock) #7
  %call35 = tail call i32 @qedi_iscsi_cleanup_task(ptr noundef nonnull %call, i1 zeroext undef)
  %58 = ptrtoint ptr %dd_data13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dd_data13, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1299) #7
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp.i = icmp eq i32 %61, 2
  br i1 %cmp.i, label %list_add_tail.exit.send_tmf_crit_edge, label %lor.rhs.i126

list_add_tail.exit.send_tmf_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %send_tmf

lor.rhs.i126:                                     ; preds = %list_add_tail.exit
  %62 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp4.i = icmp eq i32 %63, 1
  br i1 %cmp4.i, label %land.rhs.i, label %lor.rhs.i126.if.then13.i_crit_edge

lor.rhs.i126.if.then13.i_crit_edge:               ; preds = %lor.rhs.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

land.rhs.i:                                       ; preds = %lor.rhs.i126
  %state5.i = getelementptr inbounds %struct.qedi_cmd, ptr %59, i32 0, i32 13
  %64 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %state5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %65)
  %cmp6.i = icmp eq i32 %65, 6
  br i1 %cmp6.i, label %land.rhs.i.send_tmf_crit_edge, label %land.rhs.i.if.then13.i_crit_edge

land.rhs.i.if.then13.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

land.rhs.i.send_tmf_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %send_tmf

if.then13.i:                                      ; preds = %land.rhs.i.if.then13.i_crit_edge, %lor.rhs.i126.if.then13.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %66 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %wait_queue.i = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 15
  %call25.i = call i32 @prepare_to_wait_event(ptr noundef %wait_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %67 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp1726.i = icmp eq i32 %68, 2
  br i1 %cmp1726.i, label %if.then13.i.if.end49.thread20.i_crit_edge, label %lor.rhs18.lr.ph.i

if.then13.i.if.end49.thread20.i_crit_edge:        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.thread20.i

lor.rhs18.lr.ph.i:                                ; preds = %if.then13.i
  %state22.i = getelementptr inbounds %struct.qedi_cmd, ptr %59, i32 0, i32 13
  br label %lor.rhs18.i

lor.rhs18.i:                                      ; preds = %cleanup.i.lor.rhs18.i_crit_edge, %lor.rhs18.lr.ph.i
  %call28.i = phi i32 [ %call25.i, %lor.rhs18.lr.ph.i ], [ %call.i, %cleanup.i.lor.rhs18.i_crit_edge ]
  %__ret14.027.i = phi i32 [ 500, %lor.rhs18.lr.ph.i ], [ %call46.i, %cleanup.i.lor.rhs18.i_crit_edge ]
  %69 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp20.i = icmp eq i32 %70, 1
  br i1 %cmp20.i, label %lor.end25.i, label %lor.rhs18.i.lor.end25.thread4.i_crit_edge

lor.rhs18.i.lor.end25.thread4.i_crit_edge:        ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end25.thread4.i

lor.end25.i:                                      ; preds = %lor.rhs18.i
  %71 = ptrtoint ptr %state22.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %state22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %72)
  %cmp23.i = icmp eq i32 %72, 6
  br i1 %cmp23.i, label %lor.end25.i.if.end49.thread20.i_crit_edge, label %lor.end25.i.lor.end25.thread4.i_crit_edge

lor.end25.i.lor.end25.thread4.i_crit_edge:        ; preds = %lor.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end25.thread4.i

lor.end25.i.if.end49.thread20.i_crit_edge:        ; preds = %lor.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.thread20.i

if.end49.thread20.i:                              ; preds = %cleanup.i.if.end49.thread20.i_crit_edge, %lor.end25.i.if.end49.thread20.i_crit_edge, %if.then13.i.if.end49.thread20.i_crit_edge
  call void @finish_wait(ptr noundef %wait_queue.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %send_tmf

lor.end25.thread4.i:                              ; preds = %lor.end25.i.lor.end25.thread4.i_crit_edge, %lor.rhs18.i.lor.end25.thread4.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.027.i)
  %tobool36.not.i = icmp eq i32 %__ret14.027.i, 0
  br i1 %tobool36.not.i, label %if.then40, label %if.end42.i

if.end42.i:                                       ; preds = %lor.end25.thread4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool43.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool43.not.i, label %cleanup.i, label %if.end49.thread17.i

if.end49.thread17.i:                              ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %send_tmf

cleanup.i:                                        ; preds = %if.end42.i
  %call46.i = call i32 @schedule_timeout(i32 noundef %__ret14.027.i) #7
  %call.i = call i32 @prepare_to_wait_event(ptr noundef %wait_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %73 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %state, align 4
  %cmp17.i = icmp eq i32 %74, 2
  br i1 %cmp17.i, label %cleanup.i.if.end49.thread20.i_crit_edge, label %cleanup.i.lor.rhs18.i_crit_edge

cleanup.i.lor.rhs18.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs18.i

cleanup.i.if.end49.thread20.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.thread20.i

if.then40:                                        ; preds = %lor.end25.thread4.i
  call void @finish_wait(ptr noundef %wait_queue.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %75 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 3, ptr %state, align 4
  %task_id.i = getelementptr inbounds %struct.qedi_cmd, ptr %59, i32 0, i32 10
  %76 = ptrtoint ptr %task_id.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %task_id.i, align 4
  %conv.i = zext i16 %77 to i32
  %78 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %iscsi_conn_id, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %3, ptr noundef nonnull @__func__.qedi_wait_for_cleanup_request, i32 noundef 1305, i32 noundef 256, ptr noundef nonnull @.str.54, i32 noundef %conv.i, i32 noundef %79) #7
  %80 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %iscsi_conn_id, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %3, ptr noundef nonnull @__func__.qedi_abort_work, i32 noundef 1391, i32 noundef 2, ptr noundef nonnull @.str.53, i32 noundef %81) #7
  call void @_raw_spin_lock_bh(ptr noundef %tmf_work_lock) #7
  %82 = ptrtoint ptr %list_tmf_work to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %list_tmf_work, align 4
  %tobool48.not = icmp eq ptr %83, null
  br i1 %tobool48.not, label %if.then40.if.end52_crit_edge, label %if.then49

if.then40.if.end52_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

send_tmf:                                         ; preds = %if.end49.thread17.i, %if.end49.thread20.i, %land.rhs.i.send_tmf_crit_edge, %list_add_tail.exit.send_tmf_crit_edge, %if.then6
  %84 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %task, align 4
  %call45 = call fastcc i32 @send_iscsi_tmf(ptr noundef %1, ptr noundef %85, ptr noundef nonnull %call)
  br label %clear_cleanup

if.then49:                                        ; preds = %if.then40
  %call.i.i127 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i) #7
  br i1 %call.i.i127, label %if.end.i.i128, label %if.then49.list_del_init.exit_crit_edge

if.then49.list_del_init.exit_crit_edge:           ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i128:                                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i, align 4
  %88 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call7.i.i, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i128, %if.then49.list_del_init.exit_crit_edge
  %92 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call7.i.i, ptr %prev.i3.i, align 4
  %94 = ptrtoint ptr %list_tmf_work to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %list_tmf_work, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %if.end52

if.end52:                                         ; preds = %list_del_init.exit, %if.then40.if.end52_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tmf_work_lock) #7
  %list_lock = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %list_lock) #7
  %io_cmd_in_list = getelementptr inbounds %struct.qedi_cmd, ptr %26, i32 0, i32 1
  %95 = ptrtoint ptr %io_cmd_in_list to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %io_cmd_in_list, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool54.not = icmp eq i8 %96, 0
  br i1 %tobool54.not, label %if.end52.if.end59_crit_edge, label %if.then57, !prof !158

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then57:                                        ; preds = %if.end52
  %97 = ptrtoint ptr %io_cmd_in_list to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %io_cmd_in_list, align 4
  %call.i.i129 = call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #7
  br i1 %call.i.i129, label %if.end.i.i132, label %if.then57.list_del_init.exit134_crit_edge

if.then57.list_del_init.exit134_crit_edge:        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit134

if.end.i.i132:                                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i130 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %98 = ptrtoint ptr %prev.i.i130 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev.i.i130, align 4
  %100 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %26, align 4
  %prev1.i.i.i131 = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %prev1.i.i.i131 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev1.i.i.i131, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %101, ptr %99, align 4
  br label %list_del_init.exit134

list_del_init.exit134:                            ; preds = %if.end.i.i132, %if.then57.list_del_init.exit134_crit_edge
  %104 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %26, ptr %26, align 4
  %prev.i3.i133 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i3.i133 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %26, ptr %prev.i3.i133, align 4
  %active_cmd_count = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 6
  %106 = ptrtoint ptr %active_cmd_count to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %active_cmd_count, align 4
  %dec = add i32 %107, -1
  store i32 %dec, ptr %active_cmd_count, align 4
  br label %if.end59

if.end59:                                         ; preds = %list_del_init.exit134, %if.end52.if.end59_crit_edge
  call void @_raw_spin_unlock(ptr noundef %list_lock) #7
  br label %clear_cleanup

clear_cleanup:                                    ; preds = %if.end59, %send_tmf, %if.then23, %if.then18, %if.then
  %tmf_work_lock61 = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 16
  call void @_raw_spin_lock(ptr noundef %tmf_work_lock61) #7
  %fw_cleanup_works = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 18
  %108 = ptrtoint ptr %fw_cleanup_works to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %fw_cleanup_works, align 4
  %dec62 = add i32 %109, -1
  store i32 %dec62, ptr %fw_cleanup_works, align 4
  call void @_raw_spin_unlock(ptr noundef %tmf_work_lock61) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_iscsi_tmf(ptr noundef %qedi_conn, ptr nocapture noundef readonly %mtask, ptr nocapture noundef readonly %ctask) unnamed_addr #0 align 64 {
entry:
  %tmf_pdu_header = alloca %struct.iscsi_tmf_request_hdr, align 4
  %task_params = alloca %struct.iscsi_task_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tmf_pdu_header) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %task_params) #7
  %qedi1 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 1
  %0 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedi1, align 4
  %2 = ptrtoint ptr %mtask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtask, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_task, ptr %mtask, i32 0, i32 20
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %ep2 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 2
  %6 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @qedi_get_task_idx(ptr noundef %1) #7
  %conv = trunc i32 %call to i16
  %sext = shl i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %sext)
  %cmp = icmp eq i32 %sext, -65536
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %conv3 = ashr exact i32 %sext, 16
  %tasks = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 41
  %num_tids_per_block.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 41, i32 1
  %8 = ptrtoint ptr %num_tids_per_block.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tids_per_block.i, align 4
  %.frozen = freeze i32 %9
  %div.i = udiv i32 %conv3, %.frozen
  %arrayidx.i = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 41, i32 2, i32 %div.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %conv3, %12
  %13 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tasks, align 4
  %mul.i = mul i32 %14, %rem.i.decomposed
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul.i
  %15 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 512)
  %task_id = getelementptr inbounds %struct.qedi_cmd, ptr %5, i32 0, i32 10
  %16 = ptrtoint ptr %task_id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %task_id, align 4
  %17 = getelementptr inbounds i8, ptr %task_params, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 20)
  %19 = call ptr @memset(ptr %tmf_pdu_header, i32 0, i32 48)
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %mtask, i32 0, i32 6
  %20 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %itt, align 4
  tail call void @qedi_update_itt_map(ptr noundef %1, i32 noundef %conv3, i32 noundef %21, ptr noundef %5) #7
  %and = and i32 %call, 65535
  %22 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %itt, align 4
  %and12 = shl i32 %23, 16
  %shl = and i32 %and12, 536805376
  %or = or i32 %shl, %and
  %itt13 = getelementptr inbounds %struct.iscsi_tmf_request_hdr, ptr %tmf_pdu_header, i32 0, i32 5
  %24 = ptrtoint ptr %itt13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %itt13, align 4
  %cmdsn = getelementptr inbounds %struct.iscsi_tm, ptr %3, i32 0, i32 8
  %25 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmdsn, align 4
  %cmd_sn = getelementptr inbounds %struct.iscsi_tmf_request_hdr, ptr %tmf_pdu_header, i32 0, i32 7
  %27 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %cmd_sn, align 4
  %lun = getelementptr inbounds %struct.iscsi_tm, ptr %3, i32 0, i32 5
  %28 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %28)
  %scsi_lun.sroa.0.0.copyload = load i32, ptr %lun, align 4
  %scsi_lun.sroa.5.0.lun.sroa_idx = getelementptr inbounds %struct.iscsi_tm, ptr %3, i32 0, i32 5, i32 0, i32 4
  %29 = ptrtoint ptr %scsi_lun.sroa.5.0.lun.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %scsi_lun.sroa.5.0.copyload = load i32, ptr %scsi_lun.sroa.5.0.lun.sroa_idx, align 4
  %lun14 = getelementptr inbounds %struct.iscsi_tmf_request_hdr, ptr %tmf_pdu_header, i32 0, i32 4
  %30 = ptrtoint ptr %lun14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %scsi_lun.sroa.0.0.copyload, ptr %lun14, align 4
  %hi = getelementptr inbounds %struct.iscsi_tmf_request_hdr, ptr %tmf_pdu_header, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %scsi_lun.sroa.5.0.copyload, ptr %hi, align 4
  %flags = getelementptr inbounds %struct.iscsi_tm, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags, align 1
  %34 = and i8 %33, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp19 = icmp eq i8 %34, 1
  br i1 %cmp19, label %if.then21, label %if.end6.if.end31_crit_edge

if.end6.if.end31_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then21:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %dd_data22 = getelementptr inbounds %struct.iscsi_task, ptr %ctask, i32 0, i32 20
  %35 = ptrtoint ptr %dd_data22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dd_data22, align 4
  %task_id23 = getelementptr inbounds %struct.qedi_cmd, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %task_id23 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %task_id23, align 4
  %conv24 = zext i16 %38 to i32
  %rtt = getelementptr inbounds %struct.iscsi_tm, ptr %3, i32 0, i32 7
  %39 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rtt, align 4
  %and26 = shl i32 %40, 16
  %shl27 = and i32 %and26, 536805376
  %or28 = or i32 %shl27, %conv24
  br label %if.end31

if.end31:                                         ; preds = %if.then21, %if.end6.if.end31_crit_edge
  %.sink = phi i32 [ %or28, %if.then21 ], [ -1, %if.end6.if.end31_crit_edge ]
  %41 = getelementptr inbounds %struct.iscsi_tmf_request_hdr, ptr %tmf_pdu_header, i32 0, i32 6
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink, ptr %41, align 4
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %3, align 4
  %opcode32 = getelementptr inbounds %struct.iscsi_tmf_request_hdr, ptr %tmf_pdu_header, i32 0, i32 2
  %45 = ptrtoint ptr %opcode32 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %opcode32, align 1
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %flags, align 1
  %function = getelementptr inbounds %struct.iscsi_tmf_request_hdr, ptr %tmf_pdu_header, i32 0, i32 1
  %48 = ptrtoint ptr %function to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %function, align 2
  %dlength = getelementptr inbounds %struct.iscsi_tm, ptr %3, i32 0, i32 4
  %49 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %dlength, align 1
  %conv35 = zext i8 %50 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %arrayidx38 = getelementptr %struct.iscsi_tm, ptr %3, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %52 to i32
  %shl40 = shl nuw nsw i32 %conv39, 8
  %or41 = or i32 %shl40, %shl36
  %arrayidx43 = getelementptr %struct.iscsi_tm, ptr %3, i32 0, i32 4, i32 2
  %53 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %54 to i32
  %or45 = or i32 %or41, %conv44
  %hdr_second_dword = getelementptr inbounds %struct.iscsi_tmf_request_hdr, ptr %tmf_pdu_header, i32 0, i32 3
  %55 = ptrtoint ptr %hdr_second_dword to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or45, ptr %hdr_second_dword, align 4
  %refcmdsn = getelementptr inbounds %struct.iscsi_tm, ptr %3, i32 0, i32 10
  %56 = ptrtoint ptr %refcmdsn to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %refcmdsn, align 4
  %ref_cmd_sn = getelementptr inbounds %struct.iscsi_tmf_request_hdr, ptr %tmf_pdu_header, i32 0, i32 9
  %58 = ptrtoint ptr %ref_cmd_sn to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %ref_cmd_sn, align 4
  %59 = ptrtoint ptr %task_params to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr.i, ptr %task_params, align 4
  %iscsi_conn_id = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 9
  %60 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iscsi_conn_id, align 4
  %conv46 = trunc i32 %61 to i16
  %conn_icid = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 4
  %62 = ptrtoint ptr %conn_icid to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv46, ptr %conn_icid, align 4
  %itid = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 5
  %63 = ptrtoint ptr %itid to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv, ptr %itid, align 2
  %cq_rss_number = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 6
  %64 = ptrtoint ptr %cq_rss_number to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %cq_rss_number, align 4
  %tx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %65 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %tx_io_size, align 4
  %rx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 3
  %66 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %rx_io_size, align 4
  %67 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ep2, align 4
  %sq_prod_idx.i = getelementptr inbounds %struct.qedi_endpoint, ptr %68, i32 0, i32 20
  %69 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %sq_prod_idx.i, align 4
  %inc.i = add i16 %70, 1
  store i16 %inc.i, ptr %sq_prod_idx.i, align 4
  %fw_sq_prod_idx.i = getelementptr inbounds %struct.qedi_endpoint, ptr %68, i32 0, i32 21
  %71 = ptrtoint ptr %fw_sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %fw_sq_prod_idx.i, align 2
  %inc3.i = add i16 %72, 1
  store i16 %inc3.i, ptr %fw_sq_prod_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %inc.i)
  %cmp.i = icmp eq i16 %inc.i, 1024
  br i1 %cmp.i, label %if.then.i, label %if.end31.qedi_get_wqe_idx.exit_crit_edge

if.end31.qedi_get_wqe_idx.exit_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %qedi_get_wqe_idx.exit

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %sq_prod_idx.i, align 4
  br label %qedi_get_wqe_idx.exit

qedi_get_wqe_idx.exit:                            ; preds = %if.then.i, %if.end31.qedi_get_wqe_idx.exit_crit_edge
  %sq = getelementptr inbounds %struct.qedi_endpoint, ptr %7, i32 0, i32 18
  %74 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sq, align 4
  %idxprom = zext i16 %70 to i32
  %arrayidx48 = getelementptr %struct.iscsi_wqe, ptr %75, i32 %idxprom
  %sqe = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 1
  %76 = ptrtoint ptr %sqe to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %arrayidx48, ptr %sqe, align 4
  %77 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 8)
  store i64 0, ptr %arrayidx48, align 4
  %call50 = call i32 @init_initiator_tmf_request_task(ptr noundef nonnull %task_params, ptr noundef nonnull %tmf_pdu_header) #7
  %list_lock = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %list_lock) #7
  %active_cmd_list = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 4, i32 1
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %79, ptr noundef %active_cmd_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %qedi_get_wqe_idx.exit.list_add_tail.exit_crit_edge

qedi_get_wqe_idx.exit.list_add_tail.exit_crit_edge: ; preds = %qedi_get_wqe_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %qedi_get_wqe_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %5, ptr %prev.i, align 4
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %active_cmd_list, ptr %5, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %82 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev3.i.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %5, ptr %79, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %qedi_get_wqe_idx.exit.list_add_tail.exit_crit_edge
  %io_cmd_in_list = getelementptr inbounds %struct.qedi_cmd, ptr %5, i32 0, i32 1
  %84 = ptrtoint ptr %io_cmd_in_list to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %io_cmd_in_list, align 4
  %active_cmd_count = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 6
  %85 = ptrtoint ptr %active_cmd_count to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %active_cmd_count, align 4
  %inc = add i32 %86, 1
  store i32 %inc, ptr %active_cmd_count, align 4
  call void @_raw_spin_unlock(ptr noundef %list_lock) #7
  %87 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ep2, align 4
  %fw_sq_prod_idx.i94 = getelementptr inbounds %struct.qedi_endpoint, ptr %88, i32 0, i32 21
  %89 = ptrtoint ptr %fw_sq_prod_idx.i94 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %fw_sq_prod_idx.i94, align 2
  %sq_prod.i = getelementptr inbounds %struct.qedi_endpoint, ptr %88, i32 0, i32 17, i32 2
  %91 = ptrtoint ptr %sq_prod.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %sq_prod.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  call void @arm_heavy_mb() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  call void @arm_heavy_mb() #7
  %92 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ep2, align 4
  %db_data5.i = getelementptr inbounds %struct.qedi_endpoint, ptr %93, i32 0, i32 17
  %94 = ptrtoint ptr %db_data5.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %db_data5.i, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95) #7
  %p_doorbell.i = getelementptr inbounds %struct.qedi_endpoint, ptr %93, i32 0, i32 16
  %97 = ptrtoint ptr %p_doorbell.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %p_doorbell.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #7, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  call void @arm_heavy_mb() #7
  %99 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %qedi1, align 4
  %101 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ep2, align 4
  %sq_prod_idx.i95 = getelementptr inbounds %struct.qedi_endpoint, ptr %102, i32 0, i32 20
  %103 = ptrtoint ptr %sq_prod_idx.i95 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %sq_prod_idx.i95, align 4
  %conv.i = zext i16 %104 to i32
  %fw_sq_prod_idx11.i = getelementptr inbounds %struct.qedi_endpoint, ptr %102, i32 0, i32 21
  %105 = ptrtoint ptr %fw_sq_prod_idx11.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %fw_sq_prod_idx11.i, align 2
  %conv12.i = zext i16 %106 to i32
  %107 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %iscsi_conn_id, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %100, ptr noundef nonnull @__func__.qedi_ring_doorbell, i32 noundef 939, i32 noundef 128, ptr noundef nonnull @.str.46, i32 noundef %conv.i, i32 noundef %conv12.i, i32 noundef %108) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %task_params) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tmf_pdu_header) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedi_send_iscsi_text(ptr noundef %qedi_conn, ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  %text_request_pdu_header = alloca %struct.iscsi_text_request_hdr, align 4
  %tx_sgl_task_params = alloca %struct.scsi_sgl_task_params, align 4
  %rx_sgl_task_params = alloca %struct.scsi_sgl_task_params, align 4
  %task_params = alloca %struct.iscsi_task_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %text_request_pdu_header) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tx_sgl_task_params) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rx_sgl_task_params) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %task_params) #7
  %qedi1 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 1
  %0 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedi1, align 4
  %req_bd_tbl = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 9
  %2 = ptrtoint ptr %req_bd_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req_bd_tbl, align 4
  %resp_bd_tbl = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 11
  %4 = ptrtoint ptr %resp_bd_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resp_bd_tbl, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %6 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dd_data, align 4
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 4
  %ep3 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 2
  %10 = ptrtoint ptr %ep3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep3, align 4
  %call = tail call i32 @qedi_get_task_idx(ptr noundef %1) #7
  %sext = shl i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %sext)
  %cmp = icmp eq i32 %sext, -65536
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv4 = ashr exact i32 %sext, 16
  %conv = trunc i32 %call to i16
  %tasks = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 41
  %num_tids_per_block.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 41, i32 1
  %12 = ptrtoint ptr %num_tids_per_block.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tids_per_block.i, align 4
  %conv4.frozen = freeze i32 %conv4
  %.frozen = freeze i32 %13
  %div.i = udiv i32 %conv4.frozen, %.frozen
  %arrayidx.i = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 41, i32 2, i32 %div.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %16 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %conv4.frozen, %16
  %17 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tasks, align 4
  %mul.i = mul i32 %18, %rem.i.decomposed
  %add.ptr.i = getelementptr i8, ptr %15, i32 %mul.i
  %19 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 512)
  %task_id = getelementptr inbounds %struct.qedi_cmd, ptr %7, i32 0, i32 10
  %20 = ptrtoint ptr %task_id to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %task_id, align 4
  %21 = getelementptr inbounds i8, ptr %task_params, i32 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 20)
  %23 = call ptr @memset(ptr %text_request_pdu_header, i32 0, i32 48)
  %24 = getelementptr inbounds i8, ptr %tx_sgl_task_params, i32 16
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %24, align 4
  %26 = getelementptr inbounds i8, ptr %rx_sgl_task_params, i32 16
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %26, align 4
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %9, align 4
  %opcode8 = getelementptr inbounds %struct.iscsi_text_request_hdr, ptr %text_request_pdu_header, i32 0, i32 2
  %30 = ptrtoint ptr %opcode8 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %opcode8, align 1
  %flags = getelementptr inbounds %struct.iscsi_text, ptr %9, i32 0, i32 1
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags, align 1
  %flags_attr = getelementptr inbounds %struct.iscsi_text_request_hdr, ptr %text_request_pdu_header, i32 0, i32 1
  %33 = ptrtoint ptr %flags_attr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %flags_attr, align 2
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %34 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %itt, align 4
  tail call void @qedi_update_itt_map(ptr noundef %1, i32 noundef %conv4, i32 noundef %35, ptr noundef %7) #7
  %and = and i32 %call, 65535
  %36 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %itt, align 4
  %and12 = shl i32 %37, 16
  %shl = and i32 %and12, 536805376
  %or = or i32 %shl, %and
  %itt13 = getelementptr inbounds %struct.iscsi_text_request_hdr, ptr %text_request_pdu_header, i32 0, i32 5
  %38 = ptrtoint ptr %itt13 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or, ptr %itt13, align 4
  %ttt = getelementptr inbounds %struct.iscsi_text, ptr %9, i32 0, i32 7
  %39 = ptrtoint ptr %ttt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ttt, align 4
  %ttt14 = getelementptr inbounds %struct.iscsi_text_request_hdr, ptr %text_request_pdu_header, i32 0, i32 6
  %41 = ptrtoint ptr %ttt14 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %ttt14, align 4
  %cmdsn = getelementptr inbounds %struct.iscsi_text, ptr %9, i32 0, i32 8
  %42 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cmdsn, align 4
  %cmd_sn = getelementptr inbounds %struct.iscsi_text_request_hdr, ptr %text_request_pdu_header, i32 0, i32 7
  %44 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %cmd_sn, align 4
  %exp_statsn = getelementptr inbounds %struct.iscsi_text, ptr %9, i32 0, i32 9
  %45 = ptrtoint ptr %exp_statsn to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %exp_statsn, align 4
  %exp_stat_sn = getelementptr inbounds %struct.iscsi_text_request_hdr, ptr %text_request_pdu_header, i32 0, i32 8
  %47 = ptrtoint ptr %exp_stat_sn to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %exp_stat_sn, align 4
  %dlength = getelementptr inbounds %struct.iscsi_text, ptr %9, i32 0, i32 4
  %48 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dlength, align 1
  %conv15 = zext i8 %49 to i32
  %shl16 = shl nuw nsw i32 %conv15, 16
  %arrayidx18 = getelementptr %struct.iscsi_text, ptr %9, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %51 to i32
  %shl20 = shl nuw nsw i32 %conv19, 8
  %or21 = or i32 %shl20, %shl16
  %arrayidx23 = getelementptr %struct.iscsi_text, ptr %9, i32 0, i32 4, i32 2
  %52 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %53 to i32
  %or25 = or i32 %or21, %conv24
  %hdr_second_dword = getelementptr inbounds %struct.iscsi_text_request_hdr, ptr %text_request_pdu_header, i32 0, i32 3
  %54 = ptrtoint ptr %hdr_second_dword to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or25, ptr %hdr_second_dword, align 4
  %55 = ptrtoint ptr %req_bd_tbl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %req_bd_tbl, align 4
  %57 = ptrtoint ptr %tx_sgl_task_params to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %tx_sgl_task_params, align 4
  %req_dma_addr = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 1
  %58 = ptrtoint ptr %req_dma_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %req_dma_addr, align 4
  %sgl_phys_addr = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 1
  %60 = ptrtoint ptr %sgl_phys_addr to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %sgl_phys_addr, align 4
  %hi = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %hi, align 4
  %sge_len = getelementptr inbounds %struct.scsi_sge, ptr %3, i32 0, i32 1
  %62 = ptrtoint ptr %sge_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sge_len, align 4
  %total_buffer_size = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 2
  %64 = ptrtoint ptr %total_buffer_size to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %total_buffer_size, align 4
  %num_sges = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 3
  %65 = ptrtoint ptr %num_sges to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 1, ptr %num_sges, align 4
  %66 = ptrtoint ptr %resp_bd_tbl to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %resp_bd_tbl, align 4
  %68 = ptrtoint ptr %rx_sgl_task_params to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %rx_sgl_task_params, align 4
  %resp_dma_addr = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 6
  %69 = ptrtoint ptr %resp_dma_addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %resp_dma_addr, align 4
  %sgl_phys_addr38 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 1
  %71 = ptrtoint ptr %sgl_phys_addr38 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %sgl_phys_addr38, align 4
  %hi46 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %hi46 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %hi46, align 4
  %sge_len47 = getelementptr inbounds %struct.scsi_sge, ptr %5, i32 0, i32 1
  %73 = ptrtoint ptr %sge_len47 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sge_len47, align 4
  %total_buffer_size48 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 2
  %75 = ptrtoint ptr %total_buffer_size48 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %total_buffer_size48, align 4
  %num_sges49 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 3
  %76 = ptrtoint ptr %num_sges49 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1, ptr %num_sges49, align 4
  %77 = ptrtoint ptr %task_params to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr.i, ptr %task_params, align 4
  %iscsi_conn_id = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 9
  %78 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %iscsi_conn_id, align 4
  %conv50 = trunc i32 %79 to i16
  %conn_icid = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 4
  %80 = ptrtoint ptr %conn_icid to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv50, ptr %conn_icid, align 4
  %itid = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 5
  %81 = ptrtoint ptr %itid to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv, ptr %itid, align 2
  %cq_rss_number = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 6
  %82 = ptrtoint ptr %cq_rss_number to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %cq_rss_number, align 4
  %83 = load i8, ptr %dlength, align 1
  %conv53 = zext i8 %83 to i32
  %shl54 = shl nuw nsw i32 %conv53, 16
  %84 = load i8, ptr %arrayidx18, align 1
  %conv57 = zext i8 %84 to i32
  %shl58 = shl nuw nsw i32 %conv57, 8
  %or59 = or i32 %shl58, %shl54
  %85 = load i8, ptr %arrayidx23, align 1
  %conv62 = zext i8 %85 to i32
  %or63 = or i32 %or59, %conv62
  %tx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %86 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or63, ptr %tx_io_size, align 4
  %87 = load i32, ptr %sge_len47, align 4
  %rx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 3
  %88 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %rx_io_size, align 4
  %89 = ptrtoint ptr %ep3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ep3, align 4
  %sq_prod_idx.i = getelementptr inbounds %struct.qedi_endpoint, ptr %90, i32 0, i32 20
  %91 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %sq_prod_idx.i, align 4
  %inc.i = add i16 %92, 1
  store i16 %inc.i, ptr %sq_prod_idx.i, align 4
  %fw_sq_prod_idx.i = getelementptr inbounds %struct.qedi_endpoint, ptr %90, i32 0, i32 21
  %93 = ptrtoint ptr %fw_sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %fw_sq_prod_idx.i, align 2
  %inc3.i = add i16 %94, 1
  store i16 %inc3.i, ptr %fw_sq_prod_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %inc.i)
  %cmp.i = icmp eq i16 %inc.i, 1024
  br i1 %cmp.i, label %if.then.i, label %if.end.qedi_get_wqe_idx.exit_crit_edge

if.end.qedi_get_wqe_idx.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %qedi_get_wqe_idx.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %sq_prod_idx.i, align 4
  br label %qedi_get_wqe_idx.exit

qedi_get_wqe_idx.exit:                            ; preds = %if.then.i, %if.end.qedi_get_wqe_idx.exit_crit_edge
  %sq = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 18
  %96 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sq, align 4
  %idxprom = zext i16 %92 to i32
  %arrayidx66 = getelementptr %struct.iscsi_wqe, ptr %97, i32 %idxprom
  %sqe = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 1
  %98 = ptrtoint ptr %sqe to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %arrayidx66, ptr %sqe, align 4
  %99 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 8)
  store i64 0, ptr %arrayidx66, align 4
  %call68 = call i32 @init_initiator_text_request_task(ptr noundef nonnull %task_params, ptr noundef nonnull %text_request_pdu_header, ptr noundef nonnull %tx_sgl_task_params, ptr noundef nonnull %rx_sgl_task_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool.not = icmp eq i32 %call68, 0
  br i1 %tobool.not, label %if.end70, label %qedi_get_wqe_idx.exit.cleanup_crit_edge

qedi_get_wqe_idx.exit.cleanup_crit_edge:          ; preds = %qedi_get_wqe_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end70:                                         ; preds = %qedi_get_wqe_idx.exit
  %list_lock = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %list_lock) #7
  %active_cmd_list = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 4, i32 1
  %100 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %7, ptr noundef %101, ptr noundef %active_cmd_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end70.list_add_tail.exit_crit_edge

if.end70.list_add_tail.exit_crit_edge:            ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %7, ptr %prev.i, align 4
  %103 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %active_cmd_list, ptr %7, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %104 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev3.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %7, ptr %101, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end70.list_add_tail.exit_crit_edge
  %io_cmd_in_list = getelementptr inbounds %struct.qedi_cmd, ptr %7, i32 0, i32 1
  %106 = ptrtoint ptr %io_cmd_in_list to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %io_cmd_in_list, align 4
  %active_cmd_count = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 6
  %107 = ptrtoint ptr %active_cmd_count to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %active_cmd_count, align 4
  %inc = add i32 %108, 1
  store i32 %inc, ptr %active_cmd_count, align 4
  call void @_raw_spin_unlock(ptr noundef %list_lock) #7
  %109 = ptrtoint ptr %ep3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ep3, align 4
  %fw_sq_prod_idx.i126 = getelementptr inbounds %struct.qedi_endpoint, ptr %110, i32 0, i32 21
  %111 = ptrtoint ptr %fw_sq_prod_idx.i126 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %fw_sq_prod_idx.i126, align 2
  %sq_prod.i = getelementptr inbounds %struct.qedi_endpoint, ptr %110, i32 0, i32 17, i32 2
  %113 = ptrtoint ptr %sq_prod.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %sq_prod.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  call void @arm_heavy_mb() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  call void @arm_heavy_mb() #7
  %114 = ptrtoint ptr %ep3 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ep3, align 4
  %db_data5.i = getelementptr inbounds %struct.qedi_endpoint, ptr %115, i32 0, i32 17
  %116 = ptrtoint ptr %db_data5.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %db_data5.i, align 4
  %118 = call i32 @llvm.bswap.i32(i32 %117) #7
  %p_doorbell.i = getelementptr inbounds %struct.qedi_endpoint, ptr %115, i32 0, i32 16
  %119 = ptrtoint ptr %p_doorbell.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %p_doorbell.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #7, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  call void @arm_heavy_mb() #7
  %121 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %qedi1, align 4
  %123 = ptrtoint ptr %ep3 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ep3, align 4
  %sq_prod_idx.i127 = getelementptr inbounds %struct.qedi_endpoint, ptr %124, i32 0, i32 20
  %125 = ptrtoint ptr %sq_prod_idx.i127 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %sq_prod_idx.i127, align 4
  %conv.i = zext i16 %126 to i32
  %fw_sq_prod_idx11.i = getelementptr inbounds %struct.qedi_endpoint, ptr %124, i32 0, i32 21
  %127 = ptrtoint ptr %fw_sq_prod_idx11.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %fw_sq_prod_idx11.i, align 2
  %conv12.i = zext i16 %128 to i32
  %129 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %iscsi_conn_id, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %122, ptr noundef nonnull @__func__.qedi_ring_doorbell, i32 noundef 939, i32 noundef 128, ptr noundef nonnull @.str.46, i32 noundef %conv.i, i32 noundef %conv12.i, i32 noundef %130) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %qedi_get_wqe_idx.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ], [ -1, %qedi_get_wqe_idx.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %task_params) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rx_sgl_task_params) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tx_sgl_task_params) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %text_request_pdu_header) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_initiator_text_request_task(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedi_send_iscsi_nopout(ptr noundef %qedi_conn, ptr nocapture noundef readonly %task, ptr nocapture noundef readnone %datap, i32 noundef %data_len, i32 noundef %unsol) local_unnamed_addr #0 align 64 {
entry:
  %nop_out_pdu_header = alloca %struct.iscsi_nop_out_hdr, align 4
  %tx_sgl_task_params = alloca %struct.scsi_sgl_task_params, align 4
  %rx_sgl_task_params = alloca %struct.scsi_sgl_task_params, align 4
  %task_params = alloca %struct.iscsi_task_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %nop_out_pdu_header) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tx_sgl_task_params) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rx_sgl_task_params) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %task_params) #7
  %qedi1 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 1
  %0 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedi1, align 4
  %resp_bd_tbl = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %resp_bd_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resp_bd_tbl, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 4
  %ep2 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 2
  %8 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep2, align 4
  %call = tail call i32 @qedi_get_task_idx(ptr noundef %1) #7
  %conv = trunc i32 %call to i16
  %sext = shl i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %sext)
  %cmp = icmp eq i32 %sext, -65536
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3 = ashr exact i32 %sext, 16
  %tasks = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 41
  %num_tids_per_block.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 41, i32 1
  %10 = ptrtoint ptr %num_tids_per_block.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tids_per_block.i, align 4
  %conv3.frozen = freeze i32 %conv3
  %.frozen = freeze i32 %11
  %div.i = udiv i32 %conv3.frozen, %.frozen
  %arrayidx.i = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 41, i32 2, i32 %div.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %14 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %conv3.frozen, %14
  %15 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tasks, align 4
  %mul.i = mul i32 %16, %rem.i.decomposed
  %add.ptr.i = getelementptr i8, ptr %13, i32 %mul.i
  %17 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 512)
  %task_id = getelementptr inbounds %struct.qedi_cmd, ptr %5, i32 0, i32 10
  %18 = ptrtoint ptr %task_id to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %task_id, align 4
  %19 = call ptr @memset(ptr %task_params, i32 0, i32 24)
  %20 = call ptr @memset(ptr %nop_out_pdu_header, i32 0, i32 48)
  %21 = call ptr @memset(ptr %tx_sgl_task_params, i32 0, i32 20)
  %22 = call ptr @memset(ptr %rx_sgl_task_params, i32 0, i32 20)
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %7, align 4
  %opcode7 = getelementptr inbounds %struct.iscsi_nop_out_hdr, ptr %nop_out_pdu_header, i32 0, i32 2
  %25 = ptrtoint ptr %opcode7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %opcode7, align 1
  %flags_attr = getelementptr inbounds %struct.iscsi_nop_out_hdr, ptr %nop_out_pdu_header, i32 0, i32 1
  %26 = ptrtoint ptr %flags_attr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -128, ptr %flags_attr, align 2
  %lun = getelementptr inbounds %struct.iscsi_nopout, ptr %7, i32 0, i32 5
  %27 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %27)
  %scsi_lun.sroa.0.0.copyload = load i32, ptr %lun, align 4
  %scsi_lun.sroa.5.0.lun.sroa_idx = getelementptr inbounds %struct.iscsi_nopout, ptr %7, i32 0, i32 5, i32 0, i32 4
  %28 = ptrtoint ptr %scsi_lun.sroa.5.0.lun.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %scsi_lun.sroa.5.0.copyload = load i32, ptr %scsi_lun.sroa.5.0.lun.sroa_idx, align 4
  %lun24 = getelementptr inbounds %struct.iscsi_nop_out_hdr, ptr %nop_out_pdu_header, i32 0, i32 4
  %29 = ptrtoint ptr %lun24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %scsi_lun.sroa.0.0.copyload, ptr %lun24, align 4
  %hi = getelementptr inbounds %struct.iscsi_nop_out_hdr, ptr %nop_out_pdu_header, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %scsi_lun.sroa.5.0.copyload, ptr %hi, align 4
  %cmdsn = getelementptr inbounds %struct.iscsi_nopout, ptr %7, i32 0, i32 8
  %31 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cmdsn, align 4
  %cmd_sn = getelementptr inbounds %struct.iscsi_nop_out_hdr, ptr %nop_out_pdu_header, i32 0, i32 7
  %33 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %cmd_sn, align 4
  %exp_statsn = getelementptr inbounds %struct.iscsi_nopout, ptr %7, i32 0, i32 9
  %34 = ptrtoint ptr %exp_statsn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %exp_statsn, align 4
  %exp_stat_sn = getelementptr inbounds %struct.iscsi_nop_out_hdr, ptr %nop_out_pdu_header, i32 0, i32 8
  %36 = ptrtoint ptr %exp_stat_sn to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %exp_stat_sn, align 4
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %37 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %itt, align 4
  tail call void @qedi_update_itt_map(ptr noundef %1, i32 noundef %conv3, i32 noundef %38, ptr noundef %5) #7
  %ttt = getelementptr inbounds %struct.iscsi_nopout, ptr %7, i32 0, i32 7
  %39 = ptrtoint ptr %ttt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ttt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp28.not = icmp eq i32 %40, -1
  br i1 %cmp28.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %itt31 = getelementptr inbounds %struct.iscsi_nopout, ptr %7, i32 0, i32 6
  %41 = ptrtoint ptr %itt31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %itt31, align 4
  %itt32 = getelementptr inbounds %struct.iscsi_nop_out_hdr, ptr %nop_out_pdu_header, i32 0, i32 5
  %43 = ptrtoint ptr %itt32 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %itt32, align 4
  %ttt34 = getelementptr inbounds %struct.iscsi_nop_out_hdr, ptr %nop_out_pdu_header, i32 0, i32 6
  %44 = ptrtoint ptr %ttt34 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %40, ptr %ttt34, align 4
  br label %if.end43

if.else:                                          ; preds = %if.end
  %and36 = and i32 %call, 65535
  %45 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %itt, align 4
  %and38 = shl i32 %46, 16
  %shl = and i32 %and38, 536805376
  %or39 = or i32 %shl, %and36
  %itt40 = getelementptr inbounds %struct.iscsi_nop_out_hdr, ptr %nop_out_pdu_header, i32 0, i32 5
  %47 = ptrtoint ptr %itt40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or39, ptr %itt40, align 4
  %ttt41 = getelementptr inbounds %struct.iscsi_nop_out_hdr, ptr %nop_out_pdu_header, i32 0, i32 6
  %48 = ptrtoint ptr %ttt41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %ttt41, align 4
  %list_lock = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %list_lock) #7
  %active_cmd_list = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %50, ptr noundef %active_cmd_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_add_tail.exit_crit_edge

if.else.list_add_tail.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %5, ptr %prev.i, align 4
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %active_cmd_list, ptr %5, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %5, ptr %50, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.else.list_add_tail.exit_crit_edge
  %io_cmd_in_list = getelementptr inbounds %struct.qedi_cmd, ptr %5, i32 0, i32 1
  %55 = ptrtoint ptr %io_cmd_in_list to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %io_cmd_in_list, align 4
  %active_cmd_count = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 6
  %56 = ptrtoint ptr %active_cmd_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %active_cmd_count, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %active_cmd_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef %list_lock) #7
  br label %if.end43

if.end43:                                         ; preds = %list_add_tail.exit, %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %tobool.not = icmp eq i32 %data_len, 0
  br i1 %tobool.not, label %if.end43.if.end69_crit_edge, label %if.then44

if.end43.if.end69_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then44:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %req_bd_tbl = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 9
  %58 = ptrtoint ptr %req_bd_tbl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %req_bd_tbl, align 4
  %60 = ptrtoint ptr %tx_sgl_task_params to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %tx_sgl_task_params, align 4
  %req_dma_addr = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 1
  %61 = ptrtoint ptr %req_dma_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %req_dma_addr, align 4
  %sgl_phys_addr = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 1
  %63 = ptrtoint ptr %sgl_phys_addr to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %sgl_phys_addr, align 4
  %hi53 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %hi53 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %hi53, align 4
  %total_buffer_size = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 2
  %65 = ptrtoint ptr %total_buffer_size to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %data_len, ptr %total_buffer_size, align 4
  %num_sges = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 3
  %66 = ptrtoint ptr %num_sges to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %num_sges, align 4
  %67 = ptrtoint ptr %resp_bd_tbl to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %resp_bd_tbl, align 4
  %69 = ptrtoint ptr %rx_sgl_task_params to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %rx_sgl_task_params, align 4
  %resp_dma_addr = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 13, i32 6
  %70 = ptrtoint ptr %resp_dma_addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %resp_dma_addr, align 4
  %sgl_phys_addr58 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 1
  %72 = ptrtoint ptr %sgl_phys_addr58 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %sgl_phys_addr58, align 4
  %hi66 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %hi66 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %hi66, align 4
  %sge_len = getelementptr inbounds %struct.scsi_sge, ptr %3, i32 0, i32 1
  %74 = ptrtoint ptr %sge_len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sge_len, align 4
  %total_buffer_size67 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 2
  %76 = ptrtoint ptr %total_buffer_size67 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %total_buffer_size67, align 4
  %num_sges68 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 3
  %77 = ptrtoint ptr %num_sges68 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %num_sges68, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then44, %if.end43.if.end69_crit_edge
  %78 = ptrtoint ptr %task_params to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr.i, ptr %task_params, align 4
  %iscsi_conn_id = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 9
  %79 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %iscsi_conn_id, align 4
  %conv70 = trunc i32 %80 to i16
  %conn_icid = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 4
  %81 = ptrtoint ptr %conn_icid to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv70, ptr %conn_icid, align 4
  %itid = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 5
  %82 = ptrtoint ptr %itid to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv, ptr %itid, align 2
  %cq_rss_number = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 6
  %83 = ptrtoint ptr %cq_rss_number to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %cq_rss_number, align 4
  %tx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %84 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %data_len, ptr %tx_io_size, align 4
  %sge_len71 = getelementptr inbounds %struct.scsi_sge, ptr %3, i32 0, i32 1
  %85 = ptrtoint ptr %sge_len71 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sge_len71, align 4
  %rx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 3
  %87 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %rx_io_size, align 4
  %88 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ep2, align 4
  %sq_prod_idx.i = getelementptr inbounds %struct.qedi_endpoint, ptr %89, i32 0, i32 20
  %90 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %sq_prod_idx.i, align 4
  %inc.i = add i16 %91, 1
  store i16 %inc.i, ptr %sq_prod_idx.i, align 4
  %fw_sq_prod_idx.i = getelementptr inbounds %struct.qedi_endpoint, ptr %89, i32 0, i32 21
  %92 = ptrtoint ptr %fw_sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %fw_sq_prod_idx.i, align 2
  %inc3.i = add i16 %93, 1
  store i16 %inc3.i, ptr %fw_sq_prod_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %inc.i)
  %cmp.i = icmp eq i16 %inc.i, 1024
  br i1 %cmp.i, label %if.then.i, label %if.end69.qedi_get_wqe_idx.exit_crit_edge

if.end69.qedi_get_wqe_idx.exit_crit_edge:         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %qedi_get_wqe_idx.exit

if.then.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %sq_prod_idx.i, align 4
  br label %qedi_get_wqe_idx.exit

qedi_get_wqe_idx.exit:                            ; preds = %if.then.i, %if.end69.qedi_get_wqe_idx.exit_crit_edge
  %sq = getelementptr inbounds %struct.qedi_endpoint, ptr %9, i32 0, i32 18
  %95 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sq, align 4
  %idxprom = zext i16 %91 to i32
  %arrayidx73 = getelementptr %struct.iscsi_wqe, ptr %96, i32 %idxprom
  %sqe = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 1
  %97 = ptrtoint ptr %sqe to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %arrayidx73, ptr %sqe, align 4
  %98 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 8)
  store i64 0, ptr %arrayidx73, align 4
  %call75 = call i32 @init_initiator_nop_out_task(ptr noundef nonnull %task_params, ptr noundef nonnull %nop_out_pdu_header, ptr noundef nonnull %tx_sgl_task_params, ptr noundef nonnull %rx_sgl_task_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %qedi_get_wqe_idx.exit.cleanup_crit_edge

qedi_get_wqe_idx.exit.cleanup_crit_edge:          ; preds = %qedi_get_wqe_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end78:                                         ; preds = %qedi_get_wqe_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ep2, align 4
  %fw_sq_prod_idx.i130 = getelementptr inbounds %struct.qedi_endpoint, ptr %100, i32 0, i32 21
  %101 = ptrtoint ptr %fw_sq_prod_idx.i130 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %fw_sq_prod_idx.i130, align 2
  %sq_prod.i = getelementptr inbounds %struct.qedi_endpoint, ptr %100, i32 0, i32 17, i32 2
  %103 = ptrtoint ptr %sq_prod.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %sq_prod.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  call void @arm_heavy_mb() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  call void @arm_heavy_mb() #7
  %104 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ep2, align 4
  %db_data5.i = getelementptr inbounds %struct.qedi_endpoint, ptr %105, i32 0, i32 17
  %106 = ptrtoint ptr %db_data5.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %db_data5.i, align 4
  %108 = call i32 @llvm.bswap.i32(i32 %107) #7
  %p_doorbell.i = getelementptr inbounds %struct.qedi_endpoint, ptr %105, i32 0, i32 16
  %109 = ptrtoint ptr %p_doorbell.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %p_doorbell.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #7, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  call void @arm_heavy_mb() #7
  %111 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %qedi1, align 4
  %113 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ep2, align 4
  %sq_prod_idx.i131 = getelementptr inbounds %struct.qedi_endpoint, ptr %114, i32 0, i32 20
  %115 = ptrtoint ptr %sq_prod_idx.i131 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %sq_prod_idx.i131, align 4
  %conv.i = zext i16 %116 to i32
  %fw_sq_prod_idx11.i = getelementptr inbounds %struct.qedi_endpoint, ptr %114, i32 0, i32 21
  %117 = ptrtoint ptr %fw_sq_prod_idx11.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %fw_sq_prod_idx11.i, align 2
  %conv12.i = zext i16 %118 to i32
  %119 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %iscsi_conn_id, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %112, ptr noundef nonnull @__func__.qedi_ring_doorbell, i32 noundef 939, i32 noundef 128, ptr noundef nonnull @.str.46, i32 noundef %conv.i, i32 noundef %conv12.i, i32 noundef %120) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %qedi_get_wqe_idx.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end78 ], [ -12, %entry.cleanup_crit_edge ], [ -1, %qedi_get_wqe_idx.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %task_params) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rx_sgl_task_params) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tx_sgl_task_params) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %nop_out_pdu_header) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_initiator_nop_out_task(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_trace_io(ptr noundef %qedi, ptr nocapture noundef readonly %task, i16 noundef zeroext %tid, i8 noundef signext %direction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 12
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %sc = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 11
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  %io_trace_lock = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 57
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_trace_lock) #7
  %io_trace_idx = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 58
  %6 = ptrtoint ptr %io_trace_idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %io_trace_idx, align 8
  %idxprom = zext i16 %7 to i32
  %arrayidx = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %direction, ptr %arrayidx, align 4
  %task_id = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 1
  %9 = ptrtoint ptr %task_id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %tid, ptr %task_id, align 2
  %iscsi_conn_id = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iscsi_conn_id, align 4
  %cid = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 2
  %12 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cid, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %lun, align 8
  %conv7 = trunc i64 %16 to i32
  %lun8 = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 4
  %17 = ptrtoint ptr %lun8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv7, ptr %lun8, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 16
  %18 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmnd, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %op = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 5
  %22 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %op, align 4
  %23 = load ptr, ptr %cmnd, align 4
  %arrayidx11 = getelementptr i8, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx11, align 1
  %lba = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 6
  %26 = ptrtoint ptr %lba to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %lba, align 1
  %27 = load ptr, ptr %cmnd, align 4
  %arrayidx14 = getelementptr i8, ptr %27, i32 3
  %28 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 6, i32 1
  %30 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx16, align 1
  %31 = load ptr, ptr %cmnd, align 4
  %arrayidx18 = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx18, align 1
  %arrayidx20 = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 6, i32 2
  %34 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx20, align 1
  %35 = load ptr, ptr %cmnd, align 4
  %arrayidx22 = getelementptr i8, ptr %35, i32 5
  %36 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx22, align 1
  %arrayidx24 = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 6, i32 3
  %38 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx24, align 1
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 17, i32 1
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i, align 4
  %bufflen = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 7
  %41 = ptrtoint ptr %bufflen to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %bufflen, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 17, i32 0, i32 1
  %42 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nents.i, align 4
  %sg_count = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 8
  %44 = ptrtoint ptr %sg_count to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sg_count, align 4
  %fast_sgls = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 64
  %45 = ptrtoint ptr %fast_sgls to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fast_sgls, align 8
  %conv27 = trunc i32 %46 to i8
  %fast_sgs = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 9
  %47 = ptrtoint ptr %fast_sgs to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv27, ptr %fast_sgs, align 4
  %cached_sgls = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 60
  %48 = ptrtoint ptr %cached_sgls to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cached_sgls, align 8
  %conv28 = trunc i32 %49 to i8
  %cached_sgs = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 11
  %50 = ptrtoint ptr %cached_sgs to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv28, ptr %cached_sgs, align 2
  %slow_sgls = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 62
  %51 = ptrtoint ptr %slow_sgls to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %slow_sgls, align 8
  %conv29 = trunc i32 %52 to i8
  %slow_sgs = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 10
  %53 = ptrtoint ptr %slow_sgs to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv29, ptr %slow_sgs, align 1
  %use_cached_sge = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 61
  %54 = ptrtoint ptr %use_cached_sge to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %use_cached_sge, align 4, !range !157
  %cached_sge = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 19
  %56 = ptrtoint ptr %cached_sge to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %cached_sge, align 4
  %use_slow_sge = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 63
  %57 = ptrtoint ptr %use_slow_sge to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %use_slow_sge, align 4, !range !157
  %slow_sge = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 20
  %59 = ptrtoint ptr %slow_sge to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %slow_sge, align 1
  %use_fast_sge = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 65
  %60 = ptrtoint ptr %use_fast_sge to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %use_fast_sge, align 4, !range !157
  %fast_sge = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 21
  %62 = ptrtoint ptr %fast_sge to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %fast_sge, align 2
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 24
  %63 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %result, align 4
  %result34 = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 12
  %65 = ptrtoint ptr %result34 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %result34, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %jiffies = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 13
  %67 = ptrtoint ptr %jiffies to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %jiffies, align 4
  %68 = tail call i32 @llvm.read_register.i32(metadata !146) #7
  %and.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cpu, align 4
  %blk_req_cpu = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 15
  %72 = ptrtoint ptr %blk_req_cpu to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %blk_req_cpu, align 4
  %73 = zext i8 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %direction, label %entry.if.end57_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then45
  ]

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cpu, align 4
  %num_queues = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 33
  %76 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %num_queues, align 8
  %conv41 = zext i8 %77 to i32
  %rem = urem i32 %75, %conv41
  %req_cpu = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 16
  %78 = ptrtoint ptr %req_cpu to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %rem, ptr %req_cpu, align 4
  %intr_cpu = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 17
  %79 = ptrtoint ptr %intr_cpu to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %intr_cpu, align 4
  br label %if.end57.sink.split

if.then45:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cpu, align 4
  %num_queues48 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 33
  %82 = ptrtoint ptr %num_queues48 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %num_queues48, align 8
  %conv49 = zext i8 %83 to i32
  %rem50 = urem i32 %81, %conv49
  %req_cpu51 = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 16
  %84 = ptrtoint ptr %req_cpu51 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %rem50, ptr %req_cpu51, align 4
  %intr_cpu52 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 59
  %85 = ptrtoint ptr %intr_cpu52 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %intr_cpu52, align 4
  %intr_cpu53 = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 17
  %87 = ptrtoint ptr %intr_cpu53 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %intr_cpu53, align 4
  %88 = load i32, ptr %cpu, align 4
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %if.then45, %if.then
  %.sink = phi i32 [ %88, %if.then45 ], [ 0, %if.then ]
  %blk_rsp_cpu56 = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 56, i32 %idxprom, i32 18
  %89 = ptrtoint ptr %blk_rsp_cpu56 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %.sink, ptr %blk_rsp_cpu56, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %entry.if.end57_crit_edge
  %90 = ptrtoint ptr %io_trace_idx to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %io_trace_idx, align 8
  %inc = add i16 %91, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %inc)
  %cmp61 = icmp eq i16 %inc, 2048
  %spec.select = select i1 %cmp61, i16 0, i16 %inc
  %92 = ptrtoint ptr %io_trace_idx to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %spec.select, ptr %io_trace_idx, align 8
  %93 = ptrtoint ptr %use_cached_sge to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %use_cached_sge, align 4
  %94 = ptrtoint ptr %use_slow_sge to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %use_slow_sge, align 4
  %95 = ptrtoint ptr %use_fast_sge to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %use_fast_sge, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_trace_lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedi_iscsi_send_ioreq(ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  %cmd_pdu_header = alloca %struct.iscsi_cmd_hdr, align 4
  %tx_sgl_task_params = alloca %struct.scsi_sgl_task_params, align 4
  %rx_sgl_task_params = alloca %struct.scsi_sgl_task_params, align 4
  %task_params = alloca %struct.iscsi_task_params, align 4
  %conn_params = alloca %struct.iscsi_conn_params, align 4
  %cmd_params = alloca %struct.scsi_initiator_cmd_params, align 4
  %scsi_lun = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 12
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  %session2 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %session2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %session2, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %parent = getelementptr inbounds %struct.iscsi_cls_session, ptr %5, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %7, %entry ], [ %9, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 1
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dd_data, align 4
  %dd_data4 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %12 = ptrtoint ptr %dd_data4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dd_data4, align 4
  %sc5 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 11
  %14 = ptrtoint ptr %sc5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc5, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd_pdu_header) #7
  %16 = call ptr @memset(ptr %cmd_pdu_header, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tx_sgl_task_params) #7
  %17 = call ptr @memset(ptr %tx_sgl_task_params, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rx_sgl_task_params) #7
  %18 = call ptr @memset(ptr %rx_sgl_task_params, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %task_params) #7
  %19 = call ptr @memset(ptr %task_params, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %conn_params) #7
  %20 = call ptr @memset(ptr %conn_params, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd_params) #7
  %21 = getelementptr inbounds %struct.scsi_initiator_cmd_params, ptr %cmd_params, i32 0, i32 1
  %22 = getelementptr inbounds %struct.scsi_initiator_cmd_params, ptr %cmd_params, i32 0, i32 1, i32 1
  %23 = call ptr @memset(ptr %cmd_params, i32 255, i32 24)
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scsi_lun) #7
  %26 = ptrtoint ptr %scsi_lun to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %scsi_lun, align 4, !annotation !166
  %27 = getelementptr inbounds [2 x i32], ptr %scsi_lun, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %27, align 4, !annotation !166
  %ep7 = getelementptr inbounds %struct.qedi_conn, ptr %11, i32 0, i32 2
  %29 = ptrtoint ptr %ep7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ep7, align 4
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %11, align 4
  %dd_data9 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %dd_data9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dd_data9, align 8
  %scsi_cmd.i = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 4
  %35 = ptrtoint ptr %scsi_cmd.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %scsi_cmd.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %36, i32 0, i32 17, i32 0, i32 1
  %37 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i280 = icmp eq i32 %38, 0
  br i1 %tobool.not.i280, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %dev_to_shost.exit
  %conn.i = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 3
  %39 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %conn.i, align 4
  %qedi.i = getelementptr inbounds %struct.qedi_conn, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %qedi.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %qedi.i, align 4
  %io_tbl.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 6
  %43 = ptrtoint ptr %io_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_tbl.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %38)
  %cmp.i.i = icmp ugt i32 %38, 255
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.if.end.i.i_crit_edge, !prof !158

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1791, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.if.end.i.i_crit_edge
  %pdev.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %42, i32 0, i32 2
  %45 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %36, i32 0, i32 17
  %47 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sdb.i.i.i, align 4
  %49 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nents.i.i, align 4
  %sc_data_direction.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %36, i32 0, i32 15
  %51 = ptrtoint ptr %sc_data_direction.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sc_data_direction.i.i, align 4
  %call21.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev.i.i, ptr noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef 0) #7
  %53 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sdb.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i.i)
  %cmp23.i.i = icmp eq i32 %call21.i.i, 1
  br i1 %cmp23.i.i, label %land.lhs.true.i.i, label %if.end34.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %56)
  %cmp24.i.i = icmp ult i32 %56, 65536
  br i1 %cmp24.i.i, label %qedi_map_scsi_sg.exit.thread.i, label %land.lhs.true.i.i.for.body.lr.ph.i.i_crit_edge

land.lhs.true.i.i.for.body.lr.ph.i.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i.i

qedi_map_scsi_sg.exit.thread.i:                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %54, i32 0, i32 3
  %57 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma_address.i.i, align 4
  %conv.i.i = zext i32 %58 to i64
  %59 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %44, align 4
  %hi.i.i = getelementptr inbounds %struct.regpair, ptr %44, i32 0, i32 1
  %60 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %hi.i.i, align 4
  %sge_len.i.i = getelementptr inbounds %struct.scsi_sge, ptr %44, i32 0, i32 1
  %61 = ptrtoint ptr %sge_len.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %56, ptr %sge_len.i.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %42, ptr noundef nonnull @__func__.qedi_map_scsi_sg, i32 noundef 1811, i32 noundef 1024, ptr noundef nonnull @.str.55, i32 noundef 1, i64 noundef %conv.i.i, i32 noundef %56) #7
  br label %if.end6.i

if.end34.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %cmp36235.i.i = icmp sgt i32 %call21.i.i, 0
  br i1 %cmp36235.i.i, label %if.end34.i.i.for.body.lr.ph.i.i_crit_edge, label %if.end34.i.i.for.end.i.i_crit_edge

if.end34.i.i.for.end.i.i_crit_edge:               ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

if.end34.i.i.for.body.lr.ph.i.i_crit_edge:        ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end34.i.i.for.body.lr.ph.i.i_crit_edge, %land.lhs.true.i.i.for.body.lr.ph.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i.i)
  %cmp45.i.i = icmp ne i32 %call21.i.i, 1
  %use_slowpath.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 16
  %sub.i.i = add nsw i32 %call21.i.i, -1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end95.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0240.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc98.i.i, %if.end95.i.i.for.body.i.i_crit_edge ]
  %bd_count.0238.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add97.i.i, %if.end95.i.i.for.body.i.i_crit_edge ]
  %byte_count.0237.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add96.i.i, %if.end95.i.i.for.body.i.i_crit_edge ]
  %sg.0236.i.i = phi ptr [ %54, %for.body.lr.ph.i.i ], [ %call99.i.i, %if.end95.i.i.for.body.i.i_crit_edge ]
  %dma_length38.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0236.i.i, i32 0, i32 4
  %62 = ptrtoint ptr %dma_length38.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_length38.i.i, align 4
  %dma_address39.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0236.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %dma_address39.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_address39.i.i, align 4
  %conv40.i.i = zext i32 %65 to i64
  %conv41234.i.i = zext i32 %63 to i64
  %add.i.i = add nuw nsw i64 %conv40.i.i, %conv41234.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0240.i.i)
  %cmp42.i.i = icmp eq i32 %i.0240.i.i, 0
  %or.cond.i.i = select i1 %cmp42.i.i, i1 %cmp45.i.i, i1 false
  %or.cond.not.i.i = xor i1 %or.cond.i.i, true
  %rem.i.i = and i64 %add.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem.i.i)
  %tobool48.not.i.i = icmp eq i64 %rem.i.i, 0
  %or.cond223.i.i = select i1 %or.cond.not.i.i, i1 true, i1 %tobool48.not.i.i
  br i1 %or.cond223.i.i, label %if.else.i.i, label %for.body.i.i.if.end76.sink.split.i.i_crit_edge

for.body.i.i.if.end76.sink.split.i.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.sink.split.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0240.i.i, i32 %sub.i.i)
  %cmp50.i.i = icmp eq i32 %i.0240.i.i, %sub.i.i
  %or.cond224.i.i = and i1 %cmp45.i.i, %cmp50.i.i
  %or.cond224.not.i.i = xor i1 %or.cond224.i.i, true
  %rem56.i.i = and i64 %conv40.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem56.i.i)
  %tobool57.not.i.i = icmp eq i64 %rem56.i.i, 0
  %or.cond225.i.i = select i1 %or.cond224.not.i.i, i1 true, i1 %tobool57.not.i.i
  br i1 %or.cond225.i.i, label %if.else60.i.i, label %if.else.i.i.if.end76.sink.split.i.i_crit_edge

if.else.i.i.if.end76.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.sink.split.i.i

if.else60.i.i:                                    ; preds = %if.else.i.i
  %or.cond226.i.i = select i1 %cmp42.i.i, i1 true, i1 %cmp50.i.i
  %or.cond227.i.i = select i1 %tobool57.not.i.i, i1 %tobool48.not.i.i, i1 false
  %or.cond233.i.i = select i1 %or.cond226.i.i, i1 true, i1 %or.cond227.i.i
  br i1 %or.cond233.i.i, label %if.else60.i.i.if.end76.i.i_crit_edge, label %if.else60.i.i.if.end76.sink.split.i.i_crit_edge

if.else60.i.i.if.end76.sink.split.i.i_crit_edge:  ; preds = %if.else60.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.sink.split.i.i

if.else60.i.i.if.end76.i.i_crit_edge:             ; preds = %if.else60.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.i.i

if.end76.sink.split.i.i:                          ; preds = %if.else60.i.i.if.end76.sink.split.i.i_crit_edge, %if.else.i.i.if.end76.sink.split.i.i_crit_edge, %for.body.i.i.if.end76.sink.split.i.i_crit_edge
  %66 = ptrtoint ptr %use_slowpath.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %use_slowpath.i.i, align 4
  br label %if.end76.i.i

if.end76.i.i:                                     ; preds = %if.end76.sink.split.i.i, %if.else60.i.i.if.end76.i.i_crit_edge
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %42, ptr noundef nonnull @__func__.qedi_map_scsi_sg, i32 noundef 1846, i32 noundef 1024, ptr noundef nonnull @.str.56, i32 noundef %i.0240.i.i, i32 noundef %63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %63)
  %cmp78.i.i = icmp sgt i32 %63, 4096
  br i1 %cmp78.i.i, label %while.body.lr.ph.i.i.i, label %if.else82.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end76.i.i
  %67 = ptrtoint ptr %io_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io_tbl.i.i, align 4
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %sg_frags.048.i.i.i = phi i32 [ 0, %while.body.lr.ph.i.i.i ], [ %inc.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %addr.addr.047.i.i.i = phi i64 [ %conv40.i.i, %while.body.lr.ph.i.i.i ], [ %add20.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %sg_len.addr.046.i.i.i = phi i32 [ %63, %while.body.lr.ph.i.i.i ], [ %sub21.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %rem.i.i.i = and i64 %addr.addr.047.i.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem.i.i.i)
  %tobool1.not.i.i.i = icmp eq i64 %rem.i.i.i, 0
  %69 = trunc i64 %rem.i.i.i to i32
  %conv.i.i.i = sub nuw nsw i32 4096, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sg_len.addr.046.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %sg_len.addr.046.i.i.i, 4096
  %rem4.i.i.i = srem i32 %sg_len.addr.046.i.i.i, 4096
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %rem4.i.i.i
  %frag_size.0.i.i.i = select i1 %tobool1.not.i.i.i, i32 %spec.select.i.i.i, i32 %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_size.0.i.i.i)
  %cmp5.i.i.i = icmp eq i32 %frag_size.0.i.i.i, 0
  %spec.store.select.i.i.i = select i1 %cmp5.i.i.i, i32 4096, i32 %frag_size.0.i.i.i
  %conv9.i.i.i = trunc i64 %addr.addr.047.i.i.i to i32
  %add.i.i.i = add i32 %sg_frags.048.i.i.i, %bd_count.0238.i.i
  %arrayidx.i.i.i = getelementptr %struct.scsi_sge, ptr %68, i32 %add.i.i.i
  %70 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv9.i.i.i, ptr %arrayidx.i.i.i, align 4
  %shr.i.i.i = lshr i64 %addr.addr.047.i.i.i, 32
  %conv10.i.i.i = trunc i64 %shr.i.i.i to i32
  %hi.i.i.i = getelementptr inbounds %struct.regpair, ptr %arrayidx.i.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %hi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv10.i.i.i, ptr %hi.i.i.i, align 4
  %conv15.i.i.i = and i32 %spec.store.select.i.i.i, 65535
  %sge_len.i.i.i = getelementptr %struct.scsi_sge, ptr %68, i32 %add.i.i.i, i32 1
  %72 = ptrtoint ptr %sge_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv15.i.i.i, ptr %sge_len.i.i.i, align 4
  %73 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %conn.i, align 4
  %qedi.i.i.i = getelementptr inbounds %struct.qedi_conn, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %qedi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %qedi.i.i.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %76, ptr noundef nonnull @__func__.qedi_split_bd, i32 noundef 1769, i32 noundef 1024, ptr noundef nonnull @.str.59, i32 noundef %add.i.i.i, i64 noundef %addr.addr.047.i.i.i, i32 noundef %spec.store.select.i.i.i) #7
  %conv19.i.i.i = sext i32 %spec.store.select.i.i.i to i64
  %add20.i.i.i = add i64 %addr.addr.047.i.i.i, %conv19.i.i.i
  %inc.i.i.i = add i32 %sg_frags.048.i.i.i, 1
  %sub21.i.i.i = sub i32 %sg_len.addr.046.i.i.i, %spec.store.select.i.i.i
  %tobool.not.i.i.i = icmp eq i32 %sub21.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.if.end95.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

while.body.i.i.i.if.end95.i.i_crit_edge:          ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i.i

if.else82.i.i:                                    ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx85.i.i = getelementptr %struct.scsi_sge, ptr %44, i32 %bd_count.0238.i.i
  %77 = ptrtoint ptr %arrayidx85.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %65, ptr %arrayidx85.i.i, align 4
  %hi92.i.i = getelementptr inbounds %struct.regpair, ptr %arrayidx85.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %hi92.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %hi92.i.i, align 4
  %sge_len94.i.i = getelementptr %struct.scsi_sge, ptr %44, i32 %bd_count.0238.i.i, i32 1
  %79 = ptrtoint ptr %sge_len94.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %63, ptr %sge_len94.i.i, align 4
  br label %if.end95.i.i

if.end95.i.i:                                     ; preds = %if.else82.i.i, %while.body.i.i.i.if.end95.i.i_crit_edge
  %sg_frags.0.i.i = phi i32 [ 1, %if.else82.i.i ], [ %inc.i.i.i, %while.body.i.i.i.if.end95.i.i_crit_edge ]
  %add96.i.i = add i32 %63, %byte_count.0237.i.i
  %add97.i.i = add i32 %sg_frags.0.i.i, %bd_count.0238.i.i
  %inc98.i.i = add nuw nsw i32 %i.0240.i.i, 1
  %call99.i.i = tail call ptr @sg_next(ptr noundef %sg.0236.i.i) #7
  %exitcond.not.i.i = icmp eq i32 %inc98.i.i, %call21.i.i
  br i1 %exitcond.not.i.i, label %if.end95.i.i.for.end.i.i_crit_edge, label %if.end95.i.i.for.body.i.i_crit_edge

if.end95.i.i.for.body.i.i_crit_edge:              ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end95.i.i.for.end.i.i_crit_edge:               ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end95.i.i.for.end.i.i_crit_edge, %if.end34.i.i.for.end.i.i_crit_edge
  %byte_count.0.lcssa.i.i = phi i32 [ 0, %if.end34.i.i.for.end.i.i_crit_edge ], [ %add96.i.i, %if.end95.i.i.for.end.i.i_crit_edge ]
  %bd_count.0.lcssa.i.i = phi i32 [ 0, %if.end34.i.i.for.end.i.i_crit_edge ], [ %add97.i.i, %if.end95.i.i.for.end.i.i_crit_edge ]
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %36, i32 0, i32 17, i32 1
  %80 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %byte_count.0.lcssa.i.i, i32 %81)
  %cmp101.not.i.i = icmp eq i32 %byte_count.0.lcssa.i.i, %81
  br i1 %cmp101.not.i.i, label %if.else106.i.i, label %if.then103.i.i

if.then103.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %42, ptr noundef nonnull @__func__.qedi_map_scsi_sg, i32 noundef 1863, ptr noundef nonnull @.str.57, i32 noundef %byte_count.0.lcssa.i.i, i32 noundef %81) #7
  br label %if.end108.i.i

if.else106.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %42, ptr noundef nonnull @__func__.qedi_map_scsi_sg, i32 noundef 1866, i32 noundef 1024, ptr noundef nonnull @.str.58, i32 noundef %byte_count.0.lcssa.i.i) #7
  br label %if.end108.i.i

if.end108.i.i:                                    ; preds = %if.else106.i.i, %if.then103.i.i
  %82 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %byte_count.0.lcssa.i.i, i32 %83)
  %cmp111.not.i.i = icmp eq i32 %byte_count.0.lcssa.i.i, %83
  br i1 %cmp111.not.i.i, label %if.end108.i.i.qedi_map_scsi_sg.exit.i_crit_edge, label %do.end128.i.i, !prof !156

if.end108.i.i.qedi_map_scsi_sg.exit.i_crit_edge:  ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qedi_map_scsi_sg.exit.i

do.end128.i.i:                                    ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1868, i32 noundef 9, ptr noundef null) #7
  br label %qedi_map_scsi_sg.exit.i

qedi_map_scsi_sg.exit.i:                          ; preds = %do.end128.i.i, %if.end108.i.i.qedi_map_scsi_sg.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bd_count.0.lcssa.i.i)
  %cmp.i = icmp eq i32 %bd_count.0.lcssa.i.i, 0
  br i1 %cmp.i, label %qedi_map_scsi_sg.exit.i.qedi_iscsi_map_sg_list.exit_crit_edge, label %qedi_map_scsi_sg.exit.i.if.end6.i_crit_edge

qedi_map_scsi_sg.exit.i.if.end6.i_crit_edge:      ; preds = %qedi_map_scsi_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

qedi_map_scsi_sg.exit.i.qedi_iscsi_map_sg_list.exit_crit_edge: ; preds = %qedi_map_scsi_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qedi_iscsi_map_sg_list.exit

if.else.i:                                        ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #9
  %io_tbl.i = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 6
  %84 = ptrtoint ptr %io_tbl.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %io_tbl.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %85, align 4
  %hi.i = getelementptr inbounds %struct.regpair, ptr %85, i32 0, i32 1
  %87 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %hi.i, align 4
  %sge_len.i = getelementptr inbounds %struct.scsi_sge, ptr %85, i32 0, i32 1
  %88 = ptrtoint ptr %sge_len.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %sge_len.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %qedi_map_scsi_sg.exit.i.if.end6.i_crit_edge, %qedi_map_scsi_sg.exit.thread.i
  %bd_count.0.i = phi i32 [ %bd_count.0.lcssa.i.i, %qedi_map_scsi_sg.exit.i.if.end6.i_crit_edge ], [ 0, %if.else.i ], [ 1, %qedi_map_scsi_sg.exit.thread.i ]
  %conv.i = trunc i32 %bd_count.0.i to i16
  %sge_valid.i = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 6, i32 2
  %89 = ptrtoint ptr %sge_valid.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i, ptr %sge_valid.i, align 4
  br label %qedi_iscsi_map_sg_list.exit

qedi_iscsi_map_sg_list.exit:                      ; preds = %if.end6.i, %qedi_map_scsi_sg.exit.i.qedi_iscsi_map_sg_list.exit_crit_edge
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %15, i32 0, i32 1
  %90 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %91, i32 0, i32 18
  %92 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %lun, align 8
  call void @int_to_scsilun(i64 noundef %93, ptr noundef nonnull %scsi_lun) #7
  %call10 = call i32 @qedi_get_task_idx(ptr noundef %add.ptr) #7
  %conv = trunc i32 %call10 to i16
  %sext = shl i32 %call10, 16
  %conv11 = ashr exact i32 %sext, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %sext)
  %cmp = icmp eq i32 %sext, -65536
  br i1 %cmp, label %qedi_iscsi_map_sg_list.exit.cleanup_crit_edge, label %if.end

qedi_iscsi_map_sg_list.exit.cleanup_crit_edge:    ; preds = %qedi_iscsi_map_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %qedi_iscsi_map_sg_list.exit
  %tasks = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 2, i32 5, i32 5, i32 3
  %num_tids_per_block.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 2, i32 5, i32 5, i32 6
  %94 = ptrtoint ptr %num_tids_per_block.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_tids_per_block.i, align 4
  %conv11.frozen = freeze i32 %conv11
  %.frozen = freeze i32 %95
  %div.i = udiv i32 %conv11.frozen, %.frozen
  %arrayidx.i = getelementptr %struct.qed_iscsi_tid, ptr %tasks, i32 0, i32 2, i32 %div.i
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i, align 4
  %98 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %conv11.frozen, %98
  %99 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tasks, align 4
  %mul.i = mul i32 %100, %rem.i.decomposed
  %add.ptr.i281 = getelementptr i8, ptr %97, i32 %mul.i
  %101 = call ptr @memset(ptr %add.ptr.i281, i32 0, i32 512)
  %task_id = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 10
  %102 = ptrtoint ptr %task_id to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv, ptr %task_id, align 4
  %103 = call ptr @memset(ptr %task_params, i32 0, i32 24)
  %104 = call ptr @memset(ptr %cmd_pdu_header, i32 0, i32 48)
  %105 = call ptr @memset(ptr %tx_sgl_task_params, i32 0, i32 20)
  %106 = call ptr @memset(ptr %rx_sgl_task_params, i32 0, i32 20)
  %107 = call ptr @memset(ptr %conn_params, i32 0, i32 16)
  %108 = call ptr @memset(ptr %cmd_params, i32 0, i32 24)
  %109 = call i32 @llvm.read_register.i32(metadata !146) #7
  %and.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cpu, align 4
  %num_queues = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 2, i32 3, i32 0, i32 0, i32 4, i32 1
  %113 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %num_queues, align 8
  %conv16 = zext i8 %114 to i32
  %rem = urem i32 %112, %conv16
  %flags_attr = getelementptr inbounds %struct.iscsi_cmd_hdr, ptr %cmd_pdu_header, i32 0, i32 1
  %115 = ptrtoint ptr %flags_attr to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %flags_attr, align 2
  %cdb = getelementptr inbounds %struct.iscsi_scsi_req, ptr %25, i32 0, i32 10
  %116 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %cdb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp24.not = icmp eq i8 %117, 0
  br i1 %cmp24.not, label %if.end.if.end53_crit_edge, label %if.then26

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %15, i32 0, i32 15
  %118 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %119)
  %cmp27 = icmp eq i32 %119, 1
  %. = select i1 %cmp27, i8 33, i8 65
  %not.cmp27 = xor i1 %cmp27, true
  %120 = ptrtoint ptr %flags_attr to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %., ptr %flags_attr, align 2
  br label %if.end53

if.end53:                                         ; preds = %if.then26, %if.end.if.end53_crit_edge
  %cmp79 = phi i1 [ false, %if.end.if.end53_crit_edge ], [ %cmp27, %if.then26 ]
  %cmp95 = phi i1 [ false, %if.end.if.end53_crit_edge ], [ %not.cmp27, %if.then26 ]
  %121 = ptrtoint ptr %scsi_lun to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %scsi_lun, align 4
  %lun55 = getelementptr inbounds %struct.iscsi_cmd_hdr, ptr %cmd_pdu_header, i32 0, i32 4
  %123 = ptrtoint ptr %lun55 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %lun55, align 4
  %124 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %27, align 4
  %hi = getelementptr inbounds %struct.iscsi_cmd_hdr, ptr %cmd_pdu_header, i32 0, i32 4, i32 1
  %126 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %hi, align 4
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %127 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %itt, align 4
  call void @qedi_update_itt_map(ptr noundef %add.ptr, i32 noundef %conv11, i32 noundef %128, ptr noundef %13) #7
  %and60 = and i32 %call10, 65535
  %129 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %itt, align 4
  %and62 = shl i32 %130, 16
  %shl = and i32 %and62, 536805376
  %or63 = or i32 %shl, %and60
  %itt64 = getelementptr inbounds %struct.iscsi_cmd_hdr, ptr %cmd_pdu_header, i32 0, i32 5
  %131 = ptrtoint ptr %itt64 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %or63, ptr %itt64, align 4
  %data_length = getelementptr inbounds %struct.iscsi_scsi_req, ptr %25, i32 0, i32 7
  %132 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %data_length, align 4
  %expected_transfer_length = getelementptr inbounds %struct.iscsi_cmd_hdr, ptr %cmd_pdu_header, i32 0, i32 6
  %134 = ptrtoint ptr %expected_transfer_length to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %expected_transfer_length, align 4
  %dlength = getelementptr inbounds %struct.iscsi_scsi_req, ptr %25, i32 0, i32 4
  %135 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %dlength, align 1
  %conv66 = zext i8 %136 to i32
  %shl67 = shl nuw nsw i32 %conv66, 16
  %arrayidx69 = getelementptr %struct.iscsi_scsi_req, ptr %25, i32 0, i32 4, i32 1
  %137 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %138 to i32
  %shl71 = shl nuw nsw i32 %conv70, 8
  %or72 = or i32 %shl71, %shl67
  %arrayidx74 = getelementptr %struct.iscsi_scsi_req, ptr %25, i32 0, i32 4, i32 2
  %139 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %140 to i32
  %or76 = or i32 %or72, %conv75
  %hdr_second_dword = getelementptr inbounds %struct.iscsi_cmd_hdr, ptr %cmd_pdu_header, i32 0, i32 3
  %141 = ptrtoint ptr %hdr_second_dword to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or76, ptr %hdr_second_dword, align 4
  %cmdsn = getelementptr inbounds %struct.iscsi_scsi_req, ptr %25, i32 0, i32 8
  %142 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cmdsn, align 4
  %cmd_sn = getelementptr inbounds %struct.iscsi_cmd_hdr, ptr %cmd_pdu_header, i32 0, i32 7
  %144 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %cmd_sn, align 4
  %145 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %25, align 4
  %hdr_first_byte = getelementptr inbounds %struct.iscsi_cmd_hdr, ptr %cmd_pdu_header, i32 0, i32 2
  %147 = ptrtoint ptr %hdr_first_byte to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %hdr_first_byte, align 1
  %cdb77 = getelementptr inbounds %struct.iscsi_cmd_hdr, ptr %cmd_pdu_header, i32 0, i32 9
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %15, i32 0, i32 14
  %148 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %cmd_len.i, align 4
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %15, i32 0, i32 16
  %150 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cmnd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %149)
  %tobool.not15.i = icmp ult i16 %149, 4
  br i1 %tobool.not15.i, label %if.end53.while.end.i286_crit_edge, label %while.body.preheader.i

if.end53.while.end.i286_crit_edge:                ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i286

while.body.preheader.i:                           ; preds = %if.end53
  %152 = lshr i16 %149, 2
  %div.i282 = zext i16 %152 to i32
  br label %while.body.i285

while.body.i285:                                  ; preds = %while.body.i285.while.body.i285_crit_edge, %while.body.preheader.i
  %srcp.018.i = phi ptr [ %add.ptr.i283, %while.body.i285.while.body.i285_crit_edge ], [ %151, %while.body.preheader.i ]
  %lpcnt.017.i = phi i32 [ %dec.i, %while.body.i285.while.body.i285_crit_edge ], [ %div.i282, %while.body.preheader.i ]
  %dstp.addr.016.i = phi ptr [ %incdec.ptr.i, %while.body.i285.while.body.i285_crit_edge ], [ %cdb77, %while.body.preheader.i ]
  %dec.i = add nsw i32 %lpcnt.017.i, -1
  %153 = ptrtoint ptr %srcp.018.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %dword.0.copyload.i = load i32, ptr %srcp.018.i, align 1
  %154 = ptrtoint ptr %dstp.addr.016.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %dword.0.copyload.i, ptr %dstp.addr.016.i, align 4
  %add.ptr.i283 = getelementptr i8, ptr %srcp.018.i, i32 4
  %incdec.ptr.i = getelementptr i32, ptr %dstp.addr.016.i, i32 1
  %tobool.not.i284 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i284, label %while.body.i285.while.end.i286_crit_edge, label %while.body.i285.while.body.i285_crit_edge

while.body.i285.while.body.i285_crit_edge:        ; preds = %while.body.i285
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i285

while.body.i285.while.end.i286_crit_edge:         ; preds = %while.body.i285
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i286

while.end.i286:                                   ; preds = %while.body.i285.while.end.i286_crit_edge, %if.end53.while.end.i286_crit_edge
  %dstp.addr.0.lcssa.i = phi ptr [ %cdb77, %if.end53.while.end.i286_crit_edge ], [ %incdec.ptr.i, %while.body.i285.while.end.i286_crit_edge ]
  %srcp.0.lcssa.i = phi ptr [ %151, %if.end53.while.end.i286_crit_edge ], [ %add.ptr.i283, %while.body.i285.while.end.i286_crit_edge ]
  %155 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %cmd_len.i, align 4
  %157 = and i16 %156, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %tobool3.not.i = icmp eq i16 %157, 0
  br i1 %tobool3.not.i, label %while.end.i286.qedi_cpy_scsi_cdb.exit_crit_edge, label %if.then.i287

while.end.i286.qedi_cpy_scsi_cdb.exit_crit_edge:  ; preds = %while.end.i286
  call void @__sanitizer_cov_trace_pc() #9
  br label %qedi_cpy_scsi_cdb.exit

if.then.i287:                                     ; preds = %while.end.i286
  call void @__sanitizer_cov_trace_pc() #9
  %158 = ptrtoint ptr %srcp.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %srcp.0.lcssa.i, align 1
  %conv4.i = zext i8 %159 to i32
  %arrayidx5.i = getelementptr i8, ptr %srcp.0.lcssa.i, i32 1
  %160 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %161 to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 8
  %or.i = or i32 %shl.i, %conv4.i
  %162 = ptrtoint ptr %dstp.addr.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %or.i, ptr %dstp.addr.0.lcssa.i, align 4
  br label %qedi_cpy_scsi_cdb.exit

qedi_cpy_scsi_cdb.exit:                           ; preds = %if.then.i287, %while.end.i286.qedi_cpy_scsi_cdb.exit_crit_edge
  br i1 %cmp79, label %if.then81, label %if.else94

if.then81:                                        ; preds = %qedi_cpy_scsi_cdb.exit
  %io_tbl = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 6
  %163 = ptrtoint ptr %io_tbl to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %io_tbl, align 4
  %165 = ptrtoint ptr %tx_sgl_task_params to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %164, ptr %tx_sgl_task_params, align 4
  %sge_tbl_dma = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 6, i32 1
  %166 = ptrtoint ptr %sge_tbl_dma to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %sge_tbl_dma, align 4
  %sgl_phys_addr = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 1
  %168 = ptrtoint ptr %sgl_phys_addr to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %sgl_phys_addr, align 4
  %hi89 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 1, i32 1
  %169 = ptrtoint ptr %hi89 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %hi89, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %15, i32 0, i32 17, i32 1
  %170 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %length.i, align 4
  %total_buffer_size = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 2
  %172 = ptrtoint ptr %total_buffer_size to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %total_buffer_size, align 4
  %sge_valid = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 6, i32 2
  %173 = ptrtoint ptr %sge_valid to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %sge_valid, align 4
  %num_sges = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 3
  %175 = ptrtoint ptr %num_sges to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %num_sges, align 4
  %use_slowpath = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 16
  %176 = ptrtoint ptr %use_slowpath to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %use_slowpath, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not = icmp eq i8 %177, 0
  br i1 %tobool.not, label %if.then81.if.end118_crit_edge, label %if.then92

if.then81.if.end118_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.then92:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  %small_mid_sge = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 4
  %178 = ptrtoint ptr %small_mid_sge to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 1, ptr %small_mid_sge, align 2
  br label %if.end118

if.else94:                                        ; preds = %qedi_cpy_scsi_cdb.exit
  br i1 %cmp95, label %if.then97, label %if.else94.if.end118_crit_edge

if.else94.if.end118_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.then97:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #9
  %io_tbl98 = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 6
  %179 = ptrtoint ptr %io_tbl98 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %io_tbl98, align 4
  %181 = ptrtoint ptr %rx_sgl_task_params to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %180, ptr %rx_sgl_task_params, align 4
  %sge_tbl_dma102 = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 6, i32 1
  %182 = ptrtoint ptr %sge_tbl_dma102 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %sge_tbl_dma102, align 4
  %sgl_phys_addr103 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 1
  %184 = ptrtoint ptr %sgl_phys_addr103 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %sgl_phys_addr103, align 4
  %hi111 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 1, i32 1
  %185 = ptrtoint ptr %hi111 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %hi111, align 4
  %length.i288 = getelementptr inbounds %struct.scsi_cmnd, ptr %15, i32 0, i32 17, i32 1
  %186 = ptrtoint ptr %length.i288 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %length.i288, align 4
  %total_buffer_size113 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 2
  %188 = ptrtoint ptr %total_buffer_size113 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %total_buffer_size113, align 4
  %sge_valid115 = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 6, i32 2
  %189 = ptrtoint ptr %sge_valid115 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %sge_valid115, align 4
  %num_sges116 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 3
  %191 = ptrtoint ptr %num_sges116 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %190, ptr %num_sges116, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then97, %if.else94.if.end118_crit_edge, %if.then92, %if.then81.if.end118_crit_edge
  %session119 = getelementptr inbounds %struct.iscsi_conn, ptr %34, i32 0, i32 2
  %192 = ptrtoint ptr %session119 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %session119, align 8
  %first_burst = getelementptr inbounds %struct.iscsi_session, ptr %193, i32 0, i32 17
  %194 = ptrtoint ptr %first_burst to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %first_burst, align 4
  %196 = ptrtoint ptr %conn_params to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %conn_params, align 4
  %max_xmit_dlength = getelementptr inbounds %struct.iscsi_conn, ptr %34, i32 0, i32 24
  %197 = ptrtoint ptr %max_xmit_dlength to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %max_xmit_dlength, align 8
  %max_send_pdu_length = getelementptr inbounds %struct.iscsi_conn_params, ptr %conn_params, i32 0, i32 1
  %199 = ptrtoint ptr %max_send_pdu_length to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %max_send_pdu_length, align 4
  %max_burst = getelementptr inbounds %struct.iscsi_session, ptr %193, i32 0, i32 18
  %200 = ptrtoint ptr %max_burst to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %max_burst, align 4
  %max_burst_length = getelementptr inbounds %struct.iscsi_conn_params, ptr %conn_params, i32 0, i32 2
  %202 = ptrtoint ptr %max_burst_length to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %max_burst_length, align 4
  %203 = load ptr, ptr %session119, align 8
  %initial_r2t_en = getelementptr inbounds %struct.iscsi_session, ptr %203, i32 0, i32 14
  %204 = ptrtoint ptr %initial_r2t_en to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %initial_r2t_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool122.not = icmp eq i32 %205, 0
  br i1 %tobool122.not, label %if.end118.if.end124_crit_edge, label %if.then123

if.end118.if.end124_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then123:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  %initial_r2t = getelementptr inbounds %struct.iscsi_conn_params, ptr %conn_params, i32 0, i32 3
  %206 = ptrtoint ptr %initial_r2t to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %initial_r2t, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end118.if.end124_crit_edge
  %207 = ptrtoint ptr %session119 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %session119, align 8
  %imm_data_en = getelementptr inbounds %struct.iscsi_session, ptr %208, i32 0, i32 16
  %209 = ptrtoint ptr %imm_data_en to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %imm_data_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool126.not = icmp eq i32 %210, 0
  br i1 %tobool126.not, label %if.end124.if.end128_crit_edge, label %if.then127

if.end124.if.end128_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  %immediate_data = getelementptr inbounds %struct.iscsi_conn_params, ptr %conn_params, i32 0, i32 4
  %211 = ptrtoint ptr %immediate_data to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 1, ptr %immediate_data, align 1
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.end124.if.end128_crit_edge
  %sense_buffer_dma = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 9
  %212 = ptrtoint ptr %sense_buffer_dma to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %sense_buffer_dma, align 4
  %214 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %21, align 4
  %215 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 0, ptr %22, align 4
  %216 = ptrtoint ptr %task_params to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %add.ptr.i281, ptr %task_params, align 4
  %iscsi_conn_id = getelementptr inbounds %struct.qedi_conn, ptr %11, i32 0, i32 9
  %217 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %iscsi_conn_id, align 4
  %conv136 = trunc i32 %218 to i16
  %conn_icid = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 4
  %219 = ptrtoint ptr %conn_icid to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %conv136, ptr %conn_icid, align 4
  %itid = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 5
  %220 = ptrtoint ptr %itid to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %conv, ptr %itid, align 2
  %conv137 = trunc i32 %rem to i8
  %cq_rss_number = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 6
  %221 = ptrtoint ptr %cq_rss_number to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %conv137, ptr %cq_rss_number, align 4
  br i1 %cmp79, label %if.then140, label %if.else142

if.then140:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  %length.i289 = getelementptr inbounds %struct.scsi_cmnd, ptr %15, i32 0, i32 17, i32 1
  %222 = ptrtoint ptr %length.i289 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %length.i289, align 4
  %tx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %224 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %tx_io_size, align 4
  br label %if.end148

if.else142:                                       ; preds = %if.end128
  br i1 %cmp95, label %if.then145, label %if.else142.if.end148_crit_edge

if.else142.if.end148_crit_edge:                   ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.then145:                                       ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #9
  %length.i290 = getelementptr inbounds %struct.scsi_cmnd, ptr %15, i32 0, i32 17, i32 1
  %225 = ptrtoint ptr %length.i290 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %length.i290, align 4
  %rx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 3
  %227 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %rx_io_size, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %if.else142.if.end148_crit_edge, %if.then140
  %cond = phi ptr [ @.str.21, %if.else142.if.end148_crit_edge ], [ @.str.21, %if.then145 ], [ @.str.20, %if.then140 ]
  %228 = ptrtoint ptr %ep7 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ep7, align 4
  %sq_prod_idx.i = getelementptr inbounds %struct.qedi_endpoint, ptr %229, i32 0, i32 20
  %230 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %sq_prod_idx.i, align 4
  %inc.i = add i16 %231, 1
  store i16 %inc.i, ptr %sq_prod_idx.i, align 4
  %fw_sq_prod_idx.i = getelementptr inbounds %struct.qedi_endpoint, ptr %229, i32 0, i32 21
  %232 = ptrtoint ptr %fw_sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %fw_sq_prod_idx.i, align 2
  %inc3.i = add i16 %233, 1
  store i16 %inc3.i, ptr %fw_sq_prod_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %inc.i)
  %cmp.i291 = icmp eq i16 %inc.i, 1024
  br i1 %cmp.i291, label %if.then.i292, label %if.end148.qedi_get_wqe_idx.exit_crit_edge

if.end148.qedi_get_wqe_idx.exit_crit_edge:        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  br label %qedi_get_wqe_idx.exit

if.then.i292:                                     ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  %234 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 0, ptr %sq_prod_idx.i, align 4
  br label %qedi_get_wqe_idx.exit

qedi_get_wqe_idx.exit:                            ; preds = %if.then.i292, %if.end148.qedi_get_wqe_idx.exit_crit_edge
  %sq = getelementptr inbounds %struct.qedi_endpoint, ptr %30, i32 0, i32 18
  %235 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %sq, align 4
  %idxprom = zext i16 %231 to i32
  %arrayidx150 = getelementptr %struct.iscsi_wqe, ptr %236, i32 %idxprom
  %sqe = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 1
  %237 = ptrtoint ptr %sqe to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %arrayidx150, ptr %sqe, align 4
  %sge_valid154 = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 6, i32 2
  %238 = ptrtoint ptr %sge_valid154 to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %sge_valid154, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %239)
  %cmp156 = icmp eq i16 %239, 1
  br i1 %cmp156, label %qedi_get_wqe_idx.exit.cond.end_crit_edge, label %cond.false

qedi_get_wqe_idx.exit.cond.end_crit_edge:         ; preds = %qedi_get_wqe_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %qedi_get_wqe_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  %use_slowpath158 = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 16
  %240 = ptrtoint ptr %use_slowpath158 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %use_slowpath158, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool159.not = icmp eq i8 %241, 0
  %cond161 = select i1 %tobool159.not, ptr @.str.24, ptr @.str.23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %qedi_get_wqe_idx.exit.cond.end_crit_edge
  %cond162 = phi ptr [ %cond161, %cond.false ], [ @.str.22, %qedi_get_wqe_idx.exit.cond.end_crit_edge ]
  %conv165 = zext i16 %239 to i32
  %length.i293 = getelementptr inbounds %struct.scsi_cmnd, ptr %15, i32 0, i32 17, i32 1
  %242 = ptrtoint ptr %length.i293 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %length.i293, align 4
  %sge_tbl_dma168 = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 6, i32 1
  %244 = ptrtoint ptr %sge_tbl_dma168 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %sge_tbl_dma168, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_iscsi_send_ioreq, i32 noundef 2102, i32 noundef 1024, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond, ptr noundef nonnull %cond162, i32 noundef %conv165, i32 noundef %243, i32 noundef %245, i32 noundef 0) #7
  %246 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %sqe, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_storeN_noabort(i32 %248, i32 8)
  store i64 0, ptr %247, align 4
  %tx_io_size175 = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %249 = ptrtoint ptr %tx_io_size175 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %tx_io_size175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %cmp176.not = icmp eq i32 %250, 0
  %spec.select = select i1 %cmp176.not, ptr null, ptr %tx_sgl_task_params
  %rx_io_size180 = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 3
  %251 = ptrtoint ptr %rx_io_size180 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %rx_io_size180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %cmp181.not = icmp eq i32 %252, 0
  %prx_sgl.0 = select i1 %cmp181.not, ptr null, ptr %rx_sgl_task_params
  %call185 = call i32 @init_initiator_rw_iscsi_task(ptr noundef nonnull %task_params, ptr noundef nonnull %conn_params, ptr noundef nonnull %cmd_params, ptr noundef nonnull %cmd_pdu_header, ptr noundef %spec.select, ptr noundef %prx_sgl.0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end188:                                        ; preds = %cond.end
  %list_lock = getelementptr inbounds %struct.qedi_conn, ptr %11, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %list_lock) #7
  %active_cmd_list = getelementptr inbounds %struct.qedi_conn, ptr %11, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.qedi_conn, ptr %11, i32 0, i32 4, i32 1
  %253 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %13, ptr noundef %254, ptr noundef %active_cmd_list) #7
  br i1 %call.i.i, label %if.end.i.i294, label %if.end188.list_add_tail.exit_crit_edge

if.end188.list_add_tail.exit_crit_edge:           ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i294:                                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #9
  %255 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %13, ptr %prev.i, align 4
  %256 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %active_cmd_list, ptr %13, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %257 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %254, ptr %prev3.i.i, align 4
  %258 = ptrtoint ptr %254 to i32
  call void @__asan_store4_noabort(i32 %258)
  store volatile ptr %13, ptr %254, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i294, %if.end188.list_add_tail.exit_crit_edge
  %io_cmd_in_list = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 1
  %259 = ptrtoint ptr %io_cmd_in_list to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 1, ptr %io_cmd_in_list, align 4
  %active_cmd_count = getelementptr inbounds %struct.qedi_conn, ptr %11, i32 0, i32 6
  %260 = ptrtoint ptr %active_cmd_count to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %active_cmd_count, align 4
  %inc = add i32 %261, 1
  store i32 %inc, ptr %active_cmd_count, align 4
  call void @_raw_spin_unlock(ptr noundef %list_lock) #7
  %262 = ptrtoint ptr %ep7 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %ep7, align 4
  %fw_sq_prod_idx.i295 = getelementptr inbounds %struct.qedi_endpoint, ptr %263, i32 0, i32 21
  %264 = ptrtoint ptr %fw_sq_prod_idx.i295 to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %fw_sq_prod_idx.i295, align 2
  %sq_prod.i = getelementptr inbounds %struct.qedi_endpoint, ptr %263, i32 0, i32 17, i32 2
  %266 = ptrtoint ptr %sq_prod.i to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %265, ptr %sq_prod.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  call void @arm_heavy_mb() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  call void @arm_heavy_mb() #7
  %267 = ptrtoint ptr %ep7 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %ep7, align 4
  %db_data5.i = getelementptr inbounds %struct.qedi_endpoint, ptr %268, i32 0, i32 17
  %269 = ptrtoint ptr %db_data5.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %db_data5.i, align 4
  %271 = call i32 @llvm.bswap.i32(i32 %270) #7
  %p_doorbell.i = getelementptr inbounds %struct.qedi_endpoint, ptr %268, i32 0, i32 16
  %272 = ptrtoint ptr %p_doorbell.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %p_doorbell.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 %271) #7, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  call void @arm_heavy_mb() #7
  %qedi.i296 = getelementptr inbounds %struct.qedi_conn, ptr %11, i32 0, i32 1
  %274 = ptrtoint ptr %qedi.i296 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %qedi.i296, align 4
  %276 = ptrtoint ptr %ep7 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %ep7, align 4
  %sq_prod_idx.i297 = getelementptr inbounds %struct.qedi_endpoint, ptr %277, i32 0, i32 20
  %278 = ptrtoint ptr %sq_prod_idx.i297 to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %sq_prod_idx.i297, align 4
  %conv.i298 = zext i16 %279 to i32
  %fw_sq_prod_idx11.i = getelementptr inbounds %struct.qedi_endpoint, ptr %277, i32 0, i32 21
  %280 = ptrtoint ptr %fw_sq_prod_idx11.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %fw_sq_prod_idx11.i, align 2
  %conv12.i = zext i16 %281 to i32
  %282 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %iscsi_conn_id, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %275, ptr noundef nonnull @__func__.qedi_ring_doorbell, i32 noundef 939, i32 noundef 128, ptr noundef nonnull @.str.46, i32 noundef %conv.i298, i32 noundef %conv12.i, i32 noundef %283) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %cond.end.cleanup_crit_edge, %qedi_iscsi_map_sg_list.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %qedi_iscsi_map_sg_list.exit.cleanup_crit_edge ], [ -1, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scsi_lun) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd_params) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %conn_params) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %task_params) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rx_sgl_task_params) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tx_sgl_task_params) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd_pdu_header) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_initiator_rw_iscsi_task(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_cleanup_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iscsi_put_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iscsi_complete_pdu(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_tmf_resp_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conn = getelementptr i8, ptr %work, i32 -552
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %qedi1 = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qedi1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dd_data, align 8
  %session3 = getelementptr inbounds %struct.iscsi_conn, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %session3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %session3, align 8
  %tmf_resp_buf = getelementptr i8, ptr %work, i32 60
  %10 = ptrtoint ptr %tmf_resp_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tmf_resp_buf, align 4
  %task = getelementptr i8, ptr %work, i32 -4
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 4
  %call = tail call i32 @qedi_cleanup_all_io(ptr noundef %3, ptr noundef %1, ptr noundef %13, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_tmf_resp_crit_edge

entry.exit_tmf_resp_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_tmf_resp

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %back_lock = getelementptr inbounds %struct.iscsi_session, ptr %9, i32 0, i32 53
  tail call void @_raw_spin_lock(ptr noundef %back_lock) #7
  %call4 = tail call i32 @__iscsi_complete_pdu(ptr noundef %7, ptr noundef %11, ptr noundef null, i32 noundef 0) #7
  tail call void @_raw_spin_unlock(ptr noundef %back_lock) #7
  br label %exit_tmf_resp

exit_tmf_resp:                                    ; preds = %if.end, %entry.exit_tmf_resp_crit_edge
  tail call void @kfree(ptr noundef %11) #7
  %tmf_work_lock = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tmf_work_lock) #7
  %fw_cleanup_works = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %fw_cleanup_works to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_cleanup_works, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %fw_cleanup_works, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tmf_work_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedi_unsol_pdu_adjust_bdq(ptr noundef %qedi, ptr nocapture noundef readonly %cqe, i32 noundef %pdu_len, i32 noundef %num_bdqs, ptr nocapture noundef writeonly %bdq_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_unsol_pdu_adjust_bdq, i32 noundef 402, i32 noundef 16, ptr noundef nonnull @.str.35, i32 noundef %num_bdqs) #7
  %bdq_prod_idx.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 30
  %0 = ptrtoint ptr %bdq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bdq_prod_idx.i, align 8
  %conv.i = zext i16 %1 to i32
  %rq_num_entries.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 31
  %2 = ptrtoint ptr %rq_num_entries.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rq_num_entries.i, align 2
  %4 = urem i16 %1, %3
  %rem.i = zext i16 %4 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_get_rq_bdq_buf, i32 noundef 328, i32 noundef 16, ptr noundef nonnull @.str.36, i32 noundef %pdu_len, i32 noundef %conv.i, i32 noundef %rem.i) #7
  %rqe_opaque.i = getelementptr inbounds %struct.iscsi_cqe_unsolicited, ptr %cqe, i32 0, i32 6
  %5 = ptrtoint ptr %rqe_opaque.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rqe_opaque.i, align 4
  %conv4.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %6)
  %cmp.i = icmp ugt i16 %6, 255
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_get_rq_bdq_buf, i32 noundef 335, i32 noundef 16, ptr noundef nonnull @.str.37, i32 noundef %conv4.i) #7
  br label %qedi_get_rq_bdq_buf.exit

if.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_get_rq_bdq_buf, i32 noundef 340, i32 noundef 16, ptr noundef nonnull @.str.38, i32 noundef %conv4.i, i32 noundef %conv4.i) #7
  %unsol_cqe_type.i = getelementptr inbounds %struct.iscsi_cqe_unsolicited, ptr %cqe, i32 0, i32 5
  %7 = ptrtoint ptr %unsol_cqe_type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %unsol_cqe_type.i, align 1
  %conv13.i = zext i8 %8 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_get_rq_bdq_buf, i32 noundef 343, i32 noundef 16, ptr noundef nonnull @.str.39, i32 noundef %conv13.i) #7
  %9 = ptrtoint ptr %unsol_cqe_type.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %unsol_cqe_type.i, align 1
  %11 = add i8 %10, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %11)
  %switch.i = icmp ult i8 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pdu_len)
  %tobool.not.i = icmp eq i32 %pdu_len, 0
  %or.cond.i = or i1 %tobool.not.i, %switch.i
  br i1 %or.cond.i, label %if.end.i.qedi_get_rq_bdq_buf.exit_crit_edge, label %if.then16.i

if.end.i.qedi_get_rq_bdq_buf.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qedi_get_rq_bdq_buf.exit

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 19, i32 %conv4.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 8
  %14 = call ptr @memcpy(ptr %bdq_data, ptr %13, i32 %pdu_len)
  br label %qedi_get_rq_bdq_buf.exit

qedi_get_rq_bdq_buf.exit:                         ; preds = %if.then16.i, %if.end.i.qedi_get_rq_bdq_buf.exit_crit_edge, %if.then.i
  %15 = ptrtoint ptr %rqe_opaque.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rqe_opaque.i, align 4
  %conv.i6 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %16)
  %cmp.i7 = icmp ugt i16 %16, 255
  br i1 %cmp.i7, label %if.then.i8, label %if.end.i12

if.then.i8:                                       ; preds = %qedi_get_rq_bdq_buf.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_put_rq_bdq_buf, i32 noundef 370, i32 noundef 16, ptr noundef nonnull @.str.37, i32 noundef %conv.i6) #7
  br label %qedi_put_rq_bdq_buf.exit

if.end.i12:                                       ; preds = %qedi_get_rq_bdq_buf.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bdq_pbl.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 20
  %17 = ptrtoint ptr %bdq_pbl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdq_pbl.i, align 8
  %19 = ptrtoint ptr %bdq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bdq_prod_idx.i, align 8
  %21 = ptrtoint ptr %rq_num_entries.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rq_num_entries.i, align 2
  %23 = urem i16 %20, %22
  %rem.i11 = zext i16 %23 to i32
  %add.ptr.i = getelementptr %struct.scsi_bd, ptr %18, i32 %rem.i11
  %buf_dma.i = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 19, i32 %conv.i6, i32 1
  %hi.i = getelementptr inbounds %struct.regpair, ptr %add.ptr.i, i32 0, i32 1
  %24 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %hi.i, align 4
  %25 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_dma.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_put_rq_bdq_buf, i32 noundef 380, i32 noundef 16, ptr noundef nonnull @.str.40, ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %27, i32 noundef %conv.i6) #7
  %opaque.i = getelementptr %struct.scsi_bd, ptr %18, i32 %rem.i11, i32 1
  %29 = ptrtoint ptr %opaque.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 0, ptr %opaque.i, align 4
  %30 = ptrtoint ptr %bdq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %bdq_prod_idx.i, align 8
  %32 = trunc i32 %num_bdqs to i16
  %33 = add i16 %32, 1
  %conv33.i = add i16 %33, %31
  store i16 %conv33.i, ptr %bdq_prod_idx.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %bdq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bdq_prod_idx.i, align 8
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #7
  %bdq_primary_prod.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 28
  %37 = ptrtoint ptr %bdq_primary_prod.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bdq_primary_prod.i, align 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %38, i16 %36) #7, !srcloc !168
  %39 = ptrtoint ptr %bdq_primary_prod.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bdq_primary_prod.i, align 8
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %40) #7, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %bdq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %bdq_prod_idx.i, align 8
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #7
  %bdq_secondary_prod.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 29
  %45 = ptrtoint ptr %bdq_secondary_prod.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bdq_secondary_prod.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %46, i16 %44) #7, !srcloc !168
  %47 = ptrtoint ptr %bdq_secondary_prod.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bdq_secondary_prod.i, align 4
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %48) #7, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  br label %qedi_put_rq_bdq_buf.exit

qedi_put_rq_bdq_buf.exit:                         ; preds = %if.end.i12, %if.then.i8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_notice(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_itt_to_ctask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_initiator_tmf_request_task(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !40, !42, !43, !45, !46, !47, !48, !49, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !67, !69, !71, !73, !75, !76, !78, !80, !82, !84, !86, !88, !89, !91, !92, !94, !96, !98, !100, !102, !104, !105, !107, !109, !111, !113, !115, !116, !118, !119, !121, !123, !125, !127, !129, !131, !133, !134, !136, !137, !139, !141, !143, !145}
!llvm.named.register.sp = !{!146}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @__func__.qedi_fp_process_cqes, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 841, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 846, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 853, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 874, i32 4}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 908, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 911, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 915, i32 3}
!15 = !{ptr @__func__.qedi_cleanup_all_io, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1161, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1179, i32 5}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1195, i32 3}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1205, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1210, i32 10}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1216, i32 3}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1225, i32 2}
!30 = !{ptr @__func__.qedi_clearsq, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1263, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1269, i32 2}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1277, i32 3}
!37 = !{ptr @qedi_send_iscsi_tmf.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1518, i32 3}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__func__.qedi_send_iscsi_tmf, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1527, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__func__.qedi_iscsi_send_ioreq, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 2095, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @__func__.qedi_iscsi_cleanup_task, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 2138, i32 2}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @__func__.qedi_process_nopin_local_cmpl, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 718, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @__func__.qedi_mtask_completion, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 705, i32 3}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__func__.qedi_scsi_completion, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 602, i32 3}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 607, i32 3}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 613, i32 3}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 642, i32 3}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 660, i32 2}
!71 = !{ptr @__func__.qedi_process_login_resp, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 313, i32 2}
!73 = !{ptr @__func__.qedi_process_tmf_resp, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 195, i32 3}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @qedi_process_tmf_resp.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 244, i32 3}
!78 = !{ptr @__func__.qedi_process_text_resp, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 122, i32 2}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 132, i32 3}
!82 = !{ptr @__func__.qedi_process_logout_resp, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 58, i32 2}
!84 = !{ptr @__func__.qedi_process_nopin_mesg, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 458, i32 3}
!86 = !{ptr @__func__.qedi_unsol_pdu_adjust_bdq, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 401, i32 2}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @__func__.qedi_get_rq_bdq_buf, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 325, i32 2}
!91 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 333, i32 3}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 339, i32 2}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 342, i32 2}
!98 = !{ptr @__func__.qedi_put_rq_bdq_buf, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 368, i32 3}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 378, i32 2}
!102 = !{ptr @__func__.qedi_process_cmd_cleanup_resp, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 746, i32 3}
!104 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 759, i32 5}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 779, i32 2}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 785, i32 3}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 793, i32 2}
!113 = !{ptr @__func__.qedi_ring_doorbell, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 936, i32 2}
!115 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @__func__.qedi_abort_work, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1333, i32 3}
!118 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1339, i32 3}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1350, i32 2}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1356, i32 3}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1363, i32 3}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1375, i32 2}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1389, i32 3}
!131 = !{ptr @__func__.qedi_wait_for_cleanup_request, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1303, i32 3}
!133 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @__func__.qedi_map_scsi_sg, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1809, i32 3}
!136 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1845, i32 3}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1861, i32 3}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1865, i32 3}
!143 = !{ptr @__func__.qedi_split_bd, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/qedi/qedi_fw.c", i32 1767, i32 3}
!145 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!146 = !{!"sp"}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{!"branch_weights", i32 2000, i32 1}
!157 = !{i8 0, i8 2}
!158 = !{!"branch_weights", i32 1, i32 2000}
!159 = !{i64 2148608951}
!160 = !{i64 2148524260, i64 2148524292, i64 2148524321, i64 2148524355, i64 2148524386, i64 2148524409}
!161 = !{i64 2148609180}
!162 = !{i64 2157344909}
!163 = !{i64 2157345159}
!164 = !{i64 6013182}
!165 = !{i64 2157345574}
!166 = !{!"auto-init"}
!167 = !{i64 2157324347}
!168 = !{i64 6012562}
!169 = !{i64 6012762}
!170 = !{i64 2157325078}
!171 = !{i64 2157325314}
!172 = !{i64 2157326055}
