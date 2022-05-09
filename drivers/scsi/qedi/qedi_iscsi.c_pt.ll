; ModuleID = '/llk/IR_all_yes/drivers/scsi/qedi/qedi_iscsi.c_pt.bc'
source_filename = "../drivers/scsi/qedi/qedi_iscsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.iscsi_transport = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.141 = type { i32, ptr }
%struct.qedi_ctx = type { %struct.qedi_dbg_ctx, ptr, ptr, ptr, %struct.qed_dev_iscsi_info, %struct.qed_int_info, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.spinlock, ptr, i32, i32, [6 x i8], [4 x i32], i8, i32, [256 x %struct.qedi_bdq_buf], ptr, i32, i32, ptr, i32, i8, ptr, i32, ptr, ptr, i16, i16, i32, i8, i32, i32, %struct.iscsi_cid_queue, ptr, %struct.qedi_portid_tbl, ptr, ptr, %struct.qed_iscsi_tid, %struct.atomic_t, [128 x i32], ptr, [4096 x i16], %struct.qed_pf_params, ptr, ptr, i16, ptr, %struct.delayed_work, %struct.delayed_work, %struct.spinlock, i32, i32, [2048 x %struct.qedi_io_log], %struct.spinlock, i16, i32, i32, i8, i32, i8, i32, i8, %struct.atomic_t, ptr, %struct.mutex }
%struct.qedi_dbg_ctx = type { i32, ptr, ptr }
%struct.qed_dev_iscsi_info = type { %struct.qed_dev_info, ptr, ptr, i8 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qedi_io_log = type { i8, i16, i32, i32, i32, i8, [4 x i8], i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
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
%struct.qedi_conn = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.generic_pdu_resc, %struct.list_head, %struct.wait_queue_head, %struct.spinlock, i8, i32 }
%struct.generic_pdu_resc = type { ptr, i32, i32, ptr, %struct.iscsi_hdr, ptr, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.iscsi_hdr = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, [12 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.iscsi_conn = type { ptr, ptr, ptr, i32, %struct.timer_list, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_session = type { ptr, %struct.mutex, %struct.wait_queue_head, %struct.iscsi_tm, %struct.timer_list, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, ptr, %struct.iscsi_pool, ptr }
%struct.iscsi_tm = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.iscsi_pool = type { %struct.kfifo, ptr, i32 }
%struct.kfifo = type { %union.anon.113, [0 x i8] }
%union.anon.113 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.iscsi_cls_session = type { %struct.list_head, ptr, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i8, %struct.delayed_work, i32, i8, i32, i32, i32, ptr, %struct.device }
%struct.iscsi_task = type { ptr, i16, i16, i32, i32, %struct.scsi_lun, i32, i32, %struct.iscsi_r2t_info, ptr, i32, ptr, ptr, i32, i32, i8, i8, i32, %struct.refcount_struct, %struct.list_head, ptr }
%struct.iscsi_r2t_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.qedi_cmd = type { %struct.list_head, i8, %struct.iscsi_hdr, ptr, ptr, ptr, %struct.qedi_io_bdt, %struct.iscsi_task_context, ptr, i32, i16, ptr, %struct.work_struct, i32, i32, ptr, i8, ptr, %struct.qedi_work }
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
%struct.qedi_work = type { %struct.list_head, ptr, %union.iscsi_cqe, i16, i8 }
%union.iscsi_cqe = type { %struct.iscsi_cqe_common }
%struct.iscsi_cqe_common = type { i16, i8, %union.cqe_error_status, [3 x i32], %union.iscsi_task_hdr }
%union.cqe_error_status = type { i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.107, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.107 = type { ptr }
%struct.qedi_endpoint = type { ptr, [4 x i32], [4 x i32], i16, i16, i16, i16, [6 x i8], [6 x i8], i8, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, %struct.iscsi_db_data, ptr, i32, i16, i16, i16, i32, ptr, i32, i32, ptr, %struct.work_struct }
%struct.iscsi_db_data = type { i8, i8, i16 }
%struct.qed_iscsi_params_update = type { i8, i32, i32, i32, i32, i32 }
%struct.qed_iscsi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_iscsi_stats = type { i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.iscsi_stats = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.iscsi_stats_custom] }
%struct.iscsi_stats_custom = type { [64 x i8], i64 }
%struct.iscsi_path = type { i64, [6 x i8], [6 x i8], i32, %union.anon.114, %union.anon.115, i16, i16 }
%union.anon.114 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%union.anon.115 = type { %struct.in6_addr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.qed_common_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qedi_uio_dev = type { %struct.uio_info, i32, %struct.list_head, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uio_info = type { ptr, ptr, ptr, [5 x %struct.uio_mem], [5 x %struct.uio_port], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uio_mem = type { ptr, i32, i32, i32, i32, ptr, ptr }
%struct.uio_port = type { ptr, i32, i32, i32, ptr }
%struct.qedi_uio_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], [2 x i8] }
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
%struct.qed_ll2_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iscsi_eqe_data = type { i16, i16, i16, i8, i8 }
%struct.qed_iscsi_params_offload = type { i8, i32, i32, %struct.qed_iscsi_id_params, %struct.qed_iscsi_id_params, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i8, i8, i16, i8 }
%struct.qed_iscsi_id_params = type { [6 x i8], [4 x i32], i16 }

@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"QLogic QEDI 25/40/100Gb iSCSI Initiator Driver\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qedi\00", [27 x i8] zeroinitializer }, align 32
@qedi_shost_groups = external dso_local global [0 x ptr], align 4
@qedi_host_template = dso_local global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @iscsi_queuecommand, ptr null, ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_eh_abort, ptr @iscsi_eh_device_reset, ptr @iscsi_eh_recover_target, ptr null, ptr @qedi_eh_host_reset, ptr null, ptr null, ptr null, ptr @iscsi_target_alloc, ptr null, ptr null, ptr null, ptr @scsi_change_queue_depth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_eh_cmd_timed_out, ptr null, ptr null, ptr @.str.1, ptr null, i32 4096, i32 -1, i16 255, i16 0, i32 65535, i32 0, i32 4095, i32 0, i16 128, i8 0, i32 0, i8 0, i32 0, ptr @qedi_shost_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__func__.qedi_get_conn_from_id = private unnamed_addr constant [22 x i8] c"qedi_get_conn_from_id\00", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"missing conn<->cid table\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wrong cid #%d\0A\00", [17 x i8] zeroinitializer }, align 32
@qedi_iscsi_transport = dso_local global { %struct.iscsi_transport, [60 x i8] } { %struct.iscsi_transport { ptr null, ptr @.str.1, i32 2233, ptr @qedi_session_create, ptr @qedi_session_destroy, ptr @qedi_conn_create, ptr @iscsi_conn_unbind, ptr @qedi_conn_bind, ptr @qedi_conn_start, ptr @iscsi_conn_stop, ptr @qedi_conn_destroy, ptr @iscsi_set_param, ptr @qedi_ep_get_param, ptr @iscsi_conn_get_param, ptr @iscsi_session_get_param, ptr @qedi_host_get_param, ptr null, ptr @iscsi_conn_send_pdu, ptr @qedi_conn_get_stats, ptr null, ptr @qedi_task_xmit, ptr @qedi_cleanup_task, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_session_recovery_timedout, ptr @qedi_ep_connect, ptr @qedi_ep_poll, ptr @qedi_ep_disconnect, ptr null, ptr @qedi_set_path, ptr null, ptr null, ptr @qedi_attr_is_visible, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__func__.qedi_start_conn_recovery = private unnamed_addr constant [25 x i8] c"qedi_start_conn_recovery\00", align 1
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failing connection, state=0x%x, cid=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@__const.qedi_process_iscsi_error.error_notice = private unnamed_addr constant [12 x i8] c"iscsi_error\00", align 1
@__const.qedi_process_iscsi_error.unknown_msg = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@__func__.qedi_process_iscsi_error = private unnamed_addr constant [25 x i8] c"qedi_process_iscsi_error\00", align 1
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"async event iscsi error:0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@qedi_process_iscsi_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.qedi_process_iscsi_error, ptr @.str.7, i32 1688, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qedi: %s - %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/qedi/qedi_iscsi.c\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qedi_process_iscsi_error._entry_ptr = internal global ptr @qedi_process_iscsi_error._entry, section ".printk_index", align 4
@__func__.qedi_process_tcp_error = private unnamed_addr constant [23 x i8] c"qedi_process_tcp_error\00", align 1
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"async event TCP error:0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.qedi_session_create = private unnamed_addr constant [20 x i8] c"qedi_session_create\00", align 1
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to setup session for ep=%p\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to setup cmd pool for ep=%p\0A\00", [60 x i8] zeroinitializer }, align 32
@qedi_alloc_sget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 199, ptr @.str.15, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not allocate BD table.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qedi_alloc_sget\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@qedi_alloc_sget._entry_ptr = internal global ptr @qedi_alloc_sget._entry, section ".printk_index", align 4
@__func__.qedi_conn_create = private unnamed_addr constant [17 x i8] c"qedi_conn_create\00", align 1
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"conn_new: iscsi conn setup failed, cid=0x%x, cls_sess=%p!\0A\00", [37 x i8] zeroinitializer }, align 32
@qedi_conn_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&qedi_conn->list_lock\00", [42 x i8] zeroinitializer }, align 32
@qedi_conn_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.qedi_conn_create, ptr @.str.7, i32 320, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"conn_new: login resc alloc failed, cid=0x%x, cls_sess=%p!!\0A\00", [36 x i8] zeroinitializer }, align 32
@qedi_conn_create._entry_ptr = internal global ptr @qedi_conn_create._entry, section ".printk_index", align 4
@__func__.qedi_conn_alloc_login_resources = private unnamed_addr constant [32 x i8] c"qedi_conn_alloc_login_resources\00", align 1
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Allocation successful, cid=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@qedi_conn_alloc_login_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.qedi_conn_alloc_login_resources, ptr @.str.7, i32 159, ptr @.str.15, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"login resource alloc failed!!\0A\00", [33 x i8] zeroinitializer }, align 32
@qedi_conn_alloc_login_resources._entry_ptr = internal global ptr @qedi_conn_alloc_login_resources._entry, section ".printk_index", align 4
@qedi_conn_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&qedi_conn->tmf_work_lock\00", [38 x i8] zeroinitializer }, align 32
@qedi_conn_bind.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&qedi_conn->wait_queue\00", [41 x i8] zeroinitializer }, align 32
@qedi_bind_conn_to_iscsi_cid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.7, i32 359, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"conn bind - entry #%d not free\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qedi_bind_conn_to_iscsi_cid\00", [36 x i8] zeroinitializer }, align 32
@qedi_bind_conn_to_iscsi_cid._entry_ptr = internal global ptr @qedi_bind_conn_to_iscsi_cid._entry, section ".printk_index", align 4
@qedi_conn_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.7, i32 628, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"conn_start: FW offload conn failed.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qedi_conn_start\00", [16 x i8] zeroinitializer }, align 32
@qedi_conn_start._entry_ptr = internal global ptr @qedi_conn_start._entry, section ".printk_index", align 4
@qedi_conn_start._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.7, i32 643, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"iscsi_conn_start: FW offload conn failed!!\0A\00", [52 x i8] zeroinitializer }, align 32
@qedi_conn_start._entry_ptr.30 = internal global ptr @qedi_conn_start._entry.28, section ".printk_index", align 4
@__func__.qedi_iscsi_update_conn = private unnamed_addr constant [23 x i8] c"qedi_iscsi_update_conn\00", align 1
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"memory alloc failed\0A\00", [43 x i8] zeroinitializer }, align 32
@qedi_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not update connection\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%hu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI4\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI6\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"host%d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eh_abort_cnt\00", [19 x i8] zeroinitializer }, align 32
@qedi_iscsi_send_generic_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.7, i32 804, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unsupported op 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qedi_iscsi_send_generic_request\00", [32 x i8] zeroinitializer }, align 32
@qedi_iscsi_send_generic_request._entry_ptr = internal global ptr @qedi_iscsi_send_generic_request._entry, section ".printk_index", align 4
@__func__.qedi_cleanup_task = private unnamed_addr constant [18 x i8] c"qedi_cleanup_task\00", align 1
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Returning ref_cnt=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.qedi_ep_connect = private unnamed_addr constant [16 x i8] c"qedi_ep_connect\00", align 1
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shost is NULL\0A\00", [17 x i8] zeroinitializer }, align 32
@qedi_do_not_recover = external dso_local local_unnamed_addr global i32, align 4
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qedi link down\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"endpoint create fail\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dst_addr=%pI4, dst_port=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dst_addr=%pI6, dst_port=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid endpoint\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not acquire connection\0A\00", [34 x i8] zeroinitializer }, align 32
@qedi_ep_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&qedi_ep->ofld_wait\00", [44 x i8] zeroinitializer }, align 32
@qedi_ep_connect.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&qedi_ep->tcp_ofld_wait\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"iscsi_offload_mesg() failed for cid=0x%x ret=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"release_conn returned %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.qedi_ep_disconnect = private unnamed_addr constant [19 x i8] c"qedi_ep_disconnect\00", align 1
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cid=0x%x qedi_ep=%p waiting for %d tmfs\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Do not recover cid=0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Reset recovery cid=0x%x, qedi_ep=%p, state=0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Active cmd count=%d, abrt_conn=%d, ep state=0x%x, cid=0x%x, qedi_conn=%p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"destroy_conn failed returned %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Destroy conn timedout or interrupted, ret=%d, delay=%d, cid=0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"release_conn returned %d, cid=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.qedi_set_path = private unnamed_addr constant [14 x i8] c"qedi_set_path\00", align 1
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"shost %s is invalid\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iscsi_cid=0x%x, qedi_ep=%p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dst mac NOT VALID\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MTU cannot be %u, using default MTU %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid MTU %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to allocate port id for iscsi_cid=0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"src addr:port=%pI4:%u, dst addr:port=%pI4:%u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"src addr:port=%pI6:%u, dst addr:port=%pI6:%u\0A\00", [50 x i8] zeroinitializer }, align 32
@qedi_set_path.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&qedi_ep->offload_work)\00", [54 x i8] zeroinitializer }, align 32
@__func__.qedi_data_avail = private unnamed_addr constant [16 x i8] c"qedi_data_avail\00", align 1
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"udev is NULL.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uctlr is NULL.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid len %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alloc_skb failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ll2 start_xmit returned %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.qedi_offload_work = private unnamed_addr constant [18 x i8] c"qedi_offload_work\00", align 1
@.str.74 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"offload error: iscsi_cid=%u, qedi_ep=%p, ret=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Offload conn TIMEOUT iscsi_cid=%u, qedi_ep=%p\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.qedi_iscsi_offload_conn = private unnamed_addr constant [24 x i8] c"qedi_iscsi_offload_conn\00", align 1
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate memory ep=%p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"After ntohl: src_addr=%pI4, dst_addr=%pI4\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"After ntohl: src_addr=%pI6, dst_addr=%pI6\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Default cq index [%d], mss [%d]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"offload_conn returned %d, ep=%p\0A\00", [63 x i8] zeroinitializer }, align 32
@qedi_iscsi_error = internal constant { [35 x %struct.anon.141], [72 x i8] } { [35 x %struct.anon.141] [%struct.anon.141 { i32 0, ptr @.str.81 }, %struct.anon.141 { i32 2, ptr @.str.82 }, %struct.anon.141 { i32 3, ptr @.str.83 }, %struct.anon.141 { i32 4, ptr @.str.84 }, %struct.anon.141 { i32 5, ptr @.str.85 }, %struct.anon.141 { i32 6, ptr @.str.86 }, %struct.anon.141 { i32 7, ptr @.str.87 }, %struct.anon.141 { i32 8, ptr @.str.88 }, %struct.anon.141 { i32 9, ptr @.str.83 }, %struct.anon.141 { i32 10, ptr @.str.89 }, %struct.anon.141 { i32 14, ptr @.str.90 }, %struct.anon.141 { i32 15, ptr @.str.91 }, %struct.anon.141 { i32 17, ptr @.str.92 }, %struct.anon.141 { i32 19, ptr @.str.93 }, %struct.anon.141 { i32 20, ptr @.str.94 }, %struct.anon.141 { i32 21, ptr @.str.95 }, %struct.anon.141 { i32 22, ptr @.str.96 }, %struct.anon.141 { i32 23, ptr @.str.97 }, %struct.anon.141 { i32 24, ptr @.str.98 }, %struct.anon.141 { i32 25, ptr @.str.99 }, %struct.anon.141 { i32 27, ptr @.str.100 }, %struct.anon.141 { i32 28, ptr @.str.101 }, %struct.anon.141 { i32 29, ptr @.str.102 }, %struct.anon.141 { i32 30, ptr @.str.103 }, %struct.anon.141 { i32 31, ptr @.str.104 }, %struct.anon.141 { i32 32, ptr @.str.105 }, %struct.anon.141 { i32 33, ptr @.str.106 }, %struct.anon.141 { i32 34, ptr @.str.107 }, %struct.anon.141 { i32 35, ptr @.str.108 }, %struct.anon.141 { i32 37, ptr @.str.109 }, %struct.anon.141 { i32 38, ptr @.str.110 }, %struct.anon.141 { i32 39, ptr @.str.111 }, %struct.anon.141 { i32 40, ptr @.str.112 }, %struct.anon.141 { i32 41, ptr @.str.113 }, %struct.anon.141 { i32 43, ptr @.str.114 }], [72 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcp_error none\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"task cid mismatch\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"invalid task\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rq ring full\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cmdq ring full\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sge caching failed\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdr digest error\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"local cmpl error\00", [47 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"out of sge error\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcp ip fragment error\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AHS len protocol error\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"itt out of range error\00", [41 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"data seg more than pdu size\00", [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid opcode\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid opcode before update\00", [35 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unexpected opcode\00", [46 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"r2t carries no data\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"data sn error\00", [18 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"data TTT error\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"r2t TTT error\00", [18 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"buffer offset error\00", [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"buffer offset ooo\00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"data seg len 0\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"data xer len error\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"data xer len1 error\00", [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"data xer len2 error\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"protocol lun error\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"f bit zero error\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exp stat sn error\00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dsl not zero error\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"invalid dsl\00", [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"data seg len too big\00", [43 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"outstanding r2t count error\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sense datalen error\00", [44 x i8] zeroinitializer }, align 32
@switch.table.qedi_attr_is_visible = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 292, i16 0, i16 292, i16 292], [24 x i8] zeroinitializer }, align 32
@switch.table.qedi_attr_is_visible.115 = internal constant { [42 x i16], [44 x i8] } { [42 x i16] [i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 0, i16 0, i16 292, i16 292, i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 0, i16 0, i16 0, i16 292, i16 292, i16 292], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 21]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.118 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8192, i64 65536]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 8192]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 8192]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 65536]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 65536]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 45, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 46, i32 15 }
@___asan_gen_.132 = private unnamed_addr constant [19 x i8] c"qedi_host_template\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 43, i32 27 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 370, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 374, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [21 x i8] c"qedi_iscsi_transport\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1471, i32 24 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1514, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1669, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1686, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1706, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 262, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 268, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 198, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 302, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 315, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 318, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 136, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 158, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 423, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 425, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 357, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 627, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 642, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 444, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 475, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 675, i32 22 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 679, i32 23 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 681, i32 23 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 703, i32 22 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 747, i32 32 }
@___asan_gen_.267 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 803, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1454, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 880, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 898, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 904, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 920, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 929, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 933, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 944, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 952, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 953, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 978, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 991, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1068, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1084, i32 5 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1089, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1110, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1146, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1155, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1164, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1284, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1301, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1309, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1321, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1329, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1349, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1366, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1377, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1383, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1195, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1201, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1207, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1213, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1226, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1249, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1262, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 509, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 522, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 532, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 576, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 608, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant [17 x i8] c"qedi_iscsi_error\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1525, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1527, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1530, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1533, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1536, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1539, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1542, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1545, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1548, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1554, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1557, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1560, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1563, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1566, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1569, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1572, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1575, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1578, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1581, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1584, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1587, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1590, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1593, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1596, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1599, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1602, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1605, i32 4 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1608, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1611, i32 4 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1614, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1617, i32 4 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1620, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1623, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1626, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.508 = private constant [34 x i8] c"../drivers/scsi/qedi/qedi_iscsi.c\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1629, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant [34 x i8] c"switch.table.qedi_attr_is_visible\00", align 1
@___asan_gen_.511 = private unnamed_addr constant [38 x i8] c"switch.table.qedi_attr_is_visible.115\00", align 1
@llvm.compiler.used = appending global [138 x ptr] [ptr @qedi_alloc_sget._entry, ptr @qedi_alloc_sget._entry_ptr, ptr @qedi_bind_conn_to_iscsi_cid._entry, ptr @qedi_bind_conn_to_iscsi_cid._entry_ptr, ptr @qedi_conn_alloc_login_resources._entry, ptr @qedi_conn_alloc_login_resources._entry_ptr, ptr @qedi_conn_create._entry, ptr @qedi_conn_create._entry_ptr, ptr @qedi_conn_start._entry, ptr @qedi_conn_start._entry.28, ptr @qedi_conn_start._entry_ptr, ptr @qedi_conn_start._entry_ptr.30, ptr @qedi_iscsi_send_generic_request._entry, ptr @qedi_iscsi_send_generic_request._entry_ptr, ptr @qedi_process_iscsi_error._entry, ptr @qedi_process_iscsi_error._entry_ptr, ptr @.str, ptr @.str.1, ptr @qedi_host_template, ptr @.str.2, ptr @.str.3, ptr @qedi_iscsi_transport, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @qedi_conn_create.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @qedi_conn_bind.__key, ptr @.str.21, ptr @qedi_conn_bind.__key.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @qedi_ep_connect.__key, ptr @.str.48, ptr @qedi_ep_connect.__key.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @qedi_set_path.__key, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @qedi_iscsi_error, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @switch.table.qedi_attr_is_visible, ptr @switch.table.qedi_attr_is_visible.115], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_iscsi_transport to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_process_iscsi_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_alloc_sget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_conn_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_conn_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_conn_alloc_login_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_conn_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_conn_bind.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_bind_conn_to_iscsi_cid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_conn_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_conn_start._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_iscsi_send_generic_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_ep_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_ep_connect.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_set_path.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_iscsi_error to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qedi_attr_is_visible to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qedi_attr_is_visible.115 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedi_recover_all_conns(ptr noundef %qedi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_active_conns = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 34
  %0 = ptrtoint ptr %max_active_conns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_active_conns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conn_cid_tbl.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 36, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %conn_cid_tbl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn_cid_tbl.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %qedi_get_conn_from_id.exit.thread, label %qedi_get_conn_from_id.exit

qedi_get_conn_from_id.exit.thread:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_get_conn_from_id, i32 noundef 370, ptr noundef nonnull @.str.2) #11
  br label %for.inc

