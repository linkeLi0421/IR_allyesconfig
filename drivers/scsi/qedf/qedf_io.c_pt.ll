; ModuleID = '/llk/IR_all_yes/drivers/scsi/qedf/qedf_io.c_pt.bc'
source_filename = "../drivers/scsi/qedf/qedf_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qedf_ctx = type { %struct.qedf_dbg_ctx, %struct.fcoe_ctlr, ptr, [6 x i8], %struct.atomic_t, %struct.atomic_t, i32, i8, ptr, %struct.qed_dev_fcoe_info, %struct.qed_int_info, i16, %struct.spinlock, ptr, i64, i64, [6 x i8], %struct.list_head, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.completion, %struct.completion, %struct.atomic_t, %struct.timer_list, i32, i32, i8, ptr, ptr, i32, [256 x %struct.qedf_bdq_buf], ptr, i32, i32, ptr, i32, i8, ptr, ptr, i16, ptr, %struct.qed_fcoe_tid, ptr, %struct.qed_pf_params, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i32, i32, ptr, i32, [2048 x %struct.qedf_io_log], %struct.spinlock, i16, i8, i32, i32, i32, %struct.mutex, i64, i64, i64, i64, i64, i8, i8, i8, i8, %struct.mutex, [8 x i8] }
%struct.qedf_dbg_ctx = type { i32, ptr, ptr }
%struct.fcoe_ctlr = type { i32, i32, ptr, ptr, %struct.list_head, ptr, i16, i32, i32, i32, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, ptr, %struct.rnd_state, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], ptr, ptr, ptr, %struct.mutex, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.qed_dev_fcoe_info = type { %struct.qed_dev_info, ptr, ptr, i64, i64, i8 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qedf_bdq_buf = type { ptr, i32 }
%struct.qed_fcoe_tid = type { i32, i32, [512 x ptr] }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.qedf_io_log = type { i8, i16, i32, i32, i8, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.qedf_ioreq = type { %struct.list_head, i16, ptr, i8, i8, i8, ptr, %struct.atomic_t, i32, i32, i32, %struct.kref, ptr, ptr, %struct.delayed_work, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, %struct.qedf_mp_req, ptr, ptr, i32, i32, i32, i8, %struct.delayed_work, i32, i32, i32, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.qedf_mp_req = type { i32, ptr, i32, ptr, i32, %struct.fc_frame_header, i32, ptr, i32, ptr, i32, %struct.fc_frame_header }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.qedf_cmd_mgr = type { ptr, i16, ptr, [2048 x %struct.qedf_ioreq], %struct.spinlock, %struct.atomic_t }
%struct.io_bdt = type { ptr, ptr, i32, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.107, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.107 = type { ptr }
%struct.qedf_rport = type { %struct.spinlock, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i16, i16, i16, i32, ptr, i32, i32, i32, i32, %struct.list_head }
%struct.fcoe_tx_mid_path_params = type { i32, i8, i8, i8, i8, i16, i16 }
%struct.scsi_sgl_task_params = type { ptr, %struct.regpair, i32, i16, i8 }
%struct.regpair = type { i32, i32 }
%struct.fcoe_task_params = type { ptr, ptr, i32, i32, i32, i32, i16, i8, i8 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.scsi_sge = type { %struct.regpair, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.fcoe_wqe = type { i16, i16, %union.fcoe_additional_info_union }
%union.fcoe_additional_info_union = type { i32 }
%struct.fcp_cmnd = type { %struct.scsi_lun, i8, i8, i8, i8, [16 x i8], i32 }
%struct.scsi_lun = type { [8 x i8] }
%struct.fc_rport_priv = type { ptr, ptr, %struct.kref, i32, %struct.fc_rport_identifiers, i16, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, %struct.delayed_work, i32, ptr, %struct.list_head, %struct.work_struct, i32, i16, %struct.callback_head, i16, i8, ptr }
%struct.fc_rport_identifiers = type { i64, i64, i32, i32 }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_rport_libfc_priv = type { ptr, i32, i16, i32, i32 }
%struct.fcoe_cqe = type { i32, i16, i16, %union.fcoe_cqe_info }
%union.fcoe_cqe_info = type { %struct.fcoe_cqe_rsp_info }
%struct.fcoe_cqe_rsp_info = type { %struct.fcoe_fcp_rsp_flags, i8, i16, i32, i32, i32, i16, i8, i8, i32 }
%struct.fcoe_fcp_rsp_flags = type { i8 }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.qed_common_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.qedf_io_work = type { %struct.work_struct, %struct.fcoe_cqe, ptr, ptr }

@__func__.qedf_cmd_mgr_free = private unnamed_addr constant [18 x i8] c"qedf_cmd_mgr_free\00", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"io_bdt_pool is NULL.\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.qedf_cmd_mgr_alloc = private unnamed_addr constant [19 x i8] c"qedf_cmd_mgr_alloc\00", align 1
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"num_queues is not set.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"min xid 0x%x, max xid 0x%x.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to alloc cmd mgr.\0A\00", [38 x i8] zeroinitializer }, align 32
@qedf_cmd_mgr_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&cmgr->lock\00", [20 x i8] zeroinitializer }, align 32
@qedf_cmd_mgr_alloc.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&io_req->timeout_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@qedf_cmd_mgr_alloc.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&io_req->timeout_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@qedf_cmd_mgr_alloc.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&io_req->rrq_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@qedf_cmd_mgr_alloc.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&io_req->rrq_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to alloc sense buffer.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to allocate task_params for xid=0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to allocate sgl_task_params for xid=0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to alloc io_bdt_pool.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to alloc io_bdt_pool[%d].\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to alloc bdt_tbl[%d].\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cmgr->free_list_cnt=%d.\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.qedf_alloc_cmd = private unnamed_addr constant [15 x i8] c"qedf_alloc_cmd\00", align 1
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Returning NULL, free_sqes=%d.\0A \00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Returning NULL, num_active_ios=%d.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Returning NULL, free_list_cnt=%d.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"io_req found to be dirty ox_id = 0x%x.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bd_tbl is NULL, xid=%x.\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.qedf_release_cmd = private unnamed_addr constant [17 x i8] c"qedf_release_cmd\00", align 1
@.str.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Cmd released called without scsi_done called, io_req %p xid=0x%x.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/scsi/qedf/qedf_io.c\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"active_ios < 0.\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.qedf_init_mp_task = private unnamed_addr constant [18 x i8] c"qedf_init_mp_task\00", align 1
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Initializing MP task for cmd_type=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.qedf_post_io_req = private unnamed_addr constant [17 x i8] c"qedf_post_io_req\00", align 1
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"BD list creation failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Session not offloaded yet.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"task_ctx is NULL, xid=%d.\0A\00", [37 x i8] zeroinitializer }, align 32
@qedf_io_tracing = external dso_local local_unnamed_addr global i32, align 4
@__func__.qedf_queuecommand = private unnamed_addr constant [18 x i8] c"qedf_queuecommand\00", align 1
@.str.33 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Number of SG elements %d exceeds what hardware limitation of %d.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Returning DNC as unloading or stop io, flags 0x%lx.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Completing sc_cmd=%p DID_NO_CONNECT as MSI-X is not enabled.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"fc_remote_port_chkready failed=0x%x for port_id=0x%06x.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Drain active.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Link down.\0A\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to post io_req\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.qedf_scsi_completion = private unnamed_addr constant [21 x i8] c"qedf_scsi_completion\00", align 1
@.str.40 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"io_req xid=0x%x already in cleanup or abort processing or already completed.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sc_cmd is NULL!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SCp.ptr is NULL, returned in another context.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Device for sc_cmd %p is NULL.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"request->q is NULL so request is not valid, sc_cmd=%p.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Dropping good completion xid=0x%x as fcport is flushing\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"FCP I/O protocol failure xid=0x%x fcp_rsp_len=%d fcp_rsp_code=%d.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"Firmware detected underrun: xid=0x%x fcp_rsp.flags=0x%02x fcp_resid=%d fw_residual=0x%x lba=%02x%02x%02x%02x.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"%d:0:%d:%lld xid=0x%0x op=0x%02x lba=%02x%02x%02x%02x cdb_status=%d fcp_resid=0x%x refcount=%d.\0A\00", [63 x i8] zeroinitializer }, align 32
@qedf_retry_delay = external dso_local local_unnamed_addr global i8, align 1
@.str.51 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"combination of scope = %d and qualifier = %d is not handled in qedf.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fcp_status=%d.\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.qedf_scsi_done = private unnamed_addr constant [15 x i8] c"qedf_scsi_done\00", align 1
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"io_req is NULL\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"io_req:%p scsi_done handling already done\0A\00", [53 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sc_cmd=%p is not valid.\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Device pointer for sc_cmd %p is bad.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sc_cmd->sense_buffer for sc_cmd %p is NULL.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sc_cmd->sense_buffer for sc_cmd %p is bad.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"%d:0:%d:%lld: Completing sc_cmd=%p result=0x%08x op=0x%02x lba=0x%02x%02x%02x%02x, allowed=%d retries=%d refcount=%d.\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.qedf_process_warning_compl = private unnamed_addr constant [27 x i8] c"qedf_process_warning_compl\00", align 1
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cqe is NULL for io_req %p xid=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Warning CQE, xid=0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"err_warn_bitmap=%08x:%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tx_buff_off=%08x, rx_buff_off=%08x, rx_id=%04x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"REC timer expired.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to queue ABTS.\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.qedf_process_error_detect = private unnamed_addr constant [26 x i8] c"qedf_process_error_detect\00", align 1
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"io_req is NULL.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fcport is NULL.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cqe is NULL for io_req %p\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error detection CQE, xid=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Dropping EQE for xid=0x%x as fcport is flushing\00", [48 x i8] zeroinitializer }, align 32
@__func__.qedf_flush_active_ios = private unnamed_addr constant [22 x i8] c"qedf_flush_active_ios\00", align 1
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fcport is NULL\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fcport is no longer offloaded.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qedf is NULL.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Waiting for %d I/Os to be queued\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%d IOs request could not be queued\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Flush active i/o's num=0x%x fcport=0x%p port_id=0x%06x scsi_id=%d.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Locking flush mutex.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Allocated but not queued, xid=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Not outstanding, xid=0x%x, cmd_type=%d refcount=%d.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Putting reference for pending RRQ work xid=0x%x.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Could not get kref for ELS io_req=0x%p xid=0x%x.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Could not get kref for abort io_req=0x%p xid=0x%x.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Flushing abort xid=0x%x.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Putting ref for cancelled RRQ work xid=0x%x.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Putting ref for cancelled tmo work xid=0x%x.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Device backpointer NULL for sc_cmd=%p.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Could not get kref for io_req=0x%p xid=0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cleanup xid=0x%x.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Flushed 0x%x I/Os, active=0x%x.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Flushed 0x%x I/Os, active=0x%x cnt=%d.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Flushed %d I/Os, active=%d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Outstanding io_req =%p xid=0x%x flags=0x%lx, sc_cmd=%p refcount=%d cmd_type=%d.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unlocking flush mutex.\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.qedf_initiate_abts = private unnamed_addr constant [19 x i8] c"qedf_initiate_abts\00", align 1
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tgt not offloaded\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stale rport\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"link is not ready\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"link_down_tmo active.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No SQ entries available\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fcport is uploading.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"io_req xid=0x%x sc_cmd=%p already in cleanup or abort processing or already completed.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ABTS io_req xid = 0x%x refcount=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.qedf_process_abts_compl = private unnamed_addr constant [24 x i8] c"qedf_process_abts_compl\00", align 1
@.str.102 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Entered with xid = 0x%x cmd_type = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Dropping ABTS completion xid=0x%x as fcport is NULL\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Dropping ABTS completion xid=0x%x as fcport is flushing\00", [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Wasn't able to cancel abts timeout work.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ABTS response - ACC Send RRQ after R_A_TOV\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"kref is already zero so ABTS was already completed or flushed xid=0x%x.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ABTS response - RJT\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown ABTS response\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Not call scsi_done for xid=0x%x.\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.qedf_init_mp_req = private unnamed_addr constant [17 x i8] c"qedf_init_mp_req\00", align 1
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Entered.\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to alloc MP req buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to alloc TM resp buffer\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to alloc MP req bd\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to alloc MP resp bd\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.qedf_initiate_cleanup = private unnamed_addr constant [22 x i8] c"qedf_initiate_cleanup\00", align 1
@.str.116 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"io_req xid=0x%x already in cleanup processing or already completed.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"io_req=0x%x is already a cleanup command cmd_type=%d.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Entered xid=0x%x sc_cmd=%p cmd_type=%d flags=0x%lx refcount=%d fcport=%p port_id=0x%06x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cleanup command timeout, xid=%x.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Issuing MCP drain request.\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.qedf_process_cleanup_compl = private unnamed_addr constant [27 x i8] c"qedf_process_cleanup_compl\00", align 1
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Entered xid = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.qedf_initiate_tmf = private unnamed_addr constant [18 x i8] c"qedf_initiate_tmf\00", align 1
@.str.122 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"tm_flags 0x%x sc_cmd %p op = 0x%02x target_id = 0x%x lun=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"portid=%06x tm_flags =%s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TARGET RESET\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LUN RESET\00", [22 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"orig io_req = %p xid = 0x%x ref_cnt = %d.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"device_reset rport not ready\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"device_reset: rport is NULL\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Connection is getting uploaded.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fcport %p is uploading.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"fcport %p port_id=%06x is uploading.\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.qedf_process_unsol_compl = private unnamed_addr constant [25 x i8] c"qedf_process_unsol_compl\00", align 1
@.str.132 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"address.hi=%x, address.lo=%x, opaque_data.hi=%x, opaque_data.lo=%x, bdq_prod_idx=%u, len=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bdq_idx is out of range %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"bdq_addr is NULL, dropping unsolicited packet.\0A\00", [48 x i8] zeroinitializer }, align 32
@qedf_dump_frames = external dso_local local_unnamed_addr global i32, align 4
@.str.135 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"BDQ frame is at addr=%p.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bdq \00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not allocate fp.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Processing Unsolicated frame, src=%06x dest=%06x r_ctl=0x%x type=0x%x cmd=%02x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Could not allocate work for I/O completion.\0A\00", [51 x i8] zeroinitializer }, align 32
@qedf_process_unsol_compl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.141 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&io_work->work)\00", [62 x i8] zeroinitializer }, align 32
@qedf_io_wq = external dso_local local_unnamed_addr global ptr, align 4
@__func__.qedf_cmd_timeout = private unnamed_addr constant [17 x i8] c"qedf_cmd_timeout\00", align 1
@.str.142 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qedf is NULL for ABTS xid=0x%x.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ABTS timeout, xid=0x%x.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qedf is NULL for ELS xid=0x%x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ELS timeout, xid=0x%x.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Sequence cleanup timeout, xid=0x%x.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Hit default case, xid=0x%x.\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.qedf_map_sg = private unnamed_addr constant [12 x i8] c"qedf_map_sg\00", align 1
@.str.148 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"byte_count = %d != scsi_bufflen = %d, task_id = 0x%x.\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.qedf_parse_fcp_rsp = private unnamed_addr constant [19 x i8] c"qedf_parse_fcp_rsp\00", align 1
@.str.149 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fcp_rsp_code = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Truncating sense buffer\0A\00", [39 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__func__.qedf_flush_els_req = private unnamed_addr constant [19 x i8] c"qedf_flush_els_req\00", align 1
@.str.152 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Flushing ELS request xid=0x%x refcount=%d.\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.qedf_drain_request = private unnamed_addr constant [19 x i8] c"qedf_drain_request\00", align 1
@.str.153 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MCP drain already active.\0A\00", [37 x i8] zeroinitializer }, align 32
@qed_ops = external dso_local local_unnamed_addr global ptr, align 4
@__func__.qedf_execute_tmf = private unnamed_addr constant [17 x i8] c"qedf_execute_tmf\00", align 1
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sc_cmd is NULL\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fcport not offloaded\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Failed TMF\00", [21 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TMF io_req xid = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wait for tm_cmpl timeout!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fcport is uploading, not executing flush.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"task mgmt command failed...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"task mgmt command success...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/scsi/fc_frame.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.166 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 11]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 40]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 8, i64 132, i64 133]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 11]
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 121, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 185, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 195, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 202, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 207, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 216, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 220, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 227, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 236, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 249, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 261, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 269, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 281, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 287, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 312, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 321, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 329, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 353, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 382, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 441, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 444, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 455, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 687, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 881, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 890, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 908, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 946, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 956, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 965, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 975, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 985, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 992, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1039, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1139, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1149, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1154, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1160, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1166, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1180, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1192, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1203, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1230, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1292, i32 5 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1299, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1328, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1333, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1353, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1370, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1376, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1383, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1393, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1439, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1445, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1447, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1451, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1472, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1496, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1506, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1511, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1516, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1521, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1537, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1597, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1603, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1610, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1618, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1622, i32 5 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1633, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1637, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1660, i32 6 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1680, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1690, i32 6 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1706, i32 5 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1726, i32 5 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1734, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1738, i32 5 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1745, i32 5 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1764, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1784, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1789, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1801, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1808, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1814, i32 5 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1826, i32 7 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1845, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1868, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1877, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1885, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1891, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1898, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1904, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1912, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1931, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1962, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1972, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1984, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1991, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1997, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2002, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2017, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2022, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2030, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2052, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2066, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2074, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2085, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2093, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2183, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2200, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2209, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2238, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2242, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2277, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2422, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2432, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2439, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2446, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2456, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2470, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2489, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2492, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2534, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2544, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2551, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2557, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2559, i32 18 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2559, i32 32 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2567, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2575, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2594, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2601, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 37, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 43, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 67, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 81, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 93, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 100, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 521, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1087, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1094, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.626 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 87, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1557, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2126, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2302, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2308, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2315, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2344, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2369, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2385, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2400, i32 3 }
@___asan_gen_.656 = private constant [31 x i8] c"../drivers/scsi/qedf/qedf_io.c\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2403, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.659 = private unnamed_addr constant [27 x i8] c"../include/scsi/fc_frame.h\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 161, i32 2 }
@llvm.compiler.used = appending global [163 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @qedf_cmd_mgr_alloc.__key, ptr @.str.5, ptr @qedf_cmd_mgr_alloc.__key.6, ptr @.str.7, ptr @qedf_cmd_mgr_alloc.__key.8, ptr @.str.9, ptr @qedf_cmd_mgr_alloc.__key.10, ptr @.str.11, ptr @qedf_cmd_mgr_alloc.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @qedf_process_unsol_compl.__key, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @init_completion.__key, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162], section "llvm.metadata"
@0 = internal global [163 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_cmd_mgr_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_cmd_mgr_alloc.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_cmd_mgr_alloc.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_cmd_mgr_alloc.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_cmd_mgr_alloc.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_process_unsol_compl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_cmd_timer_set(ptr nocapture noundef readonly %qedf, ptr noundef %io_req, i32 noundef %timer_msec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_work_queue = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 49
  %0 = ptrtoint ptr %timer_work_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer_work_queue, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timer_msec) #10
  %timeout_work = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 14
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %timeout_work, i32 noundef %call2.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_cmd_mgr_free(ptr noundef %cmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmgr, align 4
  %io_bdt_pool = getelementptr inbounds %struct.qedf_cmd_mgr, ptr %cmgr, i32 0, i32 2
  %2 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_bdt_pool, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %pdev = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 13
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_cmd_mgr_free, i32 noundef 121, ptr noundef nonnull @.str) #10
  br label %free_cmd_pool

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.067 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_bdt_pool, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.067
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %bd_tbl = getelementptr inbounds %struct.io_bdt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bd_tbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_tbl, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %bd_tbl_dma = getelementptr inbounds %struct.io_bdt, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %bd_tbl_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bd_tbl_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %9, i32 noundef %13, i32 noundef 0) #10
  %14 = ptrtoint ptr %bd_tbl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %bd_tbl, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 2048
  br i1 %exitcond.not, label %for.inc.for.body13_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.inc.for.body13_crit_edge
  %i.168 = phi i32 [ %inc19, %for.body13.for.body13_crit_edge ], [ 0, %for.inc.for.body13_crit_edge ]
  %15 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_bdt_pool, align 4
  %arrayidx15 = getelementptr ptr, ptr %16, i32 %i.168
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx15, align 4
  tail call void @kfree(ptr noundef %18) #10
  %19 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_bdt_pool, align 4
  %arrayidx17 = getelementptr ptr, ptr %20, i32 %i.168
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx17, align 4
  %inc19 = add nuw nsw i32 %i.168, 1
  %exitcond71.not = icmp eq i32 %inc19, 2048
  br i1 %exitcond71.not, label %for.end20, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13

for.end20:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_bdt_pool, align 4
  tail call void @kfree(ptr noundef %23) #10
  %24 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %io_bdt_pool, align 4
  br label %free_cmd_pool

free_cmd_pool:                                    ; preds = %for.end20, %if.then
  %pdev30 = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 13
  br label %for.body26

for.body26:                                       ; preds = %if.end33.for.body26_crit_edge, %free_cmd_pool
  %i.269 = phi i32 [ 0, %free_cmd_pool ], [ %inc35, %if.end33.for.body26_crit_edge ]
  %sgl_task_params = getelementptr %struct.qedf_cmd_mgr, ptr %cmgr, i32 0, i32 3, i32 %i.269, i32 20
  %25 = ptrtoint ptr %sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sgl_task_params, align 4
  tail call void @kfree(ptr noundef %26) #10
  %task_params = getelementptr %struct.qedf_cmd_mgr, ptr %cmgr, i32 0, i32 3, i32 %i.269, i32 19
  %27 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task_params, align 4
  tail call void @kfree(ptr noundef %28) #10
  %sense_buffer = getelementptr %struct.qedf_cmd_mgr, ptr %cmgr, i32 0, i32 3, i32 %i.269, i32 23
  %29 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sense_buffer, align 4
  %tobool28.not = icmp eq ptr %30, null
  br i1 %tobool28.not, label %for.body26.if.end33_crit_edge, label %if.then29

for.body26.if.end33_crit_edge:                    ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then29:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev30, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %sense_buffer_dma = getelementptr %struct.qedf_cmd_mgr, ptr %cmgr, i32 0, i32 3, i32 %i.269, i32 24
  %33 = ptrtoint ptr %sense_buffer_dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sense_buffer_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev31, i32 noundef 104, ptr noundef nonnull %30, i32 noundef %34, i32 noundef 0) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %for.body26.if.end33_crit_edge
  %rrq_work = getelementptr %struct.qedf_cmd_mgr, ptr %cmgr, i32 0, i32 3, i32 %i.269, i32 40
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %rrq_work) #10
  %inc35 = add nuw nsw i32 %i.269, 1
  %exitcond72.not = icmp eq i32 %inc35, 2048
  br i1 %exitcond72.not, label %for.end36, label %if.end33.for.body26_crit_edge

if.end33.for.body26_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26

for.end36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vfree(ptr noundef %cmgr) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_err(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qedf_cmd_mgr_alloc(ptr noundef %qedf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_queues = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 31
  %0 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_cmd_mgr_alloc, i32 noundef 185, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end10:                                         ; preds = %entry
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_cmd_mgr_alloc, i32 noundef 196, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 2047) #10
  %call = tail call noalias ptr @vzalloc(i32 noundef 1237052) #13
  %tobool16.not = icmp eq ptr %call, null
  br i1 %tobool16.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_cmd_mgr_alloc, i32 noundef 202, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %qedf, ptr %call, align 4
  %lock = getelementptr inbounds %struct.qedf_cmd_mgr, ptr %call, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @qedf_cmd_mgr_alloc.__key, i16 noundef signext 3) #10
  %pdev = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end19
  %i.0220 = phi i32 [ 0, %if.end19 ], [ %inc88, %for.inc.for.body_crit_edge ]
  %xid.0219 = phi i16 [ 0, %if.end19 ], [ %inc, %for.inc.for.body_crit_edge ]
  %timeout_work = getelementptr %struct.qedf_cmd_mgr, ptr %call, i32 0, i32 3, i32 %i.0220, i32 14
  tail call void @__init_work(ptr noundef %timeout_work, i32 noundef 0) #10
  %3 = ptrtoint ptr %timeout_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %timeout_work, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %timeout_work, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @qedf_cmd_mgr_alloc.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry32 = getelementptr inbounds %struct.work_struct, ptr %timeout_work, i32 0, i32 1
  %4 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %timeout_work, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry32, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %timeout_work, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @qedf_cmd_timeout, ptr %func, align 4
  %timer = getelementptr %struct.qedf_cmd_mgr, ptr %call, i32 0, i32 3, i32 %i.0220, i32 14, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @qedf_cmd_mgr_alloc.__key.8) #10
  %inc = add nuw nsw i16 %xid.0219, 1
  %xid43 = getelementptr %struct.qedf_cmd_mgr, ptr %call, i32 0, i32 3, i32 %i.0220, i32 1
  %7 = ptrtoint ptr %xid43 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %xid.0219, ptr %xid43, align 4
  %rrq_work = getelementptr %struct.qedf_cmd_mgr, ptr %call, i32 0, i32 3, i32 %i.0220, i32 40
  tail call void @__init_work(ptr noundef %rrq_work, i32 noundef 0) #10
  %8 = ptrtoint ptr %rrq_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %rrq_work, align 4
  %lockdep_map54 = getelementptr inbounds %struct.work_struct, ptr %rrq_work, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map54, ptr noundef nonnull @.str.11, ptr noundef nonnull @qedf_cmd_mgr_alloc.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry57 = getelementptr inbounds %struct.work_struct, ptr %rrq_work, i32 0, i32 1
  %9 = ptrtoint ptr %entry57 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry57, ptr %entry57, align 4
  %prev.i210 = getelementptr inbounds %struct.work_struct, ptr %rrq_work, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i210 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry57, ptr %prev.i210, align 4
  %func60 = getelementptr inbounds %struct.work_struct, ptr %rrq_work, i32 0, i32 2
  %11 = ptrtoint ptr %func60 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @qedf_handle_rrq, ptr %func60, align 4
  %timer65 = getelementptr %struct.qedf_cmd_mgr, ptr %call, i32 0, i32 3, i32 %i.0220, i32 40, i32 1
  tail call void @init_timer_key(ptr noundef %timer65, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.13, ptr noundef nonnull @qedf_cmd_mgr_alloc.__key.12) #10
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %sense_buffer_dma = getelementptr %struct.qedf_cmd_mgr, ptr %call, i32 0, i32 3, i32 %i.0220, i32 24
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 104, ptr noundef %sense_buffer_dma, i32 noundef 3264, i32 noundef 0) #10
  %sense_buffer = getelementptr %struct.qedf_cmd_mgr, ptr %call, i32 0, i32 3, i32 %i.0220, i32 23
  %14 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %sense_buffer, align 4
  %tobool72.not = icmp eq ptr %call.i, null
  br i1 %tobool72.not, label %if.then73, label %if.end75

if.then73:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_cmd_mgr_alloc, i32 noundef 228, ptr noundef nonnull @.str.14) #10
  br label %mem_err

if.end75:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 28) #14
  %task_params = getelementptr %struct.qedf_cmd_mgr, ptr %call, i32 0, i32 3, i32 %i.0220, i32 19
  %16 = ptrtoint ptr %task_params to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %task_params, align 4
  %tobool78.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool78.not, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_cmd_mgr_alloc, i32 noundef 238, ptr noundef nonnull @.str.15, i32 noundef %i.0220) #10
  br label %mem_err

if.end81:                                         ; preds = %if.end75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i211 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 20) #14
  %sgl_task_params = getelementptr %struct.qedf_cmd_mgr, ptr %call, i32 0, i32 3, i32 %i.0220, i32 20
  %18 = ptrtoint ptr %sgl_task_params to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i211, ptr %sgl_task_params, align 4
  %tobool84.not = icmp eq ptr %call7.i.i211, null
  br i1 %tobool84.not, label %if.then85, label %for.inc

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_cmd_mgr_alloc, i32 noundef 251, ptr noundef nonnull @.str.16, i32 noundef %i.0220) #10
  br label %mem_err

for.inc:                                          ; preds = %if.end81
  %inc88 = add nuw nsw i32 %i.0220, 1
  %exitcond.not = icmp eq i32 %inc88, 2048
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i212 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 8192) #14
  %io_bdt_pool = getelementptr inbounds %struct.qedf_cmd_mgr, ptr %call, i32 0, i32 2
  %20 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i212, ptr %io_bdt_pool, align 4
  %tobool91.not = icmp eq ptr %call7.i.i212, null
  br i1 %tobool91.not, label %if.then92, label %for.end.for.body98_crit_edge

for.end.for.body98_crit_edge:                     ; preds = %for.end
  br label %for.body98

if.then92:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_cmd_mgr_alloc, i32 noundef 261, ptr noundef nonnull @.str.17) #10
  br label %mem_err

for.body98:                                       ; preds = %for.inc108.for.body98_crit_edge, %for.end.for.body98_crit_edge
  %i.1221 = phi i32 [ %inc109, %for.inc108.for.body98_crit_edge ], [ 0, %for.end.for.body98_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 16) #14
  %22 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_bdt_pool, align 4
  %arrayidx101 = getelementptr ptr, ptr %23, i32 %i.1221
  %24 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i, ptr %arrayidx101, align 4
  %25 = load ptr, ptr %io_bdt_pool, align 4
  %arrayidx103 = getelementptr ptr, ptr %25, i32 %i.1221
  %26 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx103, align 4
  %tobool104.not = icmp eq ptr %27, null
  br i1 %tobool104.not, label %if.then105, label %for.inc108

if.then105:                                       ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_cmd_mgr_alloc, i32 noundef 270, ptr noundef nonnull @.str.18, i32 noundef %i.1221) #10
  br label %mem_err

for.inc108:                                       ; preds = %for.body98
  %inc109 = add nuw nsw i32 %i.1221, 1
  %exitcond228.not = icmp eq i32 %inc109, 2048
  br i1 %exitcond228.not, label %for.inc108.for.body114_crit_edge, label %for.inc108.for.body98_crit_edge

for.inc108.for.body98_crit_edge:                  ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body98

for.inc108.for.body114_crit_edge:                 ; preds = %for.inc108
  br label %for.body114

for.body114:                                      ; preds = %for.inc125.for.body114_crit_edge, %for.inc108.for.body114_crit_edge
  %i.2222 = phi i32 [ %inc126, %for.inc125.for.body114_crit_edge ], [ 0, %for.inc108.for.body114_crit_edge ]
  %28 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_bdt_pool, align 4
  %arrayidx116 = getelementptr ptr, ptr %29, i32 %i.2222
  %30 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx116, align 4
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 8
  %dev118 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %bd_tbl_dma = getelementptr inbounds %struct.io_bdt, ptr %31, i32 0, i32 2
  %call.i213 = tail call ptr @dma_alloc_attrs(ptr noundef %dev118, i32 noundef 4096, ptr noundef %bd_tbl_dma, i32 noundef 3264, i32 noundef 0) #10
  %bd_tbl = getelementptr inbounds %struct.io_bdt, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %bd_tbl to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i213, ptr %bd_tbl, align 4
  %tobool121.not = icmp eq ptr %call.i213, null
  br i1 %tobool121.not, label %if.then122, label %for.inc125

