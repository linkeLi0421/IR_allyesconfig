; ModuleID = '/llk/IR_all_yes/drivers/scsi/qedf/qedf_main.c_pt.bc'
source_filename = "../drivers/scsi/qedf/qedf_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.105 }
%union.anon.105 = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.qed_fcoe_cb_ops = type { %struct.qed_common_cb_ops, ptr }
%struct.qed_common_cb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qedf_debugfs_ops = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_ll2_cb_ops = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fcoe_percpu_s = type { ptr, %struct.work_struct, %struct.sk_buff_head, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.qedf_ctx = type { %struct.qedf_dbg_ctx, %struct.fcoe_ctlr, ptr, [6 x i8], %struct.atomic_t, %struct.atomic_t, i32, i8, ptr, %struct.qed_dev_fcoe_info, %struct.qed_int_info, i16, %struct.spinlock, ptr, i64, i64, [6 x i8], %struct.list_head, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.completion, %struct.completion, %struct.atomic_t, %struct.timer_list, i32, i32, i8, ptr, ptr, i32, [256 x %struct.qedf_bdq_buf], ptr, i32, i32, ptr, i32, i8, ptr, ptr, i16, ptr, %struct.qed_fcoe_tid, ptr, %struct.qed_pf_params, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i32, i32, ptr, i32, [2048 x %struct.qedf_io_log], %struct.spinlock, i16, i8, i32, i32, i32, %struct.mutex, i64, i64, i64, i64, i64, i8, i8, i8, i8, %struct.mutex, [8 x i8] }
%struct.qedf_dbg_ctx = type { i32, ptr, ptr }
%struct.fcoe_ctlr = type { i32, i32, ptr, ptr, %struct.list_head, ptr, i16, i32, i32, i32, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, ptr, %struct.rnd_state, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], ptr, ptr, ptr, %struct.mutex, %struct.spinlock }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.qed_dev_fcoe_info = type { %struct.qed_dev_info, ptr, ptr, i64, i64, i8 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.fcoe_fcf = type { %struct.list_head, %struct.work_struct, ptr, ptr, i32, i64, i64, i32, i16, [6 x i8], [6 x i8], i8, i8, i16, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fc_rport_priv = type { ptr, ptr, %struct.kref, i32, %struct.fc_rport_identifiers, i16, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, %struct.delayed_work, i32, ptr, %struct.list_head, %struct.work_struct, i32, i16, %struct.callback_head, i16, i8, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.fc_rport_identifiers = type { i64, i64, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.qed_link_output = type { i8, [3 x i32], [3 x i32], [3 x i32], i32, i8, i8, i8, i32, i8, i8, i8, %struct.qed_link_eee_params, i32, i32 }
%struct.qed_link_eee_params = type { i32, i8, i8, i8, i8 }
%struct.qed_common_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qedf_io_work = type { %struct.work_struct, %struct.fcoe_cqe, ptr, ptr }
%struct.fcoe_cqe = type { i32, i16, i16, %union.fcoe_cqe_info }
%union.fcoe_cqe_info = type { %struct.fcoe_cqe_rsp_info }
%struct.fcoe_cqe_rsp_info = type { %struct.fcoe_fcp_rsp_flags, i8, i16, i32, i32, i32, i16, i8, i8, i32 }
%struct.fcoe_fcp_rsp_flags = type { i8 }
%struct.qedf_cmd_mgr = type { ptr, i16, ptr, [2048 x %struct.qedf_ioreq], %struct.spinlock, %struct.atomic_t }
%struct.qedf_ioreq = type { %struct.list_head, i16, ptr, i8, i8, i8, ptr, %struct.atomic_t, i32, i32, i32, %struct.kref, ptr, ptr, %struct.delayed_work, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, %struct.qedf_mp_req, ptr, ptr, i32, i32, i32, i8, %struct.delayed_work, i32, i32, i32, i32, i8, i32 }
%struct.qedf_mp_req = type { i32, ptr, i32, ptr, i32, %struct.fc_frame_header, i32, ptr, i32, ptr, i32, %struct.fc_frame_header }
%struct.qedf_rport = type { %struct.spinlock, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i16, i16, i16, i32, ptr, i32, i32, i32, i32, %struct.list_head }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.qed_mfw_tlv_fcoe = type { i8, i8, i32, i8, i32, i8, i32, i8, i32, i8, i8, i8, i8, i8, i32, i8, [8 x i8], i8, i16, i8, [3 x i8], i8, [8 x i8], i8, [8 x i8], i8, [8 x i8], i8, i8, i8, [3 x i8], i8, i8, i8, i16, i8, i16, i8, i16, i8, i8, i8, i64, i8, i64, i8, i16, i8, i16, i8, i64, i8, i64, i8, i64, i8, i64, i8, i16, i8, [5 x i32], [5 x i8], [5 x %struct.qed_mfw_tlv_time], i16, i8, i16, i8, i16, i8, i16, i8, i16, i8, [4 x i32], [4 x i8], %struct.qed_mfw_tlv_time, [4 x i32], [4 x i8], %struct.qed_mfw_tlv_time, i32, i8, %struct.qed_mfw_tlv_time, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i32], [5 x i8], [5 x %struct.qed_mfw_tlv_time], [5 x i32], [5 x i8], [5 x %struct.qed_mfw_tlv_time], i8, i8, i8, i8, i8, i8, [5 x i32], [5 x i8], [5 x %struct.qed_mfw_tlv_time], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i32], [5 x i8], [5 x %struct.qed_mfw_tlv_time], i8, i8, [4 x i32], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i32], [5 x i8], [5 x %struct.qed_mfw_tlv_time] }
%struct.qed_mfw_tlv_time = type { i8, i8, i8, i8, i8, i16, i16 }
%struct.fc_host_attrs = type { i64, i64, i64, i32, [32 x i8], i32, i32, i16, i32, i32, i32, i32, [64 x i8], [64 x i8], [256 x i8], [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [8 x i8], [256 x i8], i32, i32, i32, [32 x i8], i32, i64, [256 x i8], [256 x i8], i32, %struct.fc_fpin_stats, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i16, [20 x i8], ptr, [20 x i8], ptr, ptr, i8 }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qed_fcoe_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_fcoe_stats = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.133, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.133 = type { ptr }
%struct.qed_generic_tlvs = type { i16, [3 x [6 x i8]] }
%struct.qed_ll2_params = type { i16, i8, i8, i8, i8, [6 x i8] }
%struct.qed_link_params = type { i8, i32, i8, [3 x i32], i32, i32, i32, %struct.qed_link_eee_params, i32 }
%struct.qed_slowpath_params = type { i32, i8, i8, i8, i8, [12 x i8] }
%struct.qed_probe_params = type { i32, i32, i8, i8, i8 }
%struct.regpair = type { i32, i32 }
%struct.scsi_bd = type { %struct.regpair, %union.scsi_opaque }
%union.scsi_opaque = type { %struct.regpair }
%struct.global_queue = type { ptr, i32, i32, i32, i32, ptr, i32, i32 }
%struct.qed_ll2_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.qedf_fastpath = type { i16, ptr, ptr, i32, i32 }
%struct.msix_entry = type { i32, i16 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_rport_libfc_priv = type { ptr, i32, i16, i32, i32 }
%struct.qed_dcbx_operational_params = type { %struct.qed_dcbx_app_prio, %struct.qed_dcbx_params, i8, i8, i8, i8, i8, i32 }
%struct.qed_dcbx_app_prio = type { i8, i8, i8, i8, i8 }
%struct.qed_dcbx_params = type { [32 x %struct.qed_app_entry], i16, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], %struct.qed_dbcx_pfc_params, i8 }
%struct.qed_app_entry = type { i8, i32, i8, i8, i16, i32 }
%struct.qed_dbcx_pfc_params = type { i8, i8, [8 x i8], i8 }
%struct.qed_sb_info = type { ptr, i32, i32, i16, ptr, i8, ptr }
%struct.status_block = type { [12 x i16], i32, i32 }
%struct.qedf_skb_work = type { %struct.work_struct, ptr, ptr }
%struct.fcoe_crc_eof = type { i32, i8, [3 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.fcoe_hdr = type { i8, [12 x i8], i8 }
%struct.fc_vport = type { i32, i32, i64, i64, i32, i32, i32, [64 x i8], ptr, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.work_struct }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.91, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.91 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qed_fcoe_params_offload = type { i32, i32, i32, [6 x i8], [6 x i8], i16, i16, i16, i16, i16, %struct.fc_addr_nw, i8, %struct.fc_addr_nw, i8, i8 }
%struct.fc_addr_nw = type { i8, i8, i8 }

@__param_str_dev_loss_tmo = internal constant [18 x i8] c"qedf.dev_loss_tmo\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@qedf_dev_loss_tmo = internal global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@__param_dev_loss_tmo = internal constant %struct.kernel_param { ptr @__param_str_dev_loss_tmo, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.105 { ptr @qedf_dev_loss_tmo } }, section "__param", align 4
@__UNIQUE_ID_dev_loss_tmotype391 = internal constant [31 x i8] c"qedf.parmtype=dev_loss_tmo:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dev_loss_tmo392 = internal constant [84 x i8] c"qedf.parm=dev_loss_tmo: dev_loss_tmo setting for attached remote ports (default 60)\00", section ".modinfo", align 1
@qedf_debug = dso_local global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [11 x i8] c"qedf.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @qedf_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype393 = internal constant [25 x i8] c"qedf.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug394 = internal constant [71 x i8] c"qedf.parm=debug: Debug mask. Pass '1' to enable default debugging mask\00", section ".modinfo", align 1
@__param_str_fipvlan_retries = internal constant [21 x i8] c"qedf.fipvlan_retries\00", align 1
@qedf_fipvlan_retries = internal global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@__param_fipvlan_retries = internal constant %struct.kernel_param { ptr @__param_str_fipvlan_retries, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.105 { ptr @qedf_fipvlan_retries } }, section "__param", align 4
@__UNIQUE_ID_fipvlan_retriestype395 = internal constant [34 x i8] c"qedf.parmtype=fipvlan_retries:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fipvlan_retries396 = internal constant [96 x i8] c"qedf.parm=fipvlan_retries: Number of FIP VLAN requests to attempt before giving up (default 60)\00", section ".modinfo", align 1
@__param_str_fallback_vlan = internal constant [19 x i8] c"qedf.fallback_vlan\00", align 1
@qedf_fallback_vlan = internal global { i32, [28 x i8] } { i32 1002, [28 x i8] zeroinitializer }, align 32
@__param_fallback_vlan = internal constant %struct.kernel_param { ptr @__param_str_fallback_vlan, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.105 { ptr @qedf_fallback_vlan } }, section "__param", align 4
@__UNIQUE_ID_fallback_vlantype397 = internal constant [32 x i8] c"qedf.parmtype=fallback_vlan:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fallback_vlan398 = internal constant [82 x i8] c"qedf.parm=fallback_vlan: VLAN ID to try if fip vlan request fails (default 1002).\00", section ".modinfo", align 1
@__param_str_default_prio = internal constant [18 x i8] c"qedf.default_prio\00", align 1
@qedf_default_prio = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_default_prio = internal constant %struct.kernel_param { ptr @__param_str_default_prio, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.105 { ptr @qedf_default_prio } }, section "__param", align 4
@__UNIQUE_ID_default_priotype399 = internal constant [31 x i8] c"qedf.parmtype=default_prio:int\00", section ".modinfo", align 1
@__UNIQUE_ID_default_prio400 = internal constant [110 x i8] c"qedf.parm=default_prio: Override 802.1q priority for FIP and FCoE traffic (value between 0 and 7, default 3).\00", section ".modinfo", align 1
@__param_str_dump_frames = internal constant [17 x i8] c"qedf.dump_frames\00", align 1
@qedf_dump_frames = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dump_frames = internal constant %struct.kernel_param { ptr @__param_str_dump_frames, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @qedf_dump_frames } }, section "__param", align 4
@__UNIQUE_ID_dump_framestype401 = internal constant [30 x i8] c"qedf.parmtype=dump_frames:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dump_frames402 = internal constant [79 x i8] c"qedf.parm=dump_frames: Print the skb data of FIP and FCoE frames (default off)\00", section ".modinfo", align 1
@__param_str_queue_depth = internal constant [17 x i8] c"qedf.queue_depth\00", align 1
@qedf_queue_depth = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_queue_depth = internal constant %struct.kernel_param { ptr @__param_str_queue_depth, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.105 { ptr @qedf_queue_depth } }, section "__param", align 4
@__UNIQUE_ID_queue_depthtype403 = internal constant [30 x i8] c"qedf.parmtype=queue_depth:int\00", section ".modinfo", align 1
@__UNIQUE_ID_queue_depth404 = internal constant [119 x i8] c"qedf.parm=queue_depth: Sets the queue depth for all LUNs discovered by the qedf driver. Default is 0 (use OS default).\00", section ".modinfo", align 1
@__param_str_io_tracing = internal constant [16 x i8] c"qedf.io_tracing\00", align 1
@qedf_io_tracing = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_io_tracing = internal constant %struct.kernel_param { ptr @__param_str_io_tracing, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @qedf_io_tracing } }, section "__param", align 4
@__UNIQUE_ID_io_tracingtype405 = internal constant [29 x i8] c"qedf.parmtype=io_tracing:int\00", section ".modinfo", align 1
@__UNIQUE_ID_io_tracing406 = internal constant [100 x i8] c"qedf.parm=io_tracing: Enable logging of SCSI requests/completions into trace buffer. (default off).\00", section ".modinfo", align 1
@__param_str_max_lun = internal constant [13 x i8] c"qedf.max_lun\00", align 1
@qedf_max_lun = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_max_lun = internal constant %struct.kernel_param { ptr @__param_str_max_lun, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.105 { ptr @qedf_max_lun } }, section "__param", align 4
@__UNIQUE_ID_max_luntype407 = internal constant [26 x i8] c"qedf.parmtype=max_lun:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_lun408 = internal constant [99 x i8] c"qedf.parm=max_lun: Sets the maximum luns per target that the driver supports. (default 0xffffffff)\00", section ".modinfo", align 1
@__param_str_link_down_tmo = internal constant [19 x i8] c"qedf.link_down_tmo\00", align 1
@qedf_link_down_tmo = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_link_down_tmo = internal constant %struct.kernel_param { ptr @__param_str_link_down_tmo, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.105 { ptr @qedf_link_down_tmo } }, section "__param", align 4
@__UNIQUE_ID_link_down_tmotype409 = internal constant [32 x i8] c"qedf.parmtype=link_down_tmo:int\00", section ".modinfo", align 1
@__UNIQUE_ID_link_down_tmo410 = internal constant [97 x i8] c"qedf.parm=link_down_tmo: Delays informing the fcoe transport that the link is down by N seconds.\00", section ".modinfo", align 1
@__param_str_retry_delay = internal constant [17 x i8] c"qedf.retry_delay\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@qedf_retry_delay = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_retry_delay = internal constant %struct.kernel_param { ptr @__param_str_retry_delay, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @qedf_retry_delay } }, section "__param", align 4
@__UNIQUE_ID_retry_delaytype411 = internal constant [31 x i8] c"qedf.parmtype=retry_delay:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_retry_delay412 = internal constant [97 x i8] c"qedf.parm=retry_delay: Enable/disable handling of FCP_RSP IU retry delay handling (default off).\00", section ".modinfo", align 1
@__param_str_dcbx_no_wait = internal constant [18 x i8] c"qedf.dcbx_no_wait\00", align 1
@qedf_dcbx_no_wait = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_dcbx_no_wait = internal constant %struct.kernel_param { ptr @__param_str_dcbx_no_wait, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @qedf_dcbx_no_wait } }, section "__param", align 4
@__UNIQUE_ID_dcbx_no_waittype413 = internal constant [32 x i8] c"qedf.parmtype=dcbx_no_wait:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dcbx_no_wait414 = internal constant [119 x i8] c"qedf.parm=dcbx_no_wait: Do not wait for DCBX convergence to start sending FIP VLAN requests on link up (Default: off).\00", section ".modinfo", align 1
@__param_str_dp_module = internal constant [15 x i8] c"qedf.dp_module\00", align 1
@qedf_dp_module = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dp_module = internal constant %struct.kernel_param { ptr @__param_str_dp_module, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.105 { ptr @qedf_dp_module } }, section "__param", align 4
@__UNIQUE_ID_dp_moduletype415 = internal constant [29 x i8] c"qedf.parmtype=dp_module:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dp_module416 = internal constant [90 x i8] c"qedf.parm=dp_module: bit flags control for verbose printk passed qed module during probe.\00", section ".modinfo", align 1
@__param_str_dp_level = internal constant [14 x i8] c"qedf.dp_level\00", align 1
@qedf_dp_level = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_dp_level = internal constant %struct.kernel_param { ptr @__param_str_dp_level, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.105 { ptr @qedf_dp_level } }, section "__param", align 4
@__UNIQUE_ID_dp_leveltype417 = internal constant [28 x i8] c"qedf.parmtype=dp_level:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dp_level418 = internal constant [103 x i8] c"qedf.parm=dp_level: printk verbosity control passed to qed module  during probe (0-3: 0 more verbose).\00", section ".modinfo", align 1
@__param_str_enable_recovery = internal constant [21 x i8] c"qedf.enable_recovery\00", align 1
@qedf_enable_recovery = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_enable_recovery = internal constant %struct.kernel_param { ptr @__param_str_enable_recovery, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @qedf_enable_recovery } }, section "__param", align 4
@__UNIQUE_ID_enable_recoverytype419 = internal constant [35 x i8] c"qedf.parmtype=enable_recovery:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_recovery420 = internal constant [132 x i8] c"qedf.parm=enable_recovery:Enable/disable recovery on driver/firmware interface level errors 0 = Disabled, 1 = Enabled (Default: 1).\00", section ".modinfo", align 1
@__func__.qedf_set_vlan_id = private unnamed_addr constant [17 x i8] c"qedf_set_vlan_id\00", align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Setting vlan_id=0x%04x prio=%d.\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.qedf_send_flogi = private unnamed_addr constant [16 x i8] c"qedf_send_flogi\00", align 1
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tt.elsct_send not set.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fc_frame_alloc failed.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Sending FLOGI to reestablish session with switch.\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.qedf_wait_for_upload = private unnamed_addr constant [21 x i8] c"qedf_wait_for_upload\00", align 1
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Waiting for all uploads to complete num_offloads = 0x%x.\0A\00", [38 x i8] zeroinitializer }, align 32
@qedf_wait_for_upload.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/qedf/qedf_main.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Waiting for fcport %p portid=%06x.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Waiting for fcport %p.\0A\00", [40 x i8] zeroinitializer }, align 32
@qedf_ctx_soft_reset._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.qedf_ctx_soft_reset = private unnamed_addr constant [20 x i8] c"qedf_ctx_soft_reset\00", align 1
@qedf_ctx_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.qedf_ctx_soft_reset, ptr @.str.5, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot issue host reset on NPIV port.\0A\00", [57 x i8] zeroinitializer }, align 32
@qedf_ctx_soft_reset._entry_ptr = internal global ptr @qedf_ctx_soft_reset._entry, section ".printk_index", align 4
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Queuing link down work.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not upload all sessions.\0A\00", [32 x i8] zeroinitializer }, align 32
@qed_ops = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Physical link is not up.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Queue link up work.\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.qedf_process_cqe = private unnamed_addr constant [17 x i8] c"qedf_process_cqe\00", align 1
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"io_req is NULL for xid=0x%x.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"fcport is NULL for xid=0x%x io_req=%p.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Session not offloaded yet, fcport = %p.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Error detect CQE.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Cleanup CQE.\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Abort CQE.\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Dummy CQE.\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Local completion CQE.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Warning CQE.\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Max FCoE CQE.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Default CQE.\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.qedf_wq_grcdump = private unnamed_addr constant [16 x i8] c"qedf_wq_grcdump\00", align 1
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Collecting GRC dump.\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.qedf_schedule_hw_err_handler = private unnamed_addr constant [29 x i8] c"qedf_schedule_hw_err_handler\00", align 1
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Hardware error handler scheduled, event=%d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Already in recovery, not scheduling board disable work.\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.qedf_get_protocol_tlv_data = private unnamed_addr constant [27 x i8] c"qedf_get_protocol_tlv_data\00", align 1
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qedf is null.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Function is still probing.\0A\00", [36 x i8] zeroinitializer }, align 32
@qedf_stag_change_work._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.qedf_stag_change_work = private unnamed_addr constant [22 x i8] c"qedf_stag_change_work\00", align 1
@qedf_stag_change_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.qedf_stag_change_work, ptr @.str.5, i32 3986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[%s]:[%s:%d]:%d: Performing software context reset.\00", [44 x i8] zeroinitializer }, align 32
@qedf_stag_change_work._entry_ptr = internal global ptr @qedf_stag_change_work._entry, section ".printk_index", align 4
@__func__.qedf_get_generic_tlv_data = private unnamed_addr constant [26 x i8] c"qedf_get_generic_tlv_data\00", align 1
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"dev is NULL so ignoring get_generic_tlv_data request.\0A\00", [41 x i8] zeroinitializer }, align 32
@qedf_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.34, ptr @qedf_pci_tbl, ptr @qedf_probe, ptr @qedf_remove, ptr null, ptr null, ptr @qedf_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@qedf_io_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@qedf_fc_vport_transport_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@qedf_fc_transport_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@qedf_io_work_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_file430 = internal constant [33 x i8] c"qedf.file=drivers/scsi/qedf/qedf\00", section ".modinfo", align 1
@__UNIQUE_ID_license431 = internal constant [17 x i8] c"qedf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description432 = internal constant [51 x i8] c"qedf.description=QLogic FastLinQ 4xxxx FCoE Module\00", section ".modinfo", align 1
@__UNIQUE_ID_author433 = internal constant [31 x i8] c"qedf.author=QLogic Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_version434 = internal constant [22 x i8] c"qedf.version=8.42.3.0\00", section ".modinfo", align 1
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qedf\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"8.42.3.0\00", [23 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.34, ptr @.str.35 }, section "__modver", align 4
@__initcall__kmod_qedf__435_4163_qedf_init6 = internal global ptr @qedf_init, section ".initcall6.init", align 4
@__exitcall_qedf_cleanup = internal global ptr @qedf_cleanup, section ".exitcall.exit", align 4
@__func__.qedf_flogi_resp = private unnamed_addr constant [16 x i8] c"qedf_flogi_resp\00", align 1
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qedf is NULL.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fp has IS_ERR() set.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/scsi/fc_frame.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.qedf_set_data_src_addr = private unnamed_addr constant [23 x i8] c"qedf_set_data_src_addr\00", align 1
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"QEDF data_src_mac=%pM method=%d.\0A\00", [62 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__func__.qedf_fc_get_host_stats = private unnamed_addr constant [23 x i8] c"qedf_fc_get_host_stats\00", align 1
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Could not allocate memory for fw_fcoe_stats.\0A\00", [50 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qedf_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4215, i32 5724, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4215, i32 32896, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@qedf_host_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @qedf_queuecommand, ptr null, ptr null, ptr @.str.34, ptr null, ptr null, ptr null, ptr null, ptr @qedf_eh_abort, ptr @qedf_eh_device_reset, ptr @qedf_eh_target_reset, ptr null, ptr @qedf_eh_host_reset, ptr null, ptr @qedf_slave_configure, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_change_queue_depth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 2048, i32 -1, i16 256, i16 0, i32 65535, i32 0, i32 4095, i32 0, i16 32, i8 0, i32 0, i8 0, i32 0, ptr @qedf_host_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__func__.__qedf_probe = private unnamed_addr constant [13 x i8] c"__qedf_probe\00", align 1
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not allocate lport.\0A\00", [37 x i8] zeroinitializer }, align 32
@__qedf_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&qedf->hba_lock\00", [16 x i8] zeroinitializer }, align 32
@__qedf_probe.__key.47 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&qedf->stats_mutex\00", [45 x i8] zeroinitializer }, align 32
@__qedf_probe.__key.49 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&qedf->flush_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"QLogic FastLinQ FCoE Module qedf %s, FW %d.%d.%d.%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Probe started.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qedf->io_mempool is NULL.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qedf->io_mempool=%p.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qedf_%u_link\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__qedf_probe.__key.57 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&qedf->link_update)->work)\00", [49 x i8] zeroinitializer }, align 32
@__qedf_probe.__key.59 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&qedf->link_update)->timer\00", [35 x i8] zeroinitializer }, align 32
@__qedf_probe.__key.61 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.62 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&qedf->link_recovery)->work)\00", [47 x i8] zeroinitializer }, align 32
@__qedf_probe.__key.63 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&qedf->link_recovery)->timer\00", [33 x i8] zeroinitializer }, align 32
@__qedf_probe.__key.65 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.66 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&qedf->grcdump_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@__qedf_probe.__key.67 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&qedf->grcdump_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@__qedf_probe.__key.69 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&qedf->stag_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@__qedf_probe.__key.71 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&qedf->stag_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Retry %d initialize hardware\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"common probe failed.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to dev info.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dev_info: num_hwfns=%d affin_hwfn_idx=%d.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot set fcoe pf param.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to fill dev info.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot register devlink\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"BDQ primary_prod=%p secondary_prod=%p.\0A\00", [56 x i8] zeroinitializer }, align 32
@qedf_cb_ops = internal global { %struct.qed_fcoe_cb_ops, [60 x i8] } { %struct.qed_fcoe_cb_ops { %struct.qed_common_cb_ops { ptr null, ptr @qedf_link_update, ptr @qedf_schedule_recovery_handler, ptr @qedf_schedule_hw_err_handler, ptr @qedf_dcbx_handler, ptr @qedf_get_generic_tlv_data, ptr @qedf_get_protocol_tlv_data, ptr @qedf_bw_update }, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot start slowpath.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Setup interrupts failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot start FCoE function.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Task context start=%p, end=%p block_size=%u.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Writing %d to primary and secondary BDQ doorbell registers.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MAC address is %pM.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Setting WWPN and WWNN from qed dev_info.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Setting WWPN and WWNN using fcoe_wwn_from_mac().\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WWNN=%016llx WWPN=%016llx.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"host_%d\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to allocate cmd mgr.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error adding Scsi_Host rc=0x%x.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qedf_%d_ll2\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to LL2 workqueue.\0A\00", [38 x i8] zeroinitializer }, align 32
@qedf_debugfs_ops = external dso_local constant [0 x %struct.qedf_debugfs_ops], align 4
@qedf_dbg_fops = external dso_local constant [0 x %struct.file_operations], align 4
@qedf_ll2_cb_ops = internal global { %struct.qed_ll2_cb_ops, [24 x i8] } { %struct.qed_ll2_cb_ops { ptr @qedf_ll2_rx, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not start Light L2.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qedf_lport_setup failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qedf_%u_timer\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to start timer workqueue.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qedf_%u_dpc\00", [20 x i8] zeroinitializer }, align 32
@__qedf_probe.__key.100 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.101 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&qedf->recovery_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@__qedf_probe.__key.102 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.103 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&qedf->recovery_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"GRC Dump buffer alloc failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"grcdump: addr=%p, size=%u.\0A\00", [36 x i8] zeroinitializer }, align 32
@__qedf_probe.__key.106 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&qedf->io_trace_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to send drv state to MFW.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_link failed.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Probe done.\0A\00", [19 x i8] zeroinitializer }, align 32
@qedf_host_groups = external dso_local global [0 x ptr], align 4
@__func__.qedf_eh_abort = private unnamed_addr constant [14 x i8] c"qedf_eh_abort\00", align 1
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stale rport, sc_cmd=%p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"sc_cmd not queued with lld, sc_cmd=%p op=0x%02x, port_id=%06x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Freed/Incorrect io_req, io_req->sc_cmd=%p, sc_cmd=%p, port_id=%06x, bailing out.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"rport not ready, io_req=%p, xid=0x%x sc_cmd=%p op=0x%02x, refcount=%d, port_id=%06x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Connection uploading, xid=0x%x., port_id=%06x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ABTS succeeded\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ABTS failed\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"link not ready.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Aborting io_req=%p sc_cmd=%p xid=0x%x fp_idx=%d, port_id=%06x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to queue ABTS.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ABTS succeeded, xid=0x%x.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ABTS failed, xid=0x%x.\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.qedf_eh_device_reset = private unnamed_addr constant [21 x i8] c"qedf_eh_device_reset\00", align 1
@.str.123 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d:0:%d:%lld: LUN RESET Issued... \00", [61 x i8] zeroinitializer }, align 32
@__func__.qedf_eh_target_reset = private unnamed_addr constant [21 x i8] c"qedf_eh_target_reset\00", align 1
@.str.124 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%d:0:%d:%lld: TARGET RESET Issued...\00", [59 x i8] zeroinitializer }, align 32
@__func__.qedf_eh_host_reset = private unnamed_addr constant [19 x i8] c"qedf_eh_host_reset\00", align 1
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HOST RESET Issued...\00", [43 x i8] zeroinitializer }, align 32
@__func__.qedf_handle_link_update = private unnamed_addr constant [24 x i8] c"qedf_handle_link_update\00", align 1
@.str.126 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Entered. link_state=%d.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Link is down, resetting vlan_id.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Did not receive FIP VLAN response, falling back to default VLAN %d.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Calling fcoe_ctlr_link_down().\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.qedf_initiate_fipvlan_req = private unnamed_addr constant [26 x i8] c"qedf_initiate_fipvlan_req\00", align 1
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Link not up.\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Driver unloading.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"vlan = 0x%x already set, calling ctlr_link_up.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Retry %d.\0A\00", [21 x i8] zeroinitializer }, align 32
@__func__.qedf_link_recovery = private unnamed_addr constant [19 x i8] c"qedf_link_recovery\00", align 1
@.str.134 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Link down tmo did not expire.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"FCF reselected, proceeding with FLOGI.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Exhausted retries waiting for FCF selection.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FLOGI timed out.\0A\00", [46 x i8] zeroinitializer }, align 32
@qedf_link_recovery.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.qedf_set_fcoe_pf_param = private unnamed_addr constant [23 x i8] c"qedf_set_fcoe_pf_param\00", align 1
@.str.138 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Number of CQs is %d.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dma_alloc_coherent failed.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Global queue allocation failed.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"bdq_list=%p bdq_pbl_list_dma=%llx bdq_pbl_list_entries=%d.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cq_num_entries=%d.\0A\00", [44 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__func__.qedf_alloc_global_queues = private unnamed_addr constant [25 x i8] c"qedf_alloc_global_queues\00", align 1
@.str.143 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No MSI-X vectors available!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unable to allocate global queues array ptr memory\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qedf->global_queues=%p.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to allocate bdq.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to allocate global queue %d.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not allocate cq.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not allocate cq PBL.\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.qedf_alloc_bdq = private unnamed_addr constant [15 x i8] c"qedf_alloc_bdq\00", align 1
@.str.151 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not allocate BDQ buffer %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not allocate BDQ PBL.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BDQ PBL addr=0x%p dma=%pad\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not allocate list of PBL pages.\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.qedf_link_update = private unnamed_addr constant [17 x i8] c"qedf_link_update\00", align 1
@.str.155 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Ignore link update, driver getting unload.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Ignoring link up event as link is already up.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LINK UP (%d GB/s).\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DCBx done.\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LINK DOWN.\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Starting link down tmo.\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.qedf_schedule_recovery_handler = private unnamed_addr constant [31 x i8] c"qedf_schedule_recovery_handler\00", align 1
@.str.161 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Recovery handler scheduled.\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.qedf_dcbx_handler = private unnamed_addr constant [18 x i8] c"qedf_dcbx_handler\00", align 1
@.str.162 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DCBx event valid=%d enabled=%d fcoe prio=%d.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DCBX already set on link up.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"FIP/FCoE prio %d out of range, setting to %d.\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.qedf_bw_update = private unnamed_addr constant [15 x i8] c"qedf_bw_update\00", align 1
@.str.165 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Ignore bw update, link is down.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"link_up is not set.\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.qedf_prepare_sb = private unnamed_addr constant [16 x i8] c"qedf_prepare_sb\00", align 1
@.str.167 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fastpath array allocation failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SB info struct allocation failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SB allocation and initialization failed.\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.qedf_alloc_and_init_sb = private unnamed_addr constant [23 x i8] c"qedf_alloc_and_init_sb\00", align 1
@.str.170 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Status block allocation failed for id = %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Status block initialization failed (0x%x) for id = %d.\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.qedf_setup_int = private unnamed_addr constant [15 x i8] c"qedf_setup_int\00", align 1
@.str.172 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Number of msix_cnt = 0x%x num of cpus = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Cannot load driver due to a lack of MSI-X vectors.\0A\00", [44 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__func__.qedf_request_msix_irq = private unnamed_addr constant [22 x i8] c"qedf_request_msix_irq\00", align 1
@.str.174 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Requesting IRQ #%d vector_idx=%d.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"request_irq failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__func__.qedf_msix_handler = private unnamed_addr constant [18 x i8] c"qedf_msix_handler\00", align 1
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fp is null.\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fp->sb_info in null.\00", [43 x i8] zeroinitializer }, align 32
@__func__.qedf_process_completions = private unnamed_addr constant [25 x i8] c"qedf_process_completions\00", align 1
@.str.178 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unsolicated CQE.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Could not allocate work for I/O completion.\0A\00", [51 x i8] zeroinitializer }, align 32
@qedf_process_completions.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.180 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&io_work->work)\00", [62 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@__func__.qedf_simd_int_handler = private unnamed_addr constant [22 x i8] c"qedf_simd_int_handler\00", align 1
@.str.181 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qedf=%p.\0A\00", [22 x i8] zeroinitializer }, align 32
@__func__.qedf_ll2_rx = private unnamed_addr constant [12 x i8] c"qedf_ll2_rx\00", align 1
@.str.182 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Dropping frame as link state is down.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Could not allocate skb_work so dropping frame.\0A\00", [48 x i8] zeroinitializer }, align 32
@qedf_ll2_rx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.184 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&skb_work->work)\00", [61 x i8] zeroinitializer }, align 32
@__func__.qedf_ll2_process_skb = private unnamed_addr constant [21 x i8] c"qedf_ll2_process_skb\00", align 1
@.str.185 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qedf is NULL\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.qedf_recv_frame = private unnamed_addr constant [16 x i8] c"qedf_recv_frame\00", align 1
@.str.186 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid lport struct or lport disabled.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"skb_copy_bits failed.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pskb_trim failed.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"FC frame d_id mismatch with MAC %pM.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Wrong source address: mac:%pM dest_addr:%pM.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Dropping frame due to destination mismatch: lport->port_id=0x%x fh->d_id=0x%x.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Dropping ABTS response as both SEQ/EX CTX set.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Connection uploading, dropping fp=%p.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"FCoE frame receive: skb=%p fp=%p src=%06x dest=%06x r_ctl=%x fh_type=%x.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fcoe: \00", [25 x i8] zeroinitializer }, align 32
@qedf_fcport_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@qedf_lport_template = internal global { %struct.libfc_function_template, [32 x i8] } { %struct.libfc_function_template { ptr @qedf_xmit, ptr @qedf_elsct_send, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qedf_rport_event_handler, ptr null, ptr @qedf_fcp_cleanup, ptr @qedf_abort_io, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__func__.qedf_lport_setup = private unnamed_addr constant [17 x i8] c"qedf_lport_setup\00", align 1
@.str.198 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fcoe_libfc_config failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Marvell FastLinQ 45xxx FCoE v%s\00", [32 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Marvell FastLinQ 41xxx FCoE v%s\00", [32 x i8] zeroinitializer }, align 32
@__func__.qedf_xmit = private unnamed_addr constant [10 x i8] c"qedf_xmit\00", align 1
@.str.201 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dropping FCoE frame to %06x.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LL2 not started\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qedf link down\0A\00", [16 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.204 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"FCoE frame send: src=%06x dest=%06x r_ctl=%x type=%x vlan=%04x.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"start_xmit failed rc = %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@qedf_global_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.206, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@qedf_global = internal global { %struct.fcoe_percpu_s, [48 x i8] } zeroinitializer, align 32
@.str.206 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qedf_global_lock\00", [47 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__func__.qedf_rport_event_handler = private unnamed_addr constant [25 x i8] c"qedf_rport_event_handler\00", align 1
@.str.207 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"event = %d, port_id = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rport is NULL.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Not offloading portid=0x%x as max number of offloaded sessions reached.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Session already offloaded, portid=0x%x.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"rport struct does not exist for dir server port_id=%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Not offloading since spp type isn't FCP\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Not FCP target so not offloading\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"portid=%06x is a TAPE device.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No action since spp type isn't FCP\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Not FCP target so no action\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"port_id=%x - rport notcreated Yet!!\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.qedf_alloc_sq = private unnamed_addr constant [14 x i8] c"qedf_alloc_sq\00", align 1
@.str.218 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not allocate send queue.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not allocate send queue PBL.\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.qedf_cleanup_fcport = private unnamed_addr constant [20 x i8] c"qedf_cleanup_fcport\00", align 1
@.str.220 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cleaning up portid=%06x.\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.qedf_upload_connection = private unnamed_addr constant [23 x i8] c"qedf_upload_connection\00", align 1
@.str.221 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Uploading connection port_id=%06x.\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.qedf_offload_connection = private unnamed_addr constant [24 x i8] c"qedf_offload_connection\00", align 1
@.str.222 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Offloading connection portid=%06x.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Could not acquire connection for portid=%06x.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"portid=%06x fw_cid=%08x handle=%d.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Enable CONF, REC for portid=%06x.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Could not offload connection for portid=%06x.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Offload succeeded portid=%06x total_sqe=%d.\0A\00", [51 x i8] zeroinitializer }, align 32
@qedf_offload_connection.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.228 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&fcport->rport_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%02X%02X%02X%02X%02X%02X%02X%02X\00", [63 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Marvell Semiconductor Inc.\00", [37 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Marvell FastLinQ QL45xxx FCoE Adapter\00", [58 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Marvell FastLinQ QL41xxx FCoE Adapter\00", [58 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Rev %d\00", [25 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d.%d.%d.%d\00", [20 x i8] zeroinitializer }, align 32
@__func__.qedf_recovery_handler = private unnamed_addr constant [22 x i8] c"qedf_recovery_handler\00", align 1
@.str.239 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Recovery work start.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Recovery work complete.\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.__qedf_remove = private unnamed_addr constant [14 x i8] c"__qedf_remove\00", align 1
@.str.241 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pdev is NULL.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Already removing PCI function.\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.qedf_wait_for_vport_destroy = private unnamed_addr constant [28 x i8] c"qedf_wait_for_vport_destroy\00", align 1
@.str.243 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Entered.\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Waiting for all vports to be reaped.\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.qedf_sync_free_irqs = private unnamed_addr constant [20 x i8] c"qedf_sync_free_irqs\00", align 1
@.str.245 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Freeing IRQ #%d vector_idx=%d.\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.qedf_init = private unnamed_addr constant [10 x i8] c"qedf_init\00", align 1
@.str.246 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"FCoE/FIP priority out of range, resetting to %d.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s v%s.\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"QLogic FCoE Offload Driver\00", [37 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qedf_io_work_cache\00", [45 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qedf_io_work_cache is NULL.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qedf_io_work_cache=%p.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get qed fcoe operations\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not register with FC transport\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Could not register vport template with FC transport\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qedf_io_wq\00", [21 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not create qedf_io_wq.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register driver\0A\00", [37 x i8] zeroinitializer }, align 32
@qedf_fc_transport_fn = internal global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 } { ptr null, ptr @fc_set_rport_loss_tmo, ptr null, ptr null, ptr null, ptr @qedf_get_host_port_id, ptr null, ptr @fc_get_host_port_state, ptr null, ptr @fc_get_host_speed, ptr null, ptr null, ptr null, ptr @qedf_fc_get_host_stats, ptr null, ptr @qedf_fcoe_reset, ptr null, ptr null, ptr null, ptr @qedf_vport_create, ptr @qedf_vport_disable, ptr @qedf_vport_destroy, ptr @fc_lport_bsg_request, ptr null, i32 160, i32 0, i32 0, i8 -1, i8 120, i8 7, i8 -16 }, [48 x i8] zeroinitializer }, align 32
@__func__.qedf_vport_create = private unnamed_addr constant [18 x i8] c"qedf_vport_create\00", align 1
@.str.259 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to create vport, WWPN (0x%s) already exists.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot create vport because link is not up.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not create lport for vport.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Creating NPIV port, WWPN=%s.\0A\00", [34 x i8] zeroinitializer }, align 32
@qedf_vport_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.263 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&vport_qedf->stag_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@qedf_vport_create.__key.264 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.265 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&vport_qedf->stag_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Could not allocate memory for lport stats.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vn_port=%p.\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.qedf_vport_destroy = private unnamed_addr constant [19 x i8] c"qedf_vport_destroy\00", align 1
@qedf_fc_vport_transport_fn = internal global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 } { ptr null, ptr @fc_set_rport_loss_tmo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fc_get_host_port_state, ptr null, ptr @fc_get_host_speed, ptr null, ptr null, ptr null, ptr @fc_get_host_stats, ptr null, ptr @qedf_fcoe_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fc_lport_bsg_request, ptr null, i32 160, i32 0, i32 0, i8 -1, i8 120, i8 7, i8 -16 }, [48 x i8] zeroinitializer }, align 32
@str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qedf\00\00\00\00\00\00\00\00\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.269 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.270 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.271 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 11]
@__sancov_gen_cov_switch_values.272 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 7]
@__sancov_gen_cov_switch_values.273 = internal global [8 x i64] [i64 6, i64 32, i64 10000, i64 20000, i64 25000, i64 40000, i64 50000, i64 100000]
@__sancov_gen_cov_switch_values.274 = internal global [4 x i64] [i64 2, i64 16, i64 35078, i64 35092]
@__sancov_gen_cov_switch_values.275 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 34, i64 129]
@__sancov_gen_cov_switch_values.276 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.277 = private unnamed_addr constant [18 x i8] c"qedf_dev_loss_tmo\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 38, i32 21 }
@___asan_gen_.280 = private unnamed_addr constant [11 x i8] c"qedf_debug\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 43, i32 6 }
@___asan_gen_.283 = private unnamed_addr constant [21 x i8] c"qedf_fipvlan_retries\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 48, i32 13 }
@___asan_gen_.286 = private unnamed_addr constant [19 x i8] c"qedf_fallback_vlan\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 53, i32 13 }
@___asan_gen_.289 = private unnamed_addr constant [18 x i8] c"qedf_default_prio\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 58, i32 12 }
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"qedf_dump_frames\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 63, i32 6 }
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"qedf_queue_depth\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 68, i32 13 }
@___asan_gen_.298 = private unnamed_addr constant [16 x i8] c"qedf_io_tracing\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 73, i32 6 }
@___asan_gen_.301 = private unnamed_addr constant [13 x i8] c"qedf_max_lun\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 78, i32 13 }
@___asan_gen_.304 = private unnamed_addr constant [19 x i8] c"qedf_link_down_tmo\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 83, i32 6 }
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"qedf_retry_delay\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 88, i32 6 }
@___asan_gen_.310 = private unnamed_addr constant [18 x i8] c"qedf_dcbx_no_wait\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 93, i32 13 }
@___asan_gen_.313 = private unnamed_addr constant [15 x i8] c"qedf_dp_module\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 98, i32 13 }
@___asan_gen_.316 = private unnamed_addr constant [14 x i8] c"qedf_dp_level\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 103, i32 13 }
@___asan_gen_.319 = private unnamed_addr constant [21 x i8] c"qedf_enable_recovery\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 108, i32 13 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 127, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 340, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 346, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 350, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 881, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 890, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 894, i32 5 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 898, i32 5 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 914, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 923, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 929, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant [8 x i8] c"qed_ops\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 27, i32 28 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 937, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 947, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2799, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2807, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2818, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2844, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2850, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2856, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2862, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2867, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2872, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2878, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2882, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3839, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3847, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3852, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3895, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3900, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3984, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4040, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant [16 x i8] c"qedf_pci_driver\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3255, i32 26 }
@___asan_gen_.439 = private unnamed_addr constant [11 x i8] c"qedf_io_wq\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 114, i32 26 }
@___asan_gen_.442 = private unnamed_addr constant [33 x i8] c"qedf_fc_vport_transport_template\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 710, i32 40 }
@___asan_gen_.445 = private unnamed_addr constant [27 x i8] c"qedf_fc_transport_template\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 709, i32 40 }
@___asan_gen_.448 = private unnamed_addr constant [19 x i8] c"qedf_io_work_cache\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 119, i32 27 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4162, i32 1 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 274, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 283, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant [27 x i8] c"../include/scsi/fc_frame.h\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 161, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 262, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 87, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 695, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 723, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2055, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant [13 x i8] c"qedf_pci_tbl\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3248, i32 35 }
@___asan_gen_.493 = private unnamed_addr constant [19 x i8] c"qedf_host_template\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 982, i32 34 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3292, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3307, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3314, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3315, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3318, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3330, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3338, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3341, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3344, i32 20 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3346, i32 25 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3347, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3348, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3349, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3350, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3374, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3379, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3387, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3391, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3406, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3414, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3421, i32 4 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3431, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant [12 x i8] c"qedf_cb_ops\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 693, i32 31 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3440, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3466, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3472, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3477, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3487, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3501, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3512, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3517, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3522, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3525, i32 20 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3531, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3544, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3555, i32 25 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3559, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant [16 x i8] c"qedf_ll2_cb_ops\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2663, i32 30 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3573, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3592, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3598, i32 20 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3602, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3610, i32 21 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3614, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3627, i32 5 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3632, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3639, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3647, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3654, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3662, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 737, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 745, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 759, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 768, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 781, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 789, i32 4 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 792, i32 4 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 799, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 803, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 817, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 844, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 847, i32 3 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 868, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 860, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 966, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 173, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 182, i32 4 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 193, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 211, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 139, i32 4 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 144, i32 4 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 149, i32 4 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 157, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 378, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 407, i32 4 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 416, i32 3 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 429, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3158, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3166, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3172, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3215, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3221, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3021, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3038, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3042, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3048, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3057, i32 4 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3081, i32 4 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3093, i32 4 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2942, i32 4 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2957, i32 3 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2961, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2985, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 579, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 586, i32 4 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 590, i32 3 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 601, i32 4 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 613, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 622, i32 4 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4002, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 639, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 646, i32 4 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 664, i32 4 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 562, i32 4 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 566, i32 3 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2754, i32 3 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2764, i32 4 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2770, i32 4 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2702, i32 3 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2712, i32 3 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2423, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2434, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2387, i32 3 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2395, i32 4 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2304, i32 3 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2308, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2242, i32 4 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2271, i32 4 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2277, i32 3 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2346, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2641, i32 3 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2649, i32 3 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2655, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2599, i32 3 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2457, i32 3 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2478, i32 3 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2485, i32 3 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2522, i32 3 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2530, i32 4 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2546, i32 3 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2557, i32 3 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2574, i32 3 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2580, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2585, i32 18 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2585, i32 32 }
@___asan_gen_.922 = private unnamed_addr constant [20 x i8] c"qedf_lport_template\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1639, i32 39 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1748, i32 3 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1773, i32 4 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1777, i32 4 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1104, i32 3 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1122, i32 3 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1128, i32 3 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1227, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1236, i32 3 }
@___asan_gen_.949 = private unnamed_addr constant [17 x i8] c"qedf_global_lock\00", align 1
@___asan_gen_.952 = private unnamed_addr constant [12 x i8] c"qedf_global\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 116, i32 29 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 117, i32 8 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1467, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1473, i32 4 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1482, i32 4 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1493, i32 4 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1506, i32 4 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1513, i32 4 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1518, i32 4 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1539, i32 4 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1573, i32 4 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1578, i32 4 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1584, i32 4 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1261, i32 3 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1270, i32 3 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1436, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1421, i32 2 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1315, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1320, i32 3 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1326, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1376, i32 3 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1388, i32 3 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1392, i32 3 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1396, i32 2 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1683, i32 7 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1691, i32 35 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1699, i32 4 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1708, i32 4 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1712, i32 30 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1718, i32 30 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4020, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4031, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3710, i32 3 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3721, i32 3 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2008, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2011, i32 3 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2360, i32 4 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4069, i32 4 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4074, i32 2 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4078, i32 41 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4081, i32 3 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4084, i32 2 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4089, i32 3 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4100, i32 3 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4107, i32 3 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4112, i32 15 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4114, i32 3 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 4122, i32 3 }
@___asan_gen_.1102 = private unnamed_addr constant [21 x i8] c"qedf_fc_transport_fn\00", align 1
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2101, i32 36 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1833, i32 3 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1839, i32 3 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1846, i32 3 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1852, i32 2 }
@___asan_gen_.1123 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1867, i32 2 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1871, i32 3 }
@___asan_gen_.1132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1926, i32 2 }
@___asan_gen_.1135 = private unnamed_addr constant [27 x i8] c"qedf_fc_vport_transport_fn\00", align 1
@___asan_gen_.1136 = private constant [33 x i8] c"../drivers/scsi/qedf/qedf_main.c\00", align 1
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2141, i32 36 }
@___asan_gen_.1138 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@llvm.compiler.used = appending global [344 x ptr] [ptr @__UNIQUE_ID_author433, ptr @__UNIQUE_ID_dcbx_no_wait414, ptr @__UNIQUE_ID_dcbx_no_waittype413, ptr @__UNIQUE_ID_debug394, ptr @__UNIQUE_ID_debugtype393, ptr @__UNIQUE_ID_default_prio400, ptr @__UNIQUE_ID_default_priotype399, ptr @__UNIQUE_ID_description432, ptr @__UNIQUE_ID_dev_loss_tmo392, ptr @__UNIQUE_ID_dev_loss_tmotype391, ptr @__UNIQUE_ID_dp_level418, ptr @__UNIQUE_ID_dp_leveltype417, ptr @__UNIQUE_ID_dp_module416, ptr @__UNIQUE_ID_dp_moduletype415, ptr @__UNIQUE_ID_dump_frames402, ptr @__UNIQUE_ID_dump_framestype401, ptr @__UNIQUE_ID_enable_recovery420, ptr @__UNIQUE_ID_enable_recoverytype419, ptr @__UNIQUE_ID_fallback_vlan398, ptr @__UNIQUE_ID_fallback_vlantype397, ptr @__UNIQUE_ID_file430, ptr @__UNIQUE_ID_fipvlan_retries396, ptr @__UNIQUE_ID_fipvlan_retriestype395, ptr @__UNIQUE_ID_io_tracing406, ptr @__UNIQUE_ID_io_tracingtype405, ptr @__UNIQUE_ID_license431, ptr @__UNIQUE_ID_link_down_tmo410, ptr @__UNIQUE_ID_link_down_tmotype409, ptr @__UNIQUE_ID_max_lun408, ptr @__UNIQUE_ID_max_luntype407, ptr @__UNIQUE_ID_queue_depth404, ptr @__UNIQUE_ID_queue_depthtype403, ptr @__UNIQUE_ID_retry_delay412, ptr @__UNIQUE_ID_retry_delaytype411, ptr @__UNIQUE_ID_version434, ptr @__exitcall_qedf_cleanup, ptr @__initcall__kmod_qedf__435_4163_qedf_init6, ptr @__modver_attr, ptr @__param_dcbx_no_wait, ptr @__param_debug, ptr @__param_default_prio, ptr @__param_dev_loss_tmo, ptr @__param_dp_level, ptr @__param_dp_module, ptr @__param_dump_frames, ptr @__param_enable_recovery, ptr @__param_fallback_vlan, ptr @__param_fipvlan_retries, ptr @__param_io_tracing, ptr @__param_link_down_tmo, ptr @__param_max_lun, ptr @__param_queue_depth, ptr @__param_retry_delay, ptr @qedf_cleanup, ptr @qedf_ctx_soft_reset._entry, ptr @qedf_ctx_soft_reset._entry_ptr, ptr @qedf_stag_change_work._entry, ptr @qedf_stag_change_work._entry_ptr, ptr @qedf_dev_loss_tmo, ptr @qedf_debug, ptr @qedf_fipvlan_retries, ptr @qedf_fallback_vlan, ptr @qedf_default_prio, ptr @qedf_dump_frames, ptr @qedf_queue_depth, ptr @qedf_io_tracing, ptr @qedf_max_lun, ptr @qedf_link_down_tmo, ptr @qedf_retry_delay, ptr @qedf_dcbx_no_wait, ptr @qedf_dp_module, ptr @qedf_dp_level, ptr @qedf_enable_recovery, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @qedf_ctx_soft_reset._rs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @qed_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @qedf_stag_change_work._rs, ptr @.str.31, ptr @.str.32, ptr @qedf_pci_driver, ptr @qedf_io_wq, ptr @qedf_fc_vport_transport_template, ptr @qedf_fc_transport_template, ptr @qedf_io_work_cache, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @init_completion.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @qedf_pci_tbl, ptr @qedf_host_template, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @qedf_cb_ops, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @qedf_ll2_cb_ops, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @qedf_process_completions.__key, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @qedf_ll2_rx.__key, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @qedf_lport_template, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @qedf_global_lock, ptr @qedf_global, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @qedf_offload_connection.__key, ptr @.str.228, ptr @.str.229, ptr @.str.231, ptr @.str.233, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @qedf_fc_transport_fn, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @qedf_vport_create.__key, ptr @.str.263, ptr @qedf_vport_create.__key.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @qedf_fc_vport_transport_fn, ptr @str], section "llvm.metadata"
@0 = internal global [288 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_dev_loss_tmo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_fipvlan_retries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_fallback_vlan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_default_prio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_dump_frames to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_queue_depth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_io_tracing to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_max_lun to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_link_down_tmo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_retry_delay to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_dcbx_no_wait to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_dp_module to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_dp_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_enable_recovery to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_ctx_soft_reset._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_ctx_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_stag_change_work._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_stag_change_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_io_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_fc_vport_transport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_fc_transport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_io_work_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_cb_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_ll2_cb_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_process_completions.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_ll2_rx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_lport_template to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_global_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_global to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_offload_connection.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_fc_transport_fn to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_vport_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_vport_create.__key.264 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_fc_vport_transport_fn to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_set_vlan_id(ptr noundef %qedf, i32 noundef %vlan_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %prio = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 7
  %0 = ptrtoint ptr %prio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prio, align 8
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 13
  %or = or i32 %shl, %vlan_id
  %vlan_id1 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 6
  %2 = ptrtoint ptr %vlan_id1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %vlan_id1, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_set_vlan_id, i32 noundef 129, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %or, i32 noundef %conv) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedf_send_flogi(ptr noundef %qedf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lport1 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 2
  %0 = ptrtoint ptr %lport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport1, align 16
  %elsct_send = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %elsct_send to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elsct_send, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_send_flogi, i32 noundef 340, ptr noundef nonnull @.str.1) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef 116) #16
  %tobool2.not = icmp eq ptr %call2.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_send_flogi, i32 noundef 346, ptr noundef nonnull @.str.2) #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_send_flogi, i32 noundef 351, i32 noundef 32768, ptr noundef nonnull @.str.3) #16
  %4 = ptrtoint ptr %elsct_send to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elsct_send, align 4
  %r_a_tov = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r_a_tov, align 8
  %call9 = tail call ptr %5(ptr noundef %1, i32 noundef 16777214, ptr noundef nonnull %call2.i, i32 noundef 4, ptr noundef nonnull @qedf_flogi_resp, ptr noundef %1, i32 noundef %7) #16
  %flogi_compl = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 25
  %8 = ptrtoint ptr %flogi_compl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flogi_compl, align 4
  %wait.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 25, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %if.then3 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_err(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_flogi_resp(ptr noundef %seq, ptr noundef %fp, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr i8, ptr %seq, i32 -40
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %1, i32 1
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_flogi_resp, i32 noundef 274, ptr noundef nonnull @.str.36) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %fp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull @__func__.qedf_flogi_resp, i32 noundef 284, i32 noundef 32768, ptr noundef nonnull @.str.37) #16
  br label %skip_stat

if.end3:                                          ; preds = %if.end
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %2 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp.i.i = icmp ugt i32 %3, 24
  br i1 %cmp.i.i, label %fc_frame_payload_get.exit.i, label %if.end3.if.end13_crit_edge

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

fc_frame_payload_get.exit.i:                      ; preds = %if.end3
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.fc_frame_header, ptr %5, i32 1
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %fc_frame_payload_get.exit.i.fc_frame_payload_get.exit.i32_crit_edge, label %fc_frame_payload_op.exit

fc_frame_payload_get.exit.i.fc_frame_payload_get.exit.i32_crit_edge: ; preds = %fc_frame_payload_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fc_frame_payload_get.exit.i32

fc_frame_payload_op.exit:                         ; preds = %fc_frame_payload_get.exit.i
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.then6, label %fc_frame_payload_op.exit.fc_frame_payload_get.exit.i32_crit_edge

fc_frame_payload_op.exit.fc_frame_payload_get.exit.i32_crit_edge: ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %fc_frame_payload_get.exit.i32

if.then6:                                         ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #18
  %flogi_failed = getelementptr %struct.fc_lport, ptr %1, i32 120, i32 23
  %8 = ptrtoint ptr %flogi_failed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flogi_failed, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %flogi_failed, align 8
  br label %if.end13

fc_frame_payload_get.exit.i32:                    ; preds = %fc_frame_payload_op.exit.fc_frame_payload_get.exit.i32_crit_edge, %fc_frame_payload_get.exit.i.fc_frame_payload_get.exit.i32_crit_edge
  %10 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i30 = getelementptr %struct.fc_frame_header, ptr %11, i32 1
  %tobool.not.i31 = icmp eq ptr %add.ptr.i.i30, null
  br i1 %tobool.not.i31, label %fc_frame_payload_get.exit.i32.if.end13_crit_edge, label %fc_frame_payload_op.exit35

fc_frame_payload_get.exit.i32.if.end13_crit_edge: ; preds = %fc_frame_payload_get.exit.i32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

fc_frame_payload_op.exit35:                       ; preds = %fc_frame_payload_get.exit.i32
  %12 = ptrtoint ptr %add.ptr.i.i30 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp9 = icmp eq i8 %13, 2
  br i1 %cmp9, label %fc_frame_header_get.exit.i, label %fc_frame_payload_op.exit35.if.end13_crit_edge

fc_frame_payload_op.exit35.if.end13_crit_edge:    ; preds = %fc_frame_payload_op.exit35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

fc_frame_header_get.exit.i:                       ; preds = %fc_frame_payload_op.exit35
  %14 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i.i, align 4
  %granted_mac1.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 22
  %16 = ptrtoint ptr %granted_mac1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %granted_mac1.i, align 4
  %add.ptr.i.i37 = getelementptr %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 26
  %18 = ptrtoint ptr %add.ptr.i.i37 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i37, align 2
  %conv.i.i = zext i16 %19 to i32
  %or.i.i = or i32 %17, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i54.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i54.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %fc_frame_header_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %data_src_addr.i = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 3
  %20 = ptrtoint ptr %data_src_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %data_src_addr.i, align 4
  %21 = ptrtoint ptr %add.ptr.i.i37 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i37, align 2
  %add.ptr1.i.i = getelementptr %struct.fc_lport, ptr %1, i32 1, i32 15, i32 12
  %23 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %add.ptr1.i.i, align 2
  br label %qedf_set_data_src_addr.exit

if.else.i:                                        ; preds = %fc_frame_header_get.exit.i
  %sel_fcf.i = getelementptr %struct.fc_lport, ptr %1, i32 1, i32 5
  %24 = ptrtoint ptr %sel_fcf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sel_fcf.i, align 4
  %fc_map4.i = getelementptr inbounds %struct.fcoe_fcf, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %fc_map4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fc_map4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 0
  br i1 %cmp.not.i, label %if.else30.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %shr.i.i = lshr i32 %27, 16
  %conv.i56.i = trunc i32 %shr.i.i to i8
  %shr1.i.i = lshr i32 %27, 8
  %conv3.i.i = trunc i32 %shr1.i.i to i8
  %conv6.i.i = trunc i32 %27 to i8
  %data_src_addr11.i = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 3
  %28 = ptrtoint ptr %data_src_addr11.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i56.i, ptr %data_src_addr11.i, align 4
  %arrayidx15.i = getelementptr %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv3.i.i, ptr %arrayidx15.i, align 1
  %arrayidx18.i = getelementptr %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv6.i.i, ptr %arrayidx18.i, align 2
  %fh_d_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %15, i32 0, i32 1
  %31 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fh_d_id.i, align 1
  %arrayidx21.i = getelementptr %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx21.i, align 1
  %arrayidx23.i = getelementptr %struct.fc_frame_header, ptr %15, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx23.i, align 1
  %arrayidx25.i = getelementptr %struct.fc_lport, ptr %1, i32 1, i32 15, i32 12
  %36 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx25.i, align 4
  %arrayidx27.i = getelementptr %struct.fc_frame_header, ptr %15, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx27.i, align 1
  %arrayidx29.i = getelementptr %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 3, i32 5
  %39 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx29.i, align 1
  br label %qedf_set_data_src_addr.exit

if.else30.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %data_src_addr31.i = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 3
  %fh_d_id33.i = getelementptr inbounds %struct.fc_frame_header, ptr %15, i32 0, i32 1
  %40 = ptrtoint ptr %data_src_addr31.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 14, ptr %data_src_addr31.i, align 1
  %arrayidx1.i.i = getelementptr %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -4, ptr %arrayidx1.i.i, align 1
  %arrayidx2.i.i = getelementptr %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %43 = ptrtoint ptr %fh_d_id33.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fh_d_id33.i, align 1
  %arrayidx4.i57.i = getelementptr %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 3, i32 3
  %45 = ptrtoint ptr %arrayidx4.i57.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx4.i57.i, align 1
  %arrayidx5.i.i = getelementptr %struct.fc_frame_header, ptr %15, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx5.i.i, align 1
  %arrayidx6.i.i = getelementptr %struct.fc_lport, ptr %1, i32 1, i32 15, i32 12
  %48 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx6.i.i, align 1
  %arrayidx7.i58.i = getelementptr %struct.fc_frame_header, ptr %15, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %arrayidx7.i58.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx7.i58.i, align 1
  %arrayidx8.i.i = getelementptr %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 3, i32 5
  %51 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx8.i.i, align 1
  br label %qedf_set_data_src_addr.exit

qedf_set_data_src_addr.exit:                      ; preds = %if.else30.i, %if.then5.i, %if.then.i
  %method.0.i = phi i32 [ 2, %if.then5.i ], [ 3, %if.else30.i ], [ 1, %if.then.i ]
  %data_src_addr36.i = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 3
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull @__func__.qedf_set_data_src_addr, i32 noundef 263, i32 noundef 4, ptr noundef nonnull @.str.39, ptr noundef %data_src_addr36.i, i32 noundef %method.0.i) #16
  %flogi_pending = getelementptr %struct.fc_lport, ptr %1, i32 120, i32 24
  %52 = ptrtoint ptr %flogi_pending to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %flogi_pending, align 4
  br label %if.end13

if.end13:                                         ; preds = %qedf_set_data_src_addr.exit, %fc_frame_payload_op.exit35.if.end13_crit_edge, %fc_frame_payload_get.exit.i32.if.end13_crit_edge, %if.then6, %if.end3.if.end13_crit_edge
  %flogi_compl = getelementptr %struct.fc_lport, ptr %1, i32 1, i32 37, i32 0, i32 3, i32 3
  tail call void @complete(ptr noundef %flogi_compl) #16
  br label %skip_stat

skip_stat:                                        ; preds = %if.end13, %if.then2
  tail call void @fc_lport_flogi_resp(ptr noundef %seq, ptr noundef %fp, ptr noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %skip_stat, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @qedf_wait_for_upload(ptr noundef %qedf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_offloads = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 18
  br label %while.body

while.body:                                       ; preds = %if.then.while.body_crit_edge, %entry
  %dec66 = phi i32 [ 119, %entry ], [ %dec, %if.then.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_offloads, i32 noundef 4) #16
  %0 = ptrtoint ptr %num_offloads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %num_offloads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %while.body.cleanup_crit_edge, label %if.then

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %while.body
  %call.i.i54 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_offloads, i32 noundef 4) #16
  %2 = ptrtoint ptr %num_offloads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %num_offloads, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_wait_for_upload, i32 noundef 883, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %3) #16
  tail call void @msleep(i32 noundef 500) #16
  %dec = add nsw i32 %dec66, -1
  %tobool.not = icmp eq i32 %dec66, 0
  br i1 %tobool.not, label %while.end, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.end:                                        ; preds = %if.then
  %4 = tail call i32 @llvm.read_register.i32(metadata !743) #16
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !753
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %while.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

while.end.rcu_read_lock.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %while.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 696, ptr noundef nonnull @.str.42) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %while.end.rcu_read_lock.exit_crit_edge
  %call4 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b53 = load i1, ptr @qedf_wait_for_upload.__warned, align 1
  br i1 %.b53, label %land.lhs.true8.do.end_crit_edge, label %if.then10

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qedf_wait_for_upload.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 890, ptr noundef nonnull @.str.6) #16
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %fcports = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 17
  %8 = ptrtoint ptr %fcports to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn68 = load volatile ptr, ptr %fcports, align 4
  %cmp.not70 = icmp eq ptr %.pn68, %fcports
  br i1 %cmp.not70, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn71 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn68, %do.end.for.body_crit_edge ]
  %fcport.072 = getelementptr i8, ptr %.pn71, i32 -132
  %tobool17.not = icmp eq ptr %fcport.072, null
  br i1 %tobool17.not, label %for.body.if.else27_crit_edge, label %land.lhs.true18

for.body.if.else27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else27

land.lhs.true18:                                  ; preds = %for.body
  %flags = getelementptr i8, ptr %.pn71, i32 -88
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not = icmp eq i32 %11, 0
  br i1 %tobool20.not, label %land.lhs.true18.if.else27_crit_edge, label %if.then21

land.lhs.true18.if.else27_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else27

if.then21:                                        ; preds = %land.lhs.true18
  %rdata = getelementptr i8, ptr %.pn71, i32 -72
  %12 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdata, align 4
  %tobool22.not = icmp eq ptr %13, null
  br i1 %tobool22.not, label %if.then21.for.inc_crit_edge, label %if.then23

if.then21.for.inc_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  %port_id = getelementptr inbounds %struct.fc_rport_priv, ptr %13, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_id, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_wait_for_upload, i32 noundef 896, ptr noundef nonnull @.str.7, ptr noundef nonnull %fcport.072, i32 noundef %15) #16
  br label %for.inc

if.else27:                                        ; preds = %land.lhs.true18.if.else27_crit_edge, %for.body.if.else27_crit_edge
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_wait_for_upload, i32 noundef 899, ptr noundef nonnull @.str.8, ptr noundef %fcport.072) #16
  br label %for.inc

for.inc:                                          ; preds = %if.else27, %if.then23, %if.then21.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load volatile ptr, ptr %.pn71, align 4
  %cmp.not = icmp eq ptr %.pn, %fcports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i55 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i55, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i58

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i58:                                ; preds = %for.end
  %call1.i56 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56)
  %tobool.not.i57 = icmp eq i32 %call1.i56, 0
  br i1 %tobool.not.i57, label %land.lhs.true.i58.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i60

land.lhs.true.i58.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i60:                               ; preds = %land.lhs.true.i58
  %.b4.i59 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i59, label %land.lhs.true2.i60.rcu_read_unlock.exit_crit_edge, label %if.then.i61

land.lhs.true2.i60.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i61:                                      ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 724, ptr noundef nonnull @.str.43) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i61, %land.lhs.true2.i60.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i58.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !754
  %17 = tail call i32 @llvm.read_register.i32(metadata !743) #16
  %and.i.i.i.i.i62 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i62 to ptr
  %preempt_count.i.i.i.i63 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i63, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i63, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %while.body.cleanup_crit_edge
  ret i1 %tobool1.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_ctx_soft_reset(ptr noundef %lport) local_unnamed_addr #0 align 64 {
entry:
  %if_link = alloca %struct.qed_link_output, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %if_link) #16
  %0 = call ptr @memset(ptr %if_link, i32 255, i32 72)
  %vport = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 8
  %1 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vport, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @qedf_ctx_soft_reset._rs, ptr noundef nonnull @__func__.qedf_ctx_soft_reset) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #19
  br label %cleanup

if.end4:                                          ; preds = %entry
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %flogi_pending = getelementptr %struct.fc_lport, ptr %lport, i32 120, i32 24
  %3 = ptrtoint ptr %flogi_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %flogi_pending, align 4
  %link_state = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_state, i32 noundef 4) #16
  %4 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %link_state, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_ctx_soft_reset, i32 noundef 924, i32 noundef 4, ptr noundef nonnull @.str.11) #16
  %link_update_wq = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 24, i32 7
  %5 = ptrtoint ptr %link_update_wq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link_update_wq, align 4
  %link_update = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 24, i32 7, i32 2
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %link_update, i32 noundef 0) #16
  %call7 = tail call zeroext i1 @qedf_wait_for_upload(ptr noundef %add.ptr.i)
  br i1 %call7, label %if.end4.if.end38_crit_edge, label %if.then9

if.end4.if.end38_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then9:                                         ; preds = %if.end4
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_ctx_soft_reset, i32 noundef 929, ptr noundef nonnull @.str.12) #16
  %num_offloads = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 24, i32 2
  %call.i.i68 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_offloads, i32 noundef 4) #16
  %7 = ptrtoint ptr %num_offloads to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %num_offloads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.then9.if.end38_crit_edge, label %do.end24, !prof !755

if.then9.if.end38_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

do.end24:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 930, i32 noundef 9, ptr noundef null) #16
  br label %if.end38

if.end38:                                         ; preds = %do.end24, %if.then9.if.end38_crit_edge, %if.end4.if.end38_crit_edge
  %9 = load ptr, ptr @qed_ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %get_link = getelementptr inbounds %struct.qed_common_ops, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %get_link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_link, align 4
  %cdev = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 8
  %14 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cdev, align 4
  call void %13(ptr noundef %15, ptr noundef nonnull %if_link) #16
  %16 = ptrtoint ptr %if_link to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %if_link, align 4, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool39.not = icmp eq i8 %17, 0
  br i1 %tobool39.not, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_ctx_soft_reset, i32 noundef 938, i32 noundef 4, ptr noundef nonnull @.str.13) #16
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  %call44 = call zeroext i1 @flush_delayed_work(ptr noundef %link_update) #16
  call void @msleep(i32 noundef 500) #16
  %call.i.i69 = call zeroext i1 @__kasan_check_write(ptr noundef %link_state, i32 noundef 4) #16
  %18 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %link_state, align 4
  %vlan_id = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 6
  %19 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %vlan_id, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_ctx_soft_reset, i32 noundef 948, i32 noundef 4, ptr noundef nonnull @.str.14) #16
  %20 = ptrtoint ptr %link_update_wq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link_update_wq, align 4
  %call.i70 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %link_update, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then40, %do.end, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %if_link) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_fp_io_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe = getelementptr inbounds %struct.qedf_io_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cqe, align 4
  %2 = and i32 %1, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %2)
  %cmp = icmp eq i32 %2, 65536
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %fp = getelementptr inbounds %struct.qedf_io_work, ptr %work, i32 0, i32 3
  %3 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fp, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %qedf = getelementptr inbounds %struct.qedf_io_work, ptr %work, i32 0, i32 2
  %5 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qedf, align 4
  %lport = getelementptr inbounds %struct.qedf_ctx, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lport, align 16
  tail call void @fc_exch_recv(ptr noundef %8, ptr noundef nonnull %4) #16
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %qedf2 = getelementptr inbounds %struct.qedf_io_work, ptr %work, i32 0, i32 2
  %9 = ptrtoint ptr %qedf2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qedf2, align 4
  tail call void @qedf_process_cqe(ptr noundef %10, ptr noundef %cqe)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @kfree(ptr noundef %work) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_exch_recv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_process_cqe(ptr noundef %qedf, ptr noundef %cqe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cqe, align 4
  %shr = lshr i32 %1, 16
  %and = and i32 %shr, 15
  %cmd_mgr = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 47
  %2 = ptrtoint ptr %cmd_mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_mgr, align 8
  %idxprom = and i32 %1, 65535
  %arrayidx = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_cqe, i32 noundef 2800, ptr noundef nonnull @.str.15, i32 noundef %idxprom) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %fcport4 = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 6
  %4 = ptrtoint ptr %fcport4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fcport4, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_cqe, i32 noundef 2809, ptr noundef nonnull @.str.16, i32 noundef %idxprom, ptr noundef nonnull %arrayidx) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.qedf_rport, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_cqe, i32 noundef 2819, ptr noundef nonnull @.str.17, ptr noundef nonnull %5) #16
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb19
    i32 4, label %sw.bb22
    i32 5, label %sw.bb25
    i32 6, label %sw.bb28
    i32 7, label %sw.bb31
    i32 3, label %sw.bb34
    i32 8, label %sw.bb37
  ]

sw.bb:                                            ; preds = %if.end13
  %free_sqes = getelementptr inbounds %struct.qedf_rport, ptr %5, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %free_sqes, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_sqes, ptr %free_sqes, i32 1, ptr elementtype(i32) %free_sqes) #16, !srcloc !757
  %cmd_type = getelementptr %struct.qedf_cmd_mgr, ptr %3, i32 0, i32 3, i32 %idxprom, i32 3
  %11 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cmd_type, align 4
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.269)
  switch i8 %12, label %sw.bb.cleanup_crit_edge [
    i8 1, label %sw.bb15
    i8 4, label %sw.bb16
    i8 2, label %sw.bb17
    i8 6, label %sw.bb18
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb15:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @qedf_scsi_completion(ptr noundef %qedf, ptr noundef %cqe, ptr noundef nonnull %arrayidx) #16
  br label %cleanup

sw.bb16:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @qedf_process_els_compl(ptr noundef %qedf, ptr noundef %cqe, ptr noundef nonnull %arrayidx) #16
  br label %cleanup

sw.bb17:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @qedf_process_tmf_compl(ptr noundef %qedf, ptr noundef %cqe, ptr noundef nonnull %arrayidx) #16
  br label %cleanup

sw.bb18:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @qedf_process_seq_cleanup_compl(ptr noundef %qedf, ptr noundef %cqe, ptr noundef nonnull %arrayidx) #16
  br label %cleanup

sw.bb19:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %free_sqes20 = getelementptr inbounds %struct.qedf_rport, ptr %5, i32 0, i32 10
  %call.i.i96 = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes20, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %free_sqes20, i32 1, i32 3, i32 1) #16
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_sqes20, ptr %free_sqes20, i32 1, ptr elementtype(i32) %free_sqes20) #16, !srcloc !757
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_cqe, i32 noundef 2845, i32 noundef 1024, ptr noundef nonnull @.str.18) #16
  tail call void @qedf_process_error_detect(ptr noundef %qedf, ptr noundef %cqe, ptr noundef nonnull %arrayidx) #16
  br label %cleanup

sw.bb22:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %free_sqes23 = getelementptr inbounds %struct.qedf_rport, ptr %5, i32 0, i32 10
  %call.i.i97 = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes23, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %free_sqes23, i32 1, i32 3, i32 1) #16
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_sqes23, ptr %free_sqes23, i32 1, ptr elementtype(i32) %free_sqes23) #16, !srcloc !757
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_cqe, i32 noundef 2851, i32 noundef 1024, ptr noundef nonnull @.str.19) #16
  tail call void @qedf_process_cleanup_compl(ptr noundef %qedf, ptr noundef %cqe, ptr noundef nonnull %arrayidx) #16
  br label %cleanup

sw.bb25:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %free_sqes26 = getelementptr inbounds %struct.qedf_rport, ptr %5, i32 0, i32 10
  %call.i.i98 = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes26, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %free_sqes26, i32 1, i32 3, i32 1) #16
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_sqes26, ptr %free_sqes26, i32 1, ptr elementtype(i32) %free_sqes26) #16, !srcloc !757
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_cqe, i32 noundef 2857, i32 noundef 1024, ptr noundef nonnull @.str.20) #16
  tail call void @qedf_process_abts_compl(ptr noundef %qedf, ptr noundef %cqe, ptr noundef nonnull %arrayidx) #16
  br label %cleanup

sw.bb28:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %free_sqes29 = getelementptr inbounds %struct.qedf_rport, ptr %5, i32 0, i32 10
  %call.i.i99 = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes29, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %free_sqes29, i32 1, i32 3, i32 1) #16
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_sqes29, ptr %free_sqes29, i32 1, ptr elementtype(i32) %free_sqes29) #16, !srcloc !757
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_cqe, i32 noundef 2863, i32 noundef 1024, ptr noundef nonnull @.str.21) #16
  br label %cleanup

sw.bb31:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %free_sqes32 = getelementptr inbounds %struct.qedf_rport, ptr %5, i32 0, i32 10
  %call.i.i100 = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes32, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %free_sqes32, i32 1, i32 3, i32 1) #16
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_sqes32, ptr %free_sqes32, i32 1, ptr elementtype(i32) %free_sqes32) #16, !srcloc !757
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_cqe, i32 noundef 2868, i32 noundef 1024, ptr noundef nonnull @.str.22) #16
  br label %cleanup

sw.bb34:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %free_sqes35 = getelementptr inbounds %struct.qedf_rport, ptr %5, i32 0, i32 10
  %call.i.i101 = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes35, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %free_sqes35, i32 1, i32 3, i32 1) #16
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_sqes35, ptr %free_sqes35, i32 1, ptr elementtype(i32) %free_sqes35) #16, !srcloc !757
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_cqe, i32 noundef 2873, i32 noundef 1024, ptr noundef nonnull @.str.23) #16
  tail call void @qedf_process_warning_compl(ptr noundef %qedf, ptr noundef %cqe, ptr noundef nonnull %arrayidx) #16
  br label %cleanup

sw.bb37:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %free_sqes38 = getelementptr inbounds %struct.qedf_rport, ptr %5, i32 0, i32 10
  %call.i.i102 = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes38, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %free_sqes38, i32 1, i32 3, i32 1) #16
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_sqes38, ptr %free_sqes38, i32 1, ptr elementtype(i32) %free_sqes38) #16, !srcloc !757
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_cqe, i32 noundef 2879, i32 noundef 1024, ptr noundef nonnull @.str.24) #16
  br label %cleanup

sw.default:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_cqe, i32 noundef 2883, i32 noundef 1024, ptr noundef nonnull @.str.25) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb37, %sw.bb34, %sw.bb31, %sw.bb28, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb.cleanup_crit_edge, %if.then11, %if.then6, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_scsi_completion(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_process_els_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_process_tmf_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_process_seq_cleanup_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_process_error_detect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_process_cleanup_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_process_abts_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_process_warning_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_wq_grcdump(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -5644
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_wq_grcdump, i32 noundef 3839, ptr noundef nonnull @.str.26) #16
  tail call void @qedf_capture_grc_dump(ptr noundef %add.ptr) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_capture_grc_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_schedule_hw_err_handler(ptr noundef %dev, i32 noundef %err_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %dev, ptr noundef nonnull @__func__.qedf_schedule_hw_err_handler, i32 noundef 3849, ptr noundef nonnull @.str.27, i32 noundef %err_type) #16
  %flags = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 29
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %dev, ptr noundef nonnull @__func__.qedf_schedule_hw_err_handler, i32 noundef 3853, ptr noundef nonnull @.str.28) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %err_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.270)
  switch i32 %err_type, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb3_crit_edge
    i32 2, label %if.end.sw.bb3_crit_edge24
    i32 3, label %if.end.sw.bb3_crit_edge25
    i32 5, label %if.end.sw.bb3_crit_edge26
    i32 4, label %sw.bb4
  ]

if.end.sw.bb3_crit_edge26:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

if.end.sw.bb3_crit_edge25:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

if.end.sw.bb3_crit_edge24:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %board_disable_work = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %board_disable_work, i32 noundef 0) #16
  br label %cleanup

sw.bb3:                                           ; preds = %if.end.sw.bb3_crit_edge, %if.end.sw.bb3_crit_edge24, %if.end.sw.bb3_crit_edge25, %if.end.sw.bb3_crit_edge26
  %5 = load ptr, ptr @qed_ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %attn_clr_enable = getelementptr inbounds %struct.qed_common_ops, ptr %7, i32 0, i32 30
  %8 = ptrtoint ptr %attn_clr_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attn_clr_enable, align 4
  %cdev = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 8
  %10 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cdev, align 4
  tail call void %9(ptr noundef %11, i1 noundef zeroext true) #16
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %12 = load ptr, ptr @qed_ops, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %attn_clr_enable6 = getelementptr inbounds %struct.qed_common_ops, ptr %14, i32 0, i32 30
  %15 = ptrtoint ptr %attn_clr_enable6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %attn_clr_enable6, align 4
  %cdev7 = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 8
  %17 = ptrtoint ptr %cdev7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cdev7, align 4
  tail call void %16(ptr noundef %18, i1 noundef zeroext true) #16
  %19 = load i8, ptr @qedf_enable_recovery, align 1, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp eq i8 %19, 0
  br i1 %tobool8.not, label %sw.bb4.cleanup_crit_edge, label %land.lhs.true

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb4
  %devlink = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 22
  %20 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %devlink, align 16
  %tobool9.not = icmp eq ptr %21, null
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %if.then10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %22 = load ptr, ptr @qed_ops, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %report_fatal_error = getelementptr inbounds %struct.qed_common_ops, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %report_fatal_error to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %report_fatal_error, align 4
  %call13 = tail call i32 %26(ptr noundef nonnull %21, i32 noundef 4) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %land.lhs.true.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb3, %sw.bb, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_get_protocol_tlv_data(ptr noundef %dev, ptr noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_get_protocol_tlv_data, i32 noundef 3895, ptr noundef nonnull @.str.29) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 29
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef nonnull %dev, ptr noundef nonnull @__func__.qedf_get_protocol_tlv_data, i32 noundef 3900, ptr noundef nonnull @.str.30) #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %lport4 = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %lport4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lport4, align 16
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 51
  %7 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shost_data, align 8
  %call6 = tail call ptr @qedf_fc_get_host_stats(ptr noundef %6)
  %qos_pri_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 29
  %9 = ptrtoint ptr %qos_pri_set to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %qos_pri_set, align 1
  %qos_pri = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 28
  %10 = ptrtoint ptr %qos_pri to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %qos_pri, align 8
  %ra_tov_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 5
  %11 = ptrtoint ptr %ra_tov_set to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %ra_tov_set, align 8
  %r_a_tov = getelementptr inbounds %struct.fc_lport, ptr %4, i32 0, i32 23
  %12 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %r_a_tov, align 8
  %ra_tov = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 4
  %14 = ptrtoint ptr %ra_tov to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ra_tov, align 4
  %ed_tov_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 7
  %15 = ptrtoint ptr %ed_tov_set to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %ed_tov_set, align 8
  %e_d_tov = getelementptr inbounds %struct.fc_lport, ptr %4, i32 0, i32 22
  %16 = ptrtoint ptr %e_d_tov to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %e_d_tov, align 4
  %ed_tov = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 6
  %18 = ptrtoint ptr %ed_tov to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ed_tov, align 4
  %npiv_state_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 13
  %19 = ptrtoint ptr %npiv_state_set to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %npiv_state_set, align 4
  %npiv_state = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 12
  %20 = ptrtoint ptr %npiv_state to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %npiv_state, align 1
  %num_npiv_ids_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 15
  %21 = ptrtoint ptr %num_npiv_ids_set to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %num_npiv_ids_set, align 4
  %npiv_vports_inuse = getelementptr inbounds %struct.fc_host_attrs, ptr %8, i32 0, i32 39
  %22 = ptrtoint ptr %npiv_vports_inuse to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %npiv_vports_inuse, align 8
  %conv = zext i16 %23 to i32
  %num_npiv_ids = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 14
  %24 = ptrtoint ptr %num_npiv_ids to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %num_npiv_ids, align 8
  %sel_fcf = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sel_fcf, align 4
  %tobool7.not = icmp eq ptr %26, null
  br i1 %tobool7.not, label %if.end3.if.end12_crit_edge, label %if.then8

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %switch_name_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 17
  %27 = ptrtoint ptr %switch_name_set to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %switch_name_set, align 1
  %28 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sel_fcf, align 4
  %switch_name = getelementptr inbounds %struct.fcoe_fcf, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %switch_name to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %switch_name, align 8
  %switch_name11 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 16
  %32 = ptrtoint ptr %switch_name11 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %switch_name11, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end3.if.end12_crit_edge
  %port_state_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 33
  %33 = ptrtoint ptr %port_state_set to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %port_state_set, align 1
  %link_up = getelementptr inbounds %struct.fc_lport, ptr %4, i32 0, i32 10
  %34 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool13.not = icmp eq i8 %35, 0
  %spec.select = select i1 %tobool13.not, i8 0, i8 3
  %36 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 32
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %spec.select, ptr %36, align 2
  %link_failures_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 39
  %38 = ptrtoint ptr %link_failures_set to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %link_failures_set, align 2
  %link_failure_count = getelementptr inbounds %struct.fc_host_statistics, ptr %call6, i32 0, i32 9
  %39 = ptrtoint ptr %link_failure_count to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %link_failure_count, align 8
  %conv17 = trunc i64 %40 to i16
  %link_failures = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 38
  %41 = ptrtoint ptr %link_failures to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv17, ptr %link_failures, align 8
  %fcoe_txq_depth_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 47
  %42 = ptrtoint ptr %fcoe_txq_depth_set to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %fcoe_txq_depth_set, align 4
  %fcoe_rxq_depth_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 49
  %43 = ptrtoint ptr %fcoe_rxq_depth_set to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %fcoe_rxq_depth_set, align 8
  %fcoe_rxq_depth = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 48
  %44 = ptrtoint ptr %fcoe_rxq_depth to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 2048, ptr %fcoe_rxq_depth, align 2
  %fcoe_txq_depth = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 46
  %45 = ptrtoint ptr %fcoe_txq_depth to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 2048, ptr %fcoe_txq_depth, align 2
  %fcoe_rx_frames_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 51
  %46 = ptrtoint ptr %fcoe_rx_frames_set to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %fcoe_rx_frames_set, align 8
  %rx_frames = getelementptr inbounds %struct.fc_host_statistics, ptr %call6, i32 0, i32 3
  %47 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %rx_frames, align 8
  %fcoe_rx_frames = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 50
  %49 = ptrtoint ptr %fcoe_rx_frames to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %fcoe_rx_frames, align 8
  %fcoe_tx_frames_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 55
  %50 = ptrtoint ptr %fcoe_tx_frames_set to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %fcoe_tx_frames_set, align 8
  %tx_frames = getelementptr inbounds %struct.fc_host_statistics, ptr %call6, i32 0, i32 1
  %51 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %tx_frames, align 8
  %fcoe_tx_frames = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 54
  %53 = ptrtoint ptr %fcoe_tx_frames to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %fcoe_tx_frames, align 8
  %fcoe_rx_bytes_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 53
  %54 = ptrtoint ptr %fcoe_rx_bytes_set to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %fcoe_rx_bytes_set, align 8
  %fcp_input_megabytes = getelementptr inbounds %struct.fc_host_statistics, ptr %call6, i32 0, i32 18
  %55 = ptrtoint ptr %fcp_input_megabytes to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %fcp_input_megabytes, align 8
  %mul = mul i64 %56, 1000000
  %fcoe_rx_bytes = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 52
  %57 = ptrtoint ptr %fcoe_rx_bytes to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %mul, ptr %fcoe_rx_bytes, align 8
  %fcoe_tx_bytes_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 57
  %58 = ptrtoint ptr %fcoe_tx_bytes_set to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %fcoe_tx_bytes_set, align 8
  %fcp_output_megabytes = getelementptr inbounds %struct.fc_host_statistics, ptr %call6, i32 0, i32 19
  %59 = ptrtoint ptr %fcp_output_megabytes to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %fcp_output_megabytes, align 8
  %mul18 = mul i64 %60, 1000000
  %fcoe_tx_bytes = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 56
  %61 = ptrtoint ptr %fcoe_tx_bytes to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %mul18, ptr %fcoe_tx_bytes, align 8
  %crc_count_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 59
  %62 = ptrtoint ptr %crc_count_set to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %crc_count_set, align 4
  %invalid_crc_count = getelementptr inbounds %struct.fc_host_statistics, ptr %call6, i32 0, i32 14
  %63 = ptrtoint ptr %invalid_crc_count to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %invalid_crc_count, align 8
  %conv19 = trunc i64 %64 to i16
  %crc_count = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 58
  %65 = ptrtoint ptr %crc_count to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv19, ptr %crc_count, align 2
  %tx_abts_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 118
  %66 = ptrtoint ptr %tx_abts_set to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %tx_abts_set, align 1
  %fcp_packet_aborts = getelementptr inbounds %struct.fc_host_statistics, ptr %call6, i32 0, i32 21
  %67 = ptrtoint ptr %fcp_packet_aborts to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %fcp_packet_aborts, align 8
  %conv20 = trunc i64 %68 to i8
  %tx_abts = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 117
  %69 = ptrtoint ptr %tx_abts to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv20, ptr %tx_abts, align 4
  %tx_lun_rst_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 131
  %70 = ptrtoint ptr %tx_lun_rst_set to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %tx_lun_rst_set, align 1
  %lun_resets = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 73
  %71 = ptrtoint ptr %lun_resets to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %lun_resets, align 8
  %tx_lun_rst = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 130
  %73 = ptrtoint ptr %tx_lun_rst to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %tx_lun_rst, align 8
  %abort_task_sets_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 133
  %74 = ptrtoint ptr %abort_task_sets_set to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %abort_task_sets_set, align 1
  %packet_aborts = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 71
  %75 = ptrtoint ptr %packet_aborts to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %packet_aborts, align 8
  %conv21 = trunc i64 %76 to i8
  %abort_task_sets = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 132
  %77 = ptrtoint ptr %abort_task_sets to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv21, ptr %abort_task_sets, align 2
  %scsi_busy_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 159
  %78 = ptrtoint ptr %scsi_busy_set to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %scsi_busy_set, align 1
  %busy = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 76
  %79 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %busy, align 1
  %scsi_busy = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 158
  %81 = ptrtoint ptr %scsi_busy to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %scsi_busy, align 4
  %scsi_tsk_full_set = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 167
  %82 = ptrtoint ptr %scsi_tsk_full_set to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %scsi_tsk_full_set, align 1
  %task_set_fulls = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 75
  %83 = ptrtoint ptr %task_set_fulls to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %task_set_fulls, align 2
  %scsi_tsk_full = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %data, i32 0, i32 166
  %85 = ptrtoint ptr %scsi_tsk_full to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %scsi_tsk_full, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qedf_fc_get_host_stats(ptr noundef %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  %call2 = tail call ptr @fc_get_host_stats(ptr noundef %shost) #16
  %vport = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 88) #20
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_fc_get_host_stats, i32 noundef 2056, ptr noundef nonnull @.str.44) #16
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %stats_mutex = getelementptr %struct.Scsi_Host, ptr %shost, i32 50, i32 50, i32 5
  tail call void @mutex_lock_nested(ptr noundef %stats_mutex, i32 noundef 0) #16
  %3 = load ptr, ptr @qed_ops, align 4
  %get_stats = getelementptr inbounds %struct.qed_fcoe_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %get_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_stats, align 4
  %cdev = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 33
  %6 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdev, align 4
  %call7 = tail call i32 %5(ptr noundef %7, ptr noundef nonnull %call7.i) #16
  %fcoe_tx_data_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 10
  %8 = ptrtoint ptr %fcoe_tx_data_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fcoe_tx_data_pkt_cnt, align 8
  %fcoe_tx_xfer_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 11
  %10 = ptrtoint ptr %fcoe_tx_xfer_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %fcoe_tx_xfer_pkt_cnt, align 8
  %add = add i64 %11, %9
  %fcoe_tx_other_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 12
  %12 = ptrtoint ptr %fcoe_tx_other_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fcoe_tx_other_pkt_cnt, align 8
  %add8 = add i64 %add, %13
  %tx_frames = getelementptr inbounds %struct.fc_host_statistics, ptr %call2, i32 0, i32 1
  %14 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_frames, align 8
  %add9 = add i64 %add8, %15
  store i64 %add9, ptr %tx_frames, align 8
  %fcoe_rx_data_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %fcoe_rx_data_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fcoe_rx_data_pkt_cnt, align 8
  %fcoe_rx_xfer_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 2
  %18 = ptrtoint ptr %fcoe_rx_xfer_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %fcoe_rx_xfer_pkt_cnt, align 8
  %add10 = add i64 %19, %17
  %fcoe_rx_other_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 3
  %20 = ptrtoint ptr %fcoe_rx_other_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fcoe_rx_other_pkt_cnt, align 8
  %add11 = add i64 %add10, %21
  %rx_frames = getelementptr inbounds %struct.fc_host_statistics, ptr %call2, i32 0, i32 3
  %22 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rx_frames, align 8
  %add12 = add i64 %add11, %23
  store i64 %add12, ptr %rx_frames, align 8
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %call7.i, align 8
  %conv30 = trunc i64 %25 to i32
  %26 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %25) #21, !srcloc !758
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %25, i64 %26, i32 0) #21, !srcloc !759
  %asmresult10.i = extractvalue { i64, i32 } %27, 0
  %div178677 = lshr i64 %asmresult10.i, 18
  %28 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %div178677, ptr %call7.i, align 8
  %conv181 = trunc i64 %div178677 to i32
  %mul182.neg = mul i32 %conv181, -1000000
  %sub183 = add i32 %mul182.neg, %conv30
  %conv207 = zext i32 %sub183 to i64
  %fcp_input_megabytes = getelementptr inbounds %struct.fc_host_statistics, ptr %call2, i32 0, i32 18
  %29 = ptrtoint ptr %fcp_input_megabytes to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %fcp_input_megabytes, align 8
  %add208 = add i64 %30, %conv207
  store i64 %add208, ptr %fcp_input_megabytes, align 8
  %fcoe_tx_byte_cnt243 = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 9
  %31 = ptrtoint ptr %fcoe_tx_byte_cnt243 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %fcoe_tx_byte_cnt243, align 8
  %conv244 = trunc i64 %32 to i32
  %33 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %32) #21, !srcloc !758
  %34 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %32, i64 %33, i32 0) #21, !srcloc !759
  %asmresult10.i681 = extractvalue { i64, i32 } %34, 0
  %div407678 = lshr i64 %asmresult10.i681, 18
  %35 = ptrtoint ptr %fcoe_tx_byte_cnt243 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %div407678, ptr %fcoe_tx_byte_cnt243, align 8
  %conv410 = trunc i64 %div407678 to i32
  %mul411.neg = mul i32 %conv410, -1000000
  %sub412 = add i32 %mul411.neg, %conv244
  %conv440 = zext i32 %sub412 to i64
  %fcp_output_megabytes = getelementptr inbounds %struct.fc_host_statistics, ptr %call2, i32 0, i32 19
  %36 = ptrtoint ptr %fcp_output_megabytes to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %fcp_output_megabytes, align 8
  %add441 = add i64 %37, %conv440
  store i64 %add441, ptr %fcp_output_megabytes, align 8
  %38 = ptrtoint ptr %call7.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %call7.i, align 8
  %div443679 = lshr i64 %39, 2
  %rx_words = getelementptr inbounds %struct.fc_host_statistics, ptr %call2, i32 0, i32 4
  %40 = ptrtoint ptr %rx_words to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_words, align 8
  %add444 = add i64 %41, %div443679
  store i64 %add444, ptr %rx_words, align 8
  %42 = load i64, ptr %fcoe_tx_byte_cnt243, align 8
  %div446680 = lshr i64 %42, 2
  %tx_words = getelementptr inbounds %struct.fc_host_statistics, ptr %call2, i32 0, i32 2
  %43 = ptrtoint ptr %tx_words to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tx_words, align 8
  %add447 = add i64 %44, %div446680
  store i64 %add447, ptr %tx_words, align 8
  %fcoe_silent_drop_pkt_crc_error_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 6
  %45 = ptrtoint ptr %fcoe_silent_drop_pkt_crc_error_cnt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fcoe_silent_drop_pkt_crc_error_cnt, align 8
  %conv448 = zext i32 %46 to i64
  %invalid_crc_count = getelementptr inbounds %struct.fc_host_statistics, ptr %call2, i32 0, i32 14
  %47 = ptrtoint ptr %invalid_crc_count to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %invalid_crc_count, align 8
  %add449 = add i64 %48, %conv448
  store i64 %add449, ptr %invalid_crc_count, align 8
  %fcoe_silent_drop_total_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 8
  %49 = ptrtoint ptr %fcoe_silent_drop_total_pkt_cnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fcoe_silent_drop_total_pkt_cnt, align 8
  %conv450 = zext i32 %50 to i64
  %dumped_frames = getelementptr inbounds %struct.fc_host_statistics, ptr %call2, i32 0, i32 8
  %51 = ptrtoint ptr %dumped_frames to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv450, ptr %dumped_frames, align 8
  %52 = load i32, ptr %fcoe_silent_drop_total_pkt_cnt, align 8
  %conv452 = zext i32 %52 to i64
  %error_frames = getelementptr inbounds %struct.fc_host_statistics, ptr %call2, i32 0, i32 7
  %53 = ptrtoint ptr %error_frames to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %error_frames, align 8
  %add453 = add i64 %54, %conv452
  store i64 %add453, ptr %error_frames, align 8
  %input_requests = getelementptr %struct.Scsi_Host, ptr %shost, i32 50, i32 50, i32 9, i32 5, i32 3
  %55 = ptrtoint ptr %input_requests to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %input_requests, align 16
  %fcp_input_requests = getelementptr inbounds %struct.fc_host_statistics, ptr %call2, i32 0, i32 15
  %57 = ptrtoint ptr %fcp_input_requests to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %fcp_input_requests, align 8
  %add454 = add i64 %58, %56
  store i64 %add454, ptr %fcp_input_requests, align 8
  %output_requests = getelementptr %struct.Scsi_Host, ptr %shost, i32 50, i32 50, i32 9, i32 5, i32 7
  %59 = ptrtoint ptr %output_requests to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %output_requests, align 8
  %fcp_output_requests = getelementptr inbounds %struct.fc_host_statistics, ptr %call2, i32 0, i32 16
  %61 = ptrtoint ptr %fcp_output_requests to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %fcp_output_requests, align 8
  %add455 = add i64 %62, %60
  store i64 %add455, ptr %fcp_output_requests, align 8
  %control_requests = getelementptr %struct.Scsi_Host, ptr %shost, i32 50, i32 50, i32 10, i32 1
  %63 = ptrtoint ptr %control_requests to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %control_requests, align 16
  %fcp_control_requests = getelementptr inbounds %struct.fc_host_statistics, ptr %call2, i32 0, i32 17
  %65 = ptrtoint ptr %fcp_control_requests to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %fcp_control_requests, align 8
  %add456 = add i64 %66, %64
  store i64 %add456, ptr %fcp_control_requests, align 8
  %packet_aborts = getelementptr %struct.Scsi_Host, ptr %shost, i32 50, i32 50, i32 10, i32 1, i32 2
  %67 = ptrtoint ptr %packet_aborts to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %packet_aborts, align 8
  %fcp_packet_aborts = getelementptr inbounds %struct.fc_host_statistics, ptr %call2, i32 0, i32 21
  %69 = ptrtoint ptr %fcp_packet_aborts to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %fcp_packet_aborts, align 8
  %add457 = add i64 %70, %68
  store i64 %add457, ptr %fcp_packet_aborts, align 8
  %alloc_failures = getelementptr %struct.Scsi_Host, ptr %shost, i32 50, i32 50, i32 10, i32 1, i32 4
  %71 = ptrtoint ptr %alloc_failures to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %alloc_failures, align 16
  %fcp_frame_alloc_failures = getelementptr inbounds %struct.fc_host_statistics, ptr %call2, i32 0, i32 22
  %73 = ptrtoint ptr %fcp_frame_alloc_failures to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %fcp_frame_alloc_failures, align 8
  %add458 = add i64 %74, %72
  store i64 %add458, ptr %fcp_frame_alloc_failures, align 8
  tail call void @mutex_unlock(ptr noundef %stats_mutex) #16
  tail call void @kfree(ptr noundef nonnull %call7.i) #16
  br label %out

out:                                              ; preds = %if.end6, %if.then5, %entry.out_crit_edge
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_stag_change_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @qedf_stag_change_work._rs, ptr noundef nonnull @__func__.qedf_stag_change_work) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -5744
  %pdev = getelementptr i8, ptr %work, i32 -5112
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %do.end.dev_name.exit_crit_edge ]
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %retval.0.i, ptr noundef nonnull @__func__.qedf_stag_change_work, i32 noundef 3986, i32 noundef %7) #19
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %entry.if.end_crit_edge
  %lport = getelementptr i8, ptr %work, i32 -5296
  %8 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lport, align 16
  tail call void @qedf_ctx_soft_reset(ptr noundef %9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_get_generic_tlv_data(ptr noundef readonly %dev, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef null, ptr noundef nonnull @__func__.qedf_get_generic_tlv_data, i32 noundef 4041, i32 noundef 32, ptr noundef nonnull @.str.32) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = call ptr @memset(ptr %data, i32 0, i32 20)
  %mac = getelementptr inbounds %struct.qed_generic_tlvs, ptr %data, i32 0, i32 1
  %mac1 = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac1, align 4
  %3 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %mac, align 4
  %add.ptr.i = getelementptr %struct.qedf_ctx, ptr %dev, i32 0, i32 16, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qed_generic_tlvs, ptr %data, i32 0, i32 1, i32 0, i32 4
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qedf_cleanup() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @pci_unregister_driver(ptr noundef nonnull @qedf_pci_driver) #16
  %0 = load ptr, ptr @qedf_io_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #16
  %1 = load ptr, ptr @qedf_fc_vport_transport_template, align 4
  tail call void @fc_release_transport(ptr noundef %1) #16
  %2 = load ptr, ptr @qedf_fc_transport_template, align 4
  tail call void @fc_release_transport(ptr noundef %2) #16
  tail call void @qedf_dbg_exit() #16
  tail call void @qed_put_fcoe_ops() #16
  %3 = load ptr, ptr @qedf_io_work_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_release_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_put_fcoe_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @qedf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  store i32 249782, ptr @qedf_debug, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr @qedf_default_prio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp3 = icmp sgt i32 %1, 7
  br i1 %cmp3, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  store i32 3, ptr @qedf_default_prio, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_init, i32 noundef 4070, ptr noundef nonnull @.str.246, i32 noundef 3) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef null, ptr noundef nonnull @__func__.qedf_init, i32 noundef 4075, i32 noundef 2, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.35) #16
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.249, i32 noundef 84, i32 noundef 0, i32 noundef 8192, ptr noundef null) #16
  store ptr %call, ptr @qedf_io_work_cache, align 4
  %cmp7 = icmp eq ptr %call, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_init, i32 noundef 4081, ptr noundef nonnull @.str.250) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef null, ptr noundef nonnull @__func__.qedf_init, i32 noundef 4085, i32 noundef 4, ptr noundef nonnull @.str.251, ptr noundef nonnull %call) #16
  %call10 = tail call ptr @qed_get_fcoe_ops() #16
  store ptr %call10, ptr @qed_ops, align 4
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_init, i32 noundef 4089, ptr noundef nonnull @.str.252) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  tail call void @qedf_dbg_init(ptr noundef nonnull @.str.34) #16
  %call13 = tail call ptr @fc_attach_transport(ptr noundef nonnull @qedf_fc_transport_fn) #16
  store ptr %call13, ptr @qedf_fc_transport_template, align 4
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_init, i32 noundef 4100, ptr noundef nonnull @.str.253) #16
  br label %err2

if.end16:                                         ; preds = %if.end12
  %call17 = tail call ptr @fc_attach_transport(ptr noundef nonnull @qedf_fc_vport_transport_fn) #16
  store ptr %call17, ptr @qedf_fc_vport_transport_template, align 4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_init, i32 noundef 4108, ptr noundef nonnull @.str.254) #16
  br label %err3

if.end20:                                         ; preds = %if.end16
  %call21 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.56, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str.255) #16
  store ptr %call21, ptr @qedf_io_wq, align 4
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_init, i32 noundef 4114, ptr noundef nonnull @.str.256) #16
  br label %err4

if.end24:                                         ; preds = %if.end20
  store ptr @qedf_get_login_failures, ptr getelementptr inbounds (%struct.qed_fcoe_cb_ops, ptr @qedf_cb_ops, i32 0, i32 1), align 4
  %call25 = tail call i32 @__pci_register_driver(ptr noundef nonnull @qedf_pci_driver, ptr noundef null, ptr noundef nonnull @.str.34) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.then27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_init, i32 noundef 4122, ptr noundef nonnull @.str.257) #16
  %2 = load ptr, ptr @qedf_io_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #16
  br label %err4

err4:                                             ; preds = %if.then27, %if.then23
  %3 = load ptr, ptr @qedf_fc_vport_transport_template, align 4
  tail call void @fc_release_transport(ptr noundef %3) #16
  br label %err3

err3:                                             ; preds = %err4, %if.then19
  %4 = load ptr, ptr @qedf_fc_transport_template, align 4
  tail call void @fc_release_transport(ptr noundef %4) #16
  br label %err2

err2:                                             ; preds = %err3, %if.then15
  tail call void @qedf_dbg_exit() #16
  tail call void @qed_put_fcoe_ops() #16
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end24.cleanup_crit_edge, %if.then11, %if.then8
  %retval.0 = phi i32 [ 0, %if.end24.cleanup_crit_edge ], [ -22, %err2 ], [ -22, %if.then11 ], [ -22, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_fc_frame_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_lport_flogi_resp(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_get_host_stats(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__qedf_probe(ptr noundef %pdev, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_cnt = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 51
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enable_cnt, i32 noundef 4) #16
  %0 = ptrtoint ptr %enable_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %enable_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__qedf_remove(ptr noundef %pdev, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__qedf_remove(ptr noundef %pdev, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qedf_probe(ptr noundef %pdev, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.qed_ll2_params, align 2
  %host_buf = alloca [20 x i8], align 1
  %link_params = alloca %struct.qed_link_params, align 4
  %slowpath_params = alloca %struct.qed_slowpath_params, align 4
  %qed_params = alloca %struct.qed_probe_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #16
  %0 = getelementptr inbounds %struct.qed_ll2_params, ptr %params, i32 0, i32 5
  %1 = getelementptr inbounds %struct.qed_ll2_params, ptr %params, i32 0, i32 5, i32 4
  %2 = call ptr @memset(ptr %params, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %host_buf) #16
  %3 = call ptr @memset(ptr %host_buf, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %link_params) #16
  %4 = call ptr @memset(ptr %link_params, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %slowpath_params) #16
  %5 = getelementptr inbounds %struct.qed_slowpath_params, ptr %slowpath_params, i32 0, i32 1
  %6 = getelementptr inbounds %struct.qed_slowpath_params, ptr %slowpath_params, i32 0, i32 2
  %7 = getelementptr inbounds %struct.qed_slowpath_params, ptr %slowpath_params, i32 0, i32 3
  %8 = getelementptr inbounds %struct.qed_slowpath_params, ptr %slowpath_params, i32 0, i32 4
  %9 = getelementptr inbounds %struct.qed_slowpath_params, ptr %slowpath_params, i32 0, i32 5
  %10 = call ptr @memset(ptr %slowpath_params, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %qed_params) #16
  %11 = call ptr @memset(ptr %qed_params, i32 255, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %dp_module = getelementptr inbounds %struct.qed_probe_params, ptr %qed_params, i32 0, i32 1
  %dp_level = getelementptr inbounds %struct.qed_probe_params, ptr %qed_params, i32 0, i32 2
  %cmp.not = xor i1 %cmp, true
  %12 = getelementptr inbounds i8, ptr %qed_params, i32 8
  br label %retry_probe

retry_probe:                                      ; preds = %if.then153, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.then153 ], [ 10, %entry ]
  %qedf.0 = phi ptr [ %qedf.1, %if.then153 ], [ null, %entry ]
  br i1 %cmp, label %if.else, label %if.then2

if.then2:                                         ; preds = %retry_probe
  %call.i = call ptr @scsi_host_alloc(ptr noundef nonnull @qedf_host_template, i32 noundef 121856) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then2.if.then3_crit_edge, label %libfc_host_alloc.exit

if.then2.if.then3_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

libfc_host_alloc.exit:                            ; preds = %if.then2
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 53
  %13 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %hostdata.i.i, align 8
  %ema_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %ema_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %ema_list.i, ptr %ema_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ema_list.i, ptr %prev.i.i, align 4
  %vports.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 0, i32 2
  %16 = ptrtoint ptr %vports.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %vports.i, ptr %vports.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %vports.i, ptr %prev.i1.i, align 4
  %tobool.not = icmp eq ptr %hostdata.i.i, null
  br i1 %tobool.not, label %libfc_host_alloc.exit.if.then3_crit_edge, label %if.end4

libfc_host_alloc.exit.if.then3_crit_edge:         ; preds = %libfc_host_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.then3:                                         ; preds = %libfc_host_alloc.exit.if.then3_crit_edge, %if.then2.if.then3_crit_edge
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3292, ptr noundef nonnull @.str.45) #16
  br label %err0

if.end4:                                          ; preds = %libfc_host_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @fc_disc_init(ptr noundef nonnull %hostdata.i.i) #16
  %add.ptr.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  %flags = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 8, i32 4
  call void @_set_bit(i32 noundef 8, ptr noundef %flags) #16
  %lport6 = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 49, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %18 = ptrtoint ptr %lport6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %hostdata.i.i, ptr %lport6, align 16
  %lp = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 49, i32 12, i32 4, i32 1
  %19 = ptrtoint ptr %lp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %hostdata.i.i, ptr %lp, align 4
  %pdev7 = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 0, i32 7, i32 3
  %20 = ptrtoint ptr %pdev7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pdev, ptr %pdev7, align 8
  %pdev8 = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %pdev8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pdev, ptr %pdev8, align 4
  %22 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hostdata.i.i, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %host_no, align 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %add.ptr.i, align 16
  %hba_lock = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 0, i32 7, i32 1, i32 1
  call void @__raw_spin_lock_init(ptr noundef %hba_lock, ptr noundef nonnull @.str.46, ptr noundef nonnull @__qedf_probe.__key, i16 noundef signext 3) #16
  %fcports = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 7
  %27 = ptrtoint ptr %fcports to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %fcports, ptr %fcports, align 4
  %prev.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 8
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %fcports, ptr %prev.i, align 4
  %curr_conn_id = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 9, i32 1
  %29 = ptrtoint ptr %curr_conn_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1023, ptr %curr_conn_id, align 4
  %num_offloads = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num_offloads, i32 noundef 4) #16
  %30 = ptrtoint ptr %num_offloads to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %num_offloads, align 4
  %stop_io_on_error = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 63
  %31 = ptrtoint ptr %stop_io_on_error to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %stop_io_on_error, align 2
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %fipvlan_compl = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 4, i32 1
  %33 = ptrtoint ptr %fipvlan_compl to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %fipvlan_compl, align 4
  %wait.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 5
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #16
  %stats_mutex = getelementptr %struct.Scsi_Host, ptr %call.i, i32 50, i32 50, i32 5
  call void @__mutex_init(ptr noundef %stats_mutex, ptr noundef nonnull @.str.48, ptr noundef nonnull @__qedf_probe.__key.47) #16
  %flush_mutex = getelementptr %struct.Scsi_Host, ptr %call.i, i32 50, i32 50, i32 10, i32 1, i32 4, i32 2
  call void @__mutex_init(ptr noundef %flush_mutex, ptr noundef nonnull @.str.50, ptr noundef nonnull @__qedf_probe.__key.49) #16
  %flogi_pending = getelementptr %struct.Scsi_Host, ptr %call.i, i32 50, i32 50, i32 4
  %34 = ptrtoint ptr %flogi_pending to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %flogi_pending, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3322, i32 noundef 2, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.35, i32 noundef 8, i32 noundef 59, i32 noundef 1, i32 noundef 0) #16
  br label %if.end23

if.else:                                          ; preds = %retry_probe
  call void @__sanitizer_cov_trace_pc() #18
  call void @msleep(i32 noundef 2000) #16
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i, align 4
  %flags21 = getelementptr inbounds %struct.qedf_ctx, ptr %36, i32 0, i32 29
  call void @_set_bit(i32 noundef 8, ptr noundef %flags21) #16
  %lport22 = getelementptr inbounds %struct.qedf_ctx, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %lport22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lport22, align 16
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end4
  %qedf.1 = phi ptr [ %add.ptr.i, %if.end4 ], [ %36, %if.else ]
  %lport.0 = phi ptr [ %hostdata.i.i, %if.end4 ], [ %38, %if.else ]
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3330, i32 noundef 4, ptr noundef nonnull @.str.52) #16
  %39 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lport.0, align 8
  %41 = load ptr, ptr @qedf_io_work_cache, align 4
  %call.i735 = call ptr @mempool_create(i32 noundef 64, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %41) #16
  %io_mempool = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 50
  %42 = ptrtoint ptr %io_mempool to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i735, ptr %io_mempool, align 4
  %cmp28 = icmp eq ptr %call.i735, null
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3338, ptr noundef nonnull @.str.53) #16
  br label %err1

if.end31:                                         ; preds = %if.end23
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3342, i32 noundef 2, ptr noundef nonnull @.str.54, ptr noundef nonnull %call.i735) #16
  %lport34 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 2
  %43 = ptrtoint ptr %lport34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lport34, align 16
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %host_no36 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %host_no36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %host_no36, align 4
  %call37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %host_buf, ptr noundef nonnull @.str.55, i32 noundef %48)
  %call39 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.56, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull %host_buf) #16
  %link_update_wq = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 21
  %49 = ptrtoint ptr %link_update_wq to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call39, ptr %link_update_wq, align 4
  %link_update = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 23
  call void @__init_work(ptr noundef %link_update, i32 noundef 0) #16
  %50 = ptrtoint ptr %link_update to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -64, ptr %link_update, align 4
  %lockdep_map = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 23, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.58, ptr noundef nonnull @__qedf_probe.__key.57, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry48 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 23, i32 0, i32 1
  %51 = ptrtoint ptr %entry48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %entry48, ptr %entry48, align 4
  %prev.i736 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 23, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %prev.i736 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %entry48, ptr %prev.i736, align 4
  %func = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 23, i32 0, i32 2
  %53 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @qedf_handle_link_update, ptr %func, align 4
  %timer = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 23, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.60, ptr noundef nonnull @__qedf_probe.__key.59) #16
  %link_recovery = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 24
  call void @__init_work(ptr noundef %link_recovery, i32 noundef 0) #16
  %54 = ptrtoint ptr %link_recovery to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -64, ptr %link_recovery, align 8
  %lockdep_map69 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 24, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map69, ptr noundef nonnull @.str.62, ptr noundef nonnull @__qedf_probe.__key.61, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry72 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 24, i32 0, i32 1
  %55 = ptrtoint ptr %entry72 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %entry72, ptr %entry72, align 4
  %prev.i737 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 24, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %prev.i737 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %entry72, ptr %prev.i737, align 4
  %func75 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 24, i32 0, i32 2
  %57 = ptrtoint ptr %func75 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @qedf_link_recovery, ptr %func75, align 4
  %timer80 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 24, i32 1
  call void @init_timer_key(ptr noundef %timer80, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.64, ptr noundef nonnull @__qedf_probe.__key.63) #16
  %grcdump_work = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 54
  call void @__init_work(ptr noundef %grcdump_work, i32 noundef 0) #16
  %58 = ptrtoint ptr %grcdump_work to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -64, ptr %grcdump_work, align 4
  %lockdep_map95 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 54, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map95, ptr noundef nonnull @.str.66, ptr noundef nonnull @__qedf_probe.__key.65, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry98 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 54, i32 0, i32 1
  %59 = ptrtoint ptr %entry98 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %entry98, ptr %entry98, align 4
  %prev.i738 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 54, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %prev.i738 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %entry98, ptr %prev.i738, align 4
  %func101 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 54, i32 0, i32 2
  %61 = ptrtoint ptr %func101 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @qedf_wq_grcdump, ptr %func101, align 4
  %timer106 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 54, i32 1
  call void @init_timer_key(ptr noundef %timer106, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.68, ptr noundef nonnull @__qedf_probe.__key.67) #16
  %stag_work = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 55
  call void @__init_work(ptr noundef %stag_work, i32 noundef 0) #16
  %62 = ptrtoint ptr %stag_work to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -64, ptr %stag_work, align 16
  %lockdep_map121 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 55, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map121, ptr noundef nonnull @.str.70, ptr noundef nonnull @__qedf_probe.__key.69, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry124 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 55, i32 0, i32 1
  %63 = ptrtoint ptr %entry124 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %entry124, ptr %entry124, align 4
  %prev.i739 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 55, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %prev.i739 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %entry124, ptr %prev.i739, align 4
  %func127 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 55, i32 0, i32 2
  %65 = ptrtoint ptr %func127 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @qedf_stag_change_work, ptr %func127, align 4
  %timer132 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 55, i32 1
  call void @init_timer_key(ptr noundef %timer132, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.72, ptr noundef nonnull @__qedf_probe.__key.71) #16
  %66 = load i32, ptr @qedf_fipvlan_retries, align 4
  %fipvlan_retries = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 30
  %67 = ptrtoint ptr %fipvlan_retries to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %fipvlan_retries, align 4
  %68 = load i32, ptr @qedf_default_prio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %cmp137 = icmp sgt i32 %68, -1
  %conv = trunc i32 %68 to i8
  %spec.select = select i1 %cmp137, i8 %conv, i8 3
  %69 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 7
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %spec.select, ptr %69, align 8
  %71 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %12, align 4
  %72 = ptrtoint ptr %qed_params to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %qed_params, align 4
  %73 = load i32, ptr @qedf_dp_module, align 4
  %74 = ptrtoint ptr %dp_module to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %dp_module, align 4
  %75 = load i32, ptr @qedf_dp_level, align 4
  %conv142 = trunc i32 %75 to i8
  %76 = ptrtoint ptr %dp_level to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv142, ptr %dp_level, align 4
  %77 = load ptr, ptr @qed_ops, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %probe = getelementptr inbounds %struct.qed_common_ops, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %probe, align 4
  %call145 = call ptr %81(ptr noundef %pdev, ptr noundef nonnull %qed_params) #16
  %cdev = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 8
  %82 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call145, ptr %cdev, align 4
  %tobool147.not = icmp eq ptr %call145, null
  br i1 %tobool147.not, label %if.then148, label %if.end158

if.then148:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %tobool152.not = icmp eq i32 %indvars.iv, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool152.not
  br i1 %or.cond, label %if.end156, label %if.then153

if.then153:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3375, ptr noundef nonnull @.str.73, i32 noundef %indvars.iv) #16
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  br label %retry_probe

if.end156:                                        ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3379, ptr noundef nonnull @.str.74) #16
  br label %err1

if.end158:                                        ; preds = %if.end31
  %lport34.le = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 2
  %cdev.le = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 8
  %83 = load ptr, ptr @qed_ops, align 4
  %fill_dev_info = getelementptr inbounds %struct.qed_fcoe_ops, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %fill_dev_info to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fill_dev_info, align 4
  %dev_info = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 9
  %call160 = call i32 %85(ptr noundef nonnull %call145, ptr noundef %dev_info) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end164, label %if.then162

if.then162:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3387, ptr noundef nonnull @.str.75) #16
  br label %err1

if.end164:                                        ; preds = %if.end158
  %num_hwfns = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 9, i32 0, i32 3
  %86 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %num_hwfns, align 4
  %conv168 = zext i8 %87 to i32
  %88 = load ptr, ptr @qed_ops, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %get_affin_hwfn_idx = getelementptr inbounds %struct.qed_common_ops, ptr %90, i32 0, i32 40
  %91 = ptrtoint ptr %get_affin_hwfn_idx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %get_affin_hwfn_idx, align 4
  %93 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cdev.le, align 4
  %call171 = call zeroext i8 %92(ptr noundef %94) #16
  %conv172 = zext i8 %call171 to i32
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3394, i32 noundef 4, ptr noundef nonnull @.str.76, i32 noundef %conv168, i32 noundef %conv172) #16
  %num_cqs.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 9, i32 5
  %95 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num_cqs.i, align 8
  %conv.i = zext i8 %96 to i32
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %97 = load volatile i32, ptr @__num_online_cpus, align 4
  %98 = call i32 @llvm.umin.i32(i32 %97, i32 %conv.i) #16
  %conv2.i = trunc i32 %98 to i8
  %num_queues.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 31
  %99 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv2.i, ptr %num_queues.i, align 8
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_set_fcoe_pf_param, i32 noundef 3159, i32 noundef 4, ptr noundef nonnull @.str.138, i32 noundef %98) #16
  %pdev.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 13
  %100 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  %102 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %num_queues.i, align 8
  %conv6.i = zext i8 %103 to i32
  %mul.i = mul nuw nsw i32 %conv6.i, 24
  %hw_p_cpuq.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 34
  %call.i.i740 = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %mul.i, ptr noundef %hw_p_cpuq.i, i32 noundef 3264, i32 noundef 0) #16
  %p_cpuq.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 33
  %104 = ptrtoint ptr %p_cpuq.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i.i740, ptr %p_cpuq.i, align 16
  %tobool.not.i741 = icmp eq ptr %call.i.i740, null
  br i1 %tobool.not.i741, label %if.then.i, label %if.end.i742

if.then.i:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_set_fcoe_pf_param, i32 noundef 3166, ptr noundef nonnull @.str.139) #16
  br label %if.then175

if.end.i742:                                      ; preds = %if.end164
  %105 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %num_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i.i = icmp eq i8 %106, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end8.i.i.i.i

if.then.i.i:                                      ; preds = %if.end.i742
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_alloc_global_queues, i32 noundef 3021, ptr noundef nonnull @.str.143) #16
  br label %if.then12.i

if.end8.i.i.i.i:                                  ; preds = %if.end.i742
  %conv.i.i = zext i8 %106 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 2
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i, i32 noundef 3520) #22
  %global_queues.i.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 32
  %107 = ptrtoint ptr %global_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call9.i.i.i.i, ptr %global_queues.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.end10.i.i

if.then8.i.i:                                     ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_alloc_global_queues, i32 noundef 3039, ptr noundef nonnull @.str.145) #16
  br label %if.then12.i

if.end10.i.i:                                     ; preds = %if.end8.i.i.i.i
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_alloc_global_queues, i32 noundef 3043, i32 noundef 4, ptr noundef nonnull @.str.146, ptr noundef nonnull %call9.i.i.i.i) #16
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end10.i.i
  %i.0120.i.i.i = phi i32 [ 0, %if.end10.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %108 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdev.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  %arrayidx.i.i.i = getelementptr %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 35, i32 %i.0120.i.i.i
  %buf_dma.i.i.i = getelementptr %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 35, i32 %i.0120.i.i.i, i32 1
  %call.i.i.i115.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i.i, i32 noundef 2072, ptr noundef %buf_dma.i.i.i, i32 noundef 3264, i32 noundef 0) #16
  %110 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i.i.i115.i, ptr %arrayidx.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i115.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_alloc_bdq, i32 noundef 2943, ptr noundef nonnull @.str.151, i32 noundef %i.0120.i.i.i) #16
  br label %if.then15.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.0120.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 256
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i
  %bdq_pbl_mem_size.i.i.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 38
  %111 = ptrtoint ptr %bdq_pbl_mem_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 4096, ptr %bdq_pbl_mem_size.i.i.i, align 16
  %112 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pdev.i, align 8
  %dev9.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  %bdq_pbl_dma.i.i.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 37
  %call.i117.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev9.i.i.i, i32 noundef 4096, ptr noundef %bdq_pbl_dma.i.i.i, i32 noundef 3264, i32 noundef 0) #16
  %bdq_pbl.i.i.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 36
  %114 = ptrtoint ptr %bdq_pbl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call.i117.i.i.i, ptr %bdq_pbl.i.i.i, align 8
  %tobool13.not.i.i.i = icmp eq ptr %call.i117.i.i.i, null
  br i1 %tobool13.not.i.i.i, label %if.then14.i.i.i, label %if.end16.i.i.i

if.then14.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_alloc_bdq, i32 noundef 2957, ptr noundef nonnull @.str.152) #16
  br label %if.then15.i.i

if.end16.i.i.i:                                   ; preds = %for.end.i.i.i
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_alloc_bdq, i32 noundef 2963, i32 noundef 4, ptr noundef nonnull @.str.153, ptr noundef nonnull %call.i117.i.i.i, ptr noundef %bdq_pbl_dma.i.i.i) #16
  %115 = ptrtoint ptr %bdq_pbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bdq_pbl.i.i.i, align 8
  br label %for.body23.i.i.i

for.body23.i.i.i:                                 ; preds = %for.body23.i.i.i.for.body23.i.i.i_crit_edge, %if.end16.i.i.i
  %pbl.0122.i.i.i = phi ptr [ %116, %if.end16.i.i.i ], [ %incdec.ptr.i.i.i, %for.body23.i.i.i.for.body23.i.i.i_crit_edge ]
  %i.1121.i.i.i = phi i32 [ 0, %if.end16.i.i.i ], [ %inc39.i.i.i, %for.body23.i.i.i.for.body23.i.i.i_crit_edge ]
  %buf_dma26.i.i.i = getelementptr %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 35, i32 %i.1121.i.i.i, i32 1
  %hi.i.i.i = getelementptr inbounds %struct.regpair, ptr %pbl.0122.i.i.i, i32 0, i32 1
  %117 = ptrtoint ptr %hi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %hi.i.i.i, align 4
  %118 = ptrtoint ptr %buf_dma26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %buf_dma26.i.i.i, align 4
  %120 = call i32 @llvm.bswap.i32(i32 %119) #16
  %121 = ptrtoint ptr %pbl.0122.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %pbl.0122.i.i.i, align 4
  %opaque.i.i.i = getelementptr inbounds %struct.scsi_bd, ptr %pbl.0122.i.i.i, i32 0, i32 1
  %hi35.i.i.i = getelementptr inbounds %struct.scsi_bd, ptr %pbl.0122.i.i.i, i32 0, i32 1, i32 0, i32 1
  %122 = ptrtoint ptr %hi35.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %hi35.i.i.i, align 4
  %123 = call i32 @llvm.bswap.i32(i32 %i.1121.i.i.i) #16
  %124 = ptrtoint ptr %opaque.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %opaque.i.i.i, align 4
  %incdec.ptr.i.i.i = getelementptr %struct.scsi_bd, ptr %pbl.0122.i.i.i, i32 1
  %inc39.i.i.i = add nuw nsw i32 %i.1121.i.i.i, 1
  %exitcond128.not.i.i.i = icmp eq i32 %inc39.i.i.i, 256
  br i1 %exitcond128.not.i.i.i, label %for.end40.i.i.i, label %for.body23.i.i.i.for.body23.i.i.i_crit_edge

for.body23.i.i.i.for.body23.i.i.i_crit_edge:      ; preds = %for.body23.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body23.i.i.i

for.end40.i.i.i:                                  ; preds = %for.body23.i.i.i
  %125 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pdev.i, align 8
  %dev42.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 44
  %bdq_pbl_list_dma.i.i.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 40
  %call.i118.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev42.i.i.i, i32 noundef 4096, ptr noundef %bdq_pbl_list_dma.i.i.i, i32 noundef 3264, i32 noundef 0) #16
  %bdq_pbl_list.i.i.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 39
  %127 = ptrtoint ptr %bdq_pbl_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call.i118.i.i.i, ptr %bdq_pbl_list.i.i.i, align 4
  %tobool45.not.i.i.i = icmp eq ptr %call.i118.i.i.i, null
  br i1 %tobool45.not.i.i.i, label %if.then46.i.i.i, label %if.end48.i.i.i

if.then46.i.i.i:                                  ; preds = %for.end40.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_alloc_bdq, i32 noundef 2985, ptr noundef nonnull @.str.154) #16
  br label %if.then15.i.i

if.end48.i.i.i:                                   ; preds = %for.end40.i.i.i
  %128 = ptrtoint ptr %bdq_pbl_mem_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bdq_pbl_mem_size.i.i.i, align 16
  %div116.i.i.i = lshr i32 %129, 12
  %conv50.i.i.i = trunc i32 %div116.i.i.i to i8
  %bdq_pbl_list_num_entries.i.i.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 41
  %130 = ptrtoint ptr %bdq_pbl_list_num_entries.i.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv50.i.i.i, ptr %bdq_pbl_list_num_entries.i.i.i, align 4
  %131 = and i32 %129, 1044480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp56124.not.i.i.i = icmp eq i32 %131, 0
  br i1 %cmp56124.not.i.i.i, label %if.end48.i.i.i.qedf_alloc_bdq.exit.i.i_crit_edge, label %if.end48.i.i.i.for.body58.i.i.i_crit_edge

if.end48.i.i.i.for.body58.i.i.i_crit_edge:        ; preds = %if.end48.i.i.i
  br label %for.body58.i.i.i

if.end48.i.i.i.qedf_alloc_bdq.exit.i.i_crit_edge: ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qedf_alloc_bdq.exit.i.i

for.body58.i.i.i:                                 ; preds = %for.body58.i.i.i.for.body58.i.i.i_crit_edge, %if.end48.i.i.i.for.body58.i.i.i_crit_edge
  %list.0126.i.i.i = phi ptr [ %incdec.ptr61.i.i.i, %for.body58.i.i.i.for.body58.i.i.i_crit_edge ], [ %call.i118.i.i.i, %if.end48.i.i.i.for.body58.i.i.i_crit_edge ]
  %i.2125.i.i.i = phi i32 [ %inc64.i.i.i, %for.body58.i.i.i.for.body58.i.i.i_crit_edge ], [ 0, %if.end48.i.i.i.for.body58.i.i.i_crit_edge ]
  %132 = ptrtoint ptr %bdq_pbl_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %bdq_pbl_dma.i.i.i, align 4
  %conv60.i.i.i = zext i32 %133 to i64
  %134 = ptrtoint ptr %list.0126.i.i.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %conv60.i.i.i, ptr %list.0126.i.i.i, align 8
  %incdec.ptr61.i.i.i = getelementptr i64, ptr %list.0126.i.i.i, i32 1
  %inc64.i.i.i = add nuw nsw i32 %i.2125.i.i.i, 1
  %135 = ptrtoint ptr %bdq_pbl_list_num_entries.i.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %bdq_pbl_list_num_entries.i.i.i, align 4
  %conv55.i.i.i = zext i8 %136 to i32
  %cmp56.i.i.i = icmp ult i32 %inc64.i.i.i, %conv55.i.i.i
  br i1 %cmp56.i.i.i, label %for.body58.i.i.i.for.body58.i.i.i_crit_edge, label %for.body58.i.i.i.qedf_alloc_bdq.exit.i.i_crit_edge

for.body58.i.i.i.qedf_alloc_bdq.exit.i.i_crit_edge: ; preds = %for.body58.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qedf_alloc_bdq.exit.i.i

for.body58.i.i.i.for.body58.i.i.i_crit_edge:      ; preds = %for.body58.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body58.i.i.i

qedf_alloc_bdq.exit.i.i:                          ; preds = %for.body58.i.i.i.qedf_alloc_bdq.exit.i.i_crit_edge, %if.end48.i.i.i.qedf_alloc_bdq.exit.i.i_crit_edge
  %137 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %num_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %cmp242.not.i.i = icmp eq i8 %138, 0
  br i1 %cmp242.not.i.i, label %qedf_alloc_bdq.exit.i.i.if.end177_crit_edge, label %qedf_alloc_bdq.exit.i.i.for.body.i.i_crit_edge

qedf_alloc_bdq.exit.i.i.for.body.i.i_crit_edge:   ; preds = %qedf_alloc_bdq.exit.i.i
  br label %for.body.i.i

qedf_alloc_bdq.exit.i.i.if.end177_crit_edge:      ; preds = %qedf_alloc_bdq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end177

if.then15.i.i:                                    ; preds = %if.then46.i.i.i, %if.then14.i.i.i, %if.then.i.i.i
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_alloc_global_queues, i32 noundef 3048, ptr noundef nonnull @.str.147) #16
  br label %mem_alloc_failure.i.i

for.body.i.i:                                     ; preds = %while.end.i.i.for.body.i.i_crit_edge, %qedf_alloc_bdq.exit.i.i.for.body.i.i_crit_edge
  %i.0243.i.i = phi i32 [ %inc.i.i, %while.end.i.i.for.body.i.i_crit_edge ], [ 0, %qedf_alloc_bdq.exit.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %139 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i227.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %139, i32 noundef 3520, i32 noundef 32) #20
  %140 = ptrtoint ptr %global_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %141, i32 %i.0243.i.i
  %142 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call7.i.i227.i.i, ptr %arrayidx.i.i, align 4
  %143 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx24.i.i = getelementptr ptr, ptr %143, i32 %i.0243.i.i
  %144 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx24.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %145, null
  br i1 %tobool25.not.i.i, label %if.then26.i.i, label %if.end28.i.i

if.then26.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_alloc_global_queues, i32 noundef 3058, ptr noundef nonnull @.str.148, i32 noundef %i.0243.i.i) #16
  br label %mem_alloc_failure.i.i

if.end28.i.i:                                     ; preds = %for.body.i.i
  %cq_mem_size.i.i = getelementptr inbounds %struct.global_queue, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %cq_mem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 65536, ptr %cq_mem_size.i.i, align 4
  %147 = ptrtoint ptr %global_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx32.i.i = getelementptr ptr, ptr %148, i32 %i.0243.i.i
  %149 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx32.i.i, align 4
  %cq_mem_size33.i.i = getelementptr inbounds %struct.global_queue, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %cq_mem_size33.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cq_mem_size33.i.i, align 4
  %add.i.i = add i32 %152, 4095
  %and.i.i = and i32 %add.i.i, -4096
  store i32 %and.i.i, ptr %cq_mem_size33.i.i, align 4
  %153 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx38.i.i = getelementptr ptr, ptr %153, i32 %i.0243.i.i
  %154 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx38.i.i, align 4
  %cq_mem_size39.i.i = getelementptr inbounds %struct.global_queue, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %cq_mem_size39.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %cq_mem_size39.i.i, align 4
  %158 = lshr i32 %157, 10
  %mul40.i.i = and i32 %158, 4194300
  %cq_pbl_size.i.i = getelementptr inbounds %struct.global_queue, ptr %155, i32 0, i32 7
  %159 = ptrtoint ptr %cq_pbl_size.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %mul40.i.i, ptr %cq_pbl_size.i.i, align 4
  %160 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx44.i.i = getelementptr ptr, ptr %160, i32 %i.0243.i.i
  %161 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx44.i.i, align 4
  %cq_pbl_size45.i.i = getelementptr inbounds %struct.global_queue, ptr %162, i32 0, i32 7
  %163 = ptrtoint ptr %cq_pbl_size45.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cq_pbl_size45.i.i, align 4
  %add46.i.i = add i32 %164, 4095
  %and47.i.i = and i32 %add46.i.i, -4096
  store i32 %and47.i.i, ptr %cq_pbl_size45.i.i, align 4
  %165 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pdev.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %166, i32 0, i32 44
  %167 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx52.i.i = getelementptr ptr, ptr %167, i32 %i.0243.i.i
  %168 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx52.i.i, align 4
  %cq_mem_size53.i.i = getelementptr inbounds %struct.global_queue, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %cq_mem_size53.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %cq_mem_size53.i.i, align 4
  %cq_dma.i.i = getelementptr inbounds %struct.global_queue, ptr %169, i32 0, i32 1
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef %171, ptr noundef %cq_dma.i.i, i32 noundef 3264, i32 noundef 0) #16
  %172 = ptrtoint ptr %global_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx58.i.i = getelementptr ptr, ptr %173, i32 %i.0243.i.i
  %174 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx58.i.i, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call.i.i.i, ptr %175, align 4
  %177 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx60.i.i = getelementptr ptr, ptr %177, i32 %i.0243.i.i
  %178 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx60.i.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 4
  %tobool62.not.i.i = icmp eq ptr %181, null
  br i1 %tobool62.not.i.i, label %if.then63.i.i, label %if.end65.i.i

if.then63.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_alloc_global_queues, i32 noundef 3081, ptr noundef nonnull @.str.149) #16
  br label %mem_alloc_failure.i.i

if.end65.i.i:                                     ; preds = %if.end28.i.i
  %182 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pdev.i, align 8
  %dev67.i.i = getelementptr inbounds %struct.pci_dev, ptr %183, i32 0, i32 44
  %cq_pbl_size70.i.i = getelementptr inbounds %struct.global_queue, ptr %179, i32 0, i32 7
  %184 = ptrtoint ptr %cq_pbl_size70.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cq_pbl_size70.i.i, align 4
  %cq_pbl_dma.i.i = getelementptr inbounds %struct.global_queue, ptr %179, i32 0, i32 6
  %call.i229.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev67.i.i, i32 noundef %185, ptr noundef %cq_pbl_dma.i.i, i32 noundef 3264, i32 noundef 0) #16
  %186 = ptrtoint ptr %global_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx75.i.i = getelementptr ptr, ptr %187, i32 %i.0243.i.i
  %188 = ptrtoint ptr %arrayidx75.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx75.i.i, align 4
  %cq_pbl.i.i = getelementptr inbounds %struct.global_queue, ptr %189, i32 0, i32 5
  %190 = ptrtoint ptr %cq_pbl.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call.i229.i.i, ptr %cq_pbl.i.i, align 4
  %191 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx77.i.i = getelementptr ptr, ptr %191, i32 %i.0243.i.i
  %192 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx77.i.i, align 4
  %cq_pbl78.i.i = getelementptr inbounds %struct.global_queue, ptr %193, i32 0, i32 5
  %194 = ptrtoint ptr %cq_pbl78.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cq_pbl78.i.i, align 4
  %tobool79.not.i.i = icmp eq ptr %195, null
  br i1 %tobool79.not.i.i, label %if.then80.i.i, label %if.end82.i.i

if.then80.i.i:                                    ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_alloc_global_queues, i32 noundef 3093, ptr noundef nonnull @.str.150) #16
  br label %mem_alloc_failure.i.i

if.end82.i.i:                                     ; preds = %if.end65.i.i
  %cq_mem_size85.i.i = getelementptr inbounds %struct.global_queue, ptr %193, i32 0, i32 2
  %196 = ptrtoint ptr %cq_mem_size85.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cq_mem_size85.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %197)
  %tobool93.not237.i.i = icmp ult i32 %197, 4096
  br i1 %tobool93.not237.i.i, label %if.end82.i.i.while.end.i.i_crit_edge, label %while.body.preheader.i.i

if.end82.i.i.while.end.i.i_crit_edge:             ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

while.body.preheader.i.i:                         ; preds = %if.end82.i.i
  %cq_dma89.i.i = getelementptr inbounds %struct.global_queue, ptr %193, i32 0, i32 1
  %198 = ptrtoint ptr %cq_dma89.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %cq_dma89.i.i, align 4
  %div86220.i.i = lshr i32 %197, 12
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %num_pages.0240.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %div86220.i.i, %while.body.preheader.i.i ]
  %page.0239.i.i = phi i32 [ %add100.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %199, %while.body.preheader.i.i ]
  %pbl.0238.i.i = phi ptr [ %incdec.ptr99.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %195, %while.body.preheader.i.i ]
  %dec.i.i = add nsw i32 %num_pages.0240.i.i, -1
  %200 = ptrtoint ptr %pbl.0238.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %page.0239.i.i, ptr %pbl.0238.i.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %pbl.0238.i.i, i32 1
  %201 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr99.i.i = getelementptr i32, ptr %pbl.0238.i.i, i32 2
  %add100.i.i = add i32 %page.0239.i.i, 4096
  %tobool93.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool93.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.end82.i.i.while.end.i.i_crit_edge
  %202 = ptrtoint ptr %global_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx102.i.i = getelementptr ptr, ptr %203, i32 %i.0243.i.i
  %204 = ptrtoint ptr %arrayidx102.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx102.i.i, align 4
  %cq_cons_idx.i.i = getelementptr inbounds %struct.global_queue, ptr %205, i32 0, i32 3
  %206 = ptrtoint ptr %cq_cons_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %cq_cons_idx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.0243.i.i, 1
  %207 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %num_queues.i, align 8
  %conv19.i.i = zext i8 %208 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv19.i.i
  br i1 %cmp.i.i, label %while.end.i.i.for.body.i.i_crit_edge, label %for.end.i.i

while.end.i.i.for.body.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %cmp107245.not.i.i = icmp eq i8 %208, 0
  br i1 %cmp107245.not.i.i, label %for.end.i.i.if.end177_crit_edge, label %for.body109.preheader.i.i

for.end.i.i.if.end177_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end177

for.body109.preheader.i.i:                        ; preds = %for.end.i.i
  %209 = ptrtoint ptr %p_cpuq.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %p_cpuq.i, align 16
  br label %for.body109.i.i

for.body109.i.i:                                  ; preds = %for.body109.i.i.for.body109.i.i_crit_edge, %for.body109.preheader.i.i
  %i.1247.i.i = phi i32 [ %inc127.i.i, %for.body109.i.i.for.body109.i.i_crit_edge ], [ 0, %for.body109.preheader.i.i ]
  %list.0246.i.i = phi ptr [ %incdec.ptr125.i.i, %for.body109.i.i.for.body109.i.i_crit_edge ], [ %210, %for.body109.preheader.i.i ]
  %211 = ptrtoint ptr %global_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx111.i.i = getelementptr ptr, ptr %212, i32 %i.1247.i.i
  %213 = ptrtoint ptr %arrayidx111.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx111.i.i, align 4
  %cq_pbl_dma112.i.i = getelementptr inbounds %struct.global_queue, ptr %214, i32 0, i32 6
  %215 = ptrtoint ptr %cq_pbl_dma112.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %cq_pbl_dma112.i.i, align 4
  %217 = ptrtoint ptr %list.0246.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %list.0246.i.i, align 4
  %incdec.ptr116.i.i = getelementptr i32, ptr %list.0246.i.i, i32 1
  %218 = ptrtoint ptr %incdec.ptr116.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 0, ptr %incdec.ptr116.i.i, align 4
  %incdec.ptr123.i.i = getelementptr i32, ptr %list.0246.i.i, i32 2
  %219 = ptrtoint ptr %incdec.ptr123.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 0, ptr %incdec.ptr123.i.i, align 4
  %incdec.ptr124.i.i = getelementptr i32, ptr %list.0246.i.i, i32 3
  %220 = ptrtoint ptr %incdec.ptr124.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %incdec.ptr124.i.i, align 4
  %incdec.ptr125.i.i = getelementptr i32, ptr %list.0246.i.i, i32 4
  %inc127.i.i = add nuw nsw i32 %i.1247.i.i, 1
  %221 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %num_queues.i, align 8
  %conv106.i.i = zext i8 %222 to i32
  %cmp107.i.i = icmp ult i32 %inc127.i.i, %conv106.i.i
  br i1 %cmp107.i.i, label %for.body109.i.i.for.body109.i.i_crit_edge, label %for.body109.i.i.if.end177_crit_edge

for.body109.i.i.if.end177_crit_edge:              ; preds = %for.body109.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end177

for.body109.i.i.for.body109.i.i_crit_edge:        ; preds = %for.body109.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body109.i.i

mem_alloc_failure.i.i:                            ; preds = %if.then80.i.i, %if.then63.i.i, %if.then26.i.i, %if.then15.i.i
  call fastcc void @qedf_free_global_queues(ptr noundef %qedf.1) #16
  br label %if.then12.i

if.then12.i:                                      ; preds = %mem_alloc_failure.i.i, %if.then8.i.i, %if.then.i.i
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_set_fcoe_pf_param, i32 noundef 3173, ptr noundef nonnull @.str.140) #16
  br label %if.then175

if.then175:                                       ; preds = %if.then12.i, %if.then.i
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3406, ptr noundef nonnull @.str.77) #16
  br label %err2

if.end177:                                        ; preds = %for.body109.i.i.if.end177_crit_edge, %for.end.i.i.if.end177_crit_edge, %qedf_alloc_bdq.exit.i.i.if.end177_crit_edge
  %pf_params.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 48
  %223 = call ptr @memset(ptr %pf_params.i, i32 0, i32 200)
  %fcoe_pf_params.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 48, i32 1
  %num_cons.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 48, i32 1, i32 2
  %224 = ptrtoint ptr %num_cons.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 1024, ptr %num_cons.i, align 8
  %num_tasks.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 48, i32 1, i32 3
  %225 = ptrtoint ptr %num_tasks.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 2048, ptr %num_tasks.i, align 2
  %226 = ptrtoint ptr %hw_p_cpuq.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %hw_p_cpuq.i, align 4
  %conv23.i = zext i32 %227 to i64
  %228 = ptrtoint ptr %fcoe_pf_params.i to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %conv23.i, ptr %fcoe_pf_params.i, align 8
  %sq_num_pbl_pages29.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 48, i32 1, i32 4
  %229 = ptrtoint ptr %sq_num_pbl_pages29.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 2, ptr %sq_num_pbl_pages29.i, align 4
  %cq_num_entries35.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 48, i32 1, i32 5
  %230 = ptrtoint ptr %cq_num_entries35.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 2048, ptr %cq_num_entries35.i, align 2
  %231 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %num_queues.i, align 8
  %num_cqs39.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 48, i32 1, i32 13
  %233 = ptrtoint ptr %num_cqs39.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %num_cqs39.i, align 2
  %log_page_size.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 48, i32 1, i32 14
  %234 = ptrtoint ptr %log_page_size.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 12, ptr %log_page_size.i, align 1
  %mtu.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 48, i32 1, i32 8
  %235 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 9000, ptr %mtu.i, align 4
  %gl_cmd_pi.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 48, i32 1, i32 16
  %236 = ptrtoint ptr %gl_cmd_pi.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 1, ptr %gl_cmd_pi.i, align 1
  %237 = ptrtoint ptr %bdq_pbl_list_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %bdq_pbl_list_dma.i.i.i, align 8
  %conv48.i = zext i32 %238 to i64
  %bdq_pbl_base_addr.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 48, i32 1, i32 1
  %239 = ptrtoint ptr %bdq_pbl_base_addr.i to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 %conv48.i, ptr %bdq_pbl_base_addr.i, align 8
  %240 = ptrtoint ptr %bdq_pbl_list_num_entries.i.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %bdq_pbl_list_num_entries.i.i.i, align 4
  %bdq_pbl_num_entries.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 48, i32 1, i32 19
  %242 = ptrtoint ptr %bdq_pbl_num_entries.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %241, ptr %bdq_pbl_num_entries.i, align 8
  %rq_buffer_size.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 48, i32 1, i32 12
  %243 = ptrtoint ptr %rq_buffer_size.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 2072, ptr %rq_buffer_size.i, align 8
  %244 = ptrtoint ptr %bdq_pbl_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %bdq_pbl_list.i.i.i, align 4
  %conv65.i = zext i8 %241 to i32
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_set_fcoe_pf_param, i32 noundef 3219, i32 noundef 4, ptr noundef nonnull @.str.141, ptr noundef %245, i64 noundef %conv48.i, i32 noundef %conv65.i) #16
  %246 = ptrtoint ptr %cq_num_entries35.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %cq_num_entries35.i, align 2
  %conv70.i = zext i16 %247 to i32
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.qedf_set_fcoe_pf_param, i32 noundef 3223, i32 noundef 4, ptr noundef nonnull @.str.142, i32 noundef %conv70.i) #16
  %248 = load ptr, ptr @qed_ops, align 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %248, align 4
  %update_pf_params = getelementptr inbounds %struct.qed_common_ops, ptr %250, i32 0, i32 5
  %251 = ptrtoint ptr %update_pf_params to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %update_pf_params, align 4
  %253 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %cdev.le, align 4
  call void %252(ptr noundef %254, ptr noundef %pf_params.i) #16
  %255 = load ptr, ptr @qed_ops, align 4
  %fill_dev_info180 = getelementptr inbounds %struct.qed_fcoe_ops, ptr %255, i32 0, i32 1
  %256 = ptrtoint ptr %fill_dev_info180 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %fill_dev_info180, align 4
  %258 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %cdev.le, align 4
  %call183 = call i32 %257(ptr noundef %259, ptr noundef %dev_info) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end187, label %if.then185

if.then185:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3414, ptr noundef nonnull @.str.78) #16
  br label %err2

if.end187:                                        ; preds = %if.end177
  br i1 %cmp, label %if.end187.if.end202_crit_edge, label %if.then190

if.end187.if.end202_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end202

if.then190:                                       ; preds = %if.end187
  %260 = load ptr, ptr @qed_ops, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %260, align 4
  %devlink_register = getelementptr inbounds %struct.qed_common_ops, ptr %262, i32 0, i32 44
  %263 = ptrtoint ptr %devlink_register to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %devlink_register, align 4
  %265 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %cdev.le, align 4
  %call193 = call ptr %264(ptr noundef %266) #16
  %devlink = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 22
  %267 = ptrtoint ptr %devlink to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %call193, ptr %devlink, align 16
  %cmp.i = icmp ugt ptr %call193, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then196, label %if.then190.if.end202_crit_edge

if.then190.if.end202_crit_edge:                   ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end202

if.then196:                                       ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3421, ptr noundef nonnull @.str.79) #16
  %268 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %devlink, align 16
  %270 = ptrtoint ptr %269 to i32
  store ptr null, ptr %devlink, align 16
  br label %err2

if.end202:                                        ; preds = %if.then190.if.end202_crit_edge, %if.end187.if.end202_crit_edge
  %primary_dbq_rq_addr = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 9, i32 1
  %271 = ptrtoint ptr %primary_dbq_rq_addr to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %primary_dbq_rq_addr, align 4
  %bdq_primary_prod = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 42
  %273 = ptrtoint ptr %bdq_primary_prod to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %272, ptr %bdq_primary_prod, align 16
  %secondary_bdq_rq_addr = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 9, i32 2
  %274 = ptrtoint ptr %secondary_bdq_rq_addr to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %secondary_bdq_rq_addr, align 16
  %bdq_secondary_prod = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 43
  %276 = ptrtoint ptr %bdq_secondary_prod to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %275, ptr %bdq_secondary_prod, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3433, i32 noundef 4, ptr noundef nonnull @.str.80, ptr noundef %272, ptr noundef %275) #16
  %277 = load ptr, ptr @qed_ops, align 4
  %register_ops = getelementptr inbounds %struct.qed_fcoe_ops, ptr %277, i32 0, i32 2
  %278 = ptrtoint ptr %register_ops to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %register_ops, align 4
  %280 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %cdev.le, align 4
  call void %279(ptr noundef %281, ptr noundef nonnull @qedf_cb_ops, ptr noundef %qedf.1) #16
  %call209 = call fastcc i32 @qedf_prepare_sb(ptr noundef %qedf.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.end213, label %if.then211

if.then211:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3440, ptr noundef nonnull @.str.81) #16
  br label %err2

if.end213:                                        ; preds = %if.end202
  %282 = ptrtoint ptr %slowpath_params to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 1, ptr %slowpath_params, align 4
  %283 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 8, ptr %5, align 4
  %284 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 42, ptr %6, align 1
  %285 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 3, ptr %7, align 2
  %286 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 0, ptr %8, align 1
  %287 = call ptr @memcpy(ptr %9, ptr @str, i32 12)
  %288 = load ptr, ptr @qed_ops, align 4
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %288, align 4
  %slowpath_start = getelementptr inbounds %struct.qed_common_ops, ptr %290, i32 0, i32 6
  %291 = ptrtoint ptr %slowpath_start to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %slowpath_start, align 4
  %293 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %cdev.le, align 4
  %call218 = call i32 %292(ptr noundef %294, ptr noundef nonnull %slowpath_params) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.end222, label %if.then220

if.then220:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3453, ptr noundef nonnull @.str.81) #16
  br label %err2

if.end222:                                        ; preds = %if.end213
  %295 = load ptr, ptr @qed_ops, align 4
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %295, align 4
  %update_pf_params224 = getelementptr inbounds %struct.qed_common_ops, ptr %297, i32 0, i32 5
  %298 = ptrtoint ptr %update_pf_params224 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %update_pf_params224, align 4
  %300 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %cdev.le, align 4
  call void %299(ptr noundef %301, ptr noundef %pf_params.i) #16
  %call227 = call fastcc i32 @qedf_setup_int(ptr noundef %qedf.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %if.end231, label %if.then229

if.then229:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3466, ptr noundef nonnull @.str.82) #16
  br label %err3

if.end231:                                        ; preds = %if.end222
  %302 = load ptr, ptr @qed_ops, align 4
  %start = getelementptr inbounds %struct.qed_fcoe_ops, ptr %302, i32 0, i32 4
  %303 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %start, align 4
  %305 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %cdev.le, align 4
  %tasks = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 46
  %call233 = call i32 %304(ptr noundef %306, ptr noundef %tasks) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.end237, label %if.then235

if.then235:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3472, ptr noundef nonnull @.str.83) #16
  br label %err4

if.end237:                                        ; preds = %if.end231
  %num_tids_per_block.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 46, i32 1
  %arrayidx.i = getelementptr %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 46, i32 2
  %307 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %arrayidx.i, align 4
  %309 = ptrtoint ptr %num_tids_per_block.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %num_tids_per_block.i, align 4
  %.frozen = freeze i32 %310
  %div.i = udiv i32 511, %.frozen
  %arrayidx.i745 = getelementptr %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 46, i32 2, i32 %div.i
  %311 = ptrtoint ptr %arrayidx.i745 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %arrayidx.i745, align 4
  %313 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 511, %313
  %314 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %tasks, align 4
  %mul.i746 = mul i32 %315, %rem.i.decomposed
  %add.ptr.i747 = getelementptr i8, ptr %312, i32 %mul.i746
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3479, i32 noundef 4, ptr noundef nonnull @.str.84, ptr noundef %308, ptr noundef %add.ptr.i747, i32 noundef %315) #16
  %bdq_prod_idx = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 44
  %316 = ptrtoint ptr %bdq_prod_idx to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 256, ptr %bdq_prod_idx, align 8
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3489, i32 noundef 4, ptr noundef nonnull @.str.85, i32 noundef 256) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !760
  call void @arm_heavy_mb() #16
  %317 = ptrtoint ptr %bdq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %bdq_prod_idx, align 8
  %319 = call i16 @llvm.bswap.i16(i16 %318)
  %320 = ptrtoint ptr %bdq_primary_prod to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %bdq_primary_prod, align 16
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %321, i16 %319) #16, !srcloc !761
  %322 = ptrtoint ptr %bdq_primary_prod to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %bdq_primary_prod, align 16
  %324 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %323) #16, !srcloc !762
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !763
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !764
  call void @arm_heavy_mb() #16
  %325 = ptrtoint ptr %bdq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %bdq_prod_idx, align 8
  %327 = call i16 @llvm.bswap.i16(i16 %326)
  %328 = ptrtoint ptr %bdq_secondary_prod to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %bdq_secondary_prod, align 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %329, i16 %327) #16, !srcloc !761
  %330 = ptrtoint ptr %bdq_secondary_prod to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %bdq_secondary_prod, align 4
  %332 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %331) #16, !srcloc !762
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !765
  %333 = load ptr, ptr @qed_ops, align 4
  %334 = ptrtoint ptr %333 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %333, align 4
  %set_power_state = getelementptr inbounds %struct.qed_common_ops, ptr %335, i32 0, i32 3
  %336 = ptrtoint ptr %set_power_state to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %set_power_state, align 4
  %338 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %cdev.le, align 4
  %call268 = call i32 %337(ptr noundef %339, i32 noundef 0) #16
  %mac = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 16
  %hw_mac = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 9, i32 0, i32 4
  %340 = ptrtoint ptr %hw_mac to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %hw_mac, align 4
  %342 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %341, ptr %mac, align 4
  %add.ptr.i748 = getelementptr %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 9, i32 0, i32 4, i32 4
  %343 = ptrtoint ptr %add.ptr.i748 to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %add.ptr.i748, align 2
  %add.ptr1.i = getelementptr %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 16, i32 4
  %345 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 %344, ptr %add.ptr1.i, align 2
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3502, i32 noundef 4, ptr noundef nonnull @.str.86, ptr noundef %mac) #16
  %wwnn = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 9, i32 4
  %346 = ptrtoint ptr %wwnn to i32
  call void @__asan_load8_noabort(i32 %346)
  %347 = load i64, ptr %wwnn, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %347)
  %cmp277.not = icmp eq i64 %347, 0
  br i1 %cmp277.not, label %if.end237.if.else291_crit_edge, label %land.lhs.true279

if.end237.if.else291_crit_edge:                   ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else291

land.lhs.true279:                                 ; preds = %if.end237
  %wwpn = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 9, i32 3
  %348 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %348)
  %349 = load i64, ptr %wwpn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %349)
  %cmp281.not = icmp eq i64 %349, 0
  br i1 %cmp281.not, label %land.lhs.true279.if.else291_crit_edge, label %if.then283

land.lhs.true279.if.else291_crit_edge:            ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else291

if.then283:                                       ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3513, i32 noundef 4, ptr noundef nonnull @.str.87) #16
  %350 = ptrtoint ptr %wwnn to i32
  call void @__asan_load8_noabort(i32 %350)
  %351 = load i64, ptr %wwnn, align 16
  %wwnn287 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 14
  %352 = ptrtoint ptr %wwnn287 to i32
  call void @__asan_store8_noabort(i32 %352)
  store i64 %351, ptr %wwnn287, align 16
  %353 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %wwpn, align 8
  br label %if.end301

if.else291:                                       ; preds = %land.lhs.true279.if.else291_crit_edge, %if.end237.if.else291_crit_edge
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3518, i32 noundef 4, ptr noundef nonnull @.str.88) #16
  %call295 = call i64 @fcoe_wwn_from_mac(ptr noundef %mac, i32 noundef 1, i32 noundef 0) #16
  %wwnn296 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 14
  %355 = ptrtoint ptr %wwnn296 to i32
  call void @__asan_store8_noabort(i32 %355)
  store i64 %call295, ptr %wwnn296, align 16
  %call299 = call i64 @fcoe_wwn_from_mac(ptr noundef %mac, i32 noundef 2, i32 noundef 0) #16
  br label %if.end301

if.end301:                                        ; preds = %if.else291, %if.then283
  %call299.sink = phi i64 [ %call299, %if.else291 ], [ %354, %if.then283 ]
  %wwpn300 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 15
  %356 = ptrtoint ptr %wwpn300 to i32
  call void @__asan_store8_noabort(i32 %356)
  store i64 %call299.sink, ptr %wwpn300, align 8
  %wwnn303 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 14
  %357 = ptrtoint ptr %wwnn303 to i32
  call void @__asan_load8_noabort(i32 %357)
  %358 = load i64, ptr %wwnn303, align 16
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3523, i32 noundef 4, ptr noundef nonnull @.str.89, i64 noundef %358, i64 noundef %call299.sink) #16
  %host_no306 = getelementptr inbounds %struct.Scsi_Host, ptr %40, i32 0, i32 17
  %359 = ptrtoint ptr %host_no306 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %host_no306, align 4
  %call307 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %host_buf, ptr noundef nonnull @.str.90, i32 noundef %360)
  %361 = load ptr, ptr @qed_ops, align 4
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %361, align 4
  %set_name = getelementptr inbounds %struct.qed_common_ops, ptr %363, i32 0, i32 4
  %364 = ptrtoint ptr %set_name to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %set_name, align 4
  %366 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %cdev.le, align 4
  call void %365(ptr noundef %367, ptr noundef nonnull %host_buf) #16
  %call311 = call ptr @qedf_cmd_mgr_alloc(ptr noundef %qedf.1) #16
  %cmd_mgr = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 47
  %368 = ptrtoint ptr %cmd_mgr to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %call311, ptr %cmd_mgr, align 8
  %tobool313.not = icmp eq ptr %call311, null
  br i1 %tobool313.not, label %if.then314, label %if.end316

if.then314:                                       ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3531, ptr noundef nonnull @.str.91) #16
  br label %err5

if.end316:                                        ; preds = %if.end301
  br i1 %cmp, label %if.end316.if.end326_crit_edge, label %if.then319

if.end316.if.end326_crit_edge:                    ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end326

if.then319:                                       ; preds = %if.end316
  %369 = load ptr, ptr @qedf_fc_transport_template, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %40, i32 0, i32 12
  %370 = ptrtoint ptr %transportt to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr %369, ptr %transportt, align 4
  %371 = load i32, ptr @qedf_max_lun, align 4
  %conv320 = zext i32 %371 to i64
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %40, i32 0, i32 22
  %372 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %372)
  store i64 %conv320, ptr %max_lun, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %40, i32 0, i32 24
  %373 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %373)
  store i16 16, ptr %max_cmd_len, align 4
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %40, i32 0, i32 21
  %374 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 1024, ptr %max_id, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %40, i32 0, i32 26
  %375 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 2048, ptr %can_queue, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i749 = call i32 @scsi_add_host_with_dma(ptr noundef %40, ptr noundef %dev, ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i749)
  %tobool322.not = icmp eq i32 %call.i749, 0
  br i1 %tobool322.not, label %if.then319.if.end326_crit_edge, label %if.then323

if.then319.if.end326_crit_edge:                   ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end326

if.then323:                                       ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3545, ptr noundef nonnull @.str.92, i32 noundef %call.i749) #16
  br label %err6

if.end326:                                        ; preds = %if.then319.if.end326_crit_edge, %if.end316.if.end326_crit_edge
  %376 = getelementptr inbounds i8, ptr %params, i32 2
  %377 = call ptr @memset(ptr %376, i32 0, i32 10)
  %378 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 2500, ptr %params, align 2
  %379 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %mac, align 4
  %381 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %380, ptr %0, align 4
  %382 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %add.ptr1.i, align 2
  %384 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %384)
  store i16 %383, ptr %1, align 2
  %385 = ptrtoint ptr %host_no306 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %host_no306, align 4
  %call332 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %host_buf, i32 noundef 20, ptr noundef nonnull @.str.93, i32 noundef %386)
  %call334 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.56, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull %host_buf) #16
  %ll2_recv_wq = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 20
  %387 = ptrtoint ptr %ll2_recv_wq to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr %call334, ptr %ll2_recv_wq, align 8
  %tobool336.not = icmp eq ptr %call334, null
  br i1 %tobool336.not, label %if.then337, label %if.end339

if.then337:                                       ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3559, ptr noundef nonnull @.str.94) #16
  br label %err7

if.end339:                                        ; preds = %if.end326
  call void @qedf_dbg_host_init(ptr noundef %qedf.1, ptr noundef nonnull @qedf_debugfs_ops, ptr noundef nonnull @qedf_dbg_fops) #16
  %388 = load ptr, ptr @qed_ops, align 4
  %ll2 = getelementptr inbounds %struct.qed_fcoe_ops, ptr %388, i32 0, i32 3
  %389 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %ll2, align 4
  %register_cb_ops = getelementptr inbounds %struct.qed_ll2_ops, ptr %390, i32 0, i32 3
  %391 = ptrtoint ptr %register_cb_ops to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %register_cb_ops, align 4
  %393 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %cdev.le, align 4
  call void %392(ptr noundef %394, ptr noundef nonnull @qedf_ll2_cb_ops, ptr noundef %qedf.1) #16
  %395 = load ptr, ptr @qed_ops, align 4
  %ll2342 = getelementptr inbounds %struct.qed_fcoe_ops, ptr %395, i32 0, i32 3
  %396 = ptrtoint ptr %ll2342 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %ll2342, align 4
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %397, align 4
  %400 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %cdev.le, align 4
  %call345 = call i32 %399(ptr noundef %401, ptr noundef nonnull %params) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345)
  %tobool346.not = icmp eq i32 %call345, 0
  br i1 %tobool346.not, label %if.end349, label %if.then347

if.then347:                                       ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3573, ptr noundef nonnull @.str.95) #16
  br label %err7

if.end349:                                        ; preds = %if.end339
  %flags350 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 29
  call void @_set_bit(i32 noundef 2, ptr noundef %flags350) #16
  %vlan_id = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 6
  %402 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 0, ptr %vlan_id, align 4
  br i1 %cmp, label %if.end349.if.end359_crit_edge, label %if.then353

if.end349.if.end359_crit_edge:                    ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end359

if.then353:                                       ; preds = %if.end349
  %ctlr.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 1
  call void @fcoe_ctlr_init(ptr noundef %ctlr.i, i32 noundef 0) #16
  %send.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 1, i32 29
  %403 = ptrtoint ptr %send.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr @qedf_fip_send, ptr %send.i, align 4
  %get_src_addr.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 1, i32 31
  %404 = ptrtoint ptr %get_src_addr.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store ptr @qedf_get_src_mac, ptr %get_src_addr.i, align 4
  %ctl_src_addr.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 1, i32 28
  %405 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %mac, align 4
  %407 = ptrtoint ptr %ctl_src_addr.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %406, ptr %ctl_src_addr.i, align 4
  %408 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %add.ptr1.i, align 2
  %add.ptr1.i.i = getelementptr %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 1, i32 28, i32 4
  %410 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %410)
  store i16 %409, ptr %add.ptr1.i.i, align 2
  %call354 = call fastcc i32 @qedf_lport_setup(ptr noundef %qedf.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %if.then353.if.end359_crit_edge, label %if.then356

if.then353.if.end359_crit_edge:                   ; preds = %if.then353
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end359

if.then356:                                       ; preds = %if.then353
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3593, ptr noundef nonnull @.str.96) #16
  br label %err7

if.end359:                                        ; preds = %if.then353.if.end359_crit_edge, %if.end349.if.end359_crit_edge
  %411 = ptrtoint ptr %lport34.le to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %lport34.le, align 16
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %412, align 8
  %host_no363 = getelementptr inbounds %struct.Scsi_Host, ptr %414, i32 0, i32 17
  %415 = ptrtoint ptr %host_no363 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %host_no363, align 4
  %call364 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %host_buf, ptr noundef nonnull @.str.97, i32 noundef %416)
  %call366 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.56, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull %host_buf) #16
  %timer_work_queue = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 49
  %417 = ptrtoint ptr %timer_work_queue to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %call366, ptr %timer_work_queue, align 8
  %tobool368.not = icmp eq ptr %call366, null
  br i1 %tobool368.not, label %if.then369, label %if.end371

if.then369:                                       ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3603, ptr noundef nonnull @.str.98) #16
  br label %err7

if.end371:                                        ; preds = %if.end359
  br i1 %cmp, label %if.end371.do.body384_crit_edge, label %if.then374

if.end371.do.body384_crit_edge:                   ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body384

if.then374:                                       ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #18
  %418 = ptrtoint ptr %lport34.le to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %lport34.le, align 16
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %419, align 8
  %host_no378 = getelementptr inbounds %struct.Scsi_Host, ptr %421, i32 0, i32 17
  %422 = ptrtoint ptr %host_no378 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %host_no378, align 4
  %call379 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %host_buf, ptr noundef nonnull @.str.99, i32 noundef %423)
  %call381 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.56, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull %host_buf) #16
  %dpc_wq = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 51
  %424 = ptrtoint ptr %dpc_wq to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr %call381, ptr %dpc_wq, align 16
  br label %do.body384

do.body384:                                       ; preds = %if.then374, %if.end371.do.body384_crit_edge
  %recovery_work = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 52
  call void @__init_work(ptr noundef %recovery_work, i32 noundef 0) #16
  %425 = ptrtoint ptr %recovery_work to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 -64, ptr %recovery_work, align 4
  %lockdep_map393 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 52, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map393, ptr noundef nonnull @.str.101, ptr noundef nonnull @__qedf_probe.__key.100, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry396 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 52, i32 0, i32 1
  %426 = ptrtoint ptr %entry396 to i32
  call void @__asan_store4_noabort(i32 %426)
  store volatile ptr %entry396, ptr %entry396, align 4
  %prev.i752 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 52, i32 0, i32 1, i32 1
  %427 = ptrtoint ptr %prev.i752 to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr %entry396, ptr %prev.i752, align 4
  %func399 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 52, i32 0, i32 2
  %428 = ptrtoint ptr %func399 to i32
  call void @__asan_store4_noabort(i32 %428)
  store ptr @qedf_recovery_handler, ptr %func399, align 4
  %timer404 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 52, i32 1
  call void @init_timer_key(ptr noundef %timer404, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.103, ptr noundef nonnull @__qedf_probe.__key.102) #16
  br i1 %cmp, label %do.body384.if.end433_crit_edge, label %if.then411

do.body384.if.end433_crit_edge:                   ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end433

if.then411:                                       ; preds = %do.body384
  %429 = load ptr, ptr @qed_ops, align 4
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %429, align 4
  %dbg_all_data_size = getelementptr inbounds %struct.qed_common_ops, ptr %431, i32 0, i32 17
  %432 = ptrtoint ptr %dbg_all_data_size to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %dbg_all_data_size, align 4
  %434 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %cdev.le, align 4
  %call414 = call i32 %433(ptr noundef %435) #16
  %grcdump_size = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 59
  %436 = ptrtoint ptr %grcdump_size to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 %call414, ptr %grcdump_size, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call414)
  %tobool416.not = icmp eq i32 %call414, 0
  br i1 %tobool416.not, label %if.then411.if.end428_crit_edge, label %if.then417

if.then411.if.end428_crit_edge:                   ; preds = %if.then411
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end428

if.then417:                                       ; preds = %if.then411
  %grcdump = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 58
  %call419 = call i32 @qedf_alloc_grc_dump_buf(ptr noundef %grcdump, i32 noundef %call414) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call419)
  %tobool420.not = icmp eq i32 %call419, 0
  br i1 %tobool420.not, label %if.then417.if.end424_crit_edge, label %if.then421

if.then417.if.end424_crit_edge:                   ; preds = %if.then417
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end424

if.then421:                                       ; preds = %if.then417
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3628, ptr noundef nonnull @.str.104) #16
  %437 = ptrtoint ptr %grcdump to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr null, ptr %grcdump, align 4
  br label %if.end424

if.end424:                                        ; preds = %if.then421, %if.then417.if.end424_crit_edge
  %438 = ptrtoint ptr %grcdump to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %grcdump, align 4
  %440 = ptrtoint ptr %grcdump_size to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %grcdump_size, align 16
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3634, i32 noundef 4, ptr noundef nonnull @.str.105, ptr noundef %439, i32 noundef %441) #16
  br label %if.end428

if.end428:                                        ; preds = %if.end424, %if.then411.if.end428_crit_edge
  call void @qedf_create_sysfs_ctx_attr(ptr noundef %qedf.1) #16
  %io_trace_lock = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 61
  call void @__raw_spin_lock_init(ptr noundef %io_trace_lock, ptr noundef nonnull @.str.107, ptr noundef nonnull @__qedf_probe.__key.106, i16 noundef signext 3) #16
  %io_trace_idx = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 62
  %442 = ptrtoint ptr %io_trace_idx to i32
  call void @__asan_store2_noabort(i32 %442)
  store i16 0, ptr %io_trace_idx, align 16
  br label %if.end433

if.end433:                                        ; preds = %if.end428, %do.body384.if.end433_crit_edge
  %flogi_compl = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 25
  %443 = ptrtoint ptr %flogi_compl to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 0, ptr %flogi_compl, align 4
  %wait.i753 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 25, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i753, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #16
  %444 = load ptr, ptr @qed_ops, align 4
  %445 = ptrtoint ptr %444 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %444, align 4
  %update_drv_state = getelementptr inbounds %struct.qed_common_ops, ptr %446, i32 0, i32 35
  %447 = ptrtoint ptr %update_drv_state to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %update_drv_state, align 4
  %449 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %cdev.le, align 4
  %call436 = call i32 %448(ptr noundef %450, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call436)
  %tobool437.not = icmp eq i32 %call436, 0
  br i1 %tobool437.not, label %if.end433.if.end440_crit_edge, label %if.then438

if.end433.if.end440_crit_edge:                    ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end440

if.then438:                                       ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3648, ptr noundef nonnull @.str.108) #16
  br label %if.end440

if.end440:                                        ; preds = %if.then438, %if.end433.if.end440_crit_edge
  %451 = call ptr @memset(ptr %link_params, i32 0, i32 48)
  %452 = ptrtoint ptr %link_params to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 1, ptr %link_params, align 4
  %453 = load ptr, ptr @qed_ops, align 4
  %454 = ptrtoint ptr %453 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %453, align 4
  %set_link = getelementptr inbounds %struct.qed_common_ops, ptr %455, i32 0, i32 20
  %456 = ptrtoint ptr %set_link to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %set_link, align 4
  %458 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %cdev.le, align 4
  %call443 = call i32 %457(ptr noundef %459, ptr noundef nonnull %link_params) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call443)
  %tobool444.not = icmp eq i32 %call443, 0
  br i1 %tobool444.not, label %if.end440.if.end447_crit_edge, label %if.then445

if.end440.if.end447_crit_edge:                    ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end447

if.then445:                                       ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3654, ptr noundef nonnull @.str.109) #16
  br label %if.end447

if.end447:                                        ; preds = %if.then445, %if.end440.if.end447_crit_edge
  br i1 %cmp, label %if.then450, label %if.else452

if.then450:                                       ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #18
  %ctlr451 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.1, i32 0, i32 1
  call void @fcoe_ctlr_link_up(ptr noundef %ctlr451) #16
  br label %if.end454

if.else452:                                       ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #18
  %call453 = call i32 @fc_fabric_login(ptr noundef %lport.0) #16
  br label %if.end454

if.end454:                                        ; preds = %if.else452, %if.then450
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf.1, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3662, i32 noundef 4, ptr noundef nonnull @.str.110) #16
  br label %cleanup.sink.split

err7:                                             ; preds = %if.then369, %if.then356, %if.then347, %if.then337
  %rc.0 = phi i32 [ %call345, %if.then347 ], [ %call354, %if.then356 ], [ -12, %if.then369 ], [ -12, %if.then337 ]
  %460 = ptrtoint ptr %ll2_recv_wq to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %ll2_recv_wq, align 8
  %tobool458.not = icmp eq ptr %461, null
  br i1 %tobool458.not, label %err7.if.end461_crit_edge, label %if.then459

err7.if.end461_crit_edge:                         ; preds = %err7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end461

if.then459:                                       ; preds = %err7
  call void @__sanitizer_cov_trace_pc() #18
  call void @destroy_workqueue(ptr noundef nonnull %461) #16
  br label %if.end461

if.end461:                                        ; preds = %if.then459, %err7.if.end461_crit_edge
  %462 = ptrtoint ptr %lport34.le to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %lport34.le, align 16
  %464 = ptrtoint ptr %463 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %463, align 8
  call void @fc_remove_host(ptr noundef %465) #16
  %466 = ptrtoint ptr %lport34.le to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %lport34.le, align 16
  %468 = ptrtoint ptr %467 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %467, align 8
  call void @scsi_remove_host(ptr noundef %469) #16
  call void @qedf_dbg_host_exit(ptr noundef %qedf.1) #16
  br label %err6

err6:                                             ; preds = %if.end461, %if.then323
  %rc.1 = phi i32 [ %call.i749, %if.then323 ], [ %rc.0, %if.end461 ]
  %470 = ptrtoint ptr %cmd_mgr to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %cmd_mgr, align 8
  call void @qedf_cmd_mgr_free(ptr noundef %471) #16
  br label %err5

err5:                                             ; preds = %err6, %if.then314
  %rc.2 = phi i32 [ %rc.1, %err6 ], [ -12, %if.then314 ]
  %472 = load ptr, ptr @qed_ops, align 4
  %stop = getelementptr inbounds %struct.qed_fcoe_ops, ptr %472, i32 0, i32 5
  %473 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %stop, align 4
  %475 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %cdev.le, align 4
  %call469 = call i32 %474(ptr noundef %476) #16
  br label %err4

err4:                                             ; preds = %err5, %if.then235
  %rc.3 = phi i32 [ %call233, %if.then235 ], [ %rc.2, %err5 ]
  call fastcc void @qedf_free_fcoe_pf_param(ptr noundef %qedf.1)
  call fastcc void @qedf_sync_free_irqs(ptr noundef %qedf.1)
  br label %err3

err3:                                             ; preds = %err4, %if.then229
  %rc.4 = phi i32 [ %call227, %if.then229 ], [ %rc.3, %err4 ]
  %477 = load ptr, ptr @qed_ops, align 4
  %478 = ptrtoint ptr %477 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %477, align 4
  %slowpath_stop = getelementptr inbounds %struct.qed_common_ops, ptr %479, i32 0, i32 7
  %480 = ptrtoint ptr %slowpath_stop to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %slowpath_stop, align 4
  %482 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %cdev.le, align 4
  %call472 = call i32 %481(ptr noundef %483) #16
  br label %err2

err2:                                             ; preds = %err3, %if.then220, %if.then211, %if.then196, %if.then185, %if.then175
  %rc.5 = phi i32 [ 1, %if.then175 ], [ %call183, %if.then185 ], [ %270, %if.then196 ], [ %call209, %if.then211 ], [ %call218, %if.then220 ], [ %rc.4, %err3 ]
  %484 = load ptr, ptr @qed_ops, align 4
  %485 = ptrtoint ptr %484 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %484, align 4
  %remove = getelementptr inbounds %struct.qed_common_ops, ptr %486, i32 0, i32 2
  %487 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %remove, align 4
  %489 = ptrtoint ptr %cdev.le to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %cdev.le, align 4
  call void %488(ptr noundef %490) #16
  br label %err1

err1:                                             ; preds = %err2, %if.then162, %if.end156, %if.then29
  %rc.6 = phi i32 [ -22, %if.then29 ], [ %call160, %if.then162 ], [ %rc.5, %err2 ], [ -19, %if.end156 ]
  %491 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %lport.0, align 8
  call void @scsi_host_put(ptr noundef %492) #16
  br label %err0

err0:                                             ; preds = %err1, %if.then3
  %qedf.2 = phi ptr [ %qedf.1, %err1 ], [ %qedf.0, %if.then3 ]
  %rc.7 = phi i32 [ %rc.6, %err1 ], [ -12, %if.then3 ]
  %tobool476.not = icmp eq ptr %qedf.2, null
  br i1 %tobool476.not, label %err0.cleanup_crit_edge, label %if.then477

err0.cleanup_crit_edge:                           ; preds = %err0
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then477:                                       ; preds = %err0
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef nonnull %qedf.2, ptr noundef nonnull @__func__.__qedf_probe, i32 noundef 3692, i32 noundef 4, ptr noundef nonnull @.str.110) #16
  %flags479 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.2, i32 0, i32 29
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then477, %if.end454
  %flags479.sink = phi ptr [ %flags479, %if.then477 ], [ %flags350, %if.end454 ]
  %retval.0.ph = phi i32 [ %rc.7, %if.then477 ], [ 0, %if.end454 ]
  call void @_clear_bit(i32 noundef 8, ptr noundef %flags479.sink) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %err0.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.7, %err0.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %qed_params) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %slowpath_params) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %link_params) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %host_buf) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_disc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_handle_link_update(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -692
  %link_state = getelementptr i8, ptr %work, i32 -232
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #16
  %0 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %link_state, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_handle_link_update, i32 noundef 174, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef %1) #16
  %call.i.i48 = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #16
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = tail call fastcc zeroext i1 @qedf_initiate_fipvlan_req(ptr noundef %add.ptr)
  br i1 %call3, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call.i.i49 = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #16
  %4 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp7.not = icmp eq i32 %5, 1
  br i1 %cmp7.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_handle_link_update, i32 noundef 183, i32 noundef 4, ptr noundef nonnull @.str.127) #16
  %vlan_id = getelementptr i8, ptr %work, i32 -224
  %6 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %vlan_id, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %7 = load i32, ptr @qedf_fallback_vlan, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_handle_link_update, i32 noundef 195, ptr noundef nonnull @.str.128, i32 noundef %7) #16
  %8 = load i32, ptr @qedf_fallback_vlan, align 4
  %prio.i = getelementptr i8, ptr %work, i32 -220
  %9 = ptrtoint ptr %prio.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %prio.i, align 8
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 13
  %or.i = or i32 %shl.i, %8
  %vlan_id1.i = getelementptr i8, ptr %work, i32 -224
  %11 = ptrtoint ptr %vlan_id1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %vlan_id1.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_set_vlan_id, i32 noundef 129, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %or.i, i32 noundef %conv.i) #16
  %data_src_addr = getelementptr i8, ptr %work, i32 -240
  %12 = call ptr @memset(ptr %data_src_addr, i32 0, i32 6)
  %ctlr = getelementptr i8, ptr %work, i32 -680
  tail call void @fcoe_ctlr_link_up(ptr noundef %ctlr) #16
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i.i50 = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #16
  %13 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp15 = icmp eq i32 %14, 0
  br i1 %cmp15, label %if.then17, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then17:                                        ; preds = %if.else
  %link_down_tmo_valid = getelementptr i8, ptr %work, i32 312
  %call.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_down_tmo_valid, i32 noundef 4) #16
  %15 = ptrtoint ptr %link_down_tmo_valid to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %link_down_tmo_valid, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_handle_link_update, i32 noundef 212, i32 noundef 4, ptr noundef nonnull @.str.129) #16
  %ctlr19 = getelementptr i8, ptr %work, i32 -680
  %call20 = tail call i32 @fcoe_ctlr_link_down(ptr noundef %ctlr19) #16
  %call21 = tail call zeroext i1 @qedf_wait_for_upload(ptr noundef %add.ptr)
  br i1 %call21, label %if.then17.if.end27_crit_edge, label %if.then25

if.then17.if.end27_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then25:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_handle_link_update, i32 noundef 216, ptr noundef nonnull @.str.12) #16
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then17.if.end27_crit_edge
  %16 = load i32, ptr @qedf_fipvlan_retries, align 4
  %fipvlan_retries = getelementptr i8, ptr %work, i32 368
  %17 = ptrtoint ptr %fipvlan_retries to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fipvlan_retries, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.else.cleanup_crit_edge, %if.end11, %if.then9, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_link_recovery(ptr noundef %work) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  %rdata_login_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -792
  %lport1 = getelementptr i8, ptr %work, i32 -344
  %0 = ptrtoint ptr %lport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport1, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rdata_login_list) #16
  %2 = getelementptr inbounds %struct.list_head, ptr %rdata_login_list, i32 0, i32 1
  %3 = ptrtoint ptr %rdata_login_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %rdata_login_list, ptr %rdata_login_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rdata_login_list, ptr %2, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_link_recovery, i32 noundef 379, i32 noundef 4, ptr noundef nonnull @.str.134) #16
  %ctlr = getelementptr i8, ptr %work, i32 -780
  %5 = ptrtoint ptr %ctlr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %ctlr, align 4
  %call = call i32 @fcoe_ctlr_link_down(ptr noundef %ctlr) #16
  call void @fcoe_ctlr_link_up(ptr noundef %ctlr) #16
  %6 = load i32, ptr @qedf_fipvlan_retries, align 4
  %fipvlan_retries = getelementptr i8, ptr %work, i32 268
  %7 = ptrtoint ptr %fipvlan_retries to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fipvlan_retries, align 4
  %call4 = call fastcc zeroext i1 @qedf_initiate_fipvlan_req(ptr noundef %add.ptr)
  br i1 %call4, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = load i32, ptr @qedf_fallback_vlan, align 4
  %prio.i = getelementptr i8, ptr %work, i32 -320
  %9 = ptrtoint ptr %prio.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %prio.i, align 8
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 13
  %or.i = or i32 %shl.i, %8
  %vlan_id1.i = getelementptr i8, ptr %work, i32 -324
  %11 = ptrtoint ptr %vlan_id1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %vlan_id1.i, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_set_vlan_id, i32 noundef 129, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %or.i, i32 noundef %conv.i) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sel_fcf = getelementptr i8, ptr %work, i32 -768
  br label %while.body

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %if.end
  %retries.098 = phi i32 [ 30, %if.end ], [ %dec, %if.end9.while.body_crit_edge ]
  %12 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sel_fcf, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.end9, label %if.end13

if.end9:                                          ; preds = %while.body
  call void @msleep(i32 noundef 500) #16
  %dec = add nsw i32 %retries.098, -1
  %cmp = icmp ugt i32 %retries.098, 1
  br i1 %cmp, label %if.end9.while.body_crit_edge, label %if.then11

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_link_recovery, i32 noundef 417, ptr noundef nonnull @.str.136) #16
  br label %cleanup

if.end13:                                         ; preds = %while.body
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_link_recovery, i32 noundef 408, i32 noundef 4, ptr noundef nonnull @.str.135) #16
  %call14 = call i32 @qedf_send_flogi(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %flogi_compl = getelementptr i8, ptr %work, i32 100
  %14 = ptrtoint ptr %lport1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lport1, align 16
  %r_a_tov = getelementptr inbounds %struct.fc_lport, ptr %15, i32 0, i32 23
  %16 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %r_a_tov, align 8
  %call19 = call i32 @wait_for_completion_timeout(ptr noundef %flogi_compl, i32 noundef %17) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_link_recovery, i32 noundef 429, ptr noundef nonnull @.str.137) #16
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %disc_mutex = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 6, i32 8
  call void @mutex_lock_nested(ptr noundef %disc_mutex, i32 noundef 0) #16
  %call24 = call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true, label %if.end23.do.end_crit_edge

if.end23.do.end_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %if.end23
  %call26 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true28

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true28:                                  ; preds = %land.lhs.true
  %.b91 = load i1, ptr @qedf_link_recovery.__warned, align 1
  br i1 %.b91, label %land.lhs.true28.do.end_crit_edge, label %if.then30

land.lhs.true28.do.end_crit_edge:                 ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qedf_link_recovery.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 438, ptr noundef nonnull @.str.6) #16
  br label %do.end

do.end:                                           ; preds = %if.then30, %land.lhs.true28.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end23.do.end_crit_edge
  %rports = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 6, i32 6
  %18 = ptrtoint ptr %rports to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn99 = load volatile ptr, ptr %rports, align 4
  %cmp42.not101 = icmp eq ptr %.pn99, %rports
  br i1 %cmp42.not101, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn102 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn99, %do.end.for.body_crit_edge ]
  %rdata.0103 = getelementptr i8, ptr %.pn102, i32 -264
  %kref = getelementptr i8, ptr %.pn102, i32 -256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #16
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #16
  %19 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %for.body
  %21 = phi i32 [ %20, %for.body ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %22 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %21, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #16
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #16
  %23 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %25 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %24, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #16, !srcloc !766
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %24
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !755

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %26 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %27, 1
  %28 = or i32 %add5.i.i.i.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !755

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #16
  %29 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %30 = phi i32 [ %27, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool12.i.i.i.i.not = icmp eq i32 %30, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #16
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %if.then45

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then45:                                        ; preds = %kref_get_unless_zero.exit
  %call46 = call i32 @fc_rport_login(ptr noundef %rdata.0103) #16
  %call.i.i.i.i.i.i93 = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !767
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #16
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #16, !srcloc !768
  %asmresult.i.i.i.i.i.i.i94 = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i94)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i94, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i94)
  %.not.i.i.i.i95 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i94, 0
  br i1 %.not.i.i.i.i95, label %if.end5.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i96, !prof !755

if.end5.i.i.i.i.for.inc_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then10.i.i.i.i96:                              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #16
  br label %for.inc

if.then.i:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !769
  call void @fc_rport_destroy(ptr noundef %kref) #16, !callees !770
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then10.i.i.i.i96, %if.end5.i.i.i.i.for.inc_crit_edge, %kref_get_unless_zero.exit.for.inc_crit_edge
  %32 = ptrtoint ptr %.pn102 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load volatile ptr, ptr %.pn102, align 4
  %cmp42.not = icmp eq ptr %.pn, %rports
  br i1 %cmp42.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %disc_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then21, %if.end13.cleanup_crit_edge, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rdata_login_list) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedf_prepare_sb(ptr noundef %qedf) unnamed_addr #0 align 64 {
entry:
  %sb_phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_queues = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 31
  %0 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_queues, align 8
  %conv = zext i8 %1 to i32
  %2 = mul nuw nsw i32 %conv, 20
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #22
  %fp_array = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 45
  %3 = ptrtoint ptr %fp_array to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8.i.i, ptr %fp_array, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp66.not = icmp eq i8 %5, 0
  br i1 %cmp66.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pdev.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 13
  %cdev.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 8
  %global_queues = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 32
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_prepare_sb, i32 noundef 2755, ptr noundef nonnull @.str.167) #16
  br label %cleanup

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %id.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end18.for.body_crit_edge ]
  %6 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fp_array, align 4
  %arrayidx = getelementptr %struct.qedf_fastpath, ptr %7, i32 %id.067
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i54 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 28) #20
  %sb_info = getelementptr %struct.qedf_fastpath, ptr %7, i32 %id.067, i32 1
  %10 = ptrtoint ptr %sb_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i54, ptr %sb_info, align 4
  %tobool8.not = icmp eq ptr %call7.i.i.i54, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_prepare_sb, i32 noundef 2765, ptr noundef nonnull @.str.168) #16
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %conv13 = trunc i32 %id.067 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sb_phys.i) #16
  %11 = ptrtoint ptr %sb_phys.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %sb_phys.i, align 4, !annotation !771
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 32, ptr noundef nonnull %sb_phys.i, i32 noundef 3264, i32 noundef 0) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i = and i32 %id.067, 65535
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_alloc_and_init_sb, i32 noundef 2704, ptr noundef nonnull @.str.170, i32 noundef %conv.i) #16
  br label %if.then16

if.end.i:                                         ; preds = %if.end11
  %14 = load ptr, ptr @qed_ops, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %sb_init.i = getelementptr inbounds %struct.qed_common_ops, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %sb_init.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sb_init.i, align 4
  %19 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cdev.i, align 4
  %21 = ptrtoint ptr %sb_phys.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sb_phys.i, align 4
  %call1.i = call i32 %18(ptr noundef %20, ptr noundef nonnull %call7.i.i.i54, ptr noundef nonnull %call.i.i, i32 noundef %22, i16 noundef zeroext %conv13, i32 noundef 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end18, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv5.i = and i32 %id.067, 65535
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_alloc_and_init_sb, i32 noundef 2714, ptr noundef nonnull @.str.171, i32 noundef %call1.i, i32 noundef %conv5.i) #16
  br label %if.then16

if.then16:                                        ; preds = %if.then3.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sb_phys.i) #16
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_prepare_sb, i32 noundef 2771, ptr noundef nonnull @.str.169) #16
  br label %cleanup

if.end18:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sb_phys.i) #16
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv13, ptr %arrayidx, align 4
  %qedf21 = getelementptr %struct.qedf_fastpath, ptr %7, i32 %id.067, i32 2
  %24 = ptrtoint ptr %qedf21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %qedf, ptr %qedf21, align 4
  %25 = ptrtoint ptr %global_queues to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %global_queues, align 4
  %arrayidx22 = getelementptr ptr, ptr %26, i32 %id.067
  %27 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx22, align 4
  %cq_mem_size = getelementptr inbounds %struct.global_queue, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %cq_mem_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cq_mem_size, align 4
  %div46 = lshr i32 %30, 5
  %cq_num_entries = getelementptr %struct.qedf_fastpath, ptr %7, i32 %id.067, i32 4
  %31 = ptrtoint ptr %cq_num_entries to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div46, ptr %cq_num_entries, align 4
  %inc = add nuw nsw i32 %id.067, 1
  %32 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_queues, align 8
  %conv3 = zext i8 %33 to i32
  %cmp = icmp ult i32 %inc, %conv3
  br i1 %cmp, label %if.end18.for.body_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup:                                          ; preds = %if.end18.cleanup_crit_edge, %if.then16, %if.then9, %if.then, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %if.then16 ], [ 0, %if.then9 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedf_setup_int(ptr noundef %qedf) unnamed_addr #0 align 64 {
entry:
  %qedf.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qedf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %qedf, ptr %qedf.addr, align 4
  %1 = load ptr, ptr @qed_ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %set_fp_int = getelementptr inbounds %struct.qed_common_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %set_fp_int to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_fp_int, align 4
  %cdev = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 8
  %6 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdev, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %8 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv = trunc i32 %8 to i16
  %call1 = tail call i32 %5(ptr noundef %7, i16 noundef zeroext %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr @qed_ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %get_fp_int = getelementptr inbounds %struct.qed_common_ops, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %get_fp_int to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_fp_int, align 4
  %14 = ptrtoint ptr %qedf.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qedf.addr, align 4
  %cdev4 = getelementptr inbounds %struct.qedf_ctx, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %cdev4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cdev4, align 4
  %int_info = getelementptr inbounds %struct.qedf_ctx, ptr %15, i32 0, i32 10
  %call5 = tail call i32 %13(ptr noundef %17, ptr noundef %int_info) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %18 = ptrtoint ptr %qedf.addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qedf.addr, align 4
  %msix_cnt = getelementptr inbounds %struct.qedf_ctx, ptr %19, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %msix_cnt to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %msix_cnt, align 4
  %conv9 = zext i8 %21 to i32
  %call.i.i.i22 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %22 = load volatile i32, ptr @__num_online_cpus, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %19, ptr noundef nonnull @__func__.qedf_setup_int, i32 noundef 2425, i32 noundef 4, ptr noundef nonnull @.str.172, i32 noundef %conv9, i32 noundef %22) #16
  %23 = ptrtoint ptr %msix_cnt to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %msix_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool13.not = icmp eq i8 %24, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %25) #16
  %num_queues.i = getelementptr inbounds %struct.qedf_ctx, ptr %19, i32 0, i32 31
  %26 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp39.not.i = icmp eq i8 %27, 0
  br i1 %cmp39.not.i, label %if.then14.cleanup_crit_edge, label %for.body.lr.ph.i

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then14
  %num_hwfns.i = getelementptr inbounds %struct.qedf_ctx, ptr %19, i32 0, i32 9, i32 0, i32 3
  %cdev.i = getelementptr inbounds %struct.qedf_ctx, ptr %19, i32 0, i32 8
  %int_info.i = getelementptr inbounds %struct.qedf_ctx, ptr %19, i32 0, i32 10
  %fp_array.i = getelementptr inbounds %struct.qedf_ctx, ptr %19, i32 0, i32 45
  %used_cnt.i = getelementptr inbounds %struct.qedf_ctx, ptr %19, i32 0, i32 10, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cpu.041.i = phi i32 [ %call.i.i, %for.body.lr.ph.i ], [ %call15.i, %if.end.i.for.body.i_crit_edge ]
  %i.040.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc16.i, %if.end.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_hwfns.i, align 4
  %conv2.i = zext i8 %29 to i32
  %mul.i = mul i32 %i.040.i, %conv2.i
  %30 = load ptr, ptr @qed_ops, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %get_affin_hwfn_idx.i = getelementptr inbounds %struct.qed_common_ops, ptr %32, i32 0, i32 40
  %33 = ptrtoint ptr %get_affin_hwfn_idx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_affin_hwfn_idx.i, align 4
  %35 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cdev.i, align 4
  %call4.i = tail call zeroext i8 %34(ptr noundef %36) #16
  %conv5.i = zext i8 %call4.i to i32
  %add.i = add i32 %mul.i, %conv5.i
  %conv7.i = and i32 %add.i, 65535
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %19, ptr noundef nonnull @__func__.qedf_request_msix_irq, i32 noundef 2389, i32 noundef 4, ptr noundef nonnull @.str.174, i32 noundef %i.040.i, i32 noundef %conv7.i) #16
  %37 = ptrtoint ptr %int_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %int_info.i, align 16
  %arrayidx.i = getelementptr %struct.msix_entry, ptr %38, i32 %conv7.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %41 = ptrtoint ptr %fp_array.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fp_array.i, align 4
  %arrayidx9.i = getelementptr %struct.qedf_fastpath, ptr %42, i32 %i.040.i
  %call.i37.i = tail call i32 @request_threaded_irq(i32 noundef %40, ptr noundef nonnull @qedf_msix_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef %arrayidx9.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool.not.i = icmp eq i32 %call.i37.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %19, ptr noundef nonnull @__func__.qedf_request_msix_irq, i32 noundef 2395, ptr noundef nonnull @.str.175) #16
  tail call fastcc void @qedf_sync_free_irqs(ptr noundef %19) #16
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %43 = ptrtoint ptr %used_cnt.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %used_cnt.i, align 1
  %inc.i = add i8 %44, 1
  store i8 %inc.i, ptr %used_cnt.i, align 1
  %rem.i.i = and i32 %cpu.041.i, 31
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %div3.i.i = lshr i32 %cpu.041.i, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  %call.i.i.i23 = tail call i32 @__irq_apply_affinity_hint(i32 noundef %40, ptr noundef %add.ptr.i.i, i1 noundef zeroext true) #16
  %call15.i = tail call i32 @cpumask_next(i32 noundef %cpu.041.i, ptr noundef nonnull @__cpu_online_mask) #23
  %inc16.i = add nuw nsw i32 %i.040.i, 1
  %45 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_queues.i, align 8
  %conv.i = zext i8 %46 to i32
  %cmp.i = icmp ult i32 %inc16.i, %conv.i
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %47 = load ptr, ptr @qed_ops, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %simd_handler_config = getelementptr inbounds %struct.qed_common_ops, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %simd_handler_config to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %simd_handler_config, align 4
  %cdev18 = getelementptr inbounds %struct.qedf_ctx, ptr %19, i32 0, i32 8
  %52 = ptrtoint ptr %cdev18 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cdev18, align 4
  call void %51(ptr noundef %53, ptr noundef nonnull %qedf.addr, i32 noundef 0, ptr noundef nonnull @qedf_simd_int_handler) #16
  %54 = ptrtoint ptr %qedf.addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %qedf.addr, align 4
  %used_cnt = getelementptr inbounds %struct.qedf_ctx, ptr %55, i32 0, i32 10, i32 2
  %56 = ptrtoint ptr %used_cnt to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %used_cnt, align 1
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %55, ptr noundef nonnull @__func__.qedf_setup_int, i32 noundef 2435, ptr noundef nonnull @.str.173) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.i.cleanup_crit_edge, %if.then.i, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i37.i, %if.then.i ], [ 0, %if.then14.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fcoe_wwn_from_mac(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qedf_cmd_mgr_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_warn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_host_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedf_lport_setup(ptr noundef %qedf) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lport1 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 2
  %0 = ptrtoint ptr %lport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport1, align 16
  %link_up = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %link_up, align 4
  %max_retry_count = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %max_retry_count to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %max_retry_count, align 8
  %max_rport_retry_count = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %max_rport_retry_count to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %max_rport_retry_count, align 1
  %service_params = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %service_params to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 418, ptr %service_params, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %boot_time = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %boot_time to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %boot_time, align 4
  %e_d_tov = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %e_d_tov to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2000, ptr %e_d_tov, align 4
  %r_a_tov = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 23
  %9 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10000, ptr %r_a_tov, align 8
  %does_npiv = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %does_npiv to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %does_npiv, align 8
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %does_npiv, align 8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 51
  %13 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shost_data, align 8
  %max_npiv_vports = getelementptr inbounds %struct.fc_host_attrs, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %max_npiv_vports to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 64, ptr %max_npiv_vports, align 4
  %wwnn = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 14
  %16 = ptrtoint ptr %wwnn to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %wwnn, align 16
  %wwnn1.i = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %wwnn1.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %wwnn1.i, align 8
  %wwpn = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 15
  %19 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wwpn, align 8
  %wwpn1.i = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 19
  %21 = ptrtoint ptr %wwpn1.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %wwpn1.i, align 8
  %ctlr = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 1
  %call = tail call i32 @fcoe_libfc_config(ptr noundef %1, ptr noundef %ctlr, ptr noundef nonnull @qedf_lport_template, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_lport_setup, i32 noundef 1749, ptr noundef nonnull @.str.198) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @fc_exch_mgr_alloc(ptr noundef %1, i32 noundef 46, i16 noundef zeroext 2048, i16 noundef zeroext -2, ptr noundef null) #16
  %call.i = tail call noalias ptr @__alloc_percpu(i32 noundef 168, i32 noundef 8) #22
  %stats.i = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 16
  %22 = ptrtoint ptr %stats.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %stats.i, align 8
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @fc_lport_config(ptr noundef %1) #16
  %call8 = tail call i32 @fc_set_mfs(ptr noundef %1, i32 noundef 2072) #16
  %mfs = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 26
  %23 = ptrtoint ptr %mfs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mfs, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %shost_data10 = getelementptr inbounds %struct.Scsi_Host, ptr %26, i32 0, i32 51
  %27 = ptrtoint ptr %shost_data10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shost_data10, align 8
  %maxframe_size = getelementptr inbounds %struct.fc_host_attrs, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %maxframe_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %24, ptr %maxframe_size, align 8
  %30 = load i32, ptr @qedf_dev_loss_tmo, align 4
  %31 = load ptr, ptr %1, align 8
  %shost_data12 = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 51
  %32 = ptrtoint ptr %shost_data12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shost_data12, align 8
  %dev_loss_tmo = getelementptr inbounds %struct.fc_host_attrs, ptr %33, i32 0, i32 30
  %34 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %30, ptr %dev_loss_tmo, align 8
  %pdev = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 13
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5724, i16 %38)
  %cmp = icmp eq i16 %38, 5724
  br i1 %cmp, label %if.then14, label %if.end6.if.end18_crit_edge

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %shost_data16 = getelementptr inbounds %struct.Scsi_Host, ptr %40, i32 0, i32 51
  %41 = ptrtoint ptr %shost_data16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %shost_data16, align 8
  %symbolic_name = getelementptr inbounds %struct.fc_host_attrs, ptr %42, i32 0, i32 28
  %call17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %symbolic_name, i32 noundef 256, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.35)
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end6.if.end18_crit_edge
  %43 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev, align 8
  %device20 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %device20 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %device20, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32640, i16 %46)
  %cmp22 = icmp eq i16 %46, -32640
  br i1 %cmp22, label %if.then24, label %if.end18.if.end30_crit_edge

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %shost_data26 = getelementptr inbounds %struct.Scsi_Host, ptr %48, i32 0, i32 51
  %49 = ptrtoint ptr %shost_data26 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %shost_data26, align 8
  %symbolic_name27 = getelementptr inbounds %struct.fc_host_attrs, ptr %50, i32 0, i32 28
  %call29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %symbolic_name27, i32 noundef 256, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.35)
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.end18.if.end30_crit_edge
  %51 = ptrtoint ptr %lport1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lport1, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i) #16
  %fdmi_enabled.i = getelementptr inbounds %struct.fc_lport, ptr %52, i32 0, i32 25
  %53 = ptrtoint ptr %buf.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 -1, ptr %buf.i, align 8
  %54 = ptrtoint ptr %fdmi_enabled.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i = load i8, ptr %fdmi_enabled.i, align 8
  %bf.set.i = or i8 %bf.load.i, 1
  store i8 %bf.set.i, ptr %fdmi_enabled.i, align 8
  %55 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev, align 8
  %call.i58 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %56, i32 noundef 3) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i58)
  %tobool.not.i59 = icmp eq i16 %call.i58, 0
  br i1 %tobool.not.i59, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %57 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 7
  %58 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 6
  %59 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 5
  %60 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 4
  %61 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 3
  %62 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 2
  %63 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 1
  %conv.i = zext i16 %call.i58 to i32
  %add.i = add nuw nsw i32 %conv.i, 4
  %64 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev, align 8
  %call5.i = call i32 @pci_read_config_byte(ptr noundef %65, i32 noundef %add.i, ptr noundef nonnull %buf.i) #16
  %66 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev, align 8
  %add4.1.i = add nuw nsw i32 %conv.i, 5
  %call5.1.i = call i32 @pci_read_config_byte(ptr noundef %67, i32 noundef %add4.1.i, ptr noundef %63) #16
  %68 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev, align 8
  %add4.2.i = add nuw nsw i32 %conv.i, 6
  %call5.2.i = call i32 @pci_read_config_byte(ptr noundef %69, i32 noundef %add4.2.i, ptr noundef %62) #16
  %70 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev, align 8
  %add4.3.i = add nuw nsw i32 %conv.i, 7
  %call5.3.i = call i32 @pci_read_config_byte(ptr noundef %71, i32 noundef %add4.3.i, ptr noundef %61) #16
  %72 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev, align 8
  %add4.4.i = add nuw nsw i32 %conv.i, 8
  %call5.4.i = call i32 @pci_read_config_byte(ptr noundef %73, i32 noundef %add4.4.i, ptr noundef %60) #16
  %74 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev, align 8
  %add4.5.i = add nuw nsw i32 %conv.i, 9
  %call5.5.i = call i32 @pci_read_config_byte(ptr noundef %75, i32 noundef %add4.5.i, ptr noundef %59) #16
  %76 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev, align 8
  %add4.6.i = add nuw nsw i32 %conv.i, 10
  %call5.6.i = call i32 @pci_read_config_byte(ptr noundef %77, i32 noundef %add4.6.i, ptr noundef %58) #16
  %78 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev, align 8
  %add4.7.i = add nuw nsw i32 %conv.i, 11
  %call5.7.i = call i32 @pci_read_config_byte(ptr noundef %79, i32 noundef %add4.7.i, ptr noundef %57) #16
  %80 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %52, align 8
  %shost_data.i = getelementptr inbounds %struct.Scsi_Host, ptr %81, i32 0, i32 51
  %82 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %shost_data.i, align 8
  %serial_number.i = getelementptr inbounds %struct.fc_host_attrs, ptr %83, i32 0, i32 12
  %84 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %57, align 1
  %conv7.i = zext i8 %85 to i32
  %86 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %58, align 2
  %conv9.i = zext i8 %87 to i32
  %88 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %59, align 1
  %conv11.i = zext i8 %89 to i32
  %90 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %60, align 4
  %conv13.i = zext i8 %91 to i32
  %92 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %61, align 1
  %conv15.i = zext i8 %93 to i32
  %94 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %62, align 2
  %conv17.i = zext i8 %95 to i32
  %96 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %63, align 1
  %conv19.i = zext i8 %97 to i32
  %98 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %buf.i, align 8
  %conv21.i = zext i8 %99 to i32
  %call22.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %serial_number.i, i32 noundef 64, ptr noundef nonnull @.str.229, i32 noundef %conv7.i, i32 noundef %conv9.i, i32 noundef %conv11.i, i32 noundef %conv13.i, i32 noundef %conv15.i, i32 noundef %conv17.i, i32 noundef %conv19.i, i32 noundef %conv21.i) #16
  br label %if.end.i

if.else.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %100 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %52, align 8
  %shost_data24.i = getelementptr inbounds %struct.Scsi_Host, ptr %101, i32 0, i32 51
  %102 = ptrtoint ptr %shost_data24.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %shost_data24.i, align 8
  %serial_number25.i = getelementptr inbounds %struct.fc_host_attrs, ptr %103, i32 0, i32 12
  %104 = ptrtoint ptr %serial_number25.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 8)
  store i64 6155975862722719232, ptr %serial_number25.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %105 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %52, align 8
  %shost_data29.i = getelementptr inbounds %struct.Scsi_Host, ptr %106, i32 0, i32 51
  %107 = ptrtoint ptr %shost_data29.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %shost_data29.i, align 8
  %manufacturer.i = getelementptr inbounds %struct.fc_host_attrs, ptr %108, i32 0, i32 13
  %109 = call ptr @memcpy(ptr %manufacturer.i, ptr @.str.231, i32 27)
  %110 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 8
  %112 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5724, i16 %113)
  %cmp34.i = icmp eq i16 %113, 5724
  br i1 %cmp34.i, label %if.then36.i, label %if.end.i.if.end45.i_crit_edge

if.end.i.if.end45.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45.i

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %114 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %52, align 8
  %shost_data38.i = getelementptr inbounds %struct.Scsi_Host, ptr %115, i32 0, i32 51
  %116 = ptrtoint ptr %shost_data38.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %shost_data38.i, align 8
  %model.i = getelementptr inbounds %struct.fc_host_attrs, ptr %117, i32 0, i32 14
  %118 = ptrtoint ptr %model.i to i32
  call void @__asan_storeN_noabort(i32 %118, i32 8)
  store i64 5858114619561244672, ptr %model.i, align 1
  %119 = load ptr, ptr %52, align 8
  %shost_data42.i = getelementptr inbounds %struct.Scsi_Host, ptr %119, i32 0, i32 51
  %120 = ptrtoint ptr %shost_data42.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %shost_data42.i, align 8
  %model_description.i = getelementptr inbounds %struct.fc_host_attrs, ptr %121, i32 0, i32 15
  %122 = call ptr @memcpy(ptr %model_description.i, ptr @.str.233, i32 38)
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then36.i, %if.end.i.if.end45.i_crit_edge
  %123 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pdev, align 8
  %device47.i = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 8
  %125 = ptrtoint ptr %device47.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %device47.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32640, i16 %126)
  %cmp49.i = icmp eq i16 %126, -32640
  br i1 %cmp49.i, label %if.then51.i, label %if.end45.i.qedf_setup_fdmi.exit_crit_edge

if.end45.i.qedf_setup_fdmi.exit_crit_edge:        ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qedf_setup_fdmi.exit

if.then51.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  %127 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %52, align 8
  %shost_data53.i = getelementptr inbounds %struct.Scsi_Host, ptr %128, i32 0, i32 51
  %129 = ptrtoint ptr %shost_data53.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %shost_data53.i, align 8
  %model54.i = getelementptr inbounds %struct.fc_host_attrs, ptr %130, i32 0, i32 14
  %131 = ptrtoint ptr %model54.i to i32
  call void @__asan_storeN_noabort(i32 %131, i32 8)
  store i64 5858114602381375488, ptr %model54.i, align 1
  %132 = load ptr, ptr %52, align 8
  %shost_data58.i = getelementptr inbounds %struct.Scsi_Host, ptr %132, i32 0, i32 51
  %133 = ptrtoint ptr %shost_data58.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %shost_data58.i, align 8
  %model_description59.i = getelementptr inbounds %struct.fc_host_attrs, ptr %134, i32 0, i32 15
  %135 = call ptr @memcpy(ptr %model_description59.i, ptr @.str.235, i32 38)
  br label %qedf_setup_fdmi.exit

qedf_setup_fdmi.exit:                             ; preds = %if.then51.i, %if.end45.i.qedf_setup_fdmi.exit_crit_edge
  %136 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %52, align 8
  %shost_data64.i = getelementptr inbounds %struct.Scsi_Host, ptr %137, i32 0, i32 51
  %138 = ptrtoint ptr %shost_data64.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %shost_data64.i, align 8
  %hardware_version.i = getelementptr inbounds %struct.fc_host_attrs, ptr %139, i32 0, i32 16
  %140 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pdev, align 8
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 12
  %142 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %revision.i, align 4
  %conv67.i = zext i8 %143 to i32
  %call68.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %hardware_version.i, i32 noundef 64, ptr noundef nonnull @.str.236, i32 noundef %conv67.i) #16
  %144 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %52, align 8
  %shost_data70.i = getelementptr inbounds %struct.Scsi_Host, ptr %145, i32 0, i32 51
  %146 = ptrtoint ptr %shost_data70.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %shost_data70.i, align 8
  %driver_version.i = getelementptr inbounds %struct.fc_host_attrs, ptr %147, i32 0, i32 17
  %148 = call ptr @memcpy(ptr %driver_version.i, ptr @.str.35, i32 9)
  %149 = load ptr, ptr %52, align 8
  %shost_data74.i = getelementptr inbounds %struct.Scsi_Host, ptr %149, i32 0, i32 51
  %150 = ptrtoint ptr %shost_data74.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %shost_data74.i, align 8
  %firmware_version.i = getelementptr inbounds %struct.fc_host_attrs, ptr %151, i32 0, i32 18
  %call76.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %firmware_version.i, i32 noundef 64, ptr noundef nonnull @.str.237, i32 noundef 8, i32 noundef 59, i32 noundef 1, i32 noundef 0) #16
  %152 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %52, align 8
  %shost_data78.i = getelementptr inbounds %struct.Scsi_Host, ptr %153, i32 0, i32 51
  %154 = ptrtoint ptr %shost_data78.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %shost_data78.i, align 8
  %vendor_identifier.i = getelementptr inbounds %struct.fc_host_attrs, ptr %155, i32 0, i32 20
  %156 = ptrtoint ptr %vendor_identifier.i to i32
  call void @__asan_storeN_noabort(i32 %156, i32 8)
  store i64 5575863666494696448, ptr %vendor_identifier.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #16
  br label %cleanup

cleanup:                                          ; preds = %qedf_setup_fdmi.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %qedf_setup_fdmi.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_recovery_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %work, i32 -4388
  %call = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %work, i32 -5444
  %0 = load ptr, ptr @qed_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %recovery_prolog = getelementptr inbounds %struct.qed_common_ops, ptr %2, i32 0, i32 34
  %3 = ptrtoint ptr %recovery_prolog to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %recovery_prolog, align 4
  %cdev = getelementptr i8, ptr %work, i32 -4968
  %5 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cdev, align 4
  %call1 = tail call i32 %4(ptr noundef %6) #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_recovery_handler, i32 noundef 4020, ptr noundef nonnull @.str.239) #16
  %pdev = getelementptr i8, ptr %work, i32 -4812
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  tail call fastcc void @__qedf_remove(ptr noundef %8, i32 noundef 1)
  %link_state = getelementptr i8, ptr %work, i32 -4984
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_state, i32 noundef 4) #16
  %9 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %link_state, align 4
  %dcbx = getelementptr i8, ptr %work, i32 -4980
  %call.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dcbx, i32 noundef 4) #16
  %10 = ptrtoint ptr %dcbx to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %dcbx, align 4
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %call3 = tail call fastcc i32 @__qedf_probe(ptr noundef %12, i32 noundef 1)
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_recovery_handler, i32 noundef 4031, ptr noundef nonnull @.str.240) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedf_alloc_grc_dump_buf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_create_sysfs_ctx_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_link_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_fabric_login(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_host_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_cmd_mgr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedf_free_fcoe_pf_param(ptr nocapture noundef readonly %qedf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cpuq = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 33
  %0 = ptrtoint ptr %p_cpuq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cpuq, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %num_queues = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 31
  %2 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_queues, align 8
  %conv = zext i8 %3 to i32
  %mul = mul nuw nsw i32 %conv, 24
  %pdev = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 13
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %hw_p_cpuq = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 34
  %6 = ptrtoint ptr %hw_p_cpuq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_p_cpuq, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @qedf_free_global_queues(ptr noundef %qedf)
  %global_queues = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 32
  %8 = ptrtoint ptr %global_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %global_queues, align 4
  tail call void @kfree(ptr noundef %9) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedf_sync_free_irqs(ptr noundef %qedf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %int_info = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 10
  %msix_cnt = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %msix_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msix_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %used_cnt = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 10, i32 2
  %2 = ptrtoint ptr %used_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %used_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp39.not = icmp eq i8 %3, 0
  br i1 %cmp39.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_hwfns = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 9, i32 0, i32 3
  %cdev = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 8
  %fp_array = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 45
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_hwfns, align 4
  %conv3 = zext i8 %5 to i32
  %mul = mul i32 %i.040, %conv3
  %6 = load ptr, ptr @qed_ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %get_affin_hwfn_idx = getelementptr inbounds %struct.qed_common_ops, ptr %8, i32 0, i32 40
  %9 = ptrtoint ptr %get_affin_hwfn_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_affin_hwfn_idx, align 4
  %11 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cdev, align 4
  %call = tail call zeroext i8 %10(ptr noundef %12) #16
  %conv5 = zext i8 %call to i32
  %add = add i32 %mul, %conv5
  %conv7 = and i32 %add, 65535
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_sync_free_irqs, i32 noundef 2362, i32 noundef 4, ptr noundef nonnull @.str.245, i32 noundef %i.040, i32 noundef %conv7) #16
  %13 = ptrtoint ptr %int_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %int_info, align 16
  %arrayidx = getelementptr %struct.msix_entry, ptr %14, i32 %conv7
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  tail call void @synchronize_irq(i32 noundef %16) #16
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %16, ptr noundef null, i1 noundef zeroext true) #16
  %call11 = tail call i32 @irq_set_affinity_notifier(i32 noundef %16, ptr noundef null) #16
  %17 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fp_array, align 4
  %arrayidx12 = getelementptr %struct.qedf_fastpath, ptr %18, i32 %i.040
  %call13 = tail call ptr @free_irq(i32 noundef %16, ptr noundef %arrayidx12) #16
  %inc = add nuw nsw i32 %i.040, 1
  %19 = ptrtoint ptr %used_cnt to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %used_cnt, align 1
  %conv = zext i8 %20 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %21 = load ptr, ptr @qed_ops, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %simd_handler_clean = getelementptr inbounds %struct.qed_common_ops, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %simd_handler_clean to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %simd_handler_clean, align 4
  %cdev15 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 8
  %26 = ptrtoint ptr %cdev15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cdev15, align 4
  tail call void %25(ptr noundef %27, i32 noundef 0) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  %used_cnt17 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 10, i32 2
  %28 = ptrtoint ptr %used_cnt17 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %used_cnt17, align 1
  %29 = load ptr, ptr @qed_ops, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %set_fp_int = getelementptr inbounds %struct.qed_common_ops, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %set_fp_int to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_fp_int, align 4
  %cdev19 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 8
  %34 = ptrtoint ptr %cdev19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cdev19, align 4
  %call20 = tail call i32 %33(ptr noundef %35, i16 noundef zeroext 0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedf_queuecommand(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_eh_abort(ptr noundef %sc_cmd) #0 align 64 {
entry:
  %old.i.i.i.i189 = alloca i32, align 4
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
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
  %call1 = tail call i32 @scsi_is_fc_rport(ptr noundef %5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %parent.i186 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 55, i32 1
  %8 = ptrtoint ptr %parent.i186 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i186, align 8
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
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %add.ptr.i188 = getelementptr %struct.Scsi_Host, ptr %17, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  %rdata9 = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 4
  %18 = ptrtoint ptr %rdata9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rdata9, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %cond.end.out.thread_crit_edge, label %lor.lhs.false

cond.end.out.thread_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.thread

lor.lhs.false:                                    ; preds = %cond.end
  %kref = getelementptr inbounds %struct.fc_rport_priv, ptr %19, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #16
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #16
  %20 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %22 = phi i32 [ %21, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %23 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %22, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #16
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #16
  %24 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %26 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %25, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #16, !srcloc !766
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %25
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !755

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %27 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %28, 1
  %29 = or i32 %add5.i.i.i.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !755

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #16
  %30 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %31 = phi i32 [ %28, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool12.i.i.i.i.not = icmp eq i32 %31, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #16
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.out.thread_crit_edge, label %if.end

kref_get_unless_zero.exit.out.thread_crit_edge:   ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.thread

out.thread:                                       ; preds = %kref_get_unless_zero.exit.out.thread_crit_edge, %cond.end.out.thread_crit_edge
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i188, ptr noundef nonnull @__func__.qedf_eh_abort, i32 noundef 737, ptr noundef nonnull @.str.111, ptr noundef %sc_cmd) #16
  br label %if.end119

if.end:                                           ; preds = %kref_get_unless_zero.exit
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 22
  %32 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %SCp, align 4
  %tobool13.not = icmp eq ptr %33, null
  br i1 %tobool13.not, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 16
  %34 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmnd, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %conv = zext i8 %37 to i32
  %port_id = getelementptr inbounds %struct.fc_rport_priv, ptr %19, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port_id, align 8
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i188, ptr noundef nonnull @__func__.qedf_eh_abort, i32 noundef 748, ptr noundef nonnull @.str.112, ptr noundef %sc_cmd, i32 noundef %conv, i32 noundef %39) #16
  br label %drop_rdata_kref

if.end17:                                         ; preds = %if.end
  %refcount18 = getelementptr inbounds %struct.qedf_ioreq, ptr %33, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i189) #16
  %call.i.i.i.i.i.i.i190 = call zeroext i1 @__kasan_check_read(ptr noundef %refcount18, i32 noundef 4) #16
  %40 = ptrtoint ptr %refcount18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %refcount18, align 4
  br label %do.body.i.i.i.i192

do.body.i.i.i.i192:                               ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i202.do.body.i.i.i.i192_crit_edge, %if.end17
  %42 = phi i32 [ %41, %if.end17 ], [ %asmresult3.i.i.i.i.i.i.i200, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i202.do.body.i.i.i.i192_crit_edge ]
  %43 = ptrtoint ptr %old.i.i.i.i189 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %old.i.i.i.i189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i.i191 = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i.i191, label %do.body.i.i.i.i192.if.end4.i.i.i.i205_crit_edge, label %do.cond.i.i.i.i196

do.body.i.i.i.i192.if.end4.i.i.i.i205_crit_edge:  ; preds = %do.body.i.i.i.i192
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i205

do.cond.i.i.i.i196:                               ; preds = %do.body.i.i.i.i192
  %add.i.i.i.i193 = add i32 %42, 1
  %call.i.i.i.i.i.i194 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount18, i32 noundef 4) #16
  %call.i3.i.i.i.i.i195 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i189, i32 noundef 4) #16
  %44 = ptrtoint ptr %old.i.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %old.i.i.i.i189, align 4
  call void @llvm.prefetch.p0(ptr %refcount18, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i.i199

do.body.i.i.i.i.i.i.i199:                         ; preds = %do.body.i.i.i.i.i.i.i199.do.body.i.i.i.i.i.i.i199_crit_edge, %do.cond.i.i.i.i196
  %46 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount18, ptr %refcount18, i32 %45, i32 %add.i.i.i.i193, ptr elementtype(i32) %refcount18) #16, !srcloc !766
  %asmresult.i.i.i.i.i.i.i197 = extractvalue { i32, i32 } %46, 0
  %tobool.not.i.i.i.i.i.i.i198 = icmp eq i32 %asmresult.i.i.i.i.i.i.i197, 0
  br i1 %tobool.not.i.i.i.i.i.i.i198, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i202, label %do.body.i.i.i.i.i.i.i199.do.body.i.i.i.i.i.i.i199_crit_edge

do.body.i.i.i.i.i.i.i199.do.body.i.i.i.i.i.i.i199_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i199
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i.i199

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i202:  ; preds = %do.body.i.i.i.i.i.i.i199
  %asmresult3.i.i.i.i.i.i.i200 = extractvalue { i32, i32 } %46, 1
  %cmp.not.i.i.i.i.i.i201 = icmp eq i32 %asmresult3.i.i.i.i.i.i.i200, %45
  br i1 %cmp.not.i.i.i.i.i.i201, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i202.if.end4.i.i.i.i205_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i202.do.body.i.i.i.i192_crit_edge, !prof !755

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i202.do.body.i.i.i.i192_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i202
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i192

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i202.if.end4.i.i.i.i205_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i202
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i205

if.end4.i.i.i.i205:                               ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i202.if.end4.i.i.i.i205_crit_edge, %do.body.i.i.i.i192.if.end4.i.i.i.i205_crit_edge
  %47 = ptrtoint ptr %old.i.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %old.i.i.i.i189, align 4
  %add5.i.i.i.i203 = add i32 %48, 1
  %49 = or i32 %add5.i.i.i.i203, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %.not.i.i.i.i204 = icmp sgt i32 %49, -1
  br i1 %.not.i.i.i.i204, label %if.end4.i.i.i.i205.kref_get_unless_zero.exit209_crit_edge, label %if.then10.i.i.i.i206, !prof !755

if.end4.i.i.i.i205.kref_get_unless_zero.exit209_crit_edge: ; preds = %if.end4.i.i.i.i205
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_get_unless_zero.exit209

if.then10.i.i.i.i206:                             ; preds = %if.end4.i.i.i.i205
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcount18, i32 noundef 0) #16
  %50 = ptrtoint ptr %old.i.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr234 = load i32, ptr %old.i.i.i.i189, align 4
  br label %kref_get_unless_zero.exit209

kref_get_unless_zero.exit209:                     ; preds = %if.then10.i.i.i.i206, %if.end4.i.i.i.i205.kref_get_unless_zero.exit209_crit_edge
  %51 = phi i32 [ %48, %if.end4.i.i.i.i205.kref_get_unless_zero.exit209_crit_edge ], [ %.pr234, %if.then10.i.i.i.i206 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool12.i.i.i.i207.not = icmp eq i32 %51, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i189) #16
  %not.tobool12.i.i.i.i207.not = xor i1 %tobool12.i.i.i.i207.not, true
  br i1 %tobool12.i.i.i.i207.not, label %kref_get_unless_zero.exit209.if.then27_crit_edge, label %lor.lhs.false24

kref_get_unless_zero.exit209.if.then27_crit_edge: ; preds = %kref_get_unless_zero.exit209
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then27

lor.lhs.false24:                                  ; preds = %kref_get_unless_zero.exit209
  %sc_cmd25 = getelementptr inbounds %struct.qedf_ioreq, ptr %33, i32 0, i32 2
  %52 = ptrtoint ptr %sc_cmd25 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sc_cmd25, align 4
  %cmp.not = icmp eq ptr %53, %sc_cmd
  br i1 %cmp.not, label %if.end32, label %lor.lhs.false24.if.then27_crit_edge

lor.lhs.false24.if.then27_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false24.if.then27_crit_edge, %kref_get_unless_zero.exit209.if.then27_crit_edge
  %sc_cmd29 = getelementptr inbounds %struct.qedf_ioreq, ptr %33, i32 0, i32 2
  %54 = ptrtoint ptr %sc_cmd29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sc_cmd29, align 4
  %port_id31 = getelementptr inbounds %struct.fc_rport_priv, ptr %19, i32 0, i32 4, i32 2
  %56 = ptrtoint ptr %port_id31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port_id31, align 8
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i188, ptr noundef nonnull @__func__.qedf_eh_abort, i32 noundef 761, ptr noundef nonnull @.str.113, ptr noundef %55, ptr noundef %sc_cmd, i32 noundef %57) #16
  br label %drop_rdata_kref

if.end32:                                         ; preds = %lor.lhs.false24
  %port_state.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 8
  %58 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port_state.i, align 8
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.271)
  switch i32 %59, label %if.end32.if.then35_crit_edge [
    i32 2, label %if.end32.sw.bb.i_crit_edge
    i32 11, label %if.end32.sw.bb.i_crit_edge239
  ]

if.end32.sw.bb.i_crit_edge239:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

if.end32.sw.bb.i_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

if.end32.if.then35_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then35

sw.bb.i:                                          ; preds = %if.end32.sw.bb.i_crit_edge, %if.end32.sw.bb.i_crit_edge239
  %roles.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 7
  %61 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %roles.i, align 4
  %and.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.if.then35_crit_edge, label %if.end45

sw.bb.i.if.then35_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then35

if.then35:                                        ; preds = %sw.bb.i.if.then35_crit_edge, %if.end32.if.then35_crit_edge
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount18, i32 noundef 4) #16
  %63 = ptrtoint ptr %refcount18 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %refcount18, align 4
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %33, i32 0, i32 1
  %65 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %xid, align 4
  %conv39 = zext i16 %66 to i32
  %cmnd40 = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 16
  %67 = ptrtoint ptr %cmnd40 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cmnd40, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 1
  %conv42 = zext i8 %70 to i32
  %port_id44 = getelementptr inbounds %struct.fc_rport_priv, ptr %19, i32 0, i32 4, i32 2
  %71 = ptrtoint ptr %port_id44 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port_id44, align 8
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i188, ptr noundef nonnull @__func__.qedf_eh_abort, i32 noundef 771, ptr noundef nonnull @.str.114, ptr noundef nonnull %33, i32 noundef %conv39, ptr noundef %sc_cmd, i32 noundef %conv42, i32 noundef %64, i32 noundef %72) #16
  br label %drop_rdata_kref

if.end45:                                         ; preds = %sw.bb.i
  %call46 = call i32 @fc_block_scsi_eh(ptr noundef %sc_cmd) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.drop_rdata_kref_crit_edge

if.end45.drop_rdata_kref_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop_rdata_kref

if.end49:                                         ; preds = %if.end45
  %flags = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 3, i32 1
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %flags, align 4
  %75 = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool51.not = icmp eq i32 %75, 0
  br i1 %tobool51.not, label %if.end67, label %if.then52

if.then52:                                        ; preds = %if.end49
  %xid54 = getelementptr inbounds %struct.qedf_ioreq, ptr %33, i32 0, i32 1
  %76 = ptrtoint ptr %xid54 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %xid54, align 4
  %conv55 = zext i16 %77 to i32
  %port_id57 = getelementptr inbounds %struct.fc_rport_priv, ptr %19, i32 0, i32 4, i32 2
  %78 = ptrtoint ptr %port_id57 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port_id57, align 8
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i188, ptr noundef nonnull @__func__.qedf_eh_abort, i32 noundef 783, ptr noundef nonnull @.str.115, i32 noundef %conv55, i32 noundef %79) #16
  %80 = ptrtoint ptr %sc_cmd25 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sc_cmd25, align 4
  %tobool59.not231 = icmp eq ptr %81, null
  br i1 %tobool59.not231, label %if.then52.if.then63_crit_edge, label %if.then52.while.body_crit_edge

if.then52.while.body_crit_edge:                   ; preds = %if.then52
  br label %while.body

if.then52.if.then63_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then63

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then52.while.body_crit_edge
  %wait_count.0232 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %if.then52.while.body_crit_edge ]
  call void @msleep(i32 noundef 100) #16
  %dec = add nsw i32 %wait_count.0232, -1
  %82 = ptrtoint ptr %sc_cmd25 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sc_cmd25, align 4
  %tobool59.not = icmp eq ptr %83, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp60.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool59.not, i1 true, i1 %cmp60.not
  br i1 %or.cond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %cmp60.not, label %if.else, label %while.end.if.then63_crit_edge

while.end.if.then63_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then63

if.then63:                                        ; preds = %while.end.if.then63_crit_edge, %if.then52.if.then63_crit_edge
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i188, ptr noundef nonnull @__func__.qedf_eh_abort, i32 noundef 789, ptr noundef nonnull @.str.116) #16
  br label %drop_rdata_kref

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i188, ptr noundef nonnull @__func__.qedf_eh_abort, i32 noundef 792, ptr noundef nonnull @.str.117) #16
  br label %drop_rdata_kref

if.end67:                                         ; preds = %if.end49
  %state = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 1, i32 13, i32 13, i32 1, i32 4
  %84 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %85)
  %cmp68.not = icmp eq i32 %85, 14
  br i1 %cmp68.not, label %lor.lhs.false70, label %if.end67.if.then72_crit_edge

if.end67.if.then72_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then72

lor.lhs.false70:                                  ; preds = %if.end67
  %link_up = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 1, i32 13, i32 13, i32 1, i32 3
  %86 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool71.not = icmp eq i8 %87, 0
  br i1 %tobool71.not, label %lor.lhs.false70.if.then72_crit_edge, label %if.end74

lor.lhs.false70.if.then72_crit_edge:              ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then72

if.then72:                                        ; preds = %lor.lhs.false70.if.then72_crit_edge, %if.end67.if.then72_crit_edge
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i188, ptr noundef nonnull @__func__.qedf_eh_abort, i32 noundef 799, ptr noundef nonnull @.str.118) #16
  br label %drop_rdata_kref

if.end74:                                         ; preds = %lor.lhs.false70
  %xid76 = getelementptr inbounds %struct.qedf_ioreq, ptr %33, i32 0, i32 1
  %88 = ptrtoint ptr %xid76 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %xid76, align 4
  %conv77 = zext i16 %89 to i32
  %fp_idx = getelementptr inbounds %struct.qedf_ioreq, ptr %33, i32 0, i32 36
  %90 = ptrtoint ptr %fp_idx to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %fp_idx, align 4
  %port_id79 = getelementptr inbounds %struct.fc_rport_priv, ptr %19, i32 0, i32 4, i32 2
  %92 = ptrtoint ptr %port_id79 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %port_id79, align 8
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i188, ptr noundef nonnull @__func__.qedf_eh_abort, i32 noundef 806, ptr noundef nonnull @.str.119, ptr noundef nonnull %33, ptr noundef %sc_cmd, i32 noundef %conv77, i32 noundef %91, i32 noundef %93) #16
  %stop_io_on_error = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i188, i32 0, i32 63
  %94 = ptrtoint ptr %stop_io_on_error to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %stop_io_on_error, align 2, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool80.not = icmp eq i8 %95, 0
  br i1 %tobool80.not, label %if.end82, label %if.then81

if.then81:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  %flags.i210 = getelementptr %struct.Scsi_Host, ptr %17, i32 1, i32 50, i32 12, i32 8, i32 4
  call void @_set_bit(i32 noundef 6, ptr noundef %flags.i210) #16
  br label %drop_rdata_kref

if.end82:                                         ; preds = %if.end74
  %abts_done = getelementptr inbounds %struct.qedf_ioreq, ptr %33, i32 0, i32 16
  %96 = ptrtoint ptr %abts_done to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %abts_done, align 4
  %wait.i = getelementptr inbounds %struct.qedf_ioreq, ptr %33, i32 0, i32 16, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #16
  %call83 = call i32 @qedf_initiate_abts(ptr noundef nonnull %33, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end87, label %if.then85

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i188, ptr noundef nonnull @__func__.qedf_eh_abort, i32 noundef 817, ptr noundef nonnull @.str.120) #16
  call void @qedf_scsi_done(ptr noundef %add.ptr.i188, ptr noundef nonnull %33, i32 noundef 7) #16
  br label %drop_rdata_kref

if.end87:                                         ; preds = %if.end82
  call void @wait_for_completion(ptr noundef %abts_done) #16
  %event = getelementptr inbounds %struct.qedf_ioreq, ptr %33, i32 0, i32 9
  %97 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %event, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.272)
  switch i32 %98, label %if.else100 [
    i32 1, label %if.end87.if.then104_crit_edge
    i32 2, label %if.end87.if.then104_crit_edge240
    i32 7, label %if.end87.if.then104_crit_edge241
  ]

if.end87.if.then104_crit_edge241:                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then104

if.end87.if.then104_crit_edge240:                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then104

if.end87.if.then104_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then104

if.else100:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  %100 = ptrtoint ptr %xid76 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %xid76, align 4
  %conv111 = zext i16 %101 to i32
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i188, ptr noundef nonnull @__func__.qedf_eh_abort, i32 noundef 848, ptr noundef nonnull @.str.122, i32 noundef %conv111) #16
  br label %drop_rdata_kref

if.then104:                                       ; preds = %if.end87.if.then104_crit_edge, %if.end87.if.then104_crit_edge240, %if.end87.if.then104_crit_edge241
  %102 = ptrtoint ptr %xid76 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %xid76, align 4
  %conv107 = zext i16 %103 to i32
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i188, ptr noundef nonnull @__func__.qedf_eh_abort, i32 noundef 845, ptr noundef nonnull @.str.121, i32 noundef %conv107) #16
  br label %drop_rdata_kref

drop_rdata_kref:                                  ; preds = %if.then104, %if.else100, %if.then85, %if.then81, %if.then72, %if.else, %if.then63, %if.end45.drop_rdata_kref_crit_edge, %if.then35, %if.then27, %if.then14
  %rc.1 = phi i32 [ 8195, %if.then27 ], [ 8195, %if.then35 ], [ %call46, %if.end45.drop_rdata_kref_crit_edge ], [ 8194, %if.then63 ], [ 8195, %if.else ], [ 0, %if.then72 ], [ 8194, %if.then81 ], [ 8194, %if.then85 ], [ 8194, %if.then104 ], [ 8195, %if.else100 ], [ 8194, %if.then14 ]
  %got_ref.1.shrunk = phi i1 [ %not.tobool12.i.i.i.i207.not, %if.then27 ], [ true, %if.then35 ], [ true, %if.end45.drop_rdata_kref_crit_edge ], [ %not.tobool12.i.i.i.i207.not, %if.then63 ], [ %not.tobool12.i.i.i.i207.not, %if.else ], [ true, %if.then72 ], [ true, %if.then81 ], [ true, %if.then85 ], [ true, %if.then104 ], [ true, %if.else100 ], [ false, %if.then14 ]
  %call.i.i.i.i.i.i211 = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !767
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #16
  %104 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #16, !srcloc !768
  %asmresult.i.i.i.i.i.i.i212 = extractvalue { i32, i32, i32 } %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i212)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i212, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %drop_rdata_kref
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i212)
  %.not.i.i.i.i213 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i212, 0
  br i1 %.not.i.i.i.i213, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i214, !prof !755

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then10.i.i.i.i214:                             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #16
  br label %out

if.then.i:                                        ; preds = %drop_rdata_kref
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !769
  call void @fc_rport_destroy(ptr noundef %kref) #16, !callees !770
  br label %out

out:                                              ; preds = %if.then.i, %if.then10.i.i.i.i214, %if.end5.i.i.i.i.out_crit_edge
  br i1 %got_ref.1.shrunk, label %if.then116, label %out.if.end119_crit_edge

out.if.end119_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end119

if.then116:                                       ; preds = %out
  %refcount117 = getelementptr inbounds %struct.qedf_ioreq, ptr %33, i32 0, i32 11
  %call.i.i.i.i.i.i215 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount117, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !767
  call void @llvm.prefetch.p0(ptr %refcount117, i32 1, i32 3, i32 1) #16
  %105 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount117, ptr %refcount117, i32 1, ptr elementtype(i32) %refcount117) #16, !srcloc !768
  %asmresult.i.i.i.i.i.i.i216 = extractvalue { i32, i32, i32 } %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i216)
  %cmp.i.i.i.i217 = icmp eq i32 %asmresult.i.i.i.i.i.i.i216, 1
  br i1 %cmp.i.i.i.i217, label %if.then.i221, label %if.end5.i.i.i.i219

if.end5.i.i.i.i219:                               ; preds = %if.then116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i216)
  %.not.i.i.i.i218 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i216, 0
  br i1 %.not.i.i.i.i218, label %if.end5.i.i.i.i219.if.end119_crit_edge, label %if.then10.i.i.i.i220, !prof !755

if.end5.i.i.i.i219.if.end119_crit_edge:           ; preds = %if.end5.i.i.i.i219
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end119

if.then10.i.i.i.i220:                             ; preds = %if.end5.i.i.i.i219
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcount117, i32 noundef 3) #16
  br label %if.end119

if.then.i221:                                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !769
  call void @qedf_release_cmd(ptr noundef %refcount117) #16, !callees !770
  br label %if.end119

if.end119:                                        ; preds = %if.then.i221, %if.then10.i.i.i.i220, %if.end5.i.i.i.i219.if.end119_crit_edge, %out.if.end119_crit_edge, %out.thread
  %rc.2229 = phi i32 [ 8194, %out.thread ], [ %rc.1, %out.if.end119_crit_edge ], [ %rc.1, %if.end5.i.i.i.i219.if.end119_crit_edge ], [ %rc.1, %if.then10.i.i.i.i220 ], [ %rc.1, %if.then.i221 ]
  ret i32 %rc.2229
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_eh_device_reset(ptr noundef %sc_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lun, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_eh_device_reset, i32 noundef 870, ptr noundef nonnull @.str.123, i32 noundef %5, i32 noundef %7, i64 noundef %9) #16
  %call = tail call i32 @qedf_initiate_tmf(ptr noundef %sc_cmd, i8 noundef zeroext 16) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_eh_target_reset(ptr noundef %sc_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lun, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_eh_target_reset, i32 noundef 862, ptr noundef nonnull @.str.124, i32 noundef %5, i32 noundef %7, i64 noundef %9) #16
  %call = tail call i32 @qedf_initiate_tmf(ptr noundef %sc_cmd, i8 noundef zeroext 32) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_eh_host_reset(ptr nocapture noundef readonly %sc_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %add.ptr.i = getelementptr %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  %link_state = getelementptr %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 31, i32 0, i32 0, i32 4, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #16
  %4 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 8, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_eh_host_reset, i32 noundef 966, ptr noundef nonnull @.str.125) #16
  tail call void @qedf_ctx_soft_reset(ptr noundef %hostdata.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8194, %if.end ], [ 8195, %lor.lhs.false.cleanup_crit_edge ], [ 8195, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_slave_configure(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @qedf_queue_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %0) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_fc_rport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_block_scsi_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedf_initiate_abts(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_scsi_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_rport_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_release_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedf_initiate_tmf(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @qedf_initiate_fipvlan_req(ptr noundef %qedf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fipvlan_retries = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 30
  %0 = ptrtoint ptr %fipvlan_retries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fipvlan_retries, align 4
  %dec37 = add i32 %1, -1
  store i32 %dec37, ptr %fipvlan_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not38 = icmp eq i32 %1, 0
  br i1 %tobool.not38, label %entry.return_crit_edge, label %while.body.lr.ph

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

while.body.lr.ph:                                 ; preds = %entry
  %link_state = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 4
  %flags = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 29
  %vlan_id = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 6
  %fipvlan_compl = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 26
  %wait.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 26, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.body.lr.ph
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #16
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_initiate_fipvlan_req, i32 noundef 139, ptr noundef nonnull @.str.130) #16
  br label %return

if.end:                                           ; preds = %while.body
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_initiate_fipvlan_req, i32 noundef 144, ptr noundef nonnull @.str.131) #16
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vlan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp sgt i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end15

if.then7:                                         ; preds = %if.end5
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_initiate_fipvlan_req, i32 noundef 151, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %8) #16
  %call.i.i34 = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #16
  %9 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp12 = icmp eq i32 %10, 1
  br i1 %cmp12, label %if.then13, label %if.then7.return_crit_edge

if.then7.return_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  %ctlr = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 1
  tail call void @fcoe_ctlr_link_up(ptr noundef %ctlr) #16
  br label %return

if.end15:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %fipvlan_retries to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fipvlan_retries, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_initiate_fipvlan_req, i32 noundef 158, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %12) #16
  %13 = ptrtoint ptr %fipvlan_compl to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %fipvlan_compl, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #16
  tail call void @qedf_fcoe_send_vlan_req(ptr noundef %qedf) #16
  %call19 = tail call i32 @wait_for_completion_timeout(ptr noundef %fipvlan_compl, i32 noundef 100) #16
  %14 = ptrtoint ptr %fipvlan_retries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fipvlan_retries, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %fipvlan_retries, align 4
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end15.return_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end15.return_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

return:                                           ; preds = %if.end15.return_crit_edge, %if.then13, %if.then7.return_crit_edge, %if.then3, %if.then, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then3 ], [ true, %if.then13 ], [ true, %if.then7.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %if.end15.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_ctlr_link_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_fcoe_send_vlan_req(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_rport_login(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedf_free_global_queues(ptr nocapture noundef readonly %qedf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %global_queues = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 32
  %0 = ptrtoint ptr %global_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %global_queues, align 4
  %num_queues = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 31
  %2 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp48.not = icmp eq i8 %3, 0
  br i1 %cmp48.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %1, i32 %i.049
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %cq_mem_size = getelementptr inbounds %struct.global_queue, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %cq_mem_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cq_mem_size, align 4
  %cq_dma = getelementptr inbounds %struct.global_queue, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %cq_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cq_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %11, ptr noundef nonnull %7, i32 noundef %13, i32 noundef 0) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %cq_pbl = getelementptr inbounds %struct.global_queue, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %cq_pbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cq_pbl, align 4
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %if.end9.if.end19_crit_edge, label %if.then12

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %cq_pbl_size = getelementptr inbounds %struct.global_queue, ptr %15, i32 0, i32 7
  %20 = ptrtoint ptr %cq_pbl_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cq_pbl_size, align 4
  %cq_pbl_dma = getelementptr inbounds %struct.global_queue, ptr %15, i32 0, i32 6
  %22 = ptrtoint ptr %cq_pbl_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cq_pbl_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev14, i32 noundef %21, ptr noundef nonnull %17, i32 noundef %23, i32 noundef 0) #16
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.end9.if.end19_crit_edge
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %25) #16
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.049, 1
  %26 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_queues, align 8
  %conv = zext i8 %27 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %bdq_pbl_list.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 39
  %28 = ptrtoint ptr %bdq_pbl_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bdq_pbl_list.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %for.end.if.end.i_crit_edge, label %if.then.i

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %pdev.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 13
  %30 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %bdq_pbl_list_dma.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 40
  %32 = ptrtoint ptr %bdq_pbl_list_dma.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bdq_pbl_list_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %29, i32 noundef %33, i32 noundef 0) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.end.if.end.i_crit_edge
  %bdq_pbl.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 36
  %34 = ptrtoint ptr %bdq_pbl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bdq_pbl.i, align 8
  %tobool2.not.i = icmp eq ptr %35, null
  br i1 %tobool2.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then3.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %pdev4.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 13
  %36 = ptrtoint ptr %pdev4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev4.i, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %bdq_pbl_mem_size.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 38
  %38 = ptrtoint ptr %bdq_pbl_mem_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bdq_pbl_mem_size.i, align 16
  %bdq_pbl_dma.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 37
  %40 = ptrtoint ptr %bdq_pbl_dma.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bdq_pbl_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev5.i, i32 noundef %39, ptr noundef nonnull %35, i32 noundef %41, i32 noundef 0) #16
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %if.end.i.if.end7.i_crit_edge
  %pdev10.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.i
  %i.036.i = phi i32 [ 0, %if.end7.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.qedf_ctx, ptr %qedf, i32 0, i32 35, i32 %i.036.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 8
  %tobool8.not.i = icmp eq ptr %43, null
  br i1 %tobool8.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then9.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %pdev10.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev10.i, align 8
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %buf_dma.i = getelementptr %struct.qedf_ctx, ptr %qedf, i32 0, i32 35, i32 %i.036.i, i32 1
  %46 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buf_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev11.i, i32 noundef 2072, ptr noundef nonnull %43, i32 noundef %47, i32 noundef 0) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %qedf_free_bdq.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

qedf_free_bdq.exit:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_link_update(ptr noundef %dev, ptr noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 29
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %dev, ptr noundef nonnull @__func__.qedf_link_update, i32 noundef 580, ptr noundef nonnull @.str.155) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %link, align 4, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.else25, label %if.then2

if.then2:                                         ; preds = %if.end
  %link_state = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #16
  %5 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %dev, ptr noundef nonnull @__func__.qedf_link_update, i32 noundef 587, i32 noundef 4, ptr noundef nonnull @.str.156) #16
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  %speed = getelementptr inbounds %struct.qed_link_output, ptr %link, i32 0, i32 4
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 4
  %div = udiv i32 %8, 1000
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %dev, ptr noundef nonnull @__func__.qedf_link_update, i32 noundef 591, ptr noundef nonnull @.str.157, i32 noundef %div) #16
  %link_update = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 23
  %call8 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %link_update) #16
  %call.i.i65 = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_state, i32 noundef 4) #16
  %9 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %link_state, align 4
  tail call fastcc void @qedf_update_link_speed(ptr noundef %dev, ptr noundef %link)
  %dcbx = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 5
  %call.i.i66 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dcbx, i32 noundef 4) #16
  %10 = ptrtoint ptr %dcbx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dcbx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp11 = icmp eq i32 %11, 1
  br i1 %cmp11, label %if.end6.if.then13_crit_edge, label %lor.lhs.false

if.end6.if.then13_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end6
  %12 = load i8, ptr @qedf_dcbx_no_wait, align 1, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not = icmp eq i8 %12, 0
  br i1 %tobool12.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end6.if.then13_crit_edge
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %dev, ptr noundef nonnull @__func__.qedf_link_update, i32 noundef 602, i32 noundef 4, ptr noundef nonnull @.str.158) #16
  %link_down_tmo_valid = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 27
  %call.i.i67 = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_down_tmo_valid, i32 noundef 4) #16
  %13 = ptrtoint ptr %link_down_tmo_valid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %link_down_tmo_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp16 = icmp sgt i32 %14, 0
  %link_update_wq = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 21
  %15 = ptrtoint ptr %link_update_wq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_update_wq, align 4
  %link_recovery = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 24
  %link_update.sink = select i1 %cmp16, ptr %link_recovery, ptr %link_update
  %call.i72 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %link_update.sink, i32 noundef 0) #16
  %call.i.i68 = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_down_tmo_valid, i32 noundef 4) #16
  %17 = ptrtoint ptr %link_down_tmo_valid to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %link_down_tmo_valid, align 4
  br label %cleanup

if.else25:                                        ; preds = %if.end
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %dev, ptr noundef nonnull @__func__.qedf_link_update, i32 noundef 613, ptr noundef nonnull @.str.159) #16
  %link_state27 = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 4
  %call.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_state27, i32 noundef 4) #16
  %18 = ptrtoint ptr %link_state27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %link_state27, align 4
  %dcbx28 = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 5
  %call.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dcbx28, i32 noundef 4) #16
  %19 = ptrtoint ptr %dcbx28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %dcbx28, align 4
  %20 = load i32, ptr @qedf_link_down_tmo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp29.not = icmp eq i32 %20, 0
  br i1 %cmp29.not, label %if.else25.if.end33_crit_edge, label %if.then30

if.else25.if.end33_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then30:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %dev, ptr noundef nonnull @__func__.qedf_link_update, i32 noundef 623, i32 noundef 4, ptr noundef nonnull @.str.160) #16
  %link_down_tmo_valid32 = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 27
  %call.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_down_tmo_valid32, i32 noundef 4) #16
  %21 = ptrtoint ptr %link_down_tmo_valid32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %link_down_tmo_valid32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.else25.if.end33_crit_edge
  %vlan_id = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 6
  %22 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %vlan_id, align 4
  tail call fastcc void @qedf_update_link_speed(ptr noundef %dev, ptr noundef %link)
  %link_update_wq34 = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 21
  %23 = ptrtoint ptr %link_update_wq34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link_update_wq34, align 4
  %link_update35 = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 23
  %25 = load i32, ptr @qedf_link_down_tmo, align 4
  %mul = mul i32 %25, 100
  %call.i73 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %link_update35, i32 noundef %mul) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then13, %lor.lhs.false.cleanup_crit_edge, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_schedule_recovery_handler(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %dev, ptr noundef nonnull @__func__.qedf_schedule_recovery_handler, i32 noundef 4002, ptr noundef nonnull @.str.161) #16
  %recovery_work = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %recovery_work, i32 noundef 0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_dcbx_handler(ptr noundef %dev, ptr nocapture noundef readonly %get, i32 noundef %mib_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %get, i32 0, i32 2
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid, align 4, !range !756
  %2 = zext i8 %1 to i32
  %enabled = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %get, i32 0, i32 3
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 1, !range !756
  %5 = zext i8 %4 to i32
  %fcoe = getelementptr inbounds %struct.qed_dcbx_app_prio, ptr %get, i32 0, i32 2
  %6 = ptrtoint ptr %fcoe to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fcoe, align 2
  %conv5 = zext i8 %7 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %dev, ptr noundef nonnull @__func__.qedf_dcbx_handler, i32 noundef 641, ptr noundef nonnull @.str.162, i32 noundef %2, i32 noundef %5, i32 noundef %conv5) #16
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 1, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %10 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %valid, align 4, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %dcbx = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dcbx, i32 noundef 4) #16
  %12 = ptrtoint ptr %dcbx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %dcbx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %dev, ptr noundef nonnull @__func__.qedf_dcbx_handler, i32 noundef 647, i32 noundef 4, ptr noundef nonnull @.str.163) #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dcbx, i32 noundef 4) #16
  %14 = ptrtoint ptr %dcbx to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %dcbx, align 4
  %15 = ptrtoint ptr %fcoe to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fcoe, align 2
  %17 = load i32, ptr @qedf_default_prio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp21 = icmp sgt i32 %17, -1
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %conv24 = trunc i32 %17 to i8
  br label %if.end35

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %16)
  %cmp26 = icmp ugt i8 %16, 7
  br i1 %cmp26, label %if.then28, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %conv25 = zext i8 %16 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %dev, ptr noundef nonnull @__func__.qedf_dcbx_handler, i32 noundef 666, i32 noundef 4, ptr noundef nonnull @.str.164, i32 noundef %conv25, i32 noundef 3) #16
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %if.else.if.end35_crit_edge, %if.then23
  %.sink = phi i8 [ 3, %if.then28 ], [ %conv24, %if.then23 ], [ %16, %if.else.if.end35_crit_edge ]
  %prio31 = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 7
  %18 = ptrtoint ptr %prio31 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %prio31, align 8
  %link_state = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 4
  %call.i.i77 = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #16
  %19 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp37 = icmp eq i32 %20, 1
  br i1 %cmp37, label %land.lhs.true39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true39:                                  ; preds = %if.end35
  %21 = load i8, ptr @qedf_dcbx_no_wait, align 1, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool40.not = icmp eq i8 %21, 0
  br i1 %tobool40.not, label %if.then41, label %land.lhs.true39.cleanup_crit_edge

land.lhs.true39.cleanup_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then41:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #18
  %link_down_tmo_valid = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 27
  %call.i.i78 = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_down_tmo_valid, i32 noundef 4) #16
  %22 = ptrtoint ptr %link_down_tmo_valid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %link_down_tmo_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp43 = icmp sgt i32 %23, 0
  %link_update_wq = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 21
  %24 = ptrtoint ptr %link_update_wq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %link_update_wq, align 4
  %link_update = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 23
  %link_recovery = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 24
  %link_update.sink = select i1 %cmp43, ptr %link_recovery, ptr %link_update
  %call.i80 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %link_update.sink, i32 noundef 0) #16
  %call.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_down_tmo_valid, i32 noundef 4) #16
  %26 = ptrtoint ptr %link_down_tmo_valid to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %link_down_tmo_valid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %land.lhs.true39.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.then15, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_bw_update(ptr noundef %dev) #0 align 64 {
entry:
  %link = alloca %struct.qed_link_output, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %link) #16
  %0 = call ptr @memset(ptr %link, i32 255, i32 72)
  %1 = load ptr, ptr @qed_ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %get_link = getelementptr inbounds %struct.qed_common_ops, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %get_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_link, align 4
  %cdev = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdev, align 4
  call void %5(ptr noundef %7, ptr noundef nonnull %link) #16
  %flags = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 29
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %dev, ptr noundef nonnull @__func__.qedf_bw_update, i32 noundef 554, ptr noundef nonnull @.str.155) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %link, align 4, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not = icmp eq i8 %12, 0
  br i1 %tobool1.not, label %if.else7, label %if.then2

if.then2:                                         ; preds = %if.end
  %link_state = getelementptr inbounds %struct.qedf_ctx, ptr %dev, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #16
  %13 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @qedf_update_link_speed(ptr noundef %dev, ptr noundef nonnull %link)
  br label %cleanup

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %dev, ptr noundef nonnull @__func__.qedf_bw_update, i32 noundef 563, ptr noundef nonnull @.str.165) #16
  br label %cleanup

if.else7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %dev, ptr noundef nonnull @__func__.qedf_bw_update, i32 noundef 566, ptr noundef nonnull @.str.166) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else7, %if.else, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %link) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedf_update_link_speed(ptr nocapture noundef readonly %qedf, ptr noundef %link) unnamed_addr #0 align 64 {
entry:
  %sup_caps = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sup_caps) #16
  %0 = getelementptr inbounds [3 x i32], ptr %sup_caps, i32 0, i32 1
  %lport1 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 2
  %1 = ptrtoint ptr %lport1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lport1, align 16
  %link_speed = getelementptr inbounds %struct.fc_lport, ptr %2, i32 0, i32 30
  %3 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %link_speed, align 4
  %link_supported_speeds = getelementptr inbounds %struct.fc_lport, ptr %2, i32 0, i32 31
  %4 = ptrtoint ptr %link_supported_speeds to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %link_supported_speeds, align 2
  %speed = getelementptr inbounds %struct.qed_link_output, ptr %link, i32 0, i32 4
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %speed, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.273)
  switch i32 %6, label %entry.sw.epilog_crit_edge [
    i32 10000, label %entry.sw.epilog.sink.split_crit_edge
    i32 25000, label %sw.bb3
    i32 40000, label %sw.bb5
    i32 50000, label %sw.bb7
    i32 100000, label %sw.bb9
    i32 20000, label %sw.bb11
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i16 [ 128, %sw.bb11 ], [ 1024, %sw.bb9 ], [ 512, %sw.bb7 ], [ 256, %sw.bb5 ], [ 2048, %sw.bb3 ], [ 4, %entry.sw.epilog.sink.split_crit_edge ]
  %8 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %.sink, ptr %link_speed, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %9 = getelementptr inbounds i8, ptr %sup_caps, i32 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 15360, ptr %0, align 4
  %12 = ptrtoint ptr %sup_caps to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1839104, ptr %sup_caps, align 4
  %supported_caps = getelementptr inbounds %struct.qed_link_output, ptr %link, i32 0, i32 1
  %call.i.i = call i32 @__bitmap_intersects(ptr noundef %supported_caps, ptr noundef nonnull %sup_caps, i32 noundef 92) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %link_supported_speeds to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %link_supported_speeds, align 2
  %15 = or i16 %14, 4
  store i16 %15, ptr %link_supported_speeds, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %16 = getelementptr inbounds i8, ptr %sup_caps, i32 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %16, align 4
  %18 = ptrtoint ptr %sup_caps to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -2147483648, ptr %sup_caps, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %0, align 4
  %call.i.i169 = call i32 @__bitmap_intersects(ptr noundef %supported_caps, ptr noundef nonnull %sup_caps, i32 noundef 92) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i169)
  %tobool34.not = icmp eq i32 %call.i.i169, 0
  br i1 %tobool34.not, label %if.end.if.end40_crit_edge, label %if.then35

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %link_supported_speeds to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %link_supported_speeds, align 2
  %22 = or i16 %21, 2048
  store i16 %22, ptr %link_supported_speeds, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.end.if.end40_crit_edge
  %23 = getelementptr inbounds i8, ptr %sup_caps, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 0, ptr %23, align 4
  %25 = ptrtoint ptr %sup_caps to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 125829120, ptr %sup_caps, align 4
  %call.i.i170 = call i32 @__bitmap_intersects(ptr noundef %supported_caps, ptr noundef nonnull %sup_caps, i32 noundef 92) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i170)
  %tobool50.not = icmp eq i32 %call.i.i170, 0
  br i1 %tobool50.not, label %if.end40.if.end56_crit_edge, label %if.then51

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.then51:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %link_supported_speeds to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %link_supported_speeds, align 2
  %28 = or i16 %27, 256
  store i16 %28, ptr %link_supported_speeds, align 2
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.end40.if.end56_crit_edge
  %29 = call ptr @memset(ptr %sup_caps, i32 0, i32 12)
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 268, ptr %0, align 4
  %call.i.i171 = call i32 @__bitmap_intersects(ptr noundef %supported_caps, ptr noundef nonnull %sup_caps, i32 noundef 92) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i171)
  %tobool65.not = icmp eq i32 %call.i.i171, 0
  br i1 %tobool65.not, label %if.end56.if.end71_crit_edge, label %if.then66

if.end56.if.end71_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71

if.then66:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %link_supported_speeds to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %link_supported_speeds, align 2
  %33 = or i16 %32, 512
  store i16 %33, ptr %link_supported_speeds, align 2
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.end56.if.end71_crit_edge
  %34 = call ptr @memset(ptr %sup_caps, i32 0, i32 12)
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 240, ptr %0, align 4
  %call.i.i172 = call i32 @__bitmap_intersects(ptr noundef %supported_caps, ptr noundef nonnull %sup_caps, i32 noundef 92) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i172)
  %tobool81.not = icmp eq i32 %call.i.i172, 0
  br i1 %tobool81.not, label %if.end71.if.end87_crit_edge, label %if.then82

if.end71.if.end87_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87

if.then82:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %link_supported_speeds to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %link_supported_speeds, align 2
  %38 = or i16 %37, 1024
  store i16 %38, ptr %link_supported_speeds, align 2
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %if.end71.if.end87_crit_edge
  %39 = getelementptr inbounds i8, ptr %sup_caps, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 0, ptr %39, align 4
  %41 = ptrtoint ptr %sup_caps to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4194304, ptr %sup_caps, align 4
  %call.i.i173 = call i32 @__bitmap_intersects(ptr noundef %supported_caps, ptr noundef nonnull %sup_caps, i32 noundef 92) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i173)
  %tobool94.not = icmp eq i32 %call.i.i173, 0
  br i1 %tobool94.not, label %if.end87.if.end100_crit_edge, label %if.then95

if.end87.if.end100_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end100

if.then95:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  %42 = ptrtoint ptr %link_supported_speeds to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %link_supported_speeds, align 2
  %44 = or i16 %43, 128
  store i16 %44, ptr %link_supported_speeds, align 2
  br label %if.end100

if.end100:                                        ; preds = %if.then95, %if.end87.if.end100_crit_edge
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %2, align 8
  %tobool101.not = icmp eq ptr %46, null
  br i1 %tobool101.not, label %if.end100.if.end109_crit_edge, label %land.lhs.true

if.end100.if.end109_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end109

land.lhs.true:                                    ; preds = %if.end100
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 51
  %47 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %shost_data, align 8
  %tobool103.not = icmp eq ptr %48, null
  br i1 %tobool103.not, label %land.lhs.true.if.end109_crit_edge, label %if.then104

land.lhs.true.if.end109_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end109

if.then104:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %link_supported_speeds to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %link_supported_speeds, align 2
  %conv106 = zext i16 %50 to i32
  %supported_speeds = getelementptr inbounds %struct.fc_host_attrs, ptr %48, i32 0, i32 5
  %51 = ptrtoint ptr %supported_speeds to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv106, ptr %supported_speeds, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %land.lhs.true.if.end109_crit_edge, %if.end100.if.end109_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sup_caps) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_simd_int_handler(ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %cookie, ptr noundef nonnull @__func__.qedf_simd_int_handler, i32 noundef 2346, ptr noundef nonnull @.str.181, ptr noundef %cookie) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_msix_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_msix_handler, i32 noundef 2304, ptr noundef nonnull @.str.176) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sb_info = getelementptr inbounds %struct.qedf_fastpath, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %sb_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb_info, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_msix_handler, i32 noundef 2308, ptr noundef nonnull @.str.177) #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sb_ack.i = getelementptr inbounds %struct.qed_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sb_ack.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_ack.i, align 4
  %or3.i = or i32 %3, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !772
  tail call void @arm_heavy_mb() #16
  %4 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #16
  %igu_addr.i = getelementptr inbounds %struct.qed_sb_info, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %igu_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %igu_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #16, !srcloc !773
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !774
  %qedf1.i = getelementptr inbounds %struct.qedf_fastpath, ptr %dev_id, i32 0, i32 2
  %completions.i = getelementptr inbounds %struct.qedf_fastpath, ptr %dev_id, i32 0, i32 3
  %cq_num_entries.i = getelementptr inbounds %struct.qedf_fastpath, ptr %dev_id, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end3
  %7 = ptrtoint ptr %qedf1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qedf1.i, align 4
  %9 = ptrtoint ptr %sb_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sb_info, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 4
  %global_queues.i = getelementptr inbounds %struct.qedf_ctx, ptr %8, i32 0, i32 32
  %15 = ptrtoint ptr %global_queues.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %global_queues.i, align 4
  %17 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dev_id, align 4
  %idxprom.i = zext i16 %18 to i32
  %arrayidx3.i = getelementptr ptr, ptr %16, i32 %idxprom.i
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx3.i, align 4
  %conv.i = zext i16 %14 to i32
  %cq_prod_idx.i = getelementptr inbounds %struct.global_queue, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %cq_prod_idx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cq_prod_idx.i, align 4
  %23 = trunc i32 %22 to i16
  %conv10.i = sub i16 %14, %23
  store i32 %conv.i, ptr %cq_prod_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv10.i)
  %tobool.not8.i = icmp eq i16 %conv10.i, 0
  br i1 %tobool.not8.i, label %while.cond.qedf_process_completions.exit_crit_edge, label %while.body.lr.ph.lr.ph.i

while.cond.qedf_process_completions.exit_crit_edge: ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %qedf_process_completions.exit

while.body.lr.ph.lr.ph.i:                         ; preds = %while.cond
  %cq_cons_idx.i = getelementptr inbounds %struct.global_queue, ptr %20, i32 0, i32 3
  %cmd_mgr.i = getelementptr inbounds %struct.qedf_ctx, ptr %8, i32 0, i32 47
  %io_mempool.i = getelementptr inbounds %struct.qedf_ctx, ptr %8, i32 0, i32 50
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %inc_idx.i.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.lr.ph.i
  %new_cqes.0.ph10.i = phi i16 [ %conv10.i, %while.body.lr.ph.lr.ph.i ], [ %dec.i, %inc_idx.i.while.body.lr.ph.i_crit_edge ]
  %24 = ptrtoint ptr %completions.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %completions.i, align 4
  %inc.i46 = add i32 %25, 1
  store i32 %inc.i46, ptr %completions.i, align 4
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %20, align 4
  %28 = ptrtoint ptr %cq_cons_idx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cq_cons_idx.i, align 4
  %arrayidx14.i47 = getelementptr %struct.fcoe_cqe, ptr %27, i32 %29
  %30 = ptrtoint ptr %arrayidx14.i47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx14.i47, align 4
  %32 = and i32 %31, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %32)
  %cmp15.i48 = icmp eq i32 %32, 65536
  br i1 %cmp15.i48, label %while.body.lr.ph.i.if.then.i_crit_edge, label %while.body.lr.ph.i.if.end.i_crit_edge

while.body.lr.ph.i.if.end.i_crit_edge:            ; preds = %while.body.lr.ph.i
  br label %if.end.i

while.body.lr.ph.i.if.then.i_crit_edge:           ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %if.then30.i.if.then.i_crit_edge, %while.body.lr.ph.i.if.then.i_crit_edge
  %arrayidx14.i.lcssa = phi ptr [ %arrayidx14.i47, %while.body.lr.ph.i.if.then.i_crit_edge ], [ %arrayidx14.i, %if.then30.i.if.then.i_crit_edge ]
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %8, ptr noundef nonnull @__func__.qedf_process_completions, i32 noundef 2243, i32 noundef 512, ptr noundef nonnull @.str.178) #16
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %dev_id, align 4
  tail call void @qedf_process_unsol_compl(ptr noundef %8, i16 noundef zeroext %34, ptr noundef %arrayidx14.i.lcssa) #16
  br label %inc_idx.i

if.end.i:                                         ; preds = %if.then30.i.if.end.i_crit_edge, %while.body.lr.ph.i.if.end.i_crit_edge
  %35 = phi i32 [ %54, %if.then30.i.if.end.i_crit_edge ], [ %31, %while.body.lr.ph.i.if.end.i_crit_edge ]
  %arrayidx14.i49 = phi ptr [ %arrayidx14.i, %if.then30.i.if.end.i_crit_edge ], [ %arrayidx14.i47, %while.body.lr.ph.i.if.end.i_crit_edge ]
  %36 = ptrtoint ptr %cmd_mgr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cmd_mgr.i, align 8
  %idxprom21.i = and i32 %35, 65535
  %arrayidx22.i = getelementptr %struct.qedf_cmd_mgr, ptr %37, i32 0, i32 3, i32 %idxprom21.i
  %tobool23.not.i = icmp eq ptr %arrayidx22.i, null
  br i1 %tobool23.not.i, label %if.end.i.if.end27.i_crit_edge, label %if.else.i

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %cpu25.i = getelementptr %struct.qedf_cmd_mgr, ptr %37, i32 0, i32 3, i32 %idxprom21.i, i32 37
  %38 = ptrtoint ptr %cpu25.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu25.i, align 4
  %40 = tail call i32 @llvm.read_register.i32(metadata !743) #16
  %and.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i to ptr
  %cpu26.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu26.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu26.i, align 4
  %int_cpu.i = getelementptr %struct.qedf_cmd_mgr, ptr %37, i32 0, i32 3, i32 %idxprom21.i, i32 38
  %44 = ptrtoint ptr %int_cpu.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %int_cpu.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %if.end.i.if.end27.i_crit_edge
  %cpu.0.i = phi i32 [ %39, %if.else.i ], [ 0, %if.end.i.if.end27.i_crit_edge ]
  %45 = ptrtoint ptr %io_mempool.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_mempool.i, align 4
  %call28.i = tail call noalias ptr @mempool_alloc(ptr noundef %46, i32 noundef 2592) #16
  %tobool29.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool29.not.i, label %if.then30.i, label %if.end32.i

if.then30.i:                                      ; preds = %if.end27.i
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %8, ptr noundef nonnull @__func__.qedf_process_completions, i32 noundef 2272, ptr noundef nonnull @.str.179) #16
  %47 = ptrtoint ptr %completions.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %completions.i, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %completions.i, align 4
  %49 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %20, align 4
  %51 = ptrtoint ptr %cq_cons_idx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cq_cons_idx.i, align 4
  %arrayidx14.i = getelementptr %struct.fcoe_cqe, ptr %50, i32 %52
  %53 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx14.i, align 4
  %55 = and i32 %54, 983040
  %cmp15.i = icmp eq i32 %55, 65536
  br i1 %cmp15.i, label %if.then30.i.if.then.i_crit_edge, label %if.then30.i.if.end.i_crit_edge

if.then30.i.if.end.i_crit_edge:                   ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then30.i.if.then.i_crit_edge:                  ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.end32.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %56 = call ptr @memset(ptr %call28.i, i32 0, i32 84)
  tail call void @__init_work(ptr noundef nonnull %call28.i, i32 noundef 0) #16
  %57 = ptrtoint ptr %call28.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -64, ptr %call28.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call28.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.180, ptr noundef nonnull @qedf_process_completions.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry36.i = getelementptr inbounds %struct.work_struct, ptr %call28.i, i32 0, i32 1
  %58 = ptrtoint ptr %entry36.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %entry36.i, ptr %entry36.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call28.i, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %entry36.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call28.i, i32 0, i32 2
  %60 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @qedf_fp_io_handler, ptr %func.i, align 4
  %cqe38.i = getelementptr inbounds %struct.qedf_io_work, ptr %call28.i, i32 0, i32 1
  %61 = call ptr @memcpy(ptr %cqe38.i, ptr %arrayidx14.i49, i32 32)
  %62 = ptrtoint ptr %qedf1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %qedf1.i, align 4
  %qedf40.i = getelementptr inbounds %struct.qedf_io_work, ptr %call28.i, i32 0, i32 2
  %64 = ptrtoint ptr %qedf40.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %qedf40.i, align 4
  %fp41.i = getelementptr inbounds %struct.qedf_io_work, ptr %call28.i, i32 0, i32 3
  %65 = ptrtoint ptr %fp41.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %fp41.i, align 4
  %66 = load ptr, ptr @qedf_io_wq, align 4
  %call43.i = tail call zeroext i1 @queue_work_on(i32 noundef %cpu.0.i, ptr noundef %66, ptr noundef nonnull %call28.i) #16
  br label %inc_idx.i

inc_idx.i:                                        ; preds = %if.end32.i, %if.then.i
  %67 = ptrtoint ptr %cq_cons_idx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cq_cons_idx.i, align 4
  %inc45.i = add i32 %68, 1
  store i32 %inc45.i, ptr %cq_cons_idx.i, align 4
  %69 = ptrtoint ptr %cq_num_entries.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cq_num_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc45.i, i32 %70)
  %cmp47.i = icmp eq i32 %inc45.i, %70
  %spec.store.select.i = select i1 %cmp47.i, i32 0, i32 %inc45.i
  %71 = ptrtoint ptr %cq_cons_idx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %spec.store.select.i, ptr %cq_cons_idx.i, align 4
  %dec.i = add i16 %new_cqes.0.ph10.i, -1
  %tobool.not.i = icmp eq i16 %dec.i, 0
  br i1 %tobool.not.i, label %inc_idx.i.qedf_process_completions.exit_crit_edge, label %inc_idx.i.while.body.lr.ph.i_crit_edge

inc_idx.i.while.body.lr.ph.i_crit_edge:           ; preds = %inc_idx.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.lr.ph.i

inc_idx.i.qedf_process_completions.exit_crit_edge: ; preds = %inc_idx.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qedf_process_completions.exit

qedf_process_completions.exit:                    ; preds = %inc_idx.i.qedf_process_completions.exit_crit_edge, %while.cond.qedf_process_completions.exit_crit_edge
  %72 = ptrtoint ptr %qedf1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %qedf1.i, align 4
  %74 = ptrtoint ptr %sb_info to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sb_info, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %global_queues.i27 = getelementptr inbounds %struct.qedf_ctx, ptr %73, i32 0, i32 32
  %78 = ptrtoint ptr %global_queues.i27 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %global_queues.i27, align 4
  %80 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %dev_id, align 4
  %idxprom.i28 = zext i16 %81 to i32
  %arrayidx.i = getelementptr ptr, ptr %79, i32 %idxprom.i28
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !775
  %84 = ptrtoint ptr %77 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %77, align 4
  %cq_prod_idx.i29 = getelementptr inbounds %struct.global_queue, ptr %83, i32 0, i32 4
  %86 = ptrtoint ptr %cq_prod_idx.i29 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cq_prod_idx.i29, align 4
  %conv.i30 = zext i16 %85 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %conv.i30)
  %cmp.i.not = icmp eq i32 %87, %conv.i30
  br i1 %cmp.i.not, label %if.then7, label %qedf_process_completions.exit.while.cond.backedge_crit_edge

qedf_process_completions.exit.while.cond.backedge_crit_edge: ; preds = %qedf_process_completions.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge

if.then7:                                         ; preds = %qedf_process_completions.exit
  %88 = ptrtoint ptr %sb_info to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sb_info, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %prod_index.i = getelementptr inbounds %struct.status_block, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %prod_index.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %prod_index.i, align 4
  %94 = and i32 %93, -256
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #16
  %sb_ack.i31 = getelementptr inbounds %struct.qed_sb_info, ptr %89, i32 0, i32 2
  %96 = ptrtoint ptr %sb_ack.i31 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sb_ack.i31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %95)
  %cmp.not.i = icmp eq i32 %97, %95
  br i1 %cmp.not.i, label %if.then7.qed_sb_update_sb_idx.exit_crit_edge, label %if.then.i32

if.then7.qed_sb_update_sb_idx.exit_crit_edge:     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %qed_sb_update_sb_idx.exit

if.then.i32:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  %98 = ptrtoint ptr %sb_ack.i31 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %95, ptr %sb_ack.i31, align 4
  br label %qed_sb_update_sb_idx.exit

qed_sb_update_sb_idx.exit:                        ; preds = %if.then.i32, %if.then7.qed_sb_update_sb_idx.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !776
  %99 = ptrtoint ptr %qedf1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %qedf1.i, align 4
  %101 = ptrtoint ptr %sb_info to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sb_info, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %global_queues.i36 = getelementptr inbounds %struct.qedf_ctx, ptr %100, i32 0, i32 32
  %105 = ptrtoint ptr %global_queues.i36 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %global_queues.i36, align 4
  %107 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %dev_id, align 4
  %idxprom.i37 = zext i16 %108 to i32
  %arrayidx.i38 = getelementptr ptr, ptr %106, i32 %idxprom.i37
  %109 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i38, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !775
  %111 = ptrtoint ptr %104 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %104, align 4
  %cq_prod_idx.i39 = getelementptr inbounds %struct.global_queue, ptr %110, i32 0, i32 4
  %113 = ptrtoint ptr %cq_prod_idx.i39 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cq_prod_idx.i39, align 4
  %conv.i40 = zext i16 %112 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %conv.i40)
  %cmp.i41.not = icmp eq i32 %114, %conv.i40
  br i1 %cmp.i41.not, label %if.then14, label %qed_sb_update_sb_idx.exit.while.cond.backedge_crit_edge

qed_sb_update_sb_idx.exit.while.cond.backedge_crit_edge: ; preds = %qed_sb_update_sb_idx.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %qed_sb_update_sb_idx.exit.while.cond.backedge_crit_edge, %qedf_process_completions.exit.while.cond.backedge_crit_edge
  br label %while.cond

if.then14:                                        ; preds = %qed_sb_update_sb_idx.exit
  call void @__sanitizer_cov_trace_pc() #18
  %115 = ptrtoint ptr %sb_info to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sb_info, align 4
  %sb_ack.i42 = getelementptr inbounds %struct.qed_sb_info, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %sb_ack.i42 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %sb_ack.i42, align 4
  %or3.i43 = or i32 %118, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !772
  tail call void @arm_heavy_mb() #16
  %119 = tail call i32 @llvm.bswap.i32(i32 %or3.i43) #16
  %igu_addr.i44 = getelementptr inbounds %struct.qed_sb_info, ptr %116, i32 0, i32 4
  %120 = ptrtoint ptr %igu_addr.i44 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %igu_addr.i44, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #16, !srcloc !773
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !774
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.then2, %if.then
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_process_unsol_compl(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_ll2_rx(ptr noundef %cookie, ptr noundef %skb, i32 noundef %arg1, i32 noundef %arg2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %link_state = getelementptr inbounds %struct.qedf_ctx, ptr %cookie, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #16
  %0 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %cookie, ptr noundef nonnull @__func__.qedf_ll2_rx, i32 noundef 2642, i32 noundef 8, ptr noundef nonnull @.str.182) #16
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 52) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then2, label %do.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %cookie, ptr noundef nonnull @__func__.qedf_ll2_rx, i32 noundef 2650, ptr noundef nonnull @.str.183) #16
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #16
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.184, ptr noundef nonnull @qedf_ll2_rx.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry8 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry8, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @qedf_ll2_process_skb, ptr %func, align 4
  %skb10 = getelementptr inbounds %struct.qedf_skb_work, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %skb10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skb, ptr %skb10, align 4
  %qedf11 = getelementptr inbounds %struct.qedf_skb_work, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %qedf11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cookie, ptr %qedf11, align 8
  %ll2_recv_wq = getelementptr inbounds %struct.qedf_ctx, ptr %cookie, i32 0, i32 20
  %9 = ptrtoint ptr %ll2_recv_wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ll2_recv_wq, align 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then2, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_ll2_process_skb(ptr noundef %work) #0 align 64 {
entry:
  %crc_eof.i = alloca %struct.fcoe_crc_eof, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %qedf1 = getelementptr inbounds %struct.qedf_skb_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %qedf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedf1, align 4
  %skb2 = getelementptr inbounds %struct.qedf_skb_work, ptr %work, i32 0, i32 1
  %2 = ptrtoint ptr %skb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_ll2_process_skb, i32 noundef 2599, ptr noundef nonnull @.str.185) #16
  br label %err_out

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %7)
  %cmp = icmp eq i16 %7, -32512
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr5 = getelementptr i8, ptr %5, i32 4
  %8 = call ptr @memmove(ptr %add.ptr5, ptr %5, i32 12)
  %call = tail call ptr @skb_pull(ptr noundef %3, i32 noundef 4) #16
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 18
  %11 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 15, i32 0, i32 21
  %13 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %mac_header.i, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %eh.0 = phi ptr [ %call, %if.then4 ], [ %5, %if.end.if.end6_crit_edge ]
  %h_proto7 = getelementptr inbounds %struct.ethhdr, ptr %eh.0, i32 0, i32 2
  %14 = ptrtoint ptr %h_proto7 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %h_proto7, align 1
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.274)
  switch i16 %15, label %if.end6.err_out_crit_edge [
    i16 -30444, label %if.then11
    i16 -30458, label %if.then16
  ]

if.end6.err_out_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_out

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @qedf_fip_recv(ptr noundef nonnull %1, ptr noundef %3) #16
  br label %out

if.then16:                                        ; preds = %if.end6
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %18, -14
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %20)
  %cmp.i = icmp ult i32 %sub.i, %20
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !777

do.body4.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #16, !srcloc !778
  unreachable

__skb_pull.exit:                                  ; preds = %if.then16
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 14
  store ptr %add.ptr.i, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crc_eof.i) #16
  %23 = getelementptr inbounds %struct.fcoe_crc_eof, ptr %crc_eof.i, i32 0, i32 1
  %lport1.i = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %crc_eof.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 -1, ptr %crc_eof.i, align 8
  %25 = ptrtoint ptr %lport1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lport1.i, align 16
  %cmp.i34 = icmp eq ptr %26, null
  br i1 %cmp.i34, label %__skb_pull.exit.if.then.i_crit_edge, label %lor.lhs.false.i

__skb_pull.exit.if.then.i_crit_edge:              ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %__skb_pull.exit
  %state.i = getelementptr inbounds %struct.fc_lport, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp2.i = icmp eq i32 %28, 0
  br i1 %cmp2.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %__skb_pull.exit.if.then.i_crit_edge
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef null, ptr noundef nonnull @__func__.qedf_recv_frame, i32 noundef 2457, ptr noundef nonnull @.str.186) #16
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #16
  br label %qedf_recv_frame.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i, label %if.end.i.if.end5.i_crit_edge, label %skb_linearize.exit.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i

skb_linearize.exit.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %3, i32 noundef %20) #16
  br label %if.end5.i

if.end5.i:                                        ; preds = %skb_linearize.exit.i, %if.end.i.if.end5.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 18
  %29 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 15, i32 0, i32 21
  %31 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %32 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 %conv.i.i.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %call10.i = tail call ptr @skb_pull(ptr noundef %3, i32 noundef 14) #16
  %35 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len1.i, align 4
  %sub.i36 = add i32 %36, -8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %fr_seq.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 4
  %37 = ptrtoint ptr %fr_seq.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %fr_seq.i.i, align 4
  %fr_flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 20
  %38 = ptrtoint ptr %fr_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %fr_flags.i.i, align 4
  %fr_encaps.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 21
  %39 = ptrtoint ptr %fr_encaps.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %fr_encaps.i.i, align 1
  %40 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %26, ptr %cb.i.i, align 8
  %fcoe_sof.i = getelementptr inbounds %struct.fcoe_hdr, ptr %34, i32 0, i32 2
  %41 = ptrtoint ptr %fcoe_sof.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fcoe_sof.i, align 1
  %fr_sof.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 18
  %43 = ptrtoint ptr %fr_sof.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %fr_sof.i, align 2
  %call15.i = call i32 @skb_copy_bits(ptr noundef %3, i32 noundef %sub.i36, ptr noundef nonnull %crc_eof.i, i32 noundef 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i, label %if.end17.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef null, ptr noundef nonnull @__func__.qedf_recv_frame, i32 noundef 2478, i32 noundef 8, ptr noundef nonnull @.str.187) #16
  call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #16
  br label %qedf_recv_frame.exit

if.end17.i:                                       ; preds = %if.end5.i
  %44 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %23, align 4
  %fr_eof.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 19
  %46 = ptrtoint ptr %fr_eof.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %fr_eof.i, align 1
  %47 = ptrtoint ptr %crc_eof.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %crc_eof.i, align 8
  %fr_crc.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 12
  %49 = ptrtoint ptr %fr_crc.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %fr_crc.i, align 4
  %50 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %sub.i36)
  %cmp.i.i = icmp ugt i32 %51, %sub.i36
  br i1 %cmp.i.i, label %cond.true.i228.i, label %if.end17.i.if.end27.i_crit_edge

if.end17.i.if.end27.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

cond.true.i228.i:                                 ; preds = %if.end17.i
  %52 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i.i, label %__skb_trim.exit.i.i.i, label %pskb_trim.exit.i

__skb_trim.exit.i.i.i:                            ; preds = %cond.true.i228.i
  call void @__sanitizer_cov_trace_pc() #18
  %54 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub.i36, ptr %len1.i, align 4
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %56, i32 %sub.i36
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %57 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  br label %if.end27.i

pskb_trim.exit.i:                                 ; preds = %cond.true.i228.i
  %call.i.i229.i = call i32 @___pskb_trim(ptr noundef %3, i32 noundef %sub.i36) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i229.i)
  %tobool25.not.i = icmp eq i32 %call.i.i229.i, 0
  br i1 %tobool25.not.i, label %if.end27thread-pre-split.i, label %if.then26.i

if.then26.i:                                      ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef null, ptr noundef nonnull @__func__.qedf_recv_frame, i32 noundef 2485, i32 noundef 8, ptr noundef nonnull @.str.188) #16
  call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #16
  br label %qedf_recv_frame.exit

if.end27thread-pre-split.i:                       ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %58 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr.i = load i32, ptr %len1.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end27thread-pre-split.i, %__skb_trim.exit.i.i.i, %if.end17.i.if.end27.i_crit_edge
  %59 = phi i32 [ %.pr.i, %if.end27thread-pre-split.i ], [ %sub.i36, %__skb_trim.exit.i.i.i ], [ %51, %if.end17.i.if.end27.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %59)
  %cmp.i230.i = icmp ult i32 %59, 24
  br i1 %cmp.i230.i, label %do.end.i.i, label %if.end27.i.fc_frame_header_get.exit.i_crit_edge, !prof !777

if.end27.i.fc_frame_header_get.exit.i_crit_edge:  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fc_frame_header_get.exit.i

do.end.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 161, i32 noundef 9, ptr noundef null) #16
  br label %fc_frame_header_get.exit.i

fc_frame_header_get.exit.i:                       ; preds = %do.end.i.i, %if.end27.i.fc_frame_header_get.exit.i_crit_edge
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 4
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.275)
  switch i8 %63, label %fc_frame_header_get.exit.i.if.end60.i_crit_edge [
    i8 1, label %land.lhs.true.i
    i8 34, label %land.lhs.true40.i
    i8 -127, label %if.then59.i
  ]

fc_frame_header_get.exit.i.if.end60.i_crit_edge:  ; preds = %fc_frame_header_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

land.lhs.true.i:                                  ; preds = %fc_frame_header_get.exit.i
  %fh_type.i = getelementptr inbounds %struct.fc_frame_header, ptr %61, i32 0, i32 4
  %65 = ptrtoint ptr %fh_type.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %fh_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %66)
  %cmp32.i = icmp eq i8 %66, 8
  br i1 %cmp32.i, label %if.then34.i, label %land.lhs.true.i.if.end60.i_crit_edge

land.lhs.true.i.if.end60.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

if.then34.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #16
  br label %qedf_recv_frame.exit

land.lhs.true40.i:                                ; preds = %fc_frame_header_get.exit.i
  %fh_type41.i = getelementptr inbounds %struct.fc_frame_header, ptr %61, i32 0, i32 4
  %67 = ptrtoint ptr %fh_type41.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %fh_type41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp43.i = icmp eq i8 %68, 1
  br i1 %cmp43.i, label %if.then45.i, label %land.lhs.true40.i.if.end60.i_crit_edge

land.lhs.true40.i.if.end60.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

if.then45.i:                                      ; preds = %land.lhs.true40.i
  %69 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %70)
  %cmp.i.i.i = icmp ugt i32 %70, 24
  br i1 %cmp.i.i.i, label %fc_frame_payload_get.exit.i.i, label %if.then45.i.if.end60.i_crit_edge

if.then45.i.if.end60.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

fc_frame_payload_get.exit.i.i:                    ; preds = %if.then45.i
  %add.ptr.i.i231.i = getelementptr %struct.fc_frame_header, ptr %61, i32 1
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i231.i, null
  br i1 %tobool.not.i.i, label %fc_frame_payload_get.exit.i.i.if.end60.i_crit_edge, label %fc_frame_payload_op.exit.i

fc_frame_payload_get.exit.i.i.if.end60.i_crit_edge: ; preds = %fc_frame_payload_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

fc_frame_payload_op.exit.i:                       ; preds = %fc_frame_payload_get.exit.i.i
  %71 = ptrtoint ptr %add.ptr.i.i231.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %add.ptr.i.i231.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %72)
  %cond.i = icmp eq i8 %72, 5
  br i1 %cond.i, label %sw.bb.i, label %fc_frame_payload_op.exit.i.if.end60.i_crit_edge

fc_frame_payload_op.exit.i.if.end60.i_crit_edge:  ; preds = %fc_frame_payload_op.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

sw.bb.i:                                          ; preds = %fc_frame_payload_op.exit.i
  %fh_s_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %61, i32 0, i32 3
  %73 = ptrtoint ptr %fh_s_id.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %fh_s_id.i, align 1
  %conv.i.i = zext i8 %74 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %arrayidx1.i.i = getelementptr %struct.fc_frame_header, ptr %61, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %76 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr %struct.fc_frame_header, ptr %61, i32 0, i32 3, i32 2
  %77 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %78 to i32
  %or6.i.i = or i32 %or.i.i, %conv5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %or6.i.i)
  %cmp50.i = icmp eq i32 %or6.i.i, 16777214
  br i1 %cmp50.i, label %if.then52.i, label %sw.bb.i.if.end60.i_crit_edge

sw.bb.i.if.end60.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

if.then52.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #16
  br label %qedf_recv_frame.exit

if.then59.i:                                      ; preds = %fc_frame_header_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #16
  br label %qedf_recv_frame.exit

if.end60.i:                                       ; preds = %sw.bb.i.if.end60.i_crit_edge, %fc_frame_payload_op.exit.i.if.end60.i_crit_edge, %fc_frame_payload_get.exit.i.i.if.end60.i_crit_edge, %if.then45.i.if.end60.i_crit_edge, %land.lhs.true40.i.if.end60.i_crit_edge, %land.lhs.true.i.if.end60.i_crit_edge, %fc_frame_header_get.exit.i.if.end60.i_crit_edge
  %arrayidx61.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 3
  %79 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx61.i, align 1
  %conv.i232.i = zext i8 %80 to i32
  %shl.i233.i = shl nuw nsw i32 %conv.i232.i, 16
  %arrayidx1.i234.i = getelementptr i8, ptr %arrayidx61.i, i32 1
  %81 = ptrtoint ptr %arrayidx1.i234.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx1.i234.i, align 1
  %conv2.i235.i = zext i8 %82 to i32
  %shl3.i236.i = shl nuw nsw i32 %conv2.i235.i, 8
  %or.i237.i = or i32 %shl3.i236.i, %shl.i233.i
  %arrayidx4.i238.i = getelementptr i8, ptr %arrayidx61.i, i32 2
  %83 = ptrtoint ptr %arrayidx4.i238.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx4.i238.i, align 1
  %conv5.i239.i = zext i8 %84 to i32
  %or6.i240.i = or i32 %or.i237.i, %conv5.i239.i
  %fh_d_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %61, i32 0, i32 1
  %85 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %fh_d_id.i, align 1
  %conv.i241.i = zext i8 %86 to i32
  %shl.i242.i = shl nuw nsw i32 %conv.i241.i, 16
  %arrayidx1.i243.i = getelementptr %struct.fc_frame_header, ptr %61, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %arrayidx1.i243.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx1.i243.i, align 1
  %conv2.i244.i = zext i8 %88 to i32
  %shl3.i245.i = shl nuw nsw i32 %conv2.i244.i, 8
  %or.i246.i = or i32 %shl3.i245.i, %shl.i242.i
  %arrayidx4.i247.i = getelementptr %struct.fc_frame_header, ptr %61, i32 0, i32 1, i32 2
  %89 = ptrtoint ptr %arrayidx4.i247.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx4.i247.i, align 1
  %conv5.i248.i = zext i8 %90 to i32
  %or6.i249.i = or i32 %or.i246.i, %conv5.i248.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or6.i240.i, i32 %or6.i249.i)
  %cmp65.not.i = icmp eq i32 %or6.i240.i, %or6.i249.i
  br i1 %cmp65.not.i, label %if.end68.i, label %if.then67.i

if.then67.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef nonnull %1, ptr noundef nonnull @__func__.qedf_recv_frame, i32 noundef 2523, i32 noundef 8, ptr noundef nonnull @.str.189, ptr noundef %add.ptr.i.i.i) #16
  call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #16
  br label %qedf_recv_frame.exit

if.end68.i:                                       ; preds = %if.end60.i
  %ctlr.i = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 1
  %91 = ptrtoint ptr %ctlr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ctlr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool70.not.i = icmp eq i32 %92, 0
  br i1 %tobool70.not.i, label %if.end68.i.if.end81.i_crit_edge, label %if.then71.i

if.end68.i.if.end81.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81.i

if.then71.i:                                      ; preds = %if.end68.i
  %dest_addr.i = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 1, i32 27
  %93 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %h_source.i, align 4
  %95 = ptrtoint ptr %dest_addr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dest_addr.i, align 4
  %xor.i.i = xor i32 %96, %94
  %add.ptr.i.i = getelementptr i8, ptr %h_source.i, i32 4
  %97 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 1, i32 27, i32 4
  %99 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %100, %98
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i250.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i250.i)
  %cmp.i251.i = icmp eq i32 %or.i250.i, 0
  br i1 %cmp.i251.i, label %if.then71.i.if.end81.i_crit_edge, label %if.then75.i

if.then71.i.if.end81.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81.i

if.then75.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef nonnull %1, ptr noundef nonnull @__func__.qedf_recv_frame, i32 noundef 2532, i32 noundef 8, ptr noundef nonnull @.str.190, ptr noundef %h_source.i, ptr noundef %dest_addr.i) #16
  call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #16
  br label %qedf_recv_frame.exit

if.end81.i:                                       ; preds = %if.then71.i.if.end81.i_crit_edge, %if.end68.i.if.end81.i_crit_edge
  %call85.i = call ptr @fc_vport_id_lookup(ptr noundef nonnull %26, i32 noundef %or6.i240.i) #16
  %port_id.i = getelementptr inbounds %struct.fc_lport, ptr %26, i32 0, i32 18
  %101 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %port_id.i, align 8
  %103 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %fh_d_id.i, align 1
  %conv.i261.i = zext i8 %104 to i32
  %shl.i262.i = shl nuw nsw i32 %conv.i261.i, 16
  %105 = ptrtoint ptr %arrayidx1.i243.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx1.i243.i, align 1
  %conv2.i264.i = zext i8 %106 to i32
  %shl3.i265.i = shl nuw nsw i32 %conv2.i264.i, 8
  %or.i266.i = or i32 %shl3.i265.i, %shl.i262.i
  %107 = ptrtoint ptr %arrayidx4.i247.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx4.i247.i, align 1
  %conv5.i268.i = zext i8 %108 to i32
  %or6.i269.i = or i32 %or.i266.i, %conv5.i268.i
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %or6.i269.i)
  %cmp89.not.i = icmp ne i32 %102, %or6.i269.i
  %tobool92.not.i = icmp eq ptr %call85.i, null
  %or.cond.i = select i1 %cmp89.not.i, i1 %tobool92.not.i, i1 false
  br i1 %or.cond.i, label %if.then93.i, label %if.end99.i

if.then93.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef nonnull %1, ptr noundef nonnull @__func__.qedf_recv_frame, i32 noundef 2548, i32 noundef 8, ptr noundef nonnull @.str.191, i32 noundef %102, i32 noundef %or6.i269.i) #16
  call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #16
  br label %qedf_recv_frame.exit

if.end99.i:                                       ; preds = %if.end81.i
  %fh_f_ctl.i = getelementptr inbounds %struct.fc_frame_header, ptr %61, i32 0, i32 5
  %109 = ptrtoint ptr %fh_f_ctl.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %fh_f_ctl.i, align 1
  %conv.i279.i = zext i8 %110 to i32
  %fh_type102.i = getelementptr inbounds %struct.fc_frame_header, ptr %61, i32 0, i32 4
  %111 = ptrtoint ptr %fh_type102.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %fh_type102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %cmp104.i = icmp ne i8 %112, 0
  %113 = and i32 %conv.i279.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool107.not.i = icmp eq i32 %113, 0
  %or.cond221.i = select i1 %cmp104.i, i1 true, i1 %tobool107.not.i
  %114 = and i32 %conv.i279.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool110.not.i = icmp eq i32 %114, 0
  %or.cond222.i = select i1 %or.cond221.i, i1 true, i1 %tobool110.not.i
  br i1 %or.cond222.i, label %if.end113.i, label %if.then111.i

if.then111.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef nonnull %1, ptr noundef nonnull @__func__.qedf_recv_frame, i32 noundef 2558, i32 noundef 8, ptr noundef nonnull @.str.192) #16
  call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #16
  br label %qedf_recv_frame.exit

if.end113.i:                                      ; preds = %if.end99.i
  %call117.i = call fastcc ptr @qedf_fcport_lookup(ptr noundef nonnull %1, i32 noundef %or6.i269.i) #16
  %tobool118.not.i = icmp eq ptr %call117.i, null
  br i1 %tobool118.not.i, label %if.end113.i.if.end124.i_crit_edge, label %land.lhs.true119.i

if.end113.i.if.end124.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end124.i

land.lhs.true119.i:                               ; preds = %if.end113.i
  %flags.i = getelementptr inbounds %struct.qedf_rport, ptr %call117.i, i32 0, i32 1
  %115 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %flags.i, align 4
  %117 = and i32 %116, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool121.not.i = icmp eq i32 %117, 0
  br i1 %tobool121.not.i, label %land.lhs.true119.i.if.end124.i_crit_edge, label %if.then122.i

land.lhs.true119.i.if.end124.i_crit_edge:         ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end124.i

if.then122.i:                                     ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef nonnull %1, ptr noundef nonnull @__func__.qedf_recv_frame, i32 noundef 2575, i32 noundef 8, ptr noundef nonnull @.str.193, ptr noundef %3) #16
  call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #16
  br label %qedf_recv_frame.exit

if.end124.i:                                      ; preds = %land.lhs.true119.i.if.end124.i_crit_edge, %if.end113.i.if.end124.i_crit_edge
  %fh_s_id126.i = getelementptr inbounds %struct.fc_frame_header, ptr %61, i32 0, i32 3
  %118 = ptrtoint ptr %fh_s_id126.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %fh_s_id126.i, align 1
  %conv.i297.i = zext i8 %119 to i32
  %shl.i298.i = shl nuw nsw i32 %conv.i297.i, 16
  %arrayidx1.i299.i = getelementptr %struct.fc_frame_header, ptr %61, i32 0, i32 3, i32 1
  %120 = ptrtoint ptr %arrayidx1.i299.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx1.i299.i, align 1
  %conv2.i300.i = zext i8 %121 to i32
  %shl3.i301.i = shl nuw nsw i32 %conv2.i300.i, 8
  %or.i302.i = or i32 %shl3.i301.i, %shl.i298.i
  %arrayidx4.i303.i = getelementptr %struct.fc_frame_header, ptr %61, i32 0, i32 3, i32 2
  %122 = ptrtoint ptr %arrayidx4.i303.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx4.i303.i, align 1
  %conv5.i304.i = zext i8 %123 to i32
  %or6.i305.i = or i32 %or.i302.i, %conv5.i304.i
  %124 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %fh_d_id.i, align 1
  %conv.i306.i = zext i8 %125 to i32
  %shl.i307.i = shl nuw nsw i32 %conv.i306.i, 16
  %126 = ptrtoint ptr %arrayidx1.i243.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx1.i243.i, align 1
  %conv2.i309.i = zext i8 %127 to i32
  %shl3.i310.i = shl nuw nsw i32 %conv2.i309.i, 8
  %or.i311.i = or i32 %shl3.i310.i, %shl.i307.i
  %128 = ptrtoint ptr %arrayidx4.i247.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx4.i247.i, align 1
  %conv5.i313.i = zext i8 %129 to i32
  %or6.i314.i = or i32 %or.i311.i, %conv5.i313.i
  %130 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %61, align 4
  %conv133.i = zext i8 %131 to i32
  %132 = ptrtoint ptr %fh_type102.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %fh_type102.i, align 4
  %conv135.i = zext i8 %133 to i32
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef nonnull %1, ptr noundef nonnull @__func__.qedf_recv_frame, i32 noundef 2583, i32 noundef 8, ptr noundef nonnull @.str.194, ptr noundef %3, ptr noundef %3, i32 noundef %or6.i305.i, i32 noundef %or6.i314.i, i32 noundef %conv133.i, i32 noundef %conv135.i) #16
  %134 = load i32, ptr @qedf_dump_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool136.not.i = icmp eq i32 %134, 0
  br i1 %tobool136.not.i, label %if.end124.i.if.end140.i_crit_edge, label %if.then137.i

if.end124.i.if.end140.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end140.i

if.then137.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #18
  %135 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %data, align 4
  %137 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %len1.i, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.196, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %136, i32 noundef %138, i1 noundef zeroext false) #16
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.then137.i, %if.end124.i.if.end140.i_crit_edge
  call void @fc_exch_recv(ptr noundef nonnull %26, ptr noundef %3) #16
  br label %qedf_recv_frame.exit

qedf_recv_frame.exit:                             ; preds = %if.end140.i, %if.then122.i, %if.then111.i, %if.then93.i, %if.then75.i, %if.then67.i, %if.then59.i, %if.then52.i, %if.then34.i, %if.then26.i, %if.then16.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crc_eof.i) #16
  br label %out

err_out:                                          ; preds = %if.end6.err_out_crit_edge, %if.then
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #16
  br label %out

out:                                              ; preds = %err_out, %qedf_recv_frame.exit, %if.then11
  call void @kfree(ptr noundef %work) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_fip_recv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_vport_id_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qedf_fcport_lookup(ptr noundef %qedf, i32 noundef %port_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !743) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !753
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 696, ptr noundef nonnull @.str.42) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @qedf_fcport_lookup.__warned, align 1
  br i1 %.b33, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qedf_fcport_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1018, ptr noundef nonnull @.str.6) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %fcports = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 17
  %4 = ptrtoint ptr %fcports to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn55 = load volatile ptr, ptr %fcports, align 4
  %cmp.not56 = icmp eq ptr %.pn55, %fcports
  br i1 %cmp.not56, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn57 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn55, %do.end.for.body_crit_edge ]
  %rdata10 = getelementptr i8, ptr %.pn57, i32 -72
  %5 = ptrtoint ptr %rdata10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdata10, align 4
  %cmp11 = icmp eq ptr %6, null
  br i1 %cmp11, label %for.body.for.inc_crit_edge, label %if.end13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %port_id14 = getelementptr inbounds %struct.fc_rport_priv, ptr %6, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %port_id14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_id14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %port_id)
  %cmp15 = icmp eq i32 %8, %port_id
  br i1 %cmp15, label %if.then16, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then16:                                        ; preds = %if.end13
  %fcport.0.le = getelementptr i8, ptr %.pn57, i32 -132
  %call.i34 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i34, label %if.then16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i37

if.then16.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i37:                                ; preds = %if.then16
  %call1.i35 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i39

land.lhs.true.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i39:                               ; preds = %land.lhs.true.i37
  %.b4.i38 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38, label %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, label %if.then.i40

land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i40:                                      ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 724, ptr noundef nonnull @.str.43) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i40, %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, %if.then16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !754
  br label %cleanup

for.inc:                                          ; preds = %if.end13.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn57 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load volatile ptr, ptr %.pn57, align 4
  %cmp.not = icmp eq ptr %.pn, %fcports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i43, label %for.end.rcu_read_unlock.exit53_crit_edge, label %land.lhs.true.i46

for.end.rcu_read_unlock.exit53_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit53

land.lhs.true.i46:                                ; preds = %for.end
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit53_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit53_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit53

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit53_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit53_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit53

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 724, ptr noundef nonnull @.str.43) #16
  br label %rcu_read_unlock.exit53

rcu_read_unlock.exit53:                           ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit53_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit53_crit_edge, %for.end.rcu_read_unlock.exit53_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !754
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit53, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %fcport.0.le, %rcu_read_unlock.exit ], [ null, %rcu_read_unlock.exit53 ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !743) #16
  %and.i.i.i.i.i50 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i52 = add i32 %13, -1
  store volatile i32 %sub.i.i.i52, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_fip_send(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qedf_get_src_mac(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_libfc_config(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_exch_mgr_alloc(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_lport_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_set_mfs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_xmit(ptr noundef %lport, ptr noundef %fp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %1)
  %cmp.i = icmp ult i32 %1, 24
  br i1 %cmp.i, label %do.end.i, label %entry.fc_frame_header_get.exit_crit_edge, !prof !777

entry.fc_frame_header_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 161, i32 noundef 9, ptr noundef null) #16
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %entry.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %vport = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 8
  %4 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vport, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %fc_frame_header_get.exit.if.end_crit_edge, label %if.then

fc_frame_header_get.exit.if.end_crit_edge:        ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  %shost = getelementptr inbounds %struct.fc_vport, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 53
  br label %if.end

if.end:                                           ; preds = %if.then, %fc_frame_header_get.exit.if.end_crit_edge
  %base_lport.0 = phi ptr [ %hostdata.i, %if.then ], [ %lport, %fc_frame_header_get.exit.if.end_crit_edge ]
  %port_id = getelementptr inbounds %struct.fc_lport, ptr %base_lport.0, i32 0, i32 18
  %8 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_id, align 8
  %fh_d_id = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fh_d_id, align 1
  %conv.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %13 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %15 to i32
  %or6.i = or i32 %or.i, %conv5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %or6.i)
  %cmp = icmp eq i32 %9, %or6.i
  br i1 %cmp, label %if.end.if.end22_crit_edge, label %if.else7

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.else7:                                         ; preds = %if.end
  %vports = getelementptr inbounds %struct.fc_lport, ptr %base_lport.0, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.else7
  %.pn.in = phi ptr [ %vports, %if.else7 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %16 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp9.not = icmp eq ptr %.pn, %vports
  br i1 %cmp9.not, label %for.cond.if.end40_crit_edge, label %for.body

for.cond.if.end40_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

for.body:                                         ; preds = %for.cond
  %port_id10 = getelementptr i8, ptr %.pn, i32 -236
  %17 = ptrtoint ptr %port_id10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_id10, align 8
  %cmp14 = icmp eq i32 %18, %or6.i
  br i1 %cmp14, label %if.end22.loopexit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.end22.loopexit:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %tmp_lport.0.le = getelementptr i8, ptr %.pn, i32 -852
  br label %if.end22

if.end22:                                         ; preds = %if.end22.loopexit, %if.end.if.end22_crit_edge
  %vn_port.0 = phi ptr [ %base_lport.0, %if.end.if.end22_crit_edge ], [ %tmp_lport.0.le, %if.end22.loopexit ]
  %tobool23.not = icmp eq ptr %vn_port.0, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %or6.i)
  %cmp27.not = icmp eq i32 %or6.i, 16777214
  %or.cond = select i1 %tobool23.not, i1 true, i1 %cmp27.not
  br i1 %or.cond, label %if.end22.if.end40_crit_edge, label %if.then28

if.end22.if.end40_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then28:                                        ; preds = %if.end22
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_xmit, i32 noundef 1105, i32 noundef 8, ptr noundef nonnull @.str.201, i32 noundef %or6.i) #16
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #16
  %19 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fh_d_id, align 1
  %conv.i315 = zext i8 %20 to i32
  %shl.i316 = shl nuw nsw i32 %conv.i315, 16
  %21 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i318 = zext i8 %22 to i32
  %shl3.i319 = shl nuw nsw i32 %conv2.i318, 8
  %or.i320 = or i32 %shl3.i319, %shl.i316
  %23 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i322 = zext i8 %24 to i32
  %or6.i323 = or i32 %or.i320, %conv5.i322
  %call35 = tail call ptr @fc_rport_lookup(ptr noundef %lport, i32 noundef %or6.i323) #16
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.then28.cleanup173_crit_edge, label %if.then37

if.then28.cleanup173_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup173

if.then37:                                        ; preds = %if.then28
  %max_rport_retry_count = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 28
  %25 = ptrtoint ptr %max_rport_retry_count to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %max_rport_retry_count, align 1
  %conv = zext i8 %26 to i32
  %retries = getelementptr inbounds %struct.fc_rport_priv, ptr %call35, i32 0, i32 9
  %27 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %retries, align 8
  %kref = getelementptr inbounds %struct.fc_rport_priv, ptr %call35, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !767
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #16
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #16, !srcloc !768
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup173_crit_edge, label %if.then10.i.i.i.i, !prof !755

if.end5.i.i.i.i.cleanup173_crit_edge:             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup173

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #16
  br label %cleanup173

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !769
  tail call void @fc_rport_destroy(ptr noundef %kref) #16, !callees !770
  br label %cleanup173

if.end40:                                         ; preds = %if.end22.if.end40_crit_edge, %for.cond.if.end40_crit_edge
  %ctlr = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 2
  %sel_fcf = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 5
  %29 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sel_fcf, align 4
  %tobool41.not = icmp eq ptr %30, null
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #16
  br label %cleanup173

if.end43:                                         ; preds = %if.end40
  %flags = getelementptr %struct.fc_lport, ptr %lport, i32 2, i32 6, i32 6, i32 1
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool45.not = icmp eq i32 %33, 0
  br i1 %tobool45.not, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_xmit, i32 noundef 1122, ptr noundef nonnull @.str.202) #16
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #16
  br label %cleanup173

if.end48:                                         ; preds = %if.end43
  %link_state = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #16
  %34 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp50.not = icmp eq i32 %35, 1
  br i1 %cmp50.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_xmit, i32 noundef 1128, ptr noundef nonnull @.str.203) #16
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #16
  br label %cleanup173

if.end54:                                         ; preds = %if.end48
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %37)
  %cmp56 = icmp eq i8 %37, 34
  br i1 %cmp56, label %if.then61, label %if.end54.if.end67_crit_edge, !prof !777

if.end54.if.end67_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67

if.then61:                                        ; preds = %if.end54
  %call63 = tail call i32 @fcoe_ctlr_els_send(ptr noundef %ctlr, ptr noundef %lport, ptr noundef %fp) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then61.if.end67_crit_edge, label %if.then61.cleanup173_crit_edge

if.then61.cleanup173_crit_edge:                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup173

if.then61.if.end67_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67

if.end67:                                         ; preds = %if.then61.if.end67_crit_edge, %if.end54.if.end67_crit_edge
  %38 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fh_d_id, align 1
  %conv.i324 = zext i8 %39 to i32
  %shl.i325 = shl nuw nsw i32 %conv.i324, 16
  %40 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i327 = zext i8 %41 to i32
  %shl3.i328 = shl nuw nsw i32 %conv2.i327, 8
  %or.i329 = or i32 %shl3.i328, %shl.i325
  %42 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i331 = zext i8 %43 to i32
  %or6.i332 = or i32 %or.i329, %conv5.i331
  %call71 = tail call fastcc ptr @qedf_fcport_lookup(ptr noundef %add.ptr.i, i32 noundef %or6.i332)
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %if.end67.if.end82_crit_edge, label %land.lhs.true73

if.end67.if.end82_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

land.lhs.true73:                                  ; preds = %if.end67
  %flags74 = getelementptr inbounds %struct.qedf_rport, ptr %call71, i32 0, i32 1
  %44 = ptrtoint ptr %flags74 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags74, align 4
  %46 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool76.not = icmp eq i32 %46, 0
  br i1 %tobool76.not, label %land.lhs.true73.if.end82_crit_edge, label %if.then77

land.lhs.true73.if.end82_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

if.then77:                                        ; preds = %land.lhs.true73
  %47 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %48)
  %cmp.i.i = icmp ult i32 %48, 24
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then77.fc_frame_header_get.exit.i_crit_edge, !prof !777

if.then77.fc_frame_header_get.exit.i_crit_edge:   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #18
  br label %fc_frame_header_get.exit.i

do.end.i.i:                                       ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 161, i32 noundef 9, ptr noundef null) #16
  br label %fc_frame_header_get.exit.i

fc_frame_header_get.exit.i:                       ; preds = %do.end.i.i, %if.then77.fc_frame_header_get.exit.i_crit_edge
  %49 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i, align 4
  %fh_type.i = getelementptr inbounds %struct.fc_frame_header, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %fh_type.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %fh_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp.i333 = icmp eq i8 %52, 1
  br i1 %cmp.i333, label %land.lhs.true.i, label %fc_frame_header_get.exit.i.if.end82_crit_edge

fc_frame_header_get.exit.i.if.end82_crit_edge:    ; preds = %fc_frame_header_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

land.lhs.true.i:                                  ; preds = %fc_frame_header_get.exit.i
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %54)
  %cmp3.i = icmp eq i8 %54, 34
  br i1 %cmp3.i, label %if.then.i334, label %land.lhs.true.i.if.end82_crit_edge

land.lhs.true.i.if.end82_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

if.then.i334:                                     ; preds = %land.lhs.true.i
  %55 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %56)
  %cmp.i.i.i = icmp ugt i32 %56, 24
  br i1 %cmp.i.i.i, label %fc_frame_payload_get.exit.i.i, label %if.then.i334.if.end82_crit_edge

if.then.i334.if.end82_crit_edge:                  ; preds = %if.then.i334
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

fc_frame_payload_get.exit.i.i:                    ; preds = %if.then.i334
  %add.ptr.i.i.i = getelementptr %struct.fc_frame_header, ptr %50, i32 1
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i, label %fc_frame_payload_get.exit.i.i.if.end82_crit_edge, label %fc_frame_payload_op.exit.i

fc_frame_payload_get.exit.i.i.if.end82_crit_edge: ; preds = %fc_frame_payload_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

fc_frame_payload_op.exit.i:                       ; preds = %fc_frame_payload_get.exit.i.i
  %57 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 82, i8 %58)
  %cond.i = icmp eq i8 %58, 82
  br i1 %cond.i, label %qedf_xmit_l2_frame.exit, label %fc_frame_payload_op.exit.i.if.end82_crit_edge

fc_frame_payload_op.exit.i.if.end82_crit_edge:    ; preds = %fc_frame_payload_op.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

qedf_xmit_l2_frame.exit:                          ; preds = %fc_frame_payload_op.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %call7.i = tail call i32 @qedf_send_adisc(ptr noundef nonnull %call71, ptr noundef %fp) #16
  br label %cleanup173

if.end82:                                         ; preds = %fc_frame_payload_op.exit.i.if.end82_crit_edge, %fc_frame_payload_get.exit.i.i.if.end82_crit_edge, %if.then.i334.if.end82_crit_edge, %land.lhs.true.i.if.end82_crit_edge, %fc_frame_header_get.exit.i.if.end82_crit_edge, %land.lhs.true73.if.end82_crit_edge, %if.end67.if.end82_crit_edge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3
  %fr_sof = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 18
  %59 = ptrtoint ptr %fr_sof to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %fr_sof, align 2
  %fr_eof = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 19
  %61 = ptrtoint ptr %fr_eof to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %fr_eof, align 1
  %63 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len.i, align 4
  %add = add i32 %64, -4
  %div283 = lshr i32 %add, 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15
  %65 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %call87 = tail call i32 @fcoe_fc_crc(ptr noundef %fp) #16
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 7
  %66 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.i.not = icmp eq i32 %67, 0
  br i1 %tobool.i.not, label %if.else103, label %if.then89

if.then89:                                        ; preds = %if.end82
  tail call void @_raw_spin_lock(ptr noundef nonnull @qedf_global_lock) #16
  %call.i = tail call i32 @fcoe_get_paged_crc_eof(ptr noundef %fp, i32 noundef 8, ptr noundef nonnull @qedf_global) #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @qedf_global_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool91.not = icmp eq i32 %call.i, 0
  br i1 %tobool91.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #18
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 17
  %68 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %nr_frags, align 2
  %conv96 = zext i8 %71 to i32
  %sub97 = add nsw i32 %conv96, -1
  %arrayidx98 = getelementptr %struct.skb_shared_info, ptr %69, i32 0, i32 12, i32 %sub97
  %72 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx98, align 4
  %call100 = tail call fastcc ptr @kmap_atomic(ptr noundef %73)
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %69, i32 0, i32 12, i32 %sub97, i32 2
  %74 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bv_offset.i, align 4
  %add.ptr102 = getelementptr i8, ptr %call100, i32 %75
  br label %if.end105

cleanup:                                          ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #16
  br label %cleanup173

if.else103:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  %call104 = tail call ptr @skb_put(ptr noundef %fp, i32 noundef 8) #16
  br label %if.end105

if.end105:                                        ; preds = %if.else103, %cleanup.thread
  %cp.1 = phi ptr [ %call104, %if.else103 ], [ %add.ptr102, %cleanup.thread ]
  %76 = ptrtoint ptr %cp.1 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 8)
  store i64 0, ptr %cp.1, align 1
  %fcoe_eof = getelementptr inbounds %struct.fcoe_crc_eof, ptr %cp.1, i32 0, i32 1
  %77 = ptrtoint ptr %fcoe_eof to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %62, ptr %fcoe_eof, align 1
  %neg = xor i32 %call87, -1
  %78 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %79 = ptrtoint ptr %cp.1 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %78, ptr %cp.1, align 1
  %80 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.i337.not = icmp eq i32 %81, 0
  br i1 %tobool.i337.not, label %if.end105.if.end111_crit_edge, label %do.end

if.end105.if.end111_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

do.end:                                           ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kunmap_local_indexed(ptr noundef %cp.1) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !779
  %82 = tail call i32 @llvm.read_register.i32(metadata !743) #16
  %and.i.i.i1.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 213
  %86 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %87, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !780
  %88 = tail call i32 @llvm.read_register.i32(metadata !743) #16
  %and.i.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %91, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end111

if.end111:                                        ; preds = %do.end, %if.end105.if.end111_crit_edge
  %call113 = tail call ptr @skb_push(ptr noundef %fp, i32 noundef 28) #16
  %92 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 18
  %94 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %95 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i338 = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 21
  %96 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i338, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 20
  %97 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv.i338, ptr %network_header.i, align 4
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 8
  %98 = ptrtoint ptr %mac_len to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 14, ptr %mac_len, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 18
  %99 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 -30458, ptr %protocol, align 8
  %vlan_id = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 6
  %100 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %vlan_id, align 4
  %conv115 = trunc i32 %101 to i16
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 9
  %102 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 10
  %103 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv115, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 3
  %104 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %95, i32 %conv.i.i
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %105 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 -30458, ptr %h_proto, align 1
  %map_dest = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 1, i32 22
  %106 = ptrtoint ptr %map_dest to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %map_dest, align 2, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool118.not = icmp eq i8 %107, 0
  br i1 %tobool118.not, label %if.else123, label %if.then119

if.then119:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  %108 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 14, ptr %add.ptr.i.i, align 1
  %arrayidx1.i345 = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %109 = ptrtoint ptr %arrayidx1.i345 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -4, ptr %arrayidx1.i345, align 1
  %arrayidx2.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %110 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %arrayidx2.i, align 1
  %111 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %fh_d_id, align 1
  %arrayidx4.i346 = getelementptr i8, ptr %add.ptr.i.i, i32 3
  %113 = ptrtoint ptr %arrayidx4.i346 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %arrayidx4.i346, align 1
  %114 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx1.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %116 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %arrayidx6.i, align 1
  %117 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx4.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %add.ptr.i.i, i32 5
  %119 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx8.i, align 1
  br label %if.end128

if.else123:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  %dest_addr = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 1, i32 27
  %120 = ptrtoint ptr %dest_addr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dest_addr, align 4
  %122 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %add.ptr.i.i, align 4
  %add.ptr.i347 = getelementptr i8, ptr %dest_addr, i32 4
  %123 = ptrtoint ptr %add.ptr.i347 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %add.ptr.i347, align 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %125 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %add.ptr1.i, align 2
  br label %if.end128

if.end128:                                        ; preds = %if.else123, %if.then119
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %data_src_addr = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 3
  %126 = ptrtoint ptr %data_src_addr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %data_src_addr, align 4
  %128 = ptrtoint ptr %h_source to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %h_source, align 4
  %add.ptr.i348 = getelementptr i8, ptr %data_src_addr, i32 4
  %129 = ptrtoint ptr %add.ptr.i348 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %add.ptr.i348, align 2
  %add.ptr1.i349 = getelementptr i8, ptr %h_source, i32 4
  %131 = ptrtoint ptr %add.ptr1.i349 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %add.ptr1.i349, align 2
  %add.ptr131 = getelementptr %struct.ethhdr, ptr %add.ptr.i.i, i32 1
  %132 = call ptr @memset(ptr %add.ptr131, i32 0, i32 13)
  %fcoe_sof = getelementptr inbounds %struct.fcoe_hdr, ptr %add.ptr131, i32 0, i32 2
  %133 = ptrtoint ptr %fcoe_sof to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %60, ptr %fcoe_sof, align 1
  %stats136 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 16
  %134 = ptrtoint ptr %stats136 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %stats136, align 8
  %136 = ptrtoint ptr %135 to i32
  %137 = tail call i32 @llvm.read_register.i32(metadata !743) #16
  %and.i.i.i = and i32 %137, -16384
  %138 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %140, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !781
  %141 = tail call i32 @llvm.read_register.i32(metadata !743) #16
  %and.i = and i32 %141, -16384
  %142 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 3
  %143 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %cpu, align 4
  %arrayidx143 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %144
  %145 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx143, align 4
  %add144 = add i32 %146, %136
  %147 = inttoptr i32 %add144 to ptr
  %TxFrames = getelementptr inbounds %struct.fc_stats, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %TxFrames to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %TxFrames, align 8
  %inc = add i64 %149, 1
  store i64 %inc, ptr %TxFrames, align 8
  %150 = zext i32 %div283 to i64
  %TxWords = getelementptr inbounds %struct.fc_stats, ptr %147, i32 0, i32 2
  %151 = ptrtoint ptr %TxWords to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %TxWords, align 8
  %add146 = add i64 %152, %150
  store i64 %add146, ptr %TxWords, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !782
  %153 = tail call i32 @llvm.read_register.i32(metadata !743) #16
  %and.i.i.i286 = and i32 %153, -16384
  %154 = inttoptr i32 %and.i.i.i286 to ptr
  %preempt_count.i.i287 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %preempt_count.i.i287 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %preempt_count.i.i287, align 4
  %sub.i = add i32 %156, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i287, align 4
  %157 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %bf.load.i351 = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i351)
  %tobool.not.i = icmp sgt i32 %bf.load.i351, -1
  br i1 %tobool.not.i, label %if.end128.__vlan_hwaccel_get_tag.exit_crit_edge, label %if.then.i352

if.end128.__vlan_hwaccel_get_tag.exit_crit_edge:  ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vlan_hwaccel_get_tag.exit

if.then.i352:                                     ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #18
  %158 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %vlan_tci2.i, align 2
  %phi.cast = zext i16 %159 to i32
  br label %__vlan_hwaccel_get_tag.exit

__vlan_hwaccel_get_tag.exit:                      ; preds = %if.then.i352, %if.end128.__vlan_hwaccel_get_tag.exit_crit_edge
  %storemerge.i = phi i32 [ %phi.cast, %if.then.i352 ], [ 0, %if.end128.__vlan_hwaccel_get_tag.exit_crit_edge ]
  %160 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %lport, ptr %cb, align 8
  %fh_s_id = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 3
  %161 = ptrtoint ptr %fh_s_id to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %fh_s_id, align 1
  %conv.i353 = zext i8 %162 to i32
  %shl.i354 = shl nuw nsw i32 %conv.i353, 16
  %arrayidx1.i355 = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 3, i32 1
  %163 = ptrtoint ptr %arrayidx1.i355 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx1.i355, align 1
  %conv2.i356 = zext i8 %164 to i32
  %shl3.i357 = shl nuw nsw i32 %conv2.i356, 8
  %or.i358 = or i32 %shl3.i357, %shl.i354
  %arrayidx4.i359 = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 3, i32 2
  %165 = ptrtoint ptr %arrayidx4.i359 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx4.i359, align 1
  %conv5.i360 = zext i8 %166 to i32
  %or6.i361 = or i32 %or.i358, %conv5.i360
  %167 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %fh_d_id, align 1
  %conv.i362 = zext i8 %168 to i32
  %shl.i363 = shl nuw nsw i32 %conv.i362, 16
  %169 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i365 = zext i8 %170 to i32
  %shl3.i366 = shl nuw nsw i32 %conv2.i365, 8
  %or.i367 = or i32 %shl3.i366, %shl.i363
  %171 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i369 = zext i8 %172 to i32
  %or6.i370 = or i32 %or.i367, %conv5.i369
  %173 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %3, align 4
  %conv161 = zext i8 %174 to i32
  %fh_type = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 4
  %175 = ptrtoint ptr %fh_type to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %fh_type, align 4
  %conv162 = zext i8 %176 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_xmit, i32 noundef 1230, i32 noundef 8, ptr noundef nonnull @.str.204, i32 noundef %or6.i361, i32 noundef %or6.i370, i32 noundef %conv161, i32 noundef %conv162, i32 noundef %storemerge.i) #16
  %177 = load i32, ptr @qedf_dump_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool164.not = icmp eq i32 %177, 0
  br i1 %tobool164.not, label %__vlan_hwaccel_get_tag.exit.if.end167_crit_edge, label %if.then165

__vlan_hwaccel_get_tag.exit.if.end167_crit_edge:  ; preds = %__vlan_hwaccel_get_tag.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end167

if.then165:                                       ; preds = %__vlan_hwaccel_get_tag.exit
  call void @__sanitizer_cov_trace_pc() #18
  %178 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %data.i.i, align 4
  %180 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %len.i, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.196, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %179, i32 noundef %181, i1 noundef zeroext false) #16
  br label %if.end167

if.end167:                                        ; preds = %if.then165, %__vlan_hwaccel_get_tag.exit.if.end167_crit_edge
  %182 = load ptr, ptr @qed_ops, align 4
  %ll2 = getelementptr inbounds %struct.qed_fcoe_ops, ptr %182, i32 0, i32 3
  %183 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ll2, align 4
  %start_xmit = getelementptr inbounds %struct.qed_ll2_ops, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %start_xmit to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %start_xmit, align 4
  %cdev = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 8
  %187 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cdev, align 4
  %call168 = tail call i32 %186(ptr noundef %188, ptr noundef %fp, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end167.cleanup173_crit_edge, label %if.then170

if.end167.cleanup173_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup173

if.then170:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_xmit, i32 noundef 1236, ptr noundef nonnull @.str.205, i32 noundef %call168) #16
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #16
  br label %cleanup173

cleanup173:                                       ; preds = %if.then170, %if.end167.cleanup173_crit_edge, %cleanup, %qedf_xmit_l2_frame.exit, %if.then61.cleanup173_crit_edge, %if.then52, %if.then46, %if.then42, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup173_crit_edge, %if.then28.cleanup173_crit_edge
  %retval.1 = phi i32 [ 0, %if.then52 ], [ %call168, %if.then170 ], [ -12, %cleanup ], [ 0, %if.then46 ], [ 0, %if.then42 ], [ -22, %if.then28.cleanup173_crit_edge ], [ 0, %if.then61.cleanup173_crit_edge ], [ 0, %qedf_xmit_l2_frame.exit ], [ 0, %if.end167.cleanup173_crit_edge ], [ -22, %if.end5.i.i.i.i.cleanup173_crit_edge ], [ -22, %if.then10.i.i.i.i ], [ -22, %if.then.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qedf_elsct_send(ptr noundef %lport, i32 noundef %did, ptr noundef %fp, i32 noundef %op, ptr noundef %resp, ptr noundef %arg, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %resp, @fc_lport_flogi_resp
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %flogi_cnt = getelementptr %struct.fc_lport, ptr %lport, i32 120, i32 22
  %0 = ptrtoint ptr %flogi_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flogi_cnt, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %flogi_cnt, align 4
  %flogi_pending = getelementptr %struct.fc_lport, ptr %lport, i32 120, i32 24
  %2 = ptrtoint ptr %flogi_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flogi_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp ugt i32 %3, 2
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %stag_work = getelementptr %struct.fc_lport, ptr %lport, i32 6, i32 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %stag_work, i32 noundef 2) #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %inc5 = add nuw nsw i32 %3, 1
  %5 = ptrtoint ptr %flogi_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc5, ptr %flogi_pending, align 4
  %call6 = tail call ptr @fc_elsct_send(ptr noundef %lport, i32 noundef %did, ptr noundef %fp, i32 noundef %op, ptr noundef nonnull @qedf_flogi_resp, ptr noundef %arg, i32 noundef %timeout) #16
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call8 = tail call ptr @fc_elsct_send(ptr noundef %lport, i32 noundef %did, ptr noundef %fp, i32 noundef %op, ptr noundef %resp, ptr noundef %arg, i32 noundef %timeout) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end, %if.then2
  %retval.0 = phi ptr [ null, %if.then2 ], [ %call6, %if.end ], [ %call8, %if.end7 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_rport_event_handler(ptr noundef %lport, ptr noundef %rdata, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %rport1 = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 1
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 4
  %port_id2 = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %port_id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_id2, align 8
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_rport_event_handler, i32 noundef 1468, i32 noundef 4, ptr noundef nonnull @.str.207, i32 noundef %event, i32 noundef %3) #16
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.276)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %entry.sw.bb75_crit_edge
    i32 2, label %entry.sw.bb75_crit_edge231
    i32 3, label %entry.sw.bb75_crit_edge232
  ]

entry.sw.bb75_crit_edge232:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb75

entry.sw.bb75_crit_edge231:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb75

entry.sw.bb75_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb75

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_rport_event_handler, i32 noundef 1473, ptr noundef nonnull @.str.208) #16
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dd_data, align 4
  %arrayidx = getelementptr %struct.fc_rport_libfc_priv, ptr %6, i32 1
  %qedf4 = getelementptr %struct.fc_rport_libfc_priv, ptr %6, i32 4, i32 1
  %7 = ptrtoint ptr %qedf4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %qedf4, align 4
  %num_offloads = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 24, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_offloads, i32 noundef 4) #16
  %8 = ptrtoint ptr %num_offloads to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %num_offloads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %9)
  %cmp = icmp sgt i32 %9, 1023
  br i1 %cmp, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %port_id2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_id2, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_rport_event_handler, i32 noundef 1484, ptr noundef nonnull @.str.209, i32 noundef %11) #16
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %flags11 = getelementptr %struct.fc_rport_libfc_priv, ptr %6, i32 3, i32 1
  %12 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags11, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %port_id2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_id2, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_rport_event_handler, i32 noundef 1495, ptr noundef nonnull @.str.210, i32 noundef %16) #16
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %port_id19 = getelementptr inbounds %struct.fc_rport, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %port_id19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_id19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777212, i32 %18)
  %cmp20 = icmp eq i32 %18, 16777212
  br i1 %cmp20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %port_id2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_id2, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_rport_event_handler, i32 noundef 1508, ptr noundef nonnull @.str.211, i32 noundef %20) #16
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %spp_type = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 23
  %21 = ptrtoint ptr %spp_type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %spp_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %22)
  %cmp26.not = icmp eq i8 %22, 8
  br i1 %cmp26.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_rport_event_handler, i32 noundef 1514, i32 noundef 4, ptr noundef nonnull @.str.212) #16
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %roles = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %roles, align 4
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_rport_event_handler, i32 noundef 1519, i32 noundef 4, ptr noundef nonnull @.str.213) #16
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %kref = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 2
  tail call fastcc void @kref_get(ptr noundef %kref)
  %rdata36 = getelementptr %struct.fc_rport_libfc_priv, ptr %6, i32 4
  %25 = ptrtoint ptr %rdata36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rdata, ptr %rdata36, align 4
  %rport37 = getelementptr %struct.fc_rport_libfc_priv, ptr %6, i32 3, i32 4
  %26 = ptrtoint ptr %rport37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %1, ptr %rport37, align 4
  %call38 = tail call fastcc i32 @qedf_alloc_sq(ptr noundef %add.ptr.i, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @qedf_cleanup_fcport(ptr noundef %add.ptr.i, ptr noundef %arrayidx)
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  %flags42 = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 5
  %27 = ptrtoint ptr %flags42 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags42, align 8
  %29 = and i16 %28, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool45.not = icmp eq i16 %29, 0
  br i1 %tobool45.not, label %if.end41.if.else_crit_edge, label %land.lhs.true

if.end41.if.else_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %if.end41
  %30 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %roles, align 4
  %32 = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %if.then55, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %dev_type = getelementptr %struct.fc_rport_libfc_priv, ptr %6, i32 7, i32 2
  %34 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %dev_type, align 4
  %35 = ptrtoint ptr %port_id2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port_id2, align 8
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_rport_event_handler, i32 noundef 1541, i32 noundef 4, ptr noundef nonnull @.str.214, i32 noundef %36) #16
  br label %if.end60

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end41.if.else_crit_edge
  %dev_type59 = getelementptr %struct.fc_rport_libfc_priv, ptr %6, i32 7, i32 2
  %37 = ptrtoint ptr %dev_type59 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %dev_type59, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then55
  %call61 = tail call fastcc i32 @qedf_offload_connection(ptr noundef %add.ptr.i, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.body65, label %if.then63

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @qedf_cleanup_fcport(ptr noundef %add.ptr.i, ptr noundef %arrayidx)
  br label %cleanup

do.body65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #18
  %hba_lock = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 12
  %call69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hba_lock) #16
  %peers = getelementptr %struct.fc_rport_libfc_priv, ptr %6, i32 7, i32 3
  %fcports = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 24, i32 0, i32 12
  tail call fastcc void @list_add_rcu(ptr noundef %peers, ptr noundef %fcports)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hba_lock, i32 noundef %call69) #16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags11) #16
  %call.i.i224 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_offloads, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %num_offloads, i32 1, i32 3, i32 1) #16
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_offloads, ptr %num_offloads, i32 1, ptr elementtype(i32) %num_offloads) #16, !srcloc !757
  br label %cleanup

sw.bb75:                                          ; preds = %entry.sw.bb75_crit_edge, %entry.sw.bb75_crit_edge231, %entry.sw.bb75_crit_edge232
  %39 = ptrtoint ptr %port_id2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port_id2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777212, i32 %40)
  %cmp78 = icmp eq i32 %40, 16777212
  br i1 %cmp78, label %sw.bb75.cleanup_crit_edge, label %if.end81

sw.bb75.cleanup_crit_edge:                        ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end81:                                         ; preds = %sw.bb75
  %spp_type82 = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 23
  %41 = ptrtoint ptr %spp_type82 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %spp_type82, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %42)
  %cmp84.not = icmp eq i8 %42, 8
  br i1 %cmp84.not, label %if.end88, label %if.then86

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_rport_event_handler, i32 noundef 1574, i32 noundef 4, ptr noundef nonnull @.str.215) #16
  br label %cleanup

if.end88:                                         ; preds = %if.end81
  %roles90 = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 4, i32 3
  %43 = ptrtoint ptr %roles90 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %roles90, align 4
  %and91 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.then93, label %if.end95

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_rport_event_handler, i32 noundef 1579, i32 noundef 4, ptr noundef nonnull @.str.216) #16
  br label %cleanup

if.end95:                                         ; preds = %if.end88
  %tobool96.not = icmp eq ptr %1, null
  br i1 %tobool96.not, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_rport_event_handler, i32 noundef 1585, i32 noundef 4, ptr noundef nonnull @.str.217, i32 noundef %40) #16
  br label %cleanup

if.end99:                                         ; preds = %if.end95
  %dd_data100 = getelementptr inbounds %struct.fc_rport, ptr %1, i32 0, i32 11
  %45 = ptrtoint ptr %dd_data100 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dd_data100, align 4
  %arrayidx101 = getelementptr %struct.fc_rport_libfc_priv, ptr %46, i32 1
  %call110 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx101) #16
  %flags115 = getelementptr %struct.fc_rport_libfc_priv, ptr %46, i32 3, i32 1
  %47 = ptrtoint ptr %flags115 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags115, align 4
  %49 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool117.not = icmp eq i32 %49, 0
  br i1 %tobool117.not, label %if.end99.if.else143_crit_edge, label %land.lhs.true118

if.end99.if.else143_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else143

land.lhs.true118:                                 ; preds = %if.end99
  %50 = ptrtoint ptr %flags115 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %flags115, align 4
  %52 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool121.not = icmp eq i32 %52, 0
  br i1 %tobool121.not, label %if.then122, label %land.lhs.true118.if.else143_crit_edge

land.lhs.true118.if.else143_crit_edge:            ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else143

if.then122:                                       ; preds = %land.lhs.true118
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags115) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx101, i32 noundef %call110) #16
  tail call fastcc void @qedf_cleanup_fcport(ptr noundef %add.ptr.i, ptr noundef %arrayidx101)
  %hba_lock132 = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 12
  %call134 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hba_lock132) #16
  %peers139 = getelementptr %struct.fc_rport_libfc_priv, ptr %46, i32 7, i32 3
  %call.i.i230 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %peers139) #16
  br i1 %call.i.i230, label %if.end.i.i, label %if.then122.list_del_rcu.exit_crit_edge

if.then122.list_del_rcu.exit_crit_edge:           ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %46, i32 7, i32 4
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %55 = ptrtoint ptr %peers139 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %peers139, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then122.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr %struct.fc_rport_libfc_priv, ptr %46, i32 7, i32 4
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hba_lock132, i32 noundef %call134) #16
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags115) #16
  %num_offloads142 = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 24, i32 2
  %call.i.i229 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_offloads142, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %num_offloads142, i32 1, i32 3, i32 1) #16
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_offloads142, ptr %num_offloads142, i32 1, ptr elementtype(i32) %num_offloads142) #16, !srcloc !783
  br label %cleanup

if.else143:                                       ; preds = %land.lhs.true118.if.else143_crit_edge, %if.end99.if.else143_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx101, i32 noundef %call110) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else143, %list_del_rcu.exit, %if.then97, %if.then93, %if.then86, %sw.bb75.cleanup_crit_edge, %do.body65, %if.then63, %if.then40, %if.then33, %if.then28, %if.then21, %if.then14, %if.then6, %if.then, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qedf_fcp_cleanup(ptr nocapture noundef %lport) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qedf_abort_io(ptr nocapture noundef %lport) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_rport_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_ctlr_els_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_fc_crc(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kmap_atomic(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %0, 512
  %1 = tail call i32 @llvm.read_register.i32(metadata !743) #16
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !784
  %5 = tail call i32 @llvm.read_register.i32(metadata !743) #16
  %and.i.i.i1.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %inc.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !785
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or) #16
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedf_send_adisc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_get_paged_crc_eof(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_elsct_send(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_get(ptr noundef %kref) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #16, !srcloc !786
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !777

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !755

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i) #16
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedf_alloc_sq(ptr noundef %qedf, ptr noundef %fcport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sq_mem_size = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 18
  %0 = ptrtoint ptr %sq_mem_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8192, ptr %sq_mem_size, align 4
  %sq_pbl_size = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 21
  %1 = ptrtoint ptr %sq_pbl_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4104, ptr %sq_pbl_size, align 4
  %pdev = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 13
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %sq_dma = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 14
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 8192, ptr noundef %sq_dma, i32 noundef 3264, i32 noundef 0) #16
  %sq = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 13
  %4 = ptrtoint ptr %sq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %sq, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_alloc_sq, i32 noundef 1261, ptr noundef nonnull @.str.218) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %sq_pbl_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sq_pbl_size, align 4
  %sq_pbl_dma = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 20
  %call.i68 = tail call ptr @dma_alloc_attrs(ptr noundef %dev10, i32 noundef %8, ptr noundef %sq_pbl_dma, i32 noundef 3264, i32 noundef 0) #16
  %sq_pbl = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 19
  %9 = ptrtoint ptr %sq_pbl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i68, ptr %sq_pbl, align 4
  %tobool14.not = icmp eq ptr %call.i68, null
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_alloc_sq, i32 noundef 1270, ptr noundef nonnull @.str.219) #16
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %sq_mem_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sq_mem_size, align 4
  %14 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sq, align 4
  %16 = ptrtoint ptr %sq_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sq_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev30, i32 noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef 0) #16
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %18 = ptrtoint ptr %sq_mem_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sq_mem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %19)
  %tobool22.not69 = icmp ult i32 %19, 4096
  br i1 %tobool22.not69, label %if.end17.cleanup_crit_edge, label %while.body.preheader

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.preheader:                             ; preds = %if.end17
  %20 = ptrtoint ptr %sq_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sq_dma, align 4
  %div1967 = lshr i32 %19, 12
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %num_pages.072 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %div1967, %while.body.preheader ]
  %page.071 = phi i32 [ %add28, %while.body.while.body_crit_edge ], [ %21, %while.body.preheader ]
  %pbl.070 = phi ptr [ %incdec.ptr27, %while.body.while.body_crit_edge ], [ %call.i68, %while.body.preheader ]
  %dec = add nsw i32 %num_pages.072, -1
  %22 = ptrtoint ptr %pbl.070 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %page.071, ptr %pbl.070, align 4
  %incdec.ptr = getelementptr i32, ptr %pbl.070, i32 1
  %23 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %incdec.ptr, align 4
  %incdec.ptr27 = getelementptr i32, ptr %pbl.070, i32 2
  %add28 = add i32 %page.071, 4096
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then15, %if.then
  %retval.0 = phi i32 [ 1, %if.then15 ], [ 1, %if.then ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedf_cleanup_fcport(ptr noundef %qedf, ptr noundef %fcport) unnamed_addr #0 align 64 {
entry:
  %term_params_dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rdata1 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 5
  %0 = ptrtoint ptr %rdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdata1, align 4
  %port_id = getelementptr inbounds %struct.fc_rport_priv, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_id, align 8
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_cleanup_fcport, i32 noundef 1437, i32 noundef 16, ptr noundef nonnull @.str.220, i32 noundef %3) #16
  tail call void @qedf_flush_active_ios(ptr noundef %fcport, i32 noundef -1) #16
  %flags = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 1
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %term_params_dma.i) #16
  %4 = ptrtoint ptr %term_params_dma.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %term_params_dma.i, align 4, !annotation !771
  %pdev.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 13
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 10, ptr noundef nonnull %term_params_dma.i, i32 noundef 3264, i32 noundef 0) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.qedf_upload_connection.exit_crit_edge, label %if.end.i

if.then.qedf_upload_connection.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %qedf_upload_connection.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %rdata1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdata1, align 4
  %port_id.i = getelementptr inbounds %struct.fc_rport_priv, ptr %8, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_id.i, align 8
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_upload_connection, i32 noundef 1422, i32 noundef 16, ptr noundef nonnull @.str.221, i32 noundef %10) #16
  %11 = load ptr, ptr @qed_ops, align 4
  %destroy_conn.i = getelementptr inbounds %struct.qed_fcoe_ops, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %destroy_conn.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %destroy_conn.i, align 4
  %cdev.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 8
  %14 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cdev.i, align 4
  %handle.i = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 7
  %16 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle.i, align 4
  %18 = ptrtoint ptr %term_params_dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %term_params_dma.i, align 4
  %call1.i = call i32 %13(ptr noundef %15, i32 noundef %17, i32 noundef %19) #16
  %20 = load ptr, ptr @qed_ops, align 4
  %release_conn.i = getelementptr inbounds %struct.qed_fcoe_ops, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %release_conn.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %release_conn.i, align 4
  %23 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cdev.i, align 4
  %25 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %handle.i, align 4
  %call4.i = call i32 %22(ptr noundef %24, i32 noundef %26) #16
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %29 = ptrtoint ptr %term_params_dma.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %term_params_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev6.i, i32 noundef 10, ptr noundef nonnull %call.i.i, i32 noundef %30, i32 noundef 0) #16
  br label %qedf_upload_connection.exit

qedf_upload_connection.exit:                      ; preds = %if.end.i, %if.then.qedf_upload_connection.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %term_params_dma.i) #16
  br label %if.end

if.end:                                           ; preds = %qedf_upload_connection.exit, %entry.if.end_crit_edge
  %sq_pbl.i = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 19
  %31 = ptrtoint ptr %sq_pbl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sq_pbl.i, align 4
  %tobool.not.i15 = icmp eq ptr %32, null
  br i1 %tobool.not.i15, label %if.end.if.end.i18_crit_edge, label %if.then.i

if.end.if.end.i18_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i18

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %pdev.i16 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 13
  %33 = ptrtoint ptr %pdev.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev.i16, align 8
  %dev.i17 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %sq_pbl_size.i = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 21
  %35 = ptrtoint ptr %sq_pbl_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sq_pbl_size.i, align 4
  %sq_pbl_dma.i = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 20
  %37 = ptrtoint ptr %sq_pbl_dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sq_pbl_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i17, i32 noundef %36, ptr noundef nonnull %32, i32 noundef %38, i32 noundef 0) #16
  br label %if.end.i18

if.end.i18:                                       ; preds = %if.then.i, %if.end.if.end.i18_crit_edge
  %sq.i = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 13
  %39 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sq.i, align 4
  %tobool2.not.i = icmp eq ptr %40, null
  br i1 %tobool2.not.i, label %if.end.i18.qedf_free_sq.exit_crit_edge, label %if.then3.i

if.end.i18.qedf_free_sq.exit_crit_edge:           ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #18
  br label %qedf_free_sq.exit

if.then3.i:                                       ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #18
  %pdev4.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 13
  %41 = ptrtoint ptr %pdev4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev4.i, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %sq_mem_size.i = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 18
  %43 = ptrtoint ptr %sq_mem_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sq_mem_size.i, align 4
  %sq_dma.i = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 14
  %45 = ptrtoint ptr %sq_dma.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sq_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev5.i, i32 noundef %44, ptr noundef nonnull %40, i32 noundef %46, i32 noundef 0) #16
  br label %qedf_free_sq.exit

qedf_free_sq.exit:                                ; preds = %if.then3.i, %if.end.i18.qedf_free_sq.exit_crit_edge
  %47 = ptrtoint ptr %rdata1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %rdata1, align 4
  %qedf4 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 6
  %48 = ptrtoint ptr %qedf4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %qedf4, align 4
  %kref = getelementptr inbounds %struct.fc_rport_priv, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !767
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #16
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #16, !srcloc !768
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i19, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %qedf_free_sq.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !755

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #16
  br label %kref_put.exit

if.then.i19:                                      ; preds = %qedf_free_sq.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !769
  call void @fc_rport_destroy(ptr noundef %kref) #16, !callees !770
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i19, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedf_offload_connection(ptr noundef %qedf, ptr noundef %fcport) unnamed_addr #0 align 64 {
entry:
  %conn_info = alloca %struct.qed_fcoe_params_offload, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %conn_info) #16
  %0 = call ptr @memset(ptr %conn_info, i32 255, i32 44)
  %sq_mem_size = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 18
  %1 = ptrtoint ptr %sq_mem_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sq_mem_size, align 4
  %div149 = lshr i32 %2, 3
  %rdata = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 5
  %3 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdata, align 4
  %port_id1 = getelementptr inbounds %struct.fc_rport_priv, ptr %4, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %port_id1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_id1, align 8
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_offload_connection, i32 noundef 1316, i32 noundef 16, ptr noundef nonnull @.str.222, i32 noundef %6) #16
  %7 = load ptr, ptr @qed_ops, align 4
  %acquire_conn = getelementptr inbounds %struct.qed_fcoe_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %acquire_conn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acquire_conn, align 4
  %cdev = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 8
  %10 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cdev, align 4
  %handle = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 7
  %fw_cid = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 8
  %p_doorbell = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 9
  %call = tail call i32 %9(ptr noundef %11, ptr noundef %handle, ptr noundef %fw_cid, ptr noundef %p_doorbell) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %12 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdata, align 4
  %port_id9 = getelementptr inbounds %struct.fc_rport_priv, ptr %13, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %port_id9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_id9, align 8
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_offload_connection, i32 noundef 1321, ptr noundef nonnull @.str.223, i32 noundef %15) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %fw_cid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_cid, align 4
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %handle, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_offload_connection, i32 noundef 1328, i32 noundef 16, ptr noundef nonnull @.str.224, i32 noundef %15, i32 noundef %17, i32 noundef %19) #16
  %20 = getelementptr inbounds i8, ptr %conn_info, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %sq_pbl_dma = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 20
  %22 = ptrtoint ptr %sq_pbl_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sq_pbl_dma, align 4
  %24 = ptrtoint ptr %conn_info to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %conn_info, align 4
  %sq_pbl = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 19
  %25 = ptrtoint ptr %sq_pbl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sq_pbl, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %26, align 8
  %conv12 = trunc i64 %28 to i32
  %sq_curr_page_addr = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 1
  %29 = ptrtoint ptr %sq_curr_page_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv12, ptr %sq_curr_page_addr, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 8
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr, align 8
  %conv14 = trunc i64 %31 to i32
  %sq_next_page_addr = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 2
  %32 = ptrtoint ptr %sq_next_page_addr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv14, ptr %sq_next_page_addr, align 4
  %src_mac = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 3
  %data_src_addr = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 3
  %33 = ptrtoint ptr %data_src_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_src_addr, align 4
  %35 = ptrtoint ptr %src_mac to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %src_mac, align 4
  %add.ptr.i = getelementptr %struct.qedf_ctx, ptr %qedf, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 3, i32 4
  %38 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %add.ptr1.i, align 4
  %dst_mac = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 4
  %dest_addr = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 1, i32 27
  %39 = ptrtoint ptr %dest_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dest_addr, align 4
  %41 = ptrtoint ptr %dst_mac to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %dst_mac, align 4
  %add.ptr.i150 = getelementptr %struct.qedf_ctx, ptr %qedf, i32 0, i32 1, i32 27, i32 4
  %42 = ptrtoint ptr %add.ptr.i150 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i150, align 2
  %add.ptr1.i151 = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 4, i32 4
  %44 = ptrtoint ptr %add.ptr1.i151 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %add.ptr1.i151, align 2
  %45 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rdata, align 4
  %maxframe_size = getelementptr inbounds %struct.fc_rport_priv, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %maxframe_size to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %maxframe_size, align 2
  %tx_max_fc_pay_len = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 5
  %49 = ptrtoint ptr %tx_max_fc_pay_len to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %tx_max_fc_pay_len, align 4
  %lport = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 2
  %50 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lport, align 16
  %e_d_tov = getelementptr inbounds %struct.fc_lport, ptr %51, i32 0, i32 22
  %52 = ptrtoint ptr %e_d_tov to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %e_d_tov, align 4
  %conv19 = trunc i32 %53 to i16
  %e_d_tov_timer_val = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 6
  %54 = ptrtoint ptr %e_d_tov_timer_val to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv19, ptr %e_d_tov_timer_val, align 2
  %rec_tov_timer_val = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 7
  %55 = ptrtoint ptr %rec_tov_timer_val to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 3, ptr %rec_tov_timer_val, align 4
  %rx_max_fc_pay_len = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 8
  %56 = ptrtoint ptr %rx_max_fc_pay_len to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %48, ptr %rx_max_fc_pay_len, align 2
  %vlan_id = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 6
  %57 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vlan_id, align 4
  %vlan_tag = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 9
  %prio = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 7
  %59 = ptrtoint ptr %prio to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %prio, align 8
  %conv23 = zext i8 %60 to i32
  %shl24 = shl nuw nsw i32 %conv23, 13
  %or = or i32 %shl24, %58
  %conv27 = trunc i32 %or to i16
  %61 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv27, ptr %vlan_tag, align 4
  %flags = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 13
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 8, ptr %flags, align 1
  %63 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %51, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %64, i32 0, i32 51
  %65 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %shost_data, align 8
  %port_id32 = getelementptr inbounds %struct.fc_host_attrs, ptr %66, i32 0, i32 22
  %67 = ptrtoint ptr %port_id32 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port_id32, align 8
  %sid = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 22
  %69 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %sid, align 4
  %conv33 = trunc i32 %68 to i8
  %s_id = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 10
  %addr_hi = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 10, i32 2
  %70 = ptrtoint ptr %addr_hi to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv33, ptr %addr_hi, align 4
  %and34 = lshr i32 %68, 8
  %conv35 = trunc i32 %and34 to i8
  %addr_mid = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 10, i32 1
  %71 = ptrtoint ptr %addr_mid to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv35, ptr %addr_mid, align 1
  %and37 = lshr i32 %68, 16
  %conv39 = trunc i32 %and37 to i8
  %72 = ptrtoint ptr %s_id to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv39, ptr %s_id, align 2
  %max_seq = getelementptr inbounds %struct.fc_rport_priv, ptr %46, i32 0, i32 6
  %73 = ptrtoint ptr %max_seq to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %max_seq, align 2
  %conv42 = trunc i16 %74 to i8
  %max_conc_seqs_c3 = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 11
  %75 = ptrtoint ptr %max_conc_seqs_c3 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv42, ptr %max_conc_seqs_c3, align 1
  %rport = getelementptr inbounds %struct.fc_rport_priv, ptr %46, i32 0, i32 1
  %76 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rport, align 4
  %port_id44 = getelementptr inbounds %struct.fc_rport, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %port_id44 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port_id44, align 8
  %conv46 = trunc i32 %79 to i8
  %d_id = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 12
  %addr_hi47 = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 12, i32 2
  %80 = ptrtoint ptr %addr_hi47 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv46, ptr %addr_hi47, align 4
  %and48 = lshr i32 %79, 8
  %conv50 = trunc i32 %and48 to i8
  %addr_mid52 = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 12, i32 1
  %81 = ptrtoint ptr %addr_mid52 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv50, ptr %addr_mid52, align 1
  %and53 = lshr i32 %79, 16
  %conv55 = trunc i32 %and53 to i8
  %82 = ptrtoint ptr %d_id to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv55, ptr %d_id, align 2
  %def_q_idx = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 14
  %83 = ptrtoint ptr %def_q_idx to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %def_q_idx, align 2
  %dev_type = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 23
  %84 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp = icmp eq i32 %85, 1
  br i1 %cmp, label %if.then59, label %if.end.if.end77_crit_edge

if.end.if.end77_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77

if.then59:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %port_id63 = getelementptr inbounds %struct.fc_rport_priv, ptr %46, i32 0, i32 4, i32 2
  %86 = ptrtoint ptr %port_id63 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port_id63, align 8
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_offload_connection, i32 noundef 1378, i32 noundef 16, ptr noundef nonnull @.str.225, i32 noundef %87) #16
  %88 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %flags, align 1
  %90 = or i8 %89, 2
  %91 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rdata, align 4
  %sp_features = getelementptr inbounds %struct.fc_rport_priv, ptr %92, i32 0, i32 22
  %93 = ptrtoint ptr %sp_features to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %sp_features, align 4
  %.tr = trunc i16 %94 to i8
  %95 = shl i8 %.tr, 1
  %shl72 = and i8 %95, 4
  %or75 = or i8 %shl72, %90
  store i8 %or75, ptr %flags, align 1
  br label %if.end77

if.end77:                                         ; preds = %if.then59, %if.end.if.end77_crit_edge
  %96 = load ptr, ptr @qed_ops, align 4
  %offload_conn = getelementptr inbounds %struct.qed_fcoe_ops, ptr %96, i32 0, i32 8
  %97 = ptrtoint ptr %offload_conn to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %offload_conn, align 4
  %99 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cdev, align 4
  %101 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %handle, align 4
  %call80 = call i32 %98(ptr noundef %100, i32 noundef %102, ptr noundef nonnull %conn_info) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  %103 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rdata, align 4
  %port_id90 = getelementptr inbounds %struct.fc_rport_priv, ptr %104, i32 0, i32 4, i32 2
  %105 = ptrtoint ptr %port_id90 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port_id90, align 8
  br i1 %tobool81.not, label %if.else, label %if.then82

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_offload_connection, i32 noundef 1389, ptr noundef nonnull @.str.226, i32 noundef %106) #16
  %107 = load ptr, ptr @qed_ops, align 4
  %release_conn = getelementptr inbounds %struct.qed_fcoe_ops, ptr %107, i32 0, i32 7
  %108 = ptrtoint ptr %release_conn to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %release_conn, align 4
  %110 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cdev, align 4
  %112 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %handle, align 4
  %call97 = call i32 %109(ptr noundef %111, i32 noundef %113) #16
  br label %cleanup

if.else:                                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  %conv91 = and i32 %div149, 65535
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_offload_connection, i32 noundef 1394, i32 noundef 16, ptr noundef nonnull @.str.227, i32 noundef %106, i32 noundef %conv91) #16
  call void @__raw_spin_lock_init(ptr noundef %fcport, ptr noundef nonnull @.str.228, ptr noundef nonnull @qedf_offload_connection.__key, i16 noundef signext 3) #16
  %free_sqes = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 10
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes, i32 noundef 4) #16
  %114 = ptrtoint ptr %free_sqes to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 %conv91, ptr %free_sqes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then82, %if.then
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], [ %call80, %if.then82 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %conn_info) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %head, ptr noundef %1) #16
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !787
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %head, align 4
  %prev37.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %prev37.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev37.i, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_flush_active_ios(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__qedf_remove(ptr noundef %pdev, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pdev, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.__qedf_remove, i32 noundef 3710, ptr noundef nonnull @.str.241) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.__qedf_remove, i32 noundef 3721, ptr noundef nonnull @.str.242) #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp.not = icmp eq i32 %mode, 1
  br i1 %cmp.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %ctlr = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 1
  %call10 = tail call i32 @fcoe_ctlr_link_down(ptr noundef %ctlr) #16
  br label %if.end12

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #16
  %lport = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lport, align 16
  %call11 = tail call i32 @fc_fabric_logoff(ptr noundef %6) #16
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %call13 = tail call zeroext i1 @qedf_wait_for_upload(ptr noundef %1)
  br i1 %call13, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.__qedf_remove, i32 noundef 3735, ptr noundef nonnull @.str.12) #16
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  tail call void @qedf_dbg_host_exit(ptr noundef %1) #16
  %link_update = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 23
  %call18 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %link_update) #16
  %link_update_wq = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %link_update_wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %link_update_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %8) #16
  %9 = ptrtoint ptr %link_update_wq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %link_update_wq, align 4
  %timer_work_queue = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 49
  %10 = ptrtoint ptr %timer_work_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timer_work_queue, align 8
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %if.end16.if.end23_crit_edge, label %if.then21

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @destroy_workqueue(ptr noundef nonnull %11) #16
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end16.if.end23_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #16
  %12 = load ptr, ptr @qed_ops, align 4
  %ll2 = getelementptr inbounds %struct.qed_fcoe_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ll2, align 4
  %stop = getelementptr inbounds %struct.qed_ll2_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stop, align 4
  %cdev = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cdev, align 4
  %call25 = tail call i32 %16(ptr noundef %18) #16
  %ll2_recv_wq = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 20
  %19 = ptrtoint ptr %ll2_recv_wq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ll2_recv_wq, align 8
  %tobool26.not = icmp eq ptr %20, null
  br i1 %tobool26.not, label %if.end23.if.end29_crit_edge, label %if.then27

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @destroy_workqueue(ptr noundef nonnull %20) #16
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end23.if.end29_crit_edge
  tail call fastcc void @qedf_sync_free_irqs(ptr noundef %1)
  %fp_array.i = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 45
  %num_queues.i = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 31
  %21 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp15.not.i = icmp eq i8 %22, 0
  br i1 %cmp15.not.i, label %if.end29.qedf_destroy_sb.exit_crit_edge, label %for.body.lr.ph.i

if.end29.qedf_destroy_sb.exit_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %qedf_destroy_sb.exit

for.body.lr.ph.i:                                 ; preds = %if.end29
  %pdev.i.i = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %qedf_free_sb.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %id.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %qedf_free_sb.exit.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %fp_array.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fp_array.i, align 4
  %arrayidx.i = getelementptr %struct.qedf_fastpath, ptr %24, i32 %id.016.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %26)
  %cmp3.i = icmp eq i16 %26, -1
  br i1 %cmp3.i, label %for.body.i.qedf_destroy_sb.exit_crit_edge, label %if.end.i

for.body.i.qedf_destroy_sb.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qedf_destroy_sb.exit

if.end.i:                                         ; preds = %for.body.i
  %sb_info.i = getelementptr %struct.qedf_fastpath, ptr %24, i32 %id.016.i, i32 1
  %27 = ptrtoint ptr %sb_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sb_info.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.qedf_free_sb.exit.i_crit_edge, label %if.then.i.i

if.end.i.qedf_free_sb.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qedf_free_sb.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %sb_phys.i.i = getelementptr inbounds %struct.qed_sb_info, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %sb_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sb_phys.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef 32, ptr noundef nonnull %30, i32 noundef %34, i32 noundef 0) #16
  br label %qedf_free_sb.exit.i

qedf_free_sb.exit.i:                              ; preds = %if.then.i.i, %if.end.i.qedf_free_sb.exit.i_crit_edge
  %35 = ptrtoint ptr %sb_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sb_info.i, align 4
  tail call void @kfree(ptr noundef %36) #16
  %inc.i = add nuw nsw i32 %id.016.i, 1
  %37 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_queues.i, align 8
  %conv.i = zext i8 %38 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %qedf_free_sb.exit.i.for.body.i_crit_edge, label %qedf_free_sb.exit.i.qedf_destroy_sb.exit_crit_edge

qedf_free_sb.exit.i.qedf_destroy_sb.exit_crit_edge: ; preds = %qedf_free_sb.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qedf_destroy_sb.exit

qedf_free_sb.exit.i.for.body.i_crit_edge:         ; preds = %qedf_free_sb.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

qedf_destroy_sb.exit:                             ; preds = %qedf_free_sb.exit.i.qedf_destroy_sb.exit_crit_edge, %for.body.i.qedf_destroy_sb.exit_crit_edge, %if.end29.qedf_destroy_sb.exit_crit_edge
  %39 = ptrtoint ptr %fp_array.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fp_array.i, align 4
  tail call void @kfree(ptr noundef %40) #16
  br i1 %cmp.not, label %if.end43.critedge, label %if.then31

if.then31:                                        ; preds = %qedf_destroy_sb.exit
  %grcdump = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 58
  tail call void @qedf_free_grc_dump_buf(ptr noundef %grcdump) #16
  tail call void @qedf_remove_sysfs_ctx_attr(ptr noundef %1) #16
  %ctlr32 = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 1
  tail call void @fcoe_ctlr_destroy(ptr noundef %ctlr32) #16
  %lport33 = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %lport33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lport33, align 16
  %call34 = tail call i32 @fc_lport_destroy(ptr noundef %42) #16
  %43 = ptrtoint ptr %lport33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lport33, align 16
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  tail call void @fc_remove_host(ptr noundef %46) #16
  %47 = ptrtoint ptr %lport33 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lport33, align 16
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  tail call void @scsi_remove_host(ptr noundef %50) #16
  %cmd_mgr.c = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 47
  %51 = ptrtoint ptr %cmd_mgr.c to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmd_mgr.c, align 8
  tail call void @qedf_cmd_mgr_free(ptr noundef %52) #16
  %53 = ptrtoint ptr %lport33 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lport33, align 16
  tail call void @fc_exch_mgr_free(ptr noundef %54) #16
  %55 = ptrtoint ptr %lport33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lport33, align 16
  %stats.i = getelementptr inbounds %struct.fc_lport, ptr %56, i32 0, i32 16
  %57 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stats.i, align 8
  tail call void @free_percpu(ptr noundef %58) #16
  %59 = ptrtoint ptr %lport33 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lport33, align 16
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %shost_data.i = getelementptr inbounds %struct.Scsi_Host, ptr %62, i32 0, i32 51
  %63 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %shost_data.i, align 8
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_wait_for_vport_destroy, i32 noundef 2009, i32 noundef 65536, ptr noundef nonnull @.str.243) #16
  %npiv_vports_inuse.i = getelementptr inbounds %struct.fc_host_attrs, ptr %64, i32 0, i32 39
  %65 = ptrtoint ptr %npiv_vports_inuse.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %npiv_vports_inuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp.not5.i = icmp eq i16 %66, 0
  br i1 %cmp.not5.i, label %if.then31.qedf_wait_for_vport_destroy.exit_crit_edge, label %if.then31.while.body.i_crit_edge

if.then31.while.body.i_crit_edge:                 ; preds = %if.then31
  br label %while.body.i

if.then31.qedf_wait_for_vport_destroy.exit_crit_edge: ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %qedf_wait_for_vport_destroy.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then31.while.body.i_crit_edge
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_wait_for_vport_destroy, i32 noundef 2012, i32 noundef 65536, ptr noundef nonnull @.str.244) #16
  tail call void @msleep(i32 noundef 1000) #16
  %67 = ptrtoint ptr %npiv_vports_inuse.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %npiv_vports_inuse.i, align 8
  %cmp.not.i = icmp eq i16 %68, 0
  br i1 %cmp.not.i, label %while.body.i.qedf_wait_for_vport_destroy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i.qedf_wait_for_vport_destroy.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qedf_wait_for_vport_destroy.exit

qedf_wait_for_vport_destroy.exit:                 ; preds = %while.body.i.qedf_wait_for_vport_destroy.exit_crit_edge, %if.then31.qedf_wait_for_vport_destroy.exit_crit_edge
  %69 = load ptr, ptr @qed_ops, align 4
  %stop44.c141 = getelementptr inbounds %struct.qed_fcoe_ops, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %stop44.c141 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %stop44.c141, align 4
  %72 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cdev, align 4
  %call46.c142 = tail call i32 %71(ptr noundef %73) #16
  %dpc_wq = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 51
  %74 = ptrtoint ptr %dpc_wq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dpc_wq, align 16
  %tobool49.not = icmp eq ptr %75, null
  br i1 %tobool49.not, label %if.then56.critedge, label %if.then50

if.end43.critedge:                                ; preds = %qedf_destroy_sb.exit
  %cmd_mgr.c140 = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 47
  %76 = ptrtoint ptr %cmd_mgr.c140 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cmd_mgr.c140, align 8
  tail call void @qedf_cmd_mgr_free(ptr noundef %77) #16
  %78 = load ptr, ptr @qed_ops, align 4
  %stop44.c = getelementptr inbounds %struct.qed_fcoe_ops, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %stop44.c to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %stop44.c, align 4
  %81 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cdev, align 4
  %call46.c = tail call i32 %80(ptr noundef %82) #16
  %p_cpuq.i = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 33
  %83 = ptrtoint ptr %p_cpuq.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %p_cpuq.i, align 16
  %tobool.not.i = icmp eq ptr %84, null
  br i1 %tobool.not.i, label %if.end43.critedge.qedf_free_fcoe_pf_param.exit_crit_edge, label %if.then.i

if.end43.critedge.qedf_free_fcoe_pf_param.exit_crit_edge: ; preds = %if.end43.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %qedf_free_fcoe_pf_param.exit

if.then.i:                                        ; preds = %if.end43.critedge
  call void @__sanitizer_cov_trace_pc() #18
  %85 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %num_queues.i, align 8
  %conv.i145 = zext i8 %86 to i32
  %mul.i = mul nuw nsw i32 %conv.i145, 24
  %pdev.i = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 13
  %87 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 44
  %hw_p_cpuq.i = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 34
  %89 = ptrtoint ptr %hw_p_cpuq.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %hw_p_cpuq.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %mul.i, ptr noundef nonnull %84, i32 noundef %90, i32 noundef 0) #16
  br label %qedf_free_fcoe_pf_param.exit

qedf_free_fcoe_pf_param.exit:                     ; preds = %if.then.i, %if.end43.critedge.qedf_free_fcoe_pf_param.exit_crit_edge
  tail call fastcc void @qedf_free_global_queues(ptr noundef %1) #16
  %global_queues.i = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 32
  %91 = ptrtoint ptr %global_queues.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %global_queues.i, align 4
  tail call void @kfree(ptr noundef %92) #16
  br label %if.end59

if.then50:                                        ; preds = %qedf_wait_for_vport_destroy.exit
  tail call void @destroy_workqueue(ptr noundef nonnull %75) #16
  %93 = ptrtoint ptr %dpc_wq to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %dpc_wq, align 16
  %p_cpuq.i147 = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 33
  %94 = ptrtoint ptr %p_cpuq.i147 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %p_cpuq.i147, align 16
  %tobool.not.i148 = icmp eq ptr %95, null
  br i1 %tobool.not.i148, label %if.then50.if.then56_crit_edge, label %if.then50.if.then56.sink.split_crit_edge

if.then50.if.then56.sink.split_crit_edge:         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then56.sink.split

if.then50.if.then56_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then56

if.then56.critedge:                               ; preds = %qedf_wait_for_vport_destroy.exit
  %p_cpuq.i159 = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 33
  %96 = ptrtoint ptr %p_cpuq.i159 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %p_cpuq.i159, align 16
  %tobool.not.i160 = icmp eq ptr %97, null
  br i1 %tobool.not.i160, label %if.then56.critedge.if.then56_crit_edge, label %if.then56.critedge.if.then56.sink.split_crit_edge

if.then56.critedge.if.then56.sink.split_crit_edge: ; preds = %if.then56.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then56.sink.split

if.then56.critedge.if.then56_crit_edge:           ; preds = %if.then56.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then56

if.then56.sink.split:                             ; preds = %if.then56.critedge.if.then56.sink.split_crit_edge, %if.then50.if.then56.sink.split_crit_edge
  %.sink = phi ptr [ %95, %if.then50.if.then56.sink.split_crit_edge ], [ %97, %if.then56.critedge.if.then56.sink.split_crit_edge ]
  %98 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %num_queues.i, align 8
  %conv.i162 = zext i8 %99 to i32
  %mul.i163 = mul nuw nsw i32 %conv.i162, 24
  %pdev.i164 = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 13
  %100 = ptrtoint ptr %pdev.i164 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdev.i164, align 8
  %dev.i165 = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  %hw_p_cpuq.i166 = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 34
  %102 = ptrtoint ptr %hw_p_cpuq.i166 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %hw_p_cpuq.i166, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i165, i32 noundef %mul.i163, ptr noundef nonnull %.sink, i32 noundef %103, i32 noundef 0) #16
  br label %if.then56

if.then56:                                        ; preds = %if.then56.sink.split, %if.then56.critedge.if.then56_crit_edge, %if.then50.if.then56_crit_edge
  tail call fastcc void @qedf_free_global_queues(ptr noundef %1) #16
  %global_queues.i156 = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 32
  %104 = ptrtoint ptr %global_queues.i156 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %global_queues.i156, align 4
  tail call void @kfree(ptr noundef %105) #16
  %106 = load ptr, ptr @qed_ops, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %set_power_state = getelementptr inbounds %struct.qed_common_ops, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %set_power_state to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %set_power_state, align 4
  %111 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cdev, align 4
  %call58 = tail call i32 %110(ptr noundef %112, i32 noundef 0) #16
  %113 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %qedf_free_fcoe_pf_param.exit
  %114 = load ptr, ptr @qed_ops, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %update_drv_state = getelementptr inbounds %struct.qed_common_ops, ptr %116, i32 0, i32 35
  %117 = ptrtoint ptr %update_drv_state to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %update_drv_state, align 4
  %119 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cdev, align 4
  %call62 = tail call i32 %118(ptr noundef %120, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end59.if.end66_crit_edge, label %if.then64

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.__qedf_remove, i32 noundef 3808, ptr noundef nonnull @.str.108) #16
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end59.if.end66_crit_edge
  br i1 %cmp.not, label %if.end66.if.end73_crit_edge, label %land.lhs.true

if.end66.if.end73_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end73

land.lhs.true:                                    ; preds = %if.end66
  %devlink = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 22
  %121 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %devlink, align 16
  %tobool68.not = icmp eq ptr %122, null
  br i1 %tobool68.not, label %land.lhs.true.if.end73_crit_edge, label %if.then69

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end73

if.then69:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %123 = load ptr, ptr @qed_ops, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %devlink_unregister = getelementptr inbounds %struct.qed_common_ops, ptr %125, i32 0, i32 45
  %126 = ptrtoint ptr %devlink_unregister to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %devlink_unregister, align 4
  tail call void %127(ptr noundef nonnull %122) #16
  %128 = ptrtoint ptr %devlink to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %devlink, align 16
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %land.lhs.true.if.end73_crit_edge, %if.end66.if.end73_crit_edge
  %129 = load ptr, ptr @qed_ops, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %slowpath_stop = getelementptr inbounds %struct.qed_common_ops, ptr %131, i32 0, i32 7
  %132 = ptrtoint ptr %slowpath_stop to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %slowpath_stop, align 4
  %134 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cdev, align 4
  %call76 = tail call i32 %133(ptr noundef %135) #16
  %136 = load ptr, ptr @qed_ops, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %remove = getelementptr inbounds %struct.qed_common_ops, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %remove, align 4
  %141 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cdev, align 4
  tail call void %140(ptr noundef %142) #16
  %io_mempool = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 50
  %143 = ptrtoint ptr %io_mempool to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %io_mempool, align 4
  tail call void @mempool_destroy(ptr noundef %144) #16
  br i1 %cmp.not, label %if.end73.cleanup_crit_edge, label %if.then80

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then80:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #18
  %lport81 = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 2
  %145 = ptrtoint ptr %lport81 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %lport81, align 16
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 8
  tail call void @scsi_host_put(ptr noundef %148) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %if.end73.cleanup_crit_edge, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_fabric_logoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_free_grc_dump_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_remove_sysfs_ctx_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_lport_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_exch_mgr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_get_fcoe_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_attach_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qedf_get_login_failures(ptr nocapture noundef readonly %cookie) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flogi_failed = getelementptr inbounds %struct.qedf_ctx, ptr %cookie, i32 0, i32 65
  %0 = ptrtoint ptr %flogi_failed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flogi_failed, align 8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_set_rport_loss_tmo(ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qedf_get_host_port_id(ptr nocapture noundef readonly %shost) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %port_id = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 0, i32 7
  %0 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_id, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %2 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost_data, align 8
  %port_id1 = getelementptr inbounds %struct.fc_host_attrs, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %port_id1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %port_id1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_get_host_port_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_get_host_speed(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_fcoe_reset(ptr noundef %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  tail call void @qedf_ctx_soft_reset(ptr noundef %hostdata.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_vport_create(ptr noundef %vport, i1 noundef zeroext %disabled) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %shost1 = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 9
  %0 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost1, align 8
  %add.ptr.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %call3 = tail call i32 @fcoe_validate_vport_create(ptr noundef %vport) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %port_name = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 3
  %3 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %port_name, align 8
  call void @fcoe_wwn_to_str(i64 noundef %4, ptr noundef nonnull %buf, i32 noundef 32) #16
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_vport_create, i32 noundef 1834, ptr noundef nonnull @.str.259, ptr noundef nonnull %buf) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_state = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 31, i32 0, i32 0, i32 4, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #16
  %5 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_vport_create, i32 noundef 1840, ptr noundef nonnull @.str.260) #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @libfc_vport_create(ptr noundef %vport, i32 noundef 120848) #16
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_vport_create, i32 noundef 1847, ptr noundef nonnull @.str.261) #16
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %port_name14 = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 3
  %7 = ptrtoint ptr %port_name14 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %port_name14, align 8
  call void @fcoe_wwn_to_str(i64 noundef %8, ptr noundef nonnull %buf, i32 noundef 32) #16
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_vport_create, i32 noundef 1853, ptr noundef nonnull @.str.262, ptr noundef nonnull %buf) #16
  %add.ptr.i161 = getelementptr %struct.fc_lport, ptr %call9, i32 1
  %9 = call ptr @memcpy(ptr %add.ptr.i161, ptr %add.ptr.i, i32 120848)
  %lport = getelementptr %struct.fc_lport, ptr %call9, i32 1, i32 15, i32 11
  %10 = ptrtoint ptr %lport to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %lport, align 16
  %hba_lock = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i161, i32 0, i32 12
  %hba_lock19 = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 50, i32 0, i32 7, i32 1, i32 1
  %11 = call ptr @memcpy(ptr %hba_lock, ptr %hba_lock19, i32 44)
  %pdev = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 50, i32 0, i32 7, i32 3
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %pdev20 = getelementptr %struct.fc_lport, ptr %call9, i32 1, i32 20
  %14 = ptrtoint ptr %pdev20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %pdev20, align 8
  %cmd_mgr = getelementptr %struct.Scsi_Host, ptr %1, i32 3, i32 49, i32 13
  %15 = ptrtoint ptr %cmd_mgr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd_mgr, align 8
  %cmd_mgr21 = getelementptr %struct.fc_lport, ptr %call9, i32 6, i32 6, i32 10, i32 0, i32 3
  %17 = ptrtoint ptr %cmd_mgr21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %cmd_mgr21, align 8
  %flogi_compl = getelementptr %struct.fc_lport, ptr %call9, i32 1, i32 37, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %flogi_compl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flogi_compl, align 4
  %wait.i = getelementptr %struct.fc_lport, ptr %call9, i32 1, i32 37, i32 0, i32 3, i32 6
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #16
  %fcports = getelementptr %struct.fc_lport, ptr %call9, i32 1, i32 24, i32 0, i32 12
  %19 = ptrtoint ptr %fcports to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %fcports, ptr %fcports, align 4
  %prev.i = getelementptr %struct.fc_lport, ptr %call9, i32 1, i32 24, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %fcports, ptr %prev.i, align 4
  %stag_work = getelementptr %struct.fc_lport, ptr %call9, i32 6, i32 25
  call void @__init_work(ptr noundef %stag_work, i32 noundef 0) #16
  %21 = ptrtoint ptr %stag_work to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %stag_work, align 16
  %lockdep_map = getelementptr %struct.fc_lport, ptr %call9, i32 6, i32 32
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.263, ptr noundef nonnull @qedf_vport_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry29 = getelementptr %struct.fc_lport, ptr %call9, i32 6, i32 26
  %22 = ptrtoint ptr %entry29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry29, ptr %entry29, align 4
  %prev.i162 = getelementptr %struct.fc_lport, ptr %call9, i32 6, i32 27
  %23 = ptrtoint ptr %prev.i162 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry29, ptr %prev.i162, align 4
  %func = getelementptr %struct.fc_lport, ptr %call9, i32 6, i32 30
  %24 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @qedf_stag_change_work, ptr %func, align 4
  %timer = getelementptr %struct.fc_lport, ptr %call9, i32 6, i32 34, i32 0, i32 5
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.265, ptr noundef nonnull @qedf_vport_create.__key.264) #16
  %link_up.i = getelementptr inbounds %struct.fc_lport, ptr %call9, i32 0, i32 10
  %25 = ptrtoint ptr %link_up.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %link_up.i, align 4
  %qfull.i = getelementptr inbounds %struct.fc_lport, ptr %call9, i32 0, i32 11
  %26 = ptrtoint ptr %qfull.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %qfull.i, align 1
  %max_retry_count.i = getelementptr inbounds %struct.fc_lport, ptr %call9, i32 0, i32 27
  %27 = ptrtoint ptr %max_retry_count.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 3, ptr %max_retry_count.i, align 8
  %max_rport_retry_count.i = getelementptr inbounds %struct.fc_lport, ptr %call9, i32 0, i32 28
  %28 = ptrtoint ptr %max_rport_retry_count.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %max_rport_retry_count.i, align 1
  %service_params.i = getelementptr inbounds %struct.fc_lport, ptr %call9, i32 0, i32 21
  %29 = ptrtoint ptr %service_params.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 418, ptr %service_params.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %boot_time.i = getelementptr inbounds %struct.fc_lport, ptr %call9, i32 0, i32 14
  %31 = ptrtoint ptr %boot_time.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %boot_time.i, align 4
  %e_d_tov.i = getelementptr inbounds %struct.fc_lport, ptr %call9, i32 0, i32 22
  %32 = ptrtoint ptr %e_d_tov.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2000, ptr %e_d_tov.i, align 4
  %r_a_tov.i = getelementptr inbounds %struct.fc_lport, ptr %call9, i32 0, i32 23
  %33 = ptrtoint ptr %r_a_tov.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 10000, ptr %r_a_tov.i, align 8
  %does_npiv.i = getelementptr inbounds %struct.fc_lport, ptr %call9, i32 0, i32 25
  %34 = ptrtoint ptr %does_npiv.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %does_npiv.i, align 8
  %bf.set.i = or i8 %bf.load.i, 8
  store i8 %bf.set.i, ptr %does_npiv.i, align 8
  %call.i.i163 = call noalias ptr @__alloc_percpu(i32 noundef 168, i32 noundef 8) #22
  %stats.i.i = getelementptr inbounds %struct.fc_lport, ptr %call9, i32 0, i32 16
  %35 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i163, ptr %stats.i.i, align 8
  %tobool.not.i.not.i = icmp eq ptr %call.i.i163, null
  br i1 %tobool.not.i.not.i, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_vport_create, i32 noundef 1872, ptr noundef nonnull @.str.266) #16
  br label %err

if.end42:                                         ; preds = %if.end13
  %call1.i = call i32 @fc_lport_config(ptr noundef nonnull %call9) #16
  %36 = ptrtoint ptr %does_npiv.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load2.i = load i8, ptr %does_npiv.i, align 8
  %bf.clear9.i = and i8 %bf.load2.i, -113
  store i8 %bf.clear9.i, ptr %does_npiv.i, align 8
  %lro_xid.i = getelementptr inbounds %struct.fc_lport, ptr %call9, i32 0, i32 32
  %37 = ptrtoint ptr %lro_xid.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %lro_xid.i, align 8
  %lso_max.i = getelementptr inbounds %struct.fc_lport, ptr %call9, i32 0, i32 33
  %38 = ptrtoint ptr %lso_max.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %lso_max.i, align 4
  %node_name = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 2
  %39 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %node_name, align 8
  %wwnn1.i = getelementptr inbounds %struct.fc_lport, ptr %call9, i32 0, i32 20
  %41 = ptrtoint ptr %wwnn1.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %wwnn1.i, align 8
  %42 = ptrtoint ptr %port_name14 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %port_name14, align 8
  %wwpn1.i = getelementptr inbounds %struct.fc_lport, ptr %call9, i32 0, i32 19
  %44 = ptrtoint ptr %wwpn1.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %wwpn1.i, align 8
  %wwnn44 = getelementptr %struct.fc_lport, ptr %call9, i32 1, i32 21
  %45 = ptrtoint ptr %wwnn44 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %40, ptr %wwnn44, align 16
  %wwpn45 = getelementptr %struct.fc_lport, ptr %call9, i32 1, i32 23
  %46 = ptrtoint ptr %wwpn45 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %43, ptr %wwpn45, align 8
  %47 = load ptr, ptr @qedf_fc_vport_transport_template, align 4
  %48 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call9, align 8
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %transportt to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %transportt, align 4
  %51 = load ptr, ptr %call9, align 8
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %51, i32 0, i32 26
  %52 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2048, ptr %can_queue, align 4
  %53 = load i32, ptr @qedf_max_lun, align 4
  %conv = zext i32 %53 to i64
  %54 = load ptr, ptr %call9, align 8
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %54, i32 0, i32 22
  %55 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv, ptr %max_lun, align 8
  %56 = load ptr, ptr %call9, align 8
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %56, i32 0, i32 28
  %57 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 256, ptr %sg_tablesize, align 2
  %58 = load ptr, ptr %call9, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %58, i32 0, i32 24
  %59 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 16, ptr %max_cmd_len, align 4
  %60 = load ptr, ptr %call9, align 8
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %60, i32 0, i32 21
  %61 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1024, ptr %max_id, align 4
  %62 = load ptr, ptr %call9, align 8
  %dev = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 14
  %call.i = call i32 @scsi_add_host_with_dma(ptr noundef %62, ptr noundef %dev, ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool53.not = icmp eq i32 %call.i, 0
  br i1 %tobool53.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_vport_create, i32 noundef 1891, ptr noundef nonnull @.str.92, i32 noundef %call.i) #16
  br label %err

if.end56:                                         ; preds = %if.end42
  %63 = load i32, ptr @qedf_dev_loss_tmo, align 4
  %64 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call9, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %65, i32 0, i32 51
  %66 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %shost_data, align 8
  %dev_loss_tmo = getelementptr inbounds %struct.fc_host_attrs, ptr %67, i32 0, i32 30
  %68 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %63, ptr %dev_loss_tmo, align 8
  %tt = getelementptr inbounds %struct.fc_lport, ptr %call9, i32 0, i32 9
  %69 = call ptr @memcpy(ptr %tt, ptr @qedf_lport_template, i32 64)
  %call58 = call i32 @fc_exch_init(ptr noundef nonnull %call9) #16
  %call59 = call i32 @fc_elsct_init(ptr noundef nonnull %call9) #16
  %call60 = call i32 @fc_lport_init(ptr noundef nonnull %call9) #16
  call void @fc_disc_init(ptr noundef nonnull %call9) #16
  call void @fc_disc_config(ptr noundef nonnull %call9, ptr noundef nonnull %call9) #16
  %70 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %shost1, align 8
  %hostdata.i164 = getelementptr inbounds %struct.Scsi_Host, ptr %71, i32 0, i32 53
  %call63 = call i32 @fc_exch_mgr_list_clone(ptr noundef %hostdata.i164, ptr noundef nonnull %call9) #16
  %call64 = call i32 @fc_set_mfs(ptr noundef nonnull %call9, i32 noundef 2072) #16
  %72 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call9, align 8
  %shost_data66 = getelementptr inbounds %struct.Scsi_Host, ptr %73, i32 0, i32 51
  %74 = ptrtoint ptr %shost_data66 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %shost_data66, align 8
  %port_type = getelementptr inbounds %struct.fc_host_attrs, ptr %75, i32 0, i32 23
  %76 = ptrtoint ptr %port_type to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %port_type, align 4
  br i1 %disabled, label %if.then68, label %if.else

if.then68:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  %77 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vport, align 8
  %vport_last_state.i = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 1
  %79 = ptrtoint ptr %vport_last_state.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %vport_last_state.i, align 4
  store i32 2, ptr %vport, align 8
  br label %if.end70

if.else:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %81 = ptrtoint ptr %boot_time.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %boot_time.i, align 4
  %call69 = call i32 @fc_fabric_login(ptr noundef nonnull %call9) #16
  call void @fc_vport_setlink(ptr noundef nonnull %call9) #16
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.then68
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr.i, ptr noundef nonnull @__func__.qedf_vport_create, i32 noundef 1927, i32 noundef 65536, ptr noundef nonnull @.str.267, ptr noundef nonnull %call9) #16
  %82 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call9, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %83, i32 0, i32 17
  %84 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %host_no, align 4
  %86 = ptrtoint ptr %add.ptr.i161 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %add.ptr.i161, align 16
  %87 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev, align 8
  %pdev77 = getelementptr %struct.fc_lport, ptr %call9, i32 1, i32 1
  %89 = ptrtoint ptr %pdev77 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %pdev77, align 4
  br label %cleanup

err:                                              ; preds = %if.then54, %if.then40
  %rc.0 = phi i32 [ -12, %if.then40 ], [ %call.i, %if.then54 ]
  %90 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call9, align 8
  call void @scsi_host_put(ptr noundef %91) #16
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end70, %if.then11, %if.then6, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ -5, %if.then6 ], [ %rc.0, %err ], [ 0, %if.end70 ], [ -12, %if.then11 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_vport_disable(ptr nocapture noundef %vport, i1 noundef zeroext %disable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 8
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  br i1 %disable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vport, align 8
  %vport_last_state.i = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 1
  %4 = ptrtoint ptr %vport_last_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %vport_last_state.i, align 4
  store i32 2, ptr %vport, align 8
  %call = tail call i32 @fc_fabric_logoff(ptr noundef %1) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %boot_time = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %boot_time to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %boot_time, align 4
  %call1 = tail call i32 @fc_fabric_login(ptr noundef %1) #16
  tail call void @fc_vport_setlink(ptr noundef %1) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_vport_destroy(ptr nocapture noundef readonly %vport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 8
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %1, i32 1
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_vport_destroy, i32 noundef 1948, ptr noundef nonnull @.str.36) #16
  br label %out

if.end:                                           ; preds = %entry
  %shost1 = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 9
  %2 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost1, align 8
  %flags = getelementptr %struct.fc_lport, ptr %1, i32 2, i32 6, i32 6, i32 1
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #16
  %lp_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 9, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #16
  %list = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 36
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 36, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 36, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #16
  %call4 = tail call i32 @fc_fabric_logoff(ptr noundef %1) #16
  %call5 = tail call i32 @fc_lport_destroy(ptr noundef %1) #16
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  tail call void @fc_remove_host(ptr noundef %13) #16
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void @scsi_remove_host(ptr noundef %15) #16
  %state = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %17)
  %cmp = icmp eq i32 %17, 14
  br i1 %cmp, label %if.then7, label %list_del.exit.if.end8_crit_edge

list_del.exit.if.end8_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @fc_exch_mgr_free(ptr noundef %1) #16
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %list_del.exit.if.end8_crit_edge
  %stats.i = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stats.i, align 8
  tail call void @free_percpu(ptr noundef %19) #16
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  tail call void @scsi_host_put(ptr noundef %21) #16
  br label %out

out:                                              ; preds = %if.end8, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_lport_bsg_request(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_validate_vport_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_wwn_to_str(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @libfc_vport_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_exch_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_elsct_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_lport_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_disc_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_exch_mgr_list_clone(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_vport_setlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 288)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 288)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !49, !50, !52, !54, !55, !57, !59, !60, !62, !64, !65, !67, !69, !70, !72, !74, !75, !77, !79, !80, !82, !83, !85, !87, !89, !90, !92, !93, !94, !96, !98, !100, !101, !102, !103, !104, !105, !107, !109, !111, !113, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !141, !142, !144, !146, !147, !149, !151, !152, !153, !154, !155, !157, !158, !160, !161, !163, !165, !167, !168, !169, !170, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !200, !202, !203, !204, !206, !207, !209, !210, !212, !213, !214, !215, !216, !218, !219, !220, !221, !222, !223, !225, !226, !228, !230, !231, !233, !235, !237, !238, !240, !241, !243, !244, !245, !247, !248, !250, !251, !253, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !271, !273, !275, !277, !279, !281, !282, !283, !284, !286, !287, !288, !289, !291, !292, !293, !294, !296, !297, !298, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !356, !357, !358, !360, !362, !364, !365, !367, !369, !371, !373, !375, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !401, !403, !404, !406, !407, !409, !410, !412, !414, !416, !418, !419, !421, !423, !425, !427, !428, !430, !432, !434, !436, !438, !439, !441, !443, !445, !447, !449, !450, !452, !454, !456, !458, !460, !462, !464, !466, !467, !469, !471, !473, !475, !477, !478, !480, !482, !484, !486, !488, !490, !491, !493, !494, !496, !498, !500, !502, !504, !506, !507, !509, !511, !513, !514, !516, !518, !519, !521, !523, !524, !526, !528, !529, !531, !533, !534, !536, !538, !539, !541, !542, !544, !546, !547, !549, !551, !552, !554, !555, !557, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !585, !587, !589, !591, !593, !594, !596, !598, !600, !602, !604, !605, !607, !609, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !633, !635, !637, !638, !640, !641, !643, !644, !646, !648, !650, !652, !654, !656, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !680, !682, !684, !685, !687, !689, !690, !692, !694, !695, !697, !698, !700, !701, !703, !705, !707, !709, !711, !713, !715, !717, !719, !721, !723, !724, !726, !728, !730, !732, !733, !734, !735, !737, !739, !741}
!llvm.named.register.sp = !{!743}
!llvm.module.flags = !{!744, !745, !746, !747, !748, !749, !750, !751}
!llvm.ident = !{!752}

!0 = !{ptr @__param_dev_loss_tmo, !1, !"__param_dev_loss_tmo", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_dev_loss_tmotype391, !1, !"__UNIQUE_ID_dev_loss_tmotype391", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dev_loss_tmo392, !4, !"__UNIQUE_ID_dev_loss_tmo392", i1 false, i1 false}
!4 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 40, i32 1}
!5 = !{ptr @qedf_debug, !6, !"qedf_debug", i1 false, i1 false}
!6 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 43, i32 6}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 44, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype393, !8, !"__UNIQUE_ID_debugtype393", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug394, !11, !"__UNIQUE_ID_debug394", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 45, i32 1}
!12 = !{ptr @__param_fipvlan_retries, !13, !"__param_fipvlan_retries", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 49, i32 1}
!14 = !{ptr @__UNIQUE_ID_fipvlan_retriestype395, !13, !"__UNIQUE_ID_fipvlan_retriestype395", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_fipvlan_retries396, !16, !"__UNIQUE_ID_fipvlan_retries396", i1 false, i1 false}
!16 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 50, i32 1}
!17 = !{ptr @__param_fallback_vlan, !18, !"__param_fallback_vlan", i1 false, i1 false}
!18 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 54, i32 1}
!19 = !{ptr @__UNIQUE_ID_fallback_vlantype397, !18, !"__UNIQUE_ID_fallback_vlantype397", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_fallback_vlan398, !21, !"__UNIQUE_ID_fallback_vlan398", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 55, i32 1}
!22 = !{ptr @__param_default_prio, !23, !"__param_default_prio", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 59, i32 1}
!24 = !{ptr @__UNIQUE_ID_default_priotype399, !23, !"__UNIQUE_ID_default_priotype399", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_default_prio400, !26, !"__UNIQUE_ID_default_prio400", i1 false, i1 false}
!26 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 60, i32 1}
!27 = !{ptr @__param_dump_frames, !28, !"__param_dump_frames", i1 false, i1 false}
!28 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 64, i32 1}
!29 = !{ptr @__UNIQUE_ID_dump_framestype401, !28, !"__UNIQUE_ID_dump_framestype401", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_dump_frames402, !31, !"__UNIQUE_ID_dump_frames402", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 65, i32 1}
!32 = !{ptr @__param_queue_depth, !33, !"__param_queue_depth", i1 false, i1 false}
!33 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 69, i32 1}
!34 = !{ptr @__UNIQUE_ID_queue_depthtype403, !33, !"__UNIQUE_ID_queue_depthtype403", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_queue_depth404, !36, !"__UNIQUE_ID_queue_depth404", i1 false, i1 false}
!36 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 70, i32 1}
!37 = !{ptr @__param_io_tracing, !38, !"__param_io_tracing", i1 false, i1 false}
!38 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 74, i32 1}
!39 = !{ptr @__UNIQUE_ID_io_tracingtype405, !38, !"__UNIQUE_ID_io_tracingtype405", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_io_tracing406, !41, !"__UNIQUE_ID_io_tracing406", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 75, i32 1}
!42 = !{ptr @__param_max_lun, !43, !"__param_max_lun", i1 false, i1 false}
!43 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 79, i32 1}
!44 = !{ptr @__UNIQUE_ID_max_luntype407, !43, !"__UNIQUE_ID_max_luntype407", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_max_lun408, !46, !"__UNIQUE_ID_max_lun408", i1 false, i1 false}
!46 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 80, i32 1}
!47 = !{ptr @__param_link_down_tmo, !48, !"__param_link_down_tmo", i1 false, i1 false}
!48 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 84, i32 1}
!49 = !{ptr @__UNIQUE_ID_link_down_tmotype409, !48, !"__UNIQUE_ID_link_down_tmotype409", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_link_down_tmo410, !51, !"__UNIQUE_ID_link_down_tmo410", i1 false, i1 false}
!51 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 85, i32 1}
!52 = !{ptr @__param_retry_delay, !53, !"__param_retry_delay", i1 false, i1 false}
!53 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 89, i32 1}
!54 = !{ptr @__UNIQUE_ID_retry_delaytype411, !53, !"__UNIQUE_ID_retry_delaytype411", i1 false, i1 false}
!55 = !{ptr @__UNIQUE_ID_retry_delay412, !56, !"__UNIQUE_ID_retry_delay412", i1 false, i1 false}
!56 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 90, i32 1}
!57 = !{ptr @__param_dcbx_no_wait, !58, !"__param_dcbx_no_wait", i1 false, i1 false}
!58 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 94, i32 1}
!59 = !{ptr @__UNIQUE_ID_dcbx_no_waittype413, !58, !"__UNIQUE_ID_dcbx_no_waittype413", i1 false, i1 false}
!60 = !{ptr @__UNIQUE_ID_dcbx_no_wait414, !61, !"__UNIQUE_ID_dcbx_no_wait414", i1 false, i1 false}
!61 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 95, i32 1}
!62 = !{ptr @__param_dp_module, !63, !"__param_dp_module", i1 false, i1 false}
!63 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 99, i32 1}
!64 = !{ptr @__UNIQUE_ID_dp_moduletype415, !63, !"__UNIQUE_ID_dp_moduletype415", i1 false, i1 false}
!65 = !{ptr @__UNIQUE_ID_dp_module416, !66, !"__UNIQUE_ID_dp_module416", i1 false, i1 false}
!66 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 100, i32 1}
!67 = !{ptr @__param_dp_level, !68, !"__param_dp_level", i1 false, i1 false}
!68 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 104, i32 1}
!69 = !{ptr @__UNIQUE_ID_dp_leveltype417, !68, !"__UNIQUE_ID_dp_leveltype417", i1 false, i1 false}
!70 = !{ptr @__UNIQUE_ID_dp_level418, !71, !"__UNIQUE_ID_dp_level418", i1 false, i1 false}
!71 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 105, i32 1}
!72 = !{ptr @__param_enable_recovery, !73, !"__param_enable_recovery", i1 false, i1 false}
!73 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 109, i32 1}
!74 = !{ptr @__UNIQUE_ID_enable_recoverytype419, !73, !"__UNIQUE_ID_enable_recoverytype419", i1 false, i1 false}
!75 = !{ptr @__UNIQUE_ID_enable_recovery420, !76, !"__UNIQUE_ID_enable_recovery420", i1 false, i1 false}
!76 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 111, i32 1}
!77 = !{ptr @__func__.qedf_set_vlan_id, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 127, i32 2}
!79 = !{ptr @.str, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @__func__.qedf_send_flogi, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 340, i32 3}
!82 = !{ptr @.str.1, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.2, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 346, i32 3}
!85 = !{ptr @.str.3, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 350, i32 2}
!87 = !{ptr @__func__.qedf_wait_for_upload, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 881, i32 4}
!89 = !{ptr @.str.4, !88, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 890, i32 2}
!92 = !{ptr @.str.5, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.6, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.7, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 894, i32 5}
!96 = !{ptr @.str.8, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 898, i32 5}
!98 = !{ptr @.str.9, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 914, i32 3}
!100 = !{ptr @qedf_ctx_soft_reset._rs, !99, !"_rs", i1 false, i1 false}
!101 = !{ptr @__func__.qedf_ctx_soft_reset, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.10, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @qedf_ctx_soft_reset._entry, !99, !"_entry", i1 false, i1 false}
!104 = !{ptr @qedf_ctx_soft_reset._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.11, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 923, i32 2}
!107 = !{ptr @.str.12, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 929, i32 3}
!109 = !{ptr @.str.13, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 937, i32 3}
!111 = !{ptr @.str.14, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 947, i32 2}
!113 = !{ptr @__func__.qedf_process_cqe, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2799, i32 3}
!115 = !{ptr @.str.15, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.16, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2807, i32 3}
!118 = !{ptr @.str.17, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2818, i32 3}
!120 = !{ptr @.str.18, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2844, i32 3}
!122 = !{ptr @.str.19, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2850, i32 3}
!124 = !{ptr @.str.20, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2856, i32 3}
!126 = !{ptr @.str.21, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2862, i32 3}
!128 = !{ptr @.str.22, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2867, i32 3}
!130 = !{ptr @.str.23, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2872, i32 3}
!132 = !{ptr @.str.24, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2878, i32 3}
!134 = !{ptr @.str.25, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2882, i32 3}
!136 = !{ptr @__func__.qedf_wq_grcdump, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3839, i32 2}
!138 = !{ptr @.str.26, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @__func__.qedf_schedule_hw_err_handler, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3847, i32 2}
!141 = !{ptr @.str.27, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.28, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3852, i32 3}
!144 = !{ptr @__func__.qedf_get_protocol_tlv_data, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3895, i32 3}
!146 = !{ptr @.str.29, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.30, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3900, i32 3}
!149 = !{ptr @qedf_stag_change_work._rs, !150, !"_rs", i1 false, i1 false}
!150 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3984, i32 2}
!151 = !{ptr @__func__.qedf_stag_change_work, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.31, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @qedf_stag_change_work._entry, !150, !"_entry", i1 false, i1 false}
!154 = !{ptr @qedf_stag_change_work._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @__func__.qedf_get_generic_tlv_data, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4040, i32 3}
!157 = !{ptr @.str.32, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @__UNIQUE_ID_file430, !159, !"__UNIQUE_ID_file430", i1 false, i1 false}
!159 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4159, i32 1}
!160 = !{ptr @__UNIQUE_ID_license431, !159, !"__UNIQUE_ID_license431", i1 false, i1 false}
!161 = !{ptr @__UNIQUE_ID_description432, !162, !"__UNIQUE_ID_description432", i1 false, i1 false}
!162 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4160, i32 1}
!163 = !{ptr @__UNIQUE_ID_author433, !164, !"__UNIQUE_ID_author433", i1 false, i1 false}
!164 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4161, i32 1}
!165 = !{ptr @__UNIQUE_ID_version434, !166, !"__UNIQUE_ID_version434", i1 false, i1 false}
!166 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4162, i32 1}
!167 = !{ptr @.str.33, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.34, !166, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.35, !166, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @__modver_attr, !166, !"__modver_attr", i1 false, i1 false}
!171 = !{ptr @__initcall__kmod_qedf__435_4163_qedf_init6, !172, !"__initcall__kmod_qedf__435_4163_qedf_init6", i1 false, i1 false}
!172 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4163, i32 1}
!173 = !{ptr @__exitcall_qedf_cleanup, !174, !"__exitcall_qedf_cleanup", i1 false, i1 false}
!174 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4164, i32 1}
!175 = !{ptr @qed_ops, !176, !"qed_ops", i1 false, i1 false}
!176 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 27, i32 28}
!177 = !{ptr @qedf_dump_frames, !178, !"qedf_dump_frames", i1 false, i1 false}
!178 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 63, i32 6}
!179 = !{ptr @qedf_queue_depth, !180, !"qedf_queue_depth", i1 false, i1 false}
!180 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 68, i32 13}
!181 = !{ptr @qedf_io_tracing, !182, !"qedf_io_tracing", i1 false, i1 false}
!182 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 73, i32 6}
!183 = !{ptr @qedf_link_down_tmo, !184, !"qedf_link_down_tmo", i1 false, i1 false}
!184 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 83, i32 6}
!185 = !{ptr @qedf_retry_delay, !186, !"qedf_retry_delay", i1 false, i1 false}
!186 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 88, i32 6}
!187 = !{ptr @qedf_dcbx_no_wait, !188, !"qedf_dcbx_no_wait", i1 false, i1 false}
!188 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 93, i32 13}
!189 = !{ptr @qedf_dp_module, !190, !"qedf_dp_module", i1 false, i1 false}
!190 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 98, i32 13}
!191 = !{ptr @qedf_io_wq, !192, !"qedf_io_wq", i1 false, i1 false}
!192 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 114, i32 26}
!193 = !{ptr @qedf_io_work_cache, !194, !"qedf_io_work_cache", i1 false, i1 false}
!194 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 119, i32 27}
!195 = !{ptr @qedf_fc_transport_template, !196, !"qedf_fc_transport_template", i1 false, i1 false}
!196 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 709, i32 40}
!197 = !{ptr @qedf_fc_vport_transport_template, !198, !"qedf_fc_vport_transport_template", i1 false, i1 false}
!198 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 710, i32 40}
!199 = !{ptr @__param_str_dev_loss_tmo, !1, !"__param_str_dev_loss_tmo", i1 false, i1 false}
!200 = !{ptr @qedf_dev_loss_tmo, !201, !"qedf_dev_loss_tmo", i1 false, i1 false}
!201 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 38, i32 21}
!202 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!203 = !{ptr @__param_str_fipvlan_retries, !13, !"__param_str_fipvlan_retries", i1 false, i1 false}
!204 = !{ptr @qedf_fipvlan_retries, !205, !"qedf_fipvlan_retries", i1 false, i1 false}
!205 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 48, i32 13}
!206 = !{ptr @__param_str_fallback_vlan, !18, !"__param_str_fallback_vlan", i1 false, i1 false}
!207 = !{ptr @qedf_fallback_vlan, !208, !"qedf_fallback_vlan", i1 false, i1 false}
!208 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 53, i32 13}
!209 = !{ptr @__param_str_default_prio, !23, !"__param_str_default_prio", i1 false, i1 false}
!210 = !{ptr @qedf_default_prio, !211, !"qedf_default_prio", i1 false, i1 false}
!211 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 58, i32 12}
!212 = !{ptr @__param_str_dump_frames, !28, !"__param_str_dump_frames", i1 false, i1 false}
!213 = !{ptr @__param_str_queue_depth, !33, !"__param_str_queue_depth", i1 false, i1 false}
!214 = !{ptr @__param_str_io_tracing, !38, !"__param_str_io_tracing", i1 false, i1 false}
!215 = !{ptr @__param_str_max_lun, !43, !"__param_str_max_lun", i1 false, i1 false}
!216 = !{ptr @qedf_max_lun, !217, !"qedf_max_lun", i1 false, i1 false}
!217 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 78, i32 13}
!218 = !{ptr @__param_str_link_down_tmo, !48, !"__param_str_link_down_tmo", i1 false, i1 false}
!219 = !{ptr @__param_str_retry_delay, !53, !"__param_str_retry_delay", i1 false, i1 false}
!220 = !{ptr @__param_str_dcbx_no_wait, !58, !"__param_str_dcbx_no_wait", i1 false, i1 false}
!221 = !{ptr @__param_str_dp_module, !63, !"__param_str_dp_module", i1 false, i1 false}
!222 = !{ptr @__param_str_dp_level, !68, !"__param_str_dp_level", i1 false, i1 false}
!223 = !{ptr @qedf_dp_level, !224, !"qedf_dp_level", i1 false, i1 false}
!224 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 103, i32 13}
!225 = !{ptr @__param_str_enable_recovery, !73, !"__param_str_enable_recovery", i1 false, i1 false}
!226 = !{ptr @qedf_enable_recovery, !227, !"qedf_enable_recovery", i1 false, i1 false}
!227 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 108, i32 13}
!228 = !{ptr @__func__.qedf_flogi_resp, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 274, i32 3}
!230 = !{ptr @.str.36, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.37, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 283, i32 3}
!233 = !{ptr @.str.38, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../include/scsi/fc_frame.h", i32 161, i32 2}
!235 = !{ptr @__func__.qedf_set_data_src_addr, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 262, i32 2}
!237 = !{ptr @.str.39, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @init_completion.__key, !239, !"__key", i1 false, i1 false}
!239 = !{!"../include/linux/completion.h", i32 87, i32 2}
!240 = !{ptr @.str.40, !239, !"<string literal>", i1 false, i1 false}
!241 = distinct !{null, !242, !"__warned", i1 false, i1 false}
!242 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!243 = !{ptr @.str.41, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.42, !242, !"<string literal>", i1 false, i1 false}
!245 = distinct !{null, !246, !"__warned", i1 false, i1 false}
!246 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!247 = !{ptr @.str.43, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @__func__.qedf_fc_get_host_stats, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2055, i32 3}
!250 = !{ptr @.str.44, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @qedf_pci_driver, !252, !"qedf_pci_driver", i1 false, i1 false}
!252 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3255, i32 26}
!253 = !{ptr @qedf_pci_tbl, !254, !"qedf_pci_tbl", i1 false, i1 false}
!254 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3248, i32 35}
!255 = !{ptr @__func__.__qedf_probe, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3292, i32 4}
!257 = !{ptr @.str.45, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @__qedf_probe.__key, !259, !"__key", i1 false, i1 false}
!259 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3307, i32 3}
!260 = !{ptr @.str.46, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @__qedf_probe.__key.47, !262, !"__key", i1 false, i1 false}
!262 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3314, i32 3}
!263 = !{ptr @.str.48, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @__qedf_probe.__key.49, !265, !"__key", i1 false, i1 false}
!265 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3315, i32 3}
!266 = !{ptr @.str.50, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.51, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3318, i32 3}
!269 = !{ptr @.str.52, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3330, i32 2}
!271 = !{ptr @.str.53, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3338, i32 3}
!273 = !{ptr @.str.54, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3341, i32 2}
!275 = !{ptr @.str.55, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3344, i32 20}
!277 = !{ptr @.str.56, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3346, i32 25}
!279 = !{ptr @__qedf_probe.__key.57, !280, !"__key", i1 false, i1 false}
!280 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3347, i32 2}
!281 = !{ptr @.str.58, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @__qedf_probe.__key.59, !280, !"__key", i1 false, i1 false}
!283 = !{ptr @.str.60, !280, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @__qedf_probe.__key.61, !285, !"__key", i1 false, i1 false}
!285 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3348, i32 2}
!286 = !{ptr @.str.62, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @__qedf_probe.__key.63, !285, !"__key", i1 false, i1 false}
!288 = !{ptr @.str.64, !285, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @__qedf_probe.__key.65, !290, !"__key", i1 false, i1 false}
!290 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3349, i32 2}
!291 = !{ptr @.str.66, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @__qedf_probe.__key.67, !290, !"__key", i1 false, i1 false}
!293 = !{ptr @.str.68, !290, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @__qedf_probe.__key.69, !295, !"__key", i1 false, i1 false}
!295 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3350, i32 2}
!296 = !{ptr @.str.70, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @__qedf_probe.__key.71, !295, !"__key", i1 false, i1 false}
!298 = !{ptr @.str.72, !295, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.73, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3374, i32 4}
!301 = !{ptr @.str.74, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3379, i32 3}
!303 = !{ptr @.str.75, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3387, i32 3}
!305 = !{ptr @.str.76, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3391, i32 2}
!307 = !{ptr @.str.77, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3406, i32 3}
!309 = !{ptr @.str.78, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3414, i32 3}
!311 = !{ptr @.str.79, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3421, i32 4}
!313 = !{ptr @.str.80, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3431, i32 2}
!315 = !{ptr @.str.81, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3440, i32 3}
!317 = !{ptr @.str.82, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3466, i32 3}
!319 = !{ptr @.str.83, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3472, i32 3}
!321 = !{ptr @.str.84, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3477, i32 2}
!323 = !{ptr @.str.85, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3487, i32 2}
!325 = !{ptr @.str.86, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3501, i32 2}
!327 = !{ptr @.str.87, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3512, i32 3}
!329 = !{ptr @.str.88, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3517, i32 3}
!331 = !{ptr @.str.89, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3522, i32 2}
!333 = !{ptr @.str.90, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3525, i32 20}
!335 = !{ptr @.str.91, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3531, i32 3}
!337 = !{ptr @.str.92, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3544, i32 4}
!339 = !{ptr @.str.93, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3555, i32 25}
!341 = !{ptr @.str.94, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3559, i32 3}
!343 = !{ptr @.str.95, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3573, i32 3}
!345 = !{ptr @.str.96, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3592, i32 4}
!347 = !{ptr @.str.97, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3598, i32 20}
!349 = !{ptr @.str.98, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3602, i32 3}
!351 = !{ptr @.str.99, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3610, i32 21}
!353 = !{ptr @__qedf_probe.__key.100, !354, !"__key", i1 false, i1 false}
!354 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3614, i32 2}
!355 = !{ptr @.str.101, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @__qedf_probe.__key.102, !354, !"__key", i1 false, i1 false}
!357 = !{ptr @.str.103, !354, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.104, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3627, i32 5}
!360 = !{ptr @.str.105, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3632, i32 4}
!362 = !{ptr @__qedf_probe.__key.106, !363, !"__key", i1 false, i1 false}
!363 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3639, i32 3}
!364 = !{ptr @.str.107, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @.str.108, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3647, i32 3}
!367 = !{ptr @.str.109, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3654, i32 3}
!369 = !{ptr @.str.110, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3662, i32 2}
!371 = !{ptr @qedf_host_template, !372, !"qedf_host_template", i1 false, i1 false}
!372 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 982, i32 34}
!373 = !{ptr @__func__.qedf_eh_abort, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 737, i32 3}
!375 = !{ptr @.str.111, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @.str.112, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 745, i32 3}
!378 = !{ptr @.str.113, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 759, i32 3}
!380 = !{ptr @.str.114, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 768, i32 3}
!382 = !{ptr @.str.115, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 781, i32 3}
!384 = !{ptr @.str.116, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 789, i32 4}
!386 = !{ptr @.str.117, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 792, i32 4}
!388 = !{ptr @.str.118, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 799, i32 3}
!390 = !{ptr @.str.119, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 803, i32 2}
!392 = !{ptr @.str.120, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 817, i32 3}
!394 = !{ptr @.str.121, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 844, i32 3}
!396 = !{ptr @.str.122, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 847, i32 3}
!398 = !{ptr @__func__.qedf_eh_device_reset, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 868, i32 2}
!400 = !{ptr @.str.123, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @__func__.qedf_eh_target_reset, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 860, i32 2}
!403 = !{ptr @.str.124, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @__func__.qedf_eh_host_reset, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 966, i32 2}
!406 = !{ptr @.str.125, !405, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @__func__.qedf_handle_link_update, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 173, i32 2}
!409 = !{ptr @.str.126, !408, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @.str.127, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 182, i32 4}
!412 = !{ptr @.str.128, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 193, i32 3}
!414 = !{ptr @.str.129, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 211, i32 3}
!416 = !{ptr @__func__.qedf_initiate_fipvlan_req, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 139, i32 4}
!418 = !{ptr @.str.130, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @.str.131, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 144, i32 4}
!421 = !{ptr @.str.132, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 149, i32 4}
!423 = !{ptr @.str.133, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 157, i32 3}
!425 = !{ptr @__func__.qedf_link_recovery, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 378, i32 2}
!427 = !{ptr @.str.134, !426, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @.str.135, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 407, i32 4}
!430 = !{ptr @.str.136, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 416, i32 3}
!432 = !{ptr @.str.137, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 429, i32 3}
!434 = distinct !{null, !435, !"__warned", i1 false, i1 false}
!435 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 438, i32 2}
!436 = !{ptr @__func__.qedf_set_fcoe_pf_param, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3158, i32 2}
!438 = !{ptr @.str.138, !437, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @.str.139, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3166, i32 3}
!441 = !{ptr @.str.140, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3172, i32 3}
!443 = !{ptr @.str.141, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3215, i32 2}
!445 = !{ptr @.str.142, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3221, i32 2}
!447 = !{ptr @__func__.qedf_alloc_global_queues, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3021, i32 3}
!449 = !{ptr @.str.143, !448, !"<string literal>", i1 false, i1 false}
!450 = distinct !{null, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3031, i32 3}
!452 = !{ptr @.str.145, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3038, i32 3}
!454 = !{ptr @.str.146, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3042, i32 2}
!456 = !{ptr @.str.147, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3048, i32 3}
!458 = !{ptr @.str.148, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3057, i32 4}
!460 = !{ptr @.str.149, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3081, i32 4}
!462 = !{ptr @.str.150, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3093, i32 4}
!464 = !{ptr @__func__.qedf_alloc_bdq, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2942, i32 4}
!466 = !{ptr @.str.151, !465, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @.str.152, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2957, i32 3}
!469 = !{ptr @.str.153, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2961, i32 2}
!471 = !{ptr @.str.154, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2985, i32 3}
!473 = !{ptr @qedf_cb_ops, !474, !"qedf_cb_ops", i1 false, i1 false}
!474 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 693, i32 31}
!475 = !{ptr @__func__.qedf_link_update, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 579, i32 3}
!477 = !{ptr @.str.155, !476, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @.str.156, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 586, i32 4}
!480 = !{ptr @.str.157, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 590, i32 3}
!482 = !{ptr @.str.158, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 601, i32 4}
!484 = !{ptr @.str.159, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 613, i32 3}
!486 = !{ptr @.str.160, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 622, i32 4}
!488 = !{ptr @__func__.qedf_schedule_recovery_handler, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4002, i32 2}
!490 = !{ptr @.str.161, !489, !"<string literal>", i1 false, i1 false}
!491 = !{ptr @__func__.qedf_dcbx_handler, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 639, i32 2}
!493 = !{ptr @.str.162, !492, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @.str.163, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 646, i32 4}
!496 = !{ptr @.str.164, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 664, i32 4}
!498 = !{ptr @__func__.qedf_bw_update, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 553, i32 3}
!500 = !{ptr @.str.165, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 562, i32 4}
!502 = !{ptr @.str.166, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 566, i32 3}
!504 = !{ptr @__func__.qedf_prepare_sb, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2754, i32 3}
!506 = !{ptr @.str.167, !505, !"<string literal>", i1 false, i1 false}
!507 = !{ptr @.str.168, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2764, i32 4}
!509 = !{ptr @.str.169, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2770, i32 4}
!511 = !{ptr @__func__.qedf_alloc_and_init_sb, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2702, i32 3}
!513 = !{ptr @.str.170, !512, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @.str.171, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2712, i32 3}
!516 = !{ptr @__func__.qedf_setup_int, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2423, i32 2}
!518 = !{ptr @.str.172, !517, !"<string literal>", i1 false, i1 false}
!519 = !{ptr @.str.173, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2434, i32 2}
!521 = !{ptr @__func__.qedf_request_msix_irq, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2387, i32 3}
!523 = !{ptr @.str.174, !522, !"<string literal>", i1 false, i1 false}
!524 = !{ptr @.str.175, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2395, i32 4}
!526 = !{ptr @__func__.qedf_msix_handler, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2304, i32 3}
!528 = !{ptr @.str.176, !527, !"<string literal>", i1 false, i1 false}
!529 = !{ptr @.str.177, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2308, i32 3}
!531 = !{ptr @__func__.qedf_process_completions, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2242, i32 4}
!533 = !{ptr @.str.178, !532, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @.str.179, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2271, i32 4}
!536 = !{ptr @qedf_process_completions.__key, !537, !"__key", i1 false, i1 false}
!537 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2277, i32 3}
!538 = !{ptr @.str.180, !537, !"<string literal>", i1 false, i1 false}
!539 = !{ptr @__func__.qedf_simd_int_handler, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2346, i32 2}
!541 = !{ptr @.str.181, !540, !"<string literal>", i1 false, i1 false}
!542 = !{ptr @qedf_ll2_cb_ops, !543, !"qedf_ll2_cb_ops", i1 false, i1 false}
!543 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2663, i32 30}
!544 = !{ptr @__func__.qedf_ll2_rx, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2641, i32 3}
!546 = !{ptr @.str.182, !545, !"<string literal>", i1 false, i1 false}
!547 = !{ptr @.str.183, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2649, i32 3}
!549 = !{ptr @qedf_ll2_rx.__key, !550, !"__key", i1 false, i1 false}
!550 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2655, i32 2}
!551 = !{ptr @.str.184, !550, !"<string literal>", i1 false, i1 false}
!552 = !{ptr @__func__.qedf_ll2_process_skb, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2599, i32 3}
!554 = !{ptr @.str.185, !553, !"<string literal>", i1 false, i1 false}
!555 = !{ptr @__func__.qedf_recv_frame, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2457, i32 3}
!557 = !{ptr @.str.186, !556, !"<string literal>", i1 false, i1 false}
!558 = !{ptr @.str.187, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2478, i32 3}
!560 = !{ptr @.str.188, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2485, i32 3}
!562 = !{ptr @.str.189, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2522, i32 3}
!564 = !{ptr @.str.190, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2530, i32 4}
!566 = !{ptr @.str.191, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2546, i32 3}
!568 = !{ptr @.str.192, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2557, i32 3}
!570 = !{ptr @.str.193, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2574, i32 3}
!572 = !{ptr @.str.194, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2580, i32 2}
!574 = !{ptr @.str.195, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2585, i32 18}
!576 = !{ptr @.str.196, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2585, i32 32}
!578 = distinct !{null, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!580 = distinct !{null, !581, !"__warned", i1 false, i1 false}
!581 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1018, i32 2}
!582 = !{ptr @__func__.qedf_lport_setup, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1748, i32 3}
!584 = !{ptr @.str.198, !583, !"<string literal>", i1 false, i1 false}
!585 = !{ptr @.str.199, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1773, i32 4}
!587 = !{ptr @.str.200, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1777, i32 4}
!589 = !{ptr @qedf_lport_template, !590, !"qedf_lport_template", i1 false, i1 false}
!590 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1639, i32 39}
!591 = !{ptr @__func__.qedf_xmit, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1104, i32 3}
!593 = !{ptr @.str.201, !592, !"<string literal>", i1 false, i1 false}
!594 = !{ptr @.str.202, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1122, i32 3}
!596 = !{ptr @.str.203, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1128, i32 3}
!598 = !{ptr @.str.204, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1227, i32 2}
!600 = !{ptr @.str.205, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1236, i32 3}
!602 = !{ptr @.str.206, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 117, i32 8}
!604 = !{ptr @qedf_global_lock, !603, !"qedf_global_lock", i1 false, i1 false}
!605 = !{ptr @qedf_global, !606, !"qedf_global", i1 false, i1 false}
!606 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 116, i32 29}
!607 = !{ptr @__func__.qedf_rport_event_handler, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1467, i32 2}
!609 = !{ptr @.str.207, !608, !"<string literal>", i1 false, i1 false}
!610 = !{ptr @.str.208, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1473, i32 4}
!612 = !{ptr @.str.209, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1482, i32 4}
!614 = !{ptr @.str.210, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1493, i32 4}
!616 = !{ptr @.str.211, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1506, i32 4}
!618 = !{ptr @.str.212, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1513, i32 4}
!620 = !{ptr @.str.213, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1518, i32 4}
!622 = !{ptr @.str.214, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1539, i32 4}
!624 = !{ptr @.str.215, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1573, i32 4}
!626 = !{ptr @.str.216, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1578, i32 4}
!628 = !{ptr @.str.217, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1584, i32 4}
!630 = !{ptr @__func__.qedf_alloc_sq, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1261, i32 3}
!632 = !{ptr @.str.218, !631, !"<string literal>", i1 false, i1 false}
!633 = !{ptr @.str.219, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1270, i32 3}
!635 = !{ptr @__func__.qedf_cleanup_fcport, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1436, i32 2}
!637 = !{ptr @.str.220, !636, !"<string literal>", i1 false, i1 false}
!638 = !{ptr @__func__.qedf_upload_connection, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1421, i32 2}
!640 = !{ptr @.str.221, !639, !"<string literal>", i1 false, i1 false}
!641 = !{ptr @__func__.qedf_offload_connection, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1315, i32 2}
!643 = !{ptr @.str.222, !642, !"<string literal>", i1 false, i1 false}
!644 = !{ptr @.str.223, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1320, i32 3}
!646 = !{ptr @.str.224, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1326, i32 2}
!648 = !{ptr @.str.225, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1376, i32 3}
!650 = !{ptr @.str.226, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1388, i32 3}
!652 = !{ptr @.str.227, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1392, i32 3}
!654 = !{ptr @qedf_offload_connection.__key, !655, !"__key", i1 false, i1 false}
!655 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1396, i32 2}
!656 = !{ptr @.str.228, !655, !"<string literal>", i1 false, i1 false}
!657 = !{ptr @.str.229, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1683, i32 7}
!659 = distinct !{null, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1688, i32 30}
!661 = !{ptr @.str.231, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1691, i32 35}
!663 = distinct !{null, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1695, i32 33}
!665 = !{ptr @.str.233, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1699, i32 4}
!667 = distinct !{null, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1704, i32 33}
!669 = !{ptr @.str.235, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1708, i32 4}
!671 = !{ptr @.str.236, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1712, i32 30}
!673 = !{ptr @.str.237, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1718, i32 30}
!675 = distinct !{null, !676, !"<string literal>", i1 false, i1 false}
!676 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1723, i32 31}
!677 = !{ptr @__func__.qedf_recovery_handler, !678, !"<string literal>", i1 false, i1 false}
!678 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4020, i32 2}
!679 = !{ptr @.str.239, !678, !"<string literal>", i1 false, i1 false}
!680 = !{ptr @.str.240, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4031, i32 2}
!682 = !{ptr @__func__.__qedf_remove, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3710, i32 3}
!684 = !{ptr @.str.241, !683, !"<string literal>", i1 false, i1 false}
!685 = !{ptr @.str.242, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 3721, i32 3}
!687 = !{ptr @__func__.qedf_wait_for_vport_destroy, !688, !"<string literal>", i1 false, i1 false}
!688 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2008, i32 2}
!689 = !{ptr @.str.243, !688, !"<string literal>", i1 false, i1 false}
!690 = !{ptr @.str.244, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2011, i32 3}
!692 = !{ptr @__func__.qedf_sync_free_irqs, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2360, i32 4}
!694 = !{ptr @.str.245, !693, !"<string literal>", i1 false, i1 false}
!695 = !{ptr @__func__.qedf_init, !696, !"<string literal>", i1 false, i1 false}
!696 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4069, i32 4}
!697 = !{ptr @.str.246, !696, !"<string literal>", i1 false, i1 false}
!698 = !{ptr @.str.247, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4074, i32 2}
!700 = !{ptr @.str.248, !699, !"<string literal>", i1 false, i1 false}
!701 = !{ptr @.str.249, !702, !"<string literal>", i1 false, i1 false}
!702 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4078, i32 41}
!703 = !{ptr @.str.250, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4081, i32 3}
!705 = !{ptr @.str.251, !706, !"<string literal>", i1 false, i1 false}
!706 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4084, i32 2}
!707 = !{ptr @.str.252, !708, !"<string literal>", i1 false, i1 false}
!708 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4089, i32 3}
!709 = !{ptr @.str.253, !710, !"<string literal>", i1 false, i1 false}
!710 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4100, i32 3}
!711 = !{ptr @.str.254, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4107, i32 3}
!713 = !{ptr @.str.255, !714, !"<string literal>", i1 false, i1 false}
!714 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4112, i32 15}
!715 = !{ptr @.str.256, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4114, i32 3}
!717 = !{ptr @.str.257, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 4122, i32 3}
!719 = !{ptr @qedf_fc_transport_fn, !720, !"qedf_fc_transport_fn", i1 false, i1 false}
!720 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2101, i32 36}
!721 = !{ptr @__func__.qedf_vport_create, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1833, i32 3}
!723 = !{ptr @.str.259, !722, !"<string literal>", i1 false, i1 false}
!724 = !{ptr @.str.260, !725, !"<string literal>", i1 false, i1 false}
!725 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1839, i32 3}
!726 = !{ptr @.str.261, !727, !"<string literal>", i1 false, i1 false}
!727 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1846, i32 3}
!728 = !{ptr @.str.262, !729, !"<string literal>", i1 false, i1 false}
!729 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1852, i32 2}
!730 = !{ptr @qedf_vport_create.__key, !731, !"__key", i1 false, i1 false}
!731 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1867, i32 2}
!732 = !{ptr @.str.263, !731, !"<string literal>", i1 false, i1 false}
!733 = !{ptr @qedf_vport_create.__key.264, !731, !"__key", i1 false, i1 false}
!734 = !{ptr @.str.265, !731, !"<string literal>", i1 false, i1 false}
!735 = !{ptr @.str.266, !736, !"<string literal>", i1 false, i1 false}
!736 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1871, i32 3}
!737 = !{ptr @.str.267, !738, !"<string literal>", i1 false, i1 false}
!738 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1926, i32 2}
!739 = !{ptr @__func__.qedf_vport_destroy, !740, !"<string literal>", i1 false, i1 false}
!740 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 1948, i32 3}
!741 = !{ptr @qedf_fc_vport_transport_fn, !742, !"qedf_fc_vport_transport_fn", i1 false, i1 false}
!742 = !{!"../drivers/scsi/qedf/qedf_main.c", i32 2141, i32 36}
!743 = !{!"sp"}
!744 = !{i32 1, !"wchar_size", i32 2}
!745 = !{i32 1, !"min_enum_size", i32 4}
!746 = !{i32 8, !"branch-target-enforcement", i32 0}
!747 = !{i32 8, !"sign-return-address", i32 0}
!748 = !{i32 8, !"sign-return-address-all", i32 0}
!749 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!750 = !{i32 7, !"uwtable", i32 1}
!751 = !{i32 7, !"frame-pointer", i32 2}
!752 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!753 = !{i64 2149468248}
!754 = !{i64 2149468514}
!755 = !{!"branch_weights", i32 2000, i32 1}
!756 = !{i8 0, i8 2}
!757 = !{i64 2148334263, i64 2148334289, i64 2148334318, i64 2148334352, i64 2148334383, i64 2148334406}
!758 = !{i64 1238966, i64 1238993}
!759 = !{i64 1239661, i64 1239688, i64 1239721, i64 1239742, i64 1239769, i64 1239795}
!760 = !{i64 2158196892}
!761 = !{i64 5091276}
!762 = !{i64 5091476}
!763 = !{i64 2158197623}
!764 = !{i64 2158197859}
!765 = !{i64 2158198600}
!766 = !{i64 817999, i64 818023, i64 818044, i64 818061, i64 818078}
!767 = !{i64 2148423794}
!768 = !{i64 2148338258, i64 2148338290, i64 2148338319, i64 2148338353, i64 2148338384, i64 2148338407}
!769 = !{i64 2149417758}
!770 = !{ptr @fc_rport_destroy, ptr @qedf_release_cmd}
!771 = !{!"auto-init"}
!772 = !{i64 2157899405}
!773 = !{i64 5091896}
!774 = !{i64 2157899714}
!775 = !{i64 2158167383}
!776 = !{i64 2158168927}
!777 = !{!"branch_weights", i32 1, i32 2000}
!778 = !{i64 2155328290, i64 2155328778, i64 2155328327, i64 2155328383, i64 2155328417, i64 2155328441, i64 2155328482, i64 2155328503, i64 2155328531, i64 2155328565}
!779 = !{i64 2153991284}
!780 = !{i64 2154596929}
!781 = !{i64 2158144121}
!782 = !{i64 2158144294}
!783 = !{i64 2148336728, i64 2148336754, i64 2148336783, i64 2148336817, i64 2148336848, i64 2148336871}
!784 = !{i64 2154594158}
!785 = !{i64 2153991077}
!786 = !{i64 2148335793, i64 2148335825, i64 2148335854, i64 2148335888, i64 2148335919, i64 2148335942}
!787 = !{i64 2151929389}