qedi_get_conn_from_id.exit:                       ; preds = %for.body
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %i.011
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %qedi_get_conn_from_id.exit.for.inc_crit_edge, label %if.end

qedi_get_conn_from_id.exit.for.inc_crit_edge:     ; preds = %qedi_get_conn_from_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %qedi_get_conn_from_id.exit
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dd_data.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dd_data.i, align 8
  %parent.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %7, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 -408
  %call.i = tail call i32 @iscsi_is_session_online(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i6 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i6, label %if.end.for.inc_crit_edge, label %if.then.i7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i7:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %abrt_conn.i = getelementptr inbounds %struct.qedi_conn, ptr %5, i32 0, i32 11
  %12 = ptrtoint ptr %abrt_conn.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %abrt_conn.i, align 4
  %session.i = getelementptr inbounds %struct.iscsi_conn, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %session.i, align 8
  %state.i = getelementptr inbounds %struct.iscsi_session, ptr %14, i32 0, i32 54
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i, align 4
  %iscsi_conn_id.i = getelementptr inbounds %struct.qedi_conn, ptr %5, i32 0, i32 9
  %17 = ptrtoint ptr %iscsi_conn_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iscsi_conn_id.i, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_start_conn_recovery, i32 noundef 1516, ptr noundef nonnull @.str.4, i32 noundef %16, i32 noundef %18) #11
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %dd_data3.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %dd_data3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dd_data3.i, align 8
  tail call void @iscsi_conn_failure(ptr noundef %22, i32 noundef 1011) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then.i7, %if.end.for.inc_crit_edge, %qedi_get_conn_from_id.exit.for.inc_crit_edge, %qedi_get_conn_from_id.exit.thread
  %inc = add nuw i32 %i.011, 1
  %23 = ptrtoint ptr %max_active_conns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_active_conns, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 8194
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qedi_get_conn_from_id(ptr noundef %qedi, i32 noundef %iscsi_cid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_cid_tbl = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 36, i32 6
  %0 = ptrtoint ptr %conn_cid_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn_cid_tbl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_get_conn_from_id, i32 noundef 370, ptr noundef nonnull @.str.2) #11
  br label %return

if.else:                                          ; preds = %entry
  %max_active_conns = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 34
  %2 = ptrtoint ptr %max_active_conns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_active_conns, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %iscsi_cid)
  %cmp.not = icmp ugt i32 %3, %iscsi_cid
  br i1 %cmp.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_get_conn_from_id, i32 noundef 374, ptr noundef nonnull @.str.3, i32 noundef %iscsi_cid) #11
  br label %return

if.end3:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr ptr, ptr %1, i32 %iscsi_cid
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then1, %if.then
  %retval.0 = phi ptr [ null, %if.then1 ], [ %5, %if.end3 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_start_conn_recovery(ptr noundef %qedi, ptr nocapture noundef %qedi_conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qedi_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedi_conn, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 8
  %parent = getelementptr inbounds %struct.iscsi_cls_conn, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 -408
  %call = tail call i32 @iscsi_is_session_online(ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %abrt_conn = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 11
  %6 = ptrtoint ptr %abrt_conn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %abrt_conn, align 4
  %session = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %session, align 8
  %state = getelementptr inbounds %struct.iscsi_session, ptr %8, i32 0, i32 54
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  %iscsi_conn_id = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn, i32 0, i32 9
  %11 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iscsi_conn_id, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_start_conn_recovery, i32 noundef 1516, ptr noundef nonnull @.str.4, i32 noundef %10, i32 noundef %12) #11
  %13 = ptrtoint ptr %qedi_conn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qedi_conn, align 4
  %dd_data3 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dd_data3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dd_data3, align 8
  tail call void @iscsi_conn_failure(ptr noundef %16, i32 noundef 1011) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_queuecommand(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_abort(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_device_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_recover_target(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_eh_host_reset(ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 1
  %call1 = tail call i32 @qedi_recover_all_conns(ptr noundef %add.ptr)
  ret i32 8194
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_target_alloc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_cmd_timed_out(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_mark_device_missing(ptr nocapture noundef readonly %cls_session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 16
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %leadconn = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %leadconn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %leadconn, align 4
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data1, align 4
  %frwd_lock = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_bh(ptr noundef %frwd_lock) #11
  %qedi = getelementptr inbounds %struct.qedi_conn, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %qedi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qedi, align 4
  %flags = getelementptr inbounds %struct.qedi_ctx, ptr %7, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %frwd_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_mark_device_available(ptr nocapture noundef readonly %cls_session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 16
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %leadconn = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %leadconn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %leadconn, align 4
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data1, align 4
  %frwd_lock = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_bh(ptr noundef %frwd_lock) #11
  %qedi = getelementptr inbounds %struct.qedi_conn, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %qedi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qedi, align 4
  %flags = getelementptr inbounds %struct.qedi_ctx, ptr %7, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %frwd_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_err(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qedi_session_create(ptr noundef readonly %ep, i16 noundef zeroext %cmds_max, i16 noundef zeroext %qdepth, i32 noundef %initial_cmdsn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %shost2 = getelementptr inbounds %struct.qedi_ctx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %shost2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost2, align 4
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %5, i32 1, i32 5, i32 5, i32 1
  %conv = zext i16 %cmds_max to i32
  %max_sqes = getelementptr %struct.Scsi_Host, ptr %5, i32 2, i32 3, i32 0, i32 0, i32 4
  %6 = ptrtoint ptr %max_sqes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_sqes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp ult i32 %7, %conv
  %conv6 = trunc i32 %7 to i16
  %8 = tail call i16 @llvm.umax.i16(i16 %cmds_max, i16 16)
  %cmds_max.addr.0 = select i1 %cmp, i16 %conv6, i16 %8
  %call13 = tail call ptr @iscsi_session_setup(ptr noundef nonnull @qedi_iscsi_transport, ptr noundef %5, i16 noundef zeroext %cmds_max.addr.0, i32 noundef 0, i32 noundef 756, i32 noundef %initial_cmdsn, i32 noundef -1) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_session_create, i32 noundef 263, ptr noundef nonnull @.str.11, ptr noundef %1) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %dd_data17 = getelementptr inbounds %struct.iscsi_cls_session, ptr %call13, i32 0, i32 16
  %9 = ptrtoint ptr %dd_data17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dd_data17, align 4
  %cmds_max.i = getelementptr inbounds %struct.iscsi_session, ptr %10, i32 0, i32 57
  %11 = ptrtoint ptr %cmds_max.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmds_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp41.i = icmp sgt i32 %12, 0
  br i1 %cmp41.i, label %for.body.lr.ph.i, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end16
  %cmds.i = getelementptr inbounds %struct.iscsi_session, ptr %10, i32 0, i32 58
  %pdev.i.i = getelementptr %struct.Scsi_Host, ptr %5, i32 1, i32 5, i32 5, i32 6
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %13 = ptrtoint ptr %cmds_max.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmds_max.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %14
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmds.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %i.042.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %dd_data.i = getelementptr inbounds %struct.iscsi_task, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dd_data.i, align 4
  %hdr.i = getelementptr inbounds %struct.qedi_cmd, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %hdr.i, ptr %18, align 4
  %hdr_max.i = getelementptr inbounds %struct.iscsi_task, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %hdr_max.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 48, ptr %hdr_max.i, align 4
  %io_tbl.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %sge_tbl_dma.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %20, i32 0, i32 6, i32 1
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef 4080, ptr noundef %sge_tbl_dma.i.i, i32 noundef 3264, i32 noundef 0) #11
  %25 = ptrtoint ptr %io_tbl.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i.i, ptr %io_tbl.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %qedi_alloc_sget.exit.i, label %if.end.i

qedi_alloc_sget.exit.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %10, align 4
  %dev2.i.i = getelementptr inbounds %struct.iscsi_cls_session, ptr %27, i32 0, i32 17
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev2.i.i, ptr noundef nonnull @.str.13) #14
  br label %free_sgets.i

if.end.i:                                         ; preds = %for.body.i
  %sge_valid.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %20, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %sge_valid.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %sge_valid.i.i, align 4
  %29 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %sense_buffer_dma.i = getelementptr inbounds %struct.qedi_cmd, ptr %20, i32 0, i32 9
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 96, ptr noundef %sense_buffer_dma.i, i32 noundef 3264, i32 noundef 0) #11
  %sense_buffer.i = getelementptr inbounds %struct.qedi_cmd, ptr %20, i32 0, i32 8
  %31 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i, ptr %sense_buffer.i, align 4
  %tobool4.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.free_sgets.i_crit_edge, label %for.cond.i

if.end.i.free_sgets.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_sgets.i

free_sgets.i:                                     ; preds = %if.end.i.free_sgets.i_crit_edge, %qedi_alloc_sget.exit.i
  %32 = ptrtoint ptr %cmds_max.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmds_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp20.i.i = icmp sgt i32 %33, 0
  br i1 %cmp20.i.i, label %free_sgets.i.for.body.i.i_crit_edge, label %free_sgets.i.if.then20_crit_edge

free_sgets.i.if.then20_crit_edge:                 ; preds = %free_sgets.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

free_sgets.i.for.body.i.i_crit_edge:              ; preds = %free_sgets.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end9.i.i.for.body.i.i_crit_edge, %free_sgets.i.for.body.i.i_crit_edge
  %i.021.i.i = phi i32 [ %inc.i.i, %if.end9.i.i.for.body.i.i_crit_edge ], [ 0, %free_sgets.i.for.body.i.i_crit_edge ]
  %34 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmds.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %35, i32 %i.021.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  %dd_data.i.i = getelementptr inbounds %struct.iscsi_task, ptr %37, i32 0, i32 20
  %38 = ptrtoint ptr %dd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dd_data.i.i, align 4
  %io_tbl.i23.i = getelementptr inbounds %struct.qedi_cmd, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %io_tbl.i23.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_tbl.i23.i, align 4
  %tobool.not.i24.i = icmp eq ptr %41, null
  br i1 %tobool.not.i24.i, label %for.body.i.i.if.end.i27.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i27.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i27.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev.i.i, align 8
  %dev.i25.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %sge_tbl_dma.i26.i = getelementptr inbounds %struct.qedi_cmd, ptr %39, i32 0, i32 6, i32 1
  %44 = ptrtoint ptr %sge_tbl_dma.i26.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sge_tbl_dma.i26.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i25.i, i32 noundef 4080, ptr noundef nonnull %41, i32 noundef %45, i32 noundef 0) #11
  br label %if.end.i27.i

if.end.i27.i:                                     ; preds = %if.then.i.i, %for.body.i.i.if.end.i27.i_crit_edge
  %sense_buffer.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %39, i32 0, i32 8
  %46 = ptrtoint ptr %sense_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sense_buffer.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %47, null
  br i1 %tobool4.not.i.i, label %if.end.i27.i.if.end9.i.i_crit_edge, label %if.then5.i.i

if.end.i27.i.if.end9.i.i_crit_edge:               ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.then5.i.i:                                     ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i.i, align 8
  %dev7.i.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %sense_buffer_dma.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %39, i32 0, i32 9
  %50 = ptrtoint ptr %sense_buffer_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sense_buffer_dma.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev7.i.i, i32 noundef 96, ptr noundef nonnull %47, i32 noundef %51, i32 noundef 0) #11
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then5.i.i, %if.end.i27.i.if.end9.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %52 = ptrtoint ptr %cmds_max.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cmds_max.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %53
  br i1 %cmp.i.i, label %if.end9.i.i.for.body.i.i_crit_edge, label %if.end9.i.i.if.then20_crit_edge

if.end9.i.i.if.then20_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.end9.i.i.for.body.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.then20:                                        ; preds = %if.end9.i.i.if.then20_crit_edge, %free_sgets.i.if.then20_crit_edge
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_session_create, i32 noundef 269, ptr noundef nonnull @.str.12, ptr noundef %1) #11
  tail call void @iscsi_session_teardown(ptr noundef nonnull %call13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %for.cond.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then20 ], [ null, %if.then15 ], [ null, %entry.cleanup_crit_edge ], [ %call13, %if.end16.cleanup_crit_edge ], [ %call13, %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_session_destroy(ptr noundef %cls_session) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 16
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %parent = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %3, %entry ], [ %5, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %cmds_max.i = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 57
  %6 = ptrtoint ptr %cmds_max.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmds_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp20.i = icmp sgt i32 %7, 0
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %dev_to_shost.exit.qedi_destroy_cmd_pool.exit_crit_edge

dev_to_shost.exit.qedi_destroy_cmd_pool.exit_crit_edge: ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %qedi_destroy_cmd_pool.exit

for.body.lr.ph.i:                                 ; preds = %dev_to_shost.exit
  %cmds.i = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 58
  %pdev.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end9.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmds.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %i.021.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %dd_data.i = getelementptr inbounds %struct.iscsi_task, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dd_data.i, align 4
  %io_tbl.i = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %io_tbl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_tbl.i, align 4
  %tobool.not.i4 = icmp eq ptr %15, null
  br i1 %tobool.not.i4, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %sge_tbl_dma.i = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %sge_tbl_dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sge_tbl_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4080, ptr noundef nonnull %15, i32 noundef %19, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %sense_buffer.i = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 8
  %20 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sense_buffer.i, align 4
  %tobool4.not.i = icmp eq ptr %21, null
  br i1 %tobool4.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then5.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %sense_buffer_dma.i = getelementptr inbounds %struct.qedi_cmd, ptr %13, i32 0, i32 9
  %24 = ptrtoint ptr %sense_buffer_dma.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sense_buffer_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev7.i, i32 noundef 96, ptr noundef nonnull %21, i32 noundef %25, i32 noundef 0) #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %if.end.i.if.end9.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %26 = ptrtoint ptr %cmds_max.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmds_max.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %27
  br i1 %cmp.i, label %if.end9.i.for.body.i_crit_edge, label %if.end9.i.qedi_destroy_cmd_pool.exit_crit_edge

if.end9.i.qedi_destroy_cmd_pool.exit_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qedi_destroy_cmd_pool.exit

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

qedi_destroy_cmd_pool.exit:                       ; preds = %if.end9.i.qedi_destroy_cmd_pool.exit_crit_edge, %dev_to_shost.exit.qedi_destroy_cmd_pool.exit_crit_edge
  tail call void @iscsi_session_teardown(ptr noundef %cls_session) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qedi_conn_create(ptr noundef %cls_session, i32 noundef %cid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 1
  %call2 = tail call ptr @iscsi_conn_setup(ptr noundef %cls_session, i32 noundef 304, i32 noundef %cid) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_conn_create, i32 noundef 304, ptr noundef nonnull @.str.16, i32 noundef %cid, ptr noundef %cls_session) #11
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %call2, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 8
  %dd_data3 = getelementptr inbounds %struct.iscsi_conn, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dd_data3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dd_data3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %7, align 4
  %qedi5 = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %qedi5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %qedi5, align 4
  %ep = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ep, align 4
  %active_cmd_count = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 6
  %11 = ptrtoint ptr %active_cmd_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %active_cmd_count, align 4
  %active_cmd_list = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %active_cmd_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %active_cmd_list, ptr %active_cmd_list, align 4
  %prev.i = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %active_cmd_list, ptr %prev.i, align 4
  %list_lock = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %list_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @qedi_conn_create.__key, i16 noundef signext 3) #11
  %pdev.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 6
  %14 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %gen_pdu.i = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 13
  %req_dma_addr.i = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 13, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 8192, ptr noundef %req_dma_addr.i, i32 noundef 3264, i32 noundef 0) #11
  %16 = ptrtoint ptr %gen_pdu.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %gen_pdu.i, align 4
  %tobool.not.i38 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i38, label %if.end.do.end12_crit_edge, label %if.end.i

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

if.end.i:                                         ; preds = %if.end
  %req_buf_size.i = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 13, i32 2
  %17 = ptrtoint ptr %req_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %req_buf_size.i, align 4
  %req_wr_ptr.i = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 13, i32 3
  %18 = ptrtoint ptr %req_wr_ptr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i, ptr %req_wr_ptr.i, align 4
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 8
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %resp_dma_addr.i = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 13, i32 6
  %call.i103.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev9.i, i32 noundef 8192, ptr noundef %resp_dma_addr.i, i32 noundef 3264, i32 noundef 0) #11
  %resp_buf.i = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 13, i32 5
  %21 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i103.i, ptr %resp_buf.i, align 4
  %tobool15.not.i = icmp eq ptr %call.i103.i, null
  br i1 %tobool15.not.i, label %if.end.i.login_resp_buf_failure.i_crit_edge, label %if.end17.i

if.end.i.login_resp_buf_failure.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %login_resp_buf_failure.i

if.end17.i:                                       ; preds = %if.end.i
  %resp_buf_size.i = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 13, i32 7
  %22 = ptrtoint ptr %resp_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8192, ptr %resp_buf_size.i, align 4
  %resp_wr_ptr.i = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 13, i32 8
  %23 = ptrtoint ptr %resp_wr_ptr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i103.i, ptr %resp_wr_ptr.i, align 4
  %24 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i, align 8
  %dev23.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %req_bd_dma.i = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 13, i32 10
  %call.i104.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev23.i, i32 noundef 4096, ptr noundef %req_bd_dma.i, i32 noundef 3264, i32 noundef 0) #11
  %req_bd_tbl.i = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 13, i32 9
  %26 = ptrtoint ptr %req_bd_tbl.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i104.i, ptr %req_bd_tbl.i, align 4
  %tobool29.not.i = icmp eq ptr %call.i104.i, null
  br i1 %tobool29.not.i, label %if.end17.i.login_req_bd_tbl_failure.i_crit_edge, label %if.end31.i