if.then122:                                       ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_cmd_mgr_alloc, i32 noundef 282, ptr noundef nonnull @.str.19, i32 noundef %i.2222) #10
  br label %mem_err

for.inc125:                                       ; preds = %for.body114
  %inc126 = add nuw nsw i32 %i.2222, 1
  %exitcond229.not = icmp eq i32 %inc126, 2048
  br i1 %exitcond229.not, label %for.end127, label %for.inc125.for.body114_crit_edge

for.inc125.for.body114_crit_edge:                 ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body114

for.end127:                                       ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #12
  %free_list_cnt = getelementptr inbounds %struct.qedf_cmd_mgr, ptr %call, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_list_cnt, i32 noundef 4) #10
  %35 = ptrtoint ptr %free_list_cnt to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 2048, ptr %free_list_cnt, align 4
  %call.i.i209 = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_list_cnt, i32 noundef 4) #10
  %36 = ptrtoint ptr %free_list_cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %free_list_cnt, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_cmd_mgr_alloc, i32 noundef 289, i32 noundef 1024, ptr noundef nonnull @.str.20, i32 noundef %37) #10
  br label %cleanup

mem_err:                                          ; preds = %if.then122, %if.then105, %if.then92, %if.then85, %if.then79, %if.then73
  tail call void @qedf_cmd_mgr_free(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %mem_err, %for.end127, %if.then17, %if.then
  %retval.0 = phi ptr [ null, %mem_err ], [ %call, %for.end127 ], [ null, %if.then17 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_warn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_cmd_timeout(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -52
  %fcport1 = getelementptr i8, ptr %work, i32 -32
  %0 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef null, ptr noundef nonnull @__func__.qedf_cmd_timeout, i32 noundef 28, i32 noundef 1024, ptr noundef nonnull @.str.67) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %qedf3 = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %qedf3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qedf3, align 4
  %cmd_type = getelementptr i8, ptr %work, i32 -36
  %4 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmd_type, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %sw.default [
    i8 3, label %sw.bb
    i8 4, label %sw.bb12
    i8 6, label %sw.bb32
  ]

sw.bb:                                            ; preds = %if.end
  %cmp4 = icmp eq ptr %3, null
  %xid = getelementptr i8, ptr %work, i32 -44
  %7 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %xid, align 4
  %conv7 = zext i16 %8 to i32
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef null, ptr noundef nonnull @__func__.qedf_cmd_timeout, i32 noundef 39, i32 noundef 1024, ptr noundef nonnull @.str.142, i32 noundef %conv7) #10
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef nonnull %3, ptr noundef nonnull @__func__.qedf_cmd_timeout, i32 noundef 44, ptr noundef nonnull @.str.143, i32 noundef %conv7) #10
  %call = tail call i32 @qedf_initiate_cleanup(ptr noundef %add.ptr, i1 noundef zeroext true)
  %abts_done = getelementptr i8, ptr %work, i32 156
  tail call void @complete(ptr noundef %abts_done) #10
  %refcount = getelementptr i8, ptr %work, i32 -12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !360

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void @qedf_release_cmd(ptr noundef %refcount) #10, !callees !362
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %flags = getelementptr i8, ptr %work, i32 -24
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  tail call void @qedf_restart_rport(ptr noundef nonnull %1) #10
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then13, label %if.end16

if.then13:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  %xid14 = getelementptr i8, ptr %work, i32 -44
  %10 = ptrtoint ptr %xid14 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %xid14, align 4
  %conv15 = zext i16 %11 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef null, ptr noundef nonnull @__func__.qedf_cmd_timeout, i32 noundef 69, i32 noundef 1024, ptr noundef nonnull @.str.144, i32 noundef %conv15) #10
  br label %cleanup

if.end16:                                         ; preds = %sw.bb12
  %flags17 = getelementptr i8, ptr %work, i32 -24
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags17) #10
  %refcount18 = getelementptr i8, ptr %work, i32 -12
  %call.i.i.i.i.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount18, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount18, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount18, ptr %refcount18, i32 1, ptr elementtype(i32) %refcount18) #10, !srcloc !363
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end16.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !364

if.end16.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end16
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i79 = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i79, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !360

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end16.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end16.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount18, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %xid20 = getelementptr i8, ptr %work, i32 -44
  %14 = ptrtoint ptr %xid20 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %xid20, align 4
  %conv21 = zext i16 %15 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef nonnull %3, ptr noundef nonnull @__func__.qedf_cmd_timeout, i32 noundef 82, ptr noundef nonnull @.str.145, i32 noundef %conv21) #10
  %call22 = tail call i32 @qedf_initiate_cleanup(ptr noundef %add.ptr, i1 noundef zeroext true)
  %event = getelementptr i8, ptr %work, i32 -20
  %16 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %event, align 4
  %cb_func = getelementptr i8, ptr %work, i32 404
  %17 = ptrtoint ptr %cb_func to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cb_func, align 4
  %tobool23.not = icmp eq ptr %18, null
  br i1 %tobool23.not, label %kref_get.exit.if.end29_crit_edge, label %land.lhs.true

kref_get.exit.if.end29_crit_edge:                 ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true:                                    ; preds = %kref_get.exit
  %cb_arg = getelementptr i8, ptr %work, i32 408
  %19 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cb_arg, align 4
  %tobool24.not = icmp eq ptr %20, null
  br i1 %tobool24.not, label %land.lhs.true.if.end29_crit_edge, label %if.then25

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %18(ptr noundef nonnull %20) #10
  %21 = ptrtoint ptr %cb_arg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cb_arg, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %land.lhs.true.if.end29_crit_edge, %kref_get.exit.if.end29_crit_edge
  %call.i.i.i.i.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount18, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  tail call void @llvm.prefetch.p0(ptr %refcount18, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount18, ptr %refcount18, i32 1, ptr elementtype(i32) %refcount18) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i.i81 = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i81)
  %cmp.i.i.i.i82 = icmp eq i32 %asmresult.i.i.i.i.i.i.i81, 1
  br i1 %cmp.i.i.i.i82, label %if.then.i86, label %if.end5.i.i.i.i84

if.end5.i.i.i.i84:                                ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i81)
  %.not.i.i.i.i83 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i81, 0
  br i1 %.not.i.i.i.i83, label %if.end5.i.i.i.i84.cleanup_crit_edge, label %if.then10.i.i.i.i85, !prof !360

if.end5.i.i.i.i84.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i85:                              ; preds = %if.end5.i.i.i.i84
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount18, i32 noundef 3) #10
  br label %cleanup

if.then.i86:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void @qedf_release_cmd(ptr noundef %refcount18) #10, !callees !362
  br label %cleanup

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %xid34 = getelementptr i8, ptr %work, i32 -44
  %23 = ptrtoint ptr %xid34 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %xid34, align 4
  %conv35 = zext i16 %24 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %3, ptr noundef nonnull @__func__.qedf_cmd_timeout, i32 noundef 94, ptr noundef nonnull @.str.146, i32 noundef %conv35) #10
  %call36 = tail call i32 @qedf_initiate_cleanup(ptr noundef %add.ptr, i1 noundef zeroext true)
  %event37 = getelementptr i8, ptr %work, i32 -20
  %25 = ptrtoint ptr %event37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %event37, align 4
  tail call void @qedf_process_seq_cleanup_compl(ptr noundef %3, ptr noundef null, ptr noundef %add.ptr) #10
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %xid39 = getelementptr i8, ptr %work, i32 -44
  %26 = ptrtoint ptr %xid39 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %xid39, align 4
  %conv40 = zext i16 %27 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %3, ptr noundef nonnull @__func__.qedf_cmd_timeout, i32 noundef 101, i32 noundef 1024, ptr noundef nonnull @.str.147, i32 noundef %conv40) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb32, %if.then.i86, %if.then10.i.i.i.i85, %if.end5.i.i.i.i84.cleanup_crit_edge, %if.then13, %kref_put.exit, %if.then6, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_handle_rrq(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -480
  %state = getelementptr i8, ptr %work, i32 -456
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #10
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 6, ptr %state, align 4
  %call = tail call i32 @qedf_send_rrq(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qedf_alloc_cmd(ptr noundef %fcport, i8 noundef zeroext %cmd_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qedf1 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 6
  %0 = ptrtoint ptr %qedf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedf1, align 4
  %cmd_mgr2 = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %cmd_mgr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_mgr2, align 8
  %free_sqes3 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_sqes3, i32 noundef 4) #10
  %4 = ptrtoint ptr %free_sqes3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %free_sqes3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_alloc_cmd, i32 noundef 314, i32 noundef 1024, ptr noundef nonnull @.str.21, i32 noundef 0) #10
  br label %out_failed

if.end:                                           ; preds = %entry
  %num_active_ios = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 12
  %call.i.i130 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_active_ios, i32 noundef 4) #10
  %6 = ptrtoint ptr %num_active_ios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %num_active_ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %7)
  %cmp = icmp sgt i32 %7, 511
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i131 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_active_ios, i32 noundef 4) #10
  %8 = ptrtoint ptr %num_active_ios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %num_active_ios, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_alloc_cmd, i32 noundef 323, i32 noundef 1024, ptr noundef nonnull @.str.22, i32 noundef %9) #10
  br label %out_failed

if.end9:                                          ; preds = %if.end
  %free_list_cnt = getelementptr inbounds %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 5
  %call.i.i132 = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_list_cnt, i32 noundef 4) #10
  %10 = ptrtoint ptr %free_list_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %free_list_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %11)
  %cmp11 = icmp slt i32 %11, 17
  br i1 %cmp11, label %if.then12, label %do.body17

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i133 = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_list_cnt, i32 noundef 4) #10
  %12 = ptrtoint ptr %free_list_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %free_list_cnt, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_alloc_cmd, i32 noundef 331, i32 noundef 1024, ptr noundef nonnull @.str.23, i32 noundef %13) #10
  br label %out_failed

do.body17:                                        ; preds = %if.end9
  %lock = getelementptr inbounds %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 4
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %idx = getelementptr inbounds %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %idx.promoted = load i16, ptr %idx, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body17
  %i.0146 = phi i32 [ 0, %do.body17 ], [ %inc36, %for.inc.for.body_crit_edge ]
  %spec.select144145 = phi i16 [ %idx.promoted, %do.body17 ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %idxprom = zext i16 %spec.select144145 to i32
  %inc = add i16 %spec.select144145, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %inc)
  %cmp28 = icmp eq i16 %inc, 2048
  %spec.select = select i1 %cmp28, i16 0, i16 %inc
  %alloc = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 46
  %15 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool33.not = icmp eq i32 %16, 0
  br i1 %tobool33.not, label %if.end41, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc36 = add nuw nsw i32 %i.0146, 1
  %exitcond.not = icmp eq i32 %inc36, 2048
  br i1 %exitcond.not, label %if.then39, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.then39:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %idx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %spec.select, ptr %idx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #10
  br label %out_failed

if.end41:                                         ; preds = %for.body
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %spec.select, ptr %idx, align 4
  %io_req.1140 = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom
  %flags42 = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 8
  %19 = ptrtoint ptr %flags42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags42, align 4
  %21 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool44.not = icmp eq i32 %21, 0
  br i1 %tobool44.not, label %if.end41.if.end49_crit_edge, label %if.then45

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %xid47 = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 1
  %22 = ptrtoint ptr %xid47 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %xid47, align 4
  %conv48 = zext i16 %23 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_alloc_cmd, i32 noundef 355, ptr noundef nonnull @.str.24, i32 noundef %conv48) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.end41.if.end49_crit_edge
  %24 = ptrtoint ptr %flags42 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %flags42, align 4
  %25 = ptrtoint ptr %alloc to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %alloc, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #10
  %call.i.i134 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_active_ios, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %num_active_ios, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_active_ios, ptr %num_active_ios, i32 1, ptr elementtype(i32) %num_active_ios) #10, !srcloc !365
  %call.i.i135 = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes3, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %free_sqes3, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_sqes3, ptr %free_sqes3, i32 1, ptr elementtype(i32) %free_sqes3) #10, !srcloc !366
  %xid55 = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 1
  %28 = ptrtoint ptr %xid55 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %xid55, align 4
  %call.i.i136 = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_list_cnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %free_list_cnt, i32 1, i32 3, i32 1) #10
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_list_cnt, ptr %free_list_cnt, i32 1, ptr elementtype(i32) %free_list_cnt) #10, !srcloc !366
  %cmd_mgr57 = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 12
  %31 = ptrtoint ptr %cmd_mgr57 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %3, ptr %cmd_mgr57, align 4
  %fcport58 = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 6
  %32 = ptrtoint ptr %fcport58 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %fcport, ptr %fcport58, align 4
  %sc_cmd = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 2
  %33 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %sc_cmd, align 4
  %lun = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 22
  %34 = ptrtoint ptr %lun to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %lun, align 4
  %refcount = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %35 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %refcount, align 4
  %state = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 7
  %call.i.i137 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #10
  %36 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 1, ptr %state, align 4
  %io_bdt_pool = getelementptr inbounds %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 2
  %37 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_bdt_pool, align 4
  %idxprom59 = zext i16 %29 to i32
  %arrayidx60 = getelementptr ptr, ptr %38, i32 %idxprom59
  %39 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx60, align 4
  %bd_tbl61 = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 13
  %41 = ptrtoint ptr %bd_tbl61 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %bd_tbl61, align 4
  %cmp62 = icmp eq ptr %40, null
  br i1 %cmp62, label %if.then64, label %if.end69

if.then64:                                        ; preds = %if.end49
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_alloc_cmd, i32 noundef 382, ptr noundef nonnull @.str.25, i32 noundef %idxprom59) #10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_failed_crit_edge, label %if.then10.i.i.i.i, !prof !360

if.end5.i.i.i.i.out_failed_crit_edge:             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_failed

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %out_failed

if.then.i:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void @qedf_release_cmd(ptr noundef %refcount) #10, !callees !362
  br label %out_failed

if.end69:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %io_req.1140, ptr %40, align 4
  %cmd_type71 = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 3
  %44 = ptrtoint ptr %cmd_type71 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %cmd_type, ptr %cmd_type71, align 4
  %tm_flags = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 5
  %45 = ptrtoint ptr %tm_flags to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %tm_flags, align 2
  %rx_buf_off = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 41
  %46 = ptrtoint ptr %rx_buf_off to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %rx_buf_off, align 4
  %tx_buf_off = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 42
  %47 = ptrtoint ptr %tx_buf_off to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %tx_buf_off, align 4
  %rx_id = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 43
  %48 = ptrtoint ptr %rx_id to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 65535, ptr %rx_id, align 4
  br label %cleanup

out_failed:                                       ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_failed_crit_edge, %if.then39, %if.then12, %if.then5, %if.then
  %alloc_failures = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 72
  %49 = ptrtoint ptr %alloc_failures to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %alloc_failures, align 16
  %inc72 = add i64 %50, 1
  store i64 %inc72, ptr %alloc_failures, align 16
  br label %cleanup

cleanup:                                          ; preds = %out_failed, %if.end69
  %retval.0 = phi ptr [ null, %out_failed ], [ %io_req.1140, %if.end69 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref, ptr nocapture noundef readonly %release) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !360

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void %release(ptr noundef %kref) #10, !callees !362
  br label %return

return:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_release_cmd(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -40
  %cmd_mgr1 = getelementptr i8, ptr %ref, i32 4
  %0 = ptrtoint ptr %cmd_mgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_mgr1, align 4
  %fcport2 = getelementptr i8, ptr %ref, i32 -20
  %2 = ptrtoint ptr %fcport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcport2, align 4
  %cmd_type = getelementptr i8, ptr %ref, i32 -24
  %4 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmd_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then:                                          ; preds = %entry
  %qedf = getelementptr inbounds %struct.qedf_rport, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qedf, align 4
  %xid = getelementptr i8, ptr %ref, i32 -32
  %8 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %xid, align 4
  %conv4 = zext i16 %9 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %7, ptr noundef nonnull @__func__.qedf_release_cmd, i32 noundef 443, ptr noundef nonnull @.str.26, ptr noundef %add.ptr, i32 noundef %conv4) #10
  %sc_cmd = getelementptr i8, ptr %ref, i32 -28
  %10 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_cmd, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then.if.end26thread-pre-split_crit_edge, label %do.end, !prof !360

if.then.if.end26thread-pre-split_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26thread-pre-split

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 444, i32 noundef 9, ptr noundef null) #10
  br label %if.end26thread-pre-split

if.end26thread-pre-split:                         ; preds = %do.end, %if.then.if.end26thread-pre-split_crit_edge
  %12 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %cmd_type, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end26thread-pre-split, %entry.if.end26_crit_edge
  %13 = phi i8 [ %.pr, %if.end26thread-pre-split ], [ %5, %entry.if.end26_crit_edge ]
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.163)
  switch i8 %13, label %if.end26.if.end36_crit_edge [
    i8 4, label %if.end26.if.then35_crit_edge
    i8 2, label %if.end26.if.then35_crit_edge110
  ]

if.end26.if.then35_crit_edge110:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

if.end26.if.then35_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then35:                                        ; preds = %if.end26.if.then35_crit_edge, %if.end26.if.then35_crit_edge110
  tail call fastcc void @qedf_free_mp_resc(ptr noundef %add.ptr)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end26.if.end36_crit_edge
  %free_list_cnt = getelementptr inbounds %struct.qedf_cmd_mgr, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_list_cnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %free_list_cnt, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_list_cnt, ptr %free_list_cnt, i32 1, ptr elementtype(i32) %free_list_cnt) #10, !srcloc !365
  %num_active_ios = getelementptr inbounds %struct.qedf_rport, ptr %3, i32 0, i32 12
  %call.i.i107 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_active_ios, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %num_active_ios, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_active_ios, ptr %num_active_ios, i32 1, ptr elementtype(i32) %num_active_ios) #10, !srcloc !366
  %state = getelementptr i8, ptr %ref, i32 -16
  %call.i.i108 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #10
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %state, align 4
  %call.i.i109 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_active_ios, i32 noundef 4) #10
  %18 = ptrtoint ptr %num_active_ios to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %num_active_ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp38 = icmp slt i32 %19, 0
  br i1 %cmp38, label %if.then40, label %if.end36.if.end69_crit_edge

if.end36.if.end69_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %qedf41 = getelementptr inbounds %struct.qedf_rport, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %qedf41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qedf41, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %21, ptr noundef nonnull @__func__.qedf_release_cmd, i32 noundef 455, ptr noundef nonnull @.str.28) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 456, i32 noundef 9, ptr noundef null) #10
  br label %if.end69

if.end69:                                         ; preds = %if.then40, %if.end36.if.end69_crit_edge
  %task_retry_identifier = getelementptr i8, ptr %ref, i32 552
  %22 = ptrtoint ptr %task_retry_identifier to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %task_retry_identifier, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %task_retry_identifier, align 4
  %24 = ptrtoint ptr %fcport2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %fcport2, align 4
  %flags71 = getelementptr i8, ptr %ref, i32 -12
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags71) #10
  %cpu = getelementptr i8, ptr %ref, i32 428
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %cpu, align 4
  %lock = getelementptr inbounds %struct.qedf_cmd_mgr, ptr %1, i32 0, i32 4
  %call78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %26 = ptrtoint ptr %fcport2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %fcport2, align 4
  %alloc = getelementptr i8, ptr %ref, i32 560
  %27 = ptrtoint ptr %alloc to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %alloc, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call78) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedf_free_mp_resc(ptr nocapture noundef %io_req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fcport = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 6
  %0 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport, align 4
  %qedf2 = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %qedf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qedf2, align 4
  %mp_req_bd = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 3
  %4 = ptrtoint ptr %mp_req_bd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mp_req_bd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.qedf_ctx, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %mp_req_bd_dma = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 4
  %8 = ptrtoint ptr %mp_req_bd_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mp_req_bd_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 16, ptr noundef nonnull %5, i32 noundef %9, i32 noundef 0) #10
  %10 = ptrtoint ptr %mp_req_bd to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %mp_req_bd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mp_resp_bd = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 9
  %11 = ptrtoint ptr %mp_resp_bd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mp_resp_bd, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pdev7 = getelementptr inbounds %struct.qedf_ctx, ptr %3, i32 0, i32 13
  %13 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev7, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %mp_resp_bd_dma = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 10
  %15 = ptrtoint ptr %mp_resp_bd_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mp_resp_bd_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev8, i32 noundef 16, ptr noundef nonnull %12, i32 noundef %16, i32 noundef 0) #10
  %17 = ptrtoint ptr %mp_resp_bd to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %mp_resp_bd, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.end.if.end12_crit_edge
  %req_buf = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 1
  %18 = ptrtoint ptr %req_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req_buf, align 4
  %tobool13.not = icmp eq ptr %19, null
  br i1 %tobool13.not, label %if.end12.if.end19_crit_edge, label %if.then14

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %pdev15 = getelementptr inbounds %struct.qedf_ctx, ptr %3, i32 0, i32 13
  %20 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev15, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %req_buf_dma = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 2
  %22 = ptrtoint ptr %req_buf_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %req_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev16, i32 noundef 4096, ptr noundef nonnull %19, i32 noundef %23, i32 noundef 0) #10
  %24 = ptrtoint ptr %req_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %req_buf, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end12.if.end19_crit_edge
  %resp_buf = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 7
  %25 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resp_buf, align 4
  %tobool20.not = icmp eq ptr %26, null
  br i1 %tobool20.not, label %if.end19.if.end26_crit_edge, label %if.then21

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %pdev22 = getelementptr inbounds %struct.qedf_ctx, ptr %3, i32 0, i32 13
  %27 = ptrtoint ptr %pdev22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev22, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %resp_buf_dma = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 8
  %29 = ptrtoint ptr %resp_buf_dma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %resp_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev23, i32 noundef 4096, ptr noundef nonnull %26, i32 noundef %30, i32 noundef 0) #10
  %31 = ptrtoint ptr %resp_buf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %resp_buf, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end19.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_init_mp_task(ptr nocapture noundef %io_req, ptr noundef %task_ctx, ptr noundef %sqe) local_unnamed_addr #0 align 64 {
entry:
  %task_fc_hdr = alloca %struct.fcoe_tx_mid_path_params, align 4
  %tx_sgl_task_params = alloca %struct.scsi_sgl_task_params, align 4
  %rx_sgl_task_params = alloca %struct.scsi_sgl_task_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fcport2 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 6
  %0 = ptrtoint ptr %fcport2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport2, align 4
  %qedf4 = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %qedf4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qedf4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %task_fc_hdr) #10
  %4 = getelementptr inbounds %struct.fcoe_tx_mid_path_params, ptr %task_fc_hdr, i32 0, i32 1
  %5 = getelementptr inbounds %struct.fcoe_tx_mid_path_params, ptr %task_fc_hdr, i32 0, i32 2
  %6 = getelementptr inbounds %struct.fcoe_tx_mid_path_params, ptr %task_fc_hdr, i32 0, i32 3
  %7 = getelementptr inbounds %struct.fcoe_tx_mid_path_params, ptr %task_fc_hdr, i32 0, i32 4
  %8 = getelementptr inbounds %struct.fcoe_tx_mid_path_params, ptr %task_fc_hdr, i32 0, i32 5
  %9 = getelementptr inbounds %struct.fcoe_tx_mid_path_params, ptr %task_fc_hdr, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tx_sgl_task_params) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rx_sgl_task_params) #10
  %cmd_type = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 3
  %10 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cmd_type, align 4
  %conv = zext i8 %11 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %3, ptr noundef nonnull @__func__.qedf_init_mp_task, i32 noundef 689, i32 noundef 4, ptr noundef nonnull @.str.29, i32 noundef %conv) #10
  %control_requests = getelementptr inbounds %struct.qedf_ctx, ptr %3, i32 0, i32 70
  %12 = ptrtoint ptr %control_requests to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %control_requests, align 16
  %inc = add i64 %13, 1
  store i64 %inc, ptr %control_requests, align 16
  %14 = getelementptr inbounds i8, ptr %tx_sgl_task_params, i32 16
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 4
  %16 = getelementptr inbounds i8, ptr %rx_sgl_task_params, i32 16
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %16, align 4
  %18 = call ptr @memset(ptr %task_ctx, i32 0, i32 592)
  %task = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 18
  %19 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %task_ctx, ptr %task, align 4
  %task_params = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 19
  %20 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task_params, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %task_ctx, ptr %21, align 4
  %23 = load ptr, ptr %task_params, align 4
  %sqe6 = getelementptr inbounds %struct.fcoe_task_params, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %sqe6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sqe, ptr %sqe6, align 4
  %25 = load ptr, ptr %task_params, align 4
  %task_type = getelementptr inbounds %struct.fcoe_task_params, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task_type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %task_type, align 4
  %data_xfer_len = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 10
  %27 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_xfer_len, align 4
  %29 = load ptr, ptr %task_params, align 4
  %tx_io_size = getelementptr inbounds %struct.fcoe_task_params, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %tx_io_size, align 4
  %31 = load ptr, ptr %task_params, align 4
  %rx_io_size = getelementptr inbounds %struct.fcoe_task_params, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4096, ptr %rx_io_size, align 4
  %fw_cid = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %fw_cid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_cid, align 4
  %35 = load ptr, ptr %task_params, align 4
  %conn_cid = getelementptr inbounds %struct.fcoe_task_params, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %conn_cid to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %34, ptr %conn_cid, align 4
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %37 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %xid, align 4
  %39 = load ptr, ptr %task_params, align 4
  %itid = getelementptr inbounds %struct.fcoe_task_params, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %itid to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %38, ptr %itid, align 4
  %41 = load ptr, ptr %task_params, align 4
  %cq_rss_number = getelementptr inbounds %struct.fcoe_task_params, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %cq_rss_number to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %cq_rss_number, align 2
  %dev_type = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 23
  %43 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dev_type, align 4
  %conv13 = trunc i32 %44 to i8
  %45 = load ptr, ptr %task_params, align 4
  %is_tape_device = getelementptr inbounds %struct.fcoe_task_params, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %is_tape_device to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv13, ptr %is_tape_device, align 1
  %req_fc_hdr = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 5
  %47 = load i16, ptr %xid, align 4
  %fh_ox_id = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 5, i32 9
  %48 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %fh_ox_id, align 4
  %fh_rx_id = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 5, i32 10
  %49 = ptrtoint ptr %fh_rx_id to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -1, ptr %fh_rx_id, align 2
  %fh_parm_offset = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 5, i32 11
  %50 = ptrtoint ptr %fh_parm_offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fh_parm_offset, align 4
  %52 = ptrtoint ptr %task_fc_hdr to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %task_fc_hdr, align 4
  %53 = ptrtoint ptr %req_fc_hdr to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %req_fc_hdr, align 4
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %4, align 4
  %fh_type = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 5, i32 4
  %56 = ptrtoint ptr %fh_type to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %fh_type, align 4
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %5, align 1
  %fh_cs_ctl = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 5, i32 2
  %59 = ptrtoint ptr %fh_cs_ctl to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %fh_cs_ctl, align 4
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %6, align 2
  %fh_df_ctl = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 5, i32 7
  %62 = ptrtoint ptr %fh_df_ctl to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %fh_df_ctl, align 1
  %64 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %7, align 1
  %65 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -1, ptr %8, align 4
  %66 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %47, ptr %9, align 2
  %mp_req_bd = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 3
  %67 = ptrtoint ptr %mp_req_bd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mp_req_bd, align 4
  %69 = ptrtoint ptr %tx_sgl_task_params to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %tx_sgl_task_params, align 4
  %mp_req_bd_dma = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 4
  %70 = ptrtoint ptr %mp_req_bd_dma to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mp_req_bd_dma, align 4
  %sgl_phys_addr = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 1
  %72 = ptrtoint ptr %sgl_phys_addr to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %sgl_phys_addr, align 4
  %hi = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %hi, align 4
  %num_sges = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 3
  %74 = ptrtoint ptr %num_sges to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 1, ptr %num_sges, align 4
  %75 = load i32, ptr %data_xfer_len, align 4
  %total_buffer_size = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 2
  %76 = ptrtoint ptr %total_buffer_size to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %total_buffer_size, align 4
  %mp_resp_bd = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 9
  %77 = ptrtoint ptr %mp_resp_bd to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mp_resp_bd, align 4
  %79 = ptrtoint ptr %rx_sgl_task_params to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %rx_sgl_task_params, align 4
  %mp_resp_bd_dma = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 10
  %80 = ptrtoint ptr %mp_resp_bd_dma to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mp_resp_bd_dma, align 4
  %sgl_phys_addr29 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 1
  %82 = ptrtoint ptr %sgl_phys_addr29 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %sgl_phys_addr29, align 4
  %hi36 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %hi36 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %hi36, align 4
  %num_sges37 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 3
  %84 = ptrtoint ptr %num_sges37 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %num_sges37, align 4
  %total_buffer_size38 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 2
  %85 = ptrtoint ptr %total_buffer_size38 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 4096, ptr %total_buffer_size38, align 4
  %86 = load ptr, ptr %task_params, align 4
  %call = call i32 @init_initiator_midpath_unsolicited_fcoe_task(ptr noundef %86, ptr noundef nonnull %task_fc_hdr, ptr noundef nonnull %tx_sgl_task_params, ptr noundef nonnull %rx_sgl_task_params, i8 noundef zeroext 0) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rx_sgl_task_params) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tx_sgl_task_params) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %task_fc_hdr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_initiator_midpath_unsolicited_fcoe_task(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @qedf_get_sqe_idx(ptr nocapture noundef %fcport) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sq_mem_size = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 18
  %0 = ptrtoint ptr %sq_mem_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sq_mem_size, align 4
  %div13 = lshr i32 %1, 3
  %sq_prod_idx = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 15
  %2 = ptrtoint ptr %sq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sq_prod_idx, align 4
  %inc = add i16 %3, 1
  store i16 %inc, ptr %sq_prod_idx, align 4
  %fw_sq_prod_idx = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 16
  %4 = ptrtoint ptr %fw_sq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fw_sq_prod_idx, align 2
  %inc2 = add i16 %5, 1
  store i16 %inc2, ptr %fw_sq_prod_idx, align 2
  %6 = trunc i32 %div13 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %6)
  %cmp = icmp eq i16 %inc, %6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %sq_prod_idx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %sq_prod_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i16 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_ring_doorbell(ptr nocapture noundef readonly %fcport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_sq_prod_idx = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 16
  %0 = ptrtoint ptr %fw_sq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fw_sq_prod_idx, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !367
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !369
  tail call void @arm_heavy_mb() #10
  %dbell.sroa.11.0.insert.ext = zext i16 %1 to i32
  %dbell.sroa.0.0.insert.insert = or i32 %dbell.sroa.11.0.insert.ext, -2080374784
  %2 = tail call i32 @llvm.bswap.i32(i32 %dbell.sroa.0.0.insert.insert)
  %p_doorbell = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 9
  %3 = ptrtoint ptr %p_doorbell to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_doorbell, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #10, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !371
  tail call void @arm_heavy_mb() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedf_post_io_req(ptr noundef %fcport, ptr noundef %io_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_cmd1 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 2
  %0 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_cmd1, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr %struct.Scsi_Host, ptr %5, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 4
  %data_xfer_len = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 10
  %8 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %data_xfer_len, align 4
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22
  %9 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %io_req, ptr %SCp, align 4
  %sge_type = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 39
  %10 = ptrtoint ptr %sge_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %sge_type, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !348) #10
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %cpu6 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 37
  %15 = ptrtoint ptr %cpu6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cpu6, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sc_data_direction, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %17, label %if.else12 [
    i32 2, label %if.then
    i32 1, label %if.then9
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %io_req_flags = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 4
  %19 = ptrtoint ptr %io_req_flags to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %io_req_flags, align 1
  %input_requests = getelementptr %struct.Scsi_Host, ptr %5, i32 50, i32 50, i32 9, i32 5, i32 3
  %20 = ptrtoint ptr %input_requests to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %input_requests, align 16
  %inc = add i64 %21, 1
  store i64 %inc, ptr %input_requests, align 16
  br label %if.end15

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %io_req_flags10 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 4
  %22 = ptrtoint ptr %io_req_flags10 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %io_req_flags10, align 1
  %output_requests = getelementptr %struct.Scsi_Host, ptr %5, i32 50, i32 50, i32 9, i32 5, i32 7
  %23 = ptrtoint ptr %output_requests to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %output_requests, align 8
  %inc11 = add i64 %24, 1
  store i64 %inc11, ptr %output_requests, align 8
  br label %if.end15

if.else12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %io_req_flags13 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 4
  %25 = ptrtoint ptr %io_req_flags13 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %io_req_flags13, align 1
  %control_requests = getelementptr %struct.Scsi_Host, ptr %5, i32 50, i32 50, i32 10, i32 1
  %26 = ptrtoint ptr %control_requests to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %control_requests, align 16
  %inc14 = add i64 %27, 1
  store i64 %inc14, ptr %control_requests, align 16
  br label %if.end15

if.end15:                                         ; preds = %if.else12, %if.then9, %if.then
  %xid16 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %28 = ptrtoint ptr %xid16 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %xid16, align 4
  %30 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sc_cmd1, align 4
  %bd_tbl.i = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 13
  %32 = ptrtoint ptr %bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bd_tbl.i, align 4
  %bd_tbl1.i = getelementptr inbounds %struct.io_bdt, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %bd_tbl1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bd_tbl1.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %31, i32 0, i32 17, i32 0, i32 1
  %36 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end15
  %device.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %31, i32 0, i32 1
  %38 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %add.ptr.i.i.i = getelementptr %struct.Scsi_Host, ptr %41, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  %pdev.i.i = getelementptr %struct.Scsi_Host, ptr %41, i32 1, i32 50, i32 0, i32 7, i32 3
  %42 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %31, i32 0, i32 17
  %44 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sdb.i.i.i, align 4
  %sc_data_direction.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %31, i32 0, i32 15
  %46 = ptrtoint ptr %sc_data_direction.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sc_data_direction.i.i, align 4
  %call6.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev.i.i, ptr noundef %45, i32 noundef %37, i32 noundef %47, i32 noundef 0) #10
  %48 = ptrtoint ptr %sge_type to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %sge_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call6.i.i)
  %cmp.i.i = icmp slt i32 %call6.i.i, 9
  br i1 %cmp.i.i, label %if.end.i.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.then.i
  %io_req_flags.i.i = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 4
  %49 = ptrtoint ptr %io_req_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %io_req_flags.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp8.i.i = icmp eq i8 %50, 2
  br i1 %cmp8.i.i, label %if.end.thread96.i.i, label %lor.lhs.false.i.i.for.body.lr.ph.i.i_crit_edge