if.end17.i.login_req_bd_tbl_failure.i_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %login_req_bd_tbl_failure.i

if.end31.i:                                       ; preds = %if.end17.i
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 8
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %resp_bd_dma.i = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 13, i32 12
  %call.i105.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev33.i, i32 noundef 4096, ptr noundef %resp_bd_dma.i, i32 noundef 3264, i32 noundef 0) #11
  %resp_bd_tbl.i = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 13, i32 11
  %29 = ptrtoint ptr %resp_bd_tbl.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i105.i, ptr %resp_bd_tbl.i, align 4
  %tobool39.not.i = icmp eq ptr %call.i105.i, null
  br i1 %tobool39.not.i, label %login_resp_bd_tbl_failure.i, label %qedi_conn_alloc_login_resources.exit.thread

qedi_conn_alloc_login_resources.exit.thread:      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  %iscsi_conn_id.i = getelementptr inbounds %struct.qedi_conn, ptr %7, i32 0, i32 9
  %30 = ptrtoint ptr %iscsi_conn_id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iscsi_conn_id.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_conn_alloc_login_resources, i32 noundef 138, i32 noundef 131072, ptr noundef nonnull @.str.19, i32 noundef %31) #11
  br label %cleanup

login_resp_bd_tbl_failure.i:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 8
  %dev43.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %34 = ptrtoint ptr %req_bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req_bd_tbl.i, align 4
  %36 = ptrtoint ptr %req_bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %req_bd_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev43.i, i32 noundef 4096, ptr noundef %35, i32 noundef %37, i32 noundef 0) #11
  %38 = ptrtoint ptr %req_bd_tbl.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %req_bd_tbl.i, align 4
  br label %login_req_bd_tbl_failure.i

login_req_bd_tbl_failure.i:                       ; preds = %login_resp_bd_tbl_failure.i, %if.end17.i.login_req_bd_tbl_failure.i_crit_edge
  %39 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i, align 8
  %dev51.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %41 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %resp_buf.i, align 4
  %43 = ptrtoint ptr %resp_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %resp_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev51.i, i32 noundef 8192, ptr noundef %42, i32 noundef %44, i32 noundef 0) #11
  %45 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %resp_buf.i, align 4
  br label %login_resp_buf_failure.i

login_resp_buf_failure.i:                         ; preds = %login_req_bd_tbl_failure.i, %if.end.i.login_resp_buf_failure.i_crit_edge
  %46 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev.i, align 8
  %dev59.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %48 = ptrtoint ptr %gen_pdu.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gen_pdu.i, align 4
  %50 = ptrtoint ptr %req_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %req_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev59.i, i32 noundef 8192, ptr noundef %49, i32 noundef %51, i32 noundef 0) #11
  %52 = ptrtoint ptr %gen_pdu.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %gen_pdu.i, align 4
  br label %do.end12

do.end12:                                         ; preds = %login_resp_buf_failure.i, %if.end.do.end12_crit_edge
  %53 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %7, align 4
  %dd_data.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dd_data.i, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %dev67.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %58, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev67.i, ptr noundef nonnull @.str.20) #14
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %5, align 8
  %dev14 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %60, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev14, ptr noundef nonnull @.str.18, i32 noundef %cid, ptr noundef %cls_session) #14
  tail call void @iscsi_conn_teardown(ptr noundef nonnull %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %qedi_conn_alloc_login_resources.exit.thread, %if.then
  %retval.0 = phi ptr [ null, %do.end12 ], [ null, %if.then ], [ %call2, %qedi_conn_alloc_login_resources.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_unbind(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_conn_bind(ptr noundef %cls_session, ptr noundef %cls_conn, i64 noundef %transport_fd, i32 noundef %is_leading) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %parent = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %5, %entry ], [ %7, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %call3 = tail call ptr @iscsi_lookup_endpoint(i64 noundef %transport_fd) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %dev_to_shost.exit.cleanup_crit_edge, label %if.end

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %8 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call3, align 8
  %state = getelementptr inbounds %struct.qedi_endpoint, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end8 [
    i32 256, label %if.end.put_ep_crit_edge
    i32 512, label %if.end.put_ep_crit_edge60
  ]

if.end.put_ep_crit_edge60:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_ep

if.end.put_ep_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_ep

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @iscsi_conn_bind(ptr noundef %cls_session, ptr noundef %cls_conn, i32 noundef %is_leading) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.put_ep_crit_edge

if.end8.put_ep_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_ep

if.end12:                                         ; preds = %if.end8
  %conn13 = getelementptr inbounds %struct.qedi_endpoint, ptr %9, i32 0, i32 27
  %13 = ptrtoint ptr %conn13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %conn13, align 4
  %ep14 = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %ep14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %ep14, align 4
  %iscsi_ep = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %iscsi_ep to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call3, ptr %iscsi_ep, align 4
  %iscsi_cid = getelementptr inbounds %struct.qedi_endpoint, ptr %9, i32 0, i32 13
  %16 = ptrtoint ptr %iscsi_cid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iscsi_cid, align 4
  %iscsi_conn_id = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %iscsi_conn_id, align 4
  %fw_cid = getelementptr inbounds %struct.qedi_endpoint, ptr %9, i32 0, i32 15
  %19 = ptrtoint ptr %fw_cid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_cid, align 4
  %fw_cid15 = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 12
  %21 = ptrtoint ptr %fw_cid15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %fw_cid15, align 4
  %cmd_cleanup_req = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 7
  %22 = ptrtoint ptr %cmd_cleanup_req to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cmd_cleanup_req, align 4
  %cmd_cleanup_cmpl = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_cleanup_cmpl, i32 noundef 4) #11
  %23 = ptrtoint ptr %cmd_cleanup_cmpl to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %cmd_cleanup_cmpl, align 4
  %24 = ptrtoint ptr %iscsi_conn_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iscsi_conn_id, align 4
  %conn_cid_tbl.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 2, i32 5, i32 1, i32 1
  %26 = ptrtoint ptr %conn_cid_tbl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %conn_cid_tbl.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %27, i32 %25
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i50 = icmp eq ptr %29, null
  br i1 %tobool.not.i50, label %do.body, label %qedi_bind_conn_to_iscsi_cid.exit

qedi_bind_conn_to_iscsi_cid.exit:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %dd_data.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dd_data.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %dev.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %35, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev.i, ptr noundef nonnull @.str.24, i32 noundef %25) #14
  br label %put_ep

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %3, ptr %arrayidx.i, align 4
  %tmf_work_lock = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %tmf_work_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @qedi_conn_bind.__key, i16 noundef signext 3) #11
  %tmf_work_list = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 14
  %37 = ptrtoint ptr %tmf_work_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %tmf_work_list, ptr %tmf_work_list, align 4
  %prev.i = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 14, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %tmf_work_list, ptr %prev.i, align 4
  %wait_queue = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 15
  tail call void @__init_waitqueue_head(ptr noundef %wait_queue, ptr noundef nonnull @.str.23, ptr noundef nonnull @qedi_conn_bind.__key.22) #11
  br label %put_ep

put_ep:                                           ; preds = %do.body, %qedi_bind_conn_to_iscsi_cid.exit, %if.end8.put_ep_crit_edge, %if.end.put_ep_crit_edge, %if.end.put_ep_crit_edge60
  %rc.0 = phi i32 [ 0, %do.body ], [ -22, %if.end.put_ep_crit_edge ], [ -22, %if.end.put_ep_crit_edge60 ], [ -22, %if.end8.put_ep_crit_edge ], [ -22, %qedi_bind_conn_to_iscsi_cid.exit ]
  tail call void @iscsi_put_endpoint(ptr noundef nonnull %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %put_ep, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %put_ep ], [ -22, %dev_to_shost.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_conn_start(ptr noundef %cls_conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %qedi2 = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %qedi2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qedi2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dd_data.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dd_data.i, align 8
  %ep.i = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 24) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %qedi_iscsi_update_conn.exit.thread, label %if.end.i

qedi_iscsi_update_conn.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %5, ptr noundef nonnull @__func__.qedi_iscsi_update_conn, i32 noundef 444, ptr noundef nonnull @.str.31) #11
  br label %start_err.sink.split

if.end.i:                                         ; preds = %entry
  %hdrdgst_en.i = getelementptr inbounds %struct.iscsi_conn, ptr %9, i32 0, i32 25
  %13 = ptrtoint ptr %hdrdgst_en.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hdrdgst_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.i = icmp ne i32 %14, 0
  %spec.store.select.i = zext i1 %tobool2.not.i to i8
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.store.select.i, ptr %call7.i.i.i, align 8
  %datadgst_en.i = getelementptr inbounds %struct.iscsi_conn, ptr %9, i32 0, i32 26
  %16 = ptrtoint ptr %datadgst_en.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %datadgst_en.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not.i = icmp eq i32 %17, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end23.i_crit_edge, label %do.body12.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

do.body12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = or i8 %spec.store.select.i, 2
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %call7.i.i.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.body12.i, %if.end.i.if.end23.i_crit_edge
  %session.i = getelementptr inbounds %struct.iscsi_conn, ptr %9, i32 0, i32 2
  %20 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %session.i, align 8
  %initial_r2t_en.i = getelementptr inbounds %struct.iscsi_session, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %initial_r2t_en.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %initial_r2t_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool24.not.i = icmp eq i32 %23, 0
  br i1 %tobool24.not.i, label %if.end23.i.if.end37.i_crit_edge, label %do.body26.i

if.end23.i.if.end37.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

do.body26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %call7.i.i.i, align 8
  %26 = or i8 %25, 4
  store i8 %26, ptr %call7.i.i.i, align 8
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.body26.i, %if.end23.i.if.end37.i_crit_edge
  %27 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %session.i, align 8
  %imm_data_en.i = getelementptr inbounds %struct.iscsi_session, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %imm_data_en.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %imm_data_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool39.not.i = icmp eq i32 %30, 0
  br i1 %tobool39.not.i, label %if.end37.i.if.end52.i_crit_edge, label %do.body41.i

if.end37.i.if.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

do.body41.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %call7.i.i.i, align 8
  %33 = or i8 %32, 8
  store i8 %33, ptr %call7.i.i.i, align 8
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.body41.i, %if.end37.i.if.end52.i_crit_edge
  %34 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %session.i, align 8
  %max_burst.i = getelementptr inbounds %struct.iscsi_session, ptr %35, i32 0, i32 18
  %36 = ptrtoint ptr %max_burst.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_burst.i, align 4
  %max_seq_size.i = getelementptr inbounds %struct.qed_iscsi_params_update, ptr %call7.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %max_seq_size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %max_seq_size.i, align 4
  %max_recv_dlength.i = getelementptr inbounds %struct.iscsi_conn, ptr %9, i32 0, i32 23
  %39 = ptrtoint ptr %max_recv_dlength.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_recv_dlength.i, align 4
  %max_recv_pdu_length.i = getelementptr inbounds %struct.qed_iscsi_params_update, ptr %call7.i.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %max_recv_pdu_length.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_recv_pdu_length.i, align 8
  %max_xmit_dlength.i = getelementptr inbounds %struct.iscsi_conn, ptr %9, i32 0, i32 24
  %42 = ptrtoint ptr %max_xmit_dlength.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_xmit_dlength.i, align 8
  %max_send_pdu_length.i = getelementptr inbounds %struct.qed_iscsi_params_update, ptr %call7.i.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %max_send_pdu_length.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %max_send_pdu_length.i, align 4
  %45 = load ptr, ptr %session.i, align 8
  %first_burst.i = getelementptr inbounds %struct.iscsi_session, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %first_burst.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %first_burst.i, align 4
  %first_seq_length.i = getelementptr inbounds %struct.qed_iscsi_params_update, ptr %call7.i.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %first_seq_length.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %first_seq_length.i, align 8
  %exp_statsn.i = getelementptr inbounds %struct.iscsi_conn, ptr %9, i32 0, i32 10
  %49 = ptrtoint ptr %exp_statsn.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %exp_statsn.i, align 4
  %exp_stat_sn.i = getelementptr inbounds %struct.qed_iscsi_params_update, ptr %call7.i.i.i, i32 0, i32 5
  %51 = ptrtoint ptr %exp_stat_sn.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %exp_stat_sn.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_ops to i32))
  %52 = load ptr, ptr @qedi_ops, align 4
  %update_conn.i = getelementptr inbounds %struct.qed_iscsi_ops, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %update_conn.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %update_conn.i, align 4
  %cdev.i = getelementptr inbounds %struct.qedi_ctx, ptr %5, i32 0, i32 3
  %55 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cdev.i, align 4
  %handle.i = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 14
  %57 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %handle.i, align 4
  %call55.i = tail call i32 %54(ptr noundef %56, i32 noundef %58, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end, label %qedi_iscsi_update_conn.exit

qedi_iscsi_update_conn.exit:                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %5, ptr noundef nonnull @__func__.qedi_iscsi_update_conn, i32 noundef 475, ptr noundef nonnull @.str.32) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %start_err.sink.split

if.end:                                           ; preds = %if.end52.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %tmf_work_lock = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tmf_work_lock) #11
  %fw_cleanup_works = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 18
  %59 = ptrtoint ptr %fw_cleanup_works to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %fw_cleanup_works, align 4
  %ep_disconnect_starting = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 17
  %60 = ptrtoint ptr %ep_disconnect_starting to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %ep_disconnect_starting, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tmf_work_lock) #11
  %abrt_conn = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 11
  %61 = ptrtoint ptr %abrt_conn to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %abrt_conn, align 4
  %call5 = tail call i32 @iscsi_conn_start(ptr noundef %cls_conn) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.start_err_crit_edge, label %if.end.start_err.sink.split_crit_edge

if.end.start_err.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_err.sink.split

if.end.start_err_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_err

start_err.sink.split:                             ; preds = %if.end.start_err.sink.split_crit_edge, %qedi_iscsi_update_conn.exit, %qedi_iscsi_update_conn.exit.thread
  %.str.29.sink = phi ptr [ @.str.26, %qedi_iscsi_update_conn.exit ], [ @.str.26, %qedi_iscsi_update_conn.exit.thread ], [ @.str.29, %if.end.start_err.sink.split_crit_edge ]
  %rval.0.ph = phi i32 [ -22, %qedi_iscsi_update_conn.exit ], [ -22, %qedi_iscsi_update_conn.exit.thread ], [ %call5, %if.end.start_err.sink.split_crit_edge ]
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %dev12 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %63, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev12, ptr noundef nonnull %.str.29.sink) #14
  br label %start_err

start_err:                                        ; preds = %start_err.sink.split, %if.end.start_err_crit_edge
  %rval.0 = phi i32 [ 0, %if.end.start_err_crit_edge ], [ %rval.0.ph, %start_err.sink.split ]
  ret i32 %rval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_stop(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_conn_destroy(ptr noundef %cls_conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %parent = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %parent3 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent3, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %7, %entry ], [ %9, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %gen_pdu.i = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 13
  %resp_bd_tbl.i = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 13, i32 11
  %10 = ptrtoint ptr %resp_bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resp_bd_tbl.i, align 4
  %tobool.not.i8 = icmp eq ptr %11, null
  br i1 %tobool.not.i8, label %dev_to_shost.exit.if.end.i_crit_edge, label %if.then.i

dev_to_shost.exit.if.end.i_crit_edge:             ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 6
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %resp_bd_dma.i = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 13, i32 12
  %14 = ptrtoint ptr %resp_bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resp_bd_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %11, i32 noundef %15, i32 noundef 0) #11
  %16 = ptrtoint ptr %resp_bd_tbl.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %resp_bd_tbl.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %dev_to_shost.exit.if.end.i_crit_edge
  %req_bd_tbl.i = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 13, i32 9
  %17 = ptrtoint ptr %req_bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req_bd_tbl.i, align 4
  %tobool7.not.i = icmp eq ptr %18, null
  br i1 %tobool7.not.i, label %if.end.i.if.end16.i_crit_edge, label %if.then8.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %pdev9.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 6
  %19 = ptrtoint ptr %pdev9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev9.i, align 8
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %req_bd_dma.i = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 13, i32 10
  %21 = ptrtoint ptr %req_bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %req_bd_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10.i, i32 noundef 4096, ptr noundef nonnull %18, i32 noundef %22, i32 noundef 0) #11
  %23 = ptrtoint ptr %req_bd_tbl.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %req_bd_tbl.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then8.i, %if.end.i.if.end16.i_crit_edge
  %resp_buf.i = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 13, i32 5
  %24 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resp_buf.i, align 4
  %tobool18.not.i = icmp eq ptr %25, null
  br i1 %tobool18.not.i, label %if.end16.i.if.end27.i_crit_edge, label %if.then19.i

if.end16.i.if.end27.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %pdev20.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 6
  %26 = ptrtoint ptr %pdev20.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev20.i, align 8
  %dev21.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %resp_dma_addr.i = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 13, i32 6
  %28 = ptrtoint ptr %resp_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resp_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev21.i, i32 noundef 8192, ptr noundef nonnull %25, i32 noundef %29, i32 noundef 0) #11
  %30 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %resp_buf.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end27.i_crit_edge
  %31 = ptrtoint ptr %gen_pdu.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gen_pdu.i, align 4
  %tobool29.not.i = icmp eq ptr %32, null
  br i1 %tobool29.not.i, label %if.end27.i.qedi_conn_free_login_resources.exit_crit_edge, label %if.then30.i