lor.lhs.false.i.i.for.body.lr.ph.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i.i

if.end.thread96.i.i:                              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %sge_type to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %sge_type, align 4
  br label %for.body.lr.ph.i.i

if.end.i.i:                                       ; preds = %if.then.i
  %52 = ptrtoint ptr %sge_type to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %sge_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp1289.i.i = icmp sgt i32 %call6.i.i, 0
  br i1 %cmp1289.i.i, label %if.end.i.i.for.body.lr.ph.i.i_crit_edge, label %if.end.i.i.if.end41.i.i_crit_edge

if.end.i.i.if.end41.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i.i

if.end.i.i.for.body.lr.ph.i.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i.for.body.lr.ph.i.i_crit_edge, %if.end.thread96.i.i, %lor.lhs.false.i.i.for.body.lr.ph.i.i_crit_edge
  %53 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sdb.i.i.i, align 4
  %sub.i.i = add nsw i32 %call6.i.i, -1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end27.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.093.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc33.i.i, %if.end27.i.i.for.body.i.i_crit_edge ]
  %byte_count.091.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %if.end27.i.i.for.body.i.i_crit_edge ]
  %sg.090.i.i = phi ptr [ %54, %for.body.lr.ph.i.i ], [ %call34.i.i, %if.end27.i.i.for.body.i.i_crit_edge ]
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.090.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_length.i.i, align 4
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.090.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma_address.i.i, align 4
  %59 = ptrtoint ptr %sge_type to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %sge_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %cmp17.i.i = icmp eq i8 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.093.i.i)
  %tobool.not.i.i = icmp ne i32 %i.093.i.i, 0
  %or.cond.i.i = select i1 %cmp17.i.i, i1 %tobool.not.i.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %i.093.i.i, i32 %sub.i.i)
  %cmp20.not.i.i = icmp ne i32 %i.093.i.i, %sub.i.i
  %or.cond84.i.i = select i1 %or.cond.i.i, i1 %cmp20.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %56)
  %cmp23.i.i = icmp ult i32 %56, 4096
  %or.cond85.i.i = select i1 %or.cond84.i.i, i1 %cmp23.i.i, i1 false
  br i1 %or.cond85.i.i, label %if.then25.i.i, label %for.body.i.i.if.end27.i.i_crit_edge

for.body.i.i.if.end27.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i.i

if.then25.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %sge_type to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %sge_type, align 4
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then25.i.i, %for.body.i.i.if.end27.i.i_crit_edge
  %62 = tail call i32 @llvm.bswap.i32(i32 %58) #10
  %arrayidx.i.i = getelementptr %struct.scsi_sge, ptr %35, i32 %i.093.i.i
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx.i.i, align 4
  %hi.i.i = getelementptr inbounds %struct.regpair, ptr %arrayidx.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %hi.i.i, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %56) #10
  %sge_len.i.i = getelementptr %struct.scsi_sge, ptr %35, i32 %i.093.i.i, i32 1
  %66 = ptrtoint ptr %sge_len.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %sge_len.i.i, align 4
  %inc33.i.i = add nuw nsw i32 %i.093.i.i, 1
  %add.i.i = add i32 %56, %byte_count.091.i.i
  %call34.i.i = tail call ptr @sg_next(ptr noundef %sg.090.i.i) #10
  %exitcond.not.i.i = icmp eq i32 %inc33.i.i, %call6.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end27.i.i.for.body.i.i_crit_edge

if.end27.i.i.for.body.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end27.i.i
  %67 = ptrtoint ptr %sge_type to i32
  call void @__asan_load1_noabort(i32 %67)
  %.pr.i.i = load i8, ptr %sge_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr.i.i)
  %cmp37.i.i = icmp eq i8 %.pr.i.i, 1
  br i1 %cmp37.i.i, label %if.then39.i.i, label %for.end.i.i.if.end41.i.i_crit_edge

for.end.i.i.if.end41.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i.i

if.then39.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %sge_type to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %sge_type, align 4
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then39.i.i, %for.end.i.i.if.end41.i.i_crit_edge, %if.end.i.i.if.end41.i.i_crit_edge
  %bd_count.0.lcssa102.i.i = phi i32 [ %call6.i.i, %if.then39.i.i ], [ %call6.i.i, %for.end.i.i.if.end41.i.i_crit_edge ], [ 0, %if.end.i.i.if.end41.i.i_crit_edge ]
  %byte_count.0.lcssa101.i.i = phi i32 [ %add.i.i, %if.then39.i.i ], [ %add.i.i, %for.end.i.i.if.end41.i.i_crit_edge ], [ 0, %if.end.i.i.if.end41.i.i_crit_edge ]
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %31, i32 0, i32 17, i32 1
  %69 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %byte_count.0.lcssa101.i.i, i32 %70)
  %cmp43.not.i.i = icmp eq i32 %byte_count.0.lcssa101.i.i, %70
  br i1 %cmp43.not.i.i, label %if.end41.i.i.qedf_map_sg.exit.i_crit_edge, label %if.then45.i.i

if.end41.i.i.qedf_map_sg.exit.i_crit_edge:        ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qedf_map_sg.exit.i

if.then45.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %xid16 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %xid16, align 4
  %conv47.i.i = zext i16 %72 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull @__func__.qedf_map_sg, i32 noundef 523, ptr noundef nonnull @.str.148, i32 noundef %byte_count.0.lcssa101.i.i, i32 noundef %70, i32 noundef %conv47.i.i) #10
  br label %qedf_map_sg.exit.i

qedf_map_sg.exit.i:                               ; preds = %if.then45.i.i, %if.end41.i.i.qedf_map_sg.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bd_count.0.lcssa102.i.i)
  %cmp.i = icmp eq i32 %bd_count.0.lcssa102.i.i, 0
  br i1 %cmp.i, label %if.then18, label %qedf_map_sg.exit.i.if.end21_crit_edge

qedf_map_sg.exit.i.if.end21_crit_edge:            ; preds = %qedf_map_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.else.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %hi.i = getelementptr inbounds %struct.regpair, ptr %35, i32 0, i32 1
  %73 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %hi.i, align 4
  %74 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %35, align 4
  %sge_len.i = getelementptr inbounds %struct.scsi_sge, ptr %35, i32 0, i32 1
  %75 = ptrtoint ptr %sge_len.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %sge_len.i, align 4
  br label %if.end21

if.then18:                                        ; preds = %qedf_map_sg.exit.i
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_post_io_req, i32 noundef 881, ptr noundef nonnull @.str.30) #10
  %76 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %sc_cmd1, align 4
  %refcount = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %77 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i102, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !360

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %cleanup

if.then.i102:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void @qedf_release_cmd(ptr noundef %refcount) #10, !callees !362
  br label %cleanup

if.end21:                                         ; preds = %if.else.i, %qedf_map_sg.exit.i.if.end21_crit_edge
  %bd_count.0.i = phi i32 [ %bd_count.0.lcssa102.i.i, %qedf_map_sg.exit.i.if.end21_crit_edge ], [ 0, %if.else.i ]
  %conv.i = trunc i32 %bd_count.0.i to i16
  %78 = ptrtoint ptr %bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bd_tbl.i, align 4
  %bd_valid.i = getelementptr inbounds %struct.io_bdt, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %bd_valid.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i, ptr %bd_valid.i, align 4
  %flags = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 1
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %flags, align 4
  %83 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool23.not = icmp eq i32 %83, 0
  br i1 %tobool23.not, label %if.end21.if.then27_crit_edge, label %lor.lhs.false

if.end21.if.then27_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end21
  %84 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %flags, align 4
  %86 = and i32 %85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool26.not = icmp eq i32 %86, 0
  br i1 %tobool26.not, label %if.end32, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end21.if.then27_crit_edge
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_post_io_req, i32 noundef 890, ptr noundef nonnull @.str.31) #10
  %87 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %sc_cmd1, align 4
  %refcount30 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 11
  %call.i.i.i.i.i.i103 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount30, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  tail call void @llvm.prefetch.p0(ptr %refcount30, i32 1, i32 3, i32 1) #10
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount30, ptr %refcount30, i32 1, ptr elementtype(i32) %refcount30) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i.i104 = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i104)
  %cmp.i.i.i.i105 = icmp eq i32 %asmresult.i.i.i.i.i.i.i104, 1
  br i1 %cmp.i.i.i.i105, label %if.then.i109, label %if.end5.i.i.i.i107

if.end5.i.i.i.i107:                               ; preds = %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i104)
  %.not.i.i.i.i106 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i104, 0
  br i1 %.not.i.i.i.i106, label %if.end5.i.i.i.i107.cleanup_crit_edge, label %if.then10.i.i.i.i108, !prof !360

if.end5.i.i.i.i107.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i108:                             ; preds = %if.end5.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount30, i32 noundef 3) #10
  br label %cleanup

if.then.i109:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void @qedf_release_cmd(ptr noundef %refcount30) #10, !callees !362
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false
  %89 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %90, i32 0, i32 18
  %91 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %lun, align 8
  %conv = trunc i64 %92 to i32
  %lun34 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 22
  %93 = ptrtoint ptr %lun34 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv, ptr %lun34, align 4
  %sq_mem_size.i = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 18
  %94 = ptrtoint ptr %sq_mem_size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sq_mem_size.i, align 4
  %div13.i = lshr i32 %95, 3
  %sq_prod_idx.i = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 15
  %96 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %sq_prod_idx.i, align 4
  %inc.i = add i16 %97, 1
  store i16 %inc.i, ptr %sq_prod_idx.i, align 4
  %fw_sq_prod_idx.i = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 16
  %98 = ptrtoint ptr %fw_sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %fw_sq_prod_idx.i, align 2
  %inc2.i = add i16 %99, 1
  store i16 %inc2.i, ptr %fw_sq_prod_idx.i, align 2
  %100 = trunc i32 %div13.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %100)
  %cmp.i111 = icmp eq i16 %inc.i, %100
  br i1 %cmp.i111, label %if.then.i112, label %if.end32.qedf_get_sqe_idx.exit_crit_edge

if.end32.qedf_get_sqe_idx.exit_crit_edge:         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %qedf_get_sqe_idx.exit

if.then.i112:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %sq_prod_idx.i, align 4
  br label %qedf_get_sqe_idx.exit

qedf_get_sqe_idx.exit:                            ; preds = %if.then.i112, %if.end32.qedf_get_sqe_idx.exit_crit_edge
  %sq = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 13
  %102 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sq, align 4
  %idxprom = zext i16 %97 to i32
  %arrayidx = getelementptr %struct.fcoe_wqe, ptr %103, i32 %idxprom
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %104, i32 8)
  store i64 0, ptr %arrayidx, align 4
  %tasks = getelementptr %struct.Scsi_Host, ptr %5, i32 2, i32 50, i32 9, i32 2
  %conv36 = zext i16 %29 to i32
  %num_tids_per_block.i = getelementptr %struct.Scsi_Host, ptr %5, i32 2, i32 50, i32 9, i32 3
  %105 = ptrtoint ptr %num_tids_per_block.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_tids_per_block.i, align 4
  %conv36.frozen = freeze i32 %conv36
  %.frozen = freeze i32 %106
  %div.i = udiv i32 %conv36.frozen, %.frozen
  %arrayidx.i = getelementptr %struct.qed_fcoe_tid, ptr %tasks, i32 0, i32 2, i32 %div.i
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i, align 4
  %109 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %conv36.frozen, %109
  %110 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tasks, align 4
  %mul.i = mul i32 %111, %rem.i.decomposed
  %add.ptr.i113 = getelementptr i8, ptr %108, i32 %mul.i
  %tobool38.not = icmp eq ptr %add.ptr.i113, null
  br i1 %tobool38.not, label %if.then39, label %if.end45

if.then39:                                        ; preds = %qedf_get_sqe_idx.exit
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_post_io_req, i32 noundef 909, ptr noundef nonnull @.str.32, i32 noundef %conv36) #10
  %112 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %sc_cmd1, align 4
  %refcount43 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 11
  %call.i.i.i.i.i.i114 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount43, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  tail call void @llvm.prefetch.p0(ptr %refcount43, i32 1, i32 3, i32 1) #10
  %113 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount43, ptr %refcount43, i32 1, ptr elementtype(i32) %refcount43) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i.i115 = extractvalue { i32, i32, i32 } %113, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i115)
  %cmp.i.i.i.i116 = icmp eq i32 %asmresult.i.i.i.i.i.i.i115, 1
  br i1 %cmp.i.i.i.i116, label %if.then.i120, label %if.end5.i.i.i.i118

if.end5.i.i.i.i118:                               ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i115)
  %.not.i.i.i.i117 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i115, 0
  br i1 %.not.i.i.i.i117, label %if.end5.i.i.i.i118.cleanup_crit_edge, label %if.then10.i.i.i.i119, !prof !360

if.end5.i.i.i.i118.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i119:                             ; preds = %if.end5.i.i.i.i118
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount43, i32 noundef 3) #10
  br label %cleanup

if.then.i120:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void @qedf_release_cmd(ptr noundef %refcount43) #10, !callees !362
  br label %cleanup

if.end45:                                         ; preds = %qedf_get_sqe_idx.exit
  tail call fastcc void @qedf_init_task(ptr noundef %fcport, ptr noundef %io_req, ptr noundef nonnull %add.ptr.i113, ptr noundef %arrayidx)
  %114 = ptrtoint ptr %fw_sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %fw_sq_prod_idx.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !367
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !369
  tail call void @arm_heavy_mb() #10
  %dbell.sroa.11.0.insert.ext.i = zext i16 %115 to i32
  %dbell.sroa.0.0.insert.insert.i = or i32 %dbell.sroa.11.0.insert.ext.i, -2080374784
  %116 = tail call i32 @llvm.bswap.i32(i32 %dbell.sroa.0.0.insert.insert.i) #10
  %p_doorbell.i = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 9
  %117 = ptrtoint ptr %p_doorbell.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %p_doorbell.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #10, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !371
  tail call void @arm_heavy_mb() #10
  %flags46 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags46) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedf_io_tracing to i32))
  %119 = load i32, ptr @qedf_io_tracing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool47.not = icmp eq i32 %119, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %land.lhs.true

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end45
  %120 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sc_cmd1, align 4
  %tobool49.not = icmp eq ptr %121, null
  br i1 %tobool49.not, label %land.lhs.true.cleanup_crit_edge, label %if.then50

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @qedf_trace_io(ptr noundef %fcport, ptr noundef %io_req, i8 noundef signext 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %land.lhs.true.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.then.i120, %if.then10.i.i.i.i119, %if.end5.i.i.i.i118.cleanup_crit_edge, %if.then.i109, %if.then10.i.i.i.i108, %if.end5.i.i.i.i107.cleanup_crit_edge, %if.then.i102, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then50 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ -11, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -11, %if.then10.i.i.i.i ], [ -11, %if.then.i102 ], [ -22, %if.end5.i.i.i.i107.cleanup_crit_edge ], [ -22, %if.then10.i.i.i.i108 ], [ -22, %if.then.i109 ], [ -22, %if.end5.i.i.i.i118.cleanup_crit_edge ], [ -22, %if.then10.i.i.i.i119 ], [ -22, %if.then.i120 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedf_init_task(ptr nocapture noundef readonly %fcport, ptr nocapture noundef %io_req, ptr noundef %task_ctx, ptr noundef %sqe) unnamed_addr #0 align 64 {
entry:
  %fcp_cmnd = alloca [32 x i8], align 1
  %tmp_fcp_cmnd = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_cmd1 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 2
  %0 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_cmd1, align 4
  %bd_tbl2 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 13
  %2 = ptrtoint ptr %bd_tbl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_tbl2, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fcp_cmnd) #10
  %4 = call ptr @memset(ptr %fcp_cmnd, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp_fcp_cmnd) #10
  %5 = getelementptr inbounds [8 x i32], ptr %tmp_fcp_cmnd, i32 0, i32 2
  %6 = getelementptr inbounds [8 x i32], ptr %tmp_fcp_cmnd, i32 0, i32 3
  %7 = getelementptr inbounds [8 x i32], ptr %tmp_fcp_cmnd, i32 0, i32 7
  %qedf3 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 6
  %8 = ptrtoint ptr %qedf3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qedf3, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !348) #10
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %num_queues = getelementptr inbounds %struct.qedf_ctx, ptr %9, i32 0, i32 31
  %14 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_queues, align 8
  %conv = zext i8 %15 to i32
  %rem = urem i32 %13, %conv
  %task = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 18
  %16 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %task_ctx, ptr %task, align 4
  %17 = call ptr @memset(ptr %task_ctx, i32 0, i32 592)
  %task_params = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 19
  %18 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task_params, align 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 28)
  %sgl_task_params = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 20
  %21 = ptrtoint ptr %sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sgl_task_params, align 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 20)
  %cmd_type = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 3
  %24 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cmd_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp = icmp eq i8 %25, 2
  br i1 %cmp, label %entry.if.end12_crit_edge, label %if.else

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp7 = icmp eq i32 %27, 1
  %data_xfer_len = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 10
  %28 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_xfer_len, align 4
  %not.cmp7 = xor i1 %cmp7, true
  %. = zext i1 %not.cmp7 to i32
  %.3 = select i1 %cmp7, i32 %29, i32 0
  %.4 = select i1 %cmp7, i32 0, i32 %29
  br label %if.end12

if.end12:                                         ; preds = %if.else, %entry.if.end12_crit_edge
  %task_type.0 = phi i32 [ 1, %entry.if.end12_crit_edge ], [ %., %if.else ]
  %tx_io_size.0 = phi i32 [ 0, %entry.if.end12_crit_edge ], [ %.3, %if.else ]
  %rx_io_size.0 = phi i32 [ 0, %entry.if.end12_crit_edge ], [ %.4, %if.else ]
  %30 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task_params, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %task_ctx, ptr %31, align 4
  %33 = load ptr, ptr %task_params, align 4
  %sqe15 = getelementptr inbounds %struct.fcoe_task_params, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %sqe15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %sqe, ptr %sqe15, align 4
  %35 = load ptr, ptr %task_params, align 4
  %task_type17 = getelementptr inbounds %struct.fcoe_task_params, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task_type17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %task_type.0, ptr %task_type17, align 4
  %37 = load ptr, ptr %task_params, align 4
  %tx_io_size19 = getelementptr inbounds %struct.fcoe_task_params, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %tx_io_size19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %tx_io_size.0, ptr %tx_io_size19, align 4
  %39 = load ptr, ptr %task_params, align 4
  %rx_io_size21 = getelementptr inbounds %struct.fcoe_task_params, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %rx_io_size21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %rx_io_size.0, ptr %rx_io_size21, align 4
  %fw_cid = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 8
  %41 = ptrtoint ptr %fw_cid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fw_cid, align 4
  %43 = load ptr, ptr %task_params, align 4
  %conn_cid = getelementptr inbounds %struct.fcoe_task_params, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %conn_cid to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %42, ptr %conn_cid, align 4
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %45 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %xid, align 4
  %47 = load ptr, ptr %task_params, align 4
  %itid = getelementptr inbounds %struct.fcoe_task_params, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %itid to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %46, ptr %itid, align 4
  %conv24 = trunc i32 %rem to i8
  %49 = load ptr, ptr %task_params, align 4
  %cq_rss_number = getelementptr inbounds %struct.fcoe_task_params, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %cq_rss_number to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv24, ptr %cq_rss_number, align 2
  %dev_type = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 23
  %51 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dev_type, align 4
  %conv26 = trunc i32 %52 to i8
  %53 = load ptr, ptr %task_params, align 4
  %is_tape_device = getelementptr inbounds %struct.fcoe_task_params, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %is_tape_device to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv26, ptr %is_tape_device, align 1
  %55 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %cmd_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp30.not = icmp eq i8 %56, 2
  br i1 %cmp30.not, label %if.end12.if.end58_crit_edge, label %if.then32

if.end12.if.end58_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then32:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %bd_valid = getelementptr inbounds %struct.io_bdt, ptr %3, i32 0, i32 3
  %57 = ptrtoint ptr %bd_valid to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %bd_valid, align 4
  %bd_tbl34 = getelementptr inbounds %struct.io_bdt, ptr %3, i32 0, i32 1
  %59 = ptrtoint ptr %bd_tbl34 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bd_tbl34, align 4
  %61 = ptrtoint ptr %sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sgl_task_params, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %62, align 4
  %bd_tbl_dma = getelementptr inbounds %struct.io_bdt, ptr %3, i32 0, i32 2
  %64 = ptrtoint ptr %bd_tbl_dma to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bd_tbl_dma, align 4
  %66 = load ptr, ptr %sgl_task_params, align 4
  %sgl_phys_addr = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %sgl_phys_addr to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %65, ptr %sgl_phys_addr, align 4
  %68 = load ptr, ptr %sgl_task_params, align 4
  %hi = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %68, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %hi, align 4
  %70 = load ptr, ptr %sgl_task_params, align 4
  %num_sges = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %num_sges to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %58, ptr %num_sges, align 4
  %72 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sc_cmd1, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %73, i32 0, i32 17, i32 1
  %74 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %length.i, align 4
  %76 = load ptr, ptr %sgl_task_params, align 4
  %total_buffer_size = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %total_buffer_size to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %75, ptr %total_buffer_size, align 4
  %sge_type = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 39
  %78 = ptrtoint ptr %sge_type to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sge_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %79)
  %cmp50 = icmp eq i8 %79, 2
  %80 = ptrtoint ptr %sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sgl_task_params, align 4
  %small_mid_sge = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %81, i32 0, i32 4
  %.5 = zext i1 %cmp50 to i8
  %82 = ptrtoint ptr %small_mid_sge to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %.5, ptr %small_mid_sge, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.then32, %if.end12.if.end58_crit_edge
  %sense_buffer_dma = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 24
  %83 = ptrtoint ptr %sense_buffer_dma to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sense_buffer_dma, align 4
  %85 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sc_cmd1, align 4
  %87 = call ptr @memset(ptr %tmp_fcp_cmnd, i32 0, i32 32)
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %86, i32 0, i32 1
  %88 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device.i, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %89, i32 0, i32 18
  %90 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %lun.i, align 8
  call void @int_to_scsilun(i64 noundef %91, ptr noundef nonnull %tmp_fcp_cmnd) #10
  %fc_pri_ta.i = getelementptr inbounds %struct.fcp_cmnd, ptr %tmp_fcp_cmnd, i32 0, i32 2
  %tm_flags.i = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 5
  %92 = ptrtoint ptr %tm_flags.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %tm_flags.i, align 2
  %fc_tm_flags.i = getelementptr inbounds %struct.fcp_cmnd, ptr %tmp_fcp_cmnd, i32 0, i32 3
  %94 = ptrtoint ptr %fc_tm_flags.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %fc_tm_flags.i, align 2
  %io_req_flags.i = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 4
  %95 = ptrtoint ptr %io_req_flags.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %io_req_flags.i, align 1
  %fc_flags.i = getelementptr inbounds %struct.fcp_cmnd, ptr %tmp_fcp_cmnd, i32 0, i32 4
  %97 = ptrtoint ptr %fc_flags.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %fc_flags.i, align 1
  %98 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %5, align 4
  %99 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %cmd_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %100)
  %cmp.i = icmp eq i8 %100, 2
  br i1 %cmp.i, label %if.end23.i, label %if.else.i

if.else.i:                                        ; preds = %if.end58
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %86, i32 0, i32 15
  %101 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sc_data_direction.i, align 4
  %103 = zext i32 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %102, label %if.else.i.if.then29.i_crit_edge [
    i32 1, label %if.else.i.if.end23.i.thread1_crit_edge
    i32 2, label %if.then17.i
  ]

if.else.i.if.end23.i.thread1_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i.thread1

if.else.i.if.then29.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i.thread1

if.end23.i.thread1:                               ; preds = %if.then17.i, %if.else.i.if.end23.i.thread1_crit_edge
  %.sink52.i.ph = phi i8 [ 1, %if.else.i.if.end23.i.thread1_crit_edge ], [ 2, %if.then17.i ]
  %104 = or i8 %.sink52.i.ph, %96
  %105 = ptrtoint ptr %fc_flags.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %fc_flags.i, align 1
  br label %if.then29.i

if.end23.i:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %106 = or i8 %96, 2
  %107 = ptrtoint ptr %fc_flags.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %fc_flags.i, align 1
  %108 = ptrtoint ptr %fc_pri_ta.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %fc_pri_ta.i, align 1
  br label %qedf_build_fcp_cmnd.exit

if.then29.i:                                      ; preds = %if.end23.i.thread1, %if.else.i.if.then29.i_crit_edge
  %109 = ptrtoint ptr %fc_pri_ta.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %fc_pri_ta.i, align 1
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %86, i32 0, i32 16
  %110 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cmnd.i, align 4
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %86, i32 0, i32 14
  %112 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %cmd_len.i, align 4
  %conv30.i = zext i16 %113 to i32
  %114 = call ptr @memcpy(ptr %6, ptr %111, i32 %conv30.i)
  br label %qedf_build_fcp_cmnd.exit

qedf_build_fcp_cmnd.exit:                         ; preds = %if.then29.i, %if.end23.i
  %data_xfer_len.i = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 10
  %115 = ptrtoint ptr %data_xfer_len.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %data_xfer_len.i, align 4
  %117 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %7, align 4
  %118 = call ptr @memcpy(ptr %fcp_cmnd, ptr %tmp_fcp_cmnd, i32 32)
  %119 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %task_params, align 4
  %121 = ptrtoint ptr %sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sgl_task_params, align 4
  %task_retry_identifier = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 44
  %123 = ptrtoint ptr %task_retry_identifier to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %task_retry_identifier, align 4
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %84, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 0, 1
  %call76 = call i32 @init_initiator_rw_fcoe_task(ptr noundef %120, ptr noundef %122, [2 x i32] %.fca.1.insert, i32 noundef %124, ptr noundef nonnull %fcp_cmnd) #10
  %sge_type77 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 39
  %125 = ptrtoint ptr %sge_type77 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %sge_type77, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %126)
  %cmp79 = icmp eq i8 %126, 2
  br i1 %cmp79, label %if.then81, label %if.else83

if.then81:                                        ; preds = %qedf_build_fcp_cmnd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %slow_sge_ios = getelementptr inbounds %struct.qedf_ctx, ptr %9, i32 0, i32 56
  %127 = ptrtoint ptr %slow_sge_ios to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %slow_sge_ios, align 4
  %inc82 = add i32 %128, 1
  store i32 %inc82, ptr %slow_sge_ios, align 4
  br label %if.end85