if.end27.i.qedi_conn_free_login_resources.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qedi_conn_free_login_resources.exit

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %pdev31.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 6
  %33 = ptrtoint ptr %pdev31.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev31.i, align 8
  %dev32.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %req_dma_addr.i = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 13, i32 1
  %35 = ptrtoint ptr %req_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %req_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev32.i, i32 noundef 8192, ptr noundef nonnull %32, i32 noundef %36, i32 noundef 0) #11
  %37 = ptrtoint ptr %gen_pdu.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %gen_pdu.i, align 4
  br label %qedi_conn_free_login_resources.exit

qedi_conn_free_login_resources.exit:              ; preds = %if.then30.i, %if.end27.i.qedi_conn_free_login_resources.exit_crit_edge
  tail call void @iscsi_conn_teardown(ptr noundef %cls_conn) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_set_param(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_ep_get_param(ptr nocapture noundef readonly %ep, i32 noundef %param, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %param, label %if.end.cleanup_crit_edge [
    i32 20, label %sw.bb
    i32 21, label %sw.bb1
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dst_port = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dst_port, align 2
  %conv = zext i16 %4 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %conv)
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %ip_type = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %ip_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  %dst_addr = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, ptr noundef %dst_addr)
  br label %cleanup

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef %dst_addr)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %entry.cleanup_crit_edge ], [ -107, %if.end.cleanup_crit_edge ], [ %call5, %if.then4 ], [ %call8, %if.else ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_get_param(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_session_get_param(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_host_get_param(ptr noundef %shost, i32 noundef %param, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %param, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mac = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 1, i32 4, i32 2
  %call1 = tail call i32 @sysfs_format_mac(ptr noundef %buf, ptr noundef %mac, i32 noundef 6) #11
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 17
  %1 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %host_no, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %2)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %ip_type = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 3, i32 1
  %3 = ptrtoint ptr %ip_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ip_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  %src_ip = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 1, i32 4, i32 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, ptr noundef %src_ip)
  br label %cleanup

if.else:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef %src_ip)
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 @iscsi_host_get_param(ptr noundef %shost, i32 noundef %param, ptr noundef %buf) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.else, %if.then, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ %call11, %sw.default ], [ %call7, %if.then ], [ %call10, %if.else ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_send_pdu(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_conn_get_stats(ptr nocapture noundef readonly %cls_conn, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  %iscsi_stats = alloca %struct.qed_iscsi_stats, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %iscsi_stats) #11
  %2 = call ptr @memset(ptr %iscsi_stats, i32 255, i32 128)
  %parent = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %parent2 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent2, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %6, %entry ], [ %8, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_ops to i32))
  %9 = load ptr, ptr @qedi_ops, align 4
  %get_stats = getelementptr inbounds %struct.qed_iscsi_ops, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %get_stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_stats, align 4
  %cdev = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 7
  %12 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cdev, align 4
  %call5 = call i32 %11(ptr noundef %13, ptr noundef nonnull %iscsi_stats) #11
  %iscsi_tx_bytes_cnt = getelementptr inbounds %struct.qed_iscsi_stats, ptr %iscsi_stats, i32 0, i32 15
  %14 = ptrtoint ptr %iscsi_tx_bytes_cnt to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %iscsi_tx_bytes_cnt, align 8
  %txdata_octets = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 47
  %16 = ptrtoint ptr %txdata_octets to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %txdata_octets, align 8
  %17 = ptrtoint ptr %iscsi_stats to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %iscsi_stats, align 8
  %rxdata_octets = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 48
  %19 = ptrtoint ptr %rxdata_octets to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %rxdata_octets, align 8
  %iscsi_tx_data_pdu_cnt = getelementptr inbounds %struct.qed_iscsi_stats, ptr %iscsi_stats, i32 0, i32 12
  %20 = ptrtoint ptr %iscsi_tx_data_pdu_cnt to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %iscsi_tx_data_pdu_cnt, align 8
  %conv = trunc i64 %21 to i32
  %dataout_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 50
  %22 = ptrtoint ptr %dataout_pdus_cnt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %dataout_pdus_cnt, align 4
  %iscsi_rx_data_pdu_cnt = getelementptr inbounds %struct.qed_iscsi_stats, ptr %iscsi_stats, i32 0, i32 7
  %23 = ptrtoint ptr %iscsi_rx_data_pdu_cnt to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %iscsi_rx_data_pdu_cnt, align 8
  %conv6 = trunc i64 %24 to i32
  %datain_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 52
  %25 = ptrtoint ptr %datain_pdus_cnt to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv6, ptr %datain_pdus_cnt, align 4
  %iscsi_rx_r2t_pdu_cnt = getelementptr inbounds %struct.qed_iscsi_stats, ptr %iscsi_stats, i32 0, i32 8
  %26 = ptrtoint ptr %iscsi_rx_r2t_pdu_cnt to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %iscsi_rx_r2t_pdu_cnt, align 8
  %conv7 = trunc i64 %27 to i32
  %r2t_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 53
  %28 = ptrtoint ptr %r2t_pdus_cnt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv7, ptr %r2t_pdus_cnt, align 8
  %29 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %15, ptr %stats, align 8
  %30 = load i64, ptr %rxdata_octets, align 8
  %rxdata_octets11 = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 1
  %31 = ptrtoint ptr %rxdata_octets11 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %rxdata_octets11, align 8
  %scsicmd_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 49
  %32 = ptrtoint ptr %scsicmd_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %scsicmd_pdus_cnt, align 8
  %scsicmd_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 3
  %34 = ptrtoint ptr %scsicmd_pdus to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %scsicmd_pdus, align 4
  %35 = load i32, ptr %dataout_pdus_cnt, align 4
  %dataout_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 7
  %36 = ptrtoint ptr %dataout_pdus to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %dataout_pdus, align 4
  %scsirsp_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 51
  %37 = ptrtoint ptr %scsirsp_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %scsirsp_pdus_cnt, align 8
  %scsirsp_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 11
  %39 = ptrtoint ptr %scsirsp_pdus to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %scsirsp_pdus, align 4
  %40 = load i32, ptr %datain_pdus_cnt, align 4
  %datain_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 14
  %41 = ptrtoint ptr %datain_pdus to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %datain_pdus, align 8
  %42 = load i32, ptr %r2t_pdus_cnt, align 8
  %r2t_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 16
  %43 = ptrtoint ptr %r2t_pdus to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %r2t_pdus, align 8
  %tmfcmd_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 54
  %44 = ptrtoint ptr %tmfcmd_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tmfcmd_pdus_cnt, align 4
  %tmfcmd_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 4
  %46 = ptrtoint ptr %tmfcmd_pdus to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tmfcmd_pdus, align 8
  %tmfrsp_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 55
  %47 = ptrtoint ptr %tmfrsp_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tmfrsp_pdus_cnt, align 8
  %tmfrsp_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 12
  %49 = ptrtoint ptr %tmfrsp_pdus to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tmfrsp_pdus, align 8
  %digest_err = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 19
  %50 = ptrtoint ptr %digest_err to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %digest_err, align 4
  %timeout_err = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 20
  %51 = ptrtoint ptr %timeout_err to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %timeout_err, align 8
  %custom = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 22
  %52 = call ptr @memcpy(ptr %custom, ptr @.str.37, i32 13)
  %eh_abort_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 56
  %53 = ptrtoint ptr %eh_abort_cnt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %eh_abort_cnt, align 4
  %conv16 = zext i32 %54 to i64
  %value = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 1, i32 14
  %55 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv16, ptr %value, align 8
  %custom_length = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 21
  %56 = ptrtoint ptr %custom_length to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %custom_length, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %iscsi_stats) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_task_xmit(ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
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
  %sc3 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 11
  %6 = ptrtoint ptr %sc3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc3, align 4
  %scsi_cmd = getelementptr inbounds %struct.qedi_cmd, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %scsi_cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %scsi_cmd, align 4
  %task_id = getelementptr inbounds %struct.qedi_cmd, ptr %5, i32 0, i32 10
  %9 = ptrtoint ptr %task_id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %task_id, align 4
  %qedi = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %qedi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qedi, align 4
  %flags = getelementptr inbounds %struct.qedi_ctx, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.qedi_cmd, ptr %5, i32 0, i32 13
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %state, align 4
  %task10 = getelementptr inbounds %struct.qedi_cmd, ptr %5, i32 0, i32 11
  %use_slowpath = getelementptr inbounds %struct.qedi_cmd, ptr %5, i32 0, i32 16
  %19 = ptrtoint ptr %use_slowpath to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %use_slowpath, align 4
  %conn11 = getelementptr inbounds %struct.qedi_cmd, ptr %5, i32 0, i32 3
  %20 = ptrtoint ptr %conn11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %3, ptr %conn11, align 4
  %21 = ptrtoint ptr %task10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %task, ptr %task10, align 4
  %io_cmd_in_list = getelementptr inbounds %struct.qedi_cmd, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %io_cmd_in_list to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %io_cmd_in_list, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %5, ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %5, ptr %prev.i, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end9
  %25 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dd_data, align 4
  %27 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dd_data2, align 4
  %gen_pdu.i = getelementptr inbounds %struct.qedi_conn, ptr %26, i32 0, i32 13
  %29 = ptrtoint ptr %gen_pdu.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gen_pdu.i, align 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 8192)
  %data_count.i = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 10
  %32 = ptrtoint ptr %data_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_count.i, align 4
  %req_buf_size.i = getelementptr inbounds %struct.qedi_conn, ptr %26, i32 0, i32 13, i32 2
  %34 = ptrtoint ptr %req_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %req_buf_size.i, align 4
  %35 = load i32, ptr %data_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %if.then14.if.end.i_crit_edge, label %if.then.i

if.then14.if.end.i_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %gen_pdu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gen_pdu.i, align 4
  %data.i = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 9
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %40 = call ptr @memcpy(ptr %37, ptr %39, i32 %35)
  %41 = load ptr, ptr %gen_pdu.i, align 4
  %42 = ptrtoint ptr %data_count.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_count.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 %43
  %req_wr_ptr.i = getelementptr inbounds %struct.qedi_conn, ptr %26, i32 0, i32 13, i32 3
  %44 = ptrtoint ptr %req_wr_ptr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i, ptr %req_wr_ptr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then14.if.end.i_crit_edge
  %45 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dd_data, align 4
  %conn12.i = getelementptr inbounds %struct.qedi_cmd, ptr %28, i32 0, i32 3
  %47 = ptrtoint ptr %conn12.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %conn12.i, align 4
  %48 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dd_data2, align 4
  %conn.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %conn.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %conn.i.i, align 4
  %gen_pdu.i.i.i = getelementptr inbounds %struct.qedi_conn, ptr %51, i32 0, i32 13
  %req_bd_tbl.i.i.i = getelementptr inbounds %struct.qedi_conn, ptr %51, i32 0, i32 13, i32 9
  %52 = ptrtoint ptr %req_bd_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %req_bd_tbl.i.i.i, align 4
  %req_dma_addr.i.i.i = getelementptr inbounds %struct.qedi_conn, ptr %51, i32 0, i32 13, i32 1
  %hi.i.i.i = getelementptr inbounds %struct.regpair, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %hi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %hi.i.i.i, align 4
  %55 = ptrtoint ptr %req_dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %req_dma_addr.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %53, align 4
  %req_wr_ptr.i.i.i = getelementptr inbounds %struct.qedi_conn, ptr %51, i32 0, i32 13, i32 3
  %58 = ptrtoint ptr %req_wr_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %req_wr_ptr.i.i.i, align 4
  %60 = ptrtoint ptr %gen_pdu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %gen_pdu.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %59 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %61 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sge_len.i.i.i = getelementptr inbounds %struct.scsi_sge, ptr %53, i32 0, i32 1
  %62 = ptrtoint ptr %sge_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub.ptr.sub.i.i.i, ptr %sge_len.i.i.i, align 4
  %resp_bd_tbl.i.i.i = getelementptr inbounds %struct.qedi_conn, ptr %51, i32 0, i32 13, i32 11
  %63 = ptrtoint ptr %resp_bd_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %resp_bd_tbl.i.i.i, align 4
  %resp_dma_addr.i.i.i = getelementptr inbounds %struct.qedi_conn, ptr %51, i32 0, i32 13, i32 6
  %hi14.i.i.i = getelementptr inbounds %struct.regpair, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %hi14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %hi14.i.i.i, align 4
  %66 = ptrtoint ptr %resp_dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %resp_dma_addr.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %64, align 4
  %sge_len19.i.i.i = getelementptr inbounds %struct.scsi_sge, ptr %64, i32 0, i32 1
  %69 = ptrtoint ptr %sge_len19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 8192, ptr %sge_len19.i.i.i, align 4
  %70 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 4
  %conv.i.i = zext i8 %73 to i32
  %and.i.i = and i32 %conv.i.i, 63
  %74 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %and.i.i, label %do.end.i.i [
    i32 3, label %sw.bb.i.i
    i32 0, label %sw.bb1.i.i
    i32 6, label %sw.bb5.i.i
    i32 2, label %sw.bb7.i.i
    i32 4, label %sw.bb9.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 @qedi_send_iscsi_login(ptr noundef %51, ptr noundef %task) #11
  br label %cleanup

sw.bb1.i.i:                                       ; preds = %if.end.i
  %req_buf_size.i.i = getelementptr inbounds %struct.qedi_conn, ptr %51, i32 0, i32 13, i32 2
  %75 = ptrtoint ptr %req_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %req_buf_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %gen_pdu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %gen_pdu.i.i.i, align 4
  %call3.i.i = tail call i32 @qedi_send_iscsi_nopout(ptr noundef %51, ptr noundef %task, ptr noundef %78, i32 noundef %76, i32 noundef 1) #11
  br label %cleanup

if.else.i.i:                                      ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = tail call i32 @qedi_send_iscsi_nopout(ptr noundef %51, ptr noundef %task, ptr noundef null, i32 noundef 0, i32 noundef 1) #11
  br label %cleanup

sw.bb5.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i = tail call i32 @qedi_send_iscsi_logout(ptr noundef %51, ptr noundef %task) #11
  br label %cleanup

sw.bb7.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i.i = tail call i32 @qedi_send_iscsi_tmf(ptr noundef %51, ptr noundef %task) #11
  br label %cleanup

sw.bb9.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i.i = tail call i32 @qedi_send_iscsi_text(ptr noundef %51, ptr noundef %task) #11
  br label %cleanup

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %51, align 4
  %dd_data11.i.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %dd_data11.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dd_data11.i.i, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 8
  %dev.i.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %84, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev.i.i, ptr noundef nonnull @.str.38, i32 noundef %conv.i.i) #14
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %scsi_cmd to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %7, ptr %scsi_cmd, align 4
  %call18 = tail call i32 @qedi_iscsi_send_ioreq(ptr noundef %task) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end.i.i, %sw.bb9.i.i, %sw.bb7.i.i, %sw.bb5.i.i, %if.else.i.i, %if.then.i.i, %sw.bb.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end16 ], [ -19, %entry.cleanup_crit_edge ], [ -13, %if.end.cleanup_crit_edge ], [ 0, %do.end.i.i ], [ %call10.i.i, %sw.bb9.i.i ], [ %call8.i.i, %sw.bb7.i.i ], [ %call6.i.i, %sw.bb5.i.i ], [ %call3.i.i, %if.then.i.i ], [ %call4.i.i, %if.else.i.i ], [ 0, %sw.bb.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_cleanup_task(ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 17
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %refcount = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcount, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef null, ptr noundef nonnull @__func__.qedi_cleanup_task, i32 noundef 1455, i32 noundef 1024, ptr noundef nonnull @.str.40, i32 noundef %3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sc = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 11
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dd_data = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %6 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dd_data, align 4
  tail call void @qedi_iscsi_unmap_sg_list(ptr noundef %7) #11
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %dd_data3 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %8 = ptrtoint ptr %dd_data3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dd_data3, align 4
  %task_id = getelementptr inbounds %struct.qedi_cmd, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %task_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %task_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp4.not = icmp eq i16 %11, -1
  br i1 %cmp4.not, label %if.end2.if.end10_crit_edge, label %if.then6

if.end2.if.end10_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then6:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %conn = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 12
  %12 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conn, align 4
  %session = getelementptr inbounds %struct.iscsi_conn, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %session, align 8
  %host = getelementptr inbounds %struct.iscsi_session, ptr %15, i32 0, i32 50
  %16 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host, align 4
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %17, i32 1, i32 5, i32 5, i32 1
  %conv9 = zext i16 %11 to i32
  tail call void @qedi_clear_task_idx(ptr noundef %add.ptr, i32 noundef %conv9) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end2.if.end10_crit_edge
  %18 = ptrtoint ptr %task_id to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %task_id, align 4
  %scsi_cmd = getelementptr inbounds %struct.qedi_cmd, ptr %9, i32 0, i32 4
  %19 = ptrtoint ptr %scsi_cmd to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %scsi_cmd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_session_recovery_timedout(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qedi_ep_connect(ptr noundef %shost, ptr nocapture noundef readonly %dst_addr, i32 noundef %non_blocking) #0 align 64 {
entry:
  %path_req = alloca %struct.iscsi_path, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %path_req) #11
  %0 = call ptr @memset(ptr %path_req, i32 255, i32 64)
  %tobool.not = icmp eq ptr %shost, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedi_ep_connect, i32 noundef 880, ptr noundef nonnull @.str.41) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_do_not_recover to i32))
  %1 = load i32, ptr @qedi_do_not_recover, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 1
  %flags = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.end13, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %link_state = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 12, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #11
  %8 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_ep_connect, i32 noundef 898, ptr noundef nonnull @.str.42) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call ptr @iscsi_create_endpoint(i32 noundef 268) #11
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_ep_connect, i32 noundef 904, ptr noundef nonnull @.str.43) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %10 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call18, align 8
  %state = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 10
  %iscsi_cid24 = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 13
  %12 = getelementptr inbounds i8, ptr %11, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 264)
  %14 = ptrtoint ptr %iscsi_cid24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %iscsi_cid24, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %11, align 4
  %16 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dst_addr, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.119)
  switch i16 %17, label %if.else49 [
    i16 2, label %if.then28
    i16 10, label %if.then39
  ]

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %dst_addr29 = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 1
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %dst_addr, i32 0, i32 2
  %19 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sin_addr, align 4
  %21 = ptrtoint ptr %dst_addr29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dst_addr29, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %dst_addr, i32 0, i32 1
  %22 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sin_port, align 2
  %dst_port = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 4
  %24 = ptrtoint ptr %dst_port to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %dst_port, align 2
  %ip_type = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 9
  %25 = ptrtoint ptr %ip_type to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %ip_type, align 4
  %conv34 = zext i16 %23 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_ep_connect, i32 noundef 922, i32 noundef 16, ptr noundef nonnull @.str.44, ptr noundef %dst_addr29, i32 noundef %conv34) #11
  br label %if.end52

if.then39:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %dst_addr40 = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 1
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %dst_addr, i32 0, i32 3
  %26 = call ptr @memcpy(ptr %dst_addr40, ptr %sin6_addr, i32 16)
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %dst_addr, i32 0, i32 1
  %27 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sin6_port, align 2
  %dst_port42 = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 4
  %29 = ptrtoint ptr %dst_port42 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %dst_port42, align 2
  %ip_type43 = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 9
  %30 = ptrtoint ptr %ip_type43 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %ip_type43, align 4
  %conv48 = zext i16 %28 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_ep_connect, i32 noundef 931, i32 noundef 16, ptr noundef nonnull @.str.45, ptr noundef %dst_addr40, i32 noundef %conv48) #11
  br label %if.end52

if.else49:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_ep_connect, i32 noundef 933, ptr noundef nonnull @.str.46) #11
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then39, %if.then28
  %call53 = tail call i32 @qedi_alloc_sq(ptr noundef %add.ptr, ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.ep_conn_exit_crit_edge

if.end52.ep_conn_exit_crit_edge:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %ep_conn_exit

if.end56:                                         ; preds = %if.end52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_ops to i32))
  %31 = load ptr, ptr @qedi_ops, align 4
  %acquire_conn = getelementptr inbounds %struct.qed_iscsi_ops, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %acquire_conn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %acquire_conn, align 4
  %cdev = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 7
  %34 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cdev, align 4
  %handle = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 14
  %fw_cid = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 15
  %p_doorbell = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 16
  %call57 = tail call i32 %33(ptr noundef %35, ptr noundef %handle, ptr noundef %fw_cid, ptr noundef %p_doorbell) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_ep_connect, i32 noundef 944, ptr noundef nonnull @.str.47) #11
  br label %ep_free_sq

if.end61:                                         ; preds = %if.end56
  %36 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %handle, align 4
  %38 = ptrtoint ptr %iscsi_cid24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %iscsi_cid24, align 4
  %ofld_wait = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %ofld_wait, ptr noundef nonnull @.str.48, ptr noundef nonnull @qedi_ep_connect.__key) #11
  %tcp_ofld_wait = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %tcp_ofld_wait, ptr noundef nonnull @.str.50, ptr noundef nonnull @qedi_ep_connect.__key.49) #11
  %39 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %state, align 4
  %ep_tbl = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 5, i32 1, i32 2
  %40 = ptrtoint ptr %ep_tbl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ep_tbl, align 8
  %arrayidx = getelementptr ptr, ptr %41, i32 %37
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %11, ptr %arrayidx, align 4
  %43 = getelementptr inbounds i8, ptr %path_req, i32 8
  %44 = call ptr @memset(ptr %43, i32 0, i32 56)
  %45 = ptrtoint ptr %iscsi_cid24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iscsi_cid24, align 4
  %conv70 = zext i32 %46 to i64
  %47 = ptrtoint ptr %path_req to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv70, ptr %path_req, align 8
  %ll2_mtu = getelementptr %struct.Scsi_Host, ptr %shost, i32 6, i32 49, i32 14
  %48 = ptrtoint ptr %ll2_mtu to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ll2_mtu, align 8
  %pmtu = getelementptr inbounds %struct.iscsi_path, ptr %path_req, i32 0, i32 7
  %50 = ptrtoint ptr %pmtu to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %pmtu, align 2
  %pmtu73 = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 6
  %51 = ptrtoint ptr %pmtu73 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %49, ptr %pmtu73, align 2
  %ip_type74 = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 9
  %52 = ptrtoint ptr %ip_type74 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ip_type74, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp76 = icmp eq i8 %53, 0
  %dst = getelementptr inbounds %struct.iscsi_path, ptr %path_req, i32 0, i32 5
  %dst_addr79 = getelementptr inbounds %struct.qedi_endpoint, ptr %11, i32 0, i32 1
  br i1 %cmp76, label %if.then78, label %if.else80

if.then78:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %dst_addr79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dst_addr79, align 4
  %56 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %dst, align 8
  br label %if.end84

if.else80:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %57 = call ptr @memcpy(ptr %dst, ptr %dst_addr79, i32 16)
  br label %if.end84

if.end84:                                         ; preds = %if.else80, %if.then78
  %.sink = phi i32 [ 4, %if.then78 ], [ 16, %if.else80 ]
  %58 = getelementptr inbounds %struct.iscsi_path, ptr %path_req, i32 0, i32 3
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.sink, ptr %58, align 4
  %call85 = call i32 @iscsi_offload_mesg(ptr noundef nonnull %shost, ptr noundef nonnull @qedi_iscsi_transport, i32 noundef 107, ptr noundef nonnull %path_req, i16 noundef zeroext 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end89, label %if.then87

if.then87:                                        ; preds = %if.end84
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_ep_connect, i32 noundef 980, ptr noundef nonnull @.str.51, i32 noundef %37, i32 noundef %call85) #11
  %60 = ptrtoint ptr %ep_tbl to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ep_tbl, align 8
  %arrayidx91 = getelementptr ptr, ptr %61, i32 %37
  %62 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %arrayidx91, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_ops to i32))
  %63 = load ptr, ptr @qedi_ops, align 4
  %release_conn = getelementptr inbounds %struct.qed_iscsi_ops, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %release_conn to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %release_conn, align 4
  %66 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cdev, align 4
  %68 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %handle, align 4
  %call94 = call i32 %65(ptr noundef %67, i32 noundef %69) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then87.ep_free_sq_crit_edge, label %if.then96

if.then87.ep_free_sq_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #13
  br label %ep_free_sq

if.end89:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  %num_offloads = getelementptr %struct.Scsi_Host, ptr %shost, i32 63, i32 49, i32 25
  %call.i.i186 = call zeroext i1 @__kasan_check_write(ptr noundef %num_offloads, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %num_offloads, i32 1, i32 3, i32 1) #11
  %70 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_offloads, ptr %num_offloads, i32 1, ptr elementtype(i32) %num_offloads) #11, !srcloc !267
  br label %cleanup

if.then96:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_ep_connect, i32 noundef 992, ptr noundef nonnull @.str.52, i32 noundef %call94) #11
  br label %ep_free_sq

ep_free_sq:                                       ; preds = %if.then96, %if.then87.ep_free_sq_crit_edge, %if.then59
  %ret.0 = phi i32 [ -6, %if.then59 ], [ %call85, %if.then96 ], [ %call85, %if.then87.ep_free_sq_crit_edge ]
  call void @qedi_free_sq(ptr noundef %add.ptr, ptr noundef %11) #11
  br label %ep_conn_exit

ep_conn_exit:                                     ; preds = %ep_free_sq, %if.end52.ep_conn_exit_crit_edge
  %ret.1 = phi i32 [ %call53, %if.end52.ep_conn_exit_crit_edge ], [ %ret.0, %ep_free_sq ]
  call void @iscsi_destroy_endpoint(ptr noundef nonnull %call18) #11
  %71 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %ep_conn_exit, %if.end89, %if.then20, %if.then15, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -6 to ptr), %if.then15 ], [ %71, %ep_conn_exit ], [ %call18, %if.end89 ], [ inttoptr (i32 -12 to ptr), %if.then20 ], [ inttoptr (i32 -6 to ptr), %if.then ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %path_req) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_ep_poll(ptr nocapture noundef readonly %ep, i32 noundef %timeout_ms) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_do_not_recover to i32))
  %0 = load i32, ptr @qedi_do_not_recover, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup73_crit_edge

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup73

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ep, align 8
  %state = getelementptr inbounds %struct.qedi_endpoint, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %4, label %if.else.i [
    i32 0, label %if.end.cleanup73_crit_edge
    i32 65536, label %if.end.cleanup73_crit_edge128
    i32 8192, label %if.end.cleanup73_crit_edge129
  ]

if.end.cleanup73_crit_edge129:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup73

if.end.cleanup73_crit_edge128:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup73

if.end.cleanup73_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup73

if.else.i:                                        ; preds = %if.end
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_ms) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1019) #11
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %7)
  %cmp16 = icmp eq i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp18 = icmp eq i32 %7, 8
  %spec.select = or i1 %cmp16, %cmp18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool20.not = icmp eq i32 %call2.i, 0
  %8 = select i1 %spec.select, i1 %tobool20.not, i1 false
  %__ret.0 = select i1 %8, i32 1, i32 %call2.i
  %__ret.0.fr = freeze i32 %__ret.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0.fr)
  %tobool25.not = icmp eq i32 %__ret.0.fr, 0
  br i1 %tobool25.not, label %if.else.i.if.end62_crit_edge, label %switch.early.test

if.else.i.if.end62_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

switch.early.test:                                ; preds = %if.else.i
  %9 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %7, label %if.then28 [
    i32 8192, label %switch.early.test.if.end62_crit_edge
    i32 8, label %switch.early.test.if.end62_crit_edge130
  ]

switch.early.test.if.end62_crit_edge130:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

switch.early.test.if.end62_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then28:                                        ; preds = %switch.early.test
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %call2.i106 = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_ms) #11
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %ofld_wait = getelementptr inbounds %struct.qedi_endpoint, ptr %2, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then28
  %__ret29.0 = phi i32 [ %call2.i106, %if.then28 ], [ %call59, %cleanup ]
  %call31 = call i32 @prepare_to_wait_event(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %12)
  %cmp34 = icmp eq i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp37 = icmp eq i32 %12, 8
  %spec.select100 = or i1 %cmp34, %cmp37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret29.0)
  %tobool43.not = icmp eq i32 %__ret29.0, 0
  %13 = select i1 %spec.select100, i1 %tobool43.not, i1 false
  %__ret29.1 = select i1 %13, i32 1, i32 %__ret29.0
  %14 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %12, label %lor.rhs48 [
    i32 8192, label %for.cond.for.end_crit_edge
    i32 8, label %for.cond.for.end_crit_edge131
  ]

for.cond.for.end_crit_edge131:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

lor.rhs48:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret29.1)
  %tobool49.not = icmp eq i32 %__ret29.1, 0
  br i1 %tobool49.not, label %lor.rhs48.for.end_crit_edge, label %if.end55

lor.rhs48.for.end_crit_edge:                      ; preds = %lor.rhs48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end55:                                         ; preds = %lor.rhs48
  %tobool56.not = icmp eq i32 %call31, 0
  br i1 %tobool56.not, label %cleanup, label %if.end55.__out_crit_edge

if.end55.__out_crit_edge:                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out

cleanup:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = call i32 @schedule_timeout(i32 noundef %__ret29.1) #11
  br label %for.cond

for.end:                                          ; preds = %lor.rhs48.for.end_crit_edge, %for.cond.for.end_crit_edge, %for.cond.for.end_crit_edge131
  %__ret29.1.lcssa = phi i32 [ 0, %lor.rhs48.for.end_crit_edge ], [ %__ret29.1, %for.cond.for.end_crit_edge ], [ %__ret29.1, %for.cond.for.end_crit_edge131 ]
  call void @finish_wait(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry) #11
  br label %__out

__out:                                            ; preds = %for.end, %if.end55.__out_crit_edge
  %__ret29.2112 = phi i32 [ %__ret29.1.lcssa, %for.end ], [ %call31, %if.end55.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end62

if.end62:                                         ; preds = %__out, %switch.early.test.if.end62_crit_edge, %switch.early.test.if.end62_crit_edge130, %if.else.i.if.end62_crit_edge
  %__ret.1 = phi i32 [ %__ret29.2112, %__out ], [ %__ret.0.fr, %switch.early.test.if.end62_crit_edge ], [ 0, %if.else.i.if.end62_crit_edge ], [ %__ret.0.fr, %switch.early.test.if.end62_crit_edge130 ]
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %16)
  %cmp65 = icmp eq i32 %16, 8192
  %17 = call i32 @llvm.smin.i32(i32 %__ret.1, i32 1)
  %18 = select i1 %cmp65, i32 -1, i32 %17
  br label %cleanup73

cleanup73:                                        ; preds = %if.end62, %if.end.cleanup73_crit_edge, %if.end.cleanup73_crit_edge128, %if.end.cleanup73_crit_edge129, %entry.cleanup73_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup73_crit_edge ], [ -1, %if.end.cleanup73_crit_edge ], [ -1, %if.end.cleanup73_crit_edge128 ], [ -1, %if.end.cleanup73_crit_edge129 ], [ %18, %if.end62 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_ep_disconnect(ptr noundef %ep) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %state = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %5, label %if.then4 [
    i32 4, label %entry.ep_exit_recover_crit_edge
    i32 65536, label %entry.if.end5_crit_edge
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

entry.ep_exit_recover_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ep_exit_recover

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %offload_work = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 28
  %call = tail call zeroext i1 @flush_work(ptr noundef %offload_work) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %entry.if.end5_crit_edge
  %conn = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 27
  %7 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conn, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end5.if.end26_crit_edge, label %if.then6

if.end5.if.end26_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then6:                                         ; preds = %if.end5
  %abrt_conn8 = getelementptr inbounds %struct.qedi_conn, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %abrt_conn8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %abrt_conn8, align 4
  %iscsi_cid = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %iscsi_cid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iscsi_cid, align 4
  %fw_cleanup_works = getelementptr inbounds %struct.qedi_conn, ptr %8, i32 0, i32 18
  %13 = ptrtoint ptr %fw_cleanup_works to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_cleanup_works, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %3, ptr noundef nonnull @__func__.qedi_ep_disconnect, i32 noundef 1071, i32 noundef 2, ptr noundef nonnull @.str.53, i32 noundef %12, ptr noundef %1, i32 noundef %14) #11
  %tmf_work_lock = getelementptr inbounds %struct.qedi_conn, ptr %8, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tmf_work_lock) #11
  %ep_disconnect_starting = getelementptr inbounds %struct.qedi_conn, ptr %8, i32 0, i32 17
  %15 = ptrtoint ptr %ep_disconnect_starting to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %ep_disconnect_starting, align 4
  %16 = ptrtoint ptr %fw_cleanup_works to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_cleanup_works, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10259 = icmp sgt i32 %17, 0
  br i1 %cmp10259, label %if.then6.while.body_crit_edge, label %if.then6.while.end_crit_edge

if.then6.while.end_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then6.while.body_crit_edge:                    ; preds = %if.then6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then6.while.body_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tmf_work_lock) #11
  tail call void @msleep(i32 noundef 1000) #11
  tail call void @_raw_spin_lock(ptr noundef %tmf_work_lock) #11
  %18 = ptrtoint ptr %fw_cleanup_works to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fw_cleanup_works, align 4
  %cmp10 = icmp sgt i32 %19, 0
  br i1 %cmp10, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then6.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tmf_work_lock) #11
  %flags = getelementptr inbounds %struct.qedi_ctx, ptr %3, i32 0, i32 14
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags, align 4
  %22 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not = icmp eq i32 %22, 0
  br i1 %tobool15.not, label %while.end.if.end26_crit_edge, label %if.then16

while.end.if.end26_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then16:                                        ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_do_not_recover to i32))
  %23 = load i32, ptr @qedi_do_not_recover, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool17.not = icmp eq i32 %23, 0
  %24 = ptrtoint ptr %iscsi_cid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iscsi_cid, align 4
  br i1 %tobool17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %3, ptr noundef nonnull @__func__.qedi_ep_disconnect, i32 noundef 1086, i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef %25) #11
  br label %ep_exit_recover

if.end21:                                         ; preds = %if.then16
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %3, ptr noundef nonnull @__func__.qedi_ep_disconnect, i32 noundef 1091, i32 noundef 2, ptr noundef nonnull @.str.55, i32 noundef %25, ptr noundef %1, i32 noundef %27) #11
  %list_lock.i = getelementptr inbounds %struct.qedi_conn, ptr %8, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %list_lock.i) #11
  %active_cmd_list.i = getelementptr inbounds %struct.qedi_conn, ptr %8, i32 0, i32 4
  %28 = ptrtoint ptr %active_cmd_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %active_cmd_list.i, align 4
  %cmp.not21.i = icmp eq ptr %29, %active_cmd_list.i
  br i1 %cmp.not21.i, label %if.end21.qedi_cleanup_active_cmd_list.exit_crit_edge, label %for.body.lr.ph.i

if.end21.qedi_cleanup_active_cmd_list.exit_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %qedi_cleanup_active_cmd_list.exit

for.body.lr.ph.i:                                 ; preds = %if.end21
  %active_cmd_count.i = getelementptr inbounds %struct.qedi_conn, ptr %8, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cmd.022.i = phi ptr [ %29, %for.body.lr.ph.i ], [ %cmd_tmp.0.i, %list_del_init.exit.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %cmd.022.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %cmd_tmp.0.i = load ptr, ptr %cmd.022.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cmd.022.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %cmd.022.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %cmd.022.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd.022.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %37 = ptrtoint ptr %cmd.022.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %cmd.022.i, ptr %cmd.022.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %cmd.022.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %cmd.022.i, ptr %prev.i3.i.i, align 4
  %39 = ptrtoint ptr %active_cmd_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %active_cmd_count.i, align 4
  %dec.i = add i32 %40, -1
  store i32 %dec.i, ptr %active_cmd_count.i, align 4
  %cmp.not.i = icmp eq ptr %cmd_tmp.0.i, %active_cmd_list.i
  br i1 %cmp.not.i, label %list_del_init.exit.i.qedi_cleanup_active_cmd_list.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del_init.exit.i.qedi_cleanup_active_cmd_list.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qedi_cleanup_active_cmd_list.exit

qedi_cleanup_active_cmd_list.exit:                ; preds = %list_del_init.exit.i.qedi_cleanup_active_cmd_list.exit_crit_edge, %if.end21.qedi_cleanup_active_cmd_list.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %list_lock.i) #11
  br label %ep_release_conn

if.end26:                                         ; preds = %while.end.if.end26_crit_edge, %if.end5.if.end26_crit_edge
  %abrt_conn.0 = phi i32 [ %10, %while.end.if.end26_crit_edge ], [ 0, %if.end5.if.end26_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_do_not_recover to i32))
  %41 = load i32, ptr @qedi_do_not_recover, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool27.not = icmp eq i32 %41, 0
  br i1 %tobool27.not, label %if.end29, label %if.end26.ep_exit_recover_crit_edge

if.end26.ep_exit_recover_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %ep_exit_recover

if.end29:                                         ; preds = %if.end26
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %43, label %if.end29.sw.epilog_crit_edge [
    i32 4, label %if.end29.ep_release_conn_crit_edge
    i32 65536, label %if.end29.ep_release_conn_crit_edge280
    i32 8, label %sw.bb31
  ]

if.end29.ep_release_conn_crit_edge280:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %ep_release_conn

if.end29.ep_release_conn_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %ep_release_conn

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end29
  br i1 %tobool.not, label %sw.bb31.sw.epilog_crit_edge, label %if.end37, !prof !268

sw.bb31.sw.epilog_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end37:                                         ; preds = %sw.bb31
  %active_cmd_count = getelementptr inbounds %struct.qedi_conn, ptr %8, i32 0, i32 6
  %45 = ptrtoint ptr %active_cmd_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %active_cmd_count, align 4
  %iscsi_cid40 = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 13
  %47 = ptrtoint ptr %iscsi_cid40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iscsi_cid40, align 4
  %49 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %conn, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %3, ptr noundef nonnull @__func__.qedi_ep_disconnect, i32 noundef 1116, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef %46, i32 noundef %abrt_conn.0, i32 noundef 8, i32 noundef %48, ptr noundef %50) #11
  %51 = ptrtoint ptr %active_cmd_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %active_cmd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool43.not = icmp eq i32 %52, 0
  br i1 %tobool43.not, label %if.end37.if.then50_crit_edge, label %sw.epilog.thread246