if.else83:                                        ; preds = %qedf_build_fcp_cmnd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %fast_sge_ios = getelementptr inbounds %struct.qedf_ctx, ptr %9, i32 0, i32 57
  %129 = ptrtoint ptr %fast_sge_ios to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %fast_sge_ios, align 8
  %inc84 = add i32 %130, 1
  store i32 %inc84, ptr %fast_sge_ios, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.else83, %if.then81
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_fcp_cmnd) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fcp_cmnd) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedf_trace_io(ptr nocapture noundef readonly %fcport, ptr noundef %io_req, i8 noundef signext %direction) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qedf1 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 6
  %0 = ptrtoint ptr %qedf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedf1, align 4
  %sc_cmd2 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 2
  %2 = ptrtoint ptr %sc_cmd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_cmd2, align 4
  %io_trace_lock = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 61
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_trace_lock) #10
  %io_trace_idx = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 62
  %4 = ptrtoint ptr %io_trace_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %io_trace_idx, align 16
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %direction, ptr %arrayidx, align 4
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %7 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %xid, align 4
  %task_id = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 1
  %9 = ptrtoint ptr %task_id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %task_id, align 2
  %rdata = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 5
  %10 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdata, align 4
  %port_id = getelementptr inbounds %struct.fc_rport_priv, ptr %11, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_id, align 8
  %port_id8 = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 2
  %14 = ptrtoint ptr %port_id8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %port_id8, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %lun, align 8
  %conv9 = trunc i64 %18 to i32
  %lun10 = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 3
  %19 = ptrtoint ptr %lun10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv9, ptr %lun10, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 16
  %20 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmnd, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %op12 = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 4
  %24 = ptrtoint ptr %op12 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %op12, align 4
  %25 = load ptr, ptr %cmnd, align 4
  %arrayidx14 = getelementptr i8, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx14, align 1
  %lba = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 5
  %28 = ptrtoint ptr %lba to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %lba, align 1
  %29 = load ptr, ptr %cmnd, align 4
  %arrayidx17 = getelementptr i8, ptr %29, i32 3
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx17, align 1
  %arrayidx19 = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 5, i32 1
  %32 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx19, align 1
  %33 = load ptr, ptr %cmnd, align 4
  %arrayidx21 = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx21, align 1
  %arrayidx23 = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 5, i32 2
  %36 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx23, align 1
  %37 = load ptr, ptr %cmnd, align 4
  %arrayidx25 = getelementptr i8, ptr %37, i32 5
  %38 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx25, align 1
  %arrayidx27 = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 5, i32 3
  %40 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx27, align 1
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17, i32 1
  %41 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length.i, align 4
  %bufflen = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 6
  %43 = ptrtoint ptr %bufflen to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %bufflen, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17, i32 0, i32 1
  %44 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nents.i, align 4
  %sg_count = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 7
  %46 = ptrtoint ptr %sg_count to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %sg_count, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 24
  %47 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %result, align 4
  %result30 = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 8
  %49 = ptrtoint ptr %result30 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %result30, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %jiffies = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 9
  %51 = ptrtoint ptr %jiffies to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %jiffies, align 4
  %refcount = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %52 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %refcount, align 4
  %refcount32 = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 10
  %54 = ptrtoint ptr %refcount32 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %refcount32, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %direction)
  %cmp34 = icmp eq i8 %direction, 0
  %cpu = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 37
  %55 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu, align 4
  %req_cpu = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 11
  %57 = ptrtoint ptr %req_cpu to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %req_cpu, align 4
  br i1 %cmp34, label %if.then, label %if.then39

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %int_cpu = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 12
  %58 = ptrtoint ptr %int_cpu to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %int_cpu, align 4
  br label %if.end47

if.then39:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %int_cpu42 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 38
  %59 = ptrtoint ptr %int_cpu42 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %int_cpu42, align 4
  %int_cpu43 = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 12
  %61 = ptrtoint ptr %int_cpu43 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %int_cpu43, align 4
  %62 = tail call i32 @llvm.read_register.i32(metadata !348) #10
  %and.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i to ptr
  %cpu45 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu45 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu45, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %if.then
  %.sink = phi i32 [ 0, %if.then ], [ %65, %if.then39 ]
  %66 = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 13
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %.sink, ptr %66, align 4
  %sge_type = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 39
  %68 = ptrtoint ptr %sge_type to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sge_type, align 4
  %sge_type48 = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idxprom, i32 14
  %70 = ptrtoint ptr %sge_type48 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %sge_type48, align 4
  %71 = ptrtoint ptr %io_trace_idx to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %io_trace_idx, align 16
  %inc = add i16 %72, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %inc)
  %cmp52 = icmp eq i16 %inc, 2048
  %spec.select = select i1 %cmp52, i16 0, i16 %inc
  %73 = ptrtoint ptr %io_trace_idx to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %spec.select, ptr %io_trace_idx, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_trace_lock, i32 noundef %call4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedf_queuecommand(ptr noundef %host, ptr noundef %sc_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.Scsi_Host, ptr %host, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
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
  %call3 = tail call i32 @scsi_is_fc_rport(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %parent.i173 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 55, i32 1
  %8 = ptrtoint ptr %parent.i173 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i173, align 8
  %parent7 = getelementptr i8, ptr %9, i32 136
  %10 = ptrtoint ptr %parent7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent7, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 -240
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 11
  %12 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dd_data, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 17, i32 0, i32 1
  %14 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %15)
  %cmp = icmp ugt i32 %15, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_queuecommand, i32 noundef 948, ptr noundef nonnull @.str.33, i32 noundef %15, i32 noundef 256) #10
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 24
  %16 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 7, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %sc_cmd) #10
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %flags10 = getelementptr %struct.Scsi_Host, ptr %host, i32 1, i32 50, i32 12, i32 8, i32 4
  %17 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags10, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end.if.then16_crit_edge

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end
  %20 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags10, align 4
  %22 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not = icmp eq i32 %22, 0
  br i1 %tobool15.not, label %if.end20, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end.if.then16_crit_edge
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_queuecommand, i32 noundef 958, i32 noundef 1024, ptr noundef nonnull @.str.34, i32 noundef %18) #10
  %result19 = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 24
  %23 = ptrtoint ptr %result19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 65536, ptr %result19, align 4
  tail call void @scsi_done(ptr noundef %sc_cmd) #10
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  %pdev = getelementptr %struct.Scsi_Host, ptr %host, i32 1, i32 50, i32 0, i32 7, i32 3
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 49
  %26 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %26, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %27 = and i40 %bf.load, 67108864
  %tobool21.not = icmp eq i40 %27, 0
  br i1 %tobool21.not, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_queuecommand, i32 noundef 967, i32 noundef 1024, ptr noundef nonnull @.str.35, ptr noundef %sc_cmd) #10
  %result24 = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 24
  %28 = ptrtoint ptr %result24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 65536, ptr %result24, align 4
  tail call void @scsi_done(ptr noundef %sc_cmd) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %port_state.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 8
  %29 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_state.i, align 8
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %30, label %if.end25.if.then28_crit_edge [
    i32 2, label %if.end25.sw.bb.i_crit_edge
    i32 11, label %if.end25.sw.bb.i_crit_edge179
    i32 4, label %sw.bb6.i
  ]

if.end25.sw.bb.i_crit_edge179:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end25.sw.bb.i_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end25.if.then28_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

sw.bb.i:                                          ; preds = %if.end25.sw.bb.i_crit_edge, %if.end25.sw.bb.i_crit_edge179
  %roles.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 7
  %32 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %roles.i, align 4
  %and.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end31

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 14
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags.i, align 8
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool2.not.i = icmp eq i8 %36, 0
  %..i = select i1 %tobool2.not.i, i32 65536, i32 786432
  br label %if.then28

sw.bb6.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %flags7.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 14
  %37 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags7.i, align 8
  %39 = and i8 %38, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool10.not.i = icmp eq i8 %39, 0
  %.17.i = select i1 %tobool10.not.i, i32 786432, i32 983040
  br label %if.then28

if.then28:                                        ; preds = %sw.bb6.i, %if.else.i, %if.end25.if.then28_crit_edge
  %result.0.i.ph = phi i32 [ 65536, %if.end25.if.then28_crit_edge ], [ %.17.i, %sw.bb6.i ], [ %..i, %if.else.i ]
  %port_id = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 6
  %40 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port_id, align 8
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_queuecommand, i32 noundef 977, i32 noundef 1024, ptr noundef nonnull @.str.36, i32 noundef %result.0.i.ph, i32 noundef %41) #10
  %result30 = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 24
  %42 = ptrtoint ptr %result30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %result.0.i.ph, ptr %result30, align 4
  tail call void @scsi_done(ptr noundef %sc_cmd) #10
  br label %cleanup

if.end31:                                         ; preds = %sw.bb.i
  %43 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags10, align 4
  %45 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool34.not = icmp eq i32 %45, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_queuecommand, i32 noundef 985, i32 noundef 1024, ptr noundef nonnull @.str.37) #10
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %state = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 13, i32 13, i32 1, i32 4
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %47)
  %cmp38.not = icmp eq i32 %47, 14
  br i1 %cmp38.not, label %lor.lhs.false39, label %if.end37.if.then42_crit_edge

if.end37.if.then42_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

lor.lhs.false39:                                  ; preds = %if.end37
  %link_state = getelementptr %struct.Scsi_Host, ptr %host, i32 1, i32 49, i32 31, i32 0, i32 0, i32 4, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #10
  %48 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp41.not = icmp eq i32 %49, 1
  br i1 %cmp41.not, label %if.end44, label %lor.lhs.false39.if.then42_crit_edge

lor.lhs.false39.if.then42_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false39.if.then42_crit_edge, %if.end37.if.then42_crit_edge
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_queuecommand, i32 noundef 992, i32 noundef 1024, ptr noundef nonnull @.str.38) #10
  br label %cleanup

if.end44:                                         ; preds = %lor.lhs.false39
  %arrayidx = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 1
  %flags45 = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 3, i32 1
  %50 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %flags45, align 4
  %52 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool47.not = icmp eq i32 %52, 0
  br i1 %tobool47.not, label %if.end44.cleanup_crit_edge, label %lor.lhs.false48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false48:                                  ; preds = %if.end44
  %53 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags45, align 4
  %55 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool51.not = icmp eq i32 %55, 0
  br i1 %tobool51.not, label %if.end53, label %lor.lhs.false48.cleanup_crit_edge

lor.lhs.false48.cleanup_crit_edge:                ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end53:                                         ; preds = %lor.lhs.false48
  %ios_to_queue = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 5, i32 1
  %call.i.i167 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ios_to_queue, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ios_to_queue, i32 1, i32 3, i32 1) #10
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ios_to_queue, ptr %ios_to_queue, i32 1, ptr elementtype(i32) %ios_to_queue) #10, !srcloc !365
  %retry_delay_timestamp = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 3, i32 3
  %57 = ptrtoint ptr %retry_delay_timestamp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %retry_delay_timestamp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool54.not = icmp eq i32 %58, 0
  br i1 %tobool54.not, label %if.end53.if.end72_crit_edge, label %do.body56

if.end53.if.end72_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.body56:                                        ; preds = %if.end53
  %call60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx) #10
  %59 = ptrtoint ptr %retry_delay_timestamp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %retry_delay_timestamp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %60, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp64 = icmp slt i32 %sub, 0
  br i1 %cmp64, label %if.then66, label %if.else

if.then66:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %retry_delay_timestamp to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %retry_delay_timestamp, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx, i32 noundef %call60) #10
  br label %if.end72

if.else:                                          ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx, i32 noundef %call60) #10
  %call.i.i168 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ios_to_queue, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ios_to_queue, i32 1, i32 3, i32 1) #10
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ios_to_queue, ptr %ios_to_queue, i32 1, ptr elementtype(i32) %ios_to_queue) #10, !srcloc !366
  br label %cleanup

if.end72:                                         ; preds = %if.then66, %if.end53.if.end72_crit_edge
  %call73 = tail call ptr @qedf_alloc_cmd(ptr noundef %arrayidx, i8 noundef zeroext 1)
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i169 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ios_to_queue, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ios_to_queue, i32 1, i32 3, i32 1) #10
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ios_to_queue, ptr %ios_to_queue, i32 1, ptr elementtype(i32) %ios_to_queue) #10, !srcloc !366
  br label %cleanup

if.end77:                                         ; preds = %if.end72
  %sc_cmd78 = getelementptr inbounds %struct.qedf_ioreq, ptr %call73, i32 0, i32 2
  %65 = ptrtoint ptr %sc_cmd78 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %sc_cmd, ptr %sc_cmd78, align 4
  %call88 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx) #10
  %call93 = tail call i32 @qedf_post_io_req(ptr noundef %arrayidx, ptr noundef nonnull %call73)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end77.if.end97_crit_edge, label %if.then95

if.end77.if.end97_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then95:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_queuecommand, i32 noundef 1039, ptr noundef nonnull @.str.39) #10
  %free_sqes = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 5
  %call.i.i170 = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %free_sqes, i32 1, i32 3, i32 1) #10
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_sqes, ptr %free_sqes, i32 1, ptr elementtype(i32) %free_sqes) #10, !srcloc !365
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end77.if.end97_crit_edge
  %rc.0 = phi i32 [ 4181, %if.then95 ], [ 0, %if.end77.if.end97_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx, i32 noundef %call88) #10
  %call.i.i171 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ios_to_queue, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ios_to_queue, i32 1, i32 3, i32 1) #10
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ios_to_queue, ptr %ios_to_queue, i32 1, ptr elementtype(i32) %ios_to_queue) #10, !srcloc !366
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.then75, %if.else, %lor.lhs.false48.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.then42, %if.then35, %if.then28, %if.then22, %if.then16, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then16 ], [ 0, %if.then28 ], [ 0, %if.then22 ], [ 4181, %if.then35 ], [ 4181, %if.then42 ], [ %rc.0, %if.end97 ], [ 4181, %if.then75 ], [ 4184, %if.else ], [ 4184, %lor.lhs.false48.cleanup_crit_edge ], [ 4184, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_fc_rport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_scsi_completion(ptr noundef %qedf, ptr noundef readonly %cqe, ptr noundef %io_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %io_req, null
  %tobool1.not = icmp eq ptr %cqe, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %entry
  %flags4 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 8
  %0 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags4, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %if.end3.if.then13_crit_edge, label %lor.lhs.false

if.end3.if.then13_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end3
  %2 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags4, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not = icmp eq i32 %4, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags4, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false9.if.then13_crit_edge

lor.lhs.false9.if.then13_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false9.if.then13_crit_edge, %lor.lhs.false.if.then13_crit_edge, %if.end3.if.then13_crit_edge
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %8 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %xid, align 4
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_completion, i32 noundef 1141, ptr noundef nonnull @.str.40, i32 noundef %conv) #10
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false9
  %sc_cmd15 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 2
  %10 = ptrtoint ptr %sc_cmd15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_cmd15, align 4
  %cqe_info = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_completion, i32 noundef 1149, ptr noundef nonnull @.str.41) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %SCp, align 4
  %tobool20.not = icmp eq ptr %13, null
  br i1 %tobool20.not, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_completion, i32 noundef 1155, ptr noundef nonnull @.str.42) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %tobool24.not = icmp eq ptr %15, null
  br i1 %tobool24.not, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_completion, i32 noundef 1161, ptr noundef nonnull @.str.43, ptr noundef nonnull %11) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 -192
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i.i, align 8
  %tobool29.not = icmp eq ptr %17, null
  br i1 %tobool29.not, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_completion, i32 noundef 1167, ptr noundef nonnull @.str.44, ptr noundef nonnull %11) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %fcport33 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 6
  %18 = ptrtoint ptr %fcport33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fcport33, align 4
  %flags34 = getelementptr inbounds %struct.qedf_rport, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags34, align 4
  %22 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool36.not = icmp eq i32 %22, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %if.end32.if.then44_crit_edge

if.end32.if.then44_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

lor.lhs.false37:                                  ; preds = %if.end32
  %23 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags34, align 4
  %25 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool40.not = icmp eq i32 %25, 0
  br i1 %tobool40.not, label %lor.lhs.false37.if.end48_crit_edge, label %land.lhs.true

lor.lhs.false37.if.end48_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

land.lhs.true:                                    ; preds = %lor.lhs.false37
  %lun = getelementptr inbounds %struct.scsi_device, ptr %15, i32 0, i32 18
  %26 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %lun, align 8
  %lun_reset_lun = getelementptr inbounds %struct.qedf_rport, ptr %19, i32 0, i32 2
  %28 = ptrtoint ptr %lun_reset_lun to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lun_reset_lun, align 4
  %conv42 = sext i32 %29 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %conv42)
  %cmp = icmp eq i64 %27, %conv42
  br i1 %cmp, label %land.lhs.true.if.then44_crit_edge, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

land.lhs.true.if.then44_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.then44:                                        ; preds = %land.lhs.true.if.then44_crit_edge, %if.end32.if.then44_crit_edge
  %xid46 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %30 = ptrtoint ptr %xid46 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %xid46, align 4
  %conv47 = zext i16 %31 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_completion, i32 noundef 1182, i32 noundef 1024, ptr noundef nonnull @.str.45, i32 noundef %conv47) #10
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true.if.end48_crit_edge, %lor.lhs.false37.if.end48_crit_edge
  tail call fastcc void @qedf_parse_fcp_rsp(ptr noundef nonnull %io_req, ptr noundef %cqe_info)
  tail call fastcc void @qedf_unmap_sg_list(ptr noundef %qedf, ptr noundef nonnull %io_req)
  %fcp_rsp_len = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 26
  %32 = ptrtoint ptr %fcp_rsp_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fcp_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp49 = icmp ugt i32 %33, 3
  br i1 %cmp49, label %land.lhs.true51, label %if.end48.if.end61_crit_edge

if.end48.if.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

land.lhs.true51:                                  ; preds = %if.end48
  %fcp_rsp_code = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 30
  %34 = ptrtoint ptr %fcp_rsp_code to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fcp_rsp_code, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool53.not = icmp eq i8 %35, 0
  br i1 %tobool53.not, label %land.lhs.true51.if.end61_crit_edge, label %if.then54

land.lhs.true51.if.end61_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then54:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  %conv52 = zext i8 %35 to i32
  %xid56 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %36 = ptrtoint ptr %xid56 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %xid56, align 4
  %conv57 = zext i16 %37 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_completion, i32 noundef 1195, ptr noundef nonnull @.str.46, i32 noundef %conv57, i32 noundef %33, i32 noundef %conv52) #10
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 24
  %38 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 131072, ptr %result, align 4
  br label %out

if.end61:                                         ; preds = %land.lhs.true51.if.end61_crit_edge, %if.end48.if.end61_crit_edge
  %fw_error_flags = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3, i32 0, i32 7
  %39 = ptrtoint ptr %fw_error_flags to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fw_error_flags, align 2
  %41 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool65.not = icmp eq i8 %41, 0
  br i1 %tobool65.not, label %if.end96, label %if.then66

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %xid68 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %42 = ptrtoint ptr %xid68 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %xid68, align 4
  %conv69 = zext i16 %43 to i32
  %44 = ptrtoint ptr %cqe_info to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cqe_info, align 4
  %conv71 = zext i8 %45 to i32
  %fcp_resid = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 25
  %46 = ptrtoint ptr %fcp_resid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fcp_resid, align 4
  %fw_residual = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3, i32 0, i32 9
  %48 = ptrtoint ptr %fw_residual to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fw_residual, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 16
  %50 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %51, i32 2
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx, align 1
  %conv73 = zext i8 %53 to i32
  %arrayidx75 = getelementptr i8, ptr %51, i32 3
  %54 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %55 to i32
  %arrayidx78 = getelementptr i8, ptr %51, i32 4
  %56 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %57 to i32
  %arrayidx81 = getelementptr i8, ptr %51, i32 5
  %58 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %59 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_completion, i32 noundef 1208, ptr noundef nonnull @.str.47, i32 noundef %conv69, i32 noundef %conv71, i32 noundef %47, i32 noundef %49, i32 noundef %conv73, i32 noundef %conv76, i32 noundef %conv79, i32 noundef %conv82) #10
  %cdb_status = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 28
  %60 = ptrtoint ptr %cdb_status to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cdb_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp84 = icmp eq i8 %61, 0
  %conv83 = zext i8 %61 to i32
  %spec.select = select i1 %cmp84, i32 458752, i32 %conv83
  %62 = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 24
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %spec.select, ptr %62, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 17, i32 1
  %64 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length.i, align 4
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %11, i32 0, i32 5
  %66 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %resid_len.i, align 4
  br label %out

if.end96:                                         ; preds = %if.end61
  %fcp_status = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 29
  %67 = ptrtoint ptr %fcp_status to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %fcp_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cond = icmp eq i8 %68, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end96
  %cdb_status98 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 28
  %69 = ptrtoint ptr %cdb_status98 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %cdb_status98, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp100 = icmp eq i8 %70, 0
  br i1 %cmp100, label %if.then102, label %if.else104

if.then102:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %result103 = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 24
  %71 = ptrtoint ptr %result103 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %result103, align 4
  br label %if.end164

if.else104:                                       ; preds = %sw.bb
  %refcount105 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount105, i32 noundef 4) #10
  %72 = ptrtoint ptr %refcount105 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %refcount105, align 4
  %lport = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 2
  %74 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lport, align 16
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %77, i32 0, i32 17
  %78 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %host_no, align 4
  %80 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %81, i32 0, i32 16
  %82 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %id, align 8
  %lun110 = getelementptr inbounds %struct.scsi_device, ptr %81, i32 0, i32 18
  %84 = ptrtoint ptr %lun110 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %lun110, align 8
  %xid111 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %86 = ptrtoint ptr %xid111 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %xid111, align 4
  %conv112 = zext i16 %87 to i32
  %cmnd113 = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 16
  %88 = ptrtoint ptr %cmnd113 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cmnd113, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %89, align 1
  %conv115 = zext i8 %91 to i32
  %arrayidx117 = getelementptr i8, ptr %89, i32 2
  %92 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %93 to i32
  %arrayidx120 = getelementptr i8, ptr %89, i32 3
  %94 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %95 to i32
  %arrayidx123 = getelementptr i8, ptr %89, i32 4
  %96 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %97 to i32
  %arrayidx126 = getelementptr i8, ptr %89, i32 5
  %98 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %99 to i32
  %100 = ptrtoint ptr %cdb_status98 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %cdb_status98, align 4
  %conv129 = zext i8 %101 to i32
  %fcp_resid130 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 25
  %102 = ptrtoint ptr %fcp_resid130 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %fcp_resid130, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_completion, i32 noundef 1239, i32 noundef 1024, ptr noundef nonnull @.str.48, i32 noundef %79, i32 noundef %83, i64 noundef %85, i32 noundef %conv112, i32 noundef %conv115, i32 noundef %conv118, i32 noundef %conv121, i32 noundef %conv124, i32 noundef %conv127, i32 noundef %conv129, i32 noundef %103, i32 noundef %73) #10
  %104 = ptrtoint ptr %cdb_status98 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %cdb_status98, align 4
  %conv132 = zext i8 %105 to i32
  %result134 = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 24
  %106 = ptrtoint ptr %result134 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv132, ptr %result134, align 4
  %107 = load i8, ptr %cdb_status98, align 4
  %108 = zext i8 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.167)
  switch i8 %107, label %if.else104.if.end164_crit_edge [
    i8 40, label %if.else104.if.then144_crit_edge
    i8 8, label %if.else104.if.then144_crit_edge347
  ]

if.else104.if.then144_crit_edge347:               ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then144

if.else104.if.then144_crit_edge:                  ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then144

if.else104.if.end164_crit_edge:                   ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.then144:                                       ; preds = %if.else104.if.then144_crit_edge, %if.else104.if.then144_crit_edge347
  %retry_delay_timer = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3, i32 0, i32 2
  %109 = ptrtoint ptr %retry_delay_timer to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %retry_delay_timer, align 2
  %conv145 = zext i16 %110 to i32
  %and146 = and i32 %conv145, 49152
  %and150 = and i32 %conv145, 16383
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @qedf_retry_delay to i32))
  %111 = load i8, ptr @qedf_retry_delay, align 1, !range !372
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %107)
  %cmp157 = icmp eq i8 %107, 40
  br i1 %cmp157, label %if.then159, label %if.else160

if.then159:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #12
  %task_set_fulls = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 75
  %112 = ptrtoint ptr %task_set_fulls to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %task_set_fulls, align 2
  %inc = add i8 %113, 1
  store i8 %inc, ptr %task_set_fulls, align 2
  br label %if.end164

if.else160:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #12
  %busy = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 76
  %114 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %busy, align 1
  %inc161 = add i8 %115, 1
  store i8 %inc161, ptr %busy, align 1
  br label %if.end164

if.end164:                                        ; preds = %if.else160, %if.then159, %if.else104.if.end164_crit_edge, %if.then102
  %scope.0 = phi i32 [ 65535, %if.then102 ], [ %and146, %if.then159 ], [ %and146, %if.else160 ], [ 65535, %if.else104.if.end164_crit_edge ]
  %qualifier.0 = phi i32 [ 0, %if.then102 ], [ %and150, %if.then159 ], [ %and150, %if.else160 ], [ 0, %if.else104.if.end164_crit_edge ]
  %chk_scope.1.shrunk = phi i8 [ 0, %if.then102 ], [ %111, %if.then159 ], [ %111, %if.else160 ], [ 0, %if.else104.if.end164_crit_edge ]
  %fcp_resid165 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 25
  %116 = ptrtoint ptr %fcp_resid165 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %fcp_resid165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool166.not = icmp eq i32 %117, 0
  br i1 %tobool166.not, label %if.end164.if.end169_crit_edge, label %if.then167

if.end164.if.end169_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

if.then167:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  %resid_len.i346 = getelementptr inbounds %struct.scsi_request, ptr %11, i32 0, i32 5
  %118 = ptrtoint ptr %resid_len.i346 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %resid_len.i346, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %if.end164.if.end169_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %chk_scope.1.shrunk)
  %cmp171 = icmp eq i8 %chk_scope.1.shrunk, 1
  br i1 %cmp171, label %if.else211, label %if.end169.out_crit_edge

if.end169.out_crit_edge:                          ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else211:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_completion, i32 noundef 1294, i32 noundef 1024, ptr noundef nonnull @.str.51, i32 noundef %scope.0, i32 noundef %qualifier.0) #10
  br label %out

sw.default:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %conv97 = zext i8 %68 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_completion, i32 noundef 1300, i32 noundef 1024, ptr noundef nonnull @.str.52, i32 noundef %conv97) #10
  br label %out

out:                                              ; preds = %sw.default, %if.else211, %if.end169.out_crit_edge, %if.then66, %if.then54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedf_io_tracing to i32))
  %119 = load i32, ptr @qedf_io_tracing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool220.not = icmp eq i32 %119, 0
  br i1 %tobool220.not, label %out.if.end222_crit_edge, label %if.then221

out.if.end222_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end222

if.then221:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @qedf_trace_io(ptr noundef %19, ptr noundef nonnull %io_req, i8 noundef signext 1)
  br label %if.end222

if.end222:                                        ; preds = %if.then221, %out.if.end222_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags4) #10
  %120 = ptrtoint ptr %sc_cmd15 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %sc_cmd15, align 4
  %121 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %SCp, align 4
  tail call void @scsi_done(ptr noundef nonnull %11) #10
  %refcount227 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 11
  tail call fastcc void @kref_put(ptr noundef %refcount227, ptr noundef nonnull @qedf_release_cmd)
  br label %cleanup

cleanup:                                          ; preds = %if.end222, %if.then44, %if.then30, %if.then25, %if.then21, %if.then17, %if.then13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedf_parse_fcp_rsp(ptr nocapture noundef %io_req, ptr nocapture noundef readonly %fcp_rsp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_cmd1 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 2
  %0 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_cmd1, align 4
  %fcport = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 6
  %2 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcport, align 4
  %qedf2 = getelementptr inbounds %struct.qedf_rport, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %qedf2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qedf2, align 4
  %6 = ptrtoint ptr %fcp_rsp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fcp_rsp, align 4
  %fcp_status = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 29
  %8 = ptrtoint ptr %fcp_status to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %fcp_status, align 1
  %fcp_resid = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 25
  %9 = ptrtoint ptr %fcp_resid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %fcp_resid, align 4
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fcp_resid4 = getelementptr inbounds %struct.fcoe_cqe_rsp_info, ptr %fcp_rsp, i32 0, i32 3
  %10 = ptrtoint ptr %fcp_resid4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fcp_resid4, align 4
  %12 = ptrtoint ptr %fcp_resid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fcp_resid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %scsi_comp_flags = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 31
  %13 = ptrtoint ptr %scsi_comp_flags to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %scsi_comp_flags, align 1
  %scsi_status_code = getelementptr inbounds %struct.fcoe_cqe_rsp_info, ptr %fcp_rsp, i32 0, i32 1
  %14 = ptrtoint ptr %scsi_status_code to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %scsi_status_code, align 1
  %cdb_status = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 28
  %16 = ptrtoint ptr %cdb_status to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %cdb_status, align 4
  %conv6 = zext i8 %15 to i32
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 5
  %17 = ptrtoint ptr %Status to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %conv6, ptr %Status, align 4
  %and8 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %fcp_rsp_len11 = getelementptr inbounds %struct.fcoe_cqe_rsp_info, ptr %fcp_rsp, i32 0, i32 5
  %18 = ptrtoint ptr %fcp_rsp_len11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fcp_rsp_len11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %fcp_rsp_len.0 = phi i32 [ %19, %if.then10 ], [ 0, %if.end.if.end12_crit_edge ]
  %and14 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end18_crit_edge, label %if.then16

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %fcp_sns_len17 = getelementptr inbounds %struct.fcoe_cqe_rsp_info, ptr %fcp_rsp, i32 0, i32 4
  %20 = ptrtoint ptr %fcp_sns_len17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fcp_sns_len17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end12.if.end18_crit_edge
  %fcp_sns_len.0 = phi i32 [ %21, %if.then16 ], [ 0, %if.end12.if.end18_crit_edge ]
  %fcp_rsp_len19 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 26
  %22 = ptrtoint ptr %fcp_rsp_len19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %fcp_rsp_len.0, ptr %fcp_rsp_len19, align 4
  %fcp_sns_len20 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 27
  %23 = ptrtoint ptr %fcp_sns_len20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %fcp_sns_len.0, ptr %fcp_sns_len20, align 4
  %sense_buffer = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 23
  %24 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sense_buffer, align 4
  %26 = zext i32 %fcp_rsp_len.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %fcp_rsp_len.0, label %if.end18.if.end27_crit_edge [
    i32 4, label %if.end18.if.then24_crit_edge
    i32 8, label %if.end18.if.then24_crit_edge81
  ]

if.end18.if.then24_crit_edge81:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end18.if.then24_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.end18.if.then24_crit_edge, %if.end18.if.then24_crit_edge81
  %arrayidx = getelementptr i8, ptr %25, i32 3
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %fcp_rsp_code = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 30
  %29 = ptrtoint ptr %fcp_rsp_code to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %fcp_rsp_code, align 2
  %conv26 = zext i8 %28 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_parse_fcp_rsp, i32 noundef 1088, i32 noundef 1024, ptr noundef nonnull @.str.149, i32 noundef %conv26) #10
  %add.ptr = getelementptr i8, ptr %25, i32 %fcp_rsp_len.0
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end18.if.end27_crit_edge
  %sense_data.0 = phi ptr [ %add.ptr, %if.then24 ], [ %25, %if.end18.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %fcp_sns_len.0)
  %cmp28 = icmp sgt i32 %fcp_sns_len.0, 96
  br i1 %cmp28, label %if.end32.thread, label %if.end32

if.end32:                                         ; preds = %if.end27
  %sense_buffer33 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %30 = ptrtoint ptr %sense_buffer33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sense_buffer33, align 4
  %tobool34.not = icmp eq ptr %31, null
  br i1 %tobool34.not, label %if.end32.if.end41_crit_edge, label %if.then35

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end32.thread:                                  ; preds = %if.end27
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_parse_fcp_rsp, i32 noundef 1095, i32 noundef 1024, ptr noundef nonnull @.str.150) #10
  %sense_buffer3372 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %32 = ptrtoint ptr %sense_buffer3372 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sense_buffer3372, align 4
  %tobool34.not73 = icmp eq ptr %33, null
  br i1 %tobool34.not73, label %if.end32.thread.if.end41_crit_edge, label %if.then35.thread

if.end32.thread.if.end41_crit_edge:               ; preds = %if.end32.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then35.thread:                                 ; preds = %if.end32.thread
  call void @__sanitizer_cov_trace_pc() #12
  %34 = call ptr @memset(ptr %33, i32 0, i32 96)
  br label %if.then38