if.end37.if.then50_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

sw.epilog.thread246:                              ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @qedi_clearsq(ptr noundef %3, ptr noundef nonnull %8, ptr noundef null) #11
  br label %if.end51

sw.epilog:                                        ; preds = %sw.bb31.sw.epilog_crit_edge, %if.end29.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %abrt_conn.0)
  %tobool49.not = icmp eq i32 %abrt_conn.0, 0
  br i1 %tobool49.not, label %sw.epilog.if.then50_crit_edge, label %sw.epilog.if.end51_crit_edge

sw.epilog.if.end51_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

sw.epilog.if.then50_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

if.then50:                                        ; preds = %sw.epilog.if.then50_crit_edge, %if.end37.if.then50_crit_edge
  %two_msl_timer = getelementptr inbounds %struct.qedi_ctx, ptr %3, i32 0, i32 46, i32 2, i32 4
  %53 = ptrtoint ptr %two_msl_timer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %two_msl_timer, align 4
  %add = add i32 %54, 14000
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %sw.epilog.if.end51_crit_edge, %sw.epilog.thread246
  %abrt_conn.2244 = phi i32 [ %abrt_conn.0, %sw.epilog.if.end51_crit_edge ], [ 0, %if.then50 ], [ 1, %sw.epilog.thread246 ]
  %wait_delay.0 = phi i32 [ 14000, %sw.epilog.if.end51_crit_edge ], [ %add, %if.then50 ], [ 14000, %sw.epilog.thread246 ]
  %55 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 16, ptr %state, align 4
  %flags53 = getelementptr inbounds %struct.qedi_ctx, ptr %3, i32 0, i32 14
  %56 = ptrtoint ptr %flags53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %flags53, align 4
  %58 = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool55.not = icmp eq i32 %58, 0
  br i1 %tobool55.not, label %lor.lhs.false, label %if.end51.ep_release_conn_crit_edge

if.end51.ep_release_conn_crit_edge:               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %ep_release_conn

lor.lhs.false:                                    ; preds = %if.end51
  %59 = ptrtoint ptr %flags53 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flags53, align 4
  %61 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool58.not = icmp eq i32 %61, 0
  br i1 %tobool58.not, label %if.end60, label %lor.lhs.false.ep_release_conn_crit_edge

lor.lhs.false.ep_release_conn_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %ep_release_conn

if.end60:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_ops to i32))
  %62 = load ptr, ptr @qedi_ops, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %db_recovery_del = getelementptr inbounds %struct.qed_common_ops, ptr %64, i32 0, i32 32
  %65 = ptrtoint ptr %db_recovery_del to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %db_recovery_del, align 4
  %cdev = getelementptr inbounds %struct.qedi_ctx, ptr %3, i32 0, i32 3
  %67 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cdev, align 4
  %p_doorbell = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 16
  %69 = ptrtoint ptr %p_doorbell to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %p_doorbell, align 4
  %db_data = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 17
  %call61 = tail call i32 %66(ptr noundef %68, ptr noundef %70, ptr noundef %db_data) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_ops to i32))
  %71 = load ptr, ptr @qedi_ops, align 4
  %destroy_conn = getelementptr inbounds %struct.qed_iscsi_ops, ptr %71, i32 0, i32 10
  %72 = ptrtoint ptr %destroy_conn to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %destroy_conn, align 4
  %74 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cdev, align 4
  %handle = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 14
  %76 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %handle, align 4
  %conv = trunc i32 %abrt_conn.2244 to i8
  %call63 = tail call i32 %73(ptr noundef %75, i32 noundef %77, i8 noundef zeroext %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.else67, label %if.then65

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %3, ptr noundef nonnull @__func__.qedi_ep_disconnect, i32 noundef 1147, ptr noundef nonnull @.str.57, i32 noundef %call63) #11
  br label %ep_release_conn

if.else67:                                        ; preds = %if.end60
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1153) #11
  %78 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %79)
  %cmp72.not = icmp eq i32 %79, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_delay.0)
  %tobool76.not = icmp eq i32 %wait_delay.0, 0
  %spec.store.select = select i1 %tobool76.not, i32 1, i32 %wait_delay.0
  %__ret.0 = select i1 %cmp72.not, i32 %wait_delay.0, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool81.not = icmp eq i32 %__ret.0, 0
  %not.cmp72.not = xor i1 %cmp72.not, true
  %80 = select i1 %not.cmp72.not, i1 true, i1 %tobool81.not
  br i1 %80, label %if.else67.if.end117_crit_edge, label %if.then85

if.else67.if.end117_crit_edge:                    ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.then85:                                        ; preds = %if.else67
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %81 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %tcp_ofld_wait = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 12
  %call87260 = call i32 @prepare_to_wait_event(ptr noundef %tcp_ofld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %82 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %83)
  %cmp90.not261 = icmp eq i32 %83, 16
  %__ret86.1264 = select i1 %cmp90.not261, i32 %wait_delay.0, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret86.1264)
  %tobool103.not265 = icmp eq i32 %__ret86.1264, 0
  %not.cmp90.not266 = xor i1 %cmp90.not261, true
  %84 = select i1 %not.cmp90.not266, i1 true, i1 %tobool103.not265
  br i1 %84, label %if.then85.for.end_crit_edge, label %if.then85.if.end110_crit_edge

if.then85.if.end110_crit_edge:                    ; preds = %if.then85
  br label %if.end110

if.then85.for.end_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end110:                                        ; preds = %cleanup.if.end110_crit_edge, %if.then85.if.end110_crit_edge
  %__ret86.1268 = phi i32 [ %__ret86.1, %cleanup.if.end110_crit_edge ], [ %__ret86.1264, %if.then85.if.end110_crit_edge ]
  %call87267 = phi i32 [ %call87, %cleanup.if.end110_crit_edge ], [ %call87260, %if.then85.if.end110_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87267)
  %tobool111.not = icmp eq i32 %call87267, 0
  br i1 %tobool111.not, label %cleanup, label %if.end110.__out_crit_edge

if.end110.__out_crit_edge:                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out

cleanup:                                          ; preds = %if.end110
  %call114 = call i32 @schedule_timeout(i32 noundef %__ret86.1268) #11
  %call87 = call i32 @prepare_to_wait_event(ptr noundef %tcp_ofld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %85 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %86)
  %cmp90.not = icmp eq i32 %86, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool96.not = icmp eq i32 %call114, 0
  %spec.store.select148 = select i1 %tobool96.not, i32 1, i32 %call114
  %__ret86.1 = select i1 %cmp90.not, i32 %call114, i32 %spec.store.select148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret86.1)
  %tobool103.not = icmp eq i32 %__ret86.1, 0
  %not.cmp90.not = xor i1 %cmp90.not, true
  %87 = select i1 %not.cmp90.not, i1 true, i1 %tobool103.not
  br i1 %87, label %cleanup.for.end_crit_edge, label %cleanup.if.end110_crit_edge

cleanup.if.end110_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then85.for.end_crit_edge
  %__ret86.1.lcssa = phi i32 [ %__ret86.1264, %if.then85.for.end_crit_edge ], [ %__ret86.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %tcp_ofld_wait, ptr noundef nonnull %__wq_entry) #11
  br label %__out

__out:                                            ; preds = %for.end, %if.end110.__out_crit_edge
  %__ret86.2251 = phi i32 [ %__ret86.1.lcssa, %for.end ], [ %call87267, %if.end110.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end117

if.end117:                                        ; preds = %__out, %if.else67.if.end117_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %if.else67.if.end117_crit_edge ], [ %__ret86.2251, %__out ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret.1)
  %cmp119 = icmp slt i32 %__ret.1, 1
  br i1 %cmp119, label %if.end117.if.then125_crit_edge, label %lor.lhs.false121

if.end117.if.then125_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then125

lor.lhs.false121:                                 ; preds = %if.end117
  %88 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %89)
  %cmp123 = icmp eq i32 %89, 16
  br i1 %cmp123, label %lor.lhs.false121.if.then125_crit_edge, label %lor.lhs.false121.ep_release_conn_crit_edge

lor.lhs.false121.ep_release_conn_crit_edge:       ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #13
  br label %ep_release_conn

lor.lhs.false121.if.then125_crit_edge:            ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then125

if.then125:                                       ; preds = %lor.lhs.false121.if.then125_crit_edge, %if.end117.if.then125_crit_edge
  %iscsi_cid127 = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 13
  %90 = ptrtoint ptr %iscsi_cid127 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %iscsi_cid127, align 4
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %3, ptr noundef nonnull @__func__.qedi_ep_disconnect, i32 noundef 1157, ptr noundef nonnull @.str.58, i32 noundef %__ret.1, i32 noundef %wait_delay.0, i32 noundef %91) #11
  br label %ep_release_conn

ep_release_conn:                                  ; preds = %if.then125, %lor.lhs.false121.ep_release_conn_crit_edge, %if.then65, %lor.lhs.false.ep_release_conn_crit_edge, %if.end51.ep_release_conn_crit_edge, %if.end29.ep_release_conn_crit_edge, %if.end29.ep_release_conn_crit_edge280, %qedi_cleanup_active_cmd_list.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_ops to i32))
  %92 = load ptr, ptr @qedi_ops, align 4
  %release_conn = getelementptr inbounds %struct.qed_iscsi_ops, ptr %92, i32 0, i32 7
  %93 = ptrtoint ptr %release_conn to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %release_conn, align 4
  %cdev130 = getelementptr inbounds %struct.qedi_ctx, ptr %3, i32 0, i32 3
  %95 = ptrtoint ptr %cdev130 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cdev130, align 4
  %handle131 = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 14
  %97 = ptrtoint ptr %handle131 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %handle131, align 4
  %call132 = call i32 %94(ptr noundef %96, i32 noundef %98) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %ep_release_conn.ep_exit_recover_crit_edge, label %if.then134

ep_release_conn.ep_exit_recover_crit_edge:        ; preds = %ep_release_conn
  call void @__sanitizer_cov_trace_pc() #13
  br label %ep_exit_recover

if.then134:                                       ; preds = %ep_release_conn
  call void @__sanitizer_cov_trace_pc() #13
  %iscsi_cid136 = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 13
  %99 = ptrtoint ptr %iscsi_cid136 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %iscsi_cid136, align 4
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %3, ptr noundef nonnull @__func__.qedi_ep_disconnect, i32 noundef 1166, ptr noundef nonnull @.str.59, i32 noundef %call132, i32 noundef %100) #11
  br label %ep_exit_recover

ep_exit_recover:                                  ; preds = %if.then134, %ep_release_conn.ep_exit_recover_crit_edge, %if.end26.ep_exit_recover_crit_edge, %if.then18, %entry.ep_exit_recover_crit_edge
  %qedi_conn.2 = phi ptr [ null, %entry.ep_exit_recover_crit_edge ], [ %8, %if.then18 ], [ %8, %if.then134 ], [ %8, %ep_release_conn.ep_exit_recover_crit_edge ], [ %8, %if.end26.ep_exit_recover_crit_edge ]
  %101 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %state, align 4
  %ep_tbl = getelementptr inbounds %struct.qedi_ctx, ptr %3, i32 0, i32 37
  %102 = ptrtoint ptr %ep_tbl to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ep_tbl, align 8
  %iscsi_cid139 = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 13
  %104 = ptrtoint ptr %iscsi_cid139 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %iscsi_cid139, align 4
  %arrayidx = getelementptr ptr, ptr %103, i32 %105
  %106 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %arrayidx, align 4
  %conn_cid_tbl = getelementptr inbounds %struct.qedi_ctx, ptr %3, i32 0, i32 36, i32 6
  %107 = ptrtoint ptr %conn_cid_tbl to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %conn_cid_tbl, align 4
  %109 = load i32, ptr %iscsi_cid139, align 4
  %arrayidx141 = getelementptr ptr, ptr %108, i32 %109
  %110 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %arrayidx141, align 4
  %lcl_port_tbl = getelementptr inbounds %struct.qedi_ctx, ptr %3, i32 0, i32 38
  %src_port = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 3
  %111 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %src_port, align 4
  call void @qedi_free_id(ptr noundef %lcl_port_tbl, i16 noundef zeroext %112) #11
  call void @qedi_free_sq(ptr noundef %3, ptr noundef %1) #11
  %tobool142.not = icmp eq ptr %qedi_conn.2, null
  br i1 %tobool142.not, label %ep_exit_recover.if.end145_crit_edge, label %if.then143

ep_exit_recover.if.end145_crit_edge:              ; preds = %ep_exit_recover
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

if.then143:                                       ; preds = %ep_exit_recover
  call void @__sanitizer_cov_trace_pc() #13
  %ep144 = getelementptr inbounds %struct.qedi_conn, ptr %qedi_conn.2, i32 0, i32 2
  %113 = ptrtoint ptr %ep144 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %ep144, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %ep_exit_recover.if.end145_crit_edge
  %conn146 = getelementptr inbounds %struct.qedi_endpoint, ptr %1, i32 0, i32 27
  %114 = ptrtoint ptr %conn146 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %conn146, align 4
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %1, align 4
  %num_offloads = getelementptr inbounds %struct.qedi_ctx, ptr %3, i32 0, i32 66
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num_offloads, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %num_offloads, i32 1, i32 3, i32 1) #11
  %116 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_offloads, ptr %num_offloads, i32 1, ptr elementtype(i32) %num_offloads) #11, !srcloc !269
  call void @iscsi_destroy_endpoint(ptr noundef %ep) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_set_path(ptr noundef %shost, ptr nocapture noundef readonly %path_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %shost, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedi_set_path, i32 noundef 1278, ptr noundef nonnull @.str.41) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 11
  %0 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostt, align 8
  %proc_name = getelementptr inbounds %struct.scsi_host_template, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %proc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_name, align 8
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(5) @.str.1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedi_set_path, i32 noundef 1285, ptr noundef nonnull @.str.60, ptr noundef %3) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 1
  %4 = ptrtoint ptr %path_data to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %path_data, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 68182605824, i64 %5)
  %cmp = icmp eq i64 %5, 68182605824
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %vlan_id = getelementptr inbounds %struct.iscsi_path, ptr %path_data, i32 0, i32 6
  %6 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vlan_id, align 8
  %cdev1.i = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 7
  %8 = ptrtoint ptr %cdev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdev1.i, align 4
  %udev2.i = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %udev2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev2.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_data_avail, i32 noundef 1195, ptr noundef nonnull @.str.69) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then7
  %uctrl3.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %uctrl3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %uctrl3.i, align 4
  %tobool4.not.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_data_avail, i32 noundef 1201, ptr noundef nonnull @.str.70) #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %host_tx_pkt_len.i = getelementptr inbounds %struct.qedi_uio_ctrl, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %host_tx_pkt_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_tx_pkt_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not.i = icmp eq i32 %15, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_data_avail, i32 noundef 1207, ptr noundef nonnull @.str.71, i32 noundef 0) #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end7.i
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %15, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool12.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_data_avail, i32 noundef 1213, ptr noundef nonnull @.str.72) #11
  br label %cleanup

if.end15.i:                                       ; preds = %if.end11.i
  %call16.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %15) #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %tx_pkt.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %11, i32 0, i32 8
  %18 = ptrtoint ptr %tx_pkt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_pkt.i, align 4
  %20 = call ptr @memcpy(ptr %17, ptr %19, i32 %15)
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %21 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool17.not.i = icmp eq i16 %7, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end19.i_crit_edge, label %if.then18.i

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 9
  %22 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 10
  %23 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %7, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 3
  %24 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end19.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_ops to i32))
  %25 = load ptr, ptr @qedi_ops, align 4
  %ll2.i = getelementptr inbounds %struct.qed_iscsi_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ll2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ll2.i, align 4
  %start_xmit.i = getelementptr inbounds %struct.qed_ll2_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %start_xmit.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %start_xmit.i, align 4
  %call20.i = tail call i32 %29(ptr noundef %9, ptr noundef nonnull %call.i.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end24.i_crit_edge, label %if.then22.i

if.end19.i.if.end24.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_data_avail, i32 noundef 1227, ptr noundef nonnull @.str.73, i32 noundef %call20.i) #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #11
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end24.i_crit_edge
  %30 = ptrtoint ptr %host_tx_pkt_len.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %host_tx_pkt_len.i, align 4
  %hw_tx_cons.i = getelementptr inbounds %struct.qedi_uio_ctrl, ptr %13, i32 0, i32 6
  %31 = ptrtoint ptr %hw_tx_cons.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hw_tx_cons.i, align 4
  %inc.i = add i32 %32, 1
  store i32 %inc.i, ptr %hw_tx_cons.i, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %conv = trunc i64 %5 to i32
  %max_active_conns = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %33 = ptrtoint ptr %max_active_conns to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_active_conns, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv)
  %cmp11.not = icmp ugt i32 %34, %conv
  br i1 %cmp11.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %ep_tbl = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 5, i32 1, i32 2
  %35 = ptrtoint ptr %ep_tbl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ep_tbl, align 8
  %arrayidx = getelementptr ptr, ptr %36, i32 %conv
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_set_path, i32 noundef 1302, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %conv, ptr noundef %38) #11
  %tobool15.not = icmp eq ptr %38, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %mac_addr = getelementptr inbounds %struct.iscsi_path, ptr %path_data, i32 0, i32 1
  %39 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mac_addr, align 4
  %41 = and i32 %40, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end17.if.then20_crit_edge

if.end17.if.then20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

is_valid_ether_addr.exit:                         ; preds = %if.end17
  %add.ptr.i.i = getelementptr %struct.iscsi_path, ptr %path_data, i32 0, i32 1, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %43 to i32
  %or.i.i = or i32 %40, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then20_crit_edge, label %if.end22

is_valid_ether_addr.exit.if.then20_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then20:                                        ; preds = %is_valid_ether_addr.exit.if.then20_crit_edge, %if.end17.if.then20_crit_edge
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_notice(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_set_path, i32 noundef 1309, ptr noundef nonnull @.str.62) #11
  %state = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 10
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 65536, ptr %state, align 4
  br label %cleanup

if.end22:                                         ; preds = %is_valid_ether_addr.exit
  %src_mac = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 7
  %mac = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 1, i32 4, i32 2
  %45 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mac, align 4
  %47 = ptrtoint ptr %src_mac to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %src_mac, align 4
  %add.ptr.i = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 1, i32 4, i32 3
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qedi_endpoint, ptr %38, i32 0, i32 7, i32 4
  %50 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %add.ptr1.i, align 2
  %dst_mac = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 8
  %51 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mac_addr, align 4
  %53 = ptrtoint ptr %dst_mac to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %dst_mac, align 4
  %54 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i204 = getelementptr %struct.qedi_endpoint, ptr %38, i32 0, i32 8, i32 4
  %56 = ptrtoint ptr %add.ptr1.i204 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %add.ptr1.i204, align 2
  %vlan_id28 = getelementptr inbounds %struct.iscsi_path, ptr %path_data, i32 0, i32 6
  %57 = ptrtoint ptr %vlan_id28 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vlan_id28, align 8
  %vlan_id29 = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 5
  %59 = ptrtoint ptr %vlan_id29 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %vlan_id29, align 4
  %pmtu = getelementptr inbounds %struct.iscsi_path, ptr %path_data, i32 0, i32 7
  %60 = ptrtoint ptr %pmtu to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %pmtu, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1500, i16 %61)
  %cmp31 = icmp ult i16 %61, 1500
  br i1 %cmp31, label %if.then33, label %if.end22.if.end40_crit_edge