if.then35:                                        ; preds = %if.end32
  %35 = call ptr @memset(ptr %31, i32 0, i32 96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fcp_sns_len.0)
  %tobool37.not = icmp eq i32 %fcp_sns_len.0, 0
  br i1 %tobool37.not, label %if.then35.if.end41_crit_edge, label %if.then35.if.then38_crit_edge

if.then35.if.then38_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

if.then35.if.end41_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then38:                                        ; preds = %if.then35.if.then38_crit_edge, %if.then35.thread
  %fcp_sns_len.17480 = phi i32 [ 96, %if.then35.thread ], [ %fcp_sns_len.0, %if.then35.if.then38_crit_edge ]
  %sense_buffer337579 = phi ptr [ %sense_buffer3372, %if.then35.thread ], [ %sense_buffer33, %if.then35.if.then38_crit_edge ]
  %36 = ptrtoint ptr %sense_buffer337579 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sense_buffer337579, align 4
  %38 = call ptr @memcpy(ptr %37, ptr %sense_data.0, i32 %fcp_sns_len.17480)
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.then35.if.end41_crit_edge, %if.end32.thread.if.end41_crit_edge, %if.end32.if.end41_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedf_unmap_sg_list(ptr nocapture noundef readonly %qedf, ptr nocapture noundef readonly %io_req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_cmd = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 2
  %0 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_cmd, align 4
  %bd_tbl = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 13
  %2 = ptrtoint ptr %bd_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_tbl, align 4
  %bd_valid = getelementptr inbounds %struct.io_bdt, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bd_valid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bd_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %6 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 13
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdb.i, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sc_data_direction, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %11, i32 noundef %7, i32 noundef %13, i32 noundef 0) #10
  %14 = ptrtoint ptr %bd_tbl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bd_tbl, align 4
  %bd_valid7 = getelementptr inbounds %struct.io_bdt, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %bd_valid7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %bd_valid7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_scsi_done(ptr noundef %qedf, ptr noundef %io_req, i32 noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %io_req, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_done, i32 noundef 1328, i32 noundef 1024, ptr noundef nonnull @.str.53) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 8
  %call = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_done, i32 noundef 1335, i32 noundef 1024, ptr noundef nonnull @.str.54, ptr noundef nonnull %io_req) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #10
  %sc_cmd6 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 2
  %0 = ptrtoint ptr %sc_cmd6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_cmd6, align 4
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_done, i32 noundef 1348, ptr noundef nonnull @.str.41) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %2 = ptrtoint ptr %1 to i32
  %cmp = icmp ugt ptr %1, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %if.end10.if.then15_crit_edge

if.end10.if.then15_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

land.lhs.true:                                    ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %3 = load ptr, ptr @high_memory, align 4
  %cmp11 = icmp ult ptr %1, %3
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true.if.then15_crit_edge

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

land.lhs.true12:                                  ; preds = %land.lhs.true
  %sub = add i32 %2, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %4, %shr
  %call13 = tail call i32 @pfn_valid(i32 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true12.if.then15_crit_edge, label %if.end17

land.lhs.true12.if.then15_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.then15:                                        ; preds = %land.lhs.true12.if.then15_crit_edge, %land.lhs.true.if.then15_crit_edge, %if.end10.if.then15_crit_edge
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_done, i32 noundef 1353, ptr noundef nonnull @.str.55, ptr noundef nonnull %1) #10
  br label %bad_scsi_ptr

if.end17:                                         ; preds = %land.lhs.true12
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %SCp, align 4
  %tobool18.not = icmp eq ptr %6, null
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_done, i32 noundef 1359, ptr noundef nonnull @.str.42) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %tobool22.not = icmp eq ptr %8, null
  br i1 %tobool22.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_done, i32 noundef 1365, ptr noundef nonnull @.str.43, ptr noundef nonnull %1) #10
  br label %bad_scsi_ptr

if.end25:                                         ; preds = %if.end21
  %9 = ptrtoint ptr %8 to i32
  %cmp27 = icmp ugt ptr %8, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp27, label %land.lhs.true28, label %if.end25.if.then38_crit_edge

if.end25.if.then38_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

land.lhs.true28:                                  ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %10 = load ptr, ptr @high_memory, align 4
  %cmp30 = icmp ult ptr %8, %10
  br i1 %cmp30, label %land.lhs.true31, label %land.lhs.true28.if.then38_crit_edge

land.lhs.true28.if.then38_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %sub33 = add i32 %9, 1073741824
  %shr34 = lshr i32 %sub33, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add35 = add i32 %11, %shr34
  %call36 = tail call i32 @pfn_valid(i32 noundef %add35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true31.if.then38_crit_edge, label %if.end40

land.lhs.true31.if.then38_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

if.then38:                                        ; preds = %land.lhs.true31.if.then38_crit_edge, %land.lhs.true28.if.then38_crit_edge, %if.end25.if.then38_crit_edge
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_done, i32 noundef 1371, ptr noundef nonnull @.str.56, ptr noundef nonnull %1) #10
  br label %bad_scsi_ptr

if.end40:                                         ; preds = %land.lhs.true31
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sense_buffer, align 4
  %tobool41.not = icmp eq ptr %13, null
  br i1 %tobool41.not, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_done, i32 noundef 1378, ptr noundef nonnull @.str.57, ptr noundef nonnull %1) #10
  br label %bad_scsi_ptr

if.end44:                                         ; preds = %if.end40
  %14 = ptrtoint ptr %13 to i32
  %cmp46 = icmp ugt ptr %13, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp46, label %land.lhs.true47, label %if.end44.if.then57_crit_edge

if.end44.if.then57_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

land.lhs.true47:                                  ; preds = %if.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %15 = load ptr, ptr @high_memory, align 4
  %cmp49 = icmp ult ptr %13, %15
  br i1 %cmp49, label %land.lhs.true50, label %land.lhs.true47.if.then57_crit_edge

land.lhs.true47.if.then57_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %sub52 = add i32 %14, 1073741824
  %shr53 = lshr i32 %sub52, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add54 = add i32 %16, %shr53
  %call55 = tail call i32 @pfn_valid(i32 noundef %add54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true50.if.then57_crit_edge, label %if.end59

land.lhs.true50.if.then57_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.then57:                                        ; preds = %land.lhs.true50.if.then57_crit_edge, %land.lhs.true47.if.then57_crit_edge, %if.end44.if.then57_crit_edge
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_done, i32 noundef 1385, ptr noundef nonnull @.str.58, ptr noundef nonnull %1) #10
  br label %bad_scsi_ptr

if.end59:                                         ; preds = %land.lhs.true50
  tail call fastcc void @qedf_unmap_sg_list(ptr noundef %qedf, ptr noundef nonnull %io_req)
  %shl = shl i32 %result, 16
  %result60 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %17 = ptrtoint ptr %result60 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl, ptr %result60, align 4
  %refcount61 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount61, i32 noundef 4) #10
  %18 = ptrtoint ptr %refcount61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %refcount61, align 4
  %lport = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 2
  %20 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lport, align 16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %host_no, align 4
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %27, i32 0, i32 18
  %30 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lun, align 8
  %32 = ptrtoint ptr %result60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %result60, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %34 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmnd, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %conv = zext i8 %37 to i32
  %arrayidx68 = getelementptr i8, ptr %35, i32 2
  %38 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %39 to i32
  %arrayidx71 = getelementptr i8, ptr %35, i32 3
  %40 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %41 to i32
  %arrayidx74 = getelementptr i8, ptr %35, i32 4
  %42 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %43 to i32
  %arrayidx77 = getelementptr i8, ptr %35, i32 5
  %44 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %45 to i32
  %allowed = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %allowed to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %allowed, align 4
  %retries = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 8
  %48 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %retries, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_scsi_done, i32 noundef 1400, i32 noundef 1024, ptr noundef nonnull @.str.59, i32 noundef %25, i32 noundef %29, i64 noundef %31, ptr noundef nonnull %1, i32 noundef %33, i32 noundef %conv, i32 noundef %conv69, i32 noundef %conv72, i32 noundef %conv75, i32 noundef %conv78, i32 noundef %47, i32 noundef %49, i32 noundef %19) #10
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %50 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length.i, align 4
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %1, i32 0, i32 5
  %52 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %resid_len.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedf_io_tracing to i32))
  %53 = load i32, ptr @qedf_io_tracing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool80.not = icmp eq i32 %53, 0
  br i1 %tobool80.not, label %if.end59.if.end82_crit_edge, label %if.then81

if.end59.if.end82_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then81:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %fcport = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 6
  %54 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fcport, align 4
  tail call fastcc void @qedf_trace_io(ptr noundef %55, ptr noundef nonnull %io_req, i8 noundef signext 1)
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end59.if.end82_crit_edge
  %56 = ptrtoint ptr %sc_cmd6 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %sc_cmd6, align 4
  %57 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %SCp, align 4
  tail call void @scsi_done(ptr noundef nonnull %1) #10
  tail call fastcc void @kref_put(ptr noundef %refcount61, ptr noundef nonnull @qedf_release_cmd)
  br label %cleanup

bad_scsi_ptr:                                     ; preds = %if.then57, %if.then42, %if.then38, %if.then23, %if.then15
  %58 = ptrtoint ptr %sc_cmd6 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %sc_cmd6, align 4
  %refcount89 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount89, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  tail call void @llvm.prefetch.p0(ptr %refcount89, i32 1, i32 3, i32 1) #10
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount89, ptr %refcount89, i32 1, ptr elementtype(i32) %refcount89) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %bad_scsi_ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !360

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount89, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %bad_scsi_ptr
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void @qedf_release_cmd(ptr noundef %refcount89) #10, !callees !362
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end82, %if.then19, %if.then8, %if.then2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_process_warning_compl(ptr noundef %qedf, ptr noundef readonly %cqe, ptr noundef %io_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fcport1 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 6
  %0 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport1, align 4
  %tobool.not = icmp eq ptr %cqe, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %xid, align 4
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_warning_compl, i32 noundef 1441, i32 noundef 1024, ptr noundef nonnull @.str.60, ptr noundef %io_req, i32 noundef %conv) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %qedf3 = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %qedf3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qedf3, align 4
  %xid5 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %6 = ptrtoint ptr %xid5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %xid5, align 4
  %conv6 = zext i16 %7 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %5, ptr noundef nonnull @__func__.qedf_process_warning_compl, i32 noundef 1446, ptr noundef nonnull @.str.61, i32 noundef %conv6) #10
  %8 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcport1, align 4
  %qedf8 = getelementptr inbounds %struct.qedf_rport, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %qedf8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qedf8, align 4
  %cqe_info = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3
  %err_warn_bitmap_hi = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3, i32 0, i32 3
  %12 = ptrtoint ptr %err_warn_bitmap_hi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err_warn_bitmap_hi, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %cqe_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cqe_info, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %11, ptr noundef nonnull @__func__.qedf_process_warning_compl, i32 noundef 1450, ptr noundef nonnull @.str.62, i32 noundef %14, i32 noundef %17) #10
  %18 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fcport1, align 4
  %qedf12 = getelementptr inbounds %struct.qedf_rport, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %qedf12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qedf12, align 4
  %tx_buf_off = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3, i32 0, i32 4
  %22 = ptrtoint ptr %tx_buf_off to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_buf_off, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %rx_buf_off = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3, i32 0, i32 5
  %25 = ptrtoint ptr %rx_buf_off to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_buf_off, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %rx_id = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3, i32 0, i32 6
  %28 = ptrtoint ptr %rx_id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rx_id, align 4
  %conv17 = zext i16 %29 to i32
  %30 = tail call i32 @llvm.bswap.i32(i32 %conv17)
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %21, ptr noundef nonnull @__func__.qedf_process_warning_compl, i32 noundef 1455, ptr noundef nonnull @.str.63, i32 noundef %24, i32 noundef %27, i32 noundef %30) #10
  %31 = ptrtoint ptr %err_warn_bitmap_hi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %err_warn_bitmap_hi, align 4
  %conv20 = zext i32 %32 to i64
  %shl = shl nuw i64 %conv20, 32
  %33 = ptrtoint ptr %cqe_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cqe_info, align 4
  %conv23 = zext i32 %34 to i64
  %or = or i64 %shl, %conv23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0101 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %sh_prom = zext i32 %i.0101 to i64
  %shl25 = shl nuw i64 1, %sh_prom
  %and = and i64 %shl25, %or
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool26.not = icmp eq i64 %and, 0
  br i1 %tobool26.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.send_abort_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.send_abort_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_abort

for.end:                                          ; preds = %for.body
  %phi.cast = and i32 %i.0101, 255
  %dev_type = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 23
  %35 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp30 = icmp eq i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %phi.cast)
  %cmp34 = icmp eq i32 %phi.cast, 48
  %or.cond = select i1 %cmp30, i1 %cmp34, i1 false
  br i1 %or.cond, label %if.then36, label %for.end.send_abort_crit_edge

for.end.send_abort_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_abort

if.then36:                                        ; preds = %for.end
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_warning_compl, i32 noundef 1472, ptr noundef nonnull @.str.64) #10
  %flags = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 8
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags, align 4
  %39 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool38.not = icmp eq i32 %39, 0
  br i1 %tobool38.not, label %if.then39, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then39:                                        ; preds = %if.then36
  %40 = ptrtoint ptr %rx_buf_off to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_buf_off, align 4
  %rx_buf_off42 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 41
  %42 = ptrtoint ptr %rx_buf_off42 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %rx_buf_off42, align 4
  %43 = ptrtoint ptr %tx_buf_off to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_buf_off, align 4
  %tx_buf_off45 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 42
  %45 = ptrtoint ptr %tx_buf_off45 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %tx_buf_off45, align 4
  %46 = ptrtoint ptr %rx_id to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rx_id, align 4
  %conv48 = zext i16 %47 to i32
  %rx_id49 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 43
  %48 = ptrtoint ptr %rx_id49 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv48, ptr %rx_id49, align 4
  %call50 = tail call i32 @qedf_send_rec(ptr noundef %io_req) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then39.cleanup_crit_edge, label %if.then39.send_abort_crit_edge

if.then39.send_abort_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_abort

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

send_abort:                                       ; preds = %if.then39.send_abort_crit_edge, %for.end.send_abort_crit_edge, %for.inc.send_abort_crit_edge
  %abts_done = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 16
  %49 = ptrtoint ptr %abts_done to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %abts_done, align 4
  %wait.i = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.151, ptr noundef nonnull @init_completion.__key) #10
  %call57 = tail call i32 @qedf_initiate_abts(ptr noundef %io_req, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %send_abort.cleanup_crit_edge, label %if.then59

send_abort.cleanup_crit_edge:                     ; preds = %send_abort
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then59:                                        ; preds = %send_abort
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_warning_compl, i32 noundef 1496, ptr noundef nonnull @.str.65) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %send_abort.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedf_send_rec(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedf_initiate_abts(ptr noundef %io_req, i1 noundef zeroext %return_scsi_cmd_on_abts) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %return_scsi_cmd_on_abts to i8
  %fcport1 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 6
  %0 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport1, align 4
  %flags2 = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags2, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_initiate_abts, i32 noundef 1868, ptr noundef nonnull @.str.94) #10
  br label %out

if.end:                                           ; preds = %entry
  %qedf3 = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %qedf3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qedf3, align 4
  %rdata4 = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %rdata4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdata4, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end.if.then8_crit_edge, label %lor.lhs.false

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %kref = getelementptr inbounds %struct.fc_rport_priv, ptr %8, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #10
  %9 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %11 = phi i32 [ %10, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %11, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %15 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %14, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #10, !srcloc !373
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %14
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !360

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %17, 1
  %18 = or i32 %add5.i.i.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !360

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #10
  %19 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %20 = phi i32 [ %17, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.i.i.i.i.not = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.if.then8_crit_edge, label %if.end9

kref_get_unless_zero.exit.if.then8_crit_edge:     ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %kref_get_unless_zero.exit.if.then8_crit_edge, %if.end.if.then8_crit_edge
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %6, ptr noundef nonnull @__func__.qedf_initiate_abts, i32 noundef 1877, ptr noundef nonnull @.str.95) #10
  br label %out

if.end9:                                          ; preds = %kref_get_unless_zero.exit
  %lport10 = getelementptr inbounds %struct.qedf_ctx, ptr %6, i32 0, i32 2
  %21 = ptrtoint ptr %lport10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lport10, align 16
  %state = getelementptr inbounds %struct.fc_lport, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %24)
  %cmp.not = icmp eq i32 %24, 14
  br i1 %cmp.not, label %lor.lhs.false11, label %if.end9.if.then13_crit_edge

if.end9.if.then13_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

lor.lhs.false11:                                  ; preds = %if.end9
  %link_up = getelementptr inbounds %struct.fc_lport, ptr %22, i32 0, i32 10
  %25 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not = icmp eq i8 %26, 0
  br i1 %tobool12.not, label %lor.lhs.false11.if.then13_crit_edge, label %if.end15

lor.lhs.false11.if.then13_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false11.if.then13_crit_edge, %if.end9.if.then13_crit_edge
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %6, ptr noundef nonnull @__func__.qedf_initiate_abts, i32 noundef 1885, ptr noundef nonnull @.str.96) #10
  br label %drop_rdata_kref

if.end15:                                         ; preds = %lor.lhs.false11
  %link_down_tmo_valid = getelementptr inbounds %struct.qedf_ctx, ptr %6, i32 0, i32 27
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %link_down_tmo_valid, i32 noundef 4) #10
  %27 = ptrtoint ptr %link_down_tmo_valid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %link_down_tmo_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp17 = icmp sgt i32 %28, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %6, ptr noundef nonnull @__func__.qedf_initiate_abts, i32 noundef 1891, ptr noundef nonnull @.str.97) #10
  br label %drop_rdata_kref

if.end20:                                         ; preds = %if.end15
  %free_sqes = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 10
  %call.i.i110 = call zeroext i1 @__kasan_check_read(ptr noundef %free_sqes, i32 noundef 4) #10
  %29 = ptrtoint ptr %free_sqes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %free_sqes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool22.not = icmp eq i32 %30, 0
  br i1 %tobool22.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %6, ptr noundef nonnull @__func__.qedf_initiate_abts, i32 noundef 1898, ptr noundef nonnull @.str.98) #10
  br label %drop_rdata_kref

if.end25:                                         ; preds = %if.end20
  %31 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags2, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool28.not = icmp eq i32 %33, 0
  br i1 %tobool28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %6, ptr noundef nonnull @__func__.qedf_initiate_abts, i32 noundef 1904, ptr noundef nonnull @.str.99) #10
  br label %drop_rdata_kref

if.end31:                                         ; preds = %if.end25
  %flags32 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 8
  %34 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags32, align 4
  %and1.i113 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i113)
  %tobool34.not = icmp eq i32 %and1.i113, 0
  br i1 %tobool34.not, label %if.end31.if.then43_crit_edge, label %lor.lhs.false35

if.end31.if.then43_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

lor.lhs.false35:                                  ; preds = %if.end31
  %36 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags32, align 4
  %38 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool38.not = icmp eq i32 %38, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %lor.lhs.false35.if.then43_crit_edge

lor.lhs.false35.if.then43_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

lor.lhs.false39:                                  ; preds = %lor.lhs.false35
  %39 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags32, align 4
  %41 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool42.not = icmp eq i32 %41, 0
  br i1 %tobool42.not, label %if.end46, label %lor.lhs.false39.if.then43_crit_edge

lor.lhs.false39.if.then43_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false39.if.then43_crit_edge, %lor.lhs.false35.if.then43_crit_edge, %if.end31.if.then43_crit_edge
  %xid45 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %42 = ptrtoint ptr %xid45 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %xid45, align 4
  %conv = zext i16 %43 to i32
  %sc_cmd = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 2
  %44 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sc_cmd, align 4
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %6, ptr noundef nonnull @__func__.qedf_initiate_abts, i32 noundef 1914, ptr noundef nonnull @.str.100, i32 noundef %conv, ptr noundef %45) #10
  br label %drop_rdata_kref

if.end46:                                         ; preds = %lor.lhs.false39
  %refcount47 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 11
  call fastcc void @kref_get(ptr noundef %refcount47)
  %xid48 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %46 = ptrtoint ptr %xid48 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %xid48, align 4
  %control_requests = getelementptr inbounds %struct.qedf_ctx, ptr %6, i32 0, i32 70
  %48 = ptrtoint ptr %control_requests to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %control_requests, align 16
  %inc = add i64 %49, 1
  store i64 %inc, ptr %control_requests, align 16
  %packet_aborts = getelementptr inbounds %struct.qedf_ctx, ptr %6, i32 0, i32 71
  %50 = ptrtoint ptr %packet_aborts to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %packet_aborts, align 8
  %inc49 = add i64 %51, 1
  store i64 %inc49, ptr %packet_aborts, align 8
  %cmd_type = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 3
  %52 = ptrtoint ptr %cmd_type to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %cmd_type, align 4
  %return_scsi_cmd_on_abts51 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 45
  %53 = ptrtoint ptr %return_scsi_cmd_on_abts51 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %frombool, ptr %return_scsi_cmd_on_abts51, align 4
  call void @_set_bit(i32 noundef 1, ptr noundef %flags32) #10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount47, i32 noundef 4) #10
  %54 = ptrtoint ptr %refcount47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %refcount47, align 4
  %conv57 = zext i16 %47 to i32
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %6, ptr noundef nonnull @__func__.qedf_initiate_abts, i32 noundef 1933, i32 noundef 256, ptr noundef nonnull @.str.101, i32 noundef %conv57, i32 noundef %55) #10
  %timer_work_queue.i = getelementptr inbounds %struct.qedf_ctx, ptr %6, i32 0, i32 49
  %56 = ptrtoint ptr %timer_work_queue.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %timer_work_queue.i, align 8
  %timeout_work.i = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 14
  %call.i.i118 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %57, ptr noundef %timeout_work.i, i32 noundef 1000) #10
  %call62 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %sq_mem_size.i = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 18
  %58 = ptrtoint ptr %sq_mem_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sq_mem_size.i, align 4
  %div13.i = lshr i32 %59, 3
  %sq_prod_idx.i = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 15
  %60 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %sq_prod_idx.i, align 4
  %inc.i = add i16 %61, 1
  store i16 %inc.i, ptr %sq_prod_idx.i, align 4
  %fw_sq_prod_idx.i = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 16
  %62 = ptrtoint ptr %fw_sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %fw_sq_prod_idx.i, align 2
  %inc2.i = add i16 %63, 1
  store i16 %inc2.i, ptr %fw_sq_prod_idx.i, align 2
  %64 = trunc i32 %div13.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %64)
  %cmp.i = icmp eq i16 %inc.i, %64
  br i1 %cmp.i, label %if.then.i, label %if.end46.qedf_get_sqe_idx.exit_crit_edge

if.end46.qedf_get_sqe_idx.exit_crit_edge:         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %qedf_get_sqe_idx.exit

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %sq_prod_idx.i, align 4
  br label %qedf_get_sqe_idx.exit

qedf_get_sqe_idx.exit:                            ; preds = %if.then.i, %if.end46.qedf_get_sqe_idx.exit_crit_edge
  %sq = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 13
  %66 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sq, align 4
  %idxprom = zext i16 %61 to i32
  %arrayidx = getelementptr %struct.fcoe_wqe, ptr %67, i32 %idxprom
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 0, ptr %arrayidx, align 4
  %task_params = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 19
  %69 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task_params, align 4
  %sqe66 = getelementptr inbounds %struct.fcoe_task_params, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %sqe66 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx, ptr %sqe66, align 4
  %72 = load ptr, ptr %task_params, align 4
  %call68 = call i32 @init_initiator_abort_fcoe_task(ptr noundef %72) #10
  call void @qedf_ring_doorbell(ptr noundef %1)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call62) #10
  br label %drop_rdata_kref

drop_rdata_kref:                                  ; preds = %qedf_get_sqe_idx.exit, %if.then43, %if.then29, %if.then23, %if.then18, %if.then13
  %rc.0 = phi i32 [ 1, %if.then13 ], [ 1, %if.then18 ], [ 1, %if.then29 ], [ 1, %if.then43 ], [ 0, %qedf_get_sqe_idx.exit ], [ 1, %if.then23 ]
  %call.i.i.i.i.i.i119 = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %73 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i.i120 = extractvalue { i32, i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i120)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i120, 1
  br i1 %cmp.i.i.i.i, label %if.then.i123, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %drop_rdata_kref
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i120)
  %.not.i.i.i.i121 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i120, 0
  br i1 %.not.i.i.i.i121, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i122, !prof !360

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i.i122:                             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %out

if.then.i123:                                     ; preds = %drop_rdata_kref
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  call void @fc_rport_destroy(ptr noundef %kref) #10, !callees !362
  br label %out

out:                                              ; preds = %if.then.i123, %if.then10.i.i.i.i122, %if.end5.i.i.i.i.out_crit_edge, %if.then8, %if.then
  %rc.1 = phi i32 [ 1, %if.then8 ], [ 1, %if.then ], [ %rc.0, %if.end5.i.i.i.i.out_crit_edge ], [ %rc.0, %if.then10.i.i.i.i122 ], [ %rc.0, %if.then.i123 ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_process_error_detect(ptr noundef %qedf, ptr noundef readonly %cqe, ptr noundef %io_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %io_req, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef null, ptr noundef nonnull @__func__.qedf_process_error_detect, i32 noundef 1506, i32 noundef 1024, ptr noundef nonnull @.str.66) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fcport = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 6
  %0 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef null, ptr noundef nonnull @__func__.qedf_process_error_detect, i32 noundef 1511, i32 noundef 1024, ptr noundef nonnull @.str.67) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %cqe, null
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_error_detect, i32 noundef 1517, i32 noundef 1024, ptr noundef nonnull @.str.68, ptr noundef nonnull %io_req) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %qedf7 = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %qedf7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qedf7, align 4
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %4 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %xid, align 4
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %3, ptr noundef nonnull @__func__.qedf_process_error_detect, i32 noundef 1522, ptr noundef nonnull @.str.69, i32 noundef %conv) #10
  %6 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcport, align 4
  %qedf10 = getelementptr inbounds %struct.qedf_rport, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %qedf10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qedf10, align 4
  %cqe_info = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3
  %err_warn_bitmap_hi = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3, i32 0, i32 3
  %10 = ptrtoint ptr %err_warn_bitmap_hi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err_warn_bitmap_hi, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %cqe_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cqe_info, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %9, ptr noundef nonnull @__func__.qedf_process_error_detect, i32 noundef 1526, ptr noundef nonnull @.str.62, i32 noundef %12, i32 noundef %15) #10
  %16 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fcport, align 4
  %qedf14 = getelementptr inbounds %struct.qedf_rport, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %qedf14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qedf14, align 4
  %tx_buf_off = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3, i32 0, i32 4
  %20 = ptrtoint ptr %tx_buf_off to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_buf_off, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %rx_buf_off = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3, i32 0, i32 5
  %23 = ptrtoint ptr %rx_buf_off to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_buf_off, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %rx_id = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3, i32 0, i32 6
  %26 = ptrtoint ptr %rx_id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rx_id, align 4
  %conv19 = zext i16 %27 to i32
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv19)
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %19, ptr noundef nonnull @__func__.qedf_process_error_detect, i32 noundef 1531, ptr noundef nonnull @.str.63, i32 noundef %22, i32 noundef %25, i32 noundef %28) #10
  %29 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcport, align 4
  %flags = getelementptr inbounds %struct.qedf_rport, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags, align 4
  %33 = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool21.not = icmp eq i32 %33, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %if.end5.if.then30_crit_edge

if.end5.if.then30_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end5
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags, align 4
  %36 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool25.not = icmp eq i32 %36, 0
  br i1 %tobool25.not, label %lor.lhs.false.if.end34_crit_edge, label %land.lhs.true

lor.lhs.false.if.end34_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true:                                    ; preds = %lor.lhs.false
  %sc_cmd = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 2
  %37 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sc_cmd, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %40, i32 0, i32 18
  %41 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %lun, align 8
  %lun_reset_lun = getelementptr inbounds %struct.qedf_rport, ptr %30, i32 0, i32 2
  %43 = ptrtoint ptr %lun_reset_lun to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lun_reset_lun, align 4
  %conv27 = sext i32 %44 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %conv27)
  %cmp28 = icmp eq i64 %42, %conv27
  br i1 %cmp28, label %land.lhs.true.if.then30_crit_edge, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true.if.then30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.then30:                                        ; preds = %land.lhs.true.if.then30_crit_edge, %if.end5.if.then30_crit_edge
  %45 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %xid, align 4
  %conv33 = zext i16 %46 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_error_detect, i32 noundef 1539, ptr noundef nonnull @.str.70, i32 noundef %conv33) #10
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %lor.lhs.false.if.end34_crit_edge
  %stop_io_on_error = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 63
  %47 = ptrtoint ptr %stop_io_on_error to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %stop_io_on_error, align 2, !range !372
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool35.not = icmp eq i8 %48, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.i) #10
  br label %cleanup

if.end37:                                         ; preds = %if.end34
  %abts_done = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 16
  %49 = ptrtoint ptr %abts_done to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %abts_done, align 4
  %wait.i = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.151, ptr noundef nonnull @init_completion.__key) #10
  %call38 = tail call i32 @qedf_initiate_abts(ptr noundef nonnull %io_req, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.then40

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_error_detect, i32 noundef 1551, ptr noundef nonnull @.str.65) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end37.cleanup_crit_edge, %if.then36, %if.then30, %if.then4, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_flush_active_ios(ptr noundef %fcport, i32 noundef %lun) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i442 = alloca i32, align 4
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fcport, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1597, ptr noundef nonnull @.str.71) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags1 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 1
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags1, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1603, ptr noundef nonnull @.str.72) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %qedf5 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 6
  %3 = ptrtoint ptr %qedf5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qedf5, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1610, ptr noundef nonnull @.str.73) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %5 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags1, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lun)
  %cmp = icmp eq i32 %lun, -1
  %or.cond = and i1 %cmp, %tobool11.not
  br i1 %or.cond, label %while.cond.preheader, label %if.end8.if.end22_crit_edge

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