if.end22.if.end40_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then33:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %ll2_mtu = getelementptr %struct.Scsi_Host, ptr %shost, i32 6, i32 49, i32 14
  %62 = ptrtoint ptr %ll2_mtu to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ll2_mtu, align 8
  %pmtu34 = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 6
  %64 = ptrtoint ptr %pmtu34 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %pmtu34, align 2
  %65 = ptrtoint ptr %pmtu to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %pmtu, align 2
  %conv37 = zext i16 %66 to i32
  %conv39 = zext i16 %63 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_set_path, i32 noundef 1323, i32 noundef 2, ptr noundef nonnull @.str.63, i32 noundef %conv37, i32 noundef %conv39) #11
  %67 = ptrtoint ptr %pmtu to i32
  call void @__asan_load2_noabort(i32 %67)
  %.pr = load i16, ptr %pmtu, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.end22.if.end40_crit_edge
  %68 = phi i16 [ %.pr, %if.then33 ], [ %61, %if.end22.if.end40_crit_edge ]
  %conv42 = zext i16 %68 to i32
  %ll2_mtu43 = getelementptr %struct.Scsi_Host, ptr %shost, i32 6, i32 49, i32 14
  %69 = ptrtoint ptr %ll2_mtu43 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %ll2_mtu43, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %70)
  %cmp45.not = icmp eq i16 %68, %70
  br i1 %cmp45.not, label %if.end40.if.end59_crit_edge, label %if.then47

if.end40.if.end59_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then47:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp2(i16 9000, i16 %68)
  %cmp50 = icmp ugt i16 %68, 9000
  br i1 %cmp50, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedi_set_path, i32 noundef 1329, ptr noundef nonnull @.str.64, i32 noundef %conv42) #11
  br label %cleanup

if.end55:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @qedi_reset_host_mtu(ptr noundef %add.ptr, i16 noundef zeroext %68) #11
  %71 = ptrtoint ptr %ll2_mtu43 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ll2_mtu43, align 8
  %pmtu58 = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 6
  %73 = ptrtoint ptr %pmtu58 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %pmtu58, align 2
  br label %if.end59

if.end59:                                         ; preds = %if.end55, %if.end40.if.end59_crit_edge
  %src_port = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 3
  %74 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %src_port, align 4
  %76 = add i16 %75, 5536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %76)
  %77 = icmp ult i16 %76, 1024
  br i1 %77, label %if.then66, label %if.end59.if.then73_crit_edge

if.end59.if.then73_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

if.then66:                                        ; preds = %if.end59
  %lcl_port_tbl = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 5, i32 1, i32 3
  %call67 = tail call i32 @qedi_alloc_id(ptr noundef %lcl_port_tbl, i16 noundef zeroext %75) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then66.if.end82_crit_edge, label %if.then66.if.then73_crit_edge

if.then66.if.then73_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

if.then66.if.end82_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then73:                                        ; preds = %if.then66.if.then73_crit_edge, %if.end59.if.then73_crit_edge
  %lcl_port_tbl74 = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 5, i32 1, i32 3
  %call75 = tail call zeroext i16 @qedi_alloc_new_id(ptr noundef %lcl_port_tbl74) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call75)
  %cmp77 = icmp eq i16 %call75, -1
  br i1 %cmp77, label %if.then79, label %if.then73.if.end82_crit_edge

if.then73.if.end82_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then79:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_set_path, i32 noundef 1351, ptr noundef nonnull @.str.65, i32 noundef %conv) #11
  br label %cleanup

if.end82:                                         ; preds = %if.then73.if.end82_crit_edge, %if.then66.if.end82_crit_edge
  %port_id.1 = phi i16 [ %call75, %if.then73.if.end82_crit_edge ], [ %75, %if.then66.if.end82_crit_edge ]
  %78 = ptrtoint ptr %src_port to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %port_id.1, ptr %src_port, align 4
  %ip_type = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 9
  %79 = ptrtoint ptr %ip_type to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp85 = icmp eq i8 %80, 0
  %src_addr = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 2
  %src = getelementptr inbounds %struct.iscsi_path, ptr %path_data, i32 0, i32 4
  br i1 %cmp85, label %if.then87, label %if.else98

if.then87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %src, align 8
  %83 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %src_addr, align 4
  %src_ip = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 1, i32 4, i32 6
  %84 = load i32, ptr %src, align 8
  %85 = ptrtoint ptr %src_ip to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %src_ip, align 8
  %ip_type91 = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 3, i32 1
  %86 = ptrtoint ptr %ip_type91 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %ip_type91, align 8
  %87 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %src_port, align 4
  %conv95 = zext i16 %88 to i32
  %dst_addr = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 1
  %dst_port = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 4
  %89 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %dst_port, align 2
  %conv97 = zext i16 %90 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_set_path, i32 noundef 1369, i32 noundef 16, ptr noundef nonnull @.str.66, ptr noundef %src_addr, i32 noundef %conv95, ptr noundef %dst_addr, i32 noundef %conv97) #11
  br label %do.body

if.else98:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %91 = call ptr @memcpy(ptr %src_addr, ptr %src, i32 16)
  %src_ip102 = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 1, i32 4, i32 6
  %92 = call ptr @memcpy(ptr %src_ip102, ptr %src, i32 16)
  %ip_type105 = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 3, i32 1
  %93 = ptrtoint ptr %ip_type105 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %ip_type105, align 8
  %94 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %src_port, align 4
  %conv110 = zext i16 %95 to i32
  %dst_addr111 = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 1
  %dst_port113 = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 4
  %96 = ptrtoint ptr %dst_port113 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %dst_port113, align 2
  %conv114 = zext i16 %97 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_set_path, i32 noundef 1380, i32 noundef 16, ptr noundef nonnull @.str.67, ptr noundef %src_addr, i32 noundef %conv110, ptr noundef %dst_addr111, i32 noundef %conv114) #11
  br label %do.body

do.body:                                          ; preds = %if.else98, %if.then87
  %offload_work = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 28
  tail call void @__init_work(ptr noundef %offload_work, i32 noundef 0) #11
  %98 = ptrtoint ptr %offload_work to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -64, ptr %offload_work, align 4
  %lockdep_map = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 28, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.68, ptr noundef nonnull @qedi_set_path.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry119 = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 28, i32 1
  %99 = ptrtoint ptr %entry119 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %entry119, ptr %entry119, align 4
  %prev.i = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 28, i32 1, i32 1
  %100 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %entry119, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qedi_endpoint, ptr %38, i32 0, i32 28, i32 2
  %101 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @qedi_offload_work, ptr %func, align 4
  %offload_thread = getelementptr %struct.Scsi_Host, ptr %shost, i32 6, i32 49, i32 13
  %102 = ptrtoint ptr %offload_thread to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %offload_thread, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %103, ptr noundef %offload_work) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then79, %if.then52, %if.then20, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end24.i, %if.then13.i, %if.then9.i, %if.then5.i, %if.then.i, %if.then2, %if.then
  %retval.0 = phi i32 [ -6, %if.then2 ], [ -6, %if.then ], [ -22, %if.then52 ], [ 0, %do.body ], [ -12, %if.then79 ], [ -5, %if.then20 ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ %call20.i, %if.end24.i ], [ -22, %if.then13.i ], [ -22, %if.then9.i ], [ -22, %if.then5.i ], [ -22, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @qedi_attr_is_visible(i32 noundef %param_type, i32 noundef %param) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %param_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %param_type, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %param)
  %1 = icmp ult i32 %param, 4
  br i1 %1, label %switch.lookup, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %param)
  %2 = icmp ult i32 %param, 42
  br i1 %2, label %switch.lookup6, label %sw.bb2.return_crit_edge

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.qedi_attr_is_visible, i32 0, i32 %param
  br label %return.sink.split

switch.lookup6:                                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep7 = getelementptr inbounds [42 x i16], ptr @switch.table.qedi_attr_is_visible.115, i32 0, i32 %param
  br label %return.sink.split

return.sink.split:                                ; preds = %switch.lookup6, %switch.lookup
  %switch.gep7.sink = phi ptr [ %switch.gep7, %switch.lookup6 ], [ %switch.gep, %switch.lookup ]
  %3 = ptrtoint ptr %switch.gep7.sink to i32
  call void @__asan_load2_noabort(i32 %3)
  %switch.load8 = load i16, ptr %switch.gep7.sink, align 2
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb2.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %entry.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %sw.bb2.return_crit_edge ], [ %switch.load8, %return.sink.split ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_is_session_online(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_failure(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_process_iscsi_error(ptr noundef readonly %ep, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  %error_notice = alloca [12 x i8], align 1
  %unknown_msg = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %error_notice) #11
  %0 = call ptr @memcpy(ptr %error_notice, ptr @__const.qedi_process_iscsi_error.error_notice, i32 12)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %unknown_msg) #11
  %1 = call ptr @memcpy(ptr %unknown_msg, ptr @__const.qedi_process_iscsi_error.unknown_msg, i32 14)
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conn = getelementptr inbounds %struct.qedi_endpoint, ptr %ep, i32 0, i32 27
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep, align 4
  %error_code = getelementptr inbounds %struct.iscsi_eqe_data, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %error_code to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %error_code, align 2
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %5, ptr noundef nonnull @__func__.qedi_process_iscsi_error, i32 noundef 1670, ptr noundef nonnull @.str.5, i32 noundef %conv) #11
  %8 = ptrtoint ptr %error_code to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %error_code, align 2
  %conv10 = zext i8 %9 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end3
  %i.07.i = phi i32 [ 0, %if.end3 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [35 x %struct.anon.141], ptr @qedi_iscsi_error, i32 0, i32 %i.07.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv10)
  %cmp1.i = icmp eq i32 %11, %conv10
  br i1 %cmp1.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %err_string.i = getelementptr [35 x %struct.anon.141], ptr @qedi_iscsi_error, i32 0, i32 %i.07.i, i32 1
  %12 = ptrtoint ptr %err_string.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %err_string.i, align 4
  br label %qedi_get_iscsi_error.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 35
  br i1 %exitcond.not.i, label %for.inc.i.qedi_get_iscsi_error.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.qedi_get_iscsi_error.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qedi_get_iscsi_error.exit

qedi_get_iscsi_error.exit:                        ; preds = %for.inc.i.qedi_get_iscsi_error.exit_crit_edge, %if.then.i
  %msg.0.i = phi ptr [ %13, %if.then.i ], [ null, %for.inc.i.qedi_get_iscsi_error.exit_crit_edge ]
  %tobool11.not = icmp eq ptr %msg.0.i, null
  %msg.0 = select i1 %tobool11.not, ptr %unknown_msg, ptr %msg.0.i
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dd_data, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dev = getelementptr inbounds %struct.iscsi_cls_conn, ptr %19, i32 0, i32 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull %error_notice, ptr noundef %msg.0) #14
  br i1 %tobool11.not, label %qedi_get_iscsi_error.exit.cleanup_crit_edge, label %if.then17

qedi_get_iscsi_error.exit.cleanup_crit_edge:      ; preds = %qedi_get_iscsi_error.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %qedi_get_iscsi_error.exit
  %qedi18 = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %qedi18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qedi18, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %dd_data.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dd_data.i, align 8
  %parent.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %23, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %27, i32 -408
  %call.i = call i32 @iscsi_is_session_online(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then17.cleanup_crit_edge, label %if.then.i35

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i35:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %abrt_conn.i = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 11
  %28 = ptrtoint ptr %abrt_conn.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %abrt_conn.i, align 4
  %session.i = getelementptr inbounds %struct.iscsi_conn, ptr %25, i32 0, i32 2
  %29 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %session.i, align 8
  %state.i = getelementptr inbounds %struct.iscsi_session, ptr %30, i32 0, i32 54
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state.i, align 4
  %iscsi_conn_id.i = getelementptr inbounds %struct.qedi_conn, ptr %3, i32 0, i32 9
  %33 = ptrtoint ptr %iscsi_conn_id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iscsi_conn_id.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %21, ptr noundef nonnull @__func__.qedi_start_conn_recovery, i32 noundef 1516, ptr noundef nonnull @.str.4, i32 noundef %32, i32 noundef %34) #11
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %dd_data3.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %dd_data3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dd_data3.i, align 8
  call void @iscsi_conn_failure(ptr noundef %38, i32 noundef 1011) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i35, %if.then17.cleanup_crit_edge, %qedi_get_iscsi_error.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %unknown_msg) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %error_notice) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_process_tcp_error(ptr noundef readonly %ep, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conn = getelementptr inbounds %struct.qedi_endpoint, ptr %ep, i32 0, i32 27
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %error_code = getelementptr inbounds %struct.iscsi_eqe_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %error_code to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %error_code, align 2
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %3, ptr noundef nonnull @__func__.qedi_process_tcp_error, i32 noundef 1707, ptr noundef nonnull @.str.10, i32 noundef %conv) #11
  %qedi4 = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %qedi4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qedi4, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dd_data.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dd_data.i, align 8
  %parent.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %9, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 -408
  %call.i = tail call i32 @iscsi_is_session_online(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end3.cleanup_crit_edge, label %if.then.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %abrt_conn.i = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %abrt_conn.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %abrt_conn.i, align 4
  %session.i = getelementptr inbounds %struct.iscsi_conn, ptr %11, i32 0, i32 2
  %15 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %session.i, align 8
  %state.i = getelementptr inbounds %struct.iscsi_session, ptr %16, i32 0, i32 54
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i, align 4
  %iscsi_conn_id.i = getelementptr inbounds %struct.qedi_conn, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %iscsi_conn_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iscsi_conn_id.i, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %7, ptr noundef nonnull @__func__.qedi_start_conn_recovery, i32 noundef 1516, ptr noundef nonnull @.str.4, i32 noundef %18, i32 noundef %20) #11
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %dd_data3.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dd_data3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dd_data3.i, align 8
  tail call void @iscsi_conn_failure(ptr noundef %24, i32 noundef 1011) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_session_setup(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_session_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_conn_setup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_lookup_endpoint(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_put_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_format_mac(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_host_get_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedi_iscsi_send_ioreq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedi_send_iscsi_login(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedi_send_iscsi_nopout(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedi_send_iscsi_logout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedi_send_iscsi_tmf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedi_send_iscsi_text(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_iscsi_unmap_sg_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_clear_task_idx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_warn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_create_endpoint(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedi_alloc_sq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_offload_mesg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_free_sq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_destroy_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

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
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_clearsq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_free_id(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_notice(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_reset_host_mtu(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedi_alloc_id(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qedi_alloc_new_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_offload_work(ptr noundef %work) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -224
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 176) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedi_iscsi_offload_conn, i32 noundef 510, ptr noundef nonnull @.str.76, ptr noundef %add.ptr) #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %src.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 3
  %src_mac.i = getelementptr i8, ptr %work, i32 -180
  %3 = ptrtoint ptr %src_mac.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %src_mac.i, align 4
  %5 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %src.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %work, i32 -176
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 4
  %8 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %add.ptr1.i.i, align 8
  %dst.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 4
  %dst_mac.i = getelementptr i8, ptr %work, i32 -174
  %9 = ptrtoint ptr %dst_mac.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_mac.i, align 4
  %11 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst.i, align 8
  %add.ptr.i276.i = getelementptr i8, ptr %work, i32 -170
  %12 = ptrtoint ptr %add.ptr.i276.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i276.i, align 2
  %add.ptr1.i277.i = getelementptr %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 4
  %14 = ptrtoint ptr %add.ptr1.i277.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %add.ptr1.i277.i, align 4
  %src_addr.i = getelementptr i8, ptr %work, i32 -204
  %15 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_addr.i, align 4
  %ip.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %ip.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ip.i, align 4
  %dst_addr.i = getelementptr i8, ptr %work, i32 -220
  %18 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dst_addr.i, align 4
  %ip10.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %ip10.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ip10.i, align 8
  %ip_type.i = getelementptr i8, ptr %work, i32 -168
  %21 = ptrtoint ptr %ip_type.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ip_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.i = icmp eq i8 %22, 0
  br i1 %cmp.i, label %if.then13.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx22.i = getelementptr i8, ptr %work, i32 -200
  %23 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx22.i, align 4
  %arrayidx25.i = getelementptr %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx25.i, align 8
  %arrayidx27.i = getelementptr i8, ptr %work, i32 -216
  %26 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx27.i, align 4
  %arrayidx30.i = getelementptr %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx30.i, align 4
  %arrayidx22.1.i = getelementptr i8, ptr %work, i32 -196
  %29 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx22.1.i, align 4
  %arrayidx25.1.i = getelementptr %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 2
  %31 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx25.1.i, align 4
  %arrayidx27.1.i = getelementptr i8, ptr %work, i32 -212
  %32 = ptrtoint ptr %arrayidx27.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx27.1.i, align 4
  %arrayidx30.1.i = getelementptr %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 2
  %34 = ptrtoint ptr %arrayidx30.1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx30.1.i, align 8
  %arrayidx22.2.i = getelementptr i8, ptr %work, i32 -192
  %35 = ptrtoint ptr %arrayidx22.2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx22.2.i, align 4
  %arrayidx25.2.i = getelementptr %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 3
  %37 = ptrtoint ptr %arrayidx25.2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx25.2.i, align 8
  %arrayidx27.2.i = getelementptr i8, ptr %work, i32 -208
  %38 = ptrtoint ptr %arrayidx27.2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx27.2.i, align 4
  %arrayidx30.2.i = getelementptr %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 3
  %40 = ptrtoint ptr %arrayidx30.2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx30.2.i, align 4
  %ip_version31.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 7
  %41 = ptrtoint ptr %ip_version31.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %ip_version31.i, align 1
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_iscsi_offload_conn, i32 noundef 534, i32 noundef 16, ptr noundef nonnull @.str.78, ptr noundef %src_addr.i, ptr noundef %dst_addr.i) #11
  br label %if.end37.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %ip_version.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %ip_version.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %ip_version.i, align 1
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_iscsi_offload_conn, i32 noundef 524, i32 noundef 16, ptr noundef nonnull @.str.77, ptr noundef %src_addr.i, ptr noundef %dst_addr.i) #11
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then13.i, %for.body.preheader.i
  %src_port.i = getelementptr i8, ptr %work, i32 -188
  %43 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %src_port.i, align 4
  %port.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  %45 = ptrtoint ptr %port.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %port.i, align 4
  %dst_port.i = getelementptr i8, ptr %work, i32 -186
  %46 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %dst_port.i, align 2
  %port40.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %48 = ptrtoint ptr %port40.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %port40.i, align 8
  %49 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 6, ptr %call7.i.i.i, align 8
  %sq_pbl_dma.i = getelementptr i8, ptr %work, i32 -12
  %50 = ptrtoint ptr %sq_pbl_dma.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sq_pbl_dma.i, align 4
  %sq_pbl_addr.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %sq_pbl_addr.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %sq_pbl_addr.i, align 4
  %vlan_id.i = getelementptr i8, ptr %work, i32 -184
  %53 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vlan_id.i, align 4
  %vlan_id41.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 5
  %55 = ptrtoint ptr %vlan_id41.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %vlan_id41.i, align 4
  %tcp_flags.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 6
  %56 = ptrtoint ptr %tcp_flags.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %tcp_flags.i, align 2
  %58 = or i8 %57, 71
  store i8 %58, ptr %tcp_flags.i, align 2
  %fw_cid.i = getelementptr i8, ptr %work, i32 -48
  %59 = ptrtoint ptr %fw_cid.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fw_cid.i, align 4
  %num_queues.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 33
  %61 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %num_queues.i, align 8
  %conv80.i = zext i8 %62 to i32
  %rem.i = urem i32 %60, %conv80.i
  %conv81.i = trunc i32 %rem.i to i8
  %default_cq.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 8
  %63 = ptrtoint ptr %default_cq.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv81.i, ptr %default_cq.i, align 8
  %ka_max_probe_cnt.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 9
  %64 = ptrtoint ptr %ka_max_probe_cnt.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 10, ptr %ka_max_probe_cnt.i, align 1
  %dup_ack_theshold.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 10
  %65 = ptrtoint ptr %dup_ack_theshold.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 3, ptr %dup_ack_theshold.i, align 2
  %rcv_wnd.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 16
  %66 = ptrtoint ptr %rcv_wnd.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 65535, ptr %rcv_wnd.i, align 8
  %ss_thresh.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 19
  %67 = ptrtoint ptr %ss_thresh.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 65535, ptr %ss_thresh.i, align 4
  %srtt.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 20
  %68 = ptrtoint ptr %srtt.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 300, ptr %srtt.i, align 8
  %rtt_var.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 21
  %69 = ptrtoint ptr %rtt_var.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 150, ptr %rtt_var.i, align 2
  %flow_label.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 31
  %70 = ptrtoint ptr %flow_label.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %flow_label.i, align 4
  %ka_timeout.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 32
  %71 = ptrtoint ptr %ka_timeout.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 7200000, ptr %ka_timeout.i, align 8
  %ka_interval.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 33
  %72 = ptrtoint ptr %ka_interval.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 10000, ptr %ka_interval.i, align 4
  %max_rt_time.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 34
  %73 = ptrtoint ptr %max_rt_time.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 8000, ptr %max_rt_time.i, align 8
  %ttl.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 36
  %74 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -2, ptr %ttl.i, align 8
  %tos_or_tc.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 37
  %75 = ptrtoint ptr %tos_or_tc.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %tos_or_tc.i, align 1
  %remote_port.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 38
  %76 = ptrtoint ptr %remote_port.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %47, ptr %remote_port.i, align 2
  %local_port.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 39
  %77 = ptrtoint ptr %local_port.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %44, ptr %local_port.i, align 4
  %pmtu.i = getelementptr i8, ptr %work, i32 -182
  %78 = ptrtoint ptr %pmtu.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %pmtu.i, align 2
  %80 = ptrtoint ptr %ip_type.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ip_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %81)
  %cmp86.not.i = icmp eq i8 %81, 1
  %..i.i = select i1 %cmp86.not.i, i16 -60, i16 -40
  %sub.i.i = add i16 %..i.i, %79
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i.i)
  %tobool8.not.i.i = icmp eq i16 %sub.i.i, 0
  %spec.store.select.i.i = select i1 %tobool8.not.i.i, i16 1460, i16 %sub.i.i
  %mss.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 40
  %82 = ptrtoint ptr %mss.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %spec.store.select.i.i, ptr %mss.i, align 2
  %conv96.i = zext i16 %spec.store.select.i.i to i32
  %mul.i = shl nuw nsw i32 %conv96.i, 1
  %cwnd.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 18
  %83 = ptrtoint ptr %cwnd.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %mul.i, ptr %cwnd.i, align 8
  %rcv_wnd_scale.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 42
  %84 = ptrtoint ptr %rcv_wnd_scale.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 4, ptr %rcv_wnd_scale.i, align 1
  %da_timeout_value.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 43
  %85 = ptrtoint ptr %da_timeout_value.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 200, ptr %da_timeout_value.i, align 2
  %ack_frequency.i = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %call7.i.i.i, i32 0, i32 44
  %86 = ptrtoint ptr %ack_frequency.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 2, ptr %ack_frequency.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_iscsi_offload_conn, i32 noundef 578, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef %rem.i, i32 noundef %conv96.i) #11
  %db_data.i = getelementptr i8, ptr %work, i32 -40
  %agg_flags.i = getelementptr i8, ptr %work, i32 -39
  %87 = ptrtoint ptr %agg_flags.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %agg_flags.i, align 1
  %88 = ptrtoint ptr %db_data.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -100, ptr %db_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_ops to i32))
  %89 = load ptr, ptr @qedi_ops, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %db_recovery_add.i = getelementptr inbounds %struct.qed_common_ops, ptr %91, i32 0, i32 31
  %92 = ptrtoint ptr %db_recovery_add.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %db_recovery_add.i, align 4
  %cdev.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 3
  %94 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cdev.i, align 4
  %p_doorbell.i = getelementptr i8, ptr %work, i32 -44
  %96 = ptrtoint ptr %p_doorbell.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %p_doorbell.i, align 4
  %call156.i = tail call i32 %93(ptr noundef %95, ptr noundef %97, ptr noundef %db_data.i, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156.i)
  %tobool157.not.i = icmp eq i32 %call156.i, 0
  br i1 %tobool157.not.i, label %if.end159.i, label %if.then158.i

if.then158.i:                                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %if.then

if.end159.i:                                      ; preds = %if.end37.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_ops to i32))
  %98 = load ptr, ptr @qedi_ops, align 4
  %offload_conn.i = getelementptr inbounds %struct.qed_iscsi_ops, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %offload_conn.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %offload_conn.i, align 4
  %101 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cdev.i, align 4
  %handle.i = getelementptr i8, ptr %work, i32 -52
  %103 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %handle.i, align 4
  %call161.i = tail call i32 %100(ptr noundef %102, i32 noundef %104, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.i)
  %tobool162.not.i = icmp eq i32 %call161.i, 0
  br i1 %tobool162.not.i, label %qedi_iscsi_offload_conn.exit.thread86, label %qedi_iscsi_offload_conn.exit