while.cond.preheader:                             ; preds = %if.end8
  %ios_to_queue = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 11
  %call.i.i473 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ios_to_queue, i32 noundef 4) #10
  %8 = ptrtoint ptr %ios_to_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %ios_to_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not474 = icmp eq i32 %9, 0
  br i1 %tobool14.not474, label %while.cond.preheader.if.end22_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end22_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %wait_cnt.0475 = phi i32 [ %dec, %if.end21.while.body_crit_edge ], [ 100, %while.cond.preheader.while.body_crit_edge ]
  %call.i.i423 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ios_to_queue, i32 noundef 4) #10
  %10 = ptrtoint ptr %ios_to_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %ios_to_queue, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1620, i32 noundef 1024, ptr noundef nonnull @.str.74, i32 noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_cnt.0475)
  %cmp17 = icmp eq i32 %wait_cnt.0475, 0
  br i1 %cmp17, label %if.then18, label %while.body.if.end21_crit_edge

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then18:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i424 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ios_to_queue, i32 noundef 4) #10
  %12 = ptrtoint ptr %ios_to_queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %ios_to_queue, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1624, ptr noundef nonnull @.str.75, i32 noundef %13) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %while.body.if.end21_crit_edge
  tail call void @msleep(i32 noundef 20) #10
  %dec = add i32 %wait_cnt.0475, -1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ios_to_queue, i32 noundef 4) #10
  %14 = ptrtoint ptr %ios_to_queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %ios_to_queue, align 4
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %if.end21.if.end22_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end21.if.end22_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %if.end21.if.end22_crit_edge, %while.cond.preheader.if.end22_crit_edge, %if.end8.if.end22_crit_edge
  %cmd_mgr23 = getelementptr inbounds %struct.qedf_ctx, ptr %4, i32 0, i32 47
  %16 = ptrtoint ptr %cmd_mgr23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd_mgr23, align 8
  %num_active_ios = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 12
  %call.i.i425 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_active_ios, i32 noundef 4) #10
  %18 = ptrtoint ptr %num_active_ios to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %num_active_ios, align 4
  %rdata = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 5
  %20 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rdata, align 4
  %port_id = getelementptr inbounds %struct.fc_rport_priv, ptr %21, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port_id, align 8
  %rport = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 4
  %24 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rport, align 4
  %scsi_target_id = getelementptr inbounds %struct.fc_rport, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %scsi_target_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scsi_target_id, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1636, i32 noundef 1024, ptr noundef nonnull @.str.76, i32 noundef %19, ptr noundef nonnull %fcport, i32 noundef %23, i32 noundef %27) #10
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1637, i32 noundef 1024, ptr noundef nonnull @.str.77) #10
  %flush_mutex = getelementptr inbounds %struct.qedf_ctx, ptr %4, i32 0, i32 77
  tail call void @mutex_lock_nested(ptr noundef %flush_mutex, i32 noundef 0) #10
  br i1 %cmp, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags1) #10
  br label %if.end31

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags1) #10
  %lun_reset_lun = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 2
  %28 = ptrtoint ptr %lun_reset_lun to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %lun, ptr %lun_reset_lun, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  %lock = getelementptr inbounds %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lun)
  %cmp170 = icmp sgt i32 %lun, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end31
  %flush_cnt.0483 = phi i32 [ 0, %if.end31 ], [ %flush_cnt.2, %for.inc.for.body_crit_edge ]
  %i.0476 = phi i32 [ 0, %if.end31 ], [ %inc194, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476
  %tobool33.not = icmp eq ptr %arrayidx, null
  br i1 %tobool33.not, label %for.body.for.inc_crit_edge, label %if.end35

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end35:                                         ; preds = %for.body
  %fcport36 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 6
  %29 = ptrtoint ptr %fcport36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcport36, align 4
  %tobool37.not = icmp eq ptr %30, null
  br i1 %tobool37.not, label %if.end35.for.inc_crit_edge, label %do.body40

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body40:                                        ; preds = %if.end35
  %call43 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %alloc = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 46
  %31 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool46.not = icmp eq i32 %32, 0
  br i1 %tobool46.not, label %if.else61, label %if.then47

if.then47:                                        ; preds = %do.body40
  %flags48 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 8
  %33 = ptrtoint ptr %flags48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags48, align 4
  %and1.i426 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i426)
  %tobool50.not = icmp eq i32 %and1.i426, 0
  br i1 %tobool50.not, label %if.then51, label %if.then47.if.end59_crit_edge

if.then47.if.end59_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then51:                                        ; preds = %if.then47
  %cmd_type = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 3
  %35 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cmd_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp53 = icmp eq i8 %36, 1
  br i1 %cmp53, label %if.then55, label %if.then51.if.end59_crit_edge

if.then51.if.end59_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then55:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %xid = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 1
  %37 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %xid, align 4
  %conv57 = zext i16 %38 to i32
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1662, ptr noundef nonnull @.str.78, i32 noundef %conv57) #10
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.then51.if.end59_crit_edge, %if.then47.if.end59_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call43) #10
  %39 = ptrtoint ptr %fcport36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fcport36, align 4
  %cmp65.not = icmp eq ptr %40, %fcport
  br i1 %cmp65.not, label %if.end68, label %if.end59.for.inc_crit_edge

if.end59.for.inc_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else61:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call43) #10
  br label %for.inc

if.end68:                                         ; preds = %if.end59
  %41 = ptrtoint ptr %flags48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags48, align 4
  %and1.i427 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i427)
  %tobool71.not = icmp eq i32 %and1.i427, 0
  br i1 %tobool71.not, label %if.then72, label %if.end93

if.then72:                                        ; preds = %if.end68
  %refcount73 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount73, i32 noundef 4) #10
  %43 = ptrtoint ptr %refcount73 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %refcount73, align 4
  %xid76 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 1
  %45 = ptrtoint ptr %xid76 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %xid76, align 4
  %conv77 = zext i16 %46 to i32
  %cmd_type78 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 3
  %47 = ptrtoint ptr %cmd_type78 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cmd_type78, align 4
  %conv79 = zext i8 %48 to i32
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1682, i32 noundef 1024, ptr noundef nonnull @.str.79, i32 noundef %conv77, i32 noundef %conv79, i32 noundef %44) #10
  %state = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 7
  %call.i.i428 = call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #10
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %50)
  %cmp81 = icmp eq i32 %50, 7
  br i1 %cmp81, label %if.then83, label %if.then72.for.inc_crit_edge

if.then72.for.inc_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then83:                                        ; preds = %if.then72
  %rrq_work = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 40
  %call84 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %rrq_work) #10
  br i1 %call84, label %if.then85, label %if.then83.for.inc_crit_edge

if.then83.for.inc_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then85:                                        ; preds = %if.then83
  %51 = ptrtoint ptr %xid76 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %xid76, align 4
  %conv88 = zext i16 %52 to i32
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1692, i32 noundef 1024, ptr noundef nonnull @.str.80, i32 noundef %conv88) #10
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount73, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  call void @llvm.prefetch.p0(ptr %refcount73, i32 1, i32 3, i32 1) #10
  %53 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount73, ptr %refcount73, i32 1, ptr elementtype(i32) %refcount73) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i, !prof !360

if.end5.i.i.i.i.for.inc_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount73, i32 noundef 3) #10
  br label %for.inc

if.then.i:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  call void @qedf_release_cmd(ptr noundef %refcount73) #10, !callees !362
  br label %for.inc

if.end93:                                         ; preds = %if.end68
  %cmd_type94 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 3
  %54 = ptrtoint ptr %cmd_type94 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cmd_type94, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %55)
  %cmp96 = icmp eq i8 %55, 4
  %56 = and i1 %cmp, %cmp96
  br i1 %56, label %if.then101, label %if.end111

if.then101:                                       ; preds = %if.end93
  %refcount102 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount102, i32 noundef 4) #10
  %57 = ptrtoint ptr %refcount102 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %refcount102, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then101
  %59 = phi i32 [ %58, %if.then101 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %60 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %59, 1
  %call.i.i.i.i.i.i435 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount102, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %61 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount102, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %63 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount102, ptr %refcount102, i32 %62, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount102) #10, !srcloc !373
  %asmresult.i.i.i.i.i.i.i436 = extractvalue { i32, i32 } %63, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i436, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %63, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %62
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !360

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %64 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %65, 1
  %66 = or i32 %add5.i.i.i.i, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %.not.i.i.i.i437 = icmp sgt i32 %66, -1
  br i1 %.not.i.i.i.i437, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i438, !prof !360

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i438:                             ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount102, i32 noundef 0) #10
  %67 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i438, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %68 = phi i32 [ %65, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i438 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool12.i.i.i.i.not = icmp eq i32 %68, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not, label %if.then105, label %if.end109

if.then105:                                       ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  %xid107 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 1
  %69 = ptrtoint ptr %xid107 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %xid107, align 4
  %conv108 = zext i16 %70 to i32
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1708, ptr noundef nonnull @.str.81, ptr noundef nonnull %arrayidx, i32 noundef %conv108) #10
  br label %for.inc

if.end109:                                        ; preds = %kref_get_unless_zero.exit
  %call110 = call i32 @qedf_initiate_cleanup(ptr noundef nonnull %arrayidx, i1 noundef zeroext false)
  %inc = add i32 %flush_cnt.0483, 1
  %xid.i = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 1
  %71 = ptrtoint ptr %xid.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %xid.i, align 4
  %conv.i439 = zext i16 %72 to i32
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount102, i32 noundef 4) #10
  %73 = ptrtoint ptr %refcount102 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %refcount102, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_els_req, i32 noundef 1559, i32 noundef 1024, ptr noundef nonnull @.str.152, i32 noundef %conv.i439, i32 noundef %74) #10
  %event.i = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 9
  %75 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 6, ptr %event.i, align 4
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags48) #10
  %timeout_work.i = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 14
  %call1.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work.i) #10
  %cb_func.i = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 34
  %76 = ptrtoint ptr %cb_func.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cb_func.i, align 4
  %tobool.not.i = icmp eq ptr %77, null
  br i1 %tobool.not.i, label %if.end109.if.end.i_crit_edge, label %land.lhs.true.i

if.end109.if.end.i_crit_edge:                     ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end109
  %cb_arg.i = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 35
  %78 = ptrtoint ptr %cb_arg.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cb_arg.i, align 4
  %tobool2.not.i = icmp eq ptr %79, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i440

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i440:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %77(ptr noundef nonnull %79) #10
  %80 = ptrtoint ptr %cb_arg.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %cb_arg.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i440, %land.lhs.true.i.if.end.i_crit_edge, %if.end109.if.end.i_crit_edge
  %call.i.i.i.i.i.i.i441 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount102, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  call void @llvm.prefetch.p0(ptr %refcount102, i32 1, i32 3, i32 1) #10
  %81 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount102, ptr %refcount102, i32 1, ptr elementtype(i32) %refcount102) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.free_cmd_crit_edge, label %if.then10.i.i.i.i.i, !prof !360

if.end5.i.i.i.i.i.free_cmd_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_cmd

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount102, i32 noundef 3) #10
  br label %free_cmd

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  call void @qedf_release_cmd(ptr noundef %refcount102) #10, !callees !362
  br label %free_cmd

if.end111:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %55)
  %cmp114 = icmp eq i8 %55, 3
  br i1 %cmp114, label %if.then116, label %if.end156

if.then116:                                       ; preds = %if.end111
  %refcount117 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i442) #10
  %call.i.i.i.i.i.i.i443 = call zeroext i1 @__kasan_check_read(ptr noundef %refcount117, i32 noundef 4) #10
  %82 = ptrtoint ptr %refcount117 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %refcount117, align 4
  br label %do.body.i.i.i.i445

do.body.i.i.i.i445:                               ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i455.do.body.i.i.i.i445_crit_edge, %if.then116
  %84 = phi i32 [ %83, %if.then116 ], [ %asmresult3.i.i.i.i.i.i.i453, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i455.do.body.i.i.i.i445_crit_edge ]
  %85 = ptrtoint ptr %old.i.i.i.i442 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %old.i.i.i.i442, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i.i.i.i444 = icmp eq i32 %84, 0
  br i1 %tobool.not.i.i.i.i444, label %do.body.i.i.i.i445.if.end4.i.i.i.i458_crit_edge, label %do.cond.i.i.i.i449

do.body.i.i.i.i445.if.end4.i.i.i.i458_crit_edge:  ; preds = %do.body.i.i.i.i445
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i458

do.cond.i.i.i.i449:                               ; preds = %do.body.i.i.i.i445
  %add.i.i.i.i446 = add i32 %84, 1
  %call.i.i.i.i.i.i447 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount117, i32 noundef 4) #10
  %call.i3.i.i.i.i.i448 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i442, i32 noundef 4) #10
  %86 = ptrtoint ptr %old.i.i.i.i442 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %old.i.i.i.i442, align 4
  call void @llvm.prefetch.p0(ptr %refcount117, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i452

do.body.i.i.i.i.i.i.i452:                         ; preds = %do.body.i.i.i.i.i.i.i452.do.body.i.i.i.i.i.i.i452_crit_edge, %do.cond.i.i.i.i449
  %88 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount117, ptr %refcount117, i32 %87, i32 %add.i.i.i.i446, ptr elementtype(i32) %refcount117) #10, !srcloc !373
  %asmresult.i.i.i.i.i.i.i450 = extractvalue { i32, i32 } %88, 0
  %tobool.not.i.i.i.i.i.i.i451 = icmp eq i32 %asmresult.i.i.i.i.i.i.i450, 0
  br i1 %tobool.not.i.i.i.i.i.i.i451, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i455, label %do.body.i.i.i.i.i.i.i452.do.body.i.i.i.i.i.i.i452_crit_edge

do.body.i.i.i.i.i.i.i452.do.body.i.i.i.i.i.i.i452_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i452
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i452

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i455:  ; preds = %do.body.i.i.i.i.i.i.i452
  %asmresult3.i.i.i.i.i.i.i453 = extractvalue { i32, i32 } %88, 1
  %cmp.not.i.i.i.i.i.i454 = icmp eq i32 %asmresult3.i.i.i.i.i.i.i453, %87
  br i1 %cmp.not.i.i.i.i.i.i454, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i455.if.end4.i.i.i.i458_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i455.do.body.i.i.i.i445_crit_edge, !prof !360

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i455.do.body.i.i.i.i445_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i455
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i445

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i455.if.end4.i.i.i.i458_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i455
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i458

if.end4.i.i.i.i458:                               ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i455.if.end4.i.i.i.i458_crit_edge, %do.body.i.i.i.i445.if.end4.i.i.i.i458_crit_edge
  %89 = ptrtoint ptr %old.i.i.i.i442 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %old.i.i.i.i442, align 4
  %add5.i.i.i.i456 = add i32 %90, 1
  %91 = or i32 %add5.i.i.i.i456, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %91)
  %.not.i.i.i.i457 = icmp sgt i32 %91, -1
  br i1 %.not.i.i.i.i457, label %if.end4.i.i.i.i458.kref_get_unless_zero.exit462_crit_edge, label %if.then10.i.i.i.i459, !prof !360

if.end4.i.i.i.i458.kref_get_unless_zero.exit462_crit_edge: ; preds = %if.end4.i.i.i.i458
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit462

if.then10.i.i.i.i459:                             ; preds = %if.end4.i.i.i.i458
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount117, i32 noundef 0) #10
  %92 = ptrtoint ptr %old.i.i.i.i442 to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pr492 = load i32, ptr %old.i.i.i.i442, align 4
  br label %kref_get_unless_zero.exit462

kref_get_unless_zero.exit462:                     ; preds = %if.then10.i.i.i.i459, %if.end4.i.i.i.i458.kref_get_unless_zero.exit462_crit_edge
  %93 = phi i32 [ %90, %if.end4.i.i.i.i458.kref_get_unless_zero.exit462_crit_edge ], [ %.pr492, %if.then10.i.i.i.i459 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool12.i.i.i.i460.not = icmp eq i32 %93, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i442) #10
  br i1 %tobool12.i.i.i.i460.not, label %if.then120, label %if.end124

if.then120:                                       ; preds = %kref_get_unless_zero.exit462
  call void @__sanitizer_cov_trace_pc() #12
  %xid122 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 1
  %94 = ptrtoint ptr %xid122 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %xid122, align 4
  %conv123 = zext i16 %95 to i32
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1728, ptr noundef nonnull @.str.82, ptr noundef nonnull %arrayidx, i32 noundef %conv123) #10
  br label %for.inc

if.end124:                                        ; preds = %kref_get_unless_zero.exit462
  br i1 %cmp, label %if.end124.if.end132_crit_edge, label %land.lhs.true127

if.end124.if.end132_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

land.lhs.true127:                                 ; preds = %if.end124
  %lun128 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 22
  %96 = ptrtoint ptr %lun128 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %lun128, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %lun)
  %cmp129.not = icmp eq i32 %97, %lun
  br i1 %cmp129.not, label %land.lhs.true127.if.end132_crit_edge, label %land.lhs.true127.free_cmd_crit_edge

land.lhs.true127.free_cmd_crit_edge:              ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_cmd

land.lhs.true127.if.end132_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.end132:                                        ; preds = %land.lhs.true127.if.end132_crit_edge, %if.end124.if.end132_crit_edge
  %xid134 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 1
  %98 = ptrtoint ptr %xid134 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %xid134, align 4
  %conv135 = zext i16 %99 to i32
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1735, i32 noundef 1024, ptr noundef nonnull @.str.83, i32 noundef %conv135) #10
  %rrq_work136 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 40
  %call137 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %rrq_work136) #10
  br i1 %call137, label %if.then138, label %if.end132.if.end144_crit_edge

if.end132.if.end144_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

if.then138:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %xid134 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %xid134, align 4
  %conv141 = zext i16 %101 to i32
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1740, i32 noundef 1024, ptr noundef nonnull @.str.84, i32 noundef %conv141) #10
  call fastcc void @kref_put(ptr noundef %refcount117, ptr noundef nonnull @qedf_release_cmd)
  br label %if.end144

if.end144:                                        ; preds = %if.then138, %if.end132.if.end144_crit_edge
  %timeout_work = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 14
  %call145 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work) #10
  br i1 %call145, label %if.then146, label %if.end144.if.end154_crit_edge

if.end144.if.end154_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end154

if.then146:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %xid134 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %xid134, align 4
  %conv149 = zext i16 %103 to i32
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1747, i32 noundef 1024, ptr noundef nonnull @.str.85, i32 noundef %conv149) #10
  %call150 = call i32 @qedf_initiate_cleanup(ptr noundef nonnull %arrayidx, i1 noundef zeroext true)
  %abts_done = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 16
  call void @complete(ptr noundef %abts_done) #10
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags48) #10
  call fastcc void @kref_put(ptr noundef %refcount117, ptr noundef nonnull @qedf_release_cmd)
  br label %if.end154

if.end154:                                        ; preds = %if.then146, %if.end144.if.end154_crit_edge
  %inc155 = add i32 %flush_cnt.0483, 1
  br label %free_cmd

if.end156:                                        ; preds = %if.end111
  %sc_cmd = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 2
  %104 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sc_cmd, align 4
  %tobool157.not = icmp eq ptr %105, null
  br i1 %tobool157.not, label %if.end156.for.inc_crit_edge, label %if.end159

if.end156.for.inc_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end159:                                        ; preds = %if.end156
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device, align 4
  %tobool161.not = icmp eq ptr %107, null
  br i1 %tobool161.not, label %if.then162, label %if.end169

if.then162:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1766, i32 noundef 1024, ptr noundef nonnull @.str.86, ptr noundef nonnull %105) #10
  %108 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %sc_cmd, align 4
  %call166 = call i32 @qedf_initiate_cleanup(ptr noundef nonnull %arrayidx, i1 noundef zeroext false)
  %refcount167 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 11
  call fastcc void @kref_put(ptr noundef %refcount167, ptr noundef nonnull @qedf_release_cmd)
  br label %for.inc

if.end169:                                        ; preds = %if.end159
  br i1 %cmp170, label %if.then172, label %if.end169.if.end178_crit_edge

if.end169.if.end178_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

if.then172:                                       ; preds = %if.end169
  %lun173 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 22
  %109 = ptrtoint ptr %lun173 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %lun173, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %lun)
  %cmp174.not = icmp eq i32 %110, %lun
  br i1 %cmp174.not, label %if.then172.if.end178_crit_edge, label %if.then172.for.inc_crit_edge

if.then172.for.inc_crit_edge:                     ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then172.if.end178_crit_edge:                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

if.end178:                                        ; preds = %if.then172.if.end178_crit_edge, %if.end169.if.end178_crit_edge
  %refcount179 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 11
  %call180 = call fastcc i32 @kref_get_unless_zero(ptr noundef %refcount179)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  %xid184 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 1
  %111 = ptrtoint ptr %xid184 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %xid184, align 4
  %conv185 = zext i16 %112 to i32
  br i1 %tobool181.not, label %if.then182, label %if.end186

if.then182:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1785, ptr noundef nonnull @.str.87, ptr noundef nonnull %arrayidx, i32 noundef %conv185) #10
  br label %for.inc

if.end186:                                        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1790, i32 noundef 1024, ptr noundef nonnull @.str.88, i32 noundef %conv185) #10
  %inc190 = add i32 %flush_cnt.0483, 1
  %call191 = call i32 @qedf_initiate_cleanup(ptr noundef nonnull %arrayidx, i1 noundef zeroext true)
  br label %free_cmd

free_cmd:                                         ; preds = %if.end186, %if.end154, %land.lhs.true127.free_cmd_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.free_cmd_crit_edge
  %flush_cnt.1 = phi i32 [ %flush_cnt.0483, %land.lhs.true127.free_cmd_crit_edge ], [ %inc155, %if.end154 ], [ %inc190, %if.end186 ], [ %inc, %if.end5.i.i.i.i.i.free_cmd_crit_edge ], [ %inc, %if.then10.i.i.i.i.i ], [ %inc, %if.then.i.i ]
  %refcount192 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.0476, i32 11
  %call.i.i.i.i.i.i463 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount192, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  call void @llvm.prefetch.p0(ptr %refcount192, i32 1, i32 3, i32 1) #10
  %113 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount192, ptr %refcount192, i32 1, ptr elementtype(i32) %refcount192) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i.i464 = extractvalue { i32, i32, i32 } %113, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i464)
  %cmp.i.i.i.i465 = icmp eq i32 %asmresult.i.i.i.i.i.i.i464, 1
  br i1 %cmp.i.i.i.i465, label %if.then.i469, label %if.end5.i.i.i.i467

if.end5.i.i.i.i467:                               ; preds = %free_cmd
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i464)
  %.not.i.i.i.i466 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i464, 0
  br i1 %.not.i.i.i.i466, label %if.end5.i.i.i.i467.for.inc_crit_edge, label %if.then10.i.i.i.i468, !prof !360

if.end5.i.i.i.i467.for.inc_crit_edge:             ; preds = %if.end5.i.i.i.i467
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10.i.i.i.i468:                             ; preds = %if.end5.i.i.i.i467
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount192, i32 noundef 3) #10
  br label %for.inc

if.then.i469:                                     ; preds = %free_cmd
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  call void @qedf_release_cmd(ptr noundef %refcount192) #10, !callees !362
  br label %for.inc

for.inc:                                          ; preds = %if.then.i469, %if.then10.i.i.i.i468, %if.end5.i.i.i.i467.for.inc_crit_edge, %if.then182, %if.then172.for.inc_crit_edge, %if.then162, %if.end156.for.inc_crit_edge, %if.then120, %if.then105, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc_crit_edge, %if.then83.for.inc_crit_edge, %if.then72.for.inc_crit_edge, %if.else61, %if.end59.for.inc_crit_edge, %if.end35.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %flush_cnt.2 = phi i32 [ %flush_cnt.0483, %if.end59.for.inc_crit_edge ], [ %flush_cnt.0483, %if.then105 ], [ %flush_cnt.0483, %if.then120 ], [ %flush_cnt.0483, %if.then172.for.inc_crit_edge ], [ %flush_cnt.0483, %if.then182 ], [ %flush_cnt.0483, %if.then162 ], [ %flush_cnt.0483, %if.end156.for.inc_crit_edge ], [ %flush_cnt.0483, %if.then83.for.inc_crit_edge ], [ %flush_cnt.0483, %if.then72.for.inc_crit_edge ], [ %flush_cnt.0483, %if.else61 ], [ %flush_cnt.0483, %if.end35.for.inc_crit_edge ], [ %flush_cnt.0483, %for.body.for.inc_crit_edge ], [ %flush_cnt.0483, %if.end5.i.i.i.i.for.inc_crit_edge ], [ %flush_cnt.0483, %if.then10.i.i.i.i ], [ %flush_cnt.0483, %if.then.i ], [ %flush_cnt.1, %if.end5.i.i.i.i467.for.inc_crit_edge ], [ %flush_cnt.1, %if.then10.i.i.i.i468 ], [ %flush_cnt.1, %if.then.i469 ]
  %inc194 = add nuw nsw i32 %i.0476, 1
  %exitcond.not = icmp eq i32 %inc194, 2048
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call.i.i429 = call zeroext i1 @__kasan_check_read(ptr noundef %num_active_ios, i32 noundef 4) #10
  %114 = ptrtoint ptr %num_active_ios to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %num_active_ios, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1803, i32 noundef 1024, ptr noundef nonnull @.str.89, i32 noundef %flush_cnt.2, i32 noundef %115) #10
  %116 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %flags1, align 4
  %118 = and i32 %117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool200.not = icmp ne i32 %118, 0
  %119 = and i1 %cmp, %tobool200.not
  br i1 %119, label %while.cond205.preheader, label %for.end.if.end270_crit_edge

for.end.if.end270_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end270

while.cond205.preheader:                          ; preds = %for.end
  %call.i.i432485 = call zeroext i1 @__kasan_check_read(ptr noundef %num_active_ios, i32 noundef 4) #10
  %120 = ptrtoint ptr %num_active_ios to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %num_active_ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool208.not486 = icmp eq i32 %121, 0
  br i1 %tobool208.not486, label %while.cond205.preheader.if.end270_crit_edge, label %while.cond205.preheader.while.body209_crit_edge

while.cond205.preheader.while.body209_crit_edge:  ; preds = %while.cond205.preheader
  br label %while.body209

while.cond205.preheader.if.end270_crit_edge:      ; preds = %while.cond205.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end270

while.body209:                                    ; preds = %if.end267.while.body209_crit_edge, %while.cond205.preheader.while.body209_crit_edge
  %wait_cnt.1487 = phi i32 [ %dec268, %if.end267.while.body209_crit_edge ], [ 60, %while.cond205.preheader.while.body209_crit_edge ]
  %call.i.i433 = call zeroext i1 @__kasan_check_read(ptr noundef %num_active_ios, i32 noundef 4) #10
  %122 = ptrtoint ptr %num_active_ios to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %num_active_ios, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1812, i32 noundef 1024, ptr noundef nonnull @.str.90, i32 noundef %flush_cnt.2, i32 noundef %123, i32 noundef %wait_cnt.1487) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_cnt.1487)
  %cmp213 = icmp eq i32 %wait_cnt.1487, 0
  br i1 %cmp213, label %if.then215, label %if.end267

if.then215:                                       ; preds = %while.body209
  %call.i.i434 = call zeroext i1 @__kasan_check_read(ptr noundef %num_active_ios, i32 noundef 4) #10
  %124 = ptrtoint ptr %num_active_ios to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %num_active_ios, align 4
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1817, ptr noundef nonnull @.str.91, i32 noundef %flush_cnt.2, i32 noundef %125) #10
  br label %for.body222

for.body222:                                      ; preds = %for.inc243.for.body222_crit_edge, %if.then215
  %i.1488 = phi i32 [ 0, %if.then215 ], [ %inc244, %for.inc243.for.body222_crit_edge ]
  %fcport225 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.1488, i32 6
  %126 = ptrtoint ptr %fcport225 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %fcport225, align 4
  %tobool226.not = icmp ne ptr %127, null
  %cmp229 = icmp eq ptr %127, %fcport
  %or.cond420 = and i1 %tobool226.not, %cmp229
  br i1 %or.cond420, label %if.then231, label %for.body222.for.inc243_crit_edge

for.body222.for.inc243_crit_edge:                 ; preds = %for.body222
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc243

if.then231:                                       ; preds = %for.body222
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx224 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.1488
  %refcount232 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.1488, i32 11
  %call.i.i.i.i471 = call zeroext i1 @__kasan_check_read(ptr noundef %refcount232, i32 noundef 4) #10
  %128 = ptrtoint ptr %refcount232 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %refcount232, align 4
  %flags234 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.1488, i32 8
  call void @_set_bit(i32 noundef 4, ptr noundef %flags234) #10
  %xid236 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.1488, i32 1
  %130 = ptrtoint ptr %xid236 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %xid236, align 4
  %conv237 = zext i16 %131 to i32
  %132 = ptrtoint ptr %flags234 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags234, align 4
  %sc_cmd239 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.1488, i32 2
  %134 = ptrtoint ptr %sc_cmd239 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sc_cmd239, align 4
  %cmd_type240 = getelementptr %struct.qedf_cmd_mgr, ptr %17, i32 0, i32 3, i32 %i.1488, i32 3
  %136 = ptrtoint ptr %cmd_type240 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %cmd_type240, align 4
  %conv241 = zext i8 %137 to i32
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1832, ptr noundef nonnull @.str.92, ptr noundef %arrayidx224, i32 noundef %conv237, i32 noundef %133, ptr noundef %135, i32 noundef %129, i32 noundef %conv241) #10
  br label %for.inc243

for.inc243:                                       ; preds = %if.then231, %for.body222.for.inc243_crit_edge
  %inc244 = add nuw nsw i32 %i.1488, 1
  %exitcond491.not = icmp eq i32 %inc244, 2048
  br i1 %exitcond491.not, label %do.end253, label %for.inc243.for.body222_crit_edge

for.inc243.for.body222_crit_edge:                 ; preds = %for.inc243
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body222

do.end253:                                        ; preds = %for.inc243
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 1835, i32 noundef 9, ptr noundef null) #10
  br label %if.end270

if.end267:                                        ; preds = %while.body209
  call void @msleep(i32 noundef 500) #10
  %dec268 = add nsw i32 %wait_cnt.1487, -1
  %call.i.i432 = call zeroext i1 @__kasan_check_read(ptr noundef %num_active_ios, i32 noundef 4) #10
  %138 = ptrtoint ptr %num_active_ios to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %num_active_ios, align 4
  %tobool208.not = icmp eq i32 %139, 0
  br i1 %tobool208.not, label %if.end267.if.end270_crit_edge, label %if.end267.while.body209_crit_edge

if.end267.while.body209_crit_edge:                ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body209

if.end267.if.end270_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end270

if.end270:                                        ; preds = %if.end267.if.end270_crit_edge, %do.end253, %while.cond205.preheader.if.end270_crit_edge, %for.end.if.end270_crit_edge
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags1) #10
  call void @_clear_bit(i32 noundef 5, ptr noundef %flags1) #10
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %4, ptr noundef nonnull @__func__.qedf_flush_active_ios, i32 noundef 1845, i32 noundef 1024, ptr noundef nonnull @.str.93) #10
  call void @mutex_unlock(ptr noundef %flush_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end270, %if.then7, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kref_get_unless_zero(ptr noundef %kref) unnamed_addr #4 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #10
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %kref) #10, !srcloc !373
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !360

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !360

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #10
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %conv = zext i1 %tobool12.i.i.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedf_initiate_cleanup(ptr noundef %io_req, i1 noundef zeroext %return_scsi_cmd_on_abts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %return_scsi_cmd_on_abts to i8
  %fcport1 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 6
  %0 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_initiate_cleanup, i32 noundef 2161, ptr noundef nonnull @.str.67) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags2 = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags2, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_initiate_cleanup, i32 noundef 2167, ptr noundef nonnull @.str.94) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %qedf6 = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %qedf6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qedf6, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_initiate_cleanup, i32 noundef 2173, ptr noundef nonnull @.str.73) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %cmd_type = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 3
  %7 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cmd_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp = icmp eq i8 %8, 4
  br i1 %cmp, label %if.end9.process_els_crit_edge, label %if.end12

if.end9.process_els_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %process_els

if.end12:                                         ; preds = %if.end9
  %flags13 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 8
  %9 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags13, align 4
  %and1.i174 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i174)
  %tobool15.not = icmp eq i32 %and1.i174, 0
  br i1 %tobool15.not, label %if.end12.if.then19_crit_edge, label %lor.lhs.false

if.end12.if.then19_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end12
  %call17 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end21, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.end12.if.then19_crit_edge
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %11 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %xid, align 4
  %conv20 = zext i16 %12 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef nonnull %6, ptr noundef nonnull @__func__.qedf_initiate_cleanup, i32 noundef 2185, ptr noundef nonnull @.str.116, i32 noundef %conv20) #10
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags13) #10
  br label %process_els

process_els:                                      ; preds = %if.end21, %if.end9.process_els_crit_edge
  %free_sqes = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_sqes, i32 noundef 4) #10
  %13 = ptrtoint ptr %free_sqes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %free_sqes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool24.not = icmp eq i32 %14, 0
  br i1 %tobool24.not, label %if.then25, label %if.end28

if.then25:                                        ; preds = %process_els
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef nonnull %6, ptr noundef nonnull @__func__.qedf_initiate_cleanup, i32 noundef 2193, ptr noundef nonnull @.str.98) #10
  %flags27 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags27) #10
  br label %cleanup

if.end28:                                         ; preds = %process_els
  %15 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cmd_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %16)
  %cmp31 = icmp eq i8 %16, 5
  br i1 %cmp31, label %if.then33, label %if.end40

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %xid35 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %17 = ptrtoint ptr %xid35 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %xid35, align 4
  %conv36 = zext i16 %18 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef nonnull %6, ptr noundef nonnull @__func__.qedf_initiate_cleanup, i32 noundef 2202, ptr noundef nonnull @.str.117, i32 noundef %conv36, i32 noundef 5) #10
  %flags39 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags39) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  %refcount41 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount41, i32 noundef 4) #10
  %19 = ptrtoint ptr %refcount41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %refcount41, align 4
  %xid44 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %21 = ptrtoint ptr %xid44 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %xid44, align 4
  %conv45 = zext i16 %22 to i32
  %sc_cmd = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 2
  %23 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sc_cmd, align 4
  %25 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cmd_type, align 4
  %conv47 = zext i8 %26 to i32
  %flags48 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 8
  %27 = ptrtoint ptr %flags48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags48, align 4
  %rdata = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rdata, align 4
  %port_id = getelementptr inbounds %struct.fc_rport_priv, ptr %30, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port_id, align 8
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef nonnull %6, ptr noundef nonnull @__func__.qedf_initiate_cleanup, i32 noundef 2212, i32 noundef 1024, ptr noundef nonnull @.str.118, i32 noundef %conv45, ptr noundef %24, i32 noundef %conv47, i32 noundef %28, i32 noundef %20, ptr noundef nonnull %1, i32 noundef %32) #10
  %33 = ptrtoint ptr %cmd_type to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 5, ptr %cmd_type, align 4
  %return_scsi_cmd_on_abts51 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 45
  %34 = ptrtoint ptr %return_scsi_cmd_on_abts51 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool, ptr %return_scsi_cmd_on_abts51, align 4
  %cleanup_done = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 17
  %35 = ptrtoint ptr %cleanup_done to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %cleanup_done, align 4
  %wait.i = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 17, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.151, ptr noundef nonnull @init_completion.__key) #10
  %call57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #10
  %sq_mem_size.i = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 18
  %36 = ptrtoint ptr %sq_mem_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sq_mem_size.i, align 4
  %div13.i = lshr i32 %37, 3
  %sq_prod_idx.i = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 15
  %38 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %sq_prod_idx.i, align 4
  %inc.i = add i16 %39, 1
  store i16 %inc.i, ptr %sq_prod_idx.i, align 4
  %fw_sq_prod_idx.i = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 16
  %40 = ptrtoint ptr %fw_sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %fw_sq_prod_idx.i, align 2
  %inc2.i = add i16 %41, 1
  store i16 %inc2.i, ptr %fw_sq_prod_idx.i, align 2
  %42 = trunc i32 %div13.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %42)
  %cmp.i = icmp eq i16 %inc.i, %42
  br i1 %cmp.i, label %if.then.i, label %if.end40.qedf_get_sqe_idx.exit_crit_edge

if.end40.qedf_get_sqe_idx.exit_crit_edge:         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %qedf_get_sqe_idx.exit

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %sq_prod_idx.i, align 4
  br label %qedf_get_sqe_idx.exit

qedf_get_sqe_idx.exit:                            ; preds = %if.then.i, %if.end40.qedf_get_sqe_idx.exit_crit_edge
  %sq = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 13
  %44 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sq, align 4
  %idxprom = zext i16 %39 to i32
  %arrayidx = getelementptr %struct.fcoe_wqe, ptr %45, i32 %idxprom
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 0, ptr %arrayidx, align 4
  %task_params = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 19
  %47 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task_params, align 4
  %sqe61 = getelementptr inbounds %struct.fcoe_task_params, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %sqe61 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %arrayidx, ptr %sqe61, align 4
  %50 = load ptr, ptr %task_params, align 4
  %call63 = tail call i32 @init_initiator_cleanup_fcoe_task(ptr noundef %50) #10
  %51 = ptrtoint ptr %fw_sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %fw_sq_prod_idx.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !367
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !369
  tail call void @arm_heavy_mb() #10
  %dbell.sroa.11.0.insert.ext.i = zext i16 %52 to i32
  %dbell.sroa.0.0.insert.insert.i = or i32 %dbell.sroa.11.0.insert.ext.i, -2080374784
  %53 = tail call i32 @llvm.bswap.i32(i32 %dbell.sroa.0.0.insert.insert.i) #10
  %p_doorbell.i = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 9
  %54 = ptrtoint ptr %p_doorbell.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %p_doorbell.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #10, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !371
  tail call void @arm_heavy_mb() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %1, i32 noundef %call57) #10
  %call66 = tail call i32 @wait_for_completion_timeout(ptr noundef %cleanup_done, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then68, label %qedf_get_sqe_idx.exit.if.end74_crit_edge

qedf_get_sqe_idx.exit.if.end74_crit_edge:         ; preds = %qedf_get_sqe_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then68:                                        ; preds = %qedf_get_sqe_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %xid44 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %xid44, align 4
  %conv71 = zext i16 %57 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef nonnull %6, ptr noundef nonnull @__func__.qedf_initiate_cleanup, i32 noundef 2239, ptr noundef nonnull @.str.119, i32 noundef %conv71) #10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags48) #10
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef nonnull %6, ptr noundef nonnull @__func__.qedf_initiate_cleanup, i32 noundef 2242, ptr noundef nonnull @.str.120) #10
  tail call fastcc void @qedf_drain_request(ptr noundef nonnull %6)
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %qedf_get_sqe_idx.exit.if.end74_crit_edge
  %rc.0 = phi i32 [ 8194, %qedf_get_sqe_idx.exit.if.end74_crit_edge ], [ 8195, %if.then68 ]
  %tm_flags = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 5
  %58 = ptrtoint ptr %tm_flags to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %tm_flags, align 2
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.169)
  switch i8 %59, label %if.end74.if.end88_crit_edge [
    i8 16, label %if.end74.if.then83_crit_edge
    i8 32, label %if.end74.if.then83_crit_edge178
  ]

if.end74.if.then83_crit_edge178:                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

if.end74.if.then83_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

if.end74.if.end88_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then83:                                        ; preds = %if.end74.if.then83_crit_edge, %if.end74.if.then83_crit_edge178
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags48) #10
  %61 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %sc_cmd, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount41, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  tail call void @llvm.prefetch.p0(ptr %refcount41, i32 1, i32 3, i32 1) #10
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount41, ptr %refcount41, i32 1, ptr elementtype(i32) %refcount41) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i176, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !360

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount41, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i176:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void @qedf_release_cmd(ptr noundef %refcount41) #10, !callees !362
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i176, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %tm_done = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 15
  tail call void @complete(ptr noundef %tm_done) #10
  br label %if.end88

if.end88:                                         ; preds = %kref_put.exit, %if.end74.if.end88_crit_edge
  %63 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sc_cmd, align 4
  %tobool90.not = icmp eq ptr %64, null
  br i1 %tobool90.not, label %if.end88.if.end103_crit_edge, label %if.then91

if.end88.if.end103_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.then91:                                        ; preds = %if.end88
  %65 = ptrtoint ptr %return_scsi_cmd_on_abts51 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %return_scsi_cmd_on_abts51, align 4, !range !372
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool93.not = icmp eq i8 %66, 0
  br i1 %tobool93.not, label %if.end98, label %if.then91.if.then101_crit_edge

if.then91.if.then101_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101

if.end98:                                         ; preds = %if.then91
  %67 = ptrtoint ptr %xid44 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %xid44, align 4
  %conv97 = zext i16 %68 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef nonnull %6, ptr noundef nonnull @__func__.qedf_initiate_cleanup, i32 noundef 2261, i32 noundef 256, ptr noundef nonnull @.str.110, i32 noundef %conv97) #10
  %69 = ptrtoint ptr %return_scsi_cmd_on_abts51 to i32
  call void @__asan_load1_noabort(i32 %69)
  %.pr = load i8, ptr %return_scsi_cmd_on_abts51, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool100.not = icmp eq i8 %.pr, 0
  br i1 %tobool100.not, label %if.end98.if.end103_crit_edge, label %if.end98.if.then101_crit_edge

if.end98.if.then101_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101

if.end98.if.end103_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.then101:                                       ; preds = %if.end98.if.then101_crit_edge, %if.then91.if.then101_crit_edge
  tail call void @qedf_scsi_done(ptr noundef nonnull %6, ptr noundef %io_req, i32 noundef 7)
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end98.if.end103_crit_edge, %if.end88.if.end103_crit_edge
  %event107 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 9
  br i1 %tobool67.not, label %if.else, label %if.then106

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %event107 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 7, ptr %event107, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %event107 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 8, ptr %event107, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then106, %if.then33, %if.then25, %if.then19, %if.then8, %if.then4, %if.then
  %retval.0 = phi i32 [ 8194, %if.then33 ], [ 8195, %if.then25 ], [ 8194, %if.then19 ], [ 8194, %if.then8 ], [ 8194, %if.then4 ], [ 8194, %if.then ], [ %rc.0, %if.else ], [ %rc.0, %if.then106 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_get(ptr noundef %kref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !363
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !364

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !360

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_initiator_abort_fcoe_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_rport_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_process_abts_compl(ptr noundef %qedf, ptr nocapture noundef readonly %cqe, ptr noundef %io_req) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fcport1 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 6
  %0 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport1, align 4
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %xid, align 4
  %conv = zext i16 %3 to i32
  %cmd_type = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 3
  %4 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmd_type, align 4
  %conv2 = zext i8 %5 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_abts_compl, i32 noundef 1963, i32 noundef 256, ptr noundef nonnull @.str.102, i32 noundef %conv, i32 noundef %conv2) #10
  %cqe_info = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3
  %6 = ptrtoint ptr %cqe_info to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cqe_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %xid, align 4
  %conv7 = zext i16 %9 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_abts_compl, i32 noundef 1974, i32 noundef 1024, ptr noundef nonnull @.str.103, i32 noundef %conv7) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %if.end16, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %16 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %xid, align 4
  %conv15 = zext i16 %17 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_abts_compl, i32 noundef 1986, i32 noundef 1024, ptr noundef nonnull @.str.104, i32 noundef %conv15) #10
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %timeout_work = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 14
  %call17 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #10
  br i1 %call17, label %if.end16.if.end20_crit_edge, label %if.then18

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_abts_compl, i32 noundef 1992, ptr noundef nonnull @.str.105) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %18 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.170)
  switch i8 %7, label %sw.default [
    i8 -124, label %sw.bb
    i8 -123, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.end20
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_abts_compl, i32 noundef 1998, i32 noundef 256, ptr noundef nonnull @.str.106) #10
  %event = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 9
  %19 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %event, align 4
  %refcount = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %20 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %sw.bb
  %22 = phi i32 [ %21, %sw.bb ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %23 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %22, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %24 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %26 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %25, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !373
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %25
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !360

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %27 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %28, 1
  %29 = or i32 %add5.i.i.i.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !360

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  %30 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr93 = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %31 = phi i32 [ %28, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr93, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool12.i.i.i.i.not = icmp eq i32 %31, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not, label %if.then24, label %if.end28

if.then24:                                        ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %xid, align 4
  %conv27 = zext i16 %33 to i32
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_abts_compl, i32 noundef 2004, i32 noundef 256, ptr noundef nonnull @.str.107, i32 noundef %conv27) #10
  br label %cleanup

if.end28:                                         ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dpc_wq = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 51
  %34 = ptrtoint ptr %dpc_wq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dpc_wq, align 16
  %rrq_work = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 40
  %lport = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 2
  %36 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lport, align 16
  %r_a_tov = getelementptr inbounds %struct.fc_lport, ptr %37, i32 0, i32 23
  %38 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %r_a_tov, align 8
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %39) #10
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %rrq_work, i32 noundef %call2.i) #10
  %state = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #10
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 7, ptr %state, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_abts_compl, i32 noundef 2018, i32 noundef 256, ptr noundef nonnull @.str.108) #10
  %event33 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 9
  %41 = ptrtoint ptr %event33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %event33, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_abts_compl, i32 noundef 2022, ptr noundef nonnull @.str.109) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb31, %if.end28
  %flags35 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 8
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags35) #10
  %sc_cmd = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 2
  %42 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sc_cmd, align 4
  %tobool36.not = icmp eq ptr %43, null
  br i1 %tobool36.not, label %sw.epilog.if.end48_crit_edge, label %if.then37

sw.epilog.if.end48_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then37:                                        ; preds = %sw.epilog
  %return_scsi_cmd_on_abts = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 45
  %44 = ptrtoint ptr %return_scsi_cmd_on_abts to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %return_scsi_cmd_on_abts, align 4, !range !372
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool38.not = icmp eq i8 %45, 0
  br i1 %tobool38.not, label %if.end43, label %if.then37.if.then46_crit_edge

if.then37.if.then46_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

if.end43:                                         ; preds = %if.then37
  %46 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %xid, align 4
  %conv42 = zext i16 %47 to i32
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_abts_compl, i32 noundef 2032, i32 noundef 256, ptr noundef nonnull @.str.110, i32 noundef %conv42) #10
  %48 = ptrtoint ptr %return_scsi_cmd_on_abts to i32
  call void @__asan_load1_noabort(i32 %48)
  %.pr = load i8, ptr %return_scsi_cmd_on_abts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool45.not = icmp eq i8 %.pr, 0
  br i1 %tobool45.not, label %if.end43.if.end48_crit_edge, label %if.end43.if.then46_crit_edge

if.end43.if.then46_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then46:                                        ; preds = %if.end43.if.then46_crit_edge, %if.then37.if.then46_crit_edge
  call void @qedf_scsi_done(ptr noundef %qedf, ptr noundef %io_req, i32 noundef 7)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end43.if.end48_crit_edge, %sw.epilog.if.end48_crit_edge
  %abts_done = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 16
  call void @complete(ptr noundef %abts_done) #10
  %refcount49 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 11
  %call.i.i.i.i.i.i87 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount49, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  call void @llvm.prefetch.p0(ptr %refcount49, i32 1, i32 3, i32 1) #10
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount49, ptr %refcount49, i32 1, ptr elementtype(i32) %refcount49) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i.i88 = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i88)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i88, 1
  br i1 %cmp.i.i.i.i, label %if.then.i91, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i88)
  %.not.i.i.i.i89 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i88, 0
  br i1 %.not.i.i.i.i89, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i90, !prof !360

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i90:                              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount49, i32 noundef 3) #10
  br label %cleanup

if.then.i91:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  call void @qedf_release_cmd(ptr noundef %refcount49) #10, !callees !362
  br label %cleanup

cleanup:                                          ; preds = %if.then.i91, %if.then10.i.i.i.i90, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then24, %if.then12, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedf_init_mp_req(ptr noundef %io_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fcport = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 6
  %0 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport, align 4
  %qedf1 = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %qedf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qedf1, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %3, ptr noundef nonnull @__func__.qedf_init_mp_req, i32 noundef 2052, i32 noundef 128, ptr noundef nonnull @.str.111) #10
  %mp_req2 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33
  %4 = call ptr @memset(ptr %mp_req2, i32 0, i32 88)
  %cmd_type = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 3
  %5 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cmd_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp.not = icmp eq i8 %6, 4
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %mp_req2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32, ptr %mp_req2, align 4
  %data_xfer_len = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 10
  %8 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %data_xfer_len, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data_xfer_len5 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 10
  %9 = ptrtoint ptr %data_xfer_len5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_xfer_len5, align 4
  %11 = ptrtoint ptr %mp_req2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mp_req2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pdev = getelementptr inbounds %struct.qedf_ctx, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %req_buf_dma = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %req_buf_dma, i32 noundef 3264, i32 noundef 0) #10
  %req_buf = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 1
  %14 = ptrtoint ptr %req_buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %req_buf, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %3, ptr noundef nonnull @__func__.qedf_init_mp_req, i32 noundef 2066, ptr noundef nonnull @.str.112) #10
  tail call fastcc void @qedf_free_mp_resc(ptr noundef %io_req)
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %resp_buf_dma = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 8
  %call.i107 = tail call ptr @dma_alloc_attrs(ptr noundef %dev12, i32 noundef 4096, ptr noundef %resp_buf_dma, i32 noundef 3264, i32 noundef 0) #10
  %resp_buf = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 7
  %17 = ptrtoint ptr %resp_buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i107, ptr %resp_buf, align 4
  %tobool15.not = icmp eq ptr %call.i107, null
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %3, ptr noundef nonnull @__func__.qedf_init_mp_req, i32 noundef 2075, ptr noundef nonnull @.str.113) #10
  tail call fastcc void @qedf_free_mp_resc(ptr noundef %io_req)
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %mp_req_bd_dma = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 4
  %call.i108 = tail call ptr @dma_alloc_attrs(ptr noundef %dev20, i32 noundef 16, ptr noundef %mp_req_bd_dma, i32 noundef 3264, i32 noundef 0) #10
  %mp_req_bd23 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 3
  %20 = ptrtoint ptr %mp_req_bd23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i108, ptr %mp_req_bd23, align 4
  %tobool25.not = icmp eq ptr %call.i108, null
  br i1 %tobool25.not, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %3, ptr noundef nonnull @__func__.qedf_init_mp_req, i32 noundef 2085, ptr noundef nonnull @.str.114) #10
  tail call fastcc void @qedf_free_mp_resc(ptr noundef %io_req)
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %mp_resp_bd_dma = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 10
  %call.i109 = tail call ptr @dma_alloc_attrs(ptr noundef %dev30, i32 noundef 16, ptr noundef %mp_resp_bd_dma, i32 noundef 3264, i32 noundef 0) #10
  %mp_resp_bd33 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 33, i32 9
  %23 = ptrtoint ptr %mp_resp_bd33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i109, ptr %mp_resp_bd33, align 4
  %tobool35.not = icmp eq ptr %call.i109, null
  br i1 %tobool35.not, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %3, ptr noundef nonnull @__func__.qedf_init_mp_req, i32 noundef 2093, ptr noundef nonnull @.str.115) #10
  tail call fastcc void @qedf_free_mp_resc(ptr noundef %io_req)
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %req_buf_dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %req_buf_dma, align 4
  %26 = ptrtoint ptr %mp_req_bd23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mp_req_bd23, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %27, align 4
  %hi = getelementptr inbounds %struct.regpair, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %hi, align 4
  %sge_len = getelementptr inbounds %struct.scsi_sge, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %sge_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4096, ptr %sge_len, align 4
  %31 = ptrtoint ptr %mp_resp_bd33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mp_resp_bd33, align 4
  %33 = ptrtoint ptr %resp_buf_dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %resp_buf_dma, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %32, align 4
  %hi57 = getelementptr inbounds %struct.regpair, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %hi57 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %hi57, align 4
  %sge_len58 = getelementptr inbounds %struct.scsi_sge, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %sge_len58 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4096, ptr %sge_len58, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then36, %if.then26, %if.then16, %if.then8
  %retval.0 = phi i32 [ 0, %if.end38 ], [ -12, %if.then36 ], [ -12, %if.then26 ], [ -12, %if.then16 ], [ -12, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_initiator_cleanup_fcoe_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedf_drain_request(ptr noundef %qedf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 29
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_drain_request, i32 noundef 2126, ptr noundef nonnull @.str.153) #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qed_ops to i32))
  %3 = load ptr, ptr @qed_ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %drain = getelementptr inbounds %struct.qed_common_ops, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %drain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drain, align 4
  %cdev = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 8
  %8 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdev, align 4
  %call2 = tail call i32 %7(ptr noundef %9) #10
  tail call void @msleep(i32 noundef 100) #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_process_cleanup_compl(ptr noundef %qedf, ptr nocapture noundef readnone %cqe, ptr noundef %io_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %0 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %xid, align 4
  %conv = zext i16 %1 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_cleanup_compl, i32 noundef 2278, i32 noundef 1024, ptr noundef nonnull @.str.121, i32 noundef %conv) #10
  %flags = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  %cleanup_done = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 17
  tail call void @complete(ptr noundef %cleanup_done) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedf_initiate_tmf(ptr noundef %sc_cmd, i8 noundef zeroext %tm_flags) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  %call1 = tail call i32 @scsi_is_fc_rport(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %parent.i138 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 55, i32 1
  %8 = ptrtoint ptr %parent.i138 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i138, align 8
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
  %arrayidx = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 1
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %rdata8 = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 4
  %18 = ptrtoint ptr %rdata8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rdata8, align 4
  %conv = zext i8 %tm_flags to i32
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 14
  %20 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool10.not = icmp eq i16 %21, 0
  br i1 %tobool10.not, label %cond.end.cond.end15_crit_edge, label %cond.true11

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end15

cond.true11:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 16
  %22 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmnd, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv13 = zext i8 %25 to i32
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true11, %cond.end.cond.end15_crit_edge
  %cond16 = phi i32 [ %conv13, %cond.true11 ], [ 255, %cond.end.cond.end15_crit_edge ]
  %scsi_target_id = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 9
  %26 = ptrtoint ptr %scsi_target_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scsi_target_id, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %15, i32 0, i32 18
  %28 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %lun, align 8
  %conv18 = trunc i64 %29 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_initiate_tmf, i32 noundef 2425, ptr noundef nonnull @.str.122, i32 noundef %conv, ptr noundef %sc_cmd, i32 noundef %cond16, i32 noundef %27, i32 noundef %conv18) #10
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %cond.end15.if.then_crit_edge, label %lor.lhs.false

cond.end15.if.then_crit_edge:                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %cond.end15
  %kref = getelementptr inbounds %struct.fc_rport_priv, ptr %19, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #10
  %30 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %32 = phi i32 [ %31, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %33 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %32, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %34 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %36 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %35, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #10, !srcloc !373
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %35
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !360

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %37 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %38, 1
  %39 = or i32 %add5.i.i.i.i, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %.not.i.i.i.i = icmp sgt i32 %39, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !360

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #10
  %40 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %41 = phi i32 [ %38, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool12.i.i.i.i.not = icmp eq i32 %41, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.if.then_crit_edge, label %if.end

kref_get_unless_zero.exit.if.then_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %kref_get_unless_zero.exit.if.then_crit_edge, %cond.end15.if.then_crit_edge
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_initiate_tmf, i32 noundef 2428, ptr noundef nonnull @.str.95) #10
  br label %cleanup

if.end:                                           ; preds = %kref_get_unless_zero.exit
  %port_id = getelementptr inbounds %struct.fc_rport_priv, ptr %19, i32 0, i32 4, i32 2
  %42 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %tm_flags)
  %cmp = icmp eq i8 %tm_flags, 32
  %cond24 = select i1 %cmp, ptr @.str.124, ptr @.str.125
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_initiate_tmf, i32 noundef 2434, ptr noundef nonnull @.str.123, i32 noundef %43, ptr noundef nonnull %cond24) #10
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 22
  %44 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %SCp, align 4
  %tobool25.not = icmp eq ptr %45, null
  br i1 %tobool25.not, label %if.end.if.end31_crit_edge, label %if.then26

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %refcount = getelementptr inbounds %struct.qedf_ioreq, ptr %45, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %46 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %refcount, align 4
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %xid, align 4
  %conv30 = zext i16 %49 to i32
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_initiate_tmf, i32 noundef 2441, ptr noundef nonnull @.str.126, ptr noundef nonnull %45, i32 noundef %conv30, i32 noundef %47) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end.if.end31_crit_edge
  %port_state.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 8
  %50 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port_state.i, align 8
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %51, label %if.end31.if.then34_crit_edge [
    i32 2, label %if.end31.sw.bb.i_crit_edge
    i32 11, label %if.end31.sw.bb.i_crit_edge146
  ]

if.end31.sw.bb.i_crit_edge146:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end31.sw.bb.i_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end31.if.then34_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

sw.bb.i:                                          ; preds = %if.end31.sw.bb.i_crit_edge, %if.end31.sw.bb.i_crit_edge146
  %roles.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 7
  %53 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %roles.i, align 4
  %and.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.if.then34_crit_edge, label %if.end35

sw.bb.i.if.then34_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.then34:                                        ; preds = %sw.bb.i.if.then34_crit_edge, %if.end31.if.then34_crit_edge
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_initiate_tmf, i32 noundef 2446, ptr noundef nonnull @.str.127) #10
  br label %tmf_err

if.end35:                                         ; preds = %sw.bb.i
  %call36 = call i32 @fc_block_scsi_eh(ptr noundef %sc_cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.tmf_err_crit_edge

if.end35.tmf_err_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %tmf_err

if.end39:                                         ; preds = %if.end35
  %tobool40.not = icmp eq ptr %arrayidx, null
  br i1 %tobool40.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_initiate_tmf, i32 noundef 2456, ptr noundef nonnull @.str.128) #10
  br label %tmf_err

if.end42:                                         ; preds = %if.end39
  %qedf43 = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 4, i32 1
  %55 = ptrtoint ptr %qedf43 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %qedf43, align 4
  %tobool44.not = icmp eq ptr %56, null
  br i1 %tobool44.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_initiate_tmf, i32 noundef 2464, ptr noundef nonnull @.str.73) #10
  br label %tmf_err

if.end46:                                         ; preds = %if.end42
  %flags = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 3, i32 1
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %flags, align 4
  %59 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool48.not = icmp eq i32 %59, 0
  br i1 %tobool48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef nonnull %56, ptr noundef nonnull @__func__.qedf_initiate_tmf, i32 noundef 2470, ptr noundef nonnull @.str.129) #10
  br label %tmf_err

if.end50:                                         ; preds = %if.end46
  %flags51 = getelementptr inbounds %struct.qedf_ctx, ptr %56, i32 0, i32 29
  %60 = ptrtoint ptr %flags51 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %flags51, align 4
  %62 = and i32 %61, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool53.not = icmp eq i32 %62, 0
  br i1 %tobool53.not, label %lor.lhs.false54, label %if.end50.tmf_err_crit_edge

if.end50.tmf_err_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %tmf_err

lor.lhs.false54:                                  ; preds = %if.end50
  %63 = ptrtoint ptr %flags51 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %flags51, align 4
  %65 = and i32 %64, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool57.not = icmp eq i32 %65, 0
  br i1 %tobool57.not, label %if.end59, label %lor.lhs.false54.tmf_err_crit_edge

lor.lhs.false54.tmf_err_crit_edge:                ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #12
  br label %tmf_err

if.end59:                                         ; preds = %lor.lhs.false54
  %state = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 1, i32 13, i32 13, i32 1, i32 4
  %66 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %67)
  %cmp60.not = icmp eq i32 %67, 14
  br i1 %cmp60.not, label %lor.lhs.false62, label %if.end59.if.then64_crit_edge

if.end59.if.then64_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

lor.lhs.false62:                                  ; preds = %if.end59
  %link_up = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 1, i32 13, i32 13, i32 1, i32 3
  %68 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool63.not = icmp eq i8 %69, 0
  br i1 %tobool63.not, label %lor.lhs.false62.if.then64_crit_edge, label %if.end66

lor.lhs.false62.if.then64_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then64:                                        ; preds = %lor.lhs.false62.if.then64_crit_edge, %if.end59.if.then64_crit_edge
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef nonnull %56, ptr noundef nonnull @__func__.qedf_initiate_tmf, i32 noundef 2482, ptr noundef nonnull @.str.96) #10
  br label %tmf_err

if.end66:                                         ; preds = %lor.lhs.false62
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %flags, align 4
  %72 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool69.not = icmp eq i32 %72, 0
  br i1 %tobool69.not, label %if.end80, label %if.then70

if.then70:                                        ; preds = %if.end66
  %73 = ptrtoint ptr %rdata8 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rdata8, align 4
  %tobool72.not = icmp eq ptr %74, null
  br i1 %tobool72.not, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef nonnull %56, ptr noundef nonnull @__func__.qedf_initiate_tmf, i32 noundef 2490, ptr noundef nonnull @.str.130, ptr noundef nonnull %arrayidx) #10
  br label %tmf_err

if.else:                                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  %port_id78 = getelementptr inbounds %struct.fc_rport_priv, ptr %74, i32 0, i32 4, i32 2
  %75 = ptrtoint ptr %port_id78 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port_id78, align 8
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef nonnull %56, ptr noundef nonnull @__func__.qedf_initiate_tmf, i32 noundef 2494, ptr noundef nonnull @.str.131, ptr noundef nonnull %arrayidx, i32 noundef %76) #10
  br label %tmf_err

if.end80:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %call81 = call fastcc i32 @qedf_execute_tmf(ptr noundef nonnull %arrayidx, ptr noundef %sc_cmd, i8 noundef zeroext %tm_flags)
  br label %tmf_err