qedi_iscsi_offload_conn.exit.thread86:            ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %if.end

qedi_iscsi_offload_conn.exit:                     ; preds = %if.end159.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedi_ops to i32))
  %105 = load ptr, ptr @qedi_ops, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %db_recovery_del.i = getelementptr inbounds %struct.qed_common_ops, ptr %107, i32 0, i32 32
  %108 = ptrtoint ptr %db_recovery_del.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %db_recovery_del.i, align 4
  %110 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cdev.i, align 4
  %112 = ptrtoint ptr %p_doorbell.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %p_doorbell.i, align 4
  %call168.i = tail call i32 %109(ptr noundef %111, ptr noundef %113, ptr noundef %db_data.i) #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedi_iscsi_offload_conn, i32 noundef 609, ptr noundef nonnull @.str.80, i32 noundef %call168.i, ptr noundef %add.ptr) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168.i)
  %tobool.not = icmp eq i32 %call168.i, 0
  br i1 %tobool.not, label %qedi_iscsi_offload_conn.exit.if.end_crit_edge, label %qedi_iscsi_offload_conn.exit.if.then_crit_edge

qedi_iscsi_offload_conn.exit.if.then_crit_edge:   ; preds = %qedi_iscsi_offload_conn.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

qedi_iscsi_offload_conn.exit.if.end_crit_edge:    ; preds = %qedi_iscsi_offload_conn.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %qedi_iscsi_offload_conn.exit.if.then_crit_edge, %if.then158.i, %if.then.i
  %retval.0.i85 = phi i32 [ %call168.i, %qedi_iscsi_offload_conn.exit.if.then_crit_edge ], [ -12, %if.then.i ], [ %call156.i, %if.then158.i ]
  %iscsi_cid = getelementptr i8, ptr %work, i32 -56
  %114 = ptrtoint ptr %iscsi_cid to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %iscsi_cid, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedi_offload_work, i32 noundef 1251, ptr noundef nonnull @.str.74, i32 noundef %115, ptr noundef %add.ptr, i32 noundef %retval.0.i85) #11
  %state = getelementptr i8, ptr %work, i32 -164
  %116 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 8192, ptr %state, align 4
  br label %cleanup52

if.end:                                           ; preds = %qedi_iscsi_offload_conn.exit.if.end_crit_edge, %qedi_iscsi_offload_conn.exit.thread86
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1259) #11
  %state5 = getelementptr i8, ptr %work, i32 -164
  %117 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %118)
  %cmp = icmp eq i32 %118, 8
  br i1 %cmp, label %if.end.cleanup52_crit_edge, label %if.then14

if.end.cleanup52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

if.then14:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %119 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %tcp_ofld_wait = getelementptr i8, ptr %work, i32 -108
  %call16102 = call i32 @prepare_to_wait_event(ptr noundef %tcp_ofld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %120 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %121)
  %cmp19103 = icmp eq i32 %121, 8
  br i1 %cmp19103, label %if.then14.for.end_crit_edge, label %if.then14.if.end35_crit_edge

if.then14.if.end35_crit_edge:                     ; preds = %if.then14
  br label %if.end35

if.then14.for.end_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end35:                                         ; preds = %cleanup.if.end35_crit_edge, %if.then14.if.end35_crit_edge
  %__ret15.1105 = phi i32 [ %__ret15.1, %cleanup.if.end35_crit_edge ], [ 500, %if.then14.if.end35_crit_edge ]
  %call16104 = phi i32 [ %call16, %cleanup.if.end35_crit_edge ], [ %call16102, %if.then14.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16104)
  %tobool36.not = icmp eq i32 %call16104, 0
  br i1 %tobool36.not, label %cleanup, label %if.end35.if.end42_crit_edge

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

cleanup:                                          ; preds = %if.end35
  %call39 = call i32 @schedule_timeout(i32 noundef %__ret15.1105) #11
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %tcp_ofld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %122 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %123)
  %cmp19 = icmp eq i32 %123, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool23.not = icmp eq i32 %call39, 0
  %124 = select i1 %cmp19, i1 %tobool23.not, i1 false
  %__ret15.1 = select i1 %124, i32 1, i32 %call39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.1)
  %tobool29.not = icmp eq i32 %__ret15.1, 0
  %125 = select i1 %cmp19, i1 true, i1 %tobool29.not
  br i1 %125, label %cleanup.for.end_crit_edge, label %cleanup.if.end35_crit_edge

cleanup.if.end35_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then14.for.end_crit_edge
  %__ret15.1.lcssa = phi i32 [ 500, %if.then14.for.end_crit_edge ], [ %__ret15.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %tcp_ofld_wait, ptr noundef nonnull %__wq_entry) #11
  br label %if.end42

if.end42:                                         ; preds = %for.end, %if.end35.if.end42_crit_edge
  %__ret15.291 = phi i32 [ %__ret15.1.lcssa, %for.end ], [ %call16104, %if.end35.if.end42_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret15.291)
  %cmp44 = icmp slt i32 %__ret15.291, 1
  br i1 %cmp44, label %if.end42.if.then47_crit_edge, label %lor.lhs.false

if.end42.if.then47_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then47

lor.lhs.false:                                    ; preds = %if.end42
  %126 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pr = load i32, ptr %state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr)
  %cmp46.not = icmp eq i32 %.pr, 8
  br i1 %cmp46.not, label %lor.lhs.false.cleanup52_crit_edge, label %lor.lhs.false.if.then47_crit_edge

lor.lhs.false.if.then47_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then47

lor.lhs.false.cleanup52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

if.then47:                                        ; preds = %lor.lhs.false.if.then47_crit_edge, %if.end42.if.then47_crit_edge
  %127 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 8192, ptr %state5, align 4
  %iscsi_cid50 = getelementptr i8, ptr %work, i32 -56
  %128 = ptrtoint ptr %iscsi_cid50 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %iscsi_cid50, align 4
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedi_offload_work, i32 noundef 1264, ptr noundef nonnull @.str.75, i32 noundef %129, ptr noundef %add.ptr) #11
  br label %cleanup52

cleanup52:                                        ; preds = %if.then47, %lor.lhs.false.cleanup52_crit_edge, %if.end.cleanup52_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !19, !21, !22, !23, !24, !25, !26, !28, !29, !31, !32, !34, !36, !37, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !102, !103, !105, !107, !109, !111, !113, !115, !117, !118, !120, !121, !123, !125, !127, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !163, !164, !166, !168, !170, !172, !174, !175, !177, !179, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256}
!llvm.module.flags = !{!258, !259, !260, !261, !262, !263, !264, !265}
!llvm.ident = !{!266}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 45, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 46, i32 15}
!4 = !{ptr @qedi_host_template, !5, !"qedi_host_template", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 43, i32 27}
!6 = !{ptr @__func__.qedi_get_conn_from_id, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 370, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 374, i32 3}
!11 = !{ptr @qedi_iscsi_transport, !12, !"qedi_iscsi_transport", i1 false, i1 false}
!12 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1471, i32 24}
!13 = !{ptr @__func__.qedi_start_conn_recovery, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1514, i32 3}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__func__.qedi_process_iscsi_error, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1669, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1686, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @qedi_process_iscsi_error._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @qedi_process_iscsi_error._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__func__.qedi_process_tcp_error, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1706, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__func__.qedi_session_create, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 262, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 268, i32 3}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 198, i32 3}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @qedi_alloc_sget._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @qedi_alloc_sget._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__func__.qedi_conn_create, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 302, i32 3}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @qedi_conn_create.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 315, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 318, i32 3}
!48 = !{ptr @qedi_conn_create._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @qedi_conn_create._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @__func__.qedi_conn_alloc_login_resources, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 136, i32 2}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 158, i32 2}
!55 = !{ptr @qedi_conn_alloc_login_resources._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @qedi_conn_alloc_login_resources._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @qedi_conn_bind.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 423, i32 2}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @qedi_conn_bind.__key.22, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 425, i32 2}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 357, i32 3}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @qedi_bind_conn_to_iscsi_cid._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @qedi_bind_conn_to_iscsi_cid._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 627, i32 3}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @qedi_conn_start._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @qedi_conn_start._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 642, i32 3}
!75 = !{ptr @qedi_conn_start._entry.28, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @qedi_conn_start._entry_ptr.30, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @__func__.qedi_iscsi_update_conn, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 444, i32 3}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 475, i32 3}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 675, i32 22}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 679, i32 23}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 681, i32 23}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 703, i32 22}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 747, i32 32}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 803, i32 3}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @qedi_iscsi_send_generic_request._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @qedi_iscsi_send_generic_request._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @__func__.qedi_cleanup_task, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1454, i32 3}
!99 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @__func__.qedi_ep_connect, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 880, i32 3}
!102 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 898, i32 3}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 904, i32 3}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 920, i32 3}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 929, i32 3}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 933, i32 3}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 944, i32 3}
!115 = !{ptr @qedi_ep_connect.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 952, i32 2}
!117 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @qedi_ep_connect.__key.49, !119, !"__key", i1 false, i1 false}
!119 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 953, i32 2}
!120 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 978, i32 3}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 991, i32 3}
!125 = !{ptr @__func__.qedi_ep_disconnect, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1068, i32 3}
!127 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1084, i32 5}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1089, i32 4}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1110, i32 3}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1146, i32 3}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1155, i32 4}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1164, i32 3}
!140 = !{ptr @__func__.qedi_set_path, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1278, i32 3}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1284, i32 3}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1301, i32 2}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1309, i32 3}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1321, i32 3}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1329, i32 4}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1349, i32 4}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1366, i32 3}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1377, i32 3}
!158 = !{ptr @qedi_set_path.__key, !159, !"__key", i1 false, i1 false}
!159 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1383, i32 2}
!160 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @__func__.qedi_data_avail, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1195, i32 3}
!163 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1201, i32 3}
!166 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1207, i32 3}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1213, i32 3}
!170 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1226, i32 3}
!172 = !{ptr @__func__.qedi_offload_work, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1249, i32 3}
!174 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1262, i32 3}
!177 = !{ptr @__func__.qedi_iscsi_offload_conn, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 509, i32 3}
!179 = !{ptr @.str.76, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 522, i32 3}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 532, i32 3}
!184 = !{ptr @.str.79, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 576, i32 2}
!186 = !{ptr @.str.80, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 608, i32 3}
!188 = !{ptr @.str.81, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1527, i32 4}
!190 = !{ptr @.str.82, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1530, i32 4}
!192 = !{ptr @.str.83, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1533, i32 4}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1536, i32 4}
!196 = !{ptr @.str.85, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1539, i32 4}
!198 = !{ptr @.str.86, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1542, i32 4}
!200 = !{ptr @.str.87, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1545, i32 4}
!202 = !{ptr @.str.88, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1548, i32 4}
!204 = !{ptr @.str.89, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1554, i32 4}
!206 = !{ptr @.str.90, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1557, i32 4}
!208 = !{ptr @.str.91, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1560, i32 4}
!210 = !{ptr @.str.92, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1563, i32 4}
!212 = !{ptr @.str.93, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1566, i32 4}
!214 = !{ptr @.str.94, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1569, i32 4}
!216 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1572, i32 4}
!218 = !{ptr @.str.96, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1575, i32 4}
!220 = !{ptr @.str.97, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1578, i32 4}
!222 = !{ptr @.str.98, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1581, i32 4}
!224 = !{ptr @.str.99, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1584, i32 4}
!226 = !{ptr @.str.100, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1587, i32 4}
!228 = !{ptr @.str.101, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1590, i32 4}
!230 = !{ptr @.str.102, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1593, i32 4}
!232 = !{ptr @.str.103, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1596, i32 4}
!234 = !{ptr @.str.104, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1599, i32 4}
!236 = !{ptr @.str.105, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1602, i32 4}
!238 = !{ptr @.str.106, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1605, i32 4}
!240 = !{ptr @.str.107, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1608, i32 4}
!242 = !{ptr @.str.108, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1611, i32 4}
!244 = !{ptr @.str.109, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1614, i32 4}
!246 = !{ptr @.str.110, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1617, i32 4}
!248 = !{ptr @.str.111, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1620, i32 4}
!250 = !{ptr @.str.112, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1623, i32 4}
!252 = !{ptr @.str.113, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1626, i32 4}
!254 = !{ptr @.str.114, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1629, i32 4}
!256 = !{ptr @qedi_iscsi_error, !257, !"qedi_iscsi_error", i1 false, i1 false}
!257 = !{!"../drivers/scsi/qedi/qedi_iscsi.c", i32 1525, i32 3}
!258 = !{i32 1, !"wchar_size", i32 2}
!259 = !{i32 1, !"min_enum_size", i32 4}
!260 = !{i32 8, !"branch-target-enforcement", i32 0}
!261 = !{i32 8, !"sign-return-address", i32 0}
!262 = !{i32 8, !"sign-return-address-all", i32 0}
!263 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!264 = !{i32 7, !"uwtable", i32 1}
!265 = !{i32 7, !"frame-pointer", i32 2}
!266 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!267 = !{i64 2148501662, i64 2148501688, i64 2148501717, i64 2148501751, i64 2148501782, i64 2148501805}
!268 = !{!"branch_weights", i32 1, i32 2000}
!269 = !{i64 2148504127, i64 2148504153, i64 2148504182, i64 2148504216, i64 2148504247, i64 2148504270}