tmf_err:                                          ; preds = %if.end80, %if.else, %if.then73, %if.then64, %lor.lhs.false54.tmf_err_crit_edge, %if.end50.tmf_err_crit_edge, %if.then49, %if.then45, %if.then41, %if.end35.tmf_err_crit_edge, %if.then34
  %rc.0 = phi i32 [ 8195, %if.then34 ], [ %call36, %if.end35.tmf_err_crit_edge ], [ 8194, %if.then49 ], [ 8195, %if.then64 ], [ %call81, %if.end80 ], [ 8195, %if.then45 ], [ 8195, %if.then41 ], [ 8194, %lor.lhs.false54.tmf_err_crit_edge ], [ 8194, %if.end50.tmf_err_crit_edge ], [ 8195, %if.else ], [ 8195, %if.then73 ]
  %call.i.i.i.i.i.i140 = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %77 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i.i141 = extractvalue { i32, i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i141)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i141, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %tmf_err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i141)
  %.not.i.i.i.i142 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i141, 0
  br i1 %.not.i.i.i.i142, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i143, !prof !360

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i143:                             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %tmf_err
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  call void @fc_rport_destroy(ptr noundef %kref) #10, !callees !362
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i143, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 8195, %if.then ], [ %rc.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %rc.0, %if.then10.i.i.i.i143 ], [ %rc.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_block_scsi_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedf_execute_tmf(ptr noundef %fcport, ptr noundef %sc_cmd, i8 noundef zeroext %tm_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qedf1 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 6
  %0 = ptrtoint ptr %qedf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedf1, align 4
  %tobool.not = icmp eq ptr %sc_cmd, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_execute_tmf, i32 noundef 2302, ptr noundef nonnull @.str.154) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %lun3 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %lun3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %lun3, align 8
  %conv = trunc i64 %5 to i32
  %flags4 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 1
  %6 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags4, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_execute_tmf, i32 noundef 2308, ptr noundef nonnull @.str.155) #10
  br label %if.then74

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @qedf_alloc_cmd(ptr noundef %fcport, i8 noundef zeroext 2)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_execute_tmf, i32 noundef 2315, ptr noundef nonnull @.str.156) #10
  br label %if.then74

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %tm_flags)
  %cmp = icmp eq i8 %tm_flags, 16
  br i1 %cmp, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %lun_resets = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 73
  %9 = ptrtoint ptr %lun_resets to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lun_resets, align 8
  %inc = add i8 %10, 1
  store i8 %inc, ptr %lun_resets, align 8
  br label %if.end23

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %tm_flags)
  %cmp18 = icmp eq i8 %tm_flags, 32
  br i1 %cmp18, label %if.then20, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %target_resets = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 74
  %11 = ptrtoint ptr %target_resets to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %target_resets, align 1
  %inc21 = add i8 %12, 1
  store i8 %inc21, ptr %target_resets, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.else.if.end23_crit_edge, %if.then16
  %sc_cmd24 = getelementptr inbounds %struct.qedf_ioreq, ptr %call9, i32 0, i32 2
  %13 = ptrtoint ptr %sc_cmd24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sc_cmd, ptr %sc_cmd24, align 4
  %fcport25 = getelementptr inbounds %struct.qedf_ioreq, ptr %call9, i32 0, i32 6
  %14 = ptrtoint ptr %fcport25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fcport, ptr %fcport25, align 4
  %cmd_type = getelementptr inbounds %struct.qedf_ioreq, ptr %call9, i32 0, i32 3
  %15 = ptrtoint ptr %cmd_type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %cmd_type, align 4
  %16 = tail call i32 @llvm.read_register.i32(metadata !348) #10
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  %cpu27 = getelementptr inbounds %struct.qedf_ioreq, ptr %call9, i32 0, i32 37
  %20 = ptrtoint ptr %cpu27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cpu27, align 4
  %io_req_flags = getelementptr inbounds %struct.qedf_ioreq, ptr %call9, i32 0, i32 4
  %21 = ptrtoint ptr %io_req_flags to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %io_req_flags, align 1
  %data_xfer_len = getelementptr inbounds %struct.qedf_ioreq, ptr %call9, i32 0, i32 10
  %22 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %data_xfer_len, align 4
  %tm_flags28 = getelementptr inbounds %struct.qedf_ioreq, ptr %call9, i32 0, i32 5
  %23 = ptrtoint ptr %tm_flags28 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %tm_flags, ptr %tm_flags28, align 2
  %return_scsi_cmd_on_abts = getelementptr inbounds %struct.qedf_ioreq, ptr %call9, i32 0, i32 45
  %24 = ptrtoint ptr %return_scsi_cmd_on_abts to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %return_scsi_cmd_on_abts, align 4
  %xid29 = getelementptr inbounds %struct.qedf_ioreq, ptr %call9, i32 0, i32 1
  %25 = ptrtoint ptr %xid29 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %xid29, align 4
  %conv31 = zext i16 %26 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_execute_tmf, i32 noundef 2345, i32 noundef 256, ptr noundef nonnull @.str.157, i32 noundef %conv31) #10
  %tasks = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 46
  %num_tids_per_block.i = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 46, i32 1
  %27 = ptrtoint ptr %num_tids_per_block.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_tids_per_block.i, align 4
  %.frozen = freeze i32 %28
  %div.i = udiv i32 %conv31, %.frozen
  %arrayidx.i = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 46, i32 2, i32 %div.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %31 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %conv31, %31
  %32 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tasks, align 4
  %mul.i = mul i32 %33, %rem.i.decomposed
  %add.ptr.i = getelementptr i8, ptr %30, i32 %mul.i
  %tm_done = getelementptr inbounds %struct.qedf_ioreq, ptr %call9, i32 0, i32 15
  %34 = ptrtoint ptr %tm_done to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %tm_done, align 4
  %wait.i = getelementptr inbounds %struct.qedf_ioreq, ptr %call9, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.151, ptr noundef nonnull @init_completion.__key) #10
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fcport) #10
  %sq_mem_size.i = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 18
  %35 = ptrtoint ptr %sq_mem_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sq_mem_size.i, align 4
  %div13.i = lshr i32 %36, 3
  %sq_prod_idx.i = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 15
  %37 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sq_prod_idx.i, align 4
  %inc.i = add i16 %38, 1
  store i16 %inc.i, ptr %sq_prod_idx.i, align 4
  %fw_sq_prod_idx.i = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 16
  %39 = ptrtoint ptr %fw_sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %fw_sq_prod_idx.i, align 2
  %inc2.i = add i16 %40, 1
  store i16 %inc2.i, ptr %fw_sq_prod_idx.i, align 2
  %41 = trunc i32 %div13.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %41)
  %cmp.i = icmp eq i16 %inc.i, %41
  br i1 %cmp.i, label %if.then.i, label %if.end23.qedf_get_sqe_idx.exit_crit_edge

if.end23.qedf_get_sqe_idx.exit_crit_edge:         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %qedf_get_sqe_idx.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %sq_prod_idx.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %sq_prod_idx.i, align 4
  br label %qedf_get_sqe_idx.exit

qedf_get_sqe_idx.exit:                            ; preds = %if.then.i, %if.end23.qedf_get_sqe_idx.exit_crit_edge
  %sq = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 13
  %43 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sq, align 4
  %idxprom = zext i16 %38 to i32
  %arrayidx = getelementptr %struct.fcoe_wqe, ptr %44, i32 %idxprom
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 0, ptr %arrayidx, align 4
  tail call fastcc void @qedf_init_task(ptr noundef %fcport, ptr noundef nonnull %call9, ptr noundef %add.ptr.i, ptr noundef %arrayidx)
  %46 = ptrtoint ptr %fw_sq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %fw_sq_prod_idx.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !367
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !369
  tail call void @arm_heavy_mb() #10
  %dbell.sroa.11.0.insert.ext.i = zext i16 %47 to i32
  %dbell.sroa.0.0.insert.insert.i = or i32 %dbell.sroa.11.0.insert.ext.i, -2080374784
  %48 = tail call i32 @llvm.bswap.i32(i32 %dbell.sroa.0.0.insert.insert.i) #10
  %p_doorbell.i = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 9
  %49 = ptrtoint ptr %p_doorbell.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %p_doorbell.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #10, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !371
  tail call void @arm_heavy_mb() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fcport, i32 noundef %call38) #10
  %flags43 = getelementptr inbounds %struct.qedf_ioreq, ptr %call9, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags43) #10
  %call45 = tail call i32 @wait_for_completion_timeout(ptr noundef %tm_done, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.else51

if.then47:                                        ; preds = %qedf_get_sqe_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_execute_tmf, i32 noundef 2369, ptr noundef nonnull @.str.158) #10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags43) #10
  %51 = ptrtoint ptr %sc_cmd24 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %sc_cmd24, align 4
  br label %if.end58

if.else51:                                        ; preds = %qedf_get_sqe_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  %fcp_rsp_code = getelementptr inbounds %struct.qedf_ioreq, ptr %call9, i32 0, i32 30
  %52 = ptrtoint ptr %fcp_rsp_code to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %fcp_rsp_code, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp53 = icmp eq i8 %53, 0
  %. = select i1 %cmp53, i32 8194, i32 8195
  br label %if.end58

if.end58:                                         ; preds = %if.else51, %if.then47
  %rc.0 = phi i32 [ 8195, %if.then47 ], [ %., %if.else51 ]
  %54 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags4, align 4
  %56 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool61.not = icmp eq i32 %56, 0
  br i1 %tobool61.not, label %if.end64, label %if.then62

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_execute_tmf, i32 noundef 2386, ptr noundef nonnull @.str.159) #10
  br label %no_flush

if.end64:                                         ; preds = %if.end58
  %refcount = getelementptr inbounds %struct.qedf_ioreq, ptr %call9, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !358
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !359
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i140, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !360

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i140:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void @qedf_release_cmd(ptr noundef %refcount) #10, !callees !362
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i140, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  br i1 %cmp, label %if.then69, label %if.else70

if.then69:                                        ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qedf_flush_active_ios(ptr noundef %fcport, i32 noundef %conv)
  br label %no_flush

if.else70:                                        ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qedf_flush_active_ios(ptr noundef %fcport, i32 noundef -1)
  br label %no_flush

no_flush:                                         ; preds = %if.else70, %if.then69, %if.then62
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %rc.0)
  %cmp72.not = icmp eq i32 %rc.0, 8194
  br i1 %cmp72.not, label %if.else76, label %no_flush.if.then74_crit_edge

no_flush.if.then74_crit_edge:                     ; preds = %no_flush
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then74

if.then74:                                        ; preds = %no_flush.if.then74_crit_edge, %if.then11, %if.then6
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_execute_tmf, i32 noundef 2400, ptr noundef nonnull @.str.160) #10
  br label %cleanup

if.else76:                                        ; preds = %no_flush
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_execute_tmf, i32 noundef 2403, ptr noundef nonnull @.str.161) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else76, %if.then74, %if.then
  %retval.0 = phi i32 [ 8195, %if.then ], [ 8195, %if.then74 ], [ 8194, %if.else76 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_process_tmf_compl(ptr nocapture noundef readnone %qedf, ptr nocapture noundef readonly %cqe, ptr noundef %io_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #10
  %cqe_info = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3
  tail call fastcc void @qedf_parse_fcp_rsp(ptr noundef %io_req, ptr noundef %cqe_info)
  %sc_cmd = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 2
  %0 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sc_cmd, align 4
  %tm_done = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 15
  tail call void @complete(ptr noundef %tm_done) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_process_unsol_compl(ptr noundef %qedf, i16 noundef zeroext %que_idx, ptr nocapture noundef readonly %cqe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_info = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3
  %pkt_len = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3, i32 0, i32 7
  %0 = ptrtoint ptr %pkt_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pkt_len, align 2
  %hi = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3, i32 0, i32 3
  %2 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hi, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %cqe_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cqe_info, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %opaque = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3, i32 0, i32 4
  %hi3 = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3, i32 0, i32 5
  %8 = ptrtoint ptr %hi3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hi3, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %opaque to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opaque, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %bdq_prod_idx = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 44
  %14 = ptrtoint ptr %bdq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bdq_prod_idx, align 8
  %conv = zext i16 %15 to i32
  %conv6 = zext i16 %1 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_unsol_compl, i32 noundef 2540, i32 noundef 512, ptr noundef nonnull @.str.132, i32 noundef %4, i32 noundef %7, i32 noundef %10, i32 noundef %13, i32 noundef %conv, i32 noundef %conv6) #10
  %16 = ptrtoint ptr %opaque to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opaque, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %18)
  %cmp = icmp ugt i32 %18, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_unsol_compl, i32 noundef 2545, ptr noundef nonnull @.str.133, i32 noundef %18) #10
  br label %do.body63

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.qedf_ctx, ptr %qedf, i32 0, i32 35, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_unsol_compl, i32 noundef 2552, ptr noundef nonnull @.str.134) #10
  br label %do.body63

if.end13:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedf_dump_frames to i32))
  %21 = load i32, ptr @qedf_dump_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not = icmp eq i32 %21, 0
  br i1 %tobool14.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_unsol_compl, i32 noundef 2558, i32 noundef 512, ptr noundef nonnull @.str.135, ptr noundef nonnull %20) #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %20, i32 noundef %conv6, i1 noundef zeroext false) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %sub = add nsw i32 %conv6, -24
  %lport = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 2
  %rem.i = and i32 %conv6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lport, align 16
  %call.i = tail call ptr @fc_frame_alloc_fill(ptr noundef %23, i32 noundef %sub) #10
  br label %fc_frame_alloc.exit

if.else.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef %sub) #10
  br label %fc_frame_alloc.exit

fc_frame_alloc.exit:                              ; preds = %if.else.i, %if.then.i
  %fp.0.i = phi ptr [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %tobool20.not = icmp eq ptr %fp.0.i, null
  br i1 %tobool20.not, label %if.then21, label %if.end23

if.then21:                                        ; preds = %fc_frame_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_unsol_compl, i32 noundef 2567, ptr noundef nonnull @.str.138) #10
  br label %do.body63

if.end23:                                         ; preds = %fc_frame_alloc.exit
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 6
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %25)
  %cmp.i = icmp ult i32 %25, 24
  br i1 %cmp.i, label %do.end.i, label %if.end23.fc_frame_header_get.exit_crit_edge, !prof !364

if.end23.fc_frame_header_get.exit_crit_edge:      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.162, i32 noundef 161, i32 noundef 9, ptr noundef null) #10
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.end23.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i, align 4
  %28 = call ptr @memcpy(ptr %27, ptr %20, i32 %conv6)
  %fh_s_id = getelementptr inbounds %struct.fc_frame_header, ptr %27, i32 0, i32 3
  %29 = ptrtoint ptr %fh_s_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fh_s_id, align 1
  %conv.i = zext i8 %30 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr %struct.fc_frame_header, ptr %27, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %32 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.fc_frame_header, ptr %27, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %34 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %fh_d_id = getelementptr inbounds %struct.fc_frame_header, ptr %27, i32 0, i32 1
  %35 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fh_d_id, align 1
  %conv.i161 = zext i8 %36 to i32
  %shl.i162 = shl nuw nsw i32 %conv.i161, 16
  %arrayidx1.i163 = getelementptr %struct.fc_frame_header, ptr %27, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %arrayidx1.i163 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx1.i163, align 1
  %conv2.i164 = zext i8 %38 to i32
  %shl3.i165 = shl nuw nsw i32 %conv2.i164, 8
  %or.i166 = or i32 %shl3.i165, %shl.i162
  %arrayidx4.i167 = getelementptr %struct.fc_frame_header, ptr %27, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %arrayidx4.i167 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx4.i167, align 1
  %conv5.i168 = zext i8 %40 to i32
  %or6.i169 = or i32 %or.i166, %conv5.i168
  %41 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %27, align 4
  %conv30 = zext i8 %42 to i32
  %fh_type = getelementptr inbounds %struct.fc_frame_header, ptr %27, i32 0, i32 4
  %43 = ptrtoint ptr %fh_type to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fh_type, align 4
  %conv31 = zext i8 %44 to i32
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %46)
  %cmp.i.i = icmp ugt i32 %46, 24
  br i1 %cmp.i.i, label %fc_frame_payload_get.exit.i, label %fc_frame_header_get.exit.fc_frame_payload_op.exit_crit_edge

fc_frame_header_get.exit.fc_frame_payload_op.exit_crit_edge: ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_payload_op.exit

fc_frame_payload_get.exit.i:                      ; preds = %fc_frame_header_get.exit
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.fc_frame_header, ptr %48, i32 1
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %fc_frame_payload_get.exit.i.fc_frame_payload_op.exit_crit_edge, label %if.end.i

fc_frame_payload_get.exit.i.fc_frame_payload_op.exit_crit_edge: ; preds = %fc_frame_payload_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_payload_op.exit

if.end.i:                                         ; preds = %fc_frame_payload_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr.i.i, align 1
  %phi.cast = zext i8 %50 to i32
  br label %fc_frame_payload_op.exit

fc_frame_payload_op.exit:                         ; preds = %if.end.i, %fc_frame_payload_get.exit.i.fc_frame_payload_op.exit_crit_edge, %fc_frame_header_get.exit.fc_frame_payload_op.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.end.i ], [ 0, %fc_frame_payload_get.exit.i.fc_frame_payload_op.exit_crit_edge ], [ 0, %fc_frame_header_get.exit.fc_frame_payload_op.exit_crit_edge ]
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_unsol_compl, i32 noundef 2578, ptr noundef nonnull @.str.139, i32 noundef %or6.i, i32 noundef %or6.i169, i32 noundef %conv30, i32 noundef %conv31, i32 noundef %retval.0.i) #10
  %call34 = tail call i32 @fcoe_fc_crc(ptr noundef nonnull %fp.0.i) #10
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3
  %51 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %cb.i, align 8
  %fr_seq.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 4
  %52 = ptrtoint ptr %fr_seq.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %fr_seq.i, align 4
  %fr_flags.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 20
  %53 = ptrtoint ptr %fr_flags.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %fr_flags.i, align 4
  %fr_encaps.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 21
  %54 = ptrtoint ptr %fr_encaps.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %fr_encaps.i, align 1
  %55 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lport, align 16
  store ptr %56, ptr %cb.i, align 8
  %fr_sof = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 18
  %57 = ptrtoint ptr %fr_sof to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 46, ptr %fr_sof, align 2
  %fr_eof = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 19
  %58 = ptrtoint ptr %fr_eof to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 66, ptr %fr_eof, align 1
  %neg = xor i32 %call34, -1
  %59 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %fr_crc = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 12
  %60 = ptrtoint ptr %fr_crc to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %fr_crc, align 4
  %io_mempool = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 50
  %61 = ptrtoint ptr %io_mempool to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io_mempool, align 4
  %call46 = tail call noalias ptr @mempool_alloc(ptr noundef %62, i32 noundef 2592) #10
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.then48, label %if.end50

if.then48:                                        ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_unsol_compl, i32 noundef 2595, ptr noundef nonnull @.str.140) #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %fp.0.i, i32 noundef 0) #10
  br label %do.body63

if.end50:                                         ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #12
  %63 = call ptr @memset(ptr %call46, i32 0, i32 84)
  tail call void @__init_work(ptr noundef nonnull %call46, i32 noundef 0) #10
  %64 = ptrtoint ptr %call46 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -64, ptr %call46, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call46, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.141, ptr noundef nonnull @qedf_process_unsol_compl.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry54 = getelementptr inbounds %struct.work_struct, ptr %call46, i32 0, i32 1
  %65 = ptrtoint ptr %entry54 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %entry54, ptr %entry54, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call46, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %entry54, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %call46, i32 0, i32 2
  %67 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @qedf_fp_io_handler, ptr %func, align 4
  %cqe56 = getelementptr inbounds %struct.qedf_io_work, ptr %call46, i32 0, i32 1
  %68 = call ptr @memcpy(ptr %cqe56, ptr %cqe, i32 32)
  %qedf57 = getelementptr inbounds %struct.qedf_io_work, ptr %call46, i32 0, i32 2
  %69 = ptrtoint ptr %qedf57 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %qedf, ptr %qedf57, align 4
  %fp58 = getelementptr inbounds %struct.qedf_io_work, ptr %call46, i32 0, i32 3
  %70 = ptrtoint ptr %fp58 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %fp.0.i, ptr %fp58, align 4
  %71 = tail call i32 @llvm.read_register.i32(metadata !348) #10
  %and.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedf_io_wq to i32))
  %75 = load ptr, ptr @qedf_io_wq, align 4
  %call61 = tail call zeroext i1 @queue_work_on(i32 noundef %74, ptr noundef %75, ptr noundef nonnull %call46) #10
  br label %do.body63

do.body63:                                        ; preds = %if.end50, %if.then48, %if.then21, %if.then11, %if.then
  %hba_lock = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 12
  %call67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hba_lock) #10
  %76 = ptrtoint ptr %bdq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %bdq_prod_idx, align 8
  %inc = add i16 %77, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %inc)
  %cmp75 = icmp eq i16 %inc, -1
  %spec.select = select i1 %cmp75, i16 0, i16 %inc
  %78 = ptrtoint ptr %bdq_prod_idx to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %spec.select, ptr %bdq_prod_idx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !374
  tail call void @arm_heavy_mb() #10
  %79 = ptrtoint ptr %bdq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %bdq_prod_idx, align 8
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  %bdq_primary_prod = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 42
  %82 = ptrtoint ptr %bdq_primary_prod to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bdq_primary_prod, align 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %83, i16 %81) #10, !srcloc !375
  %84 = ptrtoint ptr %bdq_primary_prod to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bdq_primary_prod, align 16
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %85) #10, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !378
  tail call void @arm_heavy_mb() #10
  %87 = ptrtoint ptr %bdq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %bdq_prod_idx, align 8
  %89 = tail call i16 @llvm.bswap.i16(i16 %88)
  %bdq_secondary_prod = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 43
  %90 = ptrtoint ptr %bdq_secondary_prod to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bdq_secondary_prod, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %91, i16 %89) #10, !srcloc !375
  %92 = ptrtoint ptr %bdq_secondary_prod to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bdq_secondary_prod, align 4
  %94 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %93) #10, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !379
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hba_lock, i32 noundef %call67) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_fc_crc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_fp_io_handler(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_restart_rport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_process_seq_cleanup_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedf_send_rrq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_initiator_rw_fcoe_task(ptr noundef, ptr noundef, [2 x i32], i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_frame_alloc_fill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_fc_frame_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 163)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 163)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !44, !46, !48, !50, !52, !53, !55, !57, !59, !60, !62, !63, !65, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !114, !116, !118, !120, !122, !124, !126, !127, !129, !131, !133, !135, !137, !139, !140, !142, !144, !146, !148, !150, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !198, !200, !202, !204, !206, !208, !210, !212, !214, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !257, !259, !260, !262, !263, !264, !266, !268, !270, !272, !274, !276, !278, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !298, !300, !302, !304, !306, !308, !310, !312, !314, !315, !317, !318, !320, !322, !323, !325, !326, !328, !329, !331, !332, !334, !336, !338, !340, !342, !344, !346}
!llvm.named.register.sp = !{!348}
!llvm.module.flags = !{!349, !350, !351, !352, !353, !354, !355, !356}
!llvm.ident = !{!357}

!0 = !{ptr @__func__.qedf_cmd_mgr_free, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 121, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.qedf_cmd_mgr_alloc, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 185, i32 3}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 190, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 195, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 202, i32 3}
!12 = !{ptr @qedf_cmd_mgr_alloc.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 207, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @qedf_cmd_mgr_alloc.__key.6, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 216, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @qedf_cmd_mgr_alloc.__key.8, !16, !"__key", i1 false, i1 false}
!19 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @qedf_cmd_mgr_alloc.__key.10, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 220, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @qedf_cmd_mgr_alloc.__key.12, !21, !"__key", i1 false, i1 false}
!24 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 227, i32 4}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 236, i32 4}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 249, i32 4}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 261, i32 3}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 269, i32 4}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 281, i32 4}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 287, i32 2}
!39 = !{ptr @__func__.qedf_alloc_cmd, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 312, i32 3}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 321, i32 3}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 329, i32 3}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 353, i32 3}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 382, i32 3}
!50 = !{ptr @__func__.qedf_release_cmd, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 441, i32 3}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 444, i32 3}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 455, i32 3}
!57 = !{ptr @__func__.qedf_init_mp_task, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 687, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__func__.qedf_post_io_req, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 881, i32 3}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 890, i32 3}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 908, i32 3}
!67 = !{ptr @__func__.qedf_queuecommand, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 946, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 956, i32 3}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 965, i32 3}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 975, i32 3}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 985, i32 3}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 992, i32 3}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1039, i32 3}
!82 = !{ptr @__func__.qedf_scsi_completion, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1139, i32 3}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1149, i32 3}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1154, i32 3}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1160, i32 3}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1166, i32 3}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1180, i32 3}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1192, i32 3}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1203, i32 3}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1230, i32 4}
!101 = distinct !{null, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1274, i32 6}
!103 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1279, i32 5}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1292, i32 5}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1299, i32 3}
!109 = !{ptr @__func__.qedf_scsi_done, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1328, i32 3}
!111 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1333, i32 3}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1353, i32 3}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1370, i32 3}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1376, i32 3}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1383, i32 3}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1393, i32 2}
!124 = !{ptr @__func__.qedf_process_warning_compl, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1439, i32 3}
!126 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1445, i32 2}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1447, i32 2}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1451, i32 2}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1472, i32 4}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1496, i32 3}
!137 = !{ptr @__func__.qedf_process_error_detect, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1506, i32 3}
!139 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1511, i32 3}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1516, i32 3}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1521, i32 2}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1537, i32 3}
!148 = !{ptr @__func__.qedf_flush_active_ios, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1597, i32 3}
!150 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1603, i32 3}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1610, i32 3}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1618, i32 4}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1622, i32 5}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1633, i32 2}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1637, i32 2}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1660, i32 6}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1680, i32 4}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1690, i32 6}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1706, i32 5}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1726, i32 5}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1734, i32 4}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1738, i32 5}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1745, i32 5}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1764, i32 4}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1784, i32 4}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1789, i32 3}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1801, i32 2}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1808, i32 4}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1814, i32 5}
!191 = !{ptr @.str.92, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1826, i32 7}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1845, i32 2}
!195 = !{ptr @__func__.qedf_initiate_abts, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1868, i32 3}
!197 = !{ptr @.str.94, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.95, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1877, i32 3}
!200 = !{ptr @.str.96, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1885, i32 3}
!202 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1891, i32 3}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1898, i32 3}
!206 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1904, i32 3}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1912, i32 3}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1931, i32 2}
!212 = !{ptr @__func__.qedf_process_abts_compl, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1962, i32 2}
!214 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.103, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1972, i32 3}
!217 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1984, i32 3}
!219 = !{ptr @.str.105, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1991, i32 3}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1997, i32 3}
!223 = !{ptr @.str.107, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2002, i32 4}
!225 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2017, i32 3}
!227 = !{ptr @.str.109, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2022, i32 3}
!229 = !{ptr @.str.110, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2030, i32 4}
!231 = !{ptr @__func__.qedf_init_mp_req, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2052, i32 2}
!233 = !{ptr @.str.111, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.112, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2066, i32 3}
!236 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2074, i32 3}
!238 = !{ptr @.str.114, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2085, i32 3}
!240 = !{ptr @.str.115, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2093, i32 3}
!242 = !{ptr @__func__.qedf_initiate_cleanup, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2161, i32 3}
!244 = !{ptr @.str.116, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2183, i32 3}
!246 = !{ptr @.str.117, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2200, i32 3}
!248 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2209, i32 2}
!250 = !{ptr @.str.119, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2238, i32 3}
!252 = !{ptr @.str.120, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2242, i32 3}
!254 = !{ptr @__func__.qedf_process_cleanup_compl, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2277, i32 2}
!256 = !{ptr @.str.121, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @__func__.qedf_initiate_tmf, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2422, i32 2}
!259 = !{ptr @.str.122, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.123, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2432, i32 2}
!262 = !{ptr @.str.124, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.125, !261, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.126, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2439, i32 3}
!266 = !{ptr @.str.127, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2446, i32 3}
!268 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2456, i32 3}
!270 = !{ptr @.str.129, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2470, i32 3}
!272 = !{ptr @.str.130, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2489, i32 4}
!274 = !{ptr @.str.131, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2492, i32 4}
!276 = !{ptr @__func__.qedf_process_unsol_compl, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2534, i32 2}
!278 = !{ptr @.str.132, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.133, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2544, i32 3}
!281 = !{ptr @.str.134, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2551, i32 3}
!283 = !{ptr @.str.135, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2557, i32 3}
!285 = !{ptr @.str.136, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2559, i32 18}
!287 = !{ptr @.str.137, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2559, i32 32}
!289 = !{ptr @.str.138, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2567, i32 3}
!291 = !{ptr @.str.139, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2575, i32 2}
!293 = !{ptr @.str.140, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2594, i32 3}
!295 = !{ptr @qedf_process_unsol_compl.__key, !296, !"__key", i1 false, i1 false}
!296 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2601, i32 2}
!297 = !{ptr @.str.141, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @__func__.qedf_cmd_timeout, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 28, i32 3}
!300 = !{ptr @.str.142, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 37, i32 4}
!302 = !{ptr @.str.143, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 43, i32 3}
!304 = !{ptr @.str.144, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 67, i32 4}
!306 = !{ptr @.str.145, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 81, i32 3}
!308 = !{ptr @.str.146, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 93, i32 3}
!310 = !{ptr @.str.147, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 100, i32 3}
!312 = !{ptr @__func__.qedf_map_sg, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 521, i32 3}
!314 = !{ptr @.str.148, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @__func__.qedf_parse_fcp_rsp, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1087, i32 3}
!317 = !{ptr @.str.149, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.150, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1094, i32 3}
!320 = !{ptr @init_completion.__key, !321, !"__key", i1 false, i1 false}
!321 = !{!"../include/linux/completion.h", i32 87, i32 2}
!322 = !{ptr @.str.151, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @__func__.qedf_flush_els_req, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 1557, i32 2}
!325 = !{ptr @.str.152, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @__func__.qedf_drain_request, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2126, i32 3}
!328 = !{ptr @.str.153, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @__func__.qedf_execute_tmf, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2302, i32 3}
!331 = !{ptr @.str.154, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.155, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2308, i32 3}
!334 = !{ptr @.str.156, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2315, i32 3}
!336 = !{ptr @.str.157, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2344, i32 2}
!338 = !{ptr @.str.158, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2369, i32 3}
!340 = !{ptr @.str.159, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2385, i32 3}
!342 = !{ptr @.str.160, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2400, i32 3}
!344 = !{ptr @.str.161, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/qedf/qedf_io.c", i32 2403, i32 3}
!346 = !{ptr @.str.162, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../include/scsi/fc_frame.h", i32 161, i32 2}
!348 = !{!"sp"}
!349 = !{i32 1, !"wchar_size", i32 2}
!350 = !{i32 1, !"min_enum_size", i32 4}
!351 = !{i32 8, !"branch-target-enforcement", i32 0}
!352 = !{i32 8, !"sign-return-address", i32 0}
!353 = !{i32 8, !"sign-return-address-all", i32 0}
!354 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!355 = !{i32 7, !"uwtable", i32 1}
!356 = !{i32 7, !"frame-pointer", i32 2}
!357 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!358 = !{i64 2148638628}
!359 = !{i64 2148553068, i64 2148553100, i64 2148553129, i64 2148553163, i64 2148553194, i64 2148553217}
!360 = !{!"branch_weights", i32 2000, i32 1}
!361 = !{i64 2150681736}
!362 = !{ptr @fc_rport_destroy, ptr @qedf_release_cmd}
!363 = !{i64 2148550603, i64 2148550635, i64 2148550664, i64 2148550698, i64 2148550729, i64 2148550752}
!364 = !{!"branch_weights", i32 1, i32 2000}
!365 = !{i64 2148549073, i64 2148549099, i64 2148549128, i64 2148549162, i64 2148549193, i64 2148549216}
!366 = !{i64 2148551538, i64 2148551564, i64 2148551593, i64 2148551627, i64 2148551658, i64 2148551681}
!367 = !{i64 2157472003}
!368 = !{i64 2157472087}
!369 = !{i64 2157472267}
!370 = !{i64 6158579}
!371 = !{i64 2157472624}
!372 = !{i8 0, i8 2}
!373 = !{i64 1034586, i64 1034610, i64 1034631, i64 1034648, i64 1034665}
!374 = !{i64 2157512754}
!375 = !{i64 6157959}
!376 = !{i64 6158159}
!377 = !{i64 2157513485}
!378 = !{i64 2157513721}
!379 = !{i64 2157514462}
