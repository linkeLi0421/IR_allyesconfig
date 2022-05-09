; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla2xxx/qla_edif.c_pt.bc'
source_filename = "../drivers/scsi/qla2xxx/qla_edif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.els_sub_cmd = type { i16, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qla_work_evt = type { %struct.list_head, i32, i32, %union.anon.171 }
%struct.list_head = type { ptr, ptr }
%union.anon.171 = type { %struct.anon.181 }
%struct.anon.181 = type { ptr, [64 x i8], i32 }
%struct.fc_port = type { %struct.list_head, ptr, [3 x i8], i8, [8 x i8], [8 x i8], %union.port_id_t, i16, i16, %struct.completion, i32, i32, ptr, i8, i32, ptr, %struct.list_head, %struct.spinlock, %struct.kref, ptr, i32, %struct.list_head, %struct.work_struct, %struct.work_struct, i64, i32, [2 x ptr], i16, i16, i16, i8, [8 x i8], i16, i32, %struct.atomic_t, i32, i32, ptr, ptr, i32, i8, i8, i8, i32, i32, i16, ptr, i32, ptr, %struct.ct_sns_desc, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, [64 x i8], i8, i8, i16, i16, ptr, i64, i64, i64, %struct.anon.143 }
%union.port_id_t = type { i24 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ct_sns_desc = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.143 = type { i16, i32, i32, i64, i64, i8, i8, i16, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.scsi_qla_host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.work_struct, ptr, i32, [16 x i8], %struct.anon.79, %struct.atomic_t, i32, i32, i32, i32, i16, i16, %struct.fc_port, %union.port_id_t, i8, i16, i8, %struct.atomic_t, i8, i32, %struct.timer_list, [8 x i8], [8 x i8], [8 x i8], [8 x i8], ptr, %struct.completion, i16, i16, [6 x i8], %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i16, ptr, i32, %struct.atomic_t, i16, i16, ptr, %struct.scsi_qlt_host, ptr, i32, i32, %struct.fc_host_statistics, %struct.qla_statistics, %struct.bidi_statistics, %struct.atomic_t, %struct.qla8044_reset_template, i16, i16, i16, i16, i16, i16, ptr, %struct.purex_list, %struct.purex_item, %struct.name_list_extended, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, [8 x i8], [8 x i8], i16, [4 x i16], %struct.list_head, %struct.fab_scan, i8, i32, i64, i64, i64, i64, i64, i64, %struct.edif_dbell, %struct.pur_core }
%struct.anon.79 = type { i16, [2 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.scsi_qlt_host = type { ptr, %struct.mutex, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_statistics = type { i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, %struct.qla_dif_statistics }
%struct.qla_dif_statistics = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.bidi_statistics = type { i64, i64 }
%struct.qla8044_reset_template = type { i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.purex_list = type { %struct.list_head, %struct.spinlock }
%struct.purex_item = type { %struct.list_head, ptr, ptr, %struct.atomic_t, i16, %struct.anon.166 }
%struct.anon.166 = type { [64 x i8] }
%struct.name_list_extended = type { ptr, i32, %struct.list_head, i32, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fab_scan = type { ptr, i32, i16, i32, %struct.delayed_work }
%struct.edif_dbell = type { i32, %struct.spinlock, %struct.list_head, %struct.completion }
%struct.pur_core = type { i32, %struct.spinlock, %struct.list_head }
%struct.qla_hw_data = type { ptr, ptr, %struct.anon.144, i16, i16, [108 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i16, i8, ptr, ptr, ptr, [8 x i32], [8 x i32], [8 x i32], i8, i8, i8, i8, ptr, ptr, i16, i16, i8, i8, i8, %struct.atomic_t, i8, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i16, i16, ptr, i16, i16, ptr, i16, i8, i8, i16, i32, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i64, i8, i8, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, %struct.fc_els_flogi, ptr, [32 x i16], [32 x i32], [8 x i32], ptr, ptr, i32, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, i32, %struct.mutex, i16, i16, i16, i16, i16, [2 x i16], i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, [16 x i16], [4 x i8], [4 x i16], [3 x i8], [3 x i8], i32, [3 x i8], [3 x i8], [2 x %struct.fwdt], ptr, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, [8 x i16], i64, i64, %struct.mutex, i32, i16, [4 x i16], [17 x i8], [80 x i8], [17 x i8], ptr, i32, i32, i32, i32, %struct.mutex, [2 x i8], [2 x i8], [16 x i8], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.156, i8, i16, i8, i16, i16, ptr, %struct.list_head, [8 x i32], i16, i16, i16, i32, ptr, ptr, ptr, %struct.work_struct, %struct.qlfc_fw, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rwlock_t, i16, i32, ptr, %struct.qla82xx_legacy_intr_set, i16, i16, %struct.list_head, i8, i32, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mr_data_fx00, i32, [36 x i8], %struct.qlt_hw_data, i32, i32, i16, i16, ptr, %struct.anon.163, i64, i64, i64, i64, i64, %struct.atomic_t, i16, i8, %struct.atomic_t, i16, %struct.qla_hw_data_stat, i32, ptr, %struct.btree_head32, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.els_reject, i8 }
%struct.anon.144 = type { i56 }
%struct.fc_els_flogi = type <{ i8, [3 x i8], %struct.fc_els_csp, i64, i64, [4 x %struct.fc_els_cssp], [16 x i8] }>
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.152, i32 }
%union.anon.152 = type { %struct.anon.154 }
%struct.anon.154 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.fwdt = type { ptr, i32, i32 }
%struct.anon.156 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlfc_fw = type { ptr, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qla82xx_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.mr_data_fx00 = type { [64 x i8], [32 x i8], [16 x i8], [16 x i8], [16 x i8], [32 x i8], %struct.fc_port, i8, i8, i8, i32, i16, i8, i16, i32, i32, i8, i8, i8 }
%struct.qlt_hw_data = type { i8, i32, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr, i32, i16, i32, i32, i32, [2 x i8], [2 x i8], [8 x i8], ptr, ptr, ptr, %struct.list_head, i32, i32, i32, %struct.spinlock, i32, %struct.spinlock, i32, [60 x i8], %struct.spinlock, [84 x i8] }
%struct.anon.163 = type { %struct.anon.164, %struct.anon.165 }
%struct.anon.164 = type { %struct.list_head, i32 }
%struct.anon.165 = type { %struct.list_head, i32 }
%struct.qla_hw_data_stat = type { i32, i32 }
%struct.btree_head32 = type { %struct.btree_head }
%struct.btree_head = type { ptr, ptr, i32 }
%struct.els_reject = type { ptr, i32, i16 }
%struct.edif_sa_index_entry = type { [2 x %struct.sa_index_pair], ptr, i16, %struct.list_head }
%struct.sa_index_pair = type { i16, i32 }
%struct.edif_sa_ctl = type { %struct.list_head, i16, i16, i16, i16, i32, ptr, ptr, %struct.qla_sa_update_frame }
%struct.qla_sa_update_frame = type { %struct.app_id, i16, i16, i32, i32, [32 x i8], [8 x i8], [8 x i8], %union.port_id_t }
%struct.app_id = type { i32, [32 x i8] }
%struct.bsg_job = type { ptr, %struct.kref, i32, ptr, ptr, i32, i32, %struct.bsg_buffer, %struct.bsg_buffer, i32, i32, ptr, ptr, ptr }
%struct.bsg_buffer = type { i32, i32, ptr }
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
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.fc_bsg_request = type <{ i32, %union.anon.184 }>
%union.anon.184 = type { %struct.fc_bsg_host_vendor, [8 x i8] }
%struct.fc_bsg_host_vendor = type { i64, [0 x i32] }
%struct.fc_bsg_reply = type { i32, i32, %union.anon.185 }
%union.anon.185 = type { %struct.fc_bsg_ctels_reply }
%struct.fc_bsg_ctels_reply = type { i32, %struct.anon.186 }
%struct.anon.186 = type { i8, i8, i8, i8 }
%struct.srb = type { i8, [3 x i8], %struct.iocb_resource, %struct.kref, ptr, %struct.wait_queue_head, ptr, ptr, i8, i32, i16, i16, ptr, i32, ptr, ptr, %struct.list_head, i32, i32, i32, i32, ptr, %union.anon.83, %struct.anon.106, ptr, ptr, ptr }
%struct.iocb_resource = type { i8, i8, i16 }
%union.anon.83 = type { %struct.srb_iocb }
%struct.srb_iocb = type { %union.anon.84, %struct.timer_list, ptr }
%union.anon.84 = type { %struct.anon.87, [112 x i8] }
%struct.anon.87 = type { i64, i32, i32, %struct.completion, i16 }
%struct.anon.106 = type { i8, %struct.anon.107, %struct.anon.108 }
%struct.anon.107 = type { i32, ptr, i32 }
%struct.anon.108 = type { i32, ptr, i32 }
%struct.anon.101 = type { ptr, %struct.qla_sa_update_frame }
%struct.app_start = type { %struct.app_id, i32, i32, i8, [31 x i8] }
%struct.app_start_reply = type { i32, i32, i32, [32 x i32] }
%struct.app_stop = type { %struct.app_id, [16 x i8] }
%struct.auth_complete_cmd = type { %struct.app_id, i32, %union.anon.194, [32 x i32] }
%union.anon.194 = type { %union.port_id_t, [4 x i8] }
%struct.app_plogi_reply = type { i32, [32 x i8] }
%struct.app_pinfo_req = type <{ %struct.app_id, i8, %union.port_id_t, [32 x i8] }>
%struct.app_pinfo_reply = type <{ i8, [32 x i8], [0 x %struct.app_pinfo] }>
%struct.app_pinfo = type { %union.port_id_t, [8 x i8], i8, i8, i8, i8, i64, i64, i64, [32 x i8] }
%struct.app_sinfo_req = type <{ %struct.app_id, i8, [32 x i8] }>
%struct.app_stats_reply = type { i8, [0 x %struct.app_sinfo] }
%struct.app_sinfo = type <{ [8 x i8], i64, i8, i64, i64 }>
%struct.edif_list_entry = type { i16, i32, i32, i32, i32, ptr, %struct.timer_list, %struct.list_head }
%struct.qla_qpair = type { %struct.spinlock, %struct.atomic_t, i32, ptr, ptr, i32, i8, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.qla_counters, %struct.list_head, %struct.list_head, i16, i32, i64, %struct.qla_tgt_counters, i16, [94 x i8], %struct.qla_fw_resources, i32, i32, i32, [108 x i8] }
%struct.qla_counters = type { i64, i64, i64, i64 }
%struct.qla_tgt_counters = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_fw_resources = type { i16, i16, i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.81, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.81 = type { ptr }
%struct.enode = type { %struct.list_head, %struct.dinfo, i32, %union.anon.187 }
%struct.dinfo = type { i32, i32 }
%union.anon.187 = type { %struct.purexevent }
%struct.purexevent = type { %struct.pur_ninfo, ptr, i32 }
%struct.pur_ninfo = type { %union.port_id_t, %union.port_id_t, i8, i16, i16, i32 }
%struct.edb_node = type { %struct.list_head, i32, %union.anon.188 }
%union.anon.188 = type { %struct.edif_sa_update_aen }
%struct.edif_sa_update_aen = type { %union.port_id_t, i32, i32, [16 x i8] }
%struct.edif_app_dbell = type { i32, i32, %union.anon.189 }
%union.anon.189 = type { %union.port_id_t, [60 x i8] }
%struct.sa_update_28xx = type { i8, i8, i8, i8, i32, %union.anon.190, i8, i8, [3 x i8], i8, [32 x i8], i32, i32, i8, i8, i16, i16, i16 }
%union.anon.190 = type { i16 }
%struct.anon.80 = type { i8, i8, i8, i8 }
%struct.qla_els_pt_arg = type { i8, i8, i16, i16, i16, i32, %union.port_id_t, %union.port_id_t, i32, i32, i32, i32, i32, i32 }
%struct.purex_entry_24xx = type { i8, i8, i8, i8, i16, i8, i8, i16, i16, i16, i16, i32, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i16, i8, i8, i16, i16, i32, [20 x i8] }
%struct.rsp_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, [64 x i8] }
%struct.req_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i32, i16, i32, i32, ptr, i16, [64 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ct6_dsd = type { i16, i32, ptr, i32, %struct.list_head }
%struct.cmd_type_6 = type <{ i8, i8, i8, i8, i32, i16, i16, i16, i16, %struct.scsi_lun, i16, i16, i64, i64, i32, [3 x i8], i8, %struct.dsd64 }>
%struct.scsi_lun = type { [8 x i8] }
%struct.dsd64 = type <{ i64, i32 }>
%struct.cont_a64_entry_t = type { i8, i8, i8, i8, [5 x %struct.dsd64] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.fcp_cmnd = type { %struct.scsi_lun, i8, i8, i8, i8, [260 x i8] }
%struct.cmd_a64_entry_t = type { i8, i8, i8, i8, i32, %union.target_id_t, i16, i16, i16, i16, i16, [16 x i8], i32, [2 x %struct.dsd64] }
%union.target_id_t = type { i16 }
%struct.sts_entry_24xx = type { i8, i8, i8, i8, i32, i16, i16, i32, %union.anon.191, i16, i16, i16, i32, i32, %union.anon.192 }
%union.anon.191 = type { i16 }
%union.anon.192 = type { %struct.nvme_fc_ersp_iu }
%struct.nvme_fc_ersp_iu = type { i8, i8, i16, i32, i32, i32, %struct.nvme_completion }
%struct.nvme_completion = type { %union.nvme_result, i16, i16, i16, i16 }
%union.nvme_result = type { i64 }
%struct.ctio7_from_24xx = type { i8, i8, i8, i8, i32, i16, i16, i16, i8, [5 x i8], i32, i16, i16, i32, i16, i16, i32, [24 x i8] }
%struct.fc_bsg_host_els = type { i8, [3 x i8] }
%struct.qla_bsg_auth_els_request = type { %struct.fc_bsg_request, %struct.extra_auth_els }
%struct.extra_auth_els = type { i32, i32, i8, [3 x i8] }
%struct.qla_bsg_auth_els_reply = type { %struct.fc_bsg_reply, i32 }
%struct.bsg_cmd = type { ptr, %union.anon.105 }
%union.anon.105 = type { %struct.qla_els_pt_arg }

@sc_str = internal constant { [3 x %struct.els_sub_cmd], [40 x i8] } { [3 x %struct.els_sub_cmd] [%struct.els_sub_cmd { i16 0, ptr @.str.94 }, %struct.els_sub_cmd { i16 1, ptr @.str.95 }, %struct.els_sub_cmd { i16 2, ptr @.str.96 }], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Found secure fcport - nn %8phN pn %8phN portid=0x%x, 0x%x.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Starting...\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.qla2x00_release_all_sadb = private unnamed_addr constant [25 x i8] c"qla2x00_release_all_sadb\00", align 1
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s vnd subcmd=%x\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.qla_edif_app_mgmt = private unnamed_addr constant [18 x i8] c"qla_edif_app_mgmt\00", align 1
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s edif not enabled or vp delete. bsg ptr done %p. dpc_flags %lx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s app checked failed.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s unknown cmd=%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: %d  bsg ptr done %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s entered, vha: 0x%p\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.qla24xx_sadb_update = private unnamed_addr constant [20 x i8] c"qla24xx_sadb_update\00", align 1
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Host is not online\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"App not started\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to find port= %06x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: %8phN lid=FC_NO_LOOP_ID, spi: 0x%x, DS %d, returning NO_CONNECT\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %8phN, skipping update.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: %8phN, skipping rx delete.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: %8phN, sa_index in sa_frame: %d flags %xh\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s: WARNING: no active sa_index for nport_handle 0x%x, forcing delete for sa_index 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%s: FORCE DELETE flag found for nport_handle 0x%x, sa_index 0x%x, forcing DELETE\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: delete for lid 0x%x, delete_sa_index %d is pending\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: freeing sa_ctl for index %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: freeing sa_index %d, nph: 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.21 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: adding timer, entry: %p, delete sa_index %d, lid 0x%x to edif_list\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: delete sa_index %d, lid 0x%x to edif_list. bsg done ptr %p\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:  adding update sa_index %d, lid 0x%x to edif_list\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: SA_UPDATE failed to add new sa index %d to list for lid 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bsg_sa_update\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qla2x00_start_sp failed=%d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:  %s sent, hdl=%x, portid=%06x.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:status: FAIL, result: 0x%x, bsg ptr done %p\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s enode still active\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.qla_enode_init = private unnamed_addr constant [15 x i8] c"qla_enode_init\00", align 1
@qla_enode_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&vha->pur_cinfo.pur_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s_%d_purex\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qla2xxx\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s enode not active\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.qla_enode_stop = private unnamed_addr constant [15 x i8] c"qla_enode_stop\00", align 1
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s freeing enode type=%x, cnt=%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"edif db already initialized, cannot reinit\0A\00", [52 x i8] zeroinitializer }, align 32
@qla_edb_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&vha->e_dbell.db_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s doorbell not enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.qla_edb_stop = private unnamed_addr constant [13 x i8] c"qla_edb_stop\00", align 1
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s freeing edb_node type=%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s doorbell not enabled (type=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.qla_edb_eventcreate = private unnamed_addr constant [20 x i8] c"qla_edb_eventcreate\00", align 1
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s unable to alloc db node\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Arrived s_id: %06x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s can't find fcport for sid= 0x%x - ignoring\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s unknown type: %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s unable to add dbnode\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s Doorbell produced : type=%d %p\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s chip reset to turn off PLOGI ACC + secure\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.qla_edif_timer = private unnamed_addr constant [15 x i8] c"qla_edif_timer\00", align 1
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s error - edif db not enabled\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.edif_doorbell_show = private unnamed_addr constant [19 x i8] c"edif_doorbell_show\00", align 1
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s error - edif not enabled\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s Doorbell consumed : type=%d %p\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: starting,  sa_ctl: %p\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.qla24xx_issue_sa_replace_iocb = private unnamed_addr constant [30 x i8] c"qla24xx_issue_sa_replace_iocb\00", align 1
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sa_ctl allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SRB allocation failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Enter: SA REPL portid=%06x, sa_ctl %p, index %x, nport_handle: 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: sp 0x%p flagged as cleanup delete\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SA_REPLACE\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: EDIF SA UPDATE RX IOCB  vha: 0x%p  index: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.qla24xx_sa_update_iocb = private unnamed_addr constant [23 x i8] c"qla24xx_sa_update_iocb\00", align 1
@.str.57 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: EDIF SA DELETE RX IOCB  vha: 0x%p  index: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: EDIF SA UPDATE TX IOCB  vha: 0x%p  index: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: EDIF SA DELETE TX IOCB  vha: 0x%p  index: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"%s SAU Port ID = %02x%02x%02x, flags=%xh, index=%u, ctl=%xh, SPI 0x%x flags 0x%x hdl=%x gmac %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s SAU DELETE RX Port ID = %02x:%02x:%02x, lid %d flags=%xh, index=%u, hdl=%x\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.qla24xx_sa_replace_iocb = private unnamed_addr constant [24 x i8] c"qla24xx_sa_replace_iocb\00", align 1
@.str.62 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s WARNING: verbose ELS frame received (totlen=%x)\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.qla24xx_auth_els = private unnamed_addr constant [17 x i8] c"qla24xx_auth_els\00", align 1
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s edif not enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"WARNING: enode alloc failed for sid=%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s Drop ELS due to unable to find host %06x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s e_dbell.db_flags =%x %06x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s COMPLETE purex->pur_info.pur_bytes_rcvd =%xh s:%06x -> d:%06x xchg=%xh\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SA_UPDATE_RESPONSE_IOCB\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: no sp found for pkt\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.qla28xx_sa_update_iocb_entry = private unnamed_addr constant [29 x i8] c"qla28xx_sa_update_iocb_entry\00", align 1
@.str.70 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"%s: %8phN comp status=%x old_sa_info=%x new_sa_info=%x lid %d, index=0x%x pkt_flags %xh hdl=%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: removing edif_entry %p, new sa_index: 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: releasing edif_entry %p, new sa_index: 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: nph 0x%x, sa_index %d removed from fw\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SA(%x)updated for s_id %02x%02x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: %8phN SA update FAILED: sa_index: %d, new_sa_info %d, %02x%02x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: sa_ctl NOT freed, sa_ctl: %p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"qla2x00_marker failed for cmd=%p.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocate ctx for cmd=%p.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to allocate fcp_cmnd for cmd=%p.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"scsi cmd len %d not multiple of 4 for cmd=%p.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to allocate memory for sadb tx.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to allocate memory for sadb rx.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s fcport not find online portid=%06x.\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.qla_edif_process_els = private unnamed_addr constant [21 x i8] c"qla_edif_process_els\00", align 1
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s ELS code %x, no loop id.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Host not online.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ELS passthru not supported for ISP23xx based adapters.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed get sp pid=%06x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed allocate request dma len=%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed allocate response dma len=%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SPCN_BSG_HST_NOLOGIN\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s %s %8phN xchg %x ctlflag %x hdl %x reqlen %xh bsg ptr %p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qla2x00_start_sp failed = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: sess %8phN send port_offline event\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.qla_edif_sess_down = private unnamed_addr constant [19 x i8] c"qla_edif_sess_down\00", align 1
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"send ELS\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"send ELS Reply\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"retrieve ELS\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: ** WARNING %d** entry handle: 0x%x, lid: 0x%x, sa_index: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.__qla2x00_release_all_sadb = private unnamed_addr constant [27 x i8] c"__qla2x00_release_all_sadb\00", align 1
@.str.98 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: remove edif_entry %p, update_sa_index: 0x%x, delete_sa_index: 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: release edif_entry %p, update_sa_index: 0x%x, delete_sa_index: 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: %d %s keys released\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: entry\0A\00", [21 x i8] zeroinitializer }, align 32
@__func__.qla_edif_add_sa_index_to_freepool = private unnamed_addr constant [34 x i8] c"qla_edif_add_sa_index_to_freepool\00", align 1
@.str.104 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: index %d added to free pool\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s app id ok\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.qla_edif_app_check = private unnamed_addr constant [19 x i8] c"qla_edif_app_check\00", align 1
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s app id not ok (%x)\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"EDIF application registration with driver, FC device connections will be re-established.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s app_vid=%x app_start_flags %x\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.qla_edif_app_start = private unnamed_addr constant [19 x i8] c"qla_edif_app_start\00", align 1
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s doorbell already active\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"FCSP - nn %8phN pn %8phN portid=%06x.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [137 x i8], [55 x i8] } { [137 x i8] c"%s: se_sess %p / sess %p from port %8phC loop_id %#04x s_id %06x logout %d keep %d els_logo %d disc state %d auth state %dstop state %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s wwpn %8phC calling qla_edif_reset_auth_wait\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s enode already active\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s app start completed with 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Init SA_CTL List for fcport - nn %8phN pn %8phN portid=%06x.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s Stopping APP: app_vid=%x\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.qla_edif_app_stop = private unnamed_addr constant [18 x i8] c"qla_edif_app_stop\00", align 1
@.str.117 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s: sess %p from port %8phC lid %#04x s_id %06x logout %d keep %d els_logo %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s wwpn lookup failed: %8phC\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.qla_edif_app_authok = private unnamed_addr constant [20 x i8] c"qla_edif_app_authok\00", align 1
@.str.119 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s d_id lookup failed: %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s undefined type: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s Skipping PRLI complete based on rekey\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s wwpn %8phC is not in auth pending state (%x)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: wwpn %8phC Both SA indexes has not been SET TX %d, RX %d.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s wwpn %8phC Both SA(s) updated.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s AUTH complete - RESUME with prli for wwpn %8phC\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.qla_edif_app_chk_sa_update = private unnamed_addr constant [27 x i8] c"qla_edif_app_chk_sa_update\00", align 1
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s app auth fail\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.qla_edif_app_authfail = private unnamed_addr constant [22 x i8] c"qla_edif_app_authfail\00", align 1
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s fcport is 0x%p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s reset the auth process - %8phC, loopid=%x portid=%06x.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s app get fcinfo\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.qla_edif_app_getfcinfo = private unnamed_addr constant [23 x i8] c"qla_edif_app_getfcinfo\00", align 1
@.str.130 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"APP request entry - portid=%06x.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Found FC_SP fcport - nn %8phN pn %8phN pcnt %d portid=%06x secure %d.\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.132 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s app did not indicate number of ports to return\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.qla_edif_app_getstats = private unnamed_addr constant [22 x i8] c"qla_edif_app_getstats\00", align 1
@.str.133 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: rx delete for lid 0x%x, spi 0x%x, no entry found\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.qla24xx_check_sadb_avail_slot = private unnamed_addr constant [30 x i8] c"qla24xx_check_sadb_avail_slot\00", align 1
@.str.134 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Failed to get sa_index for spi 0x%x, dir: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: index %d allocated to spi 0x%x, dir: %d, nport_handle: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: Failed to add sa_ctl for spi 0x%x, dir: %d, sa_index: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%s: Found sa_ctl %p, index %d, state 0x%lx, tx_cnt %d, rx_cnt %d, nport_handle: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: entry  fc_port: %p, nport_handle: 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.qla_edif_sadb_get_sa_index = private unnamed_addr constant [27 x i8] c"qla_edif_sadb_get_sa_index\00", align 1
@.str.139 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: rx delete request with no entry\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%s: Created new sadb entry for nport_handle 0x%x, spi 0x%x, returning sa_index %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: sadb slot %d entry for lid 0x%x, spi 0x%x found, sa_index %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: WARNING: No free slots in sadb for nport_handle 0x%x, spi: 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: Slot 0  spi: 0x%x  sa_index: %d,  Slot 1  spi: 0x%x  sa_index: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: empty freepool!!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"%s: sadb slot %d entry for nport_handle 0x%x, spi 0x%x added, returning sa_index %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.qla_edif_get_sa_index_from_freepool = private unnamed_addr constant [36 x i8] c"qla_edif_get_sa_index_from_freepool\00", align 1
@.str.146 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: index retrieved from free pool %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to allocate SA CTL\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Added sa_ctl %p, index %d, state 0x%lx\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.qla_edif_add_sa_ctl = private unnamed_addr constant [20 x i8] c"qla_edif_add_sa_ctl\00", align 1
@qla_edif_list_add_sa_update_index.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.149 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&entry->timer)\00", [16 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s:  nport_handle 0x%x,  SA REPL Delay Timeout, %8phC portid=%06x\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.qla2x00_sa_replace_iocb_timeout = private unnamed_addr constant [32 x i8] c"qla2x00_sa_replace_iocb_timeout\00", align 1
@.str.151 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: sa_ctl: %p, delete index %d, update index: %d, lid: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: sa_ctl not found for delete_sa_index: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s error - no valid node passed\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.qla_edb_node_free = private unnamed_addr constant [18 x i8] c"qla_edb_node_free\00", align 1
@.str.155 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"edb node unable to be allocated\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.qla_edb_node_add = private unnamed_addr constant [17 x i8] c"qla_edb_node_add\00", align 1
@.str.156 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qla2x00_alloc_iocbs failed.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Sending ELS reject ox_id %04x s:%06x -> d:%06x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s add enode for type=%x, cnt=%x\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.qla_enode_add = private unnamed_addr constant [14 x i8] c"qla_enode_add\00", align 1
@__func__.qla_edif_sadb_delete_sa_index = private unnamed_addr constant [30 x i8] c"qla_edif_sadb_delete_sa_index\00", align 1
@.str.159 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: no entry found for nport_handle 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: sa_index %d removed, free_slot_count: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"%s: invalidating delete_sa_index,  update_sa_index: 0x%x sa_index: 0x%x, delete_sa_index: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.__chk_edif_rx_sa_delete_pending = private unnamed_addr constant [32 x i8] c"__chk_edif_rx_sa_delete_pending\00", align 1
@.str.162 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s: POST SA DELETE nport_handle mismatch: lid: 0x%x, edif_entry nph: 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: POST SA DELETE sa_ctl: %p, index recvd %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"delete index %d, update index: %d, nport handle: 0x%x, handle: 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: POST SA DELETE sa_ctl not found for delete_sa_index: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.qla_bsg_check = private unnamed_addr constant [14 x i8] c"qla_bsg_check\00", align 1
@.str.166 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s %s %8phN sid=%x. xchg %x, nb=%xh bsg ptr %p\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s no enode data found for %8phN sid=%06x\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.qla_pur_get_pending = private unnamed_addr constant [20 x i8] c"qla_pur_get_pending\00", align 1
@__func__.qla_edb_clear = private unnamed_addr constant [14 x i8] c"qla_edb_clear\00", align 1
@.str.168 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s unknown node type: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s free doorbell event : node type = %x %p\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.qla_enode_clear = private unnamed_addr constant [16 x i8] c"qla_enode_clear\00", align 1
@.str.170 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s free ELS sid=%06x. xchg %x, nb=%xh\0A\00", [57 x i8] zeroinitializer }, align 32
@switch.table.qla24xx_sa_update_iocb = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [16 x i8] zeroinitializer }, align 32
@switch.table.qla28xx_sa_update_iocb_entry = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 16, i64 65534, i64 65535]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.177 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.179 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.181 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.184 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"sc_str\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 36, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 52, i32 9 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 262, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 428, i32 6 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1018, i32 35 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1028, i32 7 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1037, i32 7 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1069, i32 36 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1080, i32 7 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1258, i32 6 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1266, i32 36 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1273, i32 36 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1289, i32 36 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1299, i32 7 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1313, i32 7 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1322, i32 7 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1329, i32 6 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1348, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1360, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1376, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1384, i32 9 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1391, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1407, i32 7 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1425, i32 7 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1452, i32 7 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1459, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1481, i32 13 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1492, i32 7 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1501, i32 6 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1516, i32 6 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1545, i32 37 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1551, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1554, i32 31 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1554, i32 46 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1573, i32 7 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1585, i32 7 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1778, i32 7 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1783, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1873, i32 7 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1884, i32 7 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1957, i32 7 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1964, i32 7 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1973, i32 7 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1978, i32 8 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2001, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2010, i32 7 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2018, i32 6 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2058, i32 12 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2087, i32 7 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2094, i32 7 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2130, i32 5 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2167, i32 6 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2171, i32 7 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2181, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2190, i32 6 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2200, i32 7 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2204, i32 13 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2228, i32 7 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2233, i32 7 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2239, i32 7 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2245, i32 7 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2282, i32 6 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2325, i32 6 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2372, i32 7 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2381, i32 36 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2391, i32 7 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2423, i32 7 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2435, i32 38 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2448, i32 6 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2567, i32 21 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2578, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2614, i32 6 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2627, i32 8 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2633, i32 8 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2653, i32 7 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2667, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2686, i32 7 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2714, i32 8 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2786, i32 8 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2835, i32 7 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2844, i32 7 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2860, i32 8 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3178, i32 7 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3188, i32 7 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3349, i32 7 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3360, i32 7 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3367, i32 36 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3376, i32 7 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3385, i32 7 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3396, i32 7 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3408, i32 7 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3420, i32 13 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3430, i32 6 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3437, i32 7 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3461, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 37, i32 13 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 38, i32 19 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 39, i32 13 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 351, i32 8 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 385, i32 9 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 406, i32 9 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 416, i32 6 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 417, i32 32 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 417, i32 39 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 320, i32 6 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 333, i32 6 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 284, i32 53 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 287, i32 35 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 476, i32 9 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 482, i32 35 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 489, i32 36 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 502, i32 11 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 506, i32 11 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 527, i32 11 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 539, i32 36 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 557, i32 6 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 198, i32 6 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 582, i32 35 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 597, i32 8 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 677, i32 8 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 684, i32 8 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 689, i32 7 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 705, i32 7 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 715, i32 7 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 727, i32 7 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 736, i32 7 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 744, i32 7 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 774, i32 35 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 809, i32 6 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 814, i32 7 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 843, i32 35 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 865, i32 8 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 889, i32 8 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 957, i32 6 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1188, i32 7 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1203, i32 7 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1209, i32 6 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1218, i32 7 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1231, i32 6 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3055, i32 6 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3067, i32 8 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3093, i32 7 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3109, i32 9 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3121, i32 7 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3124, i32 7 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3135, i32 7 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3144, i32 6 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2484, i32 6 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1101, i32 7 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1118, i32 6 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 161, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 80, i32 6 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 108, i32 8 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 119, i32 8 }
@___asan_gen_.656 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.660 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 87, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1804, i32 7 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1906, i32 7 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1755, i32 7 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1762, i32 6 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1657, i32 6 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2529, i32 7 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 2557, i32 6 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3240, i32 6 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3251, i32 7 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3259, i32 7 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3262, i32 7 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 3272, i32 7 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 237, i32 4 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1719, i32 7 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1841, i32 11 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1847, i32 11 }
@___asan_gen_.710 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.711 = private constant [35 x i8] c"../drivers/scsi/qla2xxx/qla_edif.c\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1610, i32 8 }
@___asan_gen_.713 = private unnamed_addr constant [36 x i8] c"switch.table.qla24xx_sa_update_iocb\00", align 1
@___asan_gen_.714 = private unnamed_addr constant [42 x i8] c"switch.table.qla28xx_sa_update_iocb_entry\00", align 1
@llvm.compiler.used = appending global [178 x ptr] [ptr @sc_str, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @qla_enode_init.__key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @qla_edb_init.__key, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @qla_edif_list_add_sa_update_index.__key, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @init_completion.__key, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @switch.table.qla24xx_sa_update_iocb, ptr @switch.table.qla28xx_sa_update_iocb_entry], section "llvm.metadata"
@0 = internal global [178 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc_str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_enode_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_edb_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 137, i32 192, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_edif_list_add_sa_update_index.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qla24xx_sa_update_iocb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qla28xx_sa_update_iocb_entry to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sc_to_str(i16 noundef zeroext %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %cmd)
  %0 = icmp ult i16 %cmd, 3
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.cast = zext i16 %cmd to i32
  %str = getelementptr %struct.els_sub_cmd, ptr @sc_str, i32 %switch.idx.cast, i32 1
  %1 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %str, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %switch.lookup ], [ @.str, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla_post_sa_replace_work(ptr noundef %vha, ptr noundef %fcport, i16 noundef zeroext %nport_handle, ptr noundef %sa_ctl) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @qla2x00_alloc_work(ptr noundef %vha, i32 noundef 26) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %u = getelementptr inbounds %struct.qla_work_evt, ptr %call, i32 0, i32 3
  %fcport1 = getelementptr inbounds %struct.qla_work_evt, ptr %call, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %fcport1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fcport, ptr %fcport1, align 4
  %1 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sa_ctl, ptr %u, align 4
  %nport_handle5 = getelementptr inbounds %struct.qla_work_evt, ptr %call, i32 0, i32 3, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %nport_handle5 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %nport_handle, ptr %nport_handle5, align 4
  %flags = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 35
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %or = or i32 %4, 32
  store i32 %or, ptr %flags, align 8
  %call6 = tail call i32 @qla2x00_post_work(ptr noundef %vha, ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ 258, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla2x00_alloc_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_post_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qla2x00_find_fcport_by_pid(ptr noundef %vha, ptr nocapture noundef readonly %id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vp_fcports = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %0 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vp_fcports, align 8
  %cmp.not36 = icmp eq ptr %1, %vp_fcports
  br i1 %cmp.not36, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %f.037 = phi ptr [ %tf.038, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %f.037 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tf.038 = load ptr, ptr %f.037, align 8
  %flags = getelementptr inbounds %struct.fc_port, ptr %f.037, i32 0, i32 35
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %node_name = getelementptr inbounds %struct.fc_port, ptr %f.037, i32 0, i32 4
  %port_name = getelementptr inbounds %struct.fc_port, ptr %f.037, i32 0, i32 5
  %d_id = getelementptr inbounds %struct.fc_port, ptr %f.037, i32 0, i32 6
  %5 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %d_id, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load8 = load i32, ptr %id, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %vha, i32 noundef 8280, ptr noundef nonnull @.str.1, ptr noundef %node_name, ptr noundef %port_name, i32 noundef %bf.lshr, i32 noundef %bf.lshr9) #12
  %7 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load11 = load i32, ptr %d_id, align 8
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load13 = load i32, ptr %id, align 4
  %cmp15.unshifted = xor i32 %bf.load13, %bf.load11
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp15.unshifted)
  %cmp15 = icmp ult i32 %cmp15.unshifted, 256
  br i1 %cmp15, label %if.then.cleanup_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tf.038, %vp_fcports
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %f.037, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dbg(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_release_all_sadb(ptr noundef %vha, ptr noundef %fcport) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %vha, i32 noundef 12387, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.qla2x00_release_all_sadb) #12
  %sadb_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 307
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sadb_lock) #12
  %sadb_rx_index_list = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 306
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in.in = phi ptr [ %sadb_rx_index_list, %entry ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp15.not = icmp eq ptr %.pn.in, %sadb_rx_index_list
  br i1 %cmp15.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %fcport17 = getelementptr i8, ptr %.pn.in, i32 -8
  %3 = ptrtoint ptr %fcport17 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fcport17, align 4
  %cmp18 = icmp eq ptr %4, %fcport
  br i1 %cmp18, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then:                                          ; preds = %for.body
  %entry1.0.le = getelementptr i8, ptr %.pn.in, i32 -24
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_lock, i32 noundef %call4) #12
  tail call fastcc void @__qla2x00_release_all_sadb(ptr noundef %vha, ptr noundef %fcport, ptr noundef %entry1.0.le, i32 noundef 0)
  tail call void @kfree(ptr noundef %entry1.0.le) #12
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sadb_lock) #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  %flags.0 = phi i32 [ %call31, %list_del.exit ], [ %call4, %for.cond.for.end_crit_edge ]
  %sadb_tx_index_list = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 305
  br label %for.cond50

for.cond50:                                       ; preds = %for.body56.for.cond50_crit_edge, %for.end
  %.pn117.in.in = phi ptr [ %sadb_tx_index_list, %for.end ], [ %.pn117.in, %for.body56.for.cond50_crit_edge ]
  %13 = ptrtoint ptr %.pn117.in.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn117.in = load ptr, ptr %.pn117.in.in, align 4
  %cmp53.not = icmp eq ptr %.pn117.in, %sadb_tx_index_list
  br i1 %cmp53.not, label %for.cond50.for.end84_crit_edge, label %for.body56

for.cond50.for.end84_crit_edge:                   ; preds = %for.cond50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end84

for.body56:                                       ; preds = %for.cond50
  %fcport57 = getelementptr i8, ptr %.pn117.in, i32 -8
  %14 = ptrtoint ptr %fcport57 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fcport57, align 4
  %cmp58 = icmp eq ptr %15, %fcport
  br i1 %cmp58, label %if.then60, label %for.body56.for.cond50_crit_edge

for.body56.for.cond50_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond50

if.then60:                                        ; preds = %for.body56
  %entry1.1.le = getelementptr i8, ptr %.pn117.in, i32 -24
  %call.i.i120 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn117.in) #12
  br i1 %call.i.i120, label %if.end.i.i123, label %if.then60.list_del.exit125_crit_edge

if.then60.list_del.exit125_crit_edge:             ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit125

if.end.i.i123:                                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i121 = getelementptr inbounds %struct.list_head, ptr %.pn117.in, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i121 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i121, align 4
  %18 = ptrtoint ptr %.pn117.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn117.in, align 4
  %prev1.i.i.i122 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i122, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit125

list_del.exit125:                                 ; preds = %if.end.i.i123, %if.then60.list_del.exit125_crit_edge
  %22 = ptrtoint ptr %.pn117.in to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn117.in, align 4
  %prev.i124 = getelementptr inbounds %struct.list_head, ptr %.pn117.in, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i124, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_lock, i32 noundef %flags.0) #12
  tail call fastcc void @__qla2x00_release_all_sadb(ptr noundef %vha, ptr noundef %fcport, ptr noundef %entry1.1.le, i32 noundef 2)
  tail call void @kfree(ptr noundef %entry1.1.le) #12
  %call72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sadb_lock) #12
  br label %for.end84

for.end84:                                        ; preds = %list_del.exit125, %for.cond50.for.end84_crit_edge
  %flags.1 = phi i32 [ %call72, %list_del.exit125 ], [ %flags.0, %for.cond50.for.end84_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_lock, i32 noundef %flags.1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__qla2x00_release_all_sadb(ptr noundef %vha, ptr noundef %fcport, ptr nocapture noundef readonly %entry1, i32 noundef %pdir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 7
  %handle = getelementptr inbounds %struct.edif_sa_index_entry, ptr %entry1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pdir)
  %cmp.i = icmp eq i32 %pdir, 2
  %tx_sa_list.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 10
  %rx_sa_list.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 11
  %sa_list.0.i = select i1 %cmp.i, ptr %tx_sa_list.i, ptr %rx_sa_list.i
  %sa_list_lock.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 12
  %rx_rekey_cnt.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 2
  %tx_rekey_cnt.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 1
  %vha1.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 1
  %edif_indx_list.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 8
  %indx_list_lock.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 9
  %edif = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %key_cnt.0165 = phi i32 [ 0, %entry ], [ %key_cnt.1, %for.inc.for.body_crit_edge ]
  %i.0164 = phi i32 [ 0, %entry ], [ %inc67, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.sa_index_pair], ptr %entry1, i32 0, i32 %i.0164
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp2 = icmp eq i16 %1, -1
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %loop_id, align 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %handle, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp6.not = icmp eq i16 %3, %5
  br i1 %cmp6.not, label %if.end.if.end17_crit_edge, label %if.then8

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv5 = zext i16 %5 to i32
  %conv4 = zext i16 %3 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 12387, ptr noundef nonnull @.str.97, ptr noundef nonnull @__func__.__qla2x00_release_all_sadb, i32 noundef %i.0164, i32 noundef %conv5, i32 noundef %conv4, i32 noundef %conv) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then8, %if.end.if.end17_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %sa_list.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sa_list.0.i, align 4
  %cmp8.not29.i = icmp eq ptr %9, %sa_list.0.i
  br i1 %cmp8.not29.i, label %if.end17.if.else_crit_edge, label %if.end17.for.body.i_crit_edge

if.end17.for.body.i_crit_edge:                    ; preds = %if.end17
  br label %for.body.i

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end17.for.body.i_crit_edge
  %sa_ctl.030.i = phi ptr [ %tsa_ctl.031.i, %for.inc.i.for.body.i_crit_edge ], [ %9, %if.end17.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %sa_ctl.030.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %tsa_ctl.031.i = load ptr, ptr %sa_ctl.030.i, align 4
  %state.i = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 5
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index9.i = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 2
  %14 = ptrtoint ptr %index9.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %index9.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %7)
  %cmp10.i = icmp eq i16 %15, %7
  br i1 %cmp10.i, label %qla_edif_find_sa_ctl_by_index.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp8.not.i = icmp eq ptr %tsa_ctl.031.i, %sa_list.0.i
  br i1 %cmp8.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

qla_edif_find_sa_ctl_by_index.exit:               ; preds = %land.lhs.true.i
  %index9.i.le = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 2
  %tobool.not = icmp eq ptr %sa_ctl.030.i, null
  br i1 %tobool.not, label %qla_edif_find_sa_ctl_by_index.exit.if.else_crit_edge, label %for.body.i132.preheader

qla_edif_find_sa_ctl_by_index.exit.if.else_crit_edge: ; preds = %qla_edif_find_sa_ctl_by_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

for.body.i132.preheader:                          ; preds = %qla_edif_find_sa_ctl_by_index.exit
  %16 = ptrtoint ptr %index9.i.le to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %index9.i.le, align 2
  %conv22 = zext i16 %17 to i32
  br label %for.body.i132

for.body.i132:                                    ; preds = %for.inc.i138.for.body.i132_crit_edge, %for.body.i132.preheader
  %sa_ctl.030.i128 = phi ptr [ %tsa_ctl.031.i129, %for.inc.i138.for.body.i132_crit_edge ], [ %9, %for.body.i132.preheader ]
  %18 = ptrtoint ptr %sa_ctl.030.i128 to i32
  call void @__asan_load4_noabort(i32 %18)
  %tsa_ctl.031.i129 = load ptr, ptr %sa_ctl.030.i128, align 4
  %state.i130 = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i128, i32 0, i32 5
  %19 = ptrtoint ptr %state.i130 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i130, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i131 = icmp eq i32 %21, 0
  br i1 %tobool.not.i131, label %for.body.i132.for.inc.i138_crit_edge, label %land.lhs.true.i136

for.body.i132.for.inc.i138_crit_edge:             ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i138

land.lhs.true.i136:                               ; preds = %for.body.i132
  %index9.i133 = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i128, i32 0, i32 2
  %22 = ptrtoint ptr %index9.i133 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %index9.i133, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %17)
  %cmp10.i135 = icmp eq i16 %23, %17
  br i1 %cmp10.i135, label %qla_edif_find_sa_ctl_by_index.exit140, label %land.lhs.true.i136.for.inc.i138_crit_edge

land.lhs.true.i136.for.inc.i138_crit_edge:        ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i138

for.inc.i138:                                     ; preds = %land.lhs.true.i136.for.inc.i138_crit_edge, %for.body.i132.for.inc.i138_crit_edge
  %cmp8.not.i137 = icmp eq ptr %tsa_ctl.031.i129, %sa_list.0.i
  br i1 %cmp8.not.i137, label %for.inc.i138.if.else_crit_edge, label %for.inc.i138.for.body.i132_crit_edge

for.inc.i138.for.body.i132_crit_edge:             ; preds = %for.inc.i138
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i132

for.inc.i138.if.else_crit_edge:                   ; preds = %for.inc.i138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

qla_edif_find_sa_ctl_by_index.exit140:            ; preds = %land.lhs.true.i136
  %tobool24.not = icmp eq ptr %sa_ctl.030.i128, null
  br i1 %tobool24.not, label %qla_edif_find_sa_ctl_by_index.exit140.if.else_crit_edge, label %if.then25

qla_edif_find_sa_ctl_by_index.exit140.if.else_crit_edge: ; preds = %qla_edif_find_sa_ctl_by_index.exit140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then25:                                        ; preds = %qla_edif_find_sa_ctl_by_index.exit140
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 12387, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.__qla2x00_release_all_sadb, i32 noundef %conv22) #12
  %24 = ptrtoint ptr %index9.i.le to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %index9.i.le, align 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sa_list_lock.i) #12
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %sa_ctl.030.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then25.list_del.exit.i_crit_edge

if.then25.list_del.exit.i_crit_edge:              ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %sa_ctl.030.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %sa_ctl.030.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sa_ctl.030.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then25.list_del.exit.i_crit_edge
  %32 = ptrtoint ptr %sa_ctl.030.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %sa_ctl.030.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sa_ctl.030.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sa_list_lock.i, i32 noundef %call2.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %25)
  %cmp7.i = icmp ugt i16 %25, 511
  br i1 %cmp7.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %tx_rekey_cnt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_rekey_cnt.i, align 4
  %dec.i = add i32 %35, -1
  store i32 %dec.i, ptr %tx_rekey_cnt.i, align 4
  br label %qla_edif_free_sa_ctl.exit

if.else.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %rx_rekey_cnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_rekey_cnt.i, align 8
  %dec11.i = add i32 %37, -1
  store i32 %dec11.i, ptr %rx_rekey_cnt.i, align 8
  br label %qla_edif_free_sa_ctl.exit

qla_edif_free_sa_ctl.exit:                        ; preds = %if.else.i, %if.then.i
  tail call void @kfree(ptr noundef nonnull %sa_ctl.030.i) #12
  br label %if.end30

if.else:                                          ; preds = %qla_edif_find_sa_ctl_by_index.exit140.if.else_crit_edge, %for.inc.i138.if.else_crit_edge, %qla_edif_find_sa_ctl_by_index.exit.if.else_crit_edge, %for.inc.i.if.else_crit_edge, %if.end17.if.else_crit_edge
  %retval.0.i153 = phi ptr [ %sa_ctl.030.i, %qla_edif_find_sa_ctl_by_index.exit140.if.else_crit_edge ], [ null, %qla_edif_find_sa_ctl_by_index.exit.if.else_crit_edge ], [ null, %if.end17.if.else_crit_edge ], [ %sa_ctl.030.i, %for.inc.i138.if.else_crit_edge ], [ null, %for.inc.i.if.else_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 12387, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.__qla2x00_release_all_sadb, ptr noundef %retval.0.i153) #12
  br label %if.end30

if.end30:                                         ; preds = %if.else, %qla_edif_free_sa_ctl.exit
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx, align 4
  %conv34 = zext i16 %39 to i32
  %40 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %handle, align 4
  %conv36 = zext i16 %41 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 12387, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.__qla2x00_release_all_sadb, i32 noundef %conv34, i32 noundef %conv36) #12
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %43)
  %cmp41 = icmp ult i16 %43, 512
  %44 = ptrtoint ptr %vha1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vha1.i, align 8
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %45, i32 0, i32 52
  %46 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %45, i32 noundef 12387, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.qla_edif_add_sa_index_to_freepool) #12
  %edif_tx_sa_id_map.i = getelementptr inbounds %struct.qla_hw_data, ptr %47, i32 0, i32 303
  %sub.i = add i16 %43, -512
  %edif_rx_sa_id_map.i = getelementptr inbounds %struct.qla_hw_data, ptr %47, i32 0, i32 302
  %lsa_index.0.i = select i1 %cmp41, i16 %43, i16 %sub.i
  %sa_id_map.0.in.i = select i1 %cmp41, ptr %edif_rx_sa_id_map.i, ptr %edif_tx_sa_id_map.i
  %48 = ptrtoint ptr %sa_id_map.0.in.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %sa_id_map.0.i = load ptr, ptr %sa_id_map.0.in.i, align 4
  %sadb_fp_lock.i = getelementptr inbounds %struct.qla_hw_data, ptr %47, i32 0, i32 304
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sadb_fp_lock.i) #12
  %conv8.i = zext i16 %lsa_index.0.i to i32
  tail call void @_clear_bit(i32 noundef %conv8.i, ptr noundef %sa_id_map.0.i) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_fp_lock.i, i32 noundef %call5.i) #12
  %conv10.i = zext i16 %43 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %45, i32 noundef 12387, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.qla_edif_add_sa_index_to_freepool, i32 noundef %conv10.i) #12
  br i1 %cmp.i, label %if.end30.if.end66_crit_edge, label %if.then48

if.end30.if.end66_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then48:                                        ; preds = %if.end30
  %49 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %handle, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i143.for.cond.i_crit_edge, %if.then48
  %.pn.in.in.i = phi ptr [ %edif_indx_list.i, %if.then48 ], [ %.pn.in.i, %for.body.i143.for.cond.i_crit_edge ]
  %51 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.in.i, %edif_indx_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end66_crit_edge, label %for.body.i143

for.cond.i.if.end66_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

for.body.i143:                                    ; preds = %for.cond.i
  %entry1.0.i = getelementptr i8, ptr %.pn.in.i, i32 -72
  %52 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %entry1.0.i, align 4
  %cmp10.i142 = icmp eq i16 %53, %50
  br i1 %cmp10.i142, label %qla_edif_list_find_sa_index.exit, label %for.body.i143.for.cond.i_crit_edge

for.body.i143.for.cond.i_crit_edge:               ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

qla_edif_list_find_sa_index.exit:                 ; preds = %for.body.i143
  %entry1.0.i.le = getelementptr i8, ptr %.pn.in.i, i32 -72
  %tobool51.not = icmp eq ptr %entry1.0.i.le, null
  br i1 %tobool51.not, label %qla_edif_list_find_sa_index.exit.if.end66_crit_edge, label %if.then52

qla_edif_list_find_sa_index.exit.if.end66_crit_edge: ; preds = %qla_edif_list_find_sa_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then52:                                        ; preds = %qla_edif_list_find_sa_index.exit
  %update_sa_index = getelementptr i8, ptr %.pn.in.i, i32 -68
  %54 = ptrtoint ptr %update_sa_index to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %update_sa_index, align 4
  %delete_sa_index = getelementptr i8, ptr %.pn.in.i, i32 -64
  %56 = ptrtoint ptr %delete_sa_index to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %delete_sa_index, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 20531, ptr noundef nonnull @.str.98, ptr noundef nonnull @__func__.__qla2x00_release_all_sadb, ptr noundef nonnull %entry1.0.i.le, i32 noundef %55, i32 noundef %57) #12
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %indx_list_lock.i) #12
  %call.i.i.i145 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #12
  br i1 %call.i.i.i145, label %if.end.i.i.i148, label %if.then52.qla_edif_list_delete_sa_index.exit_crit_edge

if.then52.qla_edif_list_delete_sa_index.exit_crit_edge: ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla_edif_list_delete_sa_index.exit

if.end.i.i.i148:                                  ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i146 = getelementptr i8, ptr %.pn.in.i, i32 4
  %58 = ptrtoint ptr %prev.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i.i146, align 4
  %60 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i147 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i.i147 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i.i147, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %qla_edif_list_delete_sa_index.exit

qla_edif_list_delete_sa_index.exit:               ; preds = %if.end.i.i.i148, %if.then52.qla_edif_list_delete_sa_index.exit_crit_edge
  %64 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i, align 4
  %prev.i.i149 = getelementptr i8, ptr %.pn.in.i, i32 4
  %65 = ptrtoint ptr %prev.i.i149 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i149, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %indx_list_lock.i, i32 noundef %call3.i) #12
  %66 = ptrtoint ptr %delete_sa_index to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %delete_sa_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %67)
  %cmp54.not = icmp eq i32 %67, 65535
  br i1 %cmp54.not, label %qla_edif_list_delete_sa_index.exit.if.end62_crit_edge, label %if.then56

qla_edif_list_delete_sa_index.exit.if.end62_crit_edge: ; preds = %qla_edif_list_delete_sa_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then56:                                        ; preds = %qla_edif_list_delete_sa_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  %timer = getelementptr i8, ptr %.pn.in.i, i32 -48
  %call57 = tail call i32 @del_timer(ptr noundef %timer) #12
  %68 = ptrtoint ptr %edif to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load = load i16, ptr %edif, align 8
  %bf.set = and i16 %bf.load, -321
  %bf.clear60 = or i16 %bf.set, 256
  store i16 %bf.clear60, ptr %edif, align 8
  tail call void @qla_edb_eventcreate(ptr noundef %vha, i32 noundef 4, i32 noundef 0, i32 noundef 1, ptr noundef %fcport)
  br label %if.end62

if.end62:                                         ; preds = %if.then56, %qla_edif_list_delete_sa_index.exit.if.end62_crit_edge
  %69 = ptrtoint ptr %update_sa_index to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %update_sa_index, align 4
  %71 = ptrtoint ptr %delete_sa_index to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %delete_sa_index, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 20531, ptr noundef nonnull @.str.99, ptr noundef nonnull @__func__.__qla2x00_release_all_sadb, ptr noundef nonnull %entry1.0.i.le, i32 noundef %70, i32 noundef %72) #12
  tail call void @kfree(ptr noundef nonnull %entry1.0.i.le) #12
  br label %if.end66

if.end66:                                         ; preds = %if.end62, %qla_edif_list_find_sa_index.exit.if.end66_crit_edge, %for.cond.i.if.end66_crit_edge, %if.end30.if.end66_crit_edge
  %inc = add i32 %key_cnt.0165, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end66, %for.body.for.inc_crit_edge
  %key_cnt.1 = phi i32 [ %key_cnt.0165, %for.body.for.inc_crit_edge ], [ %inc, %if.end66 ]
  %inc67 = add nuw nsw i32 %i.0164, 1
  %exitcond.not = icmp eq i32 %inc67, 2
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pdir)
  %tobool68.not = icmp eq i32 %pdir, 0
  %cond69 = select i1 %tobool68.not, ptr @.str.102, ptr @.str.101
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 12387, ptr noundef nonnull @.str.100, ptr noundef nonnull @__func__.__qla2x00_release_all_sadb, i32 noundef %key_cnt.1, ptr noundef nonnull %cond69) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla_edif_app_mgmt(ptr noundef %bsg_job) local_unnamed_addr #2 align 64 {
entry:
  %appcheck = alloca %struct.app_id, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %request = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 3
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request, align 4
  %reply = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %2 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reply, align 4
  %4 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsg_job, align 4
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %6 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i, label %if.end.i, label %entry.while.cond.i.i_crit_edge

entry.while.cond.i.i_crit_edge:                   ; preds = %entry
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry.while.cond.i.i_crit_edge
  %dev.addr.0.i.i = phi ptr [ %9, %while.body.i.i.while.cond.i.i_crit_edge ], [ %7, %entry.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.fc_bsg_to_shost.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

while.body.i.i.fc_bsg_to_shost.exit_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_bsg_to_shost.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %fc_bsg_to_shost.exit

if.end.i:                                         ; preds = %entry
  %parent.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  br label %while.cond.i11.i

while.cond.i11.i:                                 ; preds = %while.body.i14.i.while.cond.i11.i_crit_edge, %if.end.i
  %dev.addr.0.i8.i = phi ptr [ %11, %if.end.i ], [ %13, %while.body.i14.i.while.cond.i11.i_crit_edge ]
  %call.i9.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool.not.i10.i, label %while.body.i14.i, label %while.end.i16.i

while.body.i14.i:                                 ; preds = %while.cond.i11.i
  %parent.i12.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i, i32 0, i32 1
  %12 = ptrtoint ptr %parent.i12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i12.i, align 8
  %tobool1.not.i13.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i13.i, label %while.body.i14.i.fc_bsg_to_shost.exit_crit_edge, label %while.body.i14.i.while.cond.i11.i_crit_edge

while.body.i14.i.while.cond.i11.i_crit_edge:      ; preds = %while.body.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i11.i

while.body.i14.i.fc_bsg_to_shost.exit_crit_edge:  ; preds = %while.body.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_bsg_to_shost.exit

while.end.i16.i:                                  ; preds = %while.cond.i11.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i15.i = getelementptr i8, ptr %dev.addr.0.i8.i, i32 -584
  br label %fc_bsg_to_shost.exit

fc_bsg_to_shost.exit:                             ; preds = %while.end.i16.i, %while.body.i14.i.fc_bsg_to_shost.exit_crit_edge, %while.end.i.i, %while.body.i.i.fc_bsg_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ %add.ptr.i15.i, %while.end.i16.i ], [ null, %while.body.i14.i.fc_bsg_to_shost.exit_crit_edge ], [ null, %while.body.i.i.fc_bsg_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %appcheck) #12
  %14 = call ptr @memset(ptr %appcheck, i32 255, i32 36)
  %arrayidx = getelementptr %struct.fc_bsg_request, ptr %1, i32 0, i32 1, i32 1, i32 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %arrayidx, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.qla_edif_app_mgmt, i32 noundef %16) #12
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sg_cnt, align 4
  %call3 = call i32 @sg_copy_to_buffer(ptr noundef %18, i32 noundef %20, ptr noundef nonnull %appcheck, i32 noundef 36) #12
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 2
  %23 = getelementptr inbounds i32, ptr %flags, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load = load volatile i32, ptr %23, align 4
  %25 = and i32 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %fc_bsg_to_shost.exit.if.then_crit_edge, label %lor.lhs.false

fc_bsg_to_shost.exit.if.then_crit_edge:           ; preds = %fc_bsg_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %fc_bsg_to_shost.exit
  %arrayidx.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 3
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool5.not = icmp eq i32 %28, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %fc_bsg_to_shost.exit.if.then_crit_edge
  %dpc_flags6 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 2
  %29 = ptrtoint ptr %dpc_flags6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dpc_flags6, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.qla_edif_app_mgmt, ptr noundef %bsg_job, i32 noundef %30) #12
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 458752, ptr %3, align 4
  br label %if.then29

if.end:                                           ; preds = %lor.lhs.false
  %32 = ptrtoint ptr %appcheck to i32
  call void @__asan_load4_noabort(i32 %32)
  %.fca.0.load = load i32, ptr %appcheck, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1936916481, i32 %.fca.0.load)
  %cmp.i = icmp eq i32 %.fca.0.load, 1936916481
  br i1 %cmp.i, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.106, ptr noundef nonnull @__func__.qla_edif_app_check, i32 noundef %.fca.0.load) #12
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla_edif_app_mgmt) #12
  %reply_len = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %33 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %reply_len, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 458752, ptr %3, align 4
  br label %if.then29

if.end10:                                         ; preds = %if.end
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.105, ptr noundef nonnull @__func__.qla_edif_app_check) #12
  %35 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 3, label %sw.bb14
    i32 4, label %sw.bb16
    i32 5, label %sw.bb18
    i32 7, label %sw.bb20
    i32 8, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = call i32 @qla24xx_sadb_update(ptr noundef %bsg_job)
  br label %if.end31

sw.bb12:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @qla_edif_app_start(ptr noundef %hostdata.i, ptr noundef %bsg_job)
  br label %if.then29

sw.bb14:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @qla_edif_app_stop(ptr noundef %hostdata.i, ptr noundef %bsg_job)
  br label %if.then29

sw.bb16:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @qla_edif_app_authok(ptr noundef %hostdata.i, ptr noundef %bsg_job)
  br label %if.then29

sw.bb18:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = call fastcc i32 @qla_edif_app_authfail(ptr noundef %hostdata.i, ptr noundef %bsg_job)
  br label %if.then29

sw.bb20:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = call fastcc i32 @qla_edif_app_getfcinfo(ptr noundef %hostdata.i, ptr noundef %bsg_job)
  br label %if.then29

sw.bb22:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call23 = call fastcc i32 @qla_edif_app_getstats(ptr noundef %hostdata.i, ptr noundef %bsg_job)
  br label %if.then29

sw.default:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %arrayidx, align 1
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.qla_edif_app_mgmt, i32 noundef %37) #12
  br label %if.end31

if.then29:                                        ; preds = %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %if.then8, %if.then
  %rval.0.ph = phi i32 [ 0, %if.then8 ], [ 0, %sw.bb12 ], [ 0, %sw.bb14 ], [ 0, %sw.bb16 ], [ %call19, %sw.bb18 ], [ %call21, %sw.bb20 ], [ %call23, %sw.bb22 ], [ 0, %if.then ]
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i, i32 noundef 28681, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.qla_edif_app_mgmt, i32 noundef 1080, ptr noundef %bsg_job) #12
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %3, align 4
  %reply_payload_rcv_len = getelementptr inbounds %struct.fc_bsg_reply, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reply_payload_rcv_len, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %39, i32 noundef %41) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %sw.default, %sw.bb
  %rval.069 = phi i32 [ %rval.0.ph, %if.then29 ], [ 6, %sw.default ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %appcheck) #12
  ret i32 %rval.069
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_sadb_update(ptr noundef %bsg_job) local_unnamed_addr #2 align 64 {
entry:
  %sa_frame = alloca %struct.qla_sa_update_frame, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reply = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %0 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply, align 4
  %2 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsg_job, align 4
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %4 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i, label %if.end.i, label %entry.while.cond.i.i_crit_edge

entry.while.cond.i.i_crit_edge:                   ; preds = %entry
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry.while.cond.i.i_crit_edge
  %dev.addr.0.i.i = phi ptr [ %7, %while.body.i.i.while.cond.i.i_crit_edge ], [ %5, %entry.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.fc_bsg_to_shost.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

while.body.i.i.fc_bsg_to_shost.exit_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_bsg_to_shost.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %fc_bsg_to_shost.exit

if.end.i:                                         ; preds = %entry
  %parent.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  br label %while.cond.i11.i

while.cond.i11.i:                                 ; preds = %while.body.i14.i.while.cond.i11.i_crit_edge, %if.end.i
  %dev.addr.0.i8.i = phi ptr [ %9, %if.end.i ], [ %11, %while.body.i14.i.while.cond.i11.i_crit_edge ]
  %call.i9.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool.not.i10.i, label %while.body.i14.i, label %while.end.i16.i

while.body.i14.i:                                 ; preds = %while.cond.i11.i
  %parent.i12.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i12.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i12.i, align 8
  %tobool1.not.i13.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i13.i, label %while.body.i14.i.fc_bsg_to_shost.exit_crit_edge, label %while.body.i14.i.while.cond.i11.i_crit_edge

while.body.i14.i.while.cond.i11.i_crit_edge:      ; preds = %while.body.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i11.i

while.body.i14.i.fc_bsg_to_shost.exit_crit_edge:  ; preds = %while.body.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_bsg_to_shost.exit

while.end.i16.i:                                  ; preds = %while.cond.i11.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i15.i = getelementptr i8, ptr %dev.addr.0.i8.i, i32 -584
  br label %fc_bsg_to_shost.exit

fc_bsg_to_shost.exit:                             ; preds = %while.end.i16.i, %while.body.i14.i.fc_bsg_to_shost.exit_crit_edge, %while.end.i.i, %while.body.i.i.fc_bsg_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ %add.ptr.i15.i, %while.end.i16.i ], [ null, %while.body.i14.i.fc_bsg_to_shost.exit_crit_edge ], [ null, %while.body.i.i.fc_bsg_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %sa_frame) #12
  %12 = call ptr @memset(ptr %sa_frame, i32 255, i32 100)
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.qla24xx_sadb_update, ptr noundef %hostdata.i) #12
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sg_cnt, align 4
  %call3 = call i32 @sg_copy_to_buffer(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %sa_frame, i32 noundef 100) #12
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load = load volatile i32, ptr %flags, align 8
  %18 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %fc_bsg_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28833, ptr noundef nonnull @.str.9) #12
  br label %done190

if.end:                                           ; preds = %fc_bsg_to_shost.exit
  %e_dbell = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 2, i32 3, i32 0, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %e_dbell to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %e_dbell, align 8
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28833, ptr noundef nonnull @.str.10) #12
  br label %done190

if.end8:                                          ; preds = %if.end
  %port_id = getelementptr inbounds %struct.qla_sa_update_frame, ptr %sa_frame, i32 0, i32 8
  %vp_fcports.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 1
  %21 = ptrtoint ptr %vp_fcports.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vp_fcports.i, align 8
  %cmp.not36.i = icmp eq ptr %22, %vp_fcports.i
  br i1 %cmp.not36.i, label %if.end8.if.then25.critedge_crit_edge, label %if.end8.for.body.i_crit_edge

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

if.end8.if.then25.critedge_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.critedge

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %f.037.i = phi ptr [ %tf.038.i, %for.inc.i.for.body.i_crit_edge ], [ %22, %if.end8.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %f.037.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %tf.038.i = load ptr, ptr %f.037.i, align 8
  %flags.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 35
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i322 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i322, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %node_name.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 4
  %port_name.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 5
  %d_id.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 6
  %26 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i = load i32, ptr %d_id.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 8
  %27 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load8.i = load i32, ptr %port_id, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %hostdata.i, i32 noundef 8280, ptr noundef nonnull @.str.1, ptr noundef %node_name.i, ptr noundef %port_name.i, i32 noundef %bf.lshr.i, i32 noundef %bf.lshr9.i) #12
  %28 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load11.i = load i32, ptr %d_id.i, align 8
  %29 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load13.i = load i32, ptr %port_id, align 4
  %cmp15.unshifted.i = xor i32 %bf.load13.i, %bf.load11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp15.unshifted.i)
  %cmp15.i = icmp ult i32 %cmp15.unshifted.i, 256
  br i1 %cmp15.i, label %qla2x00_find_fcport_by_pid.exit, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tf.038.i, %vp_fcports.i
  br i1 %cmp.not.i, label %for.inc.i.if.then25.critedge_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.then25.critedge_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.critedge

qla2x00_find_fcport_by_pid.exit:                  ; preds = %if.then.i
  %tobool10.not = icmp eq ptr %f.037.i, null
  br i1 %tobool10.not, label %qla2x00_find_fcport_by_pid.exit.if.then25.critedge_crit_edge, label %if.then11

qla2x00_find_fcport_by_pid.exit.if.then25.critedge_crit_edge: ; preds = %qla2x00_find_fcport_by_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.critedge

if.then11:                                        ; preds = %qla2x00_find_fcport_by_pid.exit
  %flags12 = getelementptr inbounds %struct.qla_sa_update_frame, ptr %sa_frame, i32 0, i32 1
  %30 = ptrtoint ptr %flags12 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %flags12, align 1
  %32 = zext i16 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.171)
  switch i16 %31, label %if.then11.if.end30_crit_edge [
    i16 2, label %if.end15.thread
    i16 0, label %if.then20
  ]

if.then11.if.end30_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.end15.thread:                                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %tx_bytes = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 3
  br label %if.end30.sink.split

if.then20:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %rx_bytes = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 4
  br label %if.end30.sink.split

if.then25.critedge:                               ; preds = %qla2x00_find_fcport_by_pid.exit.if.then25.critedge_crit_edge, %for.inc.i.if.then25.critedge_crit_edge, %if.end8.if.then25.critedge_crit_edge
  %33 = ptrtoint ptr %port_id to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %bf.load27 = load i32, ptr %port_id, align 1
  %bf.lshr28 = lshr i32 %bf.load27, 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 28835, ptr noundef nonnull @.str.11, i32 noundef %bf.lshr28) #12
  br label %done190

if.end30.sink.split:                              ; preds = %if.then20, %if.end15.thread
  %tx_bytes.sink = phi ptr [ %tx_bytes, %if.end15.thread ], [ %rx_bytes, %if.then20 ]
  %34 = ptrtoint ptr %tx_bytes.sink to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %tx_bytes.sink, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.then11.if.end30_crit_edge
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 7
  %35 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %loop_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %36)
  %cmp32 = icmp eq i16 %36, 4096
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %spi = getelementptr inbounds %struct.qla_sa_update_frame, ptr %sa_frame, i32 0, i32 4
  %37 = ptrtoint ptr %spi to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %spi, align 1
  %disc_state = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 50
  %39 = ptrtoint ptr %disc_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %disc_state, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 28897, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.qla24xx_sadb_update, ptr noundef %port_name.i, i32 noundef %38, i32 noundef %40) #12
  br label %done190

if.end36:                                         ; preds = %if.end30
  %41 = and i16 %31, 2
  %and.i325 = zext i16 %41 to i32
  %vha2.i.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 1
  %42 = ptrtoint ptr %vha2.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vha2.i.i, align 8
  %hw.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %43, i32 0, i32 52
  %44 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw.i.i, align 4
  %conv4.i.i = zext i16 %36 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %43, i32 noundef 12387, ptr noundef nonnull @.str.138, ptr noundef nonnull @__func__.qla_edif_sadb_get_sa_index, ptr noundef nonnull %f.037.i, i32 noundef %conv4.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i.i326 = icmp eq i16 %41, 0
  %sadb_tx_index_list.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %45, i32 0, i32 305
  %sadb_rx_index_list.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %45, i32 0, i32 306
  %sa_list.0.i.i = select i1 %tobool.not.i.i326, ptr %sadb_rx_index_list.i.i, ptr %sadb_tx_index_list.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end36
  %.pn.in.in.i.i.i = phi ptr [ %sa_list.0.i.i, %if.end36 ], [ %.pn.in.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %46 = ptrtoint ptr %.pn.in.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.in.i.i.i = load ptr, ptr %.pn.in.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.in.i.i.i, %sa_list.0.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.if.then6.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.then6.i.i_crit_edge:            ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %handle.i.i.i = getelementptr i8, ptr %.pn.in.i.i.i, i32 -4
  %47 = ptrtoint ptr %handle.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %handle.i.i.i, align 4
  %cmp9.i.i.i = icmp eq i16 %48, %36
  br i1 %cmp9.i.i.i, label %qla_edif_sadb_find_sa_index_entry.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i

qla_edif_sadb_find_sa_index_entry.exit.i.i:       ; preds = %for.body.i.i.i
  %handle.i.i.i.le = getelementptr i8, ptr %.pn.in.i.i.i, i32 -4
  %entry1.0.le.i.i.i = getelementptr i8, ptr %.pn.in.i.i.i, i32 -24
  %tobool5.not.i.i = icmp eq ptr %entry1.0.le.i.i.i, null
  br i1 %tobool5.not.i.i, label %qla_edif_sadb_find_sa_index_entry.exit.i.i.if.then6.i.i_crit_edge, label %do.body48.i.i

qla_edif_sadb_find_sa_index_entry.exit.i.i.if.then6.i.i_crit_edge: ; preds = %qla_edif_sadb_find_sa_index_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.i.i

if.then6.i.i:                                     ; preds = %qla_edif_sadb_find_sa_index_entry.exit.i.i.if.then6.i.i_crit_edge, %for.cond.i.i.i.if.then6.i.i_crit_edge
  %49 = ptrtoint ptr %flags12 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %flags12, align 1
  %51 = and i16 %50, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %51)
  %cmp.i.i = icmp eq i16 %51, 1
  br i1 %cmp.i.i, label %qla_edif_sadb_get_sa_index.exit.thread7.i, label %if.end12.i.i

qla_edif_sadb_get_sa_index.exit.thread7.i:        ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %43, i32 noundef 12387, ptr noundef nonnull @.str.139, ptr noundef nonnull @__func__.qla_edif_sadb_get_sa_index) #12
  br label %if.then46

if.end12.i.i:                                     ; preds = %if.then6.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 2848, i32 noundef 32) #15
  %tobool14.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool14.not.i.i, label %if.end12.i.i.if.then40_crit_edge, label %if.end16.i.i

if.end12.i.i.if.then40_crit_edge:                 ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40

if.end16.i.i:                                     ; preds = %if.end12.i.i
  %call17.i.i = call fastcc zeroext i16 @qla_edif_get_sa_index_from_freepool(ptr noundef %f.037.i, i32 noundef %and.i325) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call17.i.i)
  %cmp19.i.i = icmp eq i16 %call17.i.i, -1
  br i1 %cmp19.i.i, label %if.then21.i.i, label %if.end22.i.i

if.then21.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %if.then40

if.end22.i.i:                                     ; preds = %if.end16.i.i
  %conv18.i.i = zext i16 %call17.i.i to i32
  %next.i.i = getelementptr inbounds %struct.edif_sa_index_entry, ptr %call7.i.i.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %next.i.i, ptr %next.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.edif_sa_index_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %next.i.i, ptr %prev.i.i.i, align 4
  %handle.i.i = getelementptr inbounds %struct.edif_sa_index_entry, ptr %call7.i.i.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %36, ptr %handle.i.i, align 4
  %fcport23.i.i = getelementptr inbounds %struct.edif_sa_index_entry, ptr %call7.i.i.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %fcport23.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %f.037.i, ptr %fcport23.i.i, align 8
  %spi.i.i = getelementptr inbounds %struct.qla_sa_update_frame, ptr %sa_frame, i32 0, i32 4
  %57 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %spi.i.i, align 1
  %spi24.i.i = getelementptr inbounds %struct.sa_index_pair, ptr %call7.i.i.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %spi24.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %spi24.i.i, align 4
  %60 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %call17.i.i, ptr %call7.i.i.i.i, align 8
  %arrayidx29.i.i = getelementptr [2 x %struct.sa_index_pair], ptr %call7.i.i.i.i, i32 0, i32 1
  %spi30.i.i = getelementptr [2 x %struct.sa_index_pair], ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %spi30.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %spi30.i.i, align 4
  %62 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -1, ptr %arrayidx29.i.i, align 8
  %sadb_lock.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %45, i32 0, i32 307
  %call38.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %sadb_lock.i.i) #12
  %prev.i234.i.i = getelementptr inbounds %struct.list_head, ptr %sa_list.0.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i234.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i234.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %next.i.i, ptr noundef %64, ptr noundef %sa_list.0.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end22.i.i.list_add_tail.exit.i.i_crit_edge

if.end22.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %prev.i234.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %next.i.i, ptr %prev.i234.i.i, align 4
  %66 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %sa_list.0.i.i, ptr %next.i.i, align 8
  %67 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %next.i.i, ptr %64, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end22.i.i.list_add_tail.exit.i.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_lock.i.i, i32 noundef %call38.i.i) #12
  %69 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %spi.i.i, align 1
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %43, i32 noundef 12387, ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.qla_edif_sadb_get_sa_index, i32 noundef %conv4.i.i, i32 noundef %70, i32 noundef %conv18.i.i) #12
  br label %qla_edif_sadb_get_sa_index.exit.i

do.body48.i.i:                                    ; preds = %qla_edif_sadb_find_sa_index_entry.exit.i.i
  %sadb_lock54.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %45, i32 0, i32 307
  %call56.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %sadb_lock54.i.i) #12
  %spi74.i.i = getelementptr inbounds %struct.qla_sa_update_frame, ptr %sa_frame, i32 0, i32 4
  %71 = ptrtoint ptr %entry1.0.le.i.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %entry1.0.le.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %72)
  %cmp67.i.i = icmp eq i16 %72, -1
  br i1 %cmp67.i.i, label %do.body48.i.i.for.inc.i.i_crit_edge, label %if.else70.i.i

do.body48.i.i.for.inc.i.i_crit_edge:              ; preds = %do.body48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.else70.i.i:                                    ; preds = %do.body48.i.i
  %spi73.i.i = getelementptr i8, ptr %.pn.in.i.i.i, i32 -20
  %73 = ptrtoint ptr %spi73.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %spi73.i.i, align 4
  %75 = ptrtoint ptr %spi74.i.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %spi74.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp75.i.i = icmp eq i32 %74, %76
  br i1 %cmp75.i.i, label %if.else70.i.i.if.then77.i.i_crit_edge, label %if.else70.i.i.for.inc.i.i_crit_edge

if.else70.i.i.for.inc.i.i_crit_edge:              ; preds = %if.else70.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.else70.i.i.if.then77.i.i_crit_edge:            ; preds = %if.else70.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then77.i.i

if.then77.i.i:                                    ; preds = %if.else70.1.i.i.if.then77.i.i_crit_edge, %if.else70.i.i.if.then77.i.i_crit_edge
  %slot.0240.lcssa.i.i = phi i32 [ 0, %if.else70.i.i.if.then77.i.i_crit_edge ], [ 1, %if.else70.1.i.i.if.then77.i.i_crit_edge ]
  %arrayidx64.lcssa.i.i = phi ptr [ %entry1.0.le.i.i.i, %if.else70.i.i.if.then77.i.i_crit_edge ], [ %arrayidx64.1.i.i, %if.else70.1.i.i.if.then77.i.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_lock54.i.i, i32 noundef %call56.i.i) #12
  %77 = ptrtoint ptr %handle.i.i.i.le to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %handle.i.i.i.le, align 4
  %conv80.i.i = zext i16 %78 to i32
  %79 = ptrtoint ptr %spi74.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %spi74.i.i, align 1
  %81 = ptrtoint ptr %arrayidx64.lcssa.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx64.lcssa.i.i, align 4
  %conv85.i.i = zext i16 %82 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %43, i32 noundef 12387, ptr noundef nonnull @.str.141, ptr noundef nonnull @__func__.qla_edif_sadb_get_sa_index, i32 noundef %slot.0240.lcssa.i.i, i32 noundef %conv80.i.i, i32 noundef %80, i32 noundef %conv85.i.i) #12
  %83 = ptrtoint ptr %arrayidx64.lcssa.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx64.lcssa.i.i, align 4
  %.pre.i = zext i16 %84 to i32
  br label %qla_edif_sadb_get_sa_index.exit.i

for.inc.i.i:                                      ; preds = %if.else70.i.i.for.inc.i.i_crit_edge, %do.body48.i.i.for.inc.i.i_crit_edge
  %arrayidx64.1.i.i = getelementptr i8, ptr %.pn.in.i.i.i, i32 -16
  %85 = ptrtoint ptr %arrayidx64.1.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx64.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %86)
  %cmp67.1.i.i = icmp eq i16 %86, -1
  br i1 %cmp67.1.i.i, label %for.inc.1.thread.i.i, label %if.else70.1.i.i

for.inc.1.thread.i.i:                             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_lock54.i.i, i32 noundef %call56.i.i) #12
  br label %if.end112.i.i

if.else70.1.i.i:                                  ; preds = %for.inc.i.i
  %spi73.1.i.i = getelementptr i8, ptr %.pn.in.i.i.i, i32 -12
  %87 = ptrtoint ptr %spi73.1.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %spi73.1.i.i, align 4
  %89 = ptrtoint ptr %spi74.i.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %spi74.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp75.1.i.i = icmp eq i32 %88, %90
  br i1 %cmp75.1.i.i, label %if.else70.1.i.i.if.then77.i.i_crit_edge, label %for.inc.1.i.i

if.else70.1.i.i.if.then77.i.i_crit_edge:          ; preds = %if.else70.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then77.i.i

for.inc.1.i.i:                                    ; preds = %if.else70.1.i.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_lock54.i.i, i32 noundef %call56.i.i) #12
  br i1 %cmp67.i.i, label %for.inc.1.i.i.if.end112.i.i_crit_edge, label %if.then94.i.i

for.inc.1.i.i.if.end112.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112.i.i

if.then94.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %handle.i.i.i.le to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %handle.i.i.i.le, align 4
  %conv96.i.i = zext i16 %92 to i32
  %93 = ptrtoint ptr %spi74.i.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %spi74.i.i, align 1
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %43, i32 noundef 12387, ptr noundef nonnull @.str.142, ptr noundef nonnull @__func__.qla_edif_sadb_get_sa_index, i32 noundef %conv96.i.i, i32 noundef %94) #12
  %spi100.i.i = getelementptr i8, ptr %.pn.in.i.i.i, i32 -20
  %95 = ptrtoint ptr %spi100.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %spi100.i.i, align 4
  %97 = ptrtoint ptr %entry1.0.le.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %entry1.0.le.i.i.i, align 4
  %conv104.i.i = zext i16 %98 to i32
  %99 = ptrtoint ptr %spi73.1.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %spi73.1.i.i, align 4
  %101 = ptrtoint ptr %arrayidx64.1.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx64.1.i.i, align 4
  %conv111.i.i = zext i16 %102 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %43, i32 noundef 12387, ptr noundef nonnull @.str.143, ptr noundef nonnull @__func__.qla_edif_sadb_get_sa_index, i32 noundef %96, i32 noundef %conv104.i.i, i32 noundef %100, i32 noundef %conv111.i.i) #12
  br label %if.then40

if.end112.i.i:                                    ; preds = %for.inc.1.i.i.if.end112.i.i_crit_edge, %for.inc.1.thread.i.i
  %free_slot.1.1248.i.i = phi i32 [ 1, %for.inc.1.thread.i.i ], [ 0, %for.inc.1.i.i.if.end112.i.i_crit_edge ]
  %call113.i.i = call fastcc zeroext i16 @qla_edif_get_sa_index_from_freepool(ptr noundef %f.037.i, i32 noundef %and.i325) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call113.i.i)
  %cmp115.i.i = icmp eq i16 %call113.i.i, -1
  br i1 %cmp115.i.i, label %if.then117.i.i, label %do.body121.i.i

if.then117.i.i:                                   ; preds = %if.end112.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %103 = ptrtoint ptr %vha2.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %vha2.i.i, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %104, i32 noundef 12387, ptr noundef nonnull @.str.144, ptr noundef nonnull @__func__.qla_edif_sadb_get_sa_index) #12
  br label %if.then40

do.body121.i.i:                                   ; preds = %if.end112.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv114.i.i = zext i16 %call113.i.i to i32
  %call129.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %sadb_lock54.i.i) #12
  %105 = ptrtoint ptr %spi74.i.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %spi74.i.i, align 1
  %arrayidx136.i.i = getelementptr [2 x %struct.sa_index_pair], ptr %entry1.0.le.i.i.i, i32 0, i32 %free_slot.1.1248.i.i
  %spi137.i.i = getelementptr [2 x %struct.sa_index_pair], ptr %entry1.0.le.i.i.i, i32 0, i32 %free_slot.1.1248.i.i, i32 1
  %107 = ptrtoint ptr %spi137.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %spi137.i.i, align 4
  %108 = ptrtoint ptr %arrayidx136.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %call113.i.i, ptr %arrayidx136.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_lock54.i.i, i32 noundef %call129.i.i) #12
  %109 = ptrtoint ptr %vha2.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %vha2.i.i, align 8
  %111 = ptrtoint ptr %handle.i.i.i.le to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %handle.i.i.i.le, align 4
  %conv144.i.i = zext i16 %112 to i32
  %113 = ptrtoint ptr %spi74.i.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %spi74.i.i, align 1
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %110, i32 noundef 12387, ptr noundef nonnull @.str.145, ptr noundef nonnull @__func__.qla_edif_sadb_get_sa_index, i32 noundef %free_slot.1.1248.i.i, i32 noundef %conv144.i.i, i32 noundef %114, i32 noundef %conv114.i.i) #12
  br label %qla_edif_sadb_get_sa_index.exit.i

qla_edif_sadb_get_sa_index.exit.i:                ; preds = %do.body121.i.i, %if.then77.i.i, %list_add_tail.exit.i.i
  %conv1.pre-phi.i = phi i32 [ %conv18.i.i, %list_add_tail.exit.i.i ], [ %.pre.i, %if.then77.i.i ], [ %conv114.i.i, %do.body121.i.i ]
  %retval.0.i.i = phi i16 [ %call17.i.i, %list_add_tail.exit.i.i ], [ %84, %if.then77.i.i ], [ %call113.i.i, %do.body121.i.i ]
  %115 = zext i16 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.172)
  switch i16 %retval.0.i.i, label %if.end15.i [
    i16 -2, label %qla_edif_sadb_get_sa_index.exit.i.if.then46_crit_edge
    i16 -1, label %qla_edif_sadb_get_sa_index.exit.i.if.then40_crit_edge
  ]

qla_edif_sadb_get_sa_index.exit.i.if.then40_crit_edge: ; preds = %qla_edif_sadb_get_sa_index.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40

qla_edif_sadb_get_sa_index.exit.i.if.then46_crit_edge: ; preds = %qla_edif_sadb_get_sa_index.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

if.end15.i:                                       ; preds = %qla_edif_sadb_get_sa_index.exit.i
  %116 = ptrtoint ptr %vha2.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %vha2.i.i, align 8
  %spi18.i = getelementptr inbounds %struct.qla_sa_update_frame, ptr %sa_frame, i32 0, i32 4
  %118 = ptrtoint ptr %spi18.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %spi18.i, align 1
  %120 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %loop_id, align 4
  %conv20.i = zext i16 %121 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %117, i32 noundef 37120, ptr noundef nonnull @.str.135, ptr noundef nonnull @__func__.qla24xx_check_sadb_avail_slot, i32 noundef %conv1.pre-phi.i, i32 noundef %119, i32 noundef %and.i325, i32 noundef %conv20.i) #12
  %fast_sa_index.i = getelementptr inbounds %struct.qla_sa_update_frame, ptr %sa_frame, i32 0, i32 2
  %122 = ptrtoint ptr %fast_sa_index.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 2)
  %bf.load21.i = load i16, ptr %fast_sa_index.i, align 1
  %bf.shl.i = shl i16 %retval.0.i.i, 6
  %bf.clear22.i = and i16 %bf.load21.i, 63
  %bf.set23.i = or i16 %bf.clear22.i, %bf.shl.i
  store i16 %bf.set23.i, ptr %fast_sa_index.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %123 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i1.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %123, i32 noundef 3520, i32 noundef 128) #15
  %tobool.not.i2.i = icmp eq ptr %call7.i.i.i1.i, null
  br i1 %tobool.not.i2.i, label %if.then25.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end15.i
  %bf.lshr.i.i = and i16 %retval.0.i.i, 1023
  %124 = ptrtoint ptr %call7.i.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %call7.i.i.i1.i, ptr %call7.i.i.i1.i, align 8
  %prev.i.i3.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i1.i, i32 0, i32 1
  %125 = ptrtoint ptr %prev.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call7.i.i.i1.i, ptr %prev.i.i3.i, align 4
  %sa_frame1.i.i = getelementptr inbounds %struct.edif_sa_ctl, ptr %call7.i.i.i1.i, i32 0, i32 8
  %126 = call ptr @memcpy(ptr %sa_frame1.i.i, ptr %sa_frame, i32 100)
  %index3.i.i = getelementptr inbounds %struct.edif_sa_ctl, ptr %call7.i.i.i1.i, i32 0, i32 2
  %127 = ptrtoint ptr %index3.i.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %bf.lshr.i.i, ptr %index3.i.i, align 2
  %fcport4.i.i = getelementptr inbounds %struct.edif_sa_ctl, ptr %call7.i.i.i1.i, i32 0, i32 6
  %128 = ptrtoint ptr %fcport4.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %f.037.i, ptr %fcport4.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.edif_sa_ctl, ptr %call7.i.i.i1.i, i32 0, i32 4
  %129 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %flags5.i.i, align 2
  %state.i.i = getelementptr inbounds %struct.edif_sa_ctl, ptr %call7.i.i.i1.i, i32 0, i32 5
  %130 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %state.i.i, align 8
  %131 = ptrtoint ptr %vha2.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %vha2.i.i, align 8
  %conv8.i.i = zext i16 %bf.lshr.i.i to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %132, i32 noundef 37120, ptr noundef nonnull @.str.148, ptr noundef nonnull @__func__.qla_edif_add_sa_ctl, ptr noundef nonnull %call7.i.i.i1.i, i32 noundef %conv8.i.i, i32 noundef 0) #12
  %sa_list_lock.i.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 12
  %call13.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %sa_list_lock.i.i) #12
  br i1 %tobool.not.i.i326, label %if.else.i.i, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.end.i.i
  %tx_sa_list.i.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 10
  %prev.i48.i.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 10, i32 1
  %133 = ptrtoint ptr %prev.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %prev.i48.i.i, align 4
  %call.i.i.i4.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i1.i, ptr noundef %134, ptr noundef %tx_sa_list.i.i) #12
  br i1 %call.i.i.i4.i, label %if.then32.critedge15.i, label %if.then18.i.i.if.then32.i_crit_edge

if.then18.i.i.if.then32.i_crit_edge:              ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %rx_sa_list.i.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 11
  %prev.i49.i.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 11, i32 1
  %135 = ptrtoint ptr %prev.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev.i49.i.i, align 4
  %call.i.i50.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i1.i, ptr noundef %136, ptr noundef %rx_sa_list.i.i) #12
  br i1 %call.i.i50.i.i, label %if.else34.critedge14.i, label %if.else.i.i.if.else34.i_crit_edge

if.else.i.i.if.else34.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else34.i

if.then25.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %vha2.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %vha2.i.i, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %138, i32 noundef 37120, ptr noundef nonnull @.str.147) #12
  %139 = ptrtoint ptr %vha2.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %vha2.i.i, align 8
  %141 = ptrtoint ptr %spi18.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %spi18.i, align 1
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %140, i32 noundef 37120, ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__.qla24xx_check_sadb_avail_slot, i32 noundef %142, i32 noundef %and.i325, i32 noundef %conv1.pre-phi.i) #12
  br label %if.end51

if.then32.critedge15.i:                           ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %143 = ptrtoint ptr %prev.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call7.i.i.i1.i, ptr %prev.i48.i.i, align 4
  %144 = ptrtoint ptr %call7.i.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %tx_sa_list.i.i, ptr %call7.i.i.i1.i, align 8
  %145 = ptrtoint ptr %prev.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %134, ptr %prev.i.i3.i, align 4
  %146 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %call7.i.i.i1.i, ptr %134, align 4
  br label %if.then32.i

if.then32.i:                                      ; preds = %if.then32.critedge15.i, %if.then18.i.i.if.then32.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sa_list_lock.i.i, i32 noundef %call13.i.i) #12
  call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i) #12
  %tx_rekey_cnt.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 1
  %147 = ptrtoint ptr %tx_rekey_cnt.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tx_rekey_cnt.i, align 4
  %inc.i = add i32 %148, 1
  store i32 %inc.i, ptr %tx_rekey_cnt.i, align 4
  br label %if.end37.i

if.else34.critedge14.i:                           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %149 = ptrtoint ptr %prev.i49.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call7.i.i.i1.i, ptr %prev.i49.i.i, align 4
  %150 = ptrtoint ptr %call7.i.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %rx_sa_list.i.i, ptr %call7.i.i.i1.i, align 8
  %151 = ptrtoint ptr %prev.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %136, ptr %prev.i.i3.i, align 4
  %152 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %call7.i.i.i1.i, ptr %136, align 4
  br label %if.else34.i

if.else34.i:                                      ; preds = %if.else34.critedge14.i, %if.else.i.i.if.else34.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sa_list_lock.i.i, i32 noundef %call13.i.i) #12
  call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i) #12
  %rx_rekey_cnt.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 2
  %153 = ptrtoint ptr %rx_rekey_cnt.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %rx_rekey_cnt.i, align 8
  %inc36.i = add i32 %154, 1
  store i32 %inc36.i, ptr %rx_rekey_cnt.i, align 8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else34.i, %if.then32.i
  %155 = ptrtoint ptr %vha2.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %vha2.i.i, align 8
  %157 = ptrtoint ptr %index3.i.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %index3.i.i, align 2
  %conv39.i = zext i16 %158 to i32
  %159 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %state.i.i, align 8
  %tx_rekey_cnt42.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 1
  %161 = ptrtoint ptr %tx_rekey_cnt42.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %tx_rekey_cnt42.i, align 4
  %rx_rekey_cnt44.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 2
  %163 = ptrtoint ptr %rx_rekey_cnt44.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %rx_rekey_cnt44.i, align 8
  %165 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %loop_id, align 4
  %conv46.i = zext i16 %166 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %156, i32 noundef 37120, ptr noundef nonnull @.str.137, ptr noundef nonnull @__func__.qla24xx_check_sadb_avail_slot, ptr noundef nonnull %call7.i.i.i1.i, i32 noundef %conv39.i, i32 noundef %160, i32 noundef %162, i32 noundef %164, i32 noundef %conv46.i) #12
  br label %if.end51

if.then40:                                        ; preds = %qla_edif_sadb_get_sa_index.exit.i.if.then40_crit_edge, %if.then117.i.i, %if.then94.i.i, %if.then21.i.i, %if.end12.i.i.if.then40_crit_edge
  %167 = ptrtoint ptr %vha2.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %vha2.i.i, align 8
  %spi14.i = getelementptr inbounds %struct.qla_sa_update_frame, ptr %sa_frame, i32 0, i32 4
  %169 = ptrtoint ptr %spi14.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %spi14.i, align 1
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %168, i32 noundef 37120, ptr noundef nonnull @.str.134, ptr noundef nonnull @__func__.qla24xx_check_sadb_avail_slot, i32 noundef %170, i32 noundef %and.i325) #12
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 28897, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.qla24xx_sadb_update, ptr noundef %port_name.i) #12
  br label %done190

if.then46:                                        ; preds = %qla_edif_sadb_get_sa_index.exit.i.if.then46_crit_edge, %qla_edif_sadb_get_sa_index.exit.thread7.i
  %171 = ptrtoint ptr %vha2.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %vha2.i.i, align 8
  %173 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %loop_id, align 4
  %conv3.i = zext i16 %174 to i32
  %spi.i = getelementptr inbounds %struct.qla_sa_update_frame, ptr %sa_frame, i32 0, i32 4
  %175 = ptrtoint ptr %spi.i to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %176 = load i32, ptr %spi.i, align 1
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %172, i32 noundef 12387, ptr noundef nonnull @.str.133, ptr noundef nonnull @__func__.qla24xx_check_sadb_avail_slot, i32 noundef %conv3.i, i32 noundef %176) #12
  %edif.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72
  %177 = ptrtoint ptr %edif.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %bf.load.i327 = load i16, ptr %edif.i, align 8
  %bf.set.i = and i16 %bf.load.i327, -321
  %bf.clear6.i = or i16 %bf.set.i, 256
  store i16 %bf.clear6.i, ptr %edif.i, align 8
  %178 = ptrtoint ptr %vha2.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %vha2.i.i, align 8
  call void @qla_edb_eventcreate(ptr noundef %179, i32 noundef 4, i32 noundef 0, i32 noundef 1, ptr noundef %f.037.i) #12
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 28897, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.qla24xx_sadb_update, ptr noundef %port_name.i) #12
  br label %done190

if.end51:                                         ; preds = %if.end37.i, %if.then25.i
  %180 = ptrtoint ptr %fast_sa_index.i to i32
  call void @__asan_loadN_noabort(i32 %180, i32 2)
  %bf.load54 = load i16, ptr %fast_sa_index.i, align 1
  %bf.lshr55 = lshr i16 %bf.load54, 6
  %conv56 = zext i16 %bf.lshr55 to i32
  %181 = ptrtoint ptr %flags12 to i32
  call void @__asan_loadN_noabort(i32 %181, i32 2)
  %182 = load i16, ptr %flags12, align 1
  %conv58 = zext i16 %182 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 28897, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.qla24xx_sadb_update, ptr noundef %port_name.i, i32 noundef %conv56, i32 noundef %conv58) #12
  %183 = ptrtoint ptr %flags12 to i32
  call void @__asan_loadN_noabort(i32 %183, i32 2)
  %184 = load i16, ptr %flags12, align 1
  %trunc = trunc i16 %184 to i2
  %185 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %185, ptr @__sancov_gen_cov_switch_values.173)
  switch i2 %trunc, label %if.end51.if.end152_crit_edge [
    i2 1, label %if.then68
    i2 0, label %if.then135
  ]

if.end51.if.end152_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.then68:                                        ; preds = %if.end51
  %186 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %loop_id, align 4
  %188 = ptrtoint ptr %fast_sa_index.i to i32
  call void @__asan_loadN_noabort(i32 %188, i32 2)
  %bf.load71 = load i16, ptr %fast_sa_index.i, align 1
  %bf.lshr72 = lshr i16 %bf.load71, 6
  %edif_indx_list.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i331.for.cond.i_crit_edge, %if.then68
  %.pn.in.in.i = phi ptr [ %edif_indx_list.i, %if.then68 ], [ %.pn.in.i, %for.body.i331.for.cond.i_crit_edge ]
  %189 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp.not.i330 = icmp eq ptr %.pn.in.i, %edif_indx_list.i
  br i1 %cmp.not.i330, label %for.cond.i.if.then76_crit_edge, label %for.body.i331

for.cond.i.if.then76_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then76

for.body.i331:                                    ; preds = %for.cond.i
  %entry1.0.i = getelementptr i8, ptr %.pn.in.i, i32 -72
  %190 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %entry1.0.i, align 4
  %cmp10.i = icmp eq i16 %191, %187
  br i1 %cmp10.i, label %qla_edif_list_find_sa_index.exit, label %for.body.i331.for.cond.i_crit_edge

for.body.i331.for.cond.i_crit_edge:               ; preds = %for.body.i331
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

qla_edif_list_find_sa_index.exit:                 ; preds = %for.body.i331
  %entry1.0.i.le = getelementptr i8, ptr %.pn.in.i, i32 -72
  %tobool75.not = icmp eq ptr %entry1.0.i.le, null
  br i1 %tobool75.not, label %qla_edif_list_find_sa_index.exit.if.then76_crit_edge, label %if.end80

qla_edif_list_find_sa_index.exit.if.then76_crit_edge: ; preds = %qla_edif_list_find_sa_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then76

if.then76:                                        ; preds = %qla_edif_list_find_sa_index.exit.if.then76_crit_edge, %for.cond.i.if.then76_crit_edge
  %conv78 = zext i16 %187 to i32
  %conv79 = zext i16 %bf.lshr72 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.qla24xx_sadb_update, i32 noundef %conv78, i32 noundef %conv79) #12
  br label %force_rx_delete

if.end80:                                         ; preds = %qla_edif_list_find_sa_index.exit
  %192 = and i16 %184, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %192)
  %cmp84.not = icmp eq i16 %192, 0
  br i1 %cmp84.not, label %if.end90, label %if.then86

if.then86:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @qla_edif_list_delete_sa_index(ptr noundef %f.037.i, ptr noundef nonnull %entry1.0.i.le)
  %193 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %loop_id, align 4
  %conv88 = zext i16 %194 to i32
  %conv89 = zext i16 %bf.lshr72 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.qla24xx_sadb_update, i32 noundef %conv88, i32 noundef %conv89) #12
  call void @kfree(ptr noundef nonnull %entry1.0.i.le) #12
  br label %force_rx_delete

if.end90:                                         ; preds = %if.end80
  %delete_sa_index = getelementptr i8, ptr %.pn.in.i, i32 -64
  %195 = ptrtoint ptr %delete_sa_index to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %delete_sa_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %196)
  %cmp91.not = icmp eq i32 %196, 65535
  br i1 %cmp91.not, label %if.end111, label %if.then93

if.then93:                                        ; preds = %if.end90
  %197 = ptrtoint ptr %entry1.0.i.le to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %entry1.0.i.le, align 4
  %conv94 = zext i16 %198 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.qla24xx_sadb_update, i32 noundef %conv94, i32 noundef %196) #12
  %conv96 = zext i16 %bf.lshr72 to i32
  %199 = ptrtoint ptr %flags12 to i32
  call void @__asan_loadN_noabort(i32 %199, i32 2)
  %200 = load i16, ptr %flags12, align 1
  %201 = and i16 %200, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %201)
  %cmp.i.not = icmp eq i16 %201, 0
  %tx_sa_list.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 10
  %rx_sa_list.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 11
  %sa_list.0.i = select i1 %cmp.i.not, ptr %rx_sa_list.i, ptr %tx_sa_list.i
  %202 = ptrtoint ptr %sa_list.0.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %sa_list.0.i, align 4
  %cmp8.not29.i = icmp eq ptr %203, %sa_list.0.i
  br i1 %cmp8.not29.i, label %if.then93.if.end106_crit_edge, label %if.then93.for.body.i334_crit_edge

if.then93.for.body.i334_crit_edge:                ; preds = %if.then93
  br label %for.body.i334

if.then93.if.end106_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

for.body.i334:                                    ; preds = %for.inc.i336.for.body.i334_crit_edge, %if.then93.for.body.i334_crit_edge
  %sa_ctl.030.i = phi ptr [ %tsa_ctl.031.i, %for.inc.i336.for.body.i334_crit_edge ], [ %203, %if.then93.for.body.i334_crit_edge ]
  %204 = ptrtoint ptr %sa_ctl.030.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %tsa_ctl.031.i = load ptr, ptr %sa_ctl.030.i, align 4
  %state.i = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 5
  %205 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile i32, ptr %state.i, align 4
  %207 = and i32 %206, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool.not.i333 = icmp eq i32 %207, 0
  br i1 %tobool.not.i333, label %for.body.i334.for.inc.i336_crit_edge, label %land.lhs.true.i

for.body.i334.for.inc.i336_crit_edge:             ; preds = %for.body.i334
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i336

land.lhs.true.i:                                  ; preds = %for.body.i334
  %index9.i = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 2
  %208 = ptrtoint ptr %index9.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %index9.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %209, i16 %bf.lshr72)
  %cmp10.i335 = icmp eq i16 %209, %bf.lshr72
  br i1 %cmp10.i335, label %qla_edif_find_sa_ctl_by_index.exit, label %land.lhs.true.i.for.inc.i336_crit_edge

land.lhs.true.i.for.inc.i336_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i336

for.inc.i336:                                     ; preds = %land.lhs.true.i.for.inc.i336_crit_edge, %for.body.i334.for.inc.i336_crit_edge
  %cmp8.not.i = icmp eq ptr %tsa_ctl.031.i, %sa_list.0.i
  br i1 %cmp8.not.i, label %for.inc.i336.if.end106_crit_edge, label %for.inc.i336.for.body.i334_crit_edge

for.inc.i336.for.body.i334_crit_edge:             ; preds = %for.inc.i336
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i334

for.inc.i336.if.end106_crit_edge:                 ; preds = %for.inc.i336
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

qla_edif_find_sa_ctl_by_index.exit:               ; preds = %land.lhs.true.i
  %tobool101.not = icmp eq ptr %sa_ctl.030.i, null
  br i1 %tobool101.not, label %qla_edif_find_sa_ctl_by_index.exit.if.end106_crit_edge, label %if.then102

qla_edif_find_sa_ctl_by_index.exit.if.end106_crit_edge: ; preds = %qla_edif_find_sa_ctl_by_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then102:                                       ; preds = %qla_edif_find_sa_ctl_by_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  %index9.i.le = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 2
  %210 = ptrtoint ptr %index9.i.le to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %index9.i.le, align 2
  %conv103 = zext i16 %211 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 12387, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.qla24xx_sadb_update, i32 noundef %conv103) #12
  %212 = ptrtoint ptr %index9.i.le to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %index9.i.le, align 2
  %conv105 = zext i16 %213 to i32
  call fastcc void @qla_edif_free_sa_ctl(ptr noundef %f.037.i, ptr noundef nonnull %sa_ctl.030.i, i32 noundef %conv105)
  br label %if.end106

if.end106:                                        ; preds = %if.then102, %qla_edif_find_sa_ctl_by_index.exit.if.end106_crit_edge, %for.inc.i336.if.end106_crit_edge, %if.then93.if.end106_crit_edge
  %conv108 = zext i16 %187 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 12387, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.qla24xx_sadb_update, i32 noundef %conv96, i32 noundef %conv108) #12
  call fastcc void @qla_edif_sadb_delete_sa_index(ptr noundef %f.037.i, i16 noundef zeroext %187, i16 noundef zeroext %bf.lshr72)
  br label %done190

if.end111:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %rekey_cnt = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 7
  %214 = ptrtoint ptr %rekey_cnt to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %rekey_cnt, align 2
  %inc = add i16 %215, 1
  store i16 %inc, ptr %rekey_cnt, align 2
  %fcport113 = getelementptr i8, ptr %.pn.in.i, i32 -52
  %216 = ptrtoint ptr %fcport113 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %f.037.i, ptr %fcport113, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %217 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %217, 2000
  %timer = getelementptr i8, ptr %.pn.in.i, i32 -48
  %expires = getelementptr i8, ptr %.pn.in.i, i32 -40
  %218 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %add, ptr %expires, align 4
  %conv114 = zext i16 %bf.lshr72 to i32
  %conv115 = zext i16 %187 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.qla24xx_sadb_update, ptr noundef nonnull %entry1.0.i.le, i32 noundef %conv114, i32 noundef %conv115) #12
  call void @add_timer(ptr noundef %timer) #12
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.qla24xx_sadb_update, i32 noundef %conv114, i32 noundef %conv115, ptr noundef %bsg_job) #12
  %219 = ptrtoint ptr %delete_sa_index to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %conv114, ptr %delete_sa_index, align 4
  %reply_len = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %220 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 16, ptr %reply_len, align 4
  br label %done190

if.then135:                                       ; preds = %if.end51
  %221 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %loop_id, align 4
  %conv138 = zext i16 %222 to i32
  %223 = ptrtoint ptr %fast_sa_index.i to i32
  call void @__asan_loadN_noabort(i32 %223, i32 2)
  %bf.load141 = load i16, ptr %fast_sa_index.i, align 1
  %bf.lshr142 = lshr i16 %bf.load141, 6
  %conv144 = zext i16 %bf.lshr142 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.qla24xx_sadb_update, i32 noundef %conv144, i32 noundef %conv138) #12
  %call146 = call fastcc i32 @qla_edif_list_add_sa_update_index(ptr noundef %f.037.i, i16 noundef zeroext %bf.lshr142, i16 noundef zeroext %222)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.then135.if.end152_crit_edge, label %if.then148

if.then135.if.end152_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.then148:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.qla24xx_sadb_update, i32 noundef %conv144, i32 noundef %conv138) #12
  br label %if.end152

if.end152:                                        ; preds = %if.then148, %if.then135.if.end152_crit_edge, %if.end51.if.end152_crit_edge
  %224 = ptrtoint ptr %flags12 to i32
  call void @__asan_loadN_noabort(i32 %224, i32 2)
  %225 = load i16, ptr %flags12, align 1
  %226 = and i16 %225, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %226)
  %tobool156.not = icmp eq i16 %226, 0
  %edif162 = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72
  %227 = ptrtoint ptr %edif162 to i32
  call void @__asan_load2_noabort(i32 %227)
  %bf.load163 = load i16, ptr %edif162, align 8
  br i1 %tobool156.not, label %if.else161, label %if.then157

if.then157:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set = or i16 %bf.load163, 2048
  %228 = ptrtoint ptr %edif162 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 %bf.set, ptr %edif162, align 8
  br label %force_rx_delete

if.else161:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear164 = and i16 %bf.load163, -2049
  %229 = ptrtoint ptr %edif162 to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %bf.clear164, ptr %edif162, align 8
  br label %force_rx_delete

force_rx_delete:                                  ; preds = %if.else161, %if.then157, %if.then86, %if.then76
  %call167 = call fastcc ptr @qla2x00_get_sp(ptr noundef %hostdata.i, ptr noundef %f.037.i)
  %tobool168.not = icmp eq ptr %call167, null
  br i1 %tobool168.not, label %force_rx_delete.done190_crit_edge, label %if.end171

force_rx_delete.done190_crit_edge:                ; preds = %force_rx_delete
  call void @__sanitizer_cov_trace_pc() #14
  br label %done190

if.end171:                                        ; preds = %force_rx_delete
  %type = getelementptr inbounds %struct.srb, ptr %call167, i32 0, i32 11
  %230 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 25, ptr %type, align 2
  %name = getelementptr inbounds %struct.srb, ptr %call167, i32 0, i32 12
  %231 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr @.str.25, ptr %name, align 8
  %u = getelementptr inbounds %struct.srb, ptr %call167, i32 0, i32 22
  %232 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %bsg_job, ptr %u, align 8
  %free = getelementptr inbounds %struct.srb, ptr %call167, i32 0, i32 25
  %233 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr @qla2x00_rel_sp, ptr %free, align 8
  %done = getelementptr inbounds %struct.srb, ptr %call167, i32 0, i32 24
  %234 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr @qla2x00_bsg_job_done, ptr %done, align 4
  %sa_frame174 = getelementptr inbounds %struct.anon.101, ptr %u, i32 0, i32 1
  %235 = call ptr @memcpy(ptr %sa_frame174, ptr %sa_frame, i32 100)
  %call175 = call i32 @qla2x00_start_sp(ptr noundef nonnull %call167) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %cmp176.not = icmp eq i32 %call175, 0
  br i1 %cmp176.not, label %if.end180, label %if.then178

if.then178:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 28899, ptr noundef nonnull @.str.26, i32 noundef %call175) #12
  call void @qla2x00_rel_sp(ptr noundef nonnull %call167)
  br label %done190

if.end180:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #14
  %236 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %name, align 8
  %handle182 = getelementptr inbounds %struct.srb, ptr %call167, i32 0, i32 9
  %238 = ptrtoint ptr %handle182 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %handle182, align 8
  %240 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %bf.load183 = load i32, ptr %d_id.i, align 8
  %bf.lshr184 = lshr i32 %bf.load183, 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.qla24xx_sadb_update, ptr noundef %237, i32 noundef %239, i32 noundef %bf.lshr184) #12
  %rekey_cnt186 = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 72, i32 7
  %241 = ptrtoint ptr %rekey_cnt186 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %rekey_cnt186, align 2
  %inc187 = add i16 %242, 1
  store i16 %inc187, ptr %rekey_cnt186, align 2
  %reply_len188 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %243 = ptrtoint ptr %reply_len188 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 16, ptr %reply_len188, align 4
  %244 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 0, ptr %1, align 4
  br label %cleanup194

done190:                                          ; preds = %if.then178, %force_rx_delete.done190_crit_edge, %if.end111, %if.end106, %if.then46, %if.then40, %if.then34, %if.then25.critedge, %if.then6, %if.then
  %storemerge.sink = phi i32 [ 786432, %if.then178 ], [ 0, %if.then46 ], [ 458752, %if.then40 ], [ 65536, %if.then34 ], [ 1048576, %if.then25.critedge ], [ 458752, %if.then6 ], [ 458752, %if.then ], [ 458752, %if.end106 ], [ 0, %if.end111 ], [ 786432, %force_rx_delete.done190_crit_edge ]
  %245 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %storemerge.sink, ptr %1, align 4
  %reply_len191 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %246 = ptrtoint ptr %reply_len191 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 16, ptr %reply_len191, align 4
  %247 = load i32, ptr %1, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 37149, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.qla24xx_sadb_update, i32 noundef %247, ptr noundef %bsg_job) #12
  %248 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %1, align 4
  %reply_payload_rcv_len = getelementptr inbounds %struct.fc_bsg_reply, ptr %1, i32 0, i32 1
  %250 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %reply_payload_rcv_len, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %249, i32 noundef %251) #12
  br label %cleanup194

cleanup194:                                       ; preds = %done190, %if.end180
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %sa_frame) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla_edif_app_start(ptr noundef %vha, ptr nocapture noundef %bsg_job) unnamed_addr #2 align 64 {
entry:
  %appstart = alloca %struct.app_start, align 4
  %appreply = alloca %struct.app_start_reply, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reply = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %0 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %appstart) #12
  %2 = call ptr @memset(ptr %appstart, i32 255, i32 76)
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %appreply) #12
  %3 = call ptr @memset(ptr %appreply, i32 255, i32 140)
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 4883, ptr noundef nonnull @.str.107) #12
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg_cnt, align 4
  %call = call i32 @sg_copy_to_buffer(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %appstart, i32 noundef 76) #12
  %8 = ptrtoint ptr %appstart to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %appstart, align 4
  %app_start_flags = getelementptr inbounds %struct.app_start, ptr %appstart, i32 0, i32 3
  %10 = ptrtoint ptr %app_start_flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %app_start_flags, align 4
  %conv = zext i8 %11 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__.qla_edif_app_start, i32 noundef %9, i32 noundef %conv) #12
  %e_dbell = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90
  %12 = ptrtoint ptr %e_dbell to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %e_dbell, align 8
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %13, 1
  %14 = ptrtoint ptr %e_dbell to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %e_dbell, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37150, ptr noundef nonnull @.str.109, ptr noundef nonnull @__func__.qla_edif_app_start) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %prev_topology = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 50
  %17 = ptrtoint ptr %prev_topology to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %prev_topology, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp = icmp eq i8 %18, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.lor.lhs.false_crit_edge

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %current_topology = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 49
  %19 = ptrtoint ptr %current_topology to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %current_topology, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not = icmp eq i8 %20, 0
  br i1 %tobool7.not, label %land.lhs.true.if.then17_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %current_topology9 = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 49
  %21 = ptrtoint ptr %current_topology9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %current_topology9, align 2
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.174)
  switch i8 %22, label %if.else24 [
    i8 2, label %lor.lhs.false.if.then17_crit_edge
    i8 0, label %lor.lhs.false.if.then17_crit_edge5
  ]

lor.lhs.false.if.then17_crit_edge5:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %lor.lhs.false.if.then17_crit_edge5, %land.lhs.true.if.then17_crit_edge
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 2
  %24 = getelementptr inbounds i32, ptr %flags, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load = load volatile i32, ptr %24, align 4
  %26 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool19.not = icmp eq i32 %26, 0
  %dpc_flags22 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %. = select i1 %tobool19.not, i32 2, i32 21
  call void @_set_bit(i32 noundef %., ptr noundef %dpc_flags22) #12
  call void @qla2xxx_wake_dpc(ptr noundef %vha) #12
  br label %if.end83

if.else24:                                        ; preds = %lor.lhs.false
  %vp_fcports = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %27 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vp_fcports, align 8
  %cmp31.not2 = icmp eq ptr %28, %vp_fcports
  br i1 %cmp31.not2, label %if.else24.if.end83_crit_edge, label %for.body.lr.ph

if.else24.if.end83_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

for.body.lr.ph:                                   ; preds = %if.else24
  %loop_state = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end63.for.body_crit_edge, %for.body.lr.ph
  %fcport.03 = phi ptr [ %28, %for.body.lr.ph ], [ %tf.04, %if.end63.for.body_crit_edge ]
  %29 = ptrtoint ptr %fcport.03 to i32
  call void @__asan_load4_noabort(i32 %29)
  %tf.04 = load ptr, ptr %fcport.03, align 8
  %node_name = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 4
  %port_name = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 5
  %d_id = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 6
  %30 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load34 = load i32, ptr %d_id, align 8
  %bf.lshr35 = lshr i32 %bf.load34, 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 8280, ptr noundef nonnull @.str.110, ptr noundef %node_name, ptr noundef %port_name, i32 noundef %bf.lshr35) #12
  %se_sess = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 15
  %31 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %se_sess, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 7
  %33 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %loop_id, align 4
  %conv38 = zext i16 %34 to i32
  %35 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load40 = load i32, ptr %d_id, align 8
  %bf.lshr41 = lshr i32 %bf.load40, 8
  %logout_on_delete = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 2
  %36 = ptrtoint ptr %logout_on_delete to i32
  call void @__asan_loadN_noabort(i32 %36, i32 3)
  %bf.load42 = load i24, ptr %logout_on_delete, align 4
  %bf.lshr43 = lshr i24 %bf.load42, 18
  %bf.clear44 = and i24 %bf.lshr43, 1
  %bf.cast = zext i24 %bf.clear44 to i32
  %bf.lshr46 = lshr i24 %bf.load42, 16
  %bf.clear47 = and i24 %bf.lshr46, 1
  %bf.cast48 = zext i24 %bf.clear47 to i32
  %bf.lshr50 = lshr i24 %bf.load42, 15
  %bf.clear51 = and i24 %bf.lshr50, 1
  %bf.cast52 = zext i24 %bf.clear51 to i32
  %disc_state = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 50
  %37 = ptrtoint ptr %disc_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %disc_state, align 8
  %edif = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 72
  %auth_state = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 72, i32 5
  %39 = ptrtoint ptr %auth_state to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %auth_state, align 8
  %conv53 = zext i8 %40 to i32
  %41 = ptrtoint ptr %edif to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load55 = load i16, ptr %edif, align 8
  %bf.lshr56 = lshr i16 %bf.load55, 13
  %bf.clear57 = and i16 %bf.lshr56, 3
  %bf.cast58 = zext i16 %bf.clear57 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 61572, ptr noundef nonnull @.str.111, ptr noundef nonnull @__func__.qla_edif_app_start, ptr noundef %32, ptr noundef %fcport.03, ptr noundef %port_name, i32 noundef %conv38, i32 noundef %bf.lshr41, i32 noundef %bf.cast, i32 noundef %bf.cast48, i32 noundef %bf.cast52, i32 noundef %38, i32 noundef %conv53, i32 noundef %bf.cast58) #12
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %loop_state, i32 noundef 4) #12
  %42 = ptrtoint ptr %loop_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %loop_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp60 = icmp eq i32 %43, 2
  br i1 %cmp60, label %for.body.if.end83_crit_edge, label %if.end63

for.body.if.end83_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.end63:                                         ; preds = %for.body
  %44 = ptrtoint ptr %edif to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load65 = load i16, ptr %edif, align 8
  %bf.set = or i16 %bf.load65, 4096
  store i16 %bf.set, ptr %edif, align 8
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %login_retry_count = getelementptr inbounds %struct.qla_hw_data, ptr %46, i32 0, i32 76
  %47 = ptrtoint ptr %login_retry_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %login_retry_count, align 4
  %login_retry = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 36
  %49 = ptrtoint ptr %login_retry to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %login_retry, align 4
  %bf.clear70 = and i16 %bf.set, -24577
  store i16 %bf.clear70, ptr %edif, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37150, ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.qla_edif_app_start, ptr noundef %port_name) #12
  %50 = ptrtoint ptr %edif to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load75 = load i16, ptr %edif, align 8
  %bf.clear76 = and i16 %bf.load75, -1025
  store i16 %bf.clear76, ptr %edif, align 8
  call void @qlt_schedule_sess_for_deletion(ptr noundef %fcport.03) #12
  %51 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load.i = load i32, ptr %d_id, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 8280, ptr noundef nonnull @.str.115, ptr noundef %node_name, ptr noundef %port_name, i32 noundef %bf.lshr.i) #12
  %tx_rekey_cnt.i = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 72, i32 1
  %52 = ptrtoint ptr %tx_rekey_cnt.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tx_rekey_cnt.i, align 4
  %rx_rekey_cnt.i = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 72, i32 2
  %53 = ptrtoint ptr %rx_rekey_cnt.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %rx_rekey_cnt.i, align 8
  %tx_bytes.i = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 72, i32 3
  %54 = call ptr @memset(ptr %tx_bytes.i, i32 0, i32 16)
  %cmp31.not = icmp eq ptr %tf.04, %vp_fcports
  br i1 %cmp31.not, label %if.end63.if.end83_crit_edge, label %if.end63.for.body_crit_edge

if.end63.for.body_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end63.if.end83_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.end83:                                         ; preds = %if.end63.if.end83_crit_edge, %for.body.if.end83_crit_edge, %if.else24.if.end83_crit_edge, %if.then17
  %pur_cinfo = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91
  %55 = ptrtoint ptr %pur_cinfo to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pur_cinfo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp84.not = icmp eq i32 %56, 1
  br i1 %cmp84.not, label %if.else89, label %if.then86

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %pur_cinfo to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %pur_cinfo, align 8
  br label %if.end90

if.else89:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37151, ptr noundef nonnull @.str.113, ptr noundef nonnull @__func__.qla_edif_app_start) #12
  br label %if.end90

if.end90:                                         ; preds = %if.else89, %if.then86
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw, align 4
  %flags92 = getelementptr inbounds %struct.qla_hw_data, ptr %59, i32 0, i32 2
  %60 = getelementptr inbounds i32, ptr %flags92, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load93 = load volatile i32, ptr %60, align 4
  %bf.lshr94 = lshr i32 %bf.load93, 14
  %bf.clear95 = and i32 %bf.lshr94, 1
  %62 = ptrtoint ptr %appreply to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %bf.clear95, ptr %appreply, align 4
  %63 = ptrtoint ptr %pur_cinfo to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pur_cinfo, align 8
  %edif_enode_active = getelementptr inbounds %struct.app_start_reply, ptr %appreply, i32 0, i32 1
  %65 = ptrtoint ptr %edif_enode_active to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %edif_enode_active, align 4
  %66 = ptrtoint ptr %e_dbell to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %e_dbell, align 8
  %edif_edb_active = getelementptr inbounds %struct.app_start_reply, ptr %appreply, i32 0, i32 2
  %68 = ptrtoint ptr %edif_edb_active to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %edif_edb_active, align 4
  %reply_len = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %69 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 16, ptr %reply_len, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %1, align 4
  %sg_list100 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %71 = ptrtoint ptr %sg_list100 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sg_list100, align 4
  %sg_cnt102 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %73 = ptrtoint ptr %sg_cnt102 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sg_cnt102, align 4
  %call103 = call i32 @sg_copy_from_buffer(ptr noundef %72, i32 noundef %74, ptr noundef nonnull %appreply, i32 noundef 140) #12
  %reply_payload_rcv_len = getelementptr inbounds %struct.fc_bsg_reply, ptr %1, i32 0, i32 1
  %75 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call103, ptr %reply_payload_rcv_len, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.114, ptr noundef nonnull @__func__.qla_edif_app_start, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %appreply) #12
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %appstart) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla_edif_app_stop(ptr noundef %vha, ptr nocapture noundef %bsg_job) unnamed_addr #2 align 64 {
entry:
  %appstop = alloca %struct.app_stop, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %appstop) #12
  %0 = call ptr @memset(ptr %appstop, i32 255, i32 52)
  %reply = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %1 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reply, align 4
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %3 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sg_cnt, align 4
  %call = call i32 @sg_copy_to_buffer(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %appstop, i32 noundef 52) #12
  %7 = ptrtoint ptr %appstop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %appstop, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.116, ptr noundef nonnull @__func__.qla_edif_app_stop, i32 noundef %8) #12
  call void @qla_enode_stop(ptr noundef %vha)
  call void @qla_edb_stop(ptr noundef %vha)
  %vp_fcports = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %9 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vp_fcports, align 8
  %cmp.not2 = icmp eq ptr %10, %vp_fcports
  br i1 %cmp.not2, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %loop_state = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fcport.03 = phi ptr [ %10, %for.body.lr.ph ], [ %tf.04, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %fcport.03 to i32
  call void @__asan_load4_noabort(i32 %11)
  %tf.04 = load ptr, ptr %fcport.03, align 8
  %flags = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 35
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then11:                                        ; preds = %for.body
  %port_name = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 5
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 7
  %14 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %loop_id, align 4
  %conv = zext i16 %15 to i32
  %d_id = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 6
  %16 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %d_id, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  %logout_on_delete = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 2
  %17 = ptrtoint ptr %logout_on_delete to i32
  call void @__asan_loadN_noabort(i32 %17, i32 3)
  %bf.load12 = load i24, ptr %logout_on_delete, align 4
  %bf.lshr13 = lshr i24 %bf.load12, 18
  %bf.clear = and i24 %bf.lshr13, 1
  %bf.cast = zext i24 %bf.clear to i32
  %bf.lshr15 = lshr i24 %bf.load12, 16
  %bf.clear16 = and i24 %bf.lshr15, 1
  %bf.cast17 = zext i24 %bf.clear16 to i32
  %bf.lshr19 = lshr i24 %bf.load12, 15
  %bf.clear20 = and i24 %bf.lshr19, 1
  %bf.cast21 = zext i24 %bf.clear20 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 61572, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.qla_edif_app_stop, ptr noundef %fcport.03, ptr noundef %port_name, i32 noundef %conv, i32 noundef %bf.lshr, i32 noundef %bf.cast, i32 noundef %bf.cast17, i32 noundef %bf.cast21) #12
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %loop_state, i32 noundef 4) #12
  %18 = ptrtoint ptr %loop_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %loop_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp23 = icmp eq i32 %19, 2
  br i1 %cmp23, label %if.then11.for.end_crit_edge, label %if.end26

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end26:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %edif = getelementptr inbounds %struct.fc_port, ptr %fcport.03, i32 0, i32 72
  %20 = ptrtoint ptr %edif to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load27 = load i16, ptr %edif, align 8
  %bf.clear28 = and i16 %bf.load27, -24577
  %bf.set = or i16 %bf.clear28, 8192
  store i16 %bf.set, ptr %edif, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37150, ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.qla_edif_app_stop, ptr noundef %port_name) #12
  %21 = ptrtoint ptr %logout_on_delete to i32
  call void @__asan_loadN_noabort(i32 %21, i32 3)
  %bf.load32 = load i24, ptr %logout_on_delete, align 4
  %bf.set34 = or i24 %bf.load32, 32768
  store i24 %bf.set34, ptr %logout_on_delete, align 4
  call void @qlt_schedule_sess_for_deletion(ptr noundef %fcport.03) #12
  %22 = ptrtoint ptr %edif to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load36 = load i16, ptr %edif, align 8
  %bf.clear37 = and i16 %bf.load36, -4097
  store i16 %bf.clear37, ptr %edif, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tf.04, %vp_fcports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then11.for.end_crit_edge, %entry.for.end_crit_edge
  %reply_len = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %23 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %reply_len, align 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %appstop) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla_edif_app_authok(ptr noundef %vha, ptr nocapture noundef %bsg_job) unnamed_addr #2 align 64 {
entry:
  %appplogiok = alloca %struct.auth_complete_cmd, align 1
  %appplogireply = alloca %struct.app_plogi_reply, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %appplogiok) #12
  %0 = call ptr @memset(ptr %appplogiok, i32 255, i32 176)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %appplogireply) #12
  %1 = call ptr @memset(ptr %appplogireply, i32 0, i32 36)
  %reply = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %2 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reply, align 4
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg_cnt, align 4
  %call = call i32 @sg_copy_to_buffer(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %appplogiok, i32 noundef 176) #12
  %type = getelementptr inbounds %struct.auth_complete_cmd, ptr %appplogiok, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %type, align 1
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %u = getelementptr inbounds %struct.auth_complete_cmd, ptr %appplogiok, i32 0, i32 2
  %call2 = call ptr @qla2x00_find_fcport_by_wwpn(ptr noundef %vha, ptr noundef %u, i8 noundef zeroext 0) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %sw.bb.if.end14_crit_edge

sw.bb.if.end14_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.118, ptr noundef nonnull @__func__.qla_edif_app_authok, ptr noundef %u) #12
  br label %if.then13

sw.bb5:                                           ; preds = %entry
  %u6 = getelementptr inbounds %struct.auth_complete_cmd, ptr %appplogiok, i32 0, i32 2
  %vp_fcports.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %11 = ptrtoint ptr %vp_fcports.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vp_fcports.i, align 8
  %cmp.not36.i = icmp eq ptr %12, %vp_fcports.i
  br i1 %cmp.not36.i, label %sw.bb5.if.then9_crit_edge, label %sw.bb5.for.body.i_crit_edge

sw.bb5.for.body.i_crit_edge:                      ; preds = %sw.bb5
  br label %for.body.i

sw.bb5.if.then9_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb5.for.body.i_crit_edge
  %f.037.i = phi ptr [ %tf.038.i, %for.inc.i.for.body.i_crit_edge ], [ %12, %sw.bb5.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %f.037.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %tf.038.i = load ptr, ptr %f.037.i, align 8
  %flags.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 35
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %node_name.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 4
  %port_name.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 5
  %d_id.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 6
  %16 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i = load i32, ptr %d_id.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 8
  %17 = ptrtoint ptr %u6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load8.i = load i32, ptr %u6, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %vha, i32 noundef 8280, ptr noundef nonnull @.str.1, ptr noundef %node_name.i, ptr noundef %port_name.i, i32 noundef %bf.lshr.i, i32 noundef %bf.lshr9.i) #12
  %18 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load11.i = load i32, ptr %d_id.i, align 8
  %19 = ptrtoint ptr %u6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load13.i = load i32, ptr %u6, align 4
  %cmp15.unshifted.i = xor i32 %bf.load13.i, %bf.load11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp15.unshifted.i)
  %cmp15.i = icmp ult i32 %cmp15.unshifted.i, 256
  br i1 %cmp15.i, label %qla2x00_find_fcport_by_pid.exit, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tf.038.i, %vp_fcports.i
  br i1 %cmp.not.i, label %for.inc.i.if.then9_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.then9_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

qla2x00_find_fcport_by_pid.exit:                  ; preds = %if.then.i
  %tobool8.not = icmp eq ptr %f.037.i, null
  br i1 %tobool8.not, label %qla2x00_find_fcport_by_pid.exit.if.then9_crit_edge, label %qla2x00_find_fcport_by_pid.exit.if.end14_crit_edge

qla2x00_find_fcport_by_pid.exit.if.end14_crit_edge: ; preds = %qla2x00_find_fcport_by_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

qla2x00_find_fcport_by_pid.exit.if.then9_crit_edge: ; preds = %qla2x00_find_fcport_by_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %qla2x00_find_fcport_by_pid.exit.if.then9_crit_edge, %for.inc.i.if.then9_crit_edge, %sw.bb5.if.then9_crit_edge
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.119, ptr noundef nonnull @__func__.qla_edif_app_authok, i32 noundef 0) #12
  br label %if.then13

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.qla_edif_app_authok, i32 noundef %9) #12
  br label %if.then13

if.then13:                                        ; preds = %sw.default, %if.then9, %if.then
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 458752, ptr %3, align 4
  br label %errstate_exit

if.end14:                                         ; preds = %qla2x00_find_fcport_by_pid.exit.if.end14_crit_edge, %sw.bb.if.end14_crit_edge
  %fcport.0 = phi ptr [ %f.037.i, %qla2x00_find_fcport_by_pid.exit.if.end14_crit_edge ], [ %call2, %sw.bb.if.end14_crit_edge ]
  %state = getelementptr inbounds %struct.fc_port, ptr %fcport.0, i32 0, i32 34
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #12
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp = icmp eq i32 %22, 4
  br i1 %cmp, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.121, ptr noundef nonnull @__func__.qla_edif_app_authok) #12
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %3, align 4
  %edif.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0, i32 0, i32 72
  %24 = ptrtoint ptr %edif.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i1 = load i16, ptr %edif.i, align 8
  %25 = and i16 %bf.load.i1, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %25)
  %.not.i = icmp eq i16 %25, 768
  %port_name17.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0, i32 0, i32 5
  br i1 %.not.i, label %if.else.i, label %if.then.i3

if.then.i3:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr9.i2 = lshr i16 %bf.load.i1, 9
  %bf.clear10.i = and i16 %bf.lshr9.i2, 1
  %bf.cast11.i = zext i16 %bf.clear10.i to i32
  %bf.lshr14.i = lshr i16 %bf.load.i1, 8
  %bf.clear15.i = and i16 %bf.lshr14.i, 1
  %bf.cast16.i = zext i16 %bf.clear15.i to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37150, ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__.qla_edif_app_chk_sa_update, ptr noundef %port_name17.i, i32 noundef %bf.cast11.i, i32 noundef %bf.cast16.i) #12
  br label %qla_edif_app_chk_sa_update.exit

if.else.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37150, ptr noundef nonnull @.str.124, ptr noundef nonnull @__func__.qla_edif_app_chk_sa_update, ptr noundef %port_name17.i) #12
  %26 = ptrtoint ptr %edif.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load20.i = load i16, ptr %edif.i, align 8
  %bf.clear32.i = and i16 %bf.load20.i, -961
  store i16 %bf.clear32.i, ptr %edif.i, align 8
  br label %qla_edif_app_chk_sa_update.exit

qla_edif_app_chk_sa_update.exit:                  ; preds = %if.else.i, %if.then.i3
  %storemerge.i = phi i32 [ 0, %if.then.i3 ], [ 1, %if.else.i ]
  %27 = ptrtoint ptr %appplogireply to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge.i, ptr %appplogireply, align 4
  br label %errstate_exit

if.end19:                                         ; preds = %if.end14
  %disc_state = getelementptr inbounds %struct.fc_port, ptr %fcport.0, i32 0, i32 50
  %28 = ptrtoint ptr %disc_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %disc_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %29)
  %cmp20.not = icmp eq i32 %29, 10
  br i1 %cmp20.not, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %port_name = getelementptr inbounds %struct.fc_port, ptr %fcport.0, i32 0, i32 5
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37150, ptr noundef nonnull @.str.122, ptr noundef nonnull @__func__.qla_edif_app_authok, ptr noundef %port_name, i32 noundef %29) #12
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %3, align 4
  %31 = ptrtoint ptr %appplogireply to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %appplogireply, align 4
  br label %errstate_exit

if.end26:                                         ; preds = %if.end19
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %3, align 4
  %33 = ptrtoint ptr %appplogireply to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %appplogireply, align 4
  %edif = getelementptr inbounds %struct.fc_port, ptr %fcport.0, i32 0, i32 72
  %authok = getelementptr inbounds %struct.fc_port, ptr %fcport.0, i32 0, i32 72, i32 6
  %34 = ptrtoint ptr %authok to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load29 = load i8, ptr %authok, align 1
  %bf.set = or i8 %bf.load29, -128
  store i8 %bf.set, ptr %authok, align 1
  %35 = ptrtoint ptr %edif to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load31 = load i16, ptr %edif, align 8
  %36 = and i16 %bf.load31, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %36)
  %.not = icmp eq i16 %36, 768
  %port_name56 = getelementptr inbounds %struct.fc_port, ptr %fcport.0, i32 0, i32 5
  br i1 %.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr46 = lshr i16 %bf.load31, 9
  %bf.clear47 = and i16 %bf.lshr46, 1
  %bf.cast48 = zext i16 %bf.clear47 to i32
  %bf.lshr51 = lshr i16 %bf.load31, 8
  %bf.clear52 = and i16 %bf.lshr51, 1
  %bf.cast53 = zext i16 %bf.clear52 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37150, ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__.qla_edif_app_authok, ptr noundef %port_name56, i32 noundef %bf.cast48, i32 noundef %bf.cast53) #12
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %3, align 4
  %38 = ptrtoint ptr %appplogireply to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %appplogireply, align 4
  br label %errstate_exit

if.else:                                          ; preds = %if.end26
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37150, ptr noundef nonnull @.str.124, ptr noundef nonnull @__func__.qla_edif_app_authok, ptr noundef %port_name56) #12
  %39 = ptrtoint ptr %edif to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load59 = load i16, ptr %edif, align 8
  %bf.clear72 = and i16 %bf.load59, -961
  store i16 %bf.clear72, ptr %edif, align 8
  %host.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %40 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %host.i, align 8
  %active_mode.i = getelementptr inbounds %struct.Scsi_Host, ptr %41, i32 0, i32 36
  %42 = ptrtoint ptr %active_mode.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i4 = load i16, ptr %active_mode.i, align 8
  %bf.lshr.mask.i = and i16 %bf.load.i4, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask.i)
  %cmp.i = icmp eq i16 %bf.lshr.mask.i, 16384
  br i1 %cmp.i, label %if.then76, label %if.else.errstate_exit_crit_edge

if.else.errstate_exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %errstate_exit

if.then76:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37150, ptr noundef nonnull @.str.125, ptr noundef nonnull @__func__.qla_edif_app_authok, ptr noundef %port_name56) #12
  %call79 = call i32 @qla24xx_post_prli_work(ptr noundef %vha, ptr noundef nonnull %fcport.0) #12
  br label %errstate_exit

errstate_exit:                                    ; preds = %if.then76, %if.else.errstate_exit_crit_edge, %if.then41, %if.then21, %qla_edif_app_chk_sa_update.exit, %if.then13
  %reply_len = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %43 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16, ptr %reply_len, align 4
  %sg_list81 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %44 = ptrtoint ptr %sg_list81 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sg_list81, align 4
  %sg_cnt83 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %sg_cnt83 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sg_cnt83, align 4
  %call84 = call i32 @sg_copy_from_buffer(ptr noundef %45, i32 noundef %47, ptr noundef nonnull %appplogireply, i32 noundef 36) #12
  %reply_payload_rcv_len = getelementptr inbounds %struct.fc_bsg_reply, ptr %3, i32 0, i32 1
  %48 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call84, ptr %reply_payload_rcv_len, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %appplogireply) #12
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %appplogiok) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla_edif_app_authfail(ptr noundef %vha, ptr nocapture noundef %bsg_job) unnamed_addr #2 align 64 {
entry:
  %appplogifail = alloca %struct.auth_complete_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %appplogifail) #12
  %0 = call ptr @memset(ptr %appplogifail, i32 255, i32 176)
  %reply = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %1 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reply, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.qla_edif_app_authfail) #12
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %3 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sg_cnt, align 4
  %call = call i32 @sg_copy_to_buffer(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %appplogifail, i32 noundef 176) #12
  %type = getelementptr inbounds %struct.auth_complete_cmd, ptr %appplogifail, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %type, align 1
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %8, label %sw.epilog.thread [
    i32 1, label %sw.epilog
    i32 2, label %sw.bb3
  ]

sw.bb3:                                           ; preds = %entry
  %u4 = getelementptr inbounds %struct.auth_complete_cmd, ptr %appplogifail, i32 0, i32 2
  %vp_fcports.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %10 = ptrtoint ptr %vp_fcports.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vp_fcports.i, align 8
  %cmp.not36.i = icmp eq ptr %11, %vp_fcports.i
  br i1 %cmp.not36.i, label %sw.bb3.sw.epilog.thread50_crit_edge, label %sw.bb3.for.body.i_crit_edge

sw.bb3.for.body.i_crit_edge:                      ; preds = %sw.bb3
  br label %for.body.i

sw.bb3.sw.epilog.thread50_crit_edge:              ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread50

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb3.for.body.i_crit_edge
  %f.037.i = phi ptr [ %tf.038.i, %for.inc.i.for.body.i_crit_edge ], [ %11, %sw.bb3.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %f.037.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %tf.038.i = load ptr, ptr %f.037.i, align 8
  %flags.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 35
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %node_name.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 4
  %port_name.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 5
  %d_id.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 6
  %15 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i = load i32, ptr %d_id.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 8
  %16 = ptrtoint ptr %u4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load8.i = load i32, ptr %u4, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %vha, i32 noundef 8280, ptr noundef nonnull @.str.1, ptr noundef %node_name.i, ptr noundef %port_name.i, i32 noundef %bf.lshr.i, i32 noundef %bf.lshr9.i) #12
  %17 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load11.i = load i32, ptr %d_id.i, align 8
  %18 = ptrtoint ptr %u4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load13.i = load i32, ptr %u4, align 4
  %cmp15.unshifted.i = xor i32 %bf.load13.i, %bf.load11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp15.unshifted.i)
  %cmp15.i = icmp ult i32 %cmp15.unshifted.i, 256
  br i1 %cmp15.i, label %qla2x00_find_fcport_by_pid.exit, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tf.038.i, %vp_fcports.i
  br i1 %cmp.not.i, label %for.inc.i.sw.epilog.thread50_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.sw.epilog.thread50_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread50

qla2x00_find_fcport_by_pid.exit:                  ; preds = %if.then.i
  %tobool.not = icmp eq ptr %f.037.i, null
  br i1 %tobool.not, label %qla2x00_find_fcport_by_pid.exit.sw.epilog.thread50_crit_edge, label %sw.epilog.thread53

qla2x00_find_fcport_by_pid.exit.sw.epilog.thread50_crit_edge: ; preds = %qla2x00_find_fcport_by_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread50

sw.epilog.thread53:                               ; preds = %qla2x00_find_fcport_by_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %2, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.127, ptr noundef nonnull @__func__.qla_edif_app_authfail, ptr noundef nonnull %f.037.i) #12
  br label %if.then10

sw.epilog.thread50:                               ; preds = %qla2x00_find_fcport_by_pid.exit.sw.epilog.thread50_crit_edge, %for.inc.i.sw.epilog.thread50_crit_edge, %sw.bb3.sw.epilog.thread50_crit_edge
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.119, ptr noundef nonnull @__func__.qla_edif_app_authfail, i32 noundef 0) #12
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %2, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.127, ptr noundef nonnull @__func__.qla_edif_app_authfail, ptr noundef null) #12
  br label %if.end19

sw.epilog.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37150, ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.qla_edif_app_authfail, i32 noundef %8) #12
  %reply_len = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %21 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %reply_len, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 458752, ptr %2, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.127, ptr noundef nonnull @__func__.qla_edif_app_authfail, ptr noundef null) #12
  br label %if.end19

sw.epilog:                                        ; preds = %entry
  %u = getelementptr inbounds %struct.auth_complete_cmd, ptr %appplogifail, i32 0, i32 2
  %call2 = call ptr @qla2x00_find_fcport_by_wwpn(ptr noundef %vha, ptr noundef %u, i8 noundef zeroext 0) #12
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %2, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.127, ptr noundef nonnull @__func__.qla_edif_app_authfail, ptr noundef %call2) #12
  %tobool9.not = icmp eq ptr %call2, null
  br i1 %tobool9.not, label %sw.epilog.if.end19_crit_edge, label %sw.epilog.if.then10_crit_edge

sw.epilog.if.then10_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

sw.epilog.if.end19_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then10:                                        ; preds = %sw.epilog.if.then10_crit_edge, %sw.epilog.thread53
  %fcport.056 = phi ptr [ %f.037.i, %sw.epilog.thread53 ], [ %call2, %sw.epilog.if.then10_crit_edge ]
  %port_name = getelementptr inbounds %struct.fc_port, ptr %fcport.056, i32 0, i32 5
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %fcport.056, i32 0, i32 7
  %24 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %loop_id, align 4
  %conv = zext i16 %25 to i32
  %d_id = getelementptr inbounds %struct.fc_port, ptr %fcport.056, i32 0, i32 6
  %26 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load12 = load i32, ptr %d_id, align 8
  %bf.lshr13 = lshr i32 %bf.load12, 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37150, ptr noundef nonnull @.str.128, ptr noundef nonnull @__func__.qla_edif_app_authfail, ptr noundef %port_name, i32 noundef %conv, i32 noundef %bf.lshr13) #12
  %vha14 = getelementptr inbounds %struct.fc_port, ptr %fcport.056, i32 0, i32 1
  %27 = ptrtoint ptr %vha14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vha14, align 8
  %host.i = getelementptr inbounds %struct.scsi_qla_host, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host.i, align 8
  %active_mode.i = getelementptr inbounds %struct.Scsi_Host, ptr %30, i32 0, i32 36
  %31 = ptrtoint ptr %active_mode.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i39 = load i16, ptr %active_mode.i, align 8
  %bf.lshr.mask.i = and i16 %bf.load.i39, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask.i)
  %cmp.i = icmp eq i16 %bf.lshr.mask.i, 16384
  br i1 %cmp.i, label %if.then16, label %if.then10.if.end19_crit_edge

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then16:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %send_els_logo = getelementptr inbounds %struct.fc_port, ptr %fcport.056, i32 0, i32 2
  %32 = ptrtoint ptr %send_els_logo to i32
  call void @__asan_loadN_noabort(i32 %32, i32 3)
  %bf.load17 = load i24, ptr %send_els_logo, align 4
  %bf.set = or i24 %bf.load17, 32768
  store i24 %bf.set, ptr %send_els_logo, align 4
  call void @qlt_schedule_sess_for_deletion(ptr noundef nonnull %fcport.056) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then10.if.end19_crit_edge, %sw.epilog.if.end19_crit_edge, %sw.epilog.thread, %sw.epilog.thread50
  %rval.047 = phi i32 [ -1, %sw.epilog.thread ], [ 0, %if.then10.if.end19_crit_edge ], [ 0, %if.then16 ], [ 0, %sw.epilog.if.end19_crit_edge ], [ 0, %sw.epilog.thread50 ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %appplogifail) #12
  ret i32 %rval.047
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla_edif_app_getfcinfo(ptr noundef %vha, ptr nocapture noundef %bsg_job) unnamed_addr #2 align 64 {
entry:
  %app_req = alloca %struct.app_pinfo_req, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reply = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %0 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply, align 4
  call void @llvm.lifetime.start.p0(i64 73, ptr nonnull %app_req) #12
  %2 = call ptr @memset(ptr %app_req, i32 255, i32 73)
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.129, ptr noundef nonnull @__func__.qla_edif_app_getfcinfo) #12
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %3 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sg_cnt, align 4
  %call = call i32 @sg_copy_to_buffer(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %app_req, i32 noundef 73) #12
  %num_ports = getelementptr inbounds %struct.app_pinfo_req, ptr %app_req, i32 0, i32 1
  %7 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_ports, align 1
  %conv = zext i8 %8 to i32
  %mul = mul nuw nsw i32 %conv, 72
  %add = add nuw nsw i32 %mul, 33
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.if.end107_crit_edge, label %if.else

entry.if.end107_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.else:                                          ; preds = %entry
  %vp_fcports = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %9 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vp_fcports, align 8
  %remote_pid = getelementptr inbounds %struct.app_pinfo_req, ptr %app_req, i32 0, i32 2
  %cmp.not196 = icmp eq ptr %10, %vp_fcports
  br i1 %cmp.not196, label %if.else.for.end_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else.for.body_crit_edge
  %pcnt.0198 = phi i32 [ %pcnt.1, %for.inc.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %fcport.0197 = phi ptr [ %tf.0200, %for.inc.for.body_crit_edge ], [ %10, %if.else.for.body_crit_edge ]
  %11 = ptrtoint ptr %fcport.0197 to i32
  call void @__asan_load4_noabort(i32 %11)
  %tf.0200 = load ptr, ptr %fcport.0197, align 8
  %flags = getelementptr inbounds %struct.fc_port, ptr %fcport.0197, i32 0, i32 35
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %14 = ptrtoint ptr %remote_pid to i32
  call void @__asan_loadN_noabort(i32 %14, i32 3)
  %tdid.sroa.0.0.copyload = load i24, ptr %remote_pid, align 1
  %tdid.sroa.0.0.insert.ext = zext i24 %tdid.sroa.0.0.copyload to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 8280, ptr noundef nonnull @.str.130, i32 noundef %tdid.sroa.0.0.insert.ext) #12
  %15 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_ports, align 1
  %conv13 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %pcnt.0198, i32 %conv13)
  %cmp14.not = icmp slt i32 %pcnt.0198, %conv13
  br i1 %cmp14.not, label %if.end17, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end17:                                         ; preds = %if.end
  %cmp20.not = icmp eq i24 %tdid.sroa.0.0.copyload, 0
  br i1 %cmp20.not, label %if.end17.if.end29_crit_edge, label %land.lhs.true

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end17
  %d_id = getelementptr inbounds %struct.fc_port, ptr %fcport.0197, i32 0, i32 6
  %17 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load24 = load i32, ptr %d_id, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr25, i32 %tdid.sroa.0.0.insert.ext)
  %cmp26.not = icmp eq i32 %bf.lshr25, %tdid.sroa.0.0.insert.ext
  br i1 %cmp26.not, label %land.lhs.true.if.end29_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %if.end17.if.end29_crit_edge
  %rekey_cnt = getelementptr inbounds %struct.fc_port, ptr %fcport.0197, i32 0, i32 72, i32 7
  %18 = ptrtoint ptr %rekey_cnt to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rekey_cnt, align 2
  %conv30 = zext i16 %19 to i64
  %arrayidx = getelementptr %struct.app_pinfo_reply, ptr %call9.i.i, i32 0, i32 2, i32 %pcnt.0198
  %rekey_count = getelementptr %struct.app_pinfo_reply, ptr %call9.i.i, i32 0, i32 2, i32 %pcnt.0198, i32 6
  %20 = ptrtoint ptr %rekey_count to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %conv30, ptr %rekey_count, align 1
  %remote_type = getelementptr %struct.app_pinfo_reply, ptr %call9.i.i, i32 0, i32 2, i32 %pcnt.0198, i32 2
  %21 = ptrtoint ptr %remote_type to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %remote_type, align 1
  %port_type = getelementptr inbounds %struct.fc_port, ptr %fcport.0197, i32 0, i32 33
  %22 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port_type, align 8
  %and33 = and i32 %23, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp ne i32 %and33, 0
  %spec.store.select = zext i1 %tobool34.not to i8
  %24 = ptrtoint ptr %remote_type to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %spec.store.select, ptr %remote_type, align 1
  %25 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_type, align 8
  %and43 = and i32 %26, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end29.if.end52_crit_edge, label %if.then45

if.end29.if.end52_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then45:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %27 = or i8 %spec.store.select, 2
  %28 = ptrtoint ptr %remote_type to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %remote_type, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %if.end29.if.end52_crit_edge
  %d_id56 = getelementptr inbounds %struct.fc_port, ptr %fcport.0197, i32 0, i32 6
  %29 = ptrtoint ptr %d_id56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %d_id56, align 8
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %arrayidx, align 1
  %node_name = getelementptr inbounds %struct.fc_port, ptr %fcport.0197, i32 0, i32 4
  %port_name = getelementptr inbounds %struct.fc_port, ptr %fcport.0197, i32 0, i32 5
  %bf.load59 = load i32, ptr %d_id56, align 8
  %bf.lshr60 = lshr i32 %bf.load59, 8
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 8
  %and62 = and i32 %33, 64
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 8280, ptr noundef nonnull @.str.131, ptr noundef %node_name, ptr noundef %port_name, i32 noundef %pcnt.0198, i32 noundef %bf.lshr60, i32 noundef %and62) #12
  %auth_state = getelementptr inbounds %struct.fc_port, ptr %fcport.0197, i32 0, i32 72, i32 5
  %34 = ptrtoint ptr %auth_state to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %auth_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cond114 = icmp eq i8 %35, 3
  br i1 %cond114, label %sw.bb, label %if.end52.sw.epilog_crit_edge

if.end52.sw.epilog_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end52
  %disc_state = getelementptr inbounds %struct.fc_port, ptr %fcport.0197, i32 0, i32 50
  %36 = ptrtoint ptr %disc_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %disc_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %37)
  %cmp65 = icmp eq i32 %37, 10
  br i1 %cmp65, label %if.then67, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then67:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %auth_state to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %auth_state, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then67, %sw.bb.sw.epilog_crit_edge, %if.end52.sw.epilog_crit_edge
  %.sink = phi i8 [ 2, %if.then67 ], [ 3, %sw.bb.sw.epilog_crit_edge ], [ %35, %if.end52.sw.epilog_crit_edge ]
  %auth_state72 = getelementptr %struct.app_pinfo_reply, ptr %call9.i.i, i32 0, i32 2, i32 %pcnt.0198, i32 4
  %39 = ptrtoint ptr %auth_state72 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.sink, ptr %auth_state72, align 1
  %remote_wwpn = getelementptr %struct.app_pinfo_reply, ptr %call9.i.i, i32 0, i32 2, i32 %pcnt.0198, i32 1
  %40 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %port_name, align 8
  %42 = ptrtoint ptr %remote_wwpn to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %remote_wwpn, align 1
  %state = getelementptr inbounds %struct.fc_port, ptr %fcport.0197, i32 0, i32 34
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #12
  %43 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp89 = icmp eq i32 %44, 4
  %conv91 = zext i1 %cmp89 to i8
  %remote_state = getelementptr %struct.app_pinfo_reply, ptr %call9.i.i, i32 0, i32 2, i32 %pcnt.0198, i32 3
  %45 = ptrtoint ptr %remote_state to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv91, ptr %remote_state, align 2
  %inc = add nsw i32 %pcnt.0198, 1
  br i1 %cmp20.not, label %sw.epilog.for.inc_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %pcnt.1 = phi i32 [ %pcnt.0198, %land.lhs.true.for.inc_crit_edge ], [ %inc, %sw.epilog.for.inc_crit_edge ], [ %pcnt.0198, %for.body.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %tf.0200, %vp_fcports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.epilog.for.end_crit_edge, %if.end.for.end_crit_edge, %if.else.for.end_crit_edge
  %pcnt.2 = phi i32 [ 0, %if.else.for.end_crit_edge ], [ %inc, %sw.epilog.for.end_crit_edge ], [ %pcnt.0198, %if.end.for.end_crit_edge ], [ %pcnt.1, %for.inc.for.end_crit_edge ]
  %conv105 = trunc i32 %pcnt.2 to i8
  %46 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv105, ptr %call9.i.i, align 128
  br label %if.end107

if.end107:                                        ; preds = %for.end, %entry.if.end107_crit_edge
  %storemerge = phi i32 [ 0, %for.end ], [ 458752, %entry.if.end107_crit_edge ]
  %pcnt.3 = phi i32 [ %pcnt.2, %for.end ], [ 0, %entry.if.end107_crit_edge ]
  %rval.0 = phi i32 [ 0, %for.end ], [ -1, %entry.if.end107_crit_edge ]
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %storemerge, ptr %1, align 4
  %reply_len = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %48 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 16, ptr %reply_len, align 4
  %sg_list108 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %49 = ptrtoint ptr %sg_list108 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sg_list108, align 4
  %sg_cnt110 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %sg_cnt110 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sg_cnt110, align 4
  %mul111 = mul i32 %pcnt.3, 72
  %add112 = add i32 %mul111, 33
  %call113 = call i32 @sg_copy_from_buffer(ptr noundef %50, i32 noundef %52, ptr noundef %call9.i.i, i32 noundef %add112) #12
  %reply_payload_rcv_len = getelementptr inbounds %struct.fc_bsg_reply, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call113, ptr %reply_payload_rcv_len, align 4
  call void @kfree(ptr noundef %call9.i.i) #12
  call void @llvm.lifetime.end.p0(i64 73, ptr nonnull %app_req) #12
  ret i32 %rval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla_edif_app_getstats(ptr noundef %vha, ptr nocapture noundef %bsg_job) unnamed_addr #2 align 64 {
entry:
  %app_req = alloca %struct.app_sinfo_req, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reply = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %0 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply, align 4
  call void @llvm.lifetime.start.p0(i64 69, ptr nonnull %app_req) #12
  %2 = call ptr @memset(ptr %app_req, i32 255, i32 69)
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %3 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sg_cnt, align 4
  %call = call i32 @sg_copy_to_buffer(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %app_req, i32 noundef 69) #12
  %num_ports = getelementptr inbounds %struct.app_sinfo_req, ptr %app_req, i32 0, i32 1
  %7 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %if.then, label %entry.if.end8.i.i_crit_edge

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.132, ptr noundef nonnull @__func__.qla_edif_app_getstats) #12
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 458752, ptr %1, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then, %entry.if.end8.i.i_crit_edge
  %rval.0 = phi i32 [ -1, %if.then ], [ 0, %entry.if.end8.i.i_crit_edge ]
  %10 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_ports, align 1
  %conv4 = zext i8 %11 to i32
  %mul = mul nuw nsw i32 %conv4, 33
  %add = add nuw nsw i32 %mul, 1
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.if.end45_crit_edge, label %if.else

if.end8.i.i.if.end45_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.else:                                          ; preds = %if.end8.i.i
  %vp_fcports = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %12 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vp_fcports, align 8
  %cmp14.not84 = icmp eq ptr %13, %vp_fcports
  br i1 %cmp14.not84, label %if.else.for.end_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else.for.body_crit_edge
  %pcnt.086 = phi i32 [ %pcnt.1, %for.inc.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %fcport.085 = phi ptr [ %tf.087, %for.inc.for.body_crit_edge ], [ %13, %if.else.for.body_crit_edge ]
  %14 = ptrtoint ptr %fcport.085 to i32
  call void @__asan_load4_noabort(i32 %14)
  %tf.087 = load ptr, ptr %fcport.085, align 8
  %edif = getelementptr inbounds %struct.fc_port, ptr %fcport.085, i32 0, i32 72
  %15 = ptrtoint ptr %edif to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %edif, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool16.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %if.then17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then17:                                        ; preds = %for.body
  %16 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_ports, align 1
  %conv19 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %pcnt.086, i32 %conv19)
  %cmp20 = icmp ugt i32 %pcnt.086, %conv19
  br i1 %cmp20, label %if.then17.for.end_crit_edge, label %if.end23

if.then17.for.end_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %rekey_cnt = getelementptr inbounds %struct.fc_port, ptr %fcport.085, i32 0, i32 72, i32 7
  %18 = ptrtoint ptr %rekey_cnt to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rekey_cnt, align 2
  %conv25 = zext i16 %19 to i64
  %arrayidx = getelementptr %struct.app_stats_reply, ptr %call9.i.i, i32 0, i32 1, i32 %pcnt.086
  %rekey_count = getelementptr %struct.app_stats_reply, ptr %call9.i.i, i32 0, i32 1, i32 %pcnt.086, i32 1
  %20 = ptrtoint ptr %rekey_count to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %conv25, ptr %rekey_count, align 1
  %tx_bytes = getelementptr inbounds %struct.fc_port, ptr %fcport.085, i32 0, i32 72, i32 3
  %21 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_bytes, align 8
  %tx_bytes29 = getelementptr %struct.app_stats_reply, ptr %call9.i.i, i32 0, i32 1, i32 %pcnt.086, i32 3
  %23 = ptrtoint ptr %tx_bytes29 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %tx_bytes29, align 1
  %rx_bytes = getelementptr inbounds %struct.fc_port, ptr %fcport.085, i32 0, i32 72, i32 4
  %24 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_bytes, align 8
  %rx_bytes33 = getelementptr %struct.app_stats_reply, ptr %call9.i.i, i32 0, i32 1, i32 %pcnt.086, i32 4
  %26 = ptrtoint ptr %rx_bytes33 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %rx_bytes33, align 1
  %port_name = getelementptr inbounds %struct.fc_port, ptr %fcport.085, i32 0, i32 5
  %27 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %port_name, align 8
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %arrayidx, align 1
  %inc = add i32 %pcnt.086, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %for.body.for.inc_crit_edge
  %pcnt.1 = phi i32 [ %inc, %if.end23 ], [ %pcnt.086, %for.body.for.inc_crit_edge ]
  %cmp14.not = icmp eq ptr %tf.087, %vp_fcports
  br i1 %cmp14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then17.for.end_crit_edge, %if.else.for.end_crit_edge
  %pcnt.0.lcssa = phi i32 [ 0, %if.else.for.end_crit_edge ], [ %pcnt.086, %if.then17.for.end_crit_edge ], [ %pcnt.1, %for.inc.for.end_crit_edge ]
  %conv43 = trunc i32 %pcnt.0.lcssa to i8
  %30 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv43, ptr %call9.i.i, align 128
  br label %if.end45

if.end45:                                         ; preds = %for.end, %if.end8.i.i.if.end45_crit_edge
  %storemerge = phi i32 [ 0, %for.end ], [ 458752, %if.end8.i.i.if.end45_crit_edge ]
  %pcnt.2 = phi i32 [ %pcnt.0.lcssa, %for.end ], [ 0, %if.end8.i.i.if.end45_crit_edge ]
  %rval.1 = phi i32 [ %rval.0, %for.end ], [ -1, %if.end8.i.i.if.end45_crit_edge ]
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge, ptr %1, align 4
  %reply_len = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %32 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %reply_len, align 4
  %sg_list46 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %33 = ptrtoint ptr %sg_list46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sg_list46, align 4
  %sg_cnt48 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %sg_cnt48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sg_cnt48, align 4
  %mul49 = mul i32 %pcnt.2, 33
  %add50 = add i32 %mul49, 1
  %call51 = call i32 @sg_copy_from_buffer(ptr noundef %34, i32 noundef %36, ptr noundef %call9.i.i, i32 noundef %add50) #12
  %reply_payload_rcv_len = getelementptr inbounds %struct.fc_bsg_reply, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call51, ptr %reply_payload_rcv_len, align 4
  call void @kfree(ptr noundef %call9.i.i) #12
  call void @llvm.lifetime.end.p0(i64 69, ptr nonnull %app_req) #12
  ret i32 %rval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bsg_job_done(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_edif_flush_sa_ctl_lists(ptr noundef %fcport) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_list_lock = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sa_list_lock) #12
  %tx_sa_list = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 10
  %0 = ptrtoint ptr %tx_sa_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_sa_list, align 8
  %cmp15.not72 = icmp eq ptr %1, %tx_sa_list
  br i1 %cmp15.not72, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %sa_ctl.073 = phi ptr [ %tsa_ctl.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %sa_ctl.073 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tsa_ctl.0 = load ptr, ptr %sa_ctl.073, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sa_ctl.073) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sa_ctl.073, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %sa_ctl.073 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sa_ctl.073, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %sa_ctl.073 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %sa_ctl.073, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %sa_ctl.073, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %sa_ctl.073) #12
  %cmp15.not = icmp eq ptr %tsa_ctl.0, %tx_sa_list
  br i1 %cmp15.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %rx_sa_list = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 11
  %11 = ptrtoint ptr %rx_sa_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_sa_list, align 8
  %cmp37.not75 = icmp eq ptr %12, %rx_sa_list
  br i1 %cmp37.not75, label %for.end.for.end48_crit_edge, label %for.end.for.body40_crit_edge

for.end.for.body40_crit_edge:                     ; preds = %for.end
  br label %for.body40

for.end.for.end48_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end48

for.body40:                                       ; preds = %list_del.exit71.for.body40_crit_edge, %for.end.for.body40_crit_edge
  %sa_ctl.176 = phi ptr [ %tsa_ctl.1, %list_del.exit71.for.body40_crit_edge ], [ %12, %for.end.for.body40_crit_edge ]
  %13 = ptrtoint ptr %sa_ctl.176 to i32
  call void @__asan_load4_noabort(i32 %13)
  %tsa_ctl.1 = load ptr, ptr %sa_ctl.176, align 4
  %call.i.i66 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sa_ctl.176) #12
  br i1 %call.i.i66, label %if.end.i.i69, label %for.body40.list_del.exit71_crit_edge

for.body40.list_del.exit71_crit_edge:             ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit71

if.end.i.i69:                                     ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i67 = getelementptr inbounds %struct.list_head, ptr %sa_ctl.176, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i67 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i67, align 4
  %16 = ptrtoint ptr %sa_ctl.176 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sa_ctl.176, align 4
  %prev1.i.i.i68 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i68, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit71

list_del.exit71:                                  ; preds = %if.end.i.i69, %for.body40.list_del.exit71_crit_edge
  %20 = ptrtoint ptr %sa_ctl.176 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %sa_ctl.176, align 4
  %prev.i70 = getelementptr inbounds %struct.list_head, ptr %sa_ctl.176, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i70 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i70, align 4
  tail call void @kfree(ptr noundef %sa_ctl.176) #12
  %cmp37.not = icmp eq ptr %tsa_ctl.1, %rx_sa_list
  br i1 %cmp37.not, label %list_del.exit71.for.end48_crit_edge, label %list_del.exit71.for.body40_crit_edge

list_del.exit71.for.body40_crit_edge:             ; preds = %list_del.exit71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body40

list_del.exit71.for.end48_crit_edge:              ; preds = %list_del.exit71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end48

for.end48:                                        ; preds = %list_del.exit71.for.end48_crit_edge, %for.end.for.end48_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sa_list_lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qla_edif_find_sa_ctl_by_index(ptr noundef readonly %fcport, i32 noundef %index, i32 noundef %dir) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp = icmp eq i32 %dir, 2
  %tx_sa_list = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 10
  %rx_sa_list = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 11
  %sa_list.0 = select i1 %cmp, ptr %tx_sa_list, ptr %rx_sa_list
  %0 = ptrtoint ptr %sa_list.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sa_list.0, align 4
  %cmp8.not29 = icmp eq ptr %1, %sa_list.0
  br i1 %cmp8.not29, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %sa_ctl.030 = phi ptr [ %tsa_ctl.031, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %sa_ctl.030 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tsa_ctl.031 = load ptr, ptr %sa_ctl.030, align 4
  %state = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030, i32 0, i32 5
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %index9 = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030, i32 0, i32 2
  %6 = ptrtoint ptr %index9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index9, align 2
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %index)
  %cmp10 = icmp eq i32 %conv, %index
  br i1 %cmp10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp8.not = icmp eq ptr %tsa_ctl.031, %sa_list.0
  br i1 %cmp8.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %sa_ctl.030, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla_edif_list_delete_sa_index(ptr noundef %fcport, ptr noundef %entry1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %indx_list_lock = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %indx_list_lock) #12
  %next = getelementptr inbounds %struct.edif_list_entry, ptr %entry1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %next) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.edif_list_entry, ptr %entry1, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %next, align 4
  %prev.i = getelementptr inbounds %struct.edif_list_entry, ptr %entry1, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %indx_list_lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla_edif_free_sa_ctl(ptr noundef %fcport, ptr noundef %sa_ctl, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_list_lock = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sa_list_lock) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sa_ctl) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sa_ctl, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %sa_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sa_ctl, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %sa_ctl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %sa_ctl, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %sa_ctl, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sa_list_lock, i32 noundef %call2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %index)
  %cmp7 = icmp sgt i32 %index, 511
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %tx_rekey_cnt = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 1
  %8 = ptrtoint ptr %tx_rekey_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_rekey_cnt, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %tx_rekey_cnt, align 4
  br label %if.end

if.else:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %rx_rekey_cnt = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 2
  %10 = ptrtoint ptr %rx_rekey_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_rekey_cnt, align 8
  %dec11 = add i32 %11, -1
  store i32 %dec11, ptr %rx_rekey_cnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @kfree(ptr noundef %sa_ctl) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla_edif_sadb_delete_sa_index(ptr nocapture noundef readonly %fcport, i16 noundef zeroext %nport_handle, i16 noundef zeroext %sa_index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %sa_index to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %sa_index)
  %cmp = icmp ugt i16 %sa_index, 511
  %vha3 = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 1
  %0 = ptrtoint ptr %vha3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha3, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 12387, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.qla_edif_sadb_delete_sa_index) #12
  %sadb_tx_index_list = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 305
  %sadb_rx_index_list = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 306
  %sa_list.0 = select i1 %cmp, ptr %sadb_tx_index_list, ptr %sadb_rx_index_list
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.in.i = phi ptr [ %sa_list.0, %entry ], [ %.pn.in.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.in.i, %sa_list.0
  br i1 %cmp.not.i, label %for.cond.i.if.then5_crit_edge, label %for.body.i

for.cond.i.if.then5_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

for.body.i:                                       ; preds = %for.cond.i
  %handle.i = getelementptr i8, ptr %.pn.in.i, i32 -4
  %5 = ptrtoint ptr %handle.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %handle.i, align 4
  %cmp9.i = icmp eq i16 %6, %nport_handle
  br i1 %cmp9.i, label %qla_edif_sadb_find_sa_index_entry.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

qla_edif_sadb_find_sa_index_entry.exit:           ; preds = %for.body.i
  %entry1.0.le.i = getelementptr i8, ptr %.pn.in.i, i32 -24
  %tobool4.not = icmp eq ptr %entry1.0.le.i, null
  br i1 %tobool4.not, label %qla_edif_sadb_find_sa_index_entry.exit.if.then5_crit_edge, label %do.body8

qla_edif_sadb_find_sa_index_entry.exit.if.then5_crit_edge: ; preds = %qla_edif_sadb_find_sa_index_entry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5:                                         ; preds = %qla_edif_sadb_find_sa_index_entry.exit.if.then5_crit_edge, %for.cond.i.if.then5_crit_edge
  %conv6 = zext i16 %nport_handle to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 12387, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.qla_edif_sadb_delete_sa_index, i32 noundef %conv6) #12
  br label %cleanup

do.body8:                                         ; preds = %qla_edif_sadb_find_sa_index_entry.exit
  %sadb_lock = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 307
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sadb_lock) #12
  %sub.i = add i16 %sa_index, -512
  %lsa_index.0.i = select i1 %cmp, i16 %sub.i, i16 %sa_index
  %conv8.i = zext i16 %lsa_index.0.i to i32
  %7 = ptrtoint ptr %entry1.0.le.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %entry1.0.le.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %sa_index)
  %cmp20 = icmp eq i16 %8, %sa_index
  br i1 %cmp20, label %if.then22, label %if.else28

if.then22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %entry1.0.le.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %entry1.0.le.i, align 4
  %spi = getelementptr i8, ptr %.pn.in.i, i32 -20
  %10 = ptrtoint ptr %spi to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %spi, align 4
  %11 = ptrtoint ptr %vha3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vha3, align 8
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %12, i32 0, i32 52
  %13 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %12, i32 noundef 12387, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.qla_edif_add_sa_index_to_freepool) #12
  %edif_tx_sa_id_map.i = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 303
  %edif_rx_sa_id_map.i = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 302
  %sa_id_map.0.in.i = select i1 %cmp, ptr %edif_tx_sa_id_map.i, ptr %edif_rx_sa_id_map.i
  %15 = ptrtoint ptr %sa_id_map.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %sa_id_map.0.i = load ptr, ptr %sa_id_map.0.in.i, align 4
  %sadb_fp_lock.i = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 304
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sadb_fp_lock.i) #12
  tail call void @_clear_bit(i32 noundef %conv8.i, ptr noundef %sa_id_map.0.i) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_fp_lock.i, i32 noundef %call5.i) #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %12, i32 noundef 12387, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.qla_edif_add_sa_index_to_freepool, i32 noundef %conv) #12
  br label %for.inc

if.else28:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %cmp33 = icmp eq i16 %8, -1
  %inc36 = zext i1 %cmp33 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.else28, %if.then22
  %free_slot_count.1 = phi i32 [ 1, %if.then22 ], [ %inc36, %if.else28 ]
  %arrayidx.1 = getelementptr i8, ptr %.pn.in.i, i32 -16
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %sa_index)
  %cmp20.1 = icmp eq i16 %17, %sa_index
  br i1 %cmp20.1, label %if.then22.1, label %if.else28.1

if.else28.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %cmp33.1 = icmp eq i16 %17, -1
  %inc36.1 = zext i1 %cmp33.1 to i32
  %spec.select.1 = add nuw nsw i32 %free_slot_count.1, %inc36.1
  br label %for.inc.1

if.then22.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %arrayidx.1, align 4
  %spi.1 = getelementptr i8, ptr %.pn.in.i, i32 -12
  %19 = ptrtoint ptr %spi.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %spi.1, align 4
  %inc.1 = add nuw nsw i32 %free_slot_count.1, 1
  %20 = ptrtoint ptr %vha3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vha3, align 8
  %hw.i.1 = getelementptr inbounds %struct.scsi_qla_host, ptr %21, i32 0, i32 52
  %22 = ptrtoint ptr %hw.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i.1, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %21, i32 noundef 12387, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.qla_edif_add_sa_index_to_freepool) #12
  %edif_tx_sa_id_map.i.1 = getelementptr inbounds %struct.qla_hw_data, ptr %23, i32 0, i32 303
  %edif_rx_sa_id_map.i.1 = getelementptr inbounds %struct.qla_hw_data, ptr %23, i32 0, i32 302
  %sa_id_map.0.in.i.1 = select i1 %cmp, ptr %edif_tx_sa_id_map.i.1, ptr %edif_rx_sa_id_map.i.1
  %24 = ptrtoint ptr %sa_id_map.0.in.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %sa_id_map.0.i.1 = load ptr, ptr %sa_id_map.0.in.i.1, align 4
  %sadb_fp_lock.i.1 = getelementptr inbounds %struct.qla_hw_data, ptr %23, i32 0, i32 304
  %call5.i.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sadb_fp_lock.i.1) #12
  tail call void @_clear_bit(i32 noundef %conv8.i, ptr noundef %sa_id_map.0.i.1) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_fp_lock.i.1, i32 noundef %call5.i.1) #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %21, i32 noundef 12387, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.qla_edif_add_sa_index_to_freepool, i32 noundef %conv) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then22.1, %if.else28.1
  %free_slot_count.1.1 = phi i32 [ %inc.1, %if.then22.1 ], [ %spec.select.1, %if.else28.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %free_slot_count.1.1)
  %cmp40 = icmp eq i32 %free_slot_count.1.1, 2
  br i1 %cmp40, label %if.then42, label %for.inc.1.if.end43_crit_edge

for.inc.1.if.end43_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then42:                                        ; preds = %for.inc.1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then42.list_del.exit_crit_edge

if.then42.list_del.exit_crit_edge:                ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then42.list_del.exit_crit_edge
  %31 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %entry1.0.le.i) #12
  br label %if.end43

if.end43:                                         ; preds = %list_del.exit, %for.inc.1.if.end43_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_lock, i32 noundef %call12) #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 12387, ptr noundef nonnull @.str.160, ptr noundef nonnull @__func__.qla_edif_sadb_delete_sa_index, i32 noundef %conv, i32 noundef %free_slot_count.1.1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla_edif_list_add_sa_update_index(ptr noundef %fcport, i16 noundef zeroext %sa_index, i16 noundef zeroext %handle) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edif_indx_list.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.in.i = phi ptr [ %edif_indx_list.i, %entry ], [ %.pn.in.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.in.i, %edif_indx_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %entry1.0.i = getelementptr i8, ptr %.pn.in.i, i32 -72
  %1 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %entry1.0.i, align 4
  %cmp10.i = icmp eq i16 %2, %handle
  br i1 %cmp10.i, label %qla_edif_list_find_sa_index.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

qla_edif_list_find_sa_index.exit:                 ; preds = %for.body.i
  %entry1.0.i.le = getelementptr i8, ptr %.pn.in.i, i32 -72
  %tobool.not = icmp eq ptr %entry1.0.i.le, null
  br i1 %tobool.not, label %qla_edif_list_find_sa_index.exit.if.end_crit_edge, label %if.then

qla_edif_list_find_sa_index.exit.if.end_crit_edge: ; preds = %qla_edif_list_find_sa_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %qla_edif_list_find_sa_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %sa_index to i32
  %update_sa_index = getelementptr i8, ptr %.pn.in.i, i32 -68
  %3 = ptrtoint ptr %update_sa_index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %update_sa_index, align 4
  %count = getelementptr i8, ptr %.pn.in.i, i32 -60
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %count, align 4
  br label %cleanup

if.end:                                           ; preds = %qla_edif_list_find_sa_index.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 80) #15
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %next = getelementptr inbounds %struct.edif_list_entry, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %next, ptr %next, align 8
  %prev.i = getelementptr inbounds %struct.edif_list_entry, ptr %call7.i.i, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %next, ptr %prev.i, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %handle, ptr %call7.i.i, align 8
  %conv7 = zext i16 %sa_index to i32
  %update_sa_index8 = getelementptr inbounds %struct.edif_list_entry, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %update_sa_index8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv7, ptr %update_sa_index8, align 4
  %delete_sa_index = getelementptr inbounds %struct.edif_list_entry, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %delete_sa_index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65535, ptr %delete_sa_index, align 8
  %count9 = getelementptr inbounds %struct.edif_list_entry, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %count9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %count9, align 4
  %flags10 = getelementptr inbounds %struct.edif_list_entry, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %flags10, align 8
  %timer = getelementptr inbounds %struct.edif_list_entry, ptr %call7.i.i, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @qla2x00_sa_replace_iocb_timeout, i32 noundef 0, ptr noundef nonnull @.str.149, ptr noundef nonnull @qla_edif_list_add_sa_update_index.__key) #12
  %indx_list_lock = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 9
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %indx_list_lock) #12
  %prev.i41 = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 8, i32 1
  %13 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i41, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %next, ptr noundef %14, ptr noundef %edif_indx_list.i) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add_tail.exit_crit_edge

if.end5.list_add_tail.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %next, ptr %prev.i41, align 4
  %16 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %edif_indx_list.i, ptr %next, align 8
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %next, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end5.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %indx_list_lock, i32 noundef %call15) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %list_add_tail.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef %fcport) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %vref_count = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 60
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  tail call void @arm_heavy_mb() #12
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load volatile i32, ptr %flags, align 8
  %2 = and i32 %bf.load, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #12, !srcloc !439
  %vref_waitq = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

if.end9:                                          ; preds = %entry
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 34
  %6 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_qpair, align 4
  %ref_count.i = getelementptr inbounds %struct.qla_qpair, ptr %7, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %delete_in_progress.i = getelementptr inbounds %struct.qla_qpair, ptr %7, i32 0, i32 6
  %9 = ptrtoint ptr %delete_in_progress.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %delete_in_progress.i, align 64
  %10 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #12, !srcloc !439
  br label %do.body16.critedge

if.end9.i:                                        ; preds = %if.end9
  %srb_mempool.i = getelementptr inbounds %struct.qla_qpair, ptr %7, i32 0, i32 9
  %12 = ptrtoint ptr %srb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srb_mempool.i, align 8
  %call.i = tail call noalias ptr @mempool_alloc(ptr noundef %13, i32 noundef 3264) #12
  %tobool10.not.i = icmp eq ptr %call.i, null
  br i1 %tobool10.not.i, label %if.else12.i, label %if.end12

if.else12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #12, !srcloc !439
  br label %do.body16.critedge

if.end12:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = call ptr @memset(ptr %call.i, i32 0, i32 424)
  %fcport1.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %fcport1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fcport, ptr %fcport1.i.i, align 4
  %iocbs.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 13
  %17 = ptrtoint ptr %iocbs.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %iocbs.i.i, align 4
  %vha2.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 7
  %qpair3.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 14
  %18 = ptrtoint ptr %qpair3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %7, ptr %qpair3.i.i, align 8
  %elem.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 16
  %19 = ptrtoint ptr %elem.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %elem.i.i, ptr %elem.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 16, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %elem.i.i, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %vha2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vha, ptr %vha2.i.i, align 8
  br label %cleanup

do.body16.critedge:                               ; preds = %if.else12.i, %if.then.i
  %call.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #12, !srcloc !439
  %vref_waitq18 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq18, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body16.critedge, %if.end12, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %call.i, %if.end12 ], [ null, %do.body16.critedge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_rel_sp(ptr noundef %sp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %vha = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha, align 8
  %vref_count = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 60
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #12, !srcloc !439
  %3 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vha, align 8
  %vref_waitq = getelementptr inbounds %struct.scsi_qla_host, ptr %4, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %qpair = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 14
  %5 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qpair, align 8
  store ptr null, ptr %qpair, align 8
  %done.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 24
  %7 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @qla2xxx_rel_done_warning, ptr %done.i, align 4
  %free.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %8 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @qla2xxx_rel_free_warning, ptr %free.i, align 8
  %srb_mempool.i = getelementptr inbounds %struct.qla_qpair, ptr %6, i32 0, i32 9
  %9 = ptrtoint ptr %srb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %srb_mempool.i, align 8
  tail call void @mempool_free(ptr noundef %sp, ptr noundef %10) #12
  %ref_count.i = getelementptr inbounds %struct.qla_qpair, ptr %6, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #12, !srcloc !439
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_bsg_job_done(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_start_sp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_enode_init(ptr noundef %vha) local_unnamed_addr #2 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #12
  %pur_cinfo = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91
  %2 = call ptr @memset(ptr %name, i32 255, i32 32)
  %3 = ptrtoint ptr %pur_cinfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pur_cinfo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37122, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.qla_enode_init) #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pur_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %pur_lock, ptr noundef nonnull @.str.30, ptr noundef nonnull @qla_enode_init.__key, i16 noundef signext 3) #12
  %head = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91, i32 2
  %5 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %head, ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %head, ptr %prev.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  %device = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 2
  %conv = zext i16 %10 to i32
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_enode_stop(ptr noundef %vha) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pur_cinfo = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91
  %0 = ptrtoint ptr %pur_cinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pur_cinfo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %do.body1, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37122, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.qla_enode_stop) #12
  br label %cleanup

do.body1:                                         ; preds = %entry
  %pur_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pur_lock) #12
  %2 = ptrtoint ptr %pur_cinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pur_cinfo, align 8
  %and = and i32 %3, -2
  store i32 %and, ptr %pur_cinfo, align 8
  %head = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91, i32 2
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head, align 8
  %cmp18.not44 = icmp eq ptr %5, %head
  br i1 %cmp18.not44, label %do.body1.for.end_crit_edge, label %do.body1.for.body_crit_edge

do.body1.for.body_crit_edge:                      ; preds = %do.body1
  br label %for.body

do.body1.for.end_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %do.body1.for.body_crit_edge
  %node.045 = phi ptr [ %q.0, %list_del_init.exit.for.body_crit_edge ], [ %5, %do.body1.for.body_crit_edge ]
  %6 = ptrtoint ptr %node.045 to i32
  call void @__asan_load4_noabort(i32 %6)
  %q.0 = load ptr, ptr %node.045, align 4
  %ntype = getelementptr inbounds %struct.enode, ptr %node.045, i32 0, i32 2
  %7 = ptrtoint ptr %ntype to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ntype, align 4
  %dinfo = getelementptr inbounds %struct.enode, ptr %node.045, i32 0, i32 1
  %9 = ptrtoint ptr %dinfo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dinfo, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37135, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.qla_enode_stop, i32 noundef %8, i32 noundef %10) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.045) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.045, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %node.045 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %node.045, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %node.045 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %node.045, ptr %node.045, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %node.045, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %node.045, ptr %prev.i3.i, align 4
  %19 = ptrtoint ptr %ntype to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ntype, align 4
  tail call void @kfree(ptr noundef %node.045) #12
  %cmp18.not = icmp eq ptr %q.0, %head
  br i1 %cmp18.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %do.body1.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pur_lock, i32 noundef %call4) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_edb_init(ptr noundef %vha) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %e_dbell = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90
  %0 = ptrtoint ptr %e_dbell to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %e_dbell, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37122, ptr noundef nonnull @.str.35) #12
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %db_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %db_lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @qla_edb_init.__key, i16 noundef signext 3) #12
  %head = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90, i32 2
  %2 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %head, ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %prev.i, align 4
  %dbell = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90, i32 3
  %4 = ptrtoint ptr %dbell to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dbell, align 4
  %wait.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.153, ptr noundef nonnull @init_completion.__key) #12
  br label %return

return:                                           ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_edb_stop(ptr noundef %vha) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %e_dbell = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90
  %0 = ptrtoint ptr %e_dbell to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %e_dbell, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37122, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.qla_edb_stop) #12
  br label %cleanup

do.body1:                                         ; preds = %entry
  %db_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %db_lock) #12
  %2 = ptrtoint ptr %e_dbell to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %e_dbell, align 8
  %and8 = and i32 %3, -2
  store i32 %and8, ptr %e_dbell, align 8
  %head = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90, i32 2
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head, align 8
  %cmp18.not46 = icmp eq ptr %5, %head
  br i1 %cmp18.not46, label %do.body1.for.end_crit_edge, label %do.body1.for.body_crit_edge

do.body1.for.body_crit_edge:                      ; preds = %do.body1
  br label %for.body

do.body1.for.end_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.body1.for.body_crit_edge
  %node.047 = phi ptr [ %q.0, %list_del.exit.for.body_crit_edge ], [ %5, %do.body1.for.body_crit_edge ]
  %6 = ptrtoint ptr %node.047 to i32
  call void @__asan_load4_noabort(i32 %6)
  %q.0 = load ptr, ptr %node.047, align 4
  %ntype = getelementptr inbounds %struct.edb_node, ptr %node.047, i32 0, i32 1
  %7 = ptrtoint ptr %ntype to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ntype, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37135, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.qla_edb_stop, i32 noundef %8) #12
  %tobool.not.i = icmp eq ptr %node.047, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37154, ptr noundef nonnull @.str.154, ptr noundef nonnull @__func__.qla_edb_node_free) #12
  br label %qla_edb_node_free.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %ntype to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ntype, align 4
  br label %qla_edb_node_free.exit

qla_edb_node_free.exit:                           ; preds = %if.end.i, %if.then.i
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.047) #12
  br i1 %call.i.i, label %if.end.i.i, label %qla_edb_node_free.exit.list_del.exit_crit_edge

qla_edb_node_free.exit.list_del.exit_crit_edge:   ; preds = %qla_edb_node_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %qla_edb_node_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.047, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %node.047 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node.047, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %qla_edb_node_free.exit.list_del.exit_crit_edge
  %16 = ptrtoint ptr %node.047 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %node.047, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %node.047, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %node.047) #12
  %cmp18.not = icmp eq ptr %q.0, %head
  br i1 %cmp18.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.body1.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %db_lock, i32 noundef %call3) #12
  %dbell = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90, i32 3
  tail call void @complete_all(ptr noundef %dbell) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_edb_eventcreate(ptr noundef %vha, i32 noundef %dbtype, i32 noundef %data, i32 noundef %data2, ptr noundef %sfcport) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %2 = getelementptr inbounds i32, ptr %flags, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load volatile i32, ptr %2, align 4
  %4 = and i32 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %e_dbell = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90
  %5 = ptrtoint ptr %e_dbell to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %e_dbell, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %tobool3.not = icmp eq ptr %sfcport, null
  br i1 %tobool3.not, label %if.then2.if.end5_crit_edge, label %if.then4

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i32 %dbtype to i8
  %auth_state = getelementptr inbounds %struct.fc_port, ptr %sfcport, i32 0, i32 72, i32 5
  %7 = ptrtoint ptr %auth_state to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %auth_state, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then2.if.end5_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37122, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.qla_edb_eventcreate, i32 noundef %dbtype) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 40) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37120, ptr noundef nonnull @.str.155) #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37122, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.qla_edb_eventcreate) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %ntype1.i = getelementptr inbounds %struct.edb_node, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ntype1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dbtype, ptr %ntype1.i, align 8
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %tobool10.not = icmp eq ptr %sfcport, null
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end27_crit_edge

if.end9.if.end27_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then11:                                        ; preds = %if.end9
  %id.sroa.0.sroa.0.0.insert.insert = shl i32 %data, 8
  %bf.lshr20 = and i32 %data, 16777215
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37410, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.qla_edb_eventcreate, i32 noundef %bf.lshr20) #12
  %vp_fcports.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %12 = ptrtoint ptr %vp_fcports.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vp_fcports.i, align 8
  %cmp.not36.i = icmp eq ptr %13, %vp_fcports.i
  br i1 %cmp.not36.i, label %if.then11.if.then23_crit_edge, label %if.then11.for.body.i_crit_edge

if.then11.for.body.i_crit_edge:                   ; preds = %if.then11
  br label %for.body.i

if.then11.if.then23_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then11.for.body.i_crit_edge
  %f.037.i = phi ptr [ %tf.038.i, %for.inc.i.for.body.i_crit_edge ], [ %13, %if.then11.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %f.037.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %tf.038.i = load ptr, ptr %f.037.i, align 8
  %flags.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 35
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i105 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i105, label %for.body.i.for.inc.i_crit_edge, label %if.then.i106

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i106:                                     ; preds = %for.body.i
  %node_name.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 4
  %port_name.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 5
  %d_id.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 6
  %17 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i = load i32, ptr %d_id.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %vha, i32 noundef 8280, ptr noundef nonnull @.str.1, ptr noundef %node_name.i, ptr noundef %port_name.i, i32 noundef %bf.lshr.i, i32 noundef %bf.lshr20) #12
  %18 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load11.i = load i32, ptr %d_id.i, align 8
  %cmp15.unshifted.i = xor i32 %bf.load11.i, %id.sroa.0.sroa.0.0.insert.insert
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp15.unshifted.i)
  %cmp15.i = icmp ult i32 %cmp15.unshifted.i, 256
  br i1 %cmp15.i, label %qla2x00_find_fcport_by_pid.exit, label %if.then.i106.for.inc.i_crit_edge

if.then.i106.for.inc.i_crit_edge:                 ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i106.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tf.038.i, %vp_fcports.i
  br i1 %cmp.not.i, label %for.inc.i.if.then23_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.then23_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

qla2x00_find_fcport_by_pid.exit:                  ; preds = %if.then.i106
  %tobool22.not = icmp eq ptr %f.037.i, null
  br i1 %tobool22.not, label %qla2x00_find_fcport_by_pid.exit.if.then23_crit_edge, label %qla2x00_find_fcport_by_pid.exit.if.end27_crit_edge

qla2x00_find_fcport_by_pid.exit.if.end27_crit_edge: ; preds = %qla2x00_find_fcport_by_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

qla2x00_find_fcport_by_pid.exit.if.then23_crit_edge: ; preds = %qla2x00_find_fcport_by_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

if.then23:                                        ; preds = %qla2x00_find_fcport_by_pid.exit.if.then23_crit_edge, %for.inc.i.if.then23_crit_edge, %if.then11.if.then23_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37122, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.qla_edb_eventcreate, i32 noundef %bf.lshr20) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end27:                                         ; preds = %qla2x00_find_fcport_by_pid.exit.if.end27_crit_edge, %if.end9.if.end27_crit_edge
  %fcport.0 = phi ptr [ %sfcport, %if.end9.if.end27_crit_edge ], [ %f.037.i, %qla2x00_find_fcport_by_pid.exit.if.end27_crit_edge ]
  %19 = zext i32 %dbtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %dbtype, label %sw.epilog.thread [
    i32 2, label %if.end27.sw.bb_crit_edge
    i32 1, label %if.end27.sw.bb_crit_edge187
    i32 3, label %sw.bb32
    i32 4, label %sw.bb42
  ]

if.end27.sw.bb_crit_edge187:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end27.sw.bb_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end27.sw.bb_crit_edge, %if.end27.sw.bb_crit_edge187
  %d_id = getelementptr inbounds %struct.fc_port, ptr %fcport.0, i32 0, i32 6
  %20 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load28 = load i32, ptr %d_id, align 8
  %bf.lshr29 = and i32 %bf.load28, -256
  %u = getelementptr inbounds %struct.edb_node, ptr %call7.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load30 = load i32, ptr %u, align 4
  %bf.clear31 = and i32 %bf.load30, 255
  %bf.set = or i32 %bf.clear31, %bf.lshr29
  store i32 %bf.set, ptr %u, align 4
  br label %land.lhs.true

sw.bb32:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %d_id33 = getelementptr inbounds %struct.fc_port, ptr %fcport.0, i32 0, i32 6
  %22 = ptrtoint ptr %d_id33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load34 = load i32, ptr %d_id33, align 8
  %bf.lshr35 = and i32 %bf.load34, -256
  %u36 = getelementptr inbounds %struct.edb_node, ptr %call7.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %u36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load37 = load i32, ptr %u36, align 4
  %bf.clear40 = and i32 %bf.load37, 255
  %bf.set41 = or i32 %bf.clear40, %bf.lshr35
  store i32 %bf.set41, ptr %u36, align 4
  br label %land.lhs.true

sw.bb42:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %u43 = getelementptr inbounds %struct.edb_node, ptr %call7.i.i.i, i32 0, i32 2
  %d_id44 = getelementptr inbounds %struct.fc_port, ptr %fcport.0, i32 0, i32 6
  %24 = ptrtoint ptr %d_id44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %d_id44, align 8
  %26 = ptrtoint ptr %u43 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %u43, align 4
  %status = getelementptr inbounds %struct.edb_node, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 2
  %27 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %data, ptr %status, align 4
  %key_type = getelementptr inbounds %struct.edb_node, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %key_type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %data2, ptr %key_type, align 8
  br label %land.lhs.true

sw.epilog.thread:                                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37122, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.qla_edb_eventcreate, i32 noundef %dbtype) #12
  %29 = ptrtoint ptr %ntype1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ntype1.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.end58

land.lhs.true:                                    ; preds = %sw.bb42, %sw.bb32, %sw.bb
  %30 = ptrtoint ptr %e_dbell to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %e_dbell, align 8
  %and.i110 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %tobool.not.i111 = icmp eq i32 %and.i110, 0
  br i1 %tobool.not.i111, label %qla_edb_node_free.exit118, label %do.body1.i

do.body1.i:                                       ; preds = %land.lhs.true
  %db_lock.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %db_lock.i) #12
  %head.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90, i32 2
  %prev.i.i113 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90, i32 2, i32 1
  %32 = ptrtoint ptr %prev.i.i113 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i113, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %33, ptr noundef %head.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body1.i.if.then54_crit_edge

do.body1.i.if.then54_crit_edge:                   ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

if.end.i.i.i:                                     ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %prev.i.i113 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i.i, ptr %prev.i.i113, align 4
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %head.i, ptr %call7.i.i.i, align 8
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call7.i.i.i, ptr %33, align 4
  br label %if.then54

qla_edb_node_free.exit118:                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37122, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.qla_edb_node_add) #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37122, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.qla_edb_eventcreate) #12
  %38 = ptrtoint ptr %ntype1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ntype1.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.then54:                                        ; preds = %if.end.i.i.i, %do.body1.i.if.then54_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %db_lock.i, i32 noundef %call3.i) #12
  %dbell.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90, i32 3
  tail call void @complete(ptr noundef %dbell.i) #12
  %conv55 = trunc i32 %dbtype to i8
  %auth_state57 = getelementptr inbounds %struct.fc_port, ptr %fcport.0, i32 0, i32 72, i32 5
  %39 = ptrtoint ptr %auth_state57 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv55, ptr %auth_state57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %sw.epilog.thread
  %edbnode.0180 = phi ptr [ null, %sw.epilog.thread ], [ %call7.i.i.i, %if.then54 ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37122, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.qla_edb_eventcreate, i32 noundef %dbtype, ptr noundef %edbnode.0180) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %qla_edb_node_free.exit118, %if.then23, %if.then8, %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_edif_timer(ptr noundef %vha) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 46
  %2 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vp_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

land.lhs.true:                                    ; preds = %entry
  %prev_topology = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 50
  %4 = ptrtoint ptr %prev_topology to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %prev_topology, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp eq i8 %5, 2
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %current_topology = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 49
  %6 = ptrtoint ptr %current_topology to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %current_topology, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.lhs.true2.land.lhs.true11_crit_edge, label %land.lhs.true2.lor.lhs.false_crit_edge

land.lhs.true2.lor.lhs.false_crit_edge:           ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true2.land.lhs.true11_crit_edge:         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true11

lor.lhs.false:                                    ; preds = %land.lhs.true2.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge
  %current_topology4 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 49
  %8 = ptrtoint ptr %current_topology4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %current_topology4, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.178)
  switch i8 %9, label %lor.lhs.false.if.end26_crit_edge [
    i8 2, label %lor.lhs.false.land.lhs.true11_crit_edge
    i8 0, label %lor.lhs.false.land.lhs.true11_crit_edge39
  ]

lor.lhs.false.land.lhs.true11_crit_edge39:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true11

lor.lhs.false.land.lhs.true11_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true11

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

land.lhs.true11:                                  ; preds = %lor.lhs.false.land.lhs.true11_crit_edge, %lor.lhs.false.land.lhs.true11_crit_edge39, %land.lhs.true2.land.lhs.true11_crit_edge
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %11 = getelementptr inbounds i32, ptr %flags, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load = load volatile i32, ptr %11, align 4
  %13 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %land.lhs.true11.if.end26_crit_edge, label %if.then

land.lhs.true11.if.end26_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then:                                          ; preds = %land.lhs.true11
  %e_dbell = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90
  %14 = ptrtoint ptr %e_dbell to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %e_dbell, align 8
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true14:                                  ; preds = %if.then
  %edif_post_stop_cnt_down = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 309
  %16 = ptrtoint ptr %edif_post_stop_cnt_down to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %edif_post_stop_cnt_down, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool16.not = icmp eq i8 %17, 0
  br i1 %tobool16.not, label %land.lhs.true14.if.else_crit_edge, label %if.then17

land.lhs.true14.if.else_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then17:                                        ; preds = %land.lhs.true14
  %dec = add i8 %17, -1
  %18 = ptrtoint ptr %edif_post_stop_cnt_down to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %dec, ptr %edif_post_stop_cnt_down, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp21 = icmp eq i8 %dec, 0
  br i1 %cmp21, label %if.then23, label %if.then17.if.end26_crit_edge

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.qla_edif_timer) #12
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags) #12
  br label %if.end26

if.else:                                          ; preds = %land.lhs.true14.if.else_crit_edge, %if.then.if.else_crit_edge
  %edif_post_stop_cnt_down24 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 309
  %19 = ptrtoint ptr %edif_post_stop_cnt_down24 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 60, ptr %edif_post_stop_cnt_down24, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23, %if.then17.if.end26_crit_edge, %land.lhs.true11.if.end26_crit_edge, %lor.lhs.false.if.end26_crit_edge, %entry.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @edif_doorbell_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %e_dbell = getelementptr i8, ptr %dev, i32 3440
  %0 = ptrtoint ptr %e_dbell to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %e_dbell, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %hostdata.i, i32 noundef 37154, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.edif_doorbell_show) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr i8, ptr %dev, i32 2244
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 2
  %4 = getelementptr inbounds i32, ptr %flags, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load volatile i32, ptr %4, align 4
  %6 = and i32 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.then2, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %db_lock.i = getelementptr i8, ptr %dev, i32 3444
  %head.i = getelementptr i8, ptr %dev, i32 3488
  br label %while.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %hostdata.i, i32 noundef 37154, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.edif_doorbell_show) #12
  br label %cleanup

while.body:                                       ; preds = %qla_edb_node_free.exit.while.body_crit_edge, %while.cond.preheader
  %buf_size.068 = phi i32 [ 0, %while.cond.preheader ], [ %add22, %qla_edb_node_free.exit.while.body_crit_edge ]
  %ap.066 = phi ptr [ %buf, %while.cond.preheader ], [ %add.ptr23, %qla_edb_node_free.exit.while.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %db_lock.i) #12
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %head.i
  br i1 %cmp.i.not.i, label %qla_edb_getnext.exit.thread, label %if.then.i

qla_edb_getnext.exit.thread:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %db_lock.i, i32 noundef %call2.i) #12
  br label %cleanup

if.then.i:                                        ; preds = %while.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.qla_edb_getnext.exit_crit_edge

if.then.i.qla_edb_getnext.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla_edb_getnext.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %qla_edb_getnext.exit

qla_edb_getnext.exit:                             ; preds = %if.end.i.i.i, %if.then.i.qla_edb_getnext.exit_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %db_lock.i, i32 noundef %call2.i) #12
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %qla_edb_getnext.exit.cleanup_crit_edge, label %if.then6

qla_edb_getnext.exit.cleanup_crit_edge:           ; preds = %qla_edb_getnext.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %qla_edb_getnext.exit
  %ntype = getelementptr inbounds %struct.edb_node, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %ntype to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ntype, align 4
  %19 = ptrtoint ptr %ap.066 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %ap.066, align 1
  %20 = load i32, ptr %ntype, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %20, label %sw.default [
    i32 1, label %if.then6.sw.bb_crit_edge
    i32 2, label %if.then6.sw.bb_crit_edge79
    i32 3, label %sw.bb8
    i32 4, label %sw.bb11
  ]

if.then6.sw.bb_crit_edge79:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.then6.sw.bb_crit_edge:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.then6.sw.bb_crit_edge, %if.then6.sw.bb_crit_edge79
  %22 = getelementptr inbounds %struct.edif_app_dbell, ptr %ap.066, i32 0, i32 2
  %u = getelementptr inbounds %struct.edb_node, ptr %8, i32 0, i32 2
  %23 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %u, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %22, align 1
  br label %qla_edb_node_free.exit

sw.bb8:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %26 = getelementptr inbounds %struct.edif_app_dbell, ptr %ap.066, i32 0, i32 2
  %u9 = getelementptr inbounds %struct.edb_node, ptr %8, i32 0, i32 2
  %27 = ptrtoint ptr %u9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %u9, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %26, align 1
  br label %qla_edb_node_free.exit

sw.bb11:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %30 = getelementptr inbounds %struct.edif_app_dbell, ptr %ap.066, i32 0, i32 2
  %u12 = getelementptr inbounds %struct.edb_node, ptr %8, i32 0, i32 2
  %31 = ptrtoint ptr %u12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %u12, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %30, align 1
  %34 = call ptr @memcpy(ptr %30, ptr %u12, i32 28)
  br label %qla_edb_node_free.exit

sw.default:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %ap.066 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 0, ptr %ap.066, align 1
  %36 = getelementptr inbounds %struct.edif_app_dbell, ptr %ap.066, i32 0, i32 2
  %37 = ptrtoint ptr %ntype to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ntype, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %36, align 1
  br label %qla_edb_node_free.exit

qla_edb_node_free.exit:                           ; preds = %sw.default, %sw.bb11, %sw.bb8, %sw.bb
  %dat_siz.0 = phi i32 [ 4, %sw.default ], [ 28, %sw.bb11 ], [ 4, %sw.bb8 ], [ 4, %sw.bb ]
  %40 = ptrtoint ptr %ntype to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ntype, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %hostdata.i, i32 noundef 37122, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.edif_doorbell_show, i32 noundef %41, ptr noundef nonnull %8) #12
  %42 = ptrtoint ptr %ntype to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %ntype, align 4
  tail call void @kfree(ptr noundef nonnull %8) #12
  %event_data_size = getelementptr inbounds %struct.edif_app_dbell, ptr %ap.066, i32 0, i32 1
  %43 = ptrtoint ptr %event_data_size to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %dat_siz.0, ptr %event_data_size, align 1
  %add21 = add i32 %buf_size.068, 8
  %add22 = add i32 %add21, %dat_siz.0
  %add.ptr23 = getelementptr i8, ptr %buf, i32 %add22
  %notsub = add i32 %add22, -257
  %cmp = icmp ult i32 %notsub, -40
  br i1 %cmp, label %qla_edb_node_free.exit.while.body_crit_edge, label %qla_edb_node_free.exit.cleanup_crit_edge

qla_edb_node_free.exit.cleanup_crit_edge:         ; preds = %qla_edb_node_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

qla_edb_node_free.exit.while.body_crit_edge:      ; preds = %qla_edb_node_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup:                                          ; preds = %qla_edb_node_free.exit.cleanup_crit_edge, %qla_edb_getnext.exit.cleanup_crit_edge, %qla_edb_getnext.exit.thread, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then2 ], [ 0, %if.then ], [ %buf_size.068, %qla_edb_getnext.exit.thread ], [ %buf_size.068, %qla_edb_getnext.exit.cleanup_crit_edge ], [ %add22, %qla_edb_node_free.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_issue_sa_replace_iocb(ptr noundef %vha, ptr nocapture noundef readonly %e) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.qla_work_evt, ptr %e, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %nport_handle3 = getelementptr inbounds %struct.qla_work_evt, ptr %e, i32 0, i32 3, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %nport_handle3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nport_handle3, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 28902, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.qla24xx_issue_sa_replace_iocb, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 28902, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fcport4 = getelementptr inbounds %struct.edif_sa_ctl, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %fcport4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fcport4, align 4
  %call = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef %5)
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 28902, ptr noundef nonnull @.str.52) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.fc_port, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %or = or i32 %7, 8
  store i32 %or, ptr %flags, align 8
  %u8 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22
  %8 = ptrtoint ptr %u8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %u8, align 8
  %d_id = getelementptr inbounds %struct.fc_port, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %d_id, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  %index = getelementptr inbounds %struct.edif_sa_ctl, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %index, align 2
  %conv = zext i16 %11 to i32
  %conv11 = zext i16 %3 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 12403, ptr noundef nonnull @.str.53, i32 noundef %bf.lshr, ptr noundef nonnull %1, i32 noundef %conv, i32 noundef %conv11) #12
  %flags12 = getelementptr inbounds %struct.edif_sa_ctl, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %flags12 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags12, align 2
  %14 = and i16 %13, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool14.not = icmp eq i16 %14, 0
  br i1 %tobool14.not, label %if.end7.if.end20_crit_edge, label %if.then15

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %flags16 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 10
  %15 = ptrtoint ptr %flags16 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags16, align 4
  %17 = or i16 %16, 512
  store i16 %17, ptr %flags16, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 28902, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.qla24xx_issue_sa_replace_iocb, ptr noundef nonnull %call) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end7.if.end20_crit_edge
  %type = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 11
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 27, ptr %type, align 2
  %name = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 12
  %19 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.55, ptr %name, align 8
  %fcport21 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 6
  %20 = ptrtoint ptr %fcport21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %5, ptr %fcport21, align 4
  %free = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 25
  %21 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @qla2x00_rel_sp, ptr %free, align 8
  %done = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 24
  %22 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @qla_noop_sp_done, ptr %done, align 4
  %call22 = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp.not = icmp eq i32 %call22, 0
  %spec.store.select = select i1 %cmp.not, i32 0, i32 258
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then6, %if.then
  %retval.0 = phi i32 [ %spec.store.select, %if.end20 ], [ -12, %if.then6 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla_noop_sp_done(ptr noundef %sp, i32 noundef %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %free = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %0 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free, align 8
  tail call void %1(ptr noundef %sp) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla24xx_sa_update_iocb(ptr nocapture noundef readonly %sp, ptr nocapture noundef %sa_update_iocb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %flags4 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %flags4 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %flags4, align 1
  %4 = and i16 %3, 3
  %and = zext i16 %4 to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.qla24xx_sa_update_iocb, i32 0, i32 %and
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.idx.cast = trunc i16 %4 to i8
  %fast_sa_index22 = getelementptr inbounds %struct.anon.101, ptr %u, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %fast_sa_index22 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %bf.load23 = load i16, ptr %fast_sa_index22, align 1
  %bf.lshr24 = lshr i16 %bf.load23, 6
  %conv25 = zext i16 %bf.lshr24 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 37149, ptr noundef nonnull %switch.load, ptr noundef nonnull @__func__.qla24xx_sa_update_iocb, ptr noundef %1, i32 noundef %conv25) #12
  %7 = ptrtoint ptr %sa_update_iocb to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 113, ptr %sa_update_iocb, align 4
  %entry_count = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 1
  %8 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %entry_count, align 1
  %sys_define = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 2
  %9 = ptrtoint ptr %sys_define to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %sys_define, align 2
  %entry_status = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 3
  %10 = ptrtoint ptr %entry_status to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %entry_status, align 1
  %handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %handle, align 8
  %handle29 = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 4
  %13 = ptrtoint ptr %handle29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %handle29, align 4
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %14 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fcport, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %loop_id, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %u30 = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 5
  %19 = ptrtoint ptr %u30 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %u30, align 4
  %20 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fcport, align 4
  %vha32 = getelementptr inbounds %struct.fc_port, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %vha32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vha32, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %23, i32 0, i32 46
  %24 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vp_idx, align 8
  %conv33 = trunc i16 %25 to i8
  %vp_index = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 6
  %26 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv33, ptr %vp_index, align 2
  %27 = load ptr, ptr %fcport, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %27, i32 0, i32 6
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %28 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %al_pa, align 2
  %port_id = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 8
  %30 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %port_id, align 4
  %31 = load ptr, ptr %fcport, align 4
  %d_id36 = getelementptr inbounds %struct.fc_port, ptr %31, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id36, i32 0, i32 1
  %32 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %area, align 1
  %arrayidx38 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx38, align 1
  %35 = load ptr, ptr %fcport, align 4
  %d_id40 = getelementptr inbounds %struct.fc_port, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %d_id40 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %d_id40, align 8
  %arrayidx42 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 8, i32 2
  %38 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx42, align 2
  %flags43 = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 9
  %39 = ptrtoint ptr %flags43 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %switch.idx.cast, ptr %flags43, align 1
  %salt = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 1, i32 1
  %40 = ptrtoint ptr %salt to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %salt, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %salt44 = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 11
  %43 = ptrtoint ptr %salt44 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %salt44, align 4
  %spi = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 2
  %44 = ptrtoint ptr %spi to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %spi, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %spi45 = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 12
  %47 = ptrtoint ptr %spi45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %spi45, align 4
  %fast_sa_index46 = getelementptr inbounds %struct.anon.101, ptr %u, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %fast_sa_index46 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %bf.load47 = load i16, ptr %fast_sa_index46, align 1
  %bf.lshr48 = lshr i16 %bf.load47, 6
  %49 = tail call i16 @llvm.bswap.i16(i16 %bf.lshr48)
  %sa_index = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 15
  %50 = ptrtoint ptr %sa_index to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %sa_index, align 2
  %sa_control = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 13
  %51 = ptrtoint ptr %sa_control to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sa_control, align 4
  %53 = or i8 %52, 8
  store i8 %53, ptr %sa_control, align 4
  %54 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fcport, align 4
  %edif = getelementptr inbounds %struct.fc_port, ptr %55, i32 0, i32 72
  %56 = ptrtoint ptr %edif to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load53 = load i16, ptr %edif, align 8
  %57 = and i16 %bf.load53, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not = icmp eq i16 %57, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %58 = or i8 %52, 12
  %59 = ptrtoint ptr %sa_control to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %sa_control, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %60 = ptrtoint ptr %flags4 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %flags4, align 1
  %62 = and i16 %61, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool62.not = icmp eq i16 %62, 0
  br i1 %tobool62.not, label %for.cond76.preheader, label %if.then63

for.cond76.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sa_key80 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 3
  %63 = ptrtoint ptr %sa_key80 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %sa_key80, align 1
  %arrayidx83 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 0
  %65 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx83, align 1
  %arrayidx81.1 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 4
  %66 = ptrtoint ptr %arrayidx81.1 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx81.1, align 1
  %arrayidx83.1 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 1
  %68 = ptrtoint ptr %arrayidx83.1 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx83.1, align 1
  %arrayidx81.2 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 5
  %69 = ptrtoint ptr %arrayidx81.2 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx81.2, align 1
  %arrayidx83.2 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 2
  %71 = ptrtoint ptr %arrayidx83.2 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx83.2, align 1
  %arrayidx81.3 = getelementptr [32 x i8], ptr %sa_key80, i32 0, i32 3
  %72 = ptrtoint ptr %arrayidx81.3 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx81.3, align 1
  %arrayidx83.3 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 3
  %74 = ptrtoint ptr %arrayidx83.3 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx83.3, align 1
  %arrayidx81.4 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 6
  %75 = ptrtoint ptr %arrayidx81.4 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx81.4, align 1
  %arrayidx83.4 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 4
  %77 = ptrtoint ptr %arrayidx83.4 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx83.4, align 1
  %arrayidx81.5 = getelementptr [32 x i8], ptr %sa_key80, i32 0, i32 5
  %78 = ptrtoint ptr %arrayidx81.5 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx81.5, align 1
  %arrayidx83.5 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 5
  %80 = ptrtoint ptr %arrayidx83.5 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx83.5, align 1
  %arrayidx81.6 = getelementptr [32 x i8], ptr %sa_key80, i32 0, i32 6
  %81 = ptrtoint ptr %arrayidx81.6 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx81.6, align 1
  %arrayidx83.6 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 6
  %83 = ptrtoint ptr %arrayidx83.6 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx83.6, align 1
  %arrayidx81.7 = getelementptr [32 x i8], ptr %sa_key80, i32 0, i32 7
  %84 = ptrtoint ptr %arrayidx81.7 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx81.7, align 1
  %arrayidx83.7 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 7
  %86 = ptrtoint ptr %arrayidx83.7 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %arrayidx83.7, align 1
  %arrayidx81.8 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 7
  %87 = ptrtoint ptr %arrayidx81.8 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx81.8, align 1
  %arrayidx83.8 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 8
  %89 = ptrtoint ptr %arrayidx83.8 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx83.8, align 1
  %arrayidx81.9 = getelementptr [32 x i8], ptr %sa_key80, i32 0, i32 9
  %90 = ptrtoint ptr %arrayidx81.9 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx81.9, align 1
  %arrayidx83.9 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 9
  %92 = ptrtoint ptr %arrayidx83.9 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx83.9, align 1
  %arrayidx81.10 = getelementptr [32 x i8], ptr %sa_key80, i32 0, i32 10
  %93 = ptrtoint ptr %arrayidx81.10 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx81.10, align 1
  %arrayidx83.10 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 10
  %95 = ptrtoint ptr %arrayidx83.10 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx83.10, align 1
  %arrayidx81.11 = getelementptr [32 x i8], ptr %sa_key80, i32 0, i32 11
  %96 = ptrtoint ptr %arrayidx81.11 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx81.11, align 1
  %arrayidx83.11 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 11
  %98 = ptrtoint ptr %arrayidx83.11 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %arrayidx83.11, align 1
  %arrayidx81.12 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1
  %99 = ptrtoint ptr %arrayidx81.12 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx81.12, align 1
  %arrayidx83.12 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 12
  %101 = ptrtoint ptr %arrayidx83.12 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %arrayidx83.12, align 1
  %arrayidx81.13 = getelementptr [32 x i8], ptr %sa_key80, i32 0, i32 13
  %102 = ptrtoint ptr %arrayidx81.13 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx81.13, align 1
  %arrayidx83.13 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 13
  %104 = ptrtoint ptr %arrayidx83.13 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %arrayidx83.13, align 1
  %arrayidx81.14 = getelementptr [32 x i8], ptr %sa_key80, i32 0, i32 14
  %105 = ptrtoint ptr %arrayidx81.14 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx81.14, align 1
  %arrayidx83.14 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 14
  %107 = ptrtoint ptr %arrayidx83.14 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %arrayidx83.14, align 1
  %arrayidx81.15 = getelementptr [32 x i8], ptr %sa_key80, i32 0, i32 15
  %108 = ptrtoint ptr %arrayidx81.15 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx81.15, align 1
  %arrayidx83.15 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 15
  %110 = ptrtoint ptr %arrayidx83.15 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx83.15, align 1
  br label %if.end87

if.then63:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %111 = ptrtoint ptr %sa_control to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %sa_control, align 4
  %113 = or i8 %112, 2
  store i8 %113, ptr %sa_control, align 4
  %sa_key = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 3
  %114 = ptrtoint ptr %sa_key to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %sa_key, align 1
  %arrayidx71 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 0
  %116 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %arrayidx71, align 1
  %arrayidx69.1 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 4
  %117 = ptrtoint ptr %arrayidx69.1 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx69.1, align 1
  %arrayidx71.1 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 1
  %119 = ptrtoint ptr %arrayidx71.1 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx71.1, align 1
  %arrayidx69.2 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 5
  %120 = ptrtoint ptr %arrayidx69.2 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx69.2, align 1
  %arrayidx71.2 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 2
  %122 = ptrtoint ptr %arrayidx71.2 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %arrayidx71.2, align 1
  %arrayidx69.3 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 3
  %123 = ptrtoint ptr %arrayidx69.3 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx69.3, align 1
  %arrayidx71.3 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 3
  %125 = ptrtoint ptr %arrayidx71.3 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %arrayidx71.3, align 1
  %arrayidx69.4 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 6
  %126 = ptrtoint ptr %arrayidx69.4 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx69.4, align 1
  %arrayidx71.4 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 4
  %128 = ptrtoint ptr %arrayidx71.4 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %arrayidx71.4, align 1
  %arrayidx69.5 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 5
  %129 = ptrtoint ptr %arrayidx69.5 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx69.5, align 1
  %arrayidx71.5 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 5
  %131 = ptrtoint ptr %arrayidx71.5 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %arrayidx71.5, align 1
  %arrayidx69.6 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 6
  %132 = ptrtoint ptr %arrayidx69.6 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx69.6, align 1
  %arrayidx71.6 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 6
  %134 = ptrtoint ptr %arrayidx71.6 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %arrayidx71.6, align 1
  %arrayidx69.7 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 7
  %135 = ptrtoint ptr %arrayidx69.7 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx69.7, align 1
  %arrayidx71.7 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 7
  %137 = ptrtoint ptr %arrayidx71.7 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx71.7, align 1
  %arrayidx69.8 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 7
  %138 = ptrtoint ptr %arrayidx69.8 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx69.8, align 1
  %arrayidx71.8 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 8
  %140 = ptrtoint ptr %arrayidx71.8 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %arrayidx71.8, align 1
  %arrayidx69.9 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 9
  %141 = ptrtoint ptr %arrayidx69.9 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx69.9, align 1
  %arrayidx71.9 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 9
  %143 = ptrtoint ptr %arrayidx71.9 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %arrayidx71.9, align 1
  %arrayidx69.10 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 10
  %144 = ptrtoint ptr %arrayidx69.10 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx69.10, align 1
  %arrayidx71.10 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 10
  %146 = ptrtoint ptr %arrayidx71.10 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %arrayidx71.10, align 1
  %arrayidx69.11 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 11
  %147 = ptrtoint ptr %arrayidx69.11 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx69.11, align 1
  %arrayidx71.11 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 11
  %149 = ptrtoint ptr %arrayidx71.11 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %arrayidx71.11, align 1
  %arrayidx69.12 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1
  %150 = ptrtoint ptr %arrayidx69.12 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx69.12, align 1
  %arrayidx71.12 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 12
  %152 = ptrtoint ptr %arrayidx71.12 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %arrayidx71.12, align 1
  %arrayidx69.13 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 13
  %153 = ptrtoint ptr %arrayidx69.13 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx69.13, align 1
  %arrayidx71.13 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 13
  %155 = ptrtoint ptr %arrayidx71.13 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %arrayidx71.13, align 1
  %arrayidx69.14 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 14
  %156 = ptrtoint ptr %arrayidx69.14 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx69.14, align 1
  %arrayidx71.14 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 14
  %158 = ptrtoint ptr %arrayidx71.14 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %arrayidx71.14, align 1
  %arrayidx69.15 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 15
  %159 = ptrtoint ptr %arrayidx69.15 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx69.15, align 1
  %arrayidx71.15 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 15
  %161 = ptrtoint ptr %arrayidx71.15 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %arrayidx71.15, align 1
  %arrayidx69.16 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1
  %162 = ptrtoint ptr %arrayidx69.16 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx69.16, align 1
  %arrayidx71.16 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 16
  %164 = ptrtoint ptr %arrayidx71.16 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %arrayidx71.16, align 1
  %arrayidx69.17 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 17
  %165 = ptrtoint ptr %arrayidx69.17 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx69.17, align 1
  %arrayidx71.17 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 17
  %167 = ptrtoint ptr %arrayidx71.17 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %arrayidx71.17, align 1
  %arrayidx69.18 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 18
  %168 = ptrtoint ptr %arrayidx69.18 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx69.18, align 1
  %arrayidx71.18 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 18
  %170 = ptrtoint ptr %arrayidx71.18 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %arrayidx71.18, align 1
  %arrayidx69.19 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 19
  %171 = ptrtoint ptr %arrayidx69.19 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx69.19, align 1
  %arrayidx71.19 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 19
  %173 = ptrtoint ptr %arrayidx71.19 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %arrayidx71.19, align 1
  %arrayidx69.20 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 4
  %174 = ptrtoint ptr %arrayidx69.20 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx69.20, align 1
  %arrayidx71.20 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 20
  %176 = ptrtoint ptr %arrayidx71.20 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %arrayidx71.20, align 1
  %arrayidx69.21 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 21
  %177 = ptrtoint ptr %arrayidx69.21 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx69.21, align 1
  %arrayidx71.21 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 21
  %179 = ptrtoint ptr %arrayidx71.21 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %178, ptr %arrayidx71.21, align 1
  %arrayidx69.22 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 22
  %180 = ptrtoint ptr %arrayidx69.22 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx69.22, align 1
  %arrayidx71.22 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 22
  %182 = ptrtoint ptr %arrayidx71.22 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %arrayidx71.22, align 1
  %arrayidx69.23 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 23
  %183 = ptrtoint ptr %arrayidx69.23 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx69.23, align 1
  %arrayidx71.23 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 23
  %185 = ptrtoint ptr %arrayidx71.23 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %arrayidx71.23, align 1
  %arrayidx69.24 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 24
  %186 = ptrtoint ptr %arrayidx69.24 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx69.24, align 1
  %arrayidx71.24 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 24
  %188 = ptrtoint ptr %arrayidx71.24 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %arrayidx71.24, align 1
  %arrayidx69.25 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 25
  %189 = ptrtoint ptr %arrayidx69.25 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx69.25, align 1
  %arrayidx71.25 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 25
  %191 = ptrtoint ptr %arrayidx71.25 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %arrayidx71.25, align 1
  %arrayidx69.26 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 26
  %192 = ptrtoint ptr %arrayidx69.26 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx69.26, align 1
  %arrayidx71.26 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 26
  %194 = ptrtoint ptr %arrayidx71.26 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %arrayidx71.26, align 1
  %arrayidx69.27 = getelementptr [32 x i8], ptr %sa_key, i32 0, i32 27
  %195 = ptrtoint ptr %arrayidx69.27 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx69.27, align 1
  %arrayidx71.27 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 27
  %197 = ptrtoint ptr %arrayidx71.27 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %196, ptr %arrayidx71.27, align 1
  %arrayidx69.28 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1
  %198 = ptrtoint ptr %arrayidx69.28 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx69.28, align 1
  %arrayidx71.28 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 28
  %200 = ptrtoint ptr %arrayidx71.28 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %arrayidx71.28, align 1
  %arrayidx69.29 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 1
  %201 = ptrtoint ptr %arrayidx69.29 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx69.29, align 1
  %arrayidx71.29 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 29
  %203 = ptrtoint ptr %arrayidx71.29 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %arrayidx71.29, align 1
  %arrayidx69.30 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 2
  %204 = ptrtoint ptr %arrayidx69.30 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx69.30, align 1
  %arrayidx71.30 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 30
  %206 = ptrtoint ptr %arrayidx71.30 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %arrayidx71.30, align 1
  %arrayidx69.31 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 3
  %207 = ptrtoint ptr %arrayidx69.31 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx69.31, align 1
  %arrayidx71.31 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 10, i32 31
  %209 = ptrtoint ptr %arrayidx71.31 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %arrayidx71.31, align 1
  br label %if.end87

if.end87:                                         ; preds = %if.then63, %for.cond76.preheader
  %210 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx42, align 2
  %conv90 = zext i8 %211 to i32
  %212 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx38, align 1
  %conv93 = zext i8 %213 to i32
  %214 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %port_id, align 4
  %conv96 = zext i8 %215 to i32
  %216 = ptrtoint ptr %flags43 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %flags43, align 1
  %conv98 = zext i8 %217 to i32
  %218 = ptrtoint ptr %sa_index to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %sa_index, align 2
  %conv100 = zext i16 %219 to i32
  %220 = ptrtoint ptr %sa_control to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %sa_control, align 4
  %conv102 = zext i8 %221 to i32
  %222 = ptrtoint ptr %spi45 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %spi45, align 4
  %224 = ptrtoint ptr %flags4 to i32
  call void @__asan_loadN_noabort(i32 %224, i32 2)
  %225 = load i16, ptr %flags4, align 1
  %conv105 = zext i16 %225 to i32
  %226 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %handle, align 8
  %228 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %fcport, align 4
  %edif108 = getelementptr inbounds %struct.fc_port, ptr %229, i32 0, i32 72
  %230 = ptrtoint ptr %edif108 to i32
  call void @__asan_load2_noabort(i32 %230)
  %bf.load109 = load i16, ptr %edif108, align 8
  %bf.lshr110 = lshr i16 %bf.load109, 11
  %bf.clear111 = and i16 %bf.lshr110, 1
  %bf.cast112 = zext i16 %bf.clear111 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 37405, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.qla24xx_sa_update_iocb, i32 noundef %conv90, i32 noundef %conv93, i32 noundef %conv96, i32 noundef %conv98, i32 noundef %conv100, i32 noundef %conv102, i32 noundef %223, i32 noundef %conv105, i32 noundef %227, i32 noundef %bf.cast112) #12
  %231 = ptrtoint ptr %flags4 to i32
  call void @__asan_loadN_noabort(i32 %231, i32 2)
  %232 = load i16, ptr %flags4, align 1
  %233 = and i16 %232, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %233)
  %tobool116.not = icmp eq i16 %233, 0
  %234 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %fcport, align 4
  %edif124 = getelementptr inbounds %struct.fc_port, ptr %235, i32 0, i32 72
  %236 = ptrtoint ptr %edif124 to i32
  call void @__asan_load2_noabort(i32 %236)
  %bf.load125 = load i16, ptr %edif124, align 8
  %. = select i1 %tobool116.not, i16 64, i16 128
  %bf.set127 = or i16 %bf.load125, %.
  store i16 %bf.set127, ptr %edif124, align 8
  %237 = load ptr, ptr %fcport, align 4
  %vha130 = getelementptr inbounds %struct.fc_port, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %vha130 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %vha130, align 8
  %control_requests = getelementptr inbounds %struct.scsi_qla_host, ptr %239, i32 0, i32 58, i32 5
  %240 = ptrtoint ptr %control_requests to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %control_requests, align 8
  %inc131 = add i32 %241, 1
  store i32 %inc131, ptr %control_requests, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla24xx_sa_replace_iocb(ptr nocapture noundef readonly %sp, ptr nocapture noundef %sa_update_iocb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u, align 8
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %4 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fcport, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %loop_id, align 4
  %8 = ptrtoint ptr %sa_update_iocb to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 113, ptr %sa_update_iocb, align 4
  %entry_count = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 1
  %9 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %entry_count, align 1
  %sys_define = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 2
  %10 = ptrtoint ptr %sys_define to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %sys_define, align 2
  %entry_status = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 3
  %11 = ptrtoint ptr %entry_status to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %entry_status, align 1
  %handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %handle, align 8
  %handle4 = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 4
  %14 = ptrtoint ptr %handle4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %handle4, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %7)
  %u5 = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 5
  %16 = ptrtoint ptr %u5 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %u5, align 4
  %17 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fcport, align 4
  %vha7 = getelementptr inbounds %struct.fc_port, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %vha7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vha7, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vp_idx, align 8
  %conv = trunc i16 %22 to i8
  %vp_index = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 6
  %23 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %vp_index, align 2
  %24 = load ptr, ptr %fcport, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %24, i32 0, i32 6
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %25 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %al_pa, align 2
  %port_id = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 8
  %27 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %port_id, align 4
  %28 = load ptr, ptr %fcport, align 4
  %d_id10 = getelementptr inbounds %struct.fc_port, ptr %28, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id10, i32 0, i32 1
  %29 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %area, align 1
  %arrayidx12 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx12, align 1
  %32 = load ptr, ptr %fcport, align 4
  %d_id14 = getelementptr inbounds %struct.fc_port, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %d_id14 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %d_id14, align 8
  %arrayidx16 = getelementptr %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx16, align 2
  %flags = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 9
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %flags, align 1
  %salt = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 11
  %37 = ptrtoint ptr %salt to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %salt, align 4
  %spi = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 12
  %38 = ptrtoint ptr %spi to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %spi, align 4
  %index = getelementptr inbounds %struct.edif_sa_ctl, ptr %3, i32 0, i32 2
  %39 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %index, align 2
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %sa_index = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 15
  %42 = ptrtoint ptr %sa_index to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %sa_index, align 2
  %sa_control = getelementptr inbounds %struct.sa_update_28xx, ptr %sa_update_iocb, i32 0, i32 13
  %43 = ptrtoint ptr %sa_control to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %sa_control, align 4
  %conv19 = zext i8 %34 to i32
  %conv22 = zext i8 %30 to i32
  %conv25 = zext i8 %26 to i32
  %conv26 = zext i16 %7 to i32
  %conv30 = zext i16 %41 to i32
  %44 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %handle, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 37405, ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.qla24xx_sa_replace_iocb, i32 noundef %conv19, i32 noundef %conv22, i32 noundef %conv25, i32 noundef %conv26, i32 noundef 1, i32 noundef %conv30, i32 noundef %45) #12
  %46 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fcport, align 4
  %vha33 = getelementptr inbounds %struct.fc_port, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %vha33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vha33, align 8
  %control_requests = getelementptr inbounds %struct.scsi_qla_host, ptr %49, i32 0, i32 58, i32 5
  %50 = ptrtoint ptr %control_requests to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %control_requests, align 8
  %inc = add i32 %51, 1
  store i32 %inc, ptr %control_requests, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla24xx_auth_els(ptr noundef %vha, ptr noundef %pkt, ptr noundef %rsp) local_unnamed_addr #2 align 64 {
entry:
  %a = alloca %struct.qla_els_pt_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %a) #12
  %2 = call ptr @memset(ptr %a, i32 0, i32 44)
  %3 = ptrtoint ptr %a to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -112, ptr %a, align 4
  %nport_handle = getelementptr inbounds %struct.purex_entry_24xx, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %nport_handle to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nport_handle, align 2
  %nport_handle1 = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 2
  %6 = ptrtoint ptr %nport_handle1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %nport_handle1, align 2
  %rx_xchg_addr = getelementptr inbounds %struct.purex_entry_24xx, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %rx_xchg_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_xchg_addr, align 4
  %rx_xchg_address = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 5
  %9 = ptrtoint ptr %rx_xchg_address to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rx_xchg_address, align 4
  %s_id = getelementptr inbounds %struct.purex_entry_24xx, ptr %1, i32 0, i32 14
  %arrayidx = getelementptr %struct.purex_entry_24xx, ptr %1, i32 0, i32 14, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 2
  %did = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 6
  %12 = ptrtoint ptr %did to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %did, align 4
  %arrayidx3 = getelementptr %struct.purex_entry_24xx, ptr %1, i32 0, i32 14, i32 1
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx3, align 1
  %area = getelementptr inbounds %struct.anon.80, ptr %did, i32 0, i32 1
  %15 = ptrtoint ptr %area to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %area, align 1
  %16 = ptrtoint ptr %s_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %s_id, align 4
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %did, i32 0, i32 2
  %18 = ptrtoint ptr %al_pa to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %al_pa, align 2
  %tx_len = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 8
  %19 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %tx_len, align 4
  %tx_byte_count = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 9
  %20 = ptrtoint ptr %tx_byte_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %tx_byte_count, align 4
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %cdma = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 308, i32 1
  %23 = ptrtoint ptr %cdma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cdma, align 4
  %tx_addr = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 12
  %25 = ptrtoint ptr %tx_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tx_addr, align 4
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 46
  %26 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vp_idx, align 8
  %conv = trunc i16 %27 to i8
  %vp_idx8 = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 1
  %28 = ptrtoint ptr %vp_idx8 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %vp_idx8, align 1
  %control_flags = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 3
  %29 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 16384, ptr %control_flags, align 4
  %ox_id = getelementptr inbounds %struct.purex_entry_24xx, ptr %1, i32 0, i32 22
  %30 = ptrtoint ptr %ox_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ox_id, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %ox_id9 = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 4
  %33 = ptrtoint ptr %ox_id9 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %ox_id9, align 2
  %34 = ptrtoint ptr %s_id to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %s_id, align 4
  %conv12 = zext i8 %35 to i32
  %36 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx3, align 1
  %conv15 = zext i8 %37 to i32
  %shl = shl nuw nsw i32 %conv15, 8
  %or = or i32 %shl, %conv12
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 2
  %conv18 = zext i8 %39 to i32
  %shl19 = shl nuw nsw i32 %conv18, 16
  %or20 = or i32 %or, %shl19
  %frame_size = getelementptr inbounds %struct.purex_entry_24xx, ptr %1, i32 0, i32 9
  %40 = ptrtoint ptr %frame_size to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %frame_size, align 4
  %42 = and i16 %41, -241
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %sub = add nsw i16 %43, -24
  %status_flags = getelementptr inbounds %struct.purex_entry_24xx, ptr %1, i32 0, i32 7
  %44 = ptrtoint ptr %status_flags to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %status_flags, align 4
  %.mask = and i16 %45, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %tobool.not = icmp eq i16 %.mask, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rsp, align 4
  %qpair = getelementptr inbounds %struct.rsp_que, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %qpair, align 4
  call fastcc void @qla_els_reject_iocb(ptr noundef %vha, ptr noundef %49, ptr noundef nonnull %a)
  call void @__qla_consume_iocb(ptr noundef %vha, ptr noundef %pkt, ptr noundef %rsp) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2112, i16 %sub)
  %cmp = icmp ugt i16 %sub, 2112
  br i1 %cmp, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv25 = zext i16 %sub to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37133, ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.qla24xx_auth_els, i32 noundef %conv25) #12
  %50 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rsp, align 4
  %qpair29 = getelementptr inbounds %struct.rsp_que, ptr %51, i32 0, i32 17
  %52 = ptrtoint ptr %qpair29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %qpair29, align 4
  call fastcc void @qla_els_reject_iocb(ptr noundef %vha, ptr noundef %53, ptr noundef nonnull %a)
  call void @__qla_consume_iocb(ptr noundef %vha, ptr noundef %pkt, ptr noundef %rsp) #12
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 2
  %54 = getelementptr inbounds i32, ptr %flags, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load = load volatile i32, ptr %54, align 4
  %56 = and i32 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool33.not = icmp eq i32 %56, 0
  br i1 %tobool33.not, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37134, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.qla24xx_auth_els) #12
  %57 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rsp, align 4
  %qpair35 = getelementptr inbounds %struct.rsp_que, ptr %58, i32 0, i32 17
  %59 = ptrtoint ptr %qpair35 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %qpair35, align 4
  call fastcc void @qla_els_reject_iocb(ptr noundef %vha, ptr noundef %60, ptr noundef nonnull %a)
  call void @__qla_consume_iocb(ptr noundef %vha, ptr noundef %pkt, ptr noundef %rsp) #12
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 2848, i32 noundef 2176) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37129, ptr noundef nonnull @.str.64, i32 noundef %or20) #12
  %62 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rsp, align 4
  %qpair41 = getelementptr inbounds %struct.rsp_que, ptr %63, i32 0, i32 17
  %64 = ptrtoint ptr %qpair41 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %qpair41, align 4
  call fastcc void @qla_els_reject_iocb(ptr noundef %vha, ptr noundef %65, ptr noundef nonnull %a)
  call void @__qla_consume_iocb(ptr noundef %vha, ptr noundef %pkt, ptr noundef %rsp) #12
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  %add.ptr.i = getelementptr %struct.enode, ptr %call7.i.i.i, i32 1
  %msgp.i = getelementptr inbounds %struct.enode, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1
  %66 = ptrtoint ptr %msgp.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr.i, ptr %msgp.i, align 8
  %msgp_len.i = getelementptr inbounds %struct.enode, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 2
  %67 = ptrtoint ptr %msgp_len.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2112, ptr %msgp_len.i, align 4
  %ntype1.i = getelementptr inbounds %struct.enode, ptr %call7.i.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %ntype1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %ntype1.i, align 8
  %69 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %u = getelementptr inbounds %struct.enode, ptr %call7.i.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %did to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %did, align 4
  %73 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %u, align 4
  %pur_bytes_rcvd = getelementptr inbounds %struct.enode, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 0, i32 3
  %74 = ptrtoint ptr %pur_bytes_rcvd to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %sub, ptr %pur_bytes_rcvd, align 2
  %75 = ptrtoint ptr %rx_xchg_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_xchg_addr, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  %pur_rx_xchg_address = getelementptr inbounds %struct.enode, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 0, i32 5
  %78 = ptrtoint ptr %pur_rx_xchg_address to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %pur_rx_xchg_address, align 4
  %79 = ptrtoint ptr %nport_handle to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %nport_handle, align 2
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  %pur_nphdl = getelementptr inbounds %struct.enode, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 0, i32 4
  %82 = ptrtoint ptr %pur_nphdl to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %pur_nphdl, align 8
  %d_id = getelementptr inbounds %struct.purex_entry_24xx, ptr %1, i32 0, i32 12
  %arrayidx50 = getelementptr %struct.purex_entry_24xx, ptr %1, i32 0, i32 12, i32 2
  %83 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx50, align 2
  %pur_did = getelementptr inbounds %struct.enode, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %85 = ptrtoint ptr %pur_did to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %pur_did, align 8
  %arrayidx54 = getelementptr %struct.purex_entry_24xx, ptr %1, i32 0, i32 12, i32 1
  %86 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx54, align 1
  %area57 = getelementptr inbounds %struct.anon.80, ptr %pur_did, i32 0, i32 1
  %88 = ptrtoint ptr %area57 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %area57, align 1
  %89 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %d_id, align 4
  %al_pa62 = getelementptr inbounds %struct.anon.80, ptr %pur_did, i32 0, i32 2
  %91 = ptrtoint ptr %al_pa62 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %al_pa62, align 2
  %vp_idx63 = getelementptr inbounds %struct.purex_entry_24xx, ptr %1, i32 0, i32 5
  %92 = ptrtoint ptr %vp_idx63 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %vp_idx63, align 2
  %vp_idx65 = getelementptr inbounds %struct.enode, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 0, i32 2
  %94 = ptrtoint ptr %vp_idx65 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %vp_idx65, align 4
  %sid66 = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 7
  %95 = load i32, ptr %pur_did, align 8
  %96 = ptrtoint ptr %sid66 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %sid66, align 4
  %call69 = tail call i32 @__qla_copy_purex_to_buffer(ptr noundef %vha, ptr noundef %pkt, ptr noundef %rsp, ptr noundef %add.ptr.i, i32 noundef 2112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end74, label %if.then71

if.then71:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rsp, align 4
  %qpair72 = getelementptr inbounds %struct.rsp_que, ptr %98, i32 0, i32 17
  %99 = ptrtoint ptr %qpair72 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %qpair72, align 4
  call fastcc void @qla_els_reject_iocb(ptr noundef %vha, ptr noundef %100, ptr noundef nonnull %a)
  %101 = ptrtoint ptr %ntype1.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %ntype1.i, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end74:                                         ; preds = %if.end43
  %102 = ptrtoint ptr %al_pa62 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %al_pa62, align 2
  %104 = ptrtoint ptr %area57 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %area57, align 1
  %106 = ptrtoint ptr %pur_did to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %pur_did, align 8
  %beid.sroa.7.0.insert.ext = zext i8 %103 to i32
  %beid.sroa.5.0.insert.ext = zext i8 %105 to i32
  %beid.sroa.0.0.insert.ext = zext i8 %107 to i32
  %108 = shl nuw i32 %beid.sroa.0.0.insert.ext, 24
  %109 = shl nuw nsw i32 %beid.sroa.5.0.insert.ext, 16
  %110 = shl nuw nsw i32 %beid.sroa.7.0.insert.ext, 8
  %111 = or i32 %109, %110
  %beid.coerce.sroa.0.0.insert.shift = or i32 %111, %108
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %beid.coerce.sroa.0.0.insert.shift, 0
  %call87 = tail call ptr @qla_find_host_by_d_id(ptr noundef %vha, [1 x i32] %.fca.0.insert) #12
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %if.then89, label %if.end96

if.then89:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %pur_did to i32
  call void @__asan_load4_noabort(i32 %112)
  %bf.load92 = load i32, ptr %pur_did, align 8
  %bf.lshr93 = lshr i32 %bf.load92, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 20619, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.qla24xx_auth_els, i32 noundef %bf.lshr93) #12
  %113 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rsp, align 4
  %qpair94 = getelementptr inbounds %struct.rsp_que, ptr %114, i32 0, i32 17
  %115 = ptrtoint ptr %qpair94 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %qpair94, align 4
  call fastcc void @qla_els_reject_iocb(ptr noundef %vha, ptr noundef %116, ptr noundef nonnull %a)
  %117 = ptrtoint ptr %ntype1.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %ntype1.i, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end96:                                         ; preds = %if.end74
  %call99 = tail call ptr @qla2x00_find_fcport_by_pid(ptr noundef nonnull %call87, ptr noundef %u)
  %e_dbell = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90
  %118 = ptrtoint ptr %e_dbell to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %e_dbell, align 8
  %and100 = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.then118, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end96
  %tobool102.not = icmp eq ptr %call99, null
  br i1 %tobool102.not, label %lor.lhs.false.if.end127_crit_edge, label %land.lhs.true

lor.lhs.false.if.end127_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

land.lhs.true:                                    ; preds = %lor.lhs.false
  %vha103 = getelementptr inbounds %struct.fc_port, ptr %call99, i32 0, i32 1
  %120 = ptrtoint ptr %vha103 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %vha103, align 8
  %host.i = getelementptr inbounds %struct.scsi_qla_host, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %host.i, align 8
  %active_mode.i = getelementptr inbounds %struct.Scsi_Host, ptr %123, i32 0, i32 36
  %124 = ptrtoint ptr %active_mode.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %bf.load.i = load i16, ptr %active_mode.i, align 8
  %bf.lshr.mask.i = and i16 %bf.load.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask.i)
  %cmp.i = icmp eq i16 %bf.lshr.mask.i, 16384
  br i1 %cmp.i, label %land.lhs.true106, label %land.lhs.true.if.end127_crit_edge

land.lhs.true.if.end127_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

land.lhs.true106:                                 ; preds = %land.lhs.true
  %disc_state = getelementptr inbounds %struct.fc_port, ptr %call99, i32 0, i32 50
  %125 = ptrtoint ptr %disc_state to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %disc_state, align 8
  %127 = zext i32 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %126, label %lor.lhs.false113 [
    i32 9, label %land.lhs.true106.if.then118.thread_crit_edge
    i32 0, label %land.lhs.true106.if.then118.thread_crit_edge250
  ]

land.lhs.true106.if.then118.thread_crit_edge250:  ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then118.thread

land.lhs.true106.if.then118.thread_crit_edge:     ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then118.thread

lor.lhs.false113:                                 ; preds = %land.lhs.true106
  %edif = getelementptr inbounds %struct.fc_port, ptr %call99, i32 0, i32 72
  %128 = ptrtoint ptr %edif to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load114 = load i16, ptr %edif, align 8
  %129 = and i16 %bf.load114, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool117.not = icmp eq i16 %129, 0
  br i1 %tobool117.not, label %lor.lhs.false113.if.then118.thread_crit_edge, label %lor.lhs.false113.if.end127_crit_edge

lor.lhs.false113.if.end127_crit_edge:             ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

lor.lhs.false113.if.then118.thread_crit_edge:     ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then118.thread

if.then118.thread:                                ; preds = %lor.lhs.false113.if.then118.thread_crit_edge, %land.lhs.true106.if.then118.thread_crit_edge, %land.lhs.true106.if.then118.thread_crit_edge250
  %e_dbell119248 = getelementptr inbounds %struct.scsi_qla_host, ptr %call87, i32 0, i32 90
  %130 = ptrtoint ptr %e_dbell119248 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %e_dbell119248, align 8
  br label %cond.true

if.then118:                                       ; preds = %if.end96
  %e_dbell119 = getelementptr inbounds %struct.scsi_qla_host, ptr %call87, i32 0, i32 90
  %132 = ptrtoint ptr %e_dbell119 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %e_dbell119, align 8
  %tobool121.not = icmp eq ptr %call99, null
  br i1 %tobool121.not, label %if.then118.cond.end_crit_edge, label %if.then118.cond.true_crit_edge

if.then118.cond.true_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true

if.then118.cond.end_crit_edge:                    ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.then118.cond.true_crit_edge, %if.then118.thread
  %134 = phi i32 [ %131, %if.then118.thread ], [ %133, %if.then118.cond.true_crit_edge ]
  %d_id122 = getelementptr inbounds %struct.fc_port, ptr %call99, i32 0, i32 6
  %135 = ptrtoint ptr %d_id122 to i32
  call void @__asan_load4_noabort(i32 %135)
  %bf.load123 = load i32, ptr %d_id122, align 8
  %bf.lshr124 = lshr i32 %bf.load123, 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then118.cond.end_crit_edge
  %136 = phi i32 [ %134, %cond.true ], [ %133, %if.then118.cond.end_crit_edge ]
  %cond = phi i32 [ %bf.lshr124, %cond.true ], [ 0, %if.then118.cond.end_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef nonnull %call87, i32 noundef 37132, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.qla24xx_auth_els, i32 noundef %136, i32 noundef %cond) #12
  %137 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rsp, align 4
  %qpair125 = getelementptr inbounds %struct.rsp_que, ptr %138, i32 0, i32 17
  %139 = ptrtoint ptr %qpair125 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %qpair125, align 4
  call fastcc void @qla_els_reject_iocb(ptr noundef nonnull %call87, ptr noundef %140, ptr noundef nonnull %a)
  %141 = ptrtoint ptr %ntype1.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %ntype1.i, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end127:                                        ; preds = %lor.lhs.false113.if.end127_crit_edge, %land.lhs.true.if.end127_crit_edge, %lor.lhs.false.if.end127_crit_edge
  tail call fastcc void @qla_enode_add(ptr noundef nonnull %call87, ptr noundef nonnull %call7.i.i.i)
  %142 = ptrtoint ptr %pur_bytes_rcvd to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %pur_bytes_rcvd, align 2
  %conv130 = sext i16 %143 to i32
  %144 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %144)
  %bf.load133 = load i32, ptr %u, align 4
  %bf.lshr134 = lshr i32 %bf.load133, 8
  %145 = ptrtoint ptr %pur_did to i32
  call void @__asan_load4_noabort(i32 %145)
  %bf.load137 = load i32, ptr %pur_did, align 8
  %bf.lshr138 = lshr i32 %bf.load137, 8
  %146 = ptrtoint ptr %pur_rx_xchg_address to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %pur_rx_xchg_address, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef nonnull %call87, i32 noundef 37132, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.qla24xx_auth_els, i32 noundef %conv130, i32 noundef %bf.lshr134, i32 noundef %bf.lshr138, i32 noundef %147) #12
  tail call void @qla_edb_eventcreate(ptr noundef nonnull %call87, i32 noundef 3, i32 noundef %or20, i32 noundef 0, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %cond.end, %if.then89, %if.then71, %if.then40, %if.then34, %if.then27, %if.then
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %a) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla_els_reject_iocb(ptr noundef %vha, ptr noundef %qp, ptr noundef %a) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__qla2x00_alloc_iocbs(ptr noundef %qp, ptr noundef null) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28684, ptr noundef nonnull @.str.156) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qla_els_pt_iocb(ptr noundef %vha, ptr noundef nonnull %call, ptr noundef %a) #12
  %ox_id = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %ox_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ox_id, align 2
  %conv = zext i16 %1 to i32
  %sid = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 7
  %2 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %sid, align 4
  %bf.lshr = lshr i32 %bf.load, 8
  %did = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 6
  %3 = ptrtoint ptr %did to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load1 = load i32, ptr %did, align 4
  %bf.lshr2 = lshr i32 %bf.load1, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 387, ptr noundef nonnull @.str.157, i32 noundef %conv, i32 noundef %bf.lshr, i32 noundef %bf.lshr2) #12
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %elsrej = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 308
  %6 = ptrtoint ptr %elsrej to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %elsrej, align 4
  tail call void @ql_dump_buffer(i32 noundef 33792, ptr noundef %vha, i32 noundef 389, ptr noundef %7, i32 noundef 8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void @arm_heavy_mb() #12
  %req = getelementptr inbounds %struct.qla_qpair, ptr %qp, i32 0, i32 12
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 4
  tail call void @qla2x00_start_iocbs(ptr noundef %vha, ptr noundef %9) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qla_consume_iocb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__qla_copy_purex_to_buffer(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla_find_host_by_d_id(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla_enode_add(ptr noundef %vha, ptr noundef %ptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ntype = getelementptr inbounds %struct.enode, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %ntype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ntype, align 4
  %dinfo = getelementptr inbounds %struct.enode, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %dinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dinfo, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %vha, i32 noundef 37129, ptr noundef nonnull @.str.158, ptr noundef nonnull @__func__.qla_enode_add, i32 noundef %1, i32 noundef %3) #12
  %pur_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pur_lock) #12
  %head = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91, i32 2
  %prev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ptr, ptr noundef %5, ptr noundef %head) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ptr, ptr %prev.i, align 4
  %7 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %head, ptr %ptr, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ptr, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %ptr, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pur_lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla28xx_sa_update_iocb_entry(ptr noundef %v, ptr noundef %req, ptr noundef %pkt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @qla2x00_get_sp_from_handle(ptr noundef %v, ptr noundef nonnull @.str.68, ptr noundef %req, ptr noundef %pkt) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %v, i32 noundef 12387, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.qla28xx_sa_update_iocb_entry) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vha1 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %flags = getelementptr inbounds %struct.sa_update_28xx, ptr %pkt, i32 0, i32 9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 1
  %4 = and i8 %3, 3
  %and = zext i8 %4 to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.qla28xx_sa_update_iocb_entry, i32 0, i32 %and
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %sa_index10 = getelementptr inbounds %struct.sa_update_28xx, ptr %pkt, i32 0, i32 15
  %6 = ptrtoint ptr %sa_index10 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sa_index10, align 2
  %conv11 = zext i16 %7 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 12387, ptr noundef nonnull %switch.load, ptr noundef nonnull @__func__.qla28xx_sa_update_iocb_entry, ptr noundef %1, i32 noundef %conv11) #12
  %fcport = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcport, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %loop_id, align 4
  %port_name = getelementptr inbounds %struct.fc_port, ptr %9, i32 0, i32 5
  %u = getelementptr inbounds %struct.sa_update_28xx, ptr %pkt, i32 0, i32 5
  %12 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %u, align 4
  %conv13 = zext i16 %13 to i32
  %old_sa_info = getelementptr inbounds %struct.sa_update_28xx, ptr %pkt, i32 0, i32 16
  %14 = ptrtoint ptr %old_sa_info to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %old_sa_info, align 4
  %conv14 = zext i16 %15 to i32
  %new_sa_info = getelementptr inbounds %struct.sa_update_28xx, ptr %pkt, i32 0, i32 17
  %16 = ptrtoint ptr %new_sa_info to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %new_sa_info, align 2
  %conv15 = zext i16 %17 to i32
  %conv16 = zext i16 %11 to i32
  %sa_index17 = getelementptr inbounds %struct.sa_update_28xx, ptr %pkt, i32 0, i32 15
  %18 = ptrtoint ptr %sa_index17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sa_index17, align 2
  %conv18 = zext i16 %19 to i32
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags, align 1
  %conv20 = zext i8 %21 to i32
  %handle = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 9
  %22 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %handle, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 12387, ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.qla28xx_sa_update_iocb_entry, ptr noundef %port_name, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %23) #12
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags, align 1
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp = icmp eq i8 %26, 1
  br i1 %cmp, label %if.then25, label %if.end.if.end40_crit_edge

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then25:                                        ; preds = %if.end
  %27 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fcport, align 4
  %flags27 = getelementptr inbounds %struct.fc_port, ptr %28, i32 0, i32 35
  %29 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags27, align 8
  %and28 = and i32 %30, -41
  store i32 %and28, ptr %flags27, align 8
  %31 = load ptr, ptr %fcport, align 4
  %edif_indx_list.i = getelementptr inbounds %struct.fc_port, ptr %31, i32 0, i32 72, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then25
  %.pn.in.in.i = phi ptr [ %edif_indx_list.i, %if.then25 ], [ %.pn.in.i, %for.body.i.for.cond.i_crit_edge ]
  %32 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.in.i, %edif_indx_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end40_crit_edge, label %for.body.i

for.cond.i.if.end40_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

for.body.i:                                       ; preds = %for.cond.i
  %entry1.0.i = getelementptr i8, ptr %.pn.in.i, i32 -72
  %33 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %entry1.0.i, align 4
  %cmp10.i = icmp eq i16 %34, %11
  br i1 %cmp10.i, label %qla_edif_list_find_sa_index.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

qla_edif_list_find_sa_index.exit:                 ; preds = %for.body.i
  %entry1.0.i.le = getelementptr i8, ptr %.pn.in.i, i32 -72
  %tobool31.not = icmp eq ptr %entry1.0.i.le, null
  br i1 %tobool31.not, label %qla_edif_list_find_sa_index.exit.if.end40_crit_edge, label %if.then32

qla_edif_list_find_sa_index.exit.if.end40_crit_edge: ; preds = %qla_edif_list_find_sa_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then32:                                        ; preds = %qla_edif_list_find_sa_index.exit
  %35 = ptrtoint ptr %sa_index17 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sa_index17, align 2
  %conv34 = zext i16 %36 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 20531, ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.qla28xx_sa_update_iocb_entry, ptr noundef nonnull %entry1.0.i.le, i32 noundef %conv34) #12
  %37 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fcport, align 4
  %indx_list_lock.i = getelementptr inbounds %struct.fc_port, ptr %38, i32 0, i32 72, i32 9
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %indx_list_lock.i) #12
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then32.qla_edif_list_delete_sa_index.exit_crit_edge

if.then32.qla_edif_list_delete_sa_index.exit_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla_edif_list_delete_sa_index.exit

if.end.i.i.i:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %.pn.in.i, i32 4
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i, align 4
  %41 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %qla_edif_list_delete_sa_index.exit

qla_edif_list_delete_sa_index.exit:               ; preds = %if.end.i.i.i, %if.then32.qla_edif_list_delete_sa_index.exit_crit_edge
  %45 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in.i, i32 4
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %indx_list_lock.i, i32 noundef %call3.i) #12
  %timer = getelementptr i8, ptr %.pn.in.i, i32 -48
  %call36 = tail call i32 @del_timer(ptr noundef %timer) #12
  %47 = ptrtoint ptr %sa_index17 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %sa_index17, align 2
  %conv38 = zext i16 %48 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 20531, ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.qla28xx_sa_update_iocb_entry, ptr noundef nonnull %entry1.0.i.le, i32 noundef %conv38) #12
  tail call void @kfree(ptr noundef nonnull %entry1.0.i.le) #12
  br label %if.end40

if.end40:                                         ; preds = %qla_edif_list_delete_sa_index.exit, %qla_edif_list_find_sa_index.exit.if.end40_crit_edge, %for.cond.i.if.end40_crit_edge, %if.end.if.end40_crit_edge
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flags, align 1
  %51 = and i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool44.not = icmp eq i8 %51, 0
  br i1 %tobool44.not, label %if.end40.if.end50_crit_edge, label %if.then45

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %new_sa_info to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %new_sa_info, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %53)
  %cmp48 = icmp eq i16 %53, -1
  %cond = zext i1 %cmp48 to i32
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end40.if.end50_crit_edge
  %old_sa_deleted.0 = phi i32 [ %cond, %if.then45 ], [ 1, %if.end40.if.end50_crit_edge ]
  %flags51 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 10
  %54 = ptrtoint ptr %flags51 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %flags51, align 4
  %56 = and i16 %55, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool54.not = icmp eq i16 %56, 0
  br i1 %tobool54.not, label %if.else, label %if.then55

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fcport, align 4
  %flags57 = getelementptr inbounds %struct.fc_port, ptr %58, i32 0, i32 35
  %59 = ptrtoint ptr %flags57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags57, align 8
  %and58 = and i32 %60, -41
  store i32 %and58, ptr %flags57, align 8
  %61 = load ptr, ptr %fcport, align 4
  %loop_id60 = getelementptr inbounds %struct.fc_port, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %loop_id60 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %loop_id60, align 4
  %conv61 = zext i16 %63 to i32
  %64 = ptrtoint ptr %sa_index17 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %sa_index17, align 2
  %conv63 = zext i16 %65 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 12387, ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.qla28xx_sa_update_iocb_entry, i32 noundef %conv61, i32 noundef %conv63) #12
  br label %if.end146

if.else:                                          ; preds = %if.end50
  %entry_status = getelementptr inbounds %struct.sa_update_28xx, ptr %pkt, i32 0, i32 3
  %66 = ptrtoint ptr %entry_status to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %entry_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp65 = icmp eq i8 %67, 0
  br i1 %cmp65, label %land.lhs.true, label %if.else.if.else113_crit_edge

if.else.if.else113_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else113

land.lhs.true:                                    ; preds = %if.else
  %68 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp69 = icmp ne i16 %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_sa_deleted.0)
  %tobool72.not = icmp eq i32 %old_sa_deleted.0, 0
  %or.cond = select i1 %cmp69, i1 true, i1 %tobool72.not
  br i1 %or.cond, label %land.lhs.true.if.else113_crit_edge, label %if.then73

land.lhs.true.if.else113_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else113

if.then73:                                        ; preds = %land.lhs.true
  %70 = ptrtoint ptr %new_sa_info to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %new_sa_info, align 2
  %conv75 = zext i16 %71 to i32
  %port_id = getelementptr inbounds %struct.sa_update_28xx, ptr %pkt, i32 0, i32 8
  %arrayidx = getelementptr %struct.sa_update_28xx, ptr %pkt, i32 0, i32 8, i32 2
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx, align 2
  %conv76 = zext i8 %73 to i32
  %arrayidx78 = getelementptr %struct.sa_update_28xx, ptr %pkt, i32 0, i32 8, i32 1
  %74 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %75 to i32
  %76 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %port_id, align 4
  %conv82 = zext i8 %77 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %1, i32 noundef 12387, ptr noundef nonnull @.str.74, i32 noundef %conv75, i32 noundef %conv76, i32 noundef %conv79, i32 noundef %conv82) #12
  %78 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fcport, align 4
  %edif = getelementptr inbounds %struct.fc_port, ptr %79, i32 0, i32 72
  %80 = ptrtoint ptr %edif to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load = load i16, ptr %edif, align 8
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %edif, align 8
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %flags, align 1
  %83 = and i8 %82, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool87.not = icmp eq i8 %83, 0
  %84 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fcport, align 4
  %edif102 = getelementptr inbounds %struct.fc_port, ptr %85, i32 0, i32 72
  %86 = ptrtoint ptr %edif102 to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load103 = load i16, ptr %edif102, align 8
  br i1 %tobool87.not, label %if.else100, label %if.then88

if.then88:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set93 = or i16 %bf.load103, 512
  %87 = ptrtoint ptr %edif102 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %bf.set93, ptr %edif102, align 8
  %88 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fcport, align 4
  %edif95 = getelementptr inbounds %struct.fc_port, ptr %89, i32 0, i32 72
  %90 = ptrtoint ptr %edif95 to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load96 = load i16, ptr %edif95, align 8
  %bf.clear97 = and i16 %bf.load96, -129
  store i16 %bf.clear97, ptr %edif95, align 8
  %91 = load ptr, ptr %fcport, align 4
  tail call void @qla_edb_eventcreate(ptr noundef %1, i32 noundef 4, i32 noundef 0, i32 noundef 2, ptr noundef %91)
  br label %if.end146

if.else100:                                       ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set105 = or i16 %bf.load103, 256
  %92 = ptrtoint ptr %edif102 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %bf.set105, ptr %edif102, align 8
  %93 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fcport, align 4
  %edif107 = getelementptr inbounds %struct.fc_port, ptr %94, i32 0, i32 72
  %95 = ptrtoint ptr %edif107 to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load108 = load i16, ptr %edif107, align 8
  %bf.clear109 = and i16 %bf.load108, -65
  store i16 %bf.clear109, ptr %edif107, align 8
  %96 = load ptr, ptr %fcport, align 4
  tail call void @qla_edb_eventcreate(ptr noundef %1, i32 noundef 4, i32 noundef 0, i32 noundef 1, ptr noundef %96)
  br label %if.end146

if.else113:                                       ; preds = %land.lhs.true.if.else113_crit_edge, %if.else.if.else113_crit_edge
  %97 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fcport, align 4
  %port_name115 = getelementptr inbounds %struct.fc_port, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %sa_index17 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %sa_index17, align 2
  %conv118 = zext i16 %100 to i32
  %101 = ptrtoint ptr %new_sa_info to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %new_sa_info, align 2
  %conv120 = zext i16 %102 to i32
  %port_id121 = getelementptr inbounds %struct.sa_update_28xx, ptr %pkt, i32 0, i32 8
  %arrayidx122 = getelementptr %struct.sa_update_28xx, ptr %pkt, i32 0, i32 8, i32 2
  %103 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx122, align 2
  %conv123 = zext i8 %104 to i32
  %arrayidx125 = getelementptr %struct.sa_update_28xx, ptr %pkt, i32 0, i32 8, i32 1
  %105 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx125, align 1
  %conv126 = zext i8 %106 to i32
  %107 = ptrtoint ptr %port_id121 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %port_id121, align 4
  %conv129 = zext i8 %108 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 12387, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.qla28xx_sa_update_iocb_entry, ptr noundef %port_name115, i32 noundef %conv118, i32 noundef %conv120, i32 noundef %conv123, i32 noundef %conv126, i32 noundef %conv129) #12
  %109 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %flags, align 1
  %111 = and i8 %110, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool133.not = icmp eq i8 %111, 0
  %112 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %u, align 4
  %114 = tail call i16 @llvm.bswap.i16(i16 %113)
  %conv140 = zext i16 %114 to i32
  %shl141 = shl nuw i32 %conv140, 16
  %or142 = or i32 %shl141, 1
  %115 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %fcport, align 4
  br i1 %tobool133.not, label %if.else138, label %if.then134

if.then134:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qla_edb_eventcreate(ptr noundef %1, i32 noundef 4, i32 noundef %or142, i32 noundef 2, ptr noundef %116)
  br label %if.end146

if.else138:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qla_edb_eventcreate(ptr noundef %1, i32 noundef 4, i32 noundef %or142, i32 noundef 1, ptr noundef %116)
  br label %if.end146

if.end146:                                        ; preds = %if.else138, %if.then134, %if.else100, %if.then88, %if.then55
  %117 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %flags, align 1
  %conv148 = zext i8 %118 to i32
  %and149 = and i32 %conv148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.else183, label %if.then151

if.then151:                                       ; preds = %if.end146
  %119 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %fcport, align 4
  %121 = ptrtoint ptr %sa_index17 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %sa_index17, align 2
  %123 = tail call i16 @llvm.bswap.i16(i16 %122)
  %and157 = and i32 %conv148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %cmp.i.not = icmp eq i32 %and157, 0
  %tx_sa_list.i = getelementptr inbounds %struct.fc_port, ptr %120, i32 0, i32 72, i32 10
  %rx_sa_list.i = getelementptr inbounds %struct.fc_port, ptr %120, i32 0, i32 72, i32 11
  %sa_list.0.i = select i1 %cmp.i.not, ptr %rx_sa_list.i, ptr %tx_sa_list.i
  %124 = ptrtoint ptr %sa_list.0.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %sa_list.0.i, align 4
  %cmp8.not29.i = icmp eq ptr %125, %sa_list.0.i
  br i1 %cmp8.not29.i, label %if.then151.if.else175_crit_edge, label %if.then151.for.body.i311_crit_edge

if.then151.for.body.i311_crit_edge:               ; preds = %if.then151
  br label %for.body.i311

if.then151.if.else175_crit_edge:                  ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else175

for.body.i311:                                    ; preds = %for.inc.i.for.body.i311_crit_edge, %if.then151.for.body.i311_crit_edge
  %sa_ctl.030.i = phi ptr [ %tsa_ctl.031.i, %for.inc.i.for.body.i311_crit_edge ], [ %125, %if.then151.for.body.i311_crit_edge ]
  %126 = ptrtoint ptr %sa_ctl.030.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %tsa_ctl.031.i = load ptr, ptr %sa_ctl.030.i, align 4
  %state.i = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 5
  %127 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %state.i, align 4
  %129 = and i32 %128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i = icmp eq i32 %129, 0
  br i1 %tobool.not.i, label %for.body.i311.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i311.for.inc.i_crit_edge:                ; preds = %for.body.i311
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i311
  %index9.i = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 2
  %130 = ptrtoint ptr %index9.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %index9.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %131, i16 %123)
  %cmp10.i312 = icmp eq i16 %131, %123
  br i1 %cmp10.i312, label %qla_edif_find_sa_ctl_by_index.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i311.for.inc.i_crit_edge
  %cmp8.not.i = icmp eq ptr %tsa_ctl.031.i, %sa_list.0.i
  br i1 %cmp8.not.i, label %for.inc.i.if.else175_crit_edge, label %for.inc.i.for.body.i311_crit_edge

for.inc.i.for.body.i311_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i311

for.inc.i.if.else175_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else175

qla_edif_find_sa_ctl_by_index.exit:               ; preds = %land.lhs.true.i
  %index9.i.le = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 2
  %tobool159.not = icmp eq ptr %sa_ctl.030.i, null
  br i1 %tobool159.not, label %qla_edif_find_sa_ctl_by_index.exit.if.else175_crit_edge, label %land.lhs.true160

qla_edif_find_sa_ctl_by_index.exit.if.else175_crit_edge: ; preds = %qla_edif_find_sa_ctl_by_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else175

land.lhs.true160:                                 ; preds = %qla_edif_find_sa_ctl_by_index.exit
  %132 = ptrtoint ptr %index9.i.le to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %index9.i.le, align 2
  %conv162 = zext i16 %133 to i32
  %134 = and i8 %118, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %cmp.i314.not = icmp eq i8 %134, 0
  %sa_list.0.i317 = select i1 %cmp.i314.not, ptr %rx_sa_list.i, ptr %tx_sa_list.i
  %135 = ptrtoint ptr %sa_list.0.i317 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sa_list.0.i317, align 4
  %cmp8.not29.i318 = icmp eq ptr %136, %sa_list.0.i317
  br i1 %cmp8.not29.i318, label %land.lhs.true160.if.else175_crit_edge, label %land.lhs.true160.for.body.i323_crit_edge

land.lhs.true160.for.body.i323_crit_edge:         ; preds = %land.lhs.true160
  br label %for.body.i323

land.lhs.true160.if.else175_crit_edge:            ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else175

for.body.i323:                                    ; preds = %for.inc.i329.for.body.i323_crit_edge, %land.lhs.true160.for.body.i323_crit_edge
  %sa_ctl.030.i319 = phi ptr [ %tsa_ctl.031.i320, %for.inc.i329.for.body.i323_crit_edge ], [ %136, %land.lhs.true160.for.body.i323_crit_edge ]
  %137 = ptrtoint ptr %sa_ctl.030.i319 to i32
  call void @__asan_load4_noabort(i32 %137)
  %tsa_ctl.031.i320 = load ptr, ptr %sa_ctl.030.i319, align 4
  %state.i321 = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i319, i32 0, i32 5
  %138 = ptrtoint ptr %state.i321 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %state.i321, align 4
  %140 = and i32 %139, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i322 = icmp eq i32 %140, 0
  br i1 %tobool.not.i322, label %for.body.i323.for.inc.i329_crit_edge, label %land.lhs.true.i327

for.body.i323.for.inc.i329_crit_edge:             ; preds = %for.body.i323
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i329

land.lhs.true.i327:                               ; preds = %for.body.i323
  %index9.i324 = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i319, i32 0, i32 2
  %141 = ptrtoint ptr %index9.i324 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %index9.i324, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %142, i16 %133)
  %cmp10.i326 = icmp eq i16 %142, %133
  br i1 %cmp10.i326, label %qla_edif_find_sa_ctl_by_index.exit331, label %land.lhs.true.i327.for.inc.i329_crit_edge

land.lhs.true.i327.for.inc.i329_crit_edge:        ; preds = %land.lhs.true.i327
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i329

for.inc.i329:                                     ; preds = %land.lhs.true.i327.for.inc.i329_crit_edge, %for.body.i323.for.inc.i329_crit_edge
  %cmp8.not.i328 = icmp eq ptr %tsa_ctl.031.i320, %sa_list.0.i317
  br i1 %cmp8.not.i328, label %for.inc.i329.if.else175_crit_edge, label %for.inc.i329.for.body.i323_crit_edge

for.inc.i329.for.body.i323_crit_edge:             ; preds = %for.inc.i329
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i323

for.inc.i329.if.else175_crit_edge:                ; preds = %for.inc.i329
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else175

qla_edif_find_sa_ctl_by_index.exit331:            ; preds = %land.lhs.true.i327
  %cmp167.not = icmp eq ptr %sa_ctl.030.i319, null
  br i1 %cmp167.not, label %qla_edif_find_sa_ctl_by_index.exit331.if.else175_crit_edge, label %if.then169

qla_edif_find_sa_ctl_by_index.exit331.if.else175_crit_edge: ; preds = %qla_edif_find_sa_ctl_by_index.exit331
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else175

if.then169:                                       ; preds = %qla_edif_find_sa_ctl_by_index.exit331
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %1, i32 noundef 12387, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.qla28xx_sa_update_iocb_entry, i32 noundef %conv162) #12
  %143 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %fcport, align 4
  %145 = ptrtoint ptr %index9.i.le to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %index9.i.le, align 2
  %sa_list_lock.i = getelementptr inbounds %struct.fc_port, ptr %144, i32 0, i32 72, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sa_list_lock.i) #12
  %call.i.i.i332 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %sa_ctl.030.i) #12
  br i1 %call.i.i.i332, label %if.end.i.i.i335, label %if.then169.list_del.exit.i_crit_edge

if.then169.list_del.exit.i_crit_edge:             ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i335:                                  ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i333 = getelementptr inbounds %struct.list_head, ptr %sa_ctl.030.i, i32 0, i32 1
  %147 = ptrtoint ptr %prev.i.i.i333 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %prev.i.i.i333, align 4
  %149 = ptrtoint ptr %sa_ctl.030.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %sa_ctl.030.i, align 4
  %prev1.i.i.i.i334 = getelementptr inbounds %struct.list_head, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %prev1.i.i.i.i334 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %148, ptr %prev1.i.i.i.i334, align 4
  %152 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %150, ptr %148, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i335, %if.then169.list_del.exit.i_crit_edge
  %153 = ptrtoint ptr %sa_ctl.030.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr inttoptr (i32 256 to ptr), ptr %sa_ctl.030.i, align 4
  %prev.i.i336 = getelementptr inbounds %struct.list_head, ptr %sa_ctl.030.i, i32 0, i32 1
  %154 = ptrtoint ptr %prev.i.i336 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i336, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sa_list_lock.i, i32 noundef %call2.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %146)
  %cmp7.i = icmp ugt i16 %146, 511
  br i1 %cmp7.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_rekey_cnt.i = getelementptr inbounds %struct.fc_port, ptr %144, i32 0, i32 72, i32 1
  %155 = ptrtoint ptr %tx_rekey_cnt.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %tx_rekey_cnt.i, align 4
  %dec.i = add i32 %156, -1
  store i32 %dec.i, ptr %tx_rekey_cnt.i, align 4
  br label %qla_edif_free_sa_ctl.exit

if.else.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %rx_rekey_cnt.i = getelementptr inbounds %struct.fc_port, ptr %144, i32 0, i32 72, i32 2
  %157 = ptrtoint ptr %rx_rekey_cnt.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rx_rekey_cnt.i, align 8
  %dec11.i = add i32 %158, -1
  store i32 %dec11.i, ptr %rx_rekey_cnt.i, align 8
  br label %qla_edif_free_sa_ctl.exit

qla_edif_free_sa_ctl.exit:                        ; preds = %if.else.i, %if.then.i
  tail call void @kfree(ptr noundef nonnull %sa_ctl.030.i) #12
  br label %if.end176

if.else175:                                       ; preds = %qla_edif_find_sa_ctl_by_index.exit331.if.else175_crit_edge, %for.inc.i329.if.else175_crit_edge, %land.lhs.true160.if.else175_crit_edge, %qla_edif_find_sa_ctl_by_index.exit.if.else175_crit_edge, %for.inc.i.if.else175_crit_edge, %if.then151.if.else175_crit_edge
  %retval.0.i313341 = phi ptr [ %sa_ctl.030.i, %qla_edif_find_sa_ctl_by_index.exit331.if.else175_crit_edge ], [ null, %qla_edif_find_sa_ctl_by_index.exit.if.else175_crit_edge ], [ null, %if.then151.if.else175_crit_edge ], [ %sa_ctl.030.i, %land.lhs.true160.if.else175_crit_edge ], [ %sa_ctl.030.i, %for.inc.i329.if.else175_crit_edge ], [ null, %for.inc.i.if.else175_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 12387, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.qla28xx_sa_update_iocb_entry, ptr noundef %retval.0.i313341) #12
  br label %if.end176

if.end176:                                        ; preds = %if.else175, %qla_edif_free_sa_ctl.exit
  %159 = ptrtoint ptr %sa_index17 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %sa_index17, align 2
  %161 = tail call i16 @llvm.bswap.i16(i16 %160)
  %conv178 = zext i16 %161 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 12387, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.qla28xx_sa_update_iocb_entry, i32 noundef %conv178, i32 noundef %conv16) #12
  %162 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %fcport, align 4
  %164 = ptrtoint ptr %sa_index17 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %sa_index17, align 2
  %166 = tail call i16 @llvm.bswap.i16(i16 %165)
  tail call fastcc void @qla_edif_sadb_delete_sa_index(ptr noundef %163, i16 noundef zeroext %11, i16 noundef zeroext %166)
  br label %if.end199

if.else183:                                       ; preds = %if.end146
  %167 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %168)
  %tobool185.not = icmp eq i16 %168, 0
  br i1 %tobool185.not, label %if.else183.if.end199_crit_edge, label %if.then186

if.else183.if.end199_crit_edge:                   ; preds = %if.else183
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end199

if.then186:                                       ; preds = %if.else183
  %169 = ptrtoint ptr %sa_index17 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %sa_index17, align 2
  %conv188 = zext i16 %170 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 12387, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.qla28xx_sa_update_iocb_entry, i32 noundef %conv188, i32 noundef %conv16) #12
  %171 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %fcport, align 4
  %173 = ptrtoint ptr %sa_index17 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %sa_index17, align 2
  %175 = tail call i16 @llvm.bswap.i16(i16 %174)
  tail call fastcc void @qla_edif_sadb_delete_sa_index(ptr noundef %172, i16 noundef zeroext %11, i16 noundef zeroext %175)
  %176 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %u, align 4
  %178 = and i16 %177, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 10240, i16 %178)
  %switch = icmp eq i16 %178, 10240
  br i1 %switch, label %sw.bb195, label %if.then186.if.end199_crit_edge

if.then186.if.end199_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end199

sw.bb195:                                         ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #14
  %179 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %fcport, align 4
  tail call void @qlt_schedule_sess_for_deletion(ptr noundef %180) #12
  br label %if.end199

if.end199:                                        ; preds = %sw.bb195, %if.then186.if.end199_crit_edge, %if.else183.if.end199_crit_edge, %if.end176
  %done = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 24
  %181 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %done, align 4
  tail call void %182(ptr noundef nonnull %call, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end199, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla2x00_get_sp_from_handle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlt_schedule_sess_for_deletion(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla28xx_start_scsi_edif(ptr noundef %sp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %qpair = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 14
  %4 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qpair, align 8
  %req2 = getelementptr inbounds %struct.qla_qpair, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req2, align 4
  %qp_lock_ptr = getelementptr inbounds %struct.qla_qpair, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %qp_lock_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qp_lock_ptr, align 4
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %10 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %u, align 8
  %marker_needed = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %marker_needed to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %marker_needed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.not = icmp eq i8 %13, 0
  br i1 %cmp.not, label %entry.do.body12_crit_edge, label %if.then

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

if.then:                                          ; preds = %entry
  %call = tail call i32 @qla2x00_marker(ptr noundef %1, ptr noundef %5, i16 noundef zeroext 0, i64 noundef 0, i8 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7.not = icmp eq i32 %call, 0
  br i1 %cmp7.not, label %if.end, label %if.then9

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %1, i32 noundef 12300, ptr noundef nonnull @.str.77, ptr noundef %11) #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %marker_needed to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %marker_needed, align 4
  br label %do.body12

do.body12:                                        ; preds = %if.end, %entry.do.body12_crit_edge
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #12
  %current_outstanding_cmd = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 17
  %15 = ptrtoint ptr %current_outstanding_cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %current_outstanding_cmd, align 4
  %num_outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 18
  %17 = ptrtoint ptr %num_outstanding_cmds to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_outstanding_cmds, align 4
  %conv19 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %18)
  %cmp20552 = icmp ugt i16 %18, 1
  br i1 %cmp20552, label %for.body.lr.ph, label %do.body12.for.end_crit_edge

do.body12.for.end_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body12
  %outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 16
  %19 = ptrtoint ptr %outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %outstanding_cmds, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %handle.0554 = phi i32 [ %16, %for.body.lr.ph ], [ %spec.store.select, %for.inc.for.body_crit_edge ]
  %index.0553 = phi i32 [ 1, %for.body.lr.ph ], [ %inc30, %for.inc.for.body_crit_edge ]
  %inc = add i32 %handle.0554, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv19)
  %cmp24 = icmp eq i32 %inc, %conv19
  %spec.store.select = select i1 %cmp24, i32 1, i32 %inc
  %arrayidx = getelementptr ptr, ptr %20, i32 %spec.store.select
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc30 = add nuw nsw i32 %index.0553, 1
  %exitcond.not = icmp eq i32 %inc30, %conv19
  br i1 %exitcond.not, label %for.inc.if.end324_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end324_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end324

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body12.for.end_crit_edge
  %index.0.lcssa = phi i32 [ 1, %do.body12.for.end_crit_edge ], [ %index.0553, %for.body.for.end_crit_edge ]
  %handle.1 = phi i32 [ %16, %do.body12.for.end_crit_edge ], [ %spec.store.select, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.lcssa, i32 %conv19)
  %cmp33 = icmp eq i32 %index.0.lcssa, %conv19
  br i1 %cmp33, label %for.end.if.end324_crit_edge, label %if.end36

for.end.if.end324_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end324

if.end36:                                         ; preds = %for.end
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 17, i32 0, i32 1
  %23 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool38.not = icmp eq i32 %24, 0
  br i1 %tobool38.not, label %if.end36.qla24xx_calc_iocbs.exit_crit_edge, label %if.then39

if.end36.qla24xx_calc_iocbs.exit_crit_edge:       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla24xx_calc_iocbs.exit

if.then39:                                        ; preds = %if.end36
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 17
  %27 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdb.i, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 15
  %29 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sc_data_direction, align 4
  %call42 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %28, i32 noundef %24, i32 noundef %30, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then39.if.end324_crit_edge, label %if.end49, !prof !442

if.then39.if.end324_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end324

if.end49:                                         ; preds = %if.then39
  %conv50 = trunc i32 %call42 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv50)
  %cmp.i = icmp ugt i16 %conv50, 1
  br i1 %cmp.i, label %if.then.i, label %if.end49.qla24xx_calc_iocbs.exit_crit_edge

if.end49.qla24xx_calc_iocbs.exit_crit_edge:       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla24xx_calc_iocbs.exit

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i16 %conv50, -1
  %sub.i.frozen = freeze i16 %sub.i
  %div12.i = udiv i16 %sub.i.frozen, 5
  %31 = mul i16 %div12.i, 5
  %rem34.i.decomposed = sub i16 %sub.i.frozen, %31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem34.i.decomposed)
  %tobool.not.i = icmp eq i16 %rem34.i.decomposed, 0
  %spec.select.v.i = select i1 %tobool.not.i, i16 1, i16 2
  %spec.select.i = add nuw nsw i16 %spec.select.v.i, %div12.i
  br label %qla24xx_calc_iocbs.exit

qla24xx_calc_iocbs.exit:                          ; preds = %if.then.i, %if.end49.qla24xx_calc_iocbs.exit_crit_edge, %if.end36.qla24xx_calc_iocbs.exit_crit_edge
  %conv50547 = phi i16 [ %conv50, %if.end49.qla24xx_calc_iocbs.exit_crit_edge ], [ %conv50, %if.then.i ], [ 0, %if.end36.qla24xx_calc_iocbs.exit_crit_edge ]
  %nseg.0546 = phi i32 [ %call42, %if.end49.qla24xx_calc_iocbs.exit_crit_edge ], [ %call42, %if.then.i ], [ 0, %if.end36.qla24xx_calc_iocbs.exit_crit_edge ]
  %iocbs.0.i = phi i16 [ 1, %if.end49.qla24xx_calc_iocbs.exit_crit_edge ], [ %spec.select.i, %if.then.i ], [ 1, %if.end36.qla24xx_calc_iocbs.exit_crit_edge ]
  %cnt52 = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 8
  %32 = ptrtoint ptr %cnt52 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cnt52, align 4
  %conv53 = zext i16 %33 to i32
  %34 = zext i16 %iocbs.0.i to i32
  %add = add nuw nsw i32 %34, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv53)
  %cmp55 = icmp ugt i32 %add, %conv53
  br i1 %cmp55, label %if.then57, label %qla24xx_calc_iocbs.exit.if.end110_crit_edge

qla24xx_calc_iocbs.exit.if.end110_crit_edge:      ; preds = %qla24xx_calc_iocbs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.then57:                                        ; preds = %qla24xx_calc_iocbs.exit
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %35 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %isp_type, align 8
  %37 = and i32 %36, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %out_ptr = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 7
  %39 = ptrtoint ptr %out_ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %out_ptr, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %40, align 2
  %conv79 = zext i16 %42 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %req_q_out = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 4
  %43 = ptrtoint ptr %req_q_out to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %req_q_out, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #12, !srcloc !443
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !444
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv79, %cond.true ], [ %46, %cond.false ]
  %ring_index = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 5
  %47 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ring_index, align 4
  %conv82 = zext i16 %48 to i32
  %conv83 = and i32 %cond, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv83, i32 %conv82)
  %cmp84 = icmp ugt i32 %conv83, %conv82
  br i1 %cmp84, label %if.then86, label %if.else92

if.then86:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %49 = trunc i32 %cond to i16
  %conv90 = sub i16 %49, %48
  br label %if.end101

if.else92:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %length = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 9
  %50 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %length, align 2
  %52 = trunc i32 %cond to i16
  %53 = sub i16 %52, %48
  %conv99 = add i16 %53, %51
  br label %if.end101

if.end101:                                        ; preds = %if.else92, %if.then86
  %storemerge531 = phi i16 [ %conv99, %if.else92 ], [ %conv90, %if.then86 ]
  %54 = ptrtoint ptr %cnt52 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %storemerge531, ptr %cnt52, align 4
  %conv103 = zext i16 %storemerge531 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv103)
  %cmp106 = icmp ugt i32 %add, %conv103
  br i1 %cmp106, label %if.end101.queuing_error_crit_edge, label %if.end101.if.end110_crit_edge

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.end101.queuing_error_crit_edge:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %queuing_error

if.end110:                                        ; preds = %if.end101.if.end110_crit_edge, %qla24xx_calc_iocbs.exit.if.end110_crit_edge
  %ctx_mempool = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 241
  %55 = ptrtoint ptr %ctx_mempool to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctx_mempool, align 8
  %call111 = tail call noalias ptr @mempool_alloc(ptr noundef %56, i32 noundef 2592) #12
  %ct6_ctx = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %57 = ptrtoint ptr %ct6_ctx to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call111, ptr %ct6_ctx, align 8
  %tobool113.not = icmp eq ptr %call111, null
  br i1 %tobool113.not, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %1, i32 noundef 12304, ptr noundef nonnull @.str.78, ptr noundef %11) #12
  br label %queuing_error

if.end115:                                        ; preds = %if.end110
  %58 = call ptr @memset(ptr %call111, i32 0, i32 24)
  %fcp_cmnd_dma_pool = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 240
  %59 = ptrtoint ptr %fcp_cmnd_dma_pool to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fcp_cmnd_dma_pool, align 4
  %fcp_cmnd_dma = getelementptr inbounds %struct.ct6_dsd, ptr %call111, i32 0, i32 1
  %call.i = tail call ptr @dma_pool_alloc(ptr noundef %60, i32 noundef 2848, ptr noundef %fcp_cmnd_dma) #12
  %fcp_cmnd = getelementptr inbounds %struct.ct6_dsd, ptr %call111, i32 0, i32 2
  %61 = ptrtoint ptr %fcp_cmnd to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i, ptr %fcp_cmnd, align 4
  %tobool118.not = icmp eq ptr %call.i, null
  br i1 %tobool118.not, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %1, i32 noundef 12305, ptr noundef nonnull @.str.79, ptr noundef %11) #12
  br label %queuing_error

if.end120:                                        ; preds = %if.end115
  %dsd_list = getelementptr inbounds %struct.ct6_dsd, ptr %call111, i32 0, i32 4
  %62 = ptrtoint ptr %dsd_list to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %dsd_list, ptr %dsd_list, align 4
  %prev.i = getelementptr inbounds %struct.ct6_dsd, ptr %call111, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %dsd_list, ptr %prev.i, align 4
  %dsd_use_cnt = getelementptr inbounds %struct.ct6_dsd, ptr %call111, i32 0, i32 3
  %64 = ptrtoint ptr %dsd_use_cnt to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %dsd_use_cnt, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 14
  %65 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %cmd_len, align 4
  %conv121 = zext i16 %66 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %66)
  %cmp122 = icmp ugt i16 %66, 16
  br i1 %cmp122, label %if.then124, label %if.end120.if.end144_crit_edge

if.end120.if.end144_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

if.then124:                                       ; preds = %if.end120
  %rem = and i32 %conv121, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp131.not = icmp eq i32 %rem, 0
  br i1 %cmp131.not, label %if.end136, label %if.then133

if.then133:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %1, i32 noundef 12306, ptr noundef nonnull @.str.80, i32 noundef %conv121, ptr noundef %11) #12
  %67 = ptrtoint ptr %fcp_cmnd_dma_pool to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fcp_cmnd_dma_pool, align 4
  %69 = ptrtoint ptr %fcp_cmnd to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fcp_cmnd, align 4
  %71 = ptrtoint ptr %fcp_cmnd_dma to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fcp_cmnd_dma, align 4
  tail call void @dma_pool_free(ptr noundef %68, ptr noundef %70, i32 noundef %72) #12
  br label %queuing_error

if.end136:                                        ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #14
  %73 = trunc i16 %66 to i8
  %conv128 = add i8 %73, -16
  %add140 = add i16 %66, 16
  br label %if.end144

if.end144:                                        ; preds = %if.end136, %if.end120.if.end144_crit_edge
  %storemerge = phi i16 [ %add140, %if.end136 ], [ 32, %if.end120.if.end144_crit_edge ]
  %additional_cdb_len.0 = phi i8 [ %conv128, %if.end136 ], [ 0, %if.end120.if.end144_crit_edge ]
  %74 = ptrtoint ptr %call111 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %storemerge, ptr %call111, align 4
  %ring_ptr = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 2
  %75 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ring_ptr, align 4
  %id = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 12
  %77 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %id, align 4
  %conv.i = zext i16 %78 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv1.i = and i32 %handle.1, 65535
  %or.i = or i32 %shl.i, %conv1.i
  %handle147 = getelementptr inbounds %struct.cmd_type_6, ptr %76, i32 0, i32 4
  %79 = ptrtoint ptr %handle147 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or.i, ptr %handle147, align 4
  %add.ptr = getelementptr i32, ptr %76, i32 2
  %80 = call ptr @memset(ptr %add.ptr, i32 0, i32 56)
  %81 = tail call i16 @llvm.bswap.i16(i16 %conv50547)
  %dseg_count = getelementptr inbounds %struct.cmd_type_6, ptr %76, i32 0, i32 7
  %82 = ptrtoint ptr %dseg_count to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %dseg_count, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 17, i32 1
  %83 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool149.not = icmp eq i32 %84, 0
  br i1 %tobool149.not, label %if.end144.if.then154_crit_edge, label %lor.lhs.false150

if.end144.if.then154_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then154

lor.lhs.false150:                                 ; preds = %if.end144
  %sc_data_direction151 = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 15
  %85 = ptrtoint ptr %sc_data_direction151 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sc_data_direction151, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %86, label %lor.lhs.false150.if.end186_crit_edge [
    i32 3, label %lor.lhs.false150.if.then154_crit_edge
    i32 1, label %if.then159
    i32 2, label %if.then172
  ]

lor.lhs.false150.if.then154_crit_edge:            ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then154

lor.lhs.false150.if.end186_crit_edge:             ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

if.then154:                                       ; preds = %lor.lhs.false150.if.then154_crit_edge, %if.end144.if.then154_crit_edge
  %byte_count = getelementptr inbounds %struct.cmd_type_6, ptr %76, i32 0, i32 14
  %88 = ptrtoint ptr %byte_count to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %byte_count, align 4
  br label %no_dsds

if.then159:                                       ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #14
  %control_flags = getelementptr inbounds %struct.cmd_type_6, ptr %76, i32 0, i32 10
  %89 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 256, ptr %control_flags, align 4
  %90 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %length.i, align 4
  %conv161 = zext i32 %91 to i64
  %output_bytes = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 58, i32 2
  %92 = ptrtoint ptr %output_bytes to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %output_bytes, align 8
  %add162 = add i64 %93, %conv161
  store i64 %add162, ptr %output_bytes, align 8
  %output_requests = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 58, i32 4
  %94 = ptrtoint ptr %output_requests to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %output_requests, align 8
  %inc164 = add i64 %95, 1
  store i64 %inc164, ptr %output_requests, align 8
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %96 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fcport, align 4
  %tx_bytes = getelementptr inbounds %struct.fc_port, ptr %97, i32 0, i32 72, i32 3
  br label %if.end186.sink.split

if.then172:                                       ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #14
  %control_flags173 = getelementptr inbounds %struct.cmd_type_6, ptr %76, i32 0, i32 10
  %98 = ptrtoint ptr %control_flags173 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 512, ptr %control_flags173, align 4
  %99 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %length.i, align 4
  %conv175 = zext i32 %100 to i64
  %input_bytes = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 58, i32 1
  %101 = ptrtoint ptr %input_bytes to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %input_bytes, align 8
  %add177 = add i64 %102, %conv175
  store i64 %add177, ptr %input_bytes, align 8
  %input_requests = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 58, i32 3
  %103 = ptrtoint ptr %input_requests to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %input_requests, align 8
  %inc179 = add i64 %104, 1
  store i64 %inc179, ptr %input_requests, align 8
  %fcport182 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %105 = ptrtoint ptr %fcport182 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %fcport182, align 4
  %rx_bytes = getelementptr inbounds %struct.fc_port, ptr %106, i32 0, i32 72, i32 4
  br label %if.end186.sink.split

if.end186.sink.split:                             ; preds = %if.then172, %if.then159
  %rx_bytes.sink571 = phi ptr [ %rx_bytes, %if.then172 ], [ %tx_bytes, %if.then159 ]
  %107 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %conv181.sink.in = load i32, ptr %length.i, align 4
  %conv181.sink = zext i32 %conv181.sink.in to i64
  %108 = ptrtoint ptr %rx_bytes.sink571 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %rx_bytes.sink571, align 8
  %add184 = add i64 %109, %conv181.sink
  store i64 %add184, ptr %rx_bytes.sink571, align 8
  br label %if.end186

if.end186:                                        ; preds = %if.end186.sink.split, %lor.lhs.false150.if.end186_crit_edge
  %control_flags187 = getelementptr inbounds %struct.cmd_type_6, ptr %76, i32 0, i32 10
  %110 = ptrtoint ptr %control_flags187 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %control_flags187, align 4
  %112 = and i16 %111, -19
  %113 = or i16 %112, 2
  store i16 %113, ptr %control_flags187, align 4
  %conv196 = and i32 %nseg.0546, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv196)
  %cmp197560.not = icmp eq i32 %conv196, 0
  br i1 %cmp197560.not, label %if.end186.no_dsds_crit_edge, label %for.body199.preheader

if.end186.no_dsds_crit_edge:                      ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_dsds

for.body199.preheader:                            ; preds = %if.end186
  %sdb.i540 = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 17
  %114 = ptrtoint ptr %sdb.i540 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sdb.i540, align 4
  %fcp_dsd = getelementptr inbounds %struct.cmd_type_6, ptr %76, i32 0, i32 17
  br label %for.body199

for.body199:                                      ; preds = %if.end205.for.body199_crit_edge, %for.body199.preheader
  %sg.0564 = phi ptr [ %call210, %if.end205.for.body199_crit_edge ], [ %115, %for.body199.preheader ]
  %avail_dsds.0563 = phi i8 [ %dec, %if.end205.for.body199_crit_edge ], [ 1, %for.body199.preheader ]
  %cur_dsd.0562 = phi ptr [ %incdec.ptr, %if.end205.for.body199_crit_edge ], [ %fcp_dsd, %for.body199.preheader ]
  %i.0561 = phi i32 [ %inc209, %if.end205.for.body199_crit_edge ], [ 0, %for.body199.preheader ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %avail_dsds.0563)
  %cmp201 = icmp eq i8 %avail_dsds.0563, 0
  br i1 %cmp201, label %if.then203, label %for.body199.if.end205_crit_edge

for.body199.if.end205_crit_edge:                  ; preds = %for.body199
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205

if.then203:                                       ; preds = %for.body199
  call void @__sanitizer_cov_trace_pc() #14
  %call204 = tail call ptr @qla2x00_prep_cont_type1_iocb(ptr noundef %1, ptr noundef %7) #12
  %dsd = getelementptr inbounds %struct.cont_a64_entry_t, ptr %call204, i32 0, i32 4
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %for.body199.if.end205_crit_edge
  %cur_dsd.1 = phi ptr [ %dsd, %if.then203 ], [ %cur_dsd.0562, %for.body199.if.end205_crit_edge ]
  %avail_dsds.1 = phi i8 [ 5, %if.then203 ], [ %avail_dsds.0563, %for.body199.if.end205_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0564, i32 0, i32 3
  %116 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dma_address, align 4
  %conv206 = zext i32 %117 to i64
  %118 = tail call i64 @llvm.bswap.i64(i64 %conv206) #12
  %119 = ptrtoint ptr %cur_dsd.1 to i32
  call void @__asan_storeN_noabort(i32 %119, i32 8)
  store i64 %118, ptr %cur_dsd.1, align 1
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0564, i32 0, i32 4
  %120 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dma_length, align 4
  %122 = tail call i32 @llvm.bswap.i32(i32 %121)
  %length207 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.1, i32 0, i32 1
  %123 = ptrtoint ptr %length207 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 %122, ptr %length207, align 1
  %incdec.ptr = getelementptr %struct.dsd64, ptr %cur_dsd.1, i32 1
  %dec = add i8 %avail_dsds.1, -1
  %inc209 = add nuw nsw i32 %i.0561, 1
  %call210 = tail call ptr @sg_next(ptr noundef %sg.0564) #12
  %exitcond565.not = icmp eq i32 %inc209, %conv196
  br i1 %exitcond565.not, label %if.end205.no_dsds_crit_edge, label %if.end205.for.body199_crit_edge

if.end205.for.body199_crit_edge:                  ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body199

if.end205.no_dsds_crit_edge:                      ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_dsds

no_dsds:                                          ; preds = %if.end205.no_dsds_crit_edge, %if.end186.no_dsds_crit_edge, %if.then154
  %fcport212 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %124 = ptrtoint ptr %fcport212 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %fcport212, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %125, i32 0, i32 7
  %126 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %loop_id, align 4
  %128 = tail call i16 @llvm.bswap.i16(i16 %127)
  %129 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %add.ptr, align 4
  %130 = ptrtoint ptr %fcport212 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %fcport212, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %131, i32 0, i32 6
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %132 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %al_pa, align 2
  %port_id = getelementptr inbounds %struct.cmd_type_6, ptr %76, i32 0, i32 15
  %134 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %port_id, align 4
  %135 = load ptr, ptr %fcport212, align 4
  %d_id216 = getelementptr inbounds %struct.fc_port, ptr %135, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id216, i32 0, i32 1
  %136 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %area, align 1
  %arrayidx218 = getelementptr %struct.cmd_type_6, ptr %76, i32 0, i32 15, i32 1
  %138 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %arrayidx218, align 1
  %139 = load ptr, ptr %fcport212, align 4
  %d_id220 = getelementptr inbounds %struct.fc_port, ptr %139, i32 0, i32 6
  %140 = ptrtoint ptr %d_id220 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %d_id220, align 8
  %arrayidx222 = getelementptr %struct.cmd_type_6, ptr %76, i32 0, i32 15, i32 2
  %142 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %arrayidx222, align 2
  %143 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %vha1, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %144, i32 0, i32 46
  %145 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %vp_idx, align 8
  %conv224 = trunc i16 %146 to i8
  %vp_index = getelementptr inbounds %struct.cmd_type_6, ptr %76, i32 0, i32 16
  %147 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv224, ptr %vp_index, align 1
  %148 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 72, ptr %76, align 4
  %conv225 = trunc i16 %iocbs.0.i to i8
  %entry_count = getelementptr inbounds %struct.cmd_type_6, ptr %76, i32 0, i32 1
  %149 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv225, ptr %entry_count, align 1
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 1
  %150 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %151, i32 0, i32 18
  %152 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %lun, align 8
  %lun226 = getelementptr inbounds %struct.cmd_type_6, ptr %76, i32 0, i32 9
  tail call void @int_to_scsilun(i64 noundef %153, ptr noundef %lun226) #12
  %incdec.ptr1.i = getelementptr %struct.cmd_type_6, ptr %76, i32 0, i32 9, i32 0, i32 4
  %154 = ptrtoint ptr %lun226 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %lun226, align 4
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #12
  %157 = ptrtoint ptr %lun226 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %lun226, align 4
  %158 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %incdec.ptr1.i, align 4
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #12
  %161 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %incdec.ptr1.i, align 4
  %162 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %device, align 4
  %lun230 = getelementptr inbounds %struct.scsi_device, ptr %163, i32 0, i32 18
  %164 = ptrtoint ptr %lun230 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %lun230, align 8
  %166 = ptrtoint ptr %fcp_cmnd to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %fcp_cmnd, align 4
  tail call void @int_to_scsilun(i64 noundef %165, ptr noundef %167) #12
  %168 = ptrtoint ptr %fcp_cmnd to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %fcp_cmnd, align 4
  %additional_cdb_len234 = getelementptr inbounds %struct.fcp_cmnd, ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %additional_cdb_len234 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %additional_cdb_len.0, ptr %additional_cdb_len234, align 1
  %sc_data_direction235 = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 15
  %171 = ptrtoint ptr %sc_data_direction235 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %sc_data_direction235, align 4
  %173 = zext i32 %172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %172, label %no_dsds.if.end255_crit_edge [
    i32 1, label %no_dsds.if.end255.sink.split_crit_edge
    i32 2, label %if.then248
  ]

no_dsds.if.end255.sink.split_crit_edge:           ; preds = %no_dsds
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end255.sink.split

no_dsds.if.end255_crit_edge:                      ; preds = %no_dsds
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end255

if.then248:                                       ; preds = %no_dsds
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end255.sink.split

if.end255.sink.split:                             ; preds = %if.then248, %no_dsds.if.end255.sink.split_crit_edge
  %.sink573 = phi i8 [ 2, %if.then248 ], [ 1, %no_dsds.if.end255.sink.split_crit_edge ]
  %174 = ptrtoint ptr %fcp_cmnd to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %fcp_cmnd, align 4
  %additional_cdb_len240 = getelementptr inbounds %struct.fcp_cmnd, ptr %175, i32 0, i32 4
  %176 = ptrtoint ptr %additional_cdb_len240 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %additional_cdb_len240, align 1
  %178 = or i8 %177, %.sink573
  store i8 %178, ptr %additional_cdb_len240, align 1
  br label %if.end255

if.end255:                                        ; preds = %if.end255.sink.split, %no_dsds.if.end255_crit_edge
  %flags256 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 2
  %179 = ptrtoint ptr %flags256 to i32
  call void @__asan_load4_noabort(i32 %179)
  %bf.load = load volatile i32, ptr %flags256, align 8
  %180 = and i32 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool257.not = icmp eq i32 %180, 0
  br i1 %tobool257.not, label %if.end255.if.end265_crit_edge, label %if.then258

if.end255.if.end265_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end265

if.then258:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #14
  %181 = ptrtoint ptr %fcport212 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %fcport212, align 4
  %fcp_prio = getelementptr inbounds %struct.fc_port, ptr %182, i32 0, i32 30
  %183 = ptrtoint ptr %fcp_prio to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %fcp_prio, align 2
  %shl = shl i8 %184, 3
  %185 = ptrtoint ptr %fcp_cmnd to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %fcp_cmnd, align 4
  %task_attribute = getelementptr inbounds %struct.fcp_cmnd, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %task_attribute to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %task_attribute, align 1
  %or263 = or i8 %188, %shl
  store i8 %or263, ptr %task_attribute, align 1
  br label %if.end265

if.end265:                                        ; preds = %if.then258, %if.end255.if.end265_crit_edge
  %189 = ptrtoint ptr %fcp_cmnd to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %fcp_cmnd, align 4
  %cdb = getelementptr inbounds %struct.fcp_cmnd, ptr %190, i32 0, i32 5
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 16
  %191 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cmnd, align 4
  %193 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %cmd_len, align 4
  %conv269 = zext i16 %194 to i32
  %195 = call ptr @memcpy(ptr %cdb, ptr %192, i32 %conv269)
  %196 = load ptr, ptr %fcp_cmnd, align 4
  %add.ptr273 = getelementptr %struct.fcp_cmnd, ptr %196, i32 0, i32 5, i32 16
  %conv274 = zext i8 %additional_cdb_len.0 to i32
  %add.ptr275 = getelementptr i8, ptr %add.ptr273, i32 %conv274
  %197 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %length.i, align 4
  %199 = ptrtoint ptr %add.ptr275 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %add.ptr275, align 4
  %200 = ptrtoint ptr %call111 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %call111, align 4
  %202 = tail call i16 @llvm.bswap.i16(i16 %201)
  %fcp_cmnd_dseg_len = getelementptr inbounds %struct.cmd_type_6, ptr %76, i32 0, i32 11
  %203 = ptrtoint ptr %fcp_cmnd_dseg_len to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %202, ptr %fcp_cmnd_dseg_len, align 2
  %204 = ptrtoint ptr %fcp_cmnd_dma to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %fcp_cmnd_dma, align 4
  %conv279 = zext i32 %205 to i64
  %fcp_cmnd_dseg_address = getelementptr inbounds %struct.cmd_type_6, ptr %76, i32 0, i32 12
  %206 = tail call i64 @llvm.bswap.i64(i64 %conv279) #12
  %207 = ptrtoint ptr %fcp_cmnd_dseg_address to i32
  call void @__asan_storeN_noabort(i32 %207, i32 8)
  store i64 %206, ptr %fcp_cmnd_dseg_address, align 1
  %flags280 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %208 = ptrtoint ptr %flags280 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %flags280, align 4
  %210 = or i16 %209, 4096
  store i16 %210, ptr %flags280, align 4
  %211 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %length.i, align 4
  %213 = tail call i32 @llvm.bswap.i32(i32 %212)
  %byte_count285 = getelementptr inbounds %struct.cmd_type_6, ptr %76, i32 0, i32 14
  %214 = ptrtoint ptr %byte_count285 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %byte_count285, align 4
  %215 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %conv225, ptr %entry_count, align 1
  %entry_status = getelementptr inbounds %struct.cmd_type_6, ptr %76, i32 0, i32 3
  %216 = ptrtoint ptr %entry_status to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %entry_status, align 1
  %217 = ptrtoint ptr %current_outstanding_cmd to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %handle.1, ptr %current_outstanding_cmd, align 4
  %outstanding_cmds289 = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 16
  %218 = ptrtoint ptr %outstanding_cmds289 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %outstanding_cmds289, align 4
  %arrayidx290 = getelementptr ptr, ptr %219, i32 %handle.1
  %220 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %sp, ptr %arrayidx290, align 4
  %handle291 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %221 = ptrtoint ptr %handle291 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %handle.1, ptr %handle291, align 8
  %222 = inttoptr i32 %handle.1 to ptr
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 23
  %223 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %222, ptr %host_scribble, align 4
  %224 = ptrtoint ptr %cnt52 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %cnt52, align 4
  %sub295 = sub i16 %225, %iocbs.0.i
  store i16 %sub295, ptr %cnt52, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !445
  tail call void @arm_heavy_mb() #12
  %ring_index300 = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 5
  %226 = ptrtoint ptr %ring_index300 to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %ring_index300, align 4
  %inc301 = add i16 %227, 1
  store i16 %inc301, ptr %ring_index300, align 4
  %length304 = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 9
  %228 = ptrtoint ptr %length304 to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %length304, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc301, i16 %229)
  %cmp306 = icmp eq i16 %inc301, %229
  br i1 %cmp306, label %if.then308, label %if.else311

if.then308:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #14
  %230 = ptrtoint ptr %ring_index300 to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 0, ptr %ring_index300, align 4
  %ring = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 1
  %231 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %ring, align 4
  br label %if.end314

if.else311:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #14
  %233 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %ring_ptr, align 4
  %incdec.ptr313 = getelementptr %struct.cmd_a64_entry_t, ptr %234, i32 1
  br label %if.end314

if.end314:                                        ; preds = %if.else311, %if.then308
  %storemerge530 = phi ptr [ %incdec.ptr313, %if.else311 ], [ %232, %if.then308 ]
  %235 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %storemerge530, ptr %ring_ptr, align 4
  %236 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %qpair, align 8
  %cmd_cnt = getelementptr inbounds %struct.qla_qpair, ptr %237, i32 0, i32 28
  %238 = ptrtoint ptr %cmd_cnt to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %cmd_cnt, align 8
  %inc316 = add i32 %239, 1
  store i32 %inc316, ptr %cmd_cnt, align 8
  %req_q_in = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 3
  %240 = ptrtoint ptr %req_q_in to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %req_q_in, align 4
  %242 = ptrtoint ptr %ring_index300 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %ring_index300, align 4
  %conv318 = zext i16 %243 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !446
  tail call void @arm_heavy_mb() #12
  %244 = tail call i32 @llvm.bswap.i32(i32 %conv318) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %241, i32 %244) #12, !srcloc !447
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call16) #12
  br label %cleanup

queuing_error:                                    ; preds = %if.then133, %if.then119, %if.then114, %if.end101.queuing_error_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv50547)
  %tobool322.not = icmp eq i16 %conv50547, 0
  br i1 %tobool322.not, label %queuing_error.if.end324_crit_edge, label %if.then323

queuing_error.if.end324_crit_edge:                ; preds = %queuing_error
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end324

if.then323:                                       ; preds = %queuing_error
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_dma_unmap(ptr noundef %11) #12
  br label %if.end324

if.end324:                                        ; preds = %if.then323, %queuing_error.if.end324_crit_edge, %if.then39.if.end324_crit_edge, %for.end.if.end324_crit_edge, %for.inc.if.end324_crit_edge
  %ct6_ctx326 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %245 = ptrtoint ptr %ct6_ctx326 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %ct6_ctx326, align 8
  %tobool327.not = icmp eq ptr %246, null
  br i1 %tobool327.not, label %if.end324.if.end334_crit_edge, label %if.then328

if.end324.if.end334_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end334

if.then328:                                       ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #14
  %ctx_mempool331 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 241
  %247 = ptrtoint ptr %ctx_mempool331 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %ctx_mempool331, align 8
  tail call void @mempool_free(ptr noundef nonnull %246, ptr noundef %248) #12
  %249 = ptrtoint ptr %ct6_ctx326 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr null, ptr %ct6_ctx326, align 8
  br label %if.end334

if.end334:                                        ; preds = %if.then328, %if.end324.if.end334_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call16) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end334, %if.end314, %if.then9
  %retval.0 = phi i32 [ 258, %if.then9 ], [ 258, %if.end334 ], [ 0, %if.end314 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_marker(ptr noundef, ptr noundef, i16 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla2x00_prep_cont_type1_iocb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_edif_list_del(ptr noundef %fcport) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edif_indx_list = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 8
  %indx_list_lock = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %indx_list_lock) #12
  %0 = ptrtoint ptr %edif_indx_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edif_indx_list, align 4
  %cmp13.not31 = icmp eq ptr %1, %edif_indx_list
  br i1 %cmp13.not31, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in32 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %indx_lst.0 = getelementptr i8, ptr %.pn.in32, i32 -72
  %2 = ptrtoint ptr %.pn.in32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in32, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in32) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in32, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in32 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in32, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in32, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in32, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %indx_lst.0) #12
  %cmp13.not = icmp eq ptr %.pn, %edif_indx_list
  br i1 %cmp13.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %indx_list_lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_edif_sadb_release(ptr noundef readonly %ha) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sadb_rx_index_list = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 306
  %0 = ptrtoint ptr %sadb_rx_index_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sadb_rx_index_list, align 8
  %cmp.not61 = icmp eq ptr %1, %sadb_rx_index_list
  br i1 %cmp.not61, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in62 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %entry1.0 = getelementptr i8, ptr %.pn.in62, i32 -24
  %2 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in62, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in62) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in62, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in62, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in62, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in62, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %entry1.0) #12
  %cmp.not = icmp eq ptr %.pn, %sadb_rx_index_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %sadb_tx_index_list = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 305
  %11 = ptrtoint ptr %sadb_tx_index_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sadb_tx_index_list, align 16
  %cmp28.not64 = icmp eq ptr %12, %sadb_tx_index_list
  br i1 %cmp28.not64, label %for.end.for.end38_crit_edge, label %for.end.for.body30_crit_edge

for.end.for.body30_crit_edge:                     ; preds = %for.end
  br label %for.body30

for.end.for.end38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end38

for.body30:                                       ; preds = %list_del.exit60.for.body30_crit_edge, %for.end.for.body30_crit_edge
  %.pn52.in65 = phi ptr [ %.pn52, %list_del.exit60.for.body30_crit_edge ], [ %12, %for.end.for.body30_crit_edge ]
  %entry1.1 = getelementptr i8, ptr %.pn52.in65, i32 -24
  %13 = ptrtoint ptr %.pn52.in65 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn52 = load ptr, ptr %.pn52.in65, align 4
  %call.i.i55 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn52.in65) #12
  br i1 %call.i.i55, label %if.end.i.i58, label %for.body30.list_del.exit60_crit_edge

for.body30.list_del.exit60_crit_edge:             ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit60

if.end.i.i58:                                     ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i56 = getelementptr inbounds %struct.list_head, ptr %.pn52.in65, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i56 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i56, align 4
  %16 = ptrtoint ptr %.pn52.in65 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn52.in65, align 4
  %prev1.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i57, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit60

list_del.exit60:                                  ; preds = %if.end.i.i58, %for.body30.list_del.exit60_crit_edge
  %20 = ptrtoint ptr %.pn52.in65 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn52.in65, align 4
  %prev.i59 = getelementptr inbounds %struct.list_head, ptr %.pn52.in65, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i59, align 4
  tail call void @kfree(ptr noundef %entry1.1) #12
  %cmp28.not = icmp eq ptr %.pn52, %sadb_tx_index_list
  br i1 %cmp28.not, label %list_del.exit60.for.end38_crit_edge, label %list_del.exit60.for.body30_crit_edge

list_del.exit60.for.body30_crit_edge:             ; preds = %list_del.exit60
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body30

list_del.exit60.for.end38_crit_edge:              ; preds = %list_del.exit60
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end38

for.end38:                                        ; preds = %list_del.exit60.for.end38_crit_edge, %for.end.for.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla_edif_sadb_build_free_pool(ptr nocapture noundef %ha) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #15
  %edif_tx_sa_id_map = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 303
  %1 = ptrtoint ptr %edif_tx_sa_id_map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %edif_tx_sa_id_map, align 128
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.return.sink.split_crit_edge, label %if.end

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #15
  %edif_rx_sa_id_map = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 302
  %3 = ptrtoint ptr %edif_rx_sa_id_map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i17, ptr %edif_rx_sa_id_map, align 4
  %tobool4.not = icmp eq ptr %call7.i.i.i17, null
  br i1 %tobool4.not, label %if.then5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %edif_tx_sa_id_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edif_tx_sa_id_map, align 128
  tail call void @kfree(ptr noundef %5) #12
  %6 = ptrtoint ptr %edif_tx_sa_id_map to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %edif_tx_sa_id_map, align 128
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then5, %entry.return.sink.split_crit_edge
  %.str.82.sink = phi ptr [ @.str.82, %if.then5 ], [ @.str.81, %entry.return.sink.split_crit_edge ]
  %7 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ha, align 128
  tail call void (i32, ptr, i32, ptr, ...) @ql_log_pci(i32 noundef 0, ptr noundef %8, i32 noundef 9, ptr noundef nonnull %.str.82.sink) #12
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ -12, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log_pci(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_edif_sadb_release_free_pool(ptr nocapture noundef %ha) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edif_tx_sa_id_map = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 303
  %0 = ptrtoint ptr %edif_tx_sa_id_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edif_tx_sa_id_map, align 128
  tail call void @kfree(ptr noundef %1) #12
  %2 = ptrtoint ptr %edif_tx_sa_id_map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %edif_tx_sa_id_map, align 128
  %edif_rx_sa_id_map = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 302
  %3 = ptrtoint ptr %edif_rx_sa_id_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %edif_rx_sa_id_map, align 4
  tail call void @kfree(ptr noundef %4) #12
  %5 = ptrtoint ptr %edif_rx_sa_id_map to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %edif_rx_sa_id_map, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_chk_edif_rx_sa_delete_pending(ptr noundef %vha, ptr nocapture noundef readonly %sp, ptr nocapture noundef readonly %sts24) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %handle3 = getelementptr inbounds %struct.sts_entry_24xx, ptr %sts24, i32 0, i32 4
  %4 = ptrtoint ptr %handle3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle3, align 4
  %conv4 = and i32 %5, 65535
  %fcport1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %6 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcport1, align 4
  %8 = getelementptr inbounds %struct.sts_entry_24xx, ptr %sts24, i32 0, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 8
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call fastcc void @__chk_edif_rx_sa_delete_pending(ptr noundef %vha, ptr noundef %7, i32 noundef %conv4, i16 noundef zeroext %11)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__chk_edif_rx_sa_delete_pending(ptr noundef %vha, ptr noundef %fcport, i32 noundef %handle, i16 noundef zeroext %sa_index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 7
  %0 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %loop_id, align 4
  %indx_list_lock = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %indx_list_lock) #12
  %edif_indx_list.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.in.i = phi ptr [ %edif_indx_list.i, %entry ], [ %.pn.in.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.in.i, %edif_indx_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %entry1.0.i = getelementptr i8, ptr %.pn.in.i, i32 -72
  %3 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %entry1.0.i, align 4
  %cmp10.i = icmp eq i16 %4, %1
  br i1 %cmp10.i, label %qla_edif_list_find_sa_index.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

qla_edif_list_find_sa_index.exit:                 ; preds = %for.body.i
  %entry1.0.i.le = getelementptr i8, ptr %.pn.in.i, i32 -72
  %tobool.not = icmp eq ptr %entry1.0.i.le, null
  br i1 %tobool.not, label %qla_edif_list_find_sa_index.exit.if.then_crit_edge, label %if.end

qla_edif_list_find_sa_index.exit.if.then_crit_edge: ; preds = %qla_edif_list_find_sa_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %qla_edif_list_find_sa_index.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %indx_list_lock, i32 noundef %call2) #12
  br label %cleanup

if.end:                                           ; preds = %qla_edif_list_find_sa_index.exit
  %delete_sa_index8 = getelementptr i8, ptr %.pn.in.i, i32 -64
  %5 = ptrtoint ptr %delete_sa_index8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delete_sa_index8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %6)
  %cmp9 = icmp eq i32 %6, 65535
  br i1 %cmp9, label %if.end.if.then14_crit_edge, label %lor.lhs.false

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end
  %update_sa_index = getelementptr i8, ptr %.pn.in.i, i32 -68
  %7 = ptrtoint ptr %update_sa_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %update_sa_index, align 4
  %conv11 = zext i16 %sa_index to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv11)
  %cmp12.not = icmp eq i32 %8, %conv11
  br i1 %cmp12.not, label %if.end17, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.end.if.then14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %indx_list_lock, i32 noundef %call2) #12
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  %count = getelementptr i8, ptr %.pn.in.i, i32 -60
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp18 = icmp ult i32 %10, 3
  br i1 %cmp18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %indx_list_lock, i32 noundef %call2) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 20531, ptr noundef nonnull @.str.161, ptr noundef nonnull @__func__.__chk_edif_rx_sa_delete_pending, i32 noundef %8, i32 noundef %8, i32 noundef %6) #12
  %11 = ptrtoint ptr %delete_sa_index8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delete_sa_index8, align 4
  store i32 65535, ptr %delete_sa_index8, align 4
  %13 = ptrtoint ptr %entry1.0.i.le to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %entry1.0.i.le, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %indx_list_lock, i32 noundef %call2) #12
  %conv33 = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %14)
  %cmp35.not = icmp eq i16 %1, %14
  br i1 %cmp35.not, label %if.end23.if.end40_crit_edge, label %if.then37

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then37:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %conv34 = zext i16 %14 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 12387, ptr noundef nonnull @.str.162, ptr noundef nonnull @__func__.__chk_edif_rx_sa_delete_pending, i32 noundef %conv33, i32 noundef %conv34) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end23.if.end40_crit_edge
  %conv41 = and i32 %12, 65535
  %rx_sa_list.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 72, i32 11
  %15 = ptrtoint ptr %rx_sa_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_sa_list.i, align 4
  %cmp8.not29.i = icmp eq ptr %16, %rx_sa_list.i
  br i1 %cmp8.not29.i, label %if.end40.if.else_crit_edge, label %for.body.i97.preheader

if.end40.if.else_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

for.body.i97.preheader:                           ; preds = %if.end40
  %17 = trunc i32 %12 to i16
  br label %for.body.i97

for.body.i97:                                     ; preds = %for.inc.i.for.body.i97_crit_edge, %for.body.i97.preheader
  %sa_ctl.030.i = phi ptr [ %tsa_ctl.031.i, %for.inc.i.for.body.i97_crit_edge ], [ %16, %for.body.i97.preheader ]
  %18 = ptrtoint ptr %sa_ctl.030.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %tsa_ctl.031.i = load ptr, ptr %sa_ctl.030.i, align 4
  %state.i = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 5
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %for.body.i97.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i97.for.inc.i_crit_edge:                 ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i97
  %index9.i = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 2
  %22 = ptrtoint ptr %index9.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %index9.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %17)
  %cmp10.i98 = icmp eq i16 %23, %17
  br i1 %cmp10.i98, label %qla_edif_find_sa_ctl_by_index.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i97.for.inc.i_crit_edge
  %cmp8.not.i = icmp eq ptr %tsa_ctl.031.i, %rx_sa_list.i
  br i1 %cmp8.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i97_crit_edge

for.inc.i.for.body.i97_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i97

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

qla_edif_find_sa_ctl_by_index.exit:               ; preds = %land.lhs.true.i
  %tobool43.not = icmp eq ptr %sa_ctl.030.i, null
  br i1 %tobool43.not, label %qla_edif_find_sa_ctl_by_index.exit.if.else_crit_edge, label %if.then44

qla_edif_find_sa_ctl_by_index.exit.if.else_crit_edge: ; preds = %qla_edif_find_sa_ctl_by_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then44:                                        ; preds = %qla_edif_find_sa_ctl_by_index.exit
  %state.i.le = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 5
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 12387, ptr noundef nonnull @.str.163, ptr noundef nonnull @__func__.__chk_edif_rx_sa_delete_pending, ptr noundef nonnull %sa_ctl.030.i, i32 noundef %8) #12
  %24 = ptrtoint ptr %update_sa_index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %update_sa_index, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 12387, ptr noundef nonnull @.str.164, i32 noundef %conv41, i32 noundef %25, i32 noundef %conv33, i32 noundef %handle) #12
  %flags49 = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 4
  %26 = ptrtoint ptr %flags49 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2, ptr %flags49, align 2
  tail call void @_set_bit(i32 noundef 3, ptr noundef %state.i.le) #12
  %vha50 = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 1
  %27 = ptrtoint ptr %vha50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vha50, align 8
  %call.i = tail call ptr @qla2x00_alloc_work(ptr noundef %28, i32 noundef 26) #12
  %tobool.not.i100 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i100, label %if.then44.cleanup_crit_edge, label %if.end.i

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %u.i = getelementptr inbounds %struct.qla_work_evt, ptr %call.i, i32 0, i32 3
  %fcport1.i = getelementptr inbounds %struct.qla_work_evt, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %29 = ptrtoint ptr %fcport1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %fcport, ptr %fcport1.i, align 4
  %30 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %sa_ctl.030.i, ptr %u.i, align 4
  %nport_handle5.i = getelementptr inbounds %struct.qla_work_evt, ptr %call.i, i32 0, i32 3, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %nport_handle5.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %1, ptr %nport_handle5.i, align 4
  %flags.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 35
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %33, 32
  store i32 %or.i, ptr %flags.i, align 8
  %call6.i = tail call i32 @qla2x00_post_work(ptr noundef %28, ptr noundef nonnull %call.i) #12
  br label %cleanup

if.else:                                          ; preds = %qla_edif_find_sa_ctl_by_index.exit.if.else_crit_edge, %for.inc.i.if.else_crit_edge, %if.end40.if.else_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 12387, ptr noundef nonnull @.str.165, ptr noundef nonnull @__func__.__chk_edif_rx_sa_delete_pending, i32 noundef %conv41) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.i, %if.then44.cleanup_crit_edge, %if.then20, %if.then14, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlt_chk_edif_rx_sa_delete_pending(ptr noundef %vha, ptr noundef %fcport, ptr nocapture noundef readonly %pkt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.ctio7_from_24xx, ptr %pkt, i32 0, i32 4
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %handle, align 1
  %edif_sa_index = getelementptr inbounds %struct.ctio7_from_24xx, ptr %pkt, i32 0, i32 11
  %2 = ptrtoint ptr %edif_sa_index to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %edif_sa_index, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call fastcc void @__chk_edif_rx_sa_delete_pending(ptr noundef %vha, ptr noundef %fcport, i32 noundef %1, i16 noundef zeroext %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla_edif_process_els(ptr noundef %vha, ptr noundef %bsg_job) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %request = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 3
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request, align 4
  %reply = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %2 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reply, align 4
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %rqst_data = getelementptr inbounds %struct.fc_bsg_request, ptr %1, i32 0, i32 1
  %port_id = getelementptr inbounds %struct.fc_bsg_host_els, ptr %rqst_data, i32 0, i32 1
  %arrayidx = getelementptr %struct.fc_bsg_host_els, ptr %rqst_data, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr %struct.fc_bsg_host_els, ptr %rqst_data, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %10 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_id, align 1
  %vp_fcports.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %12 = ptrtoint ptr %vp_fcports.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vp_fcports.i, align 8
  %cmp.not36.i = icmp eq ptr %13, %vp_fcports.i
  %.pre = zext i8 %7 to i32
  %.pre249 = zext i8 %9 to i32
  %.pre250 = zext i8 %11 to i32
  br i1 %cmp.not36.i, label %entry.if.then_crit_edge, label %for.body.i.preheader

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.body.i.preheader:                             ; preds = %entry
  %14 = shl nuw i32 %.pre250, 24
  %15 = shl nuw nsw i32 %.pre249, 16
  %16 = shl nuw nsw i32 %.pre, 8
  %17 = or i32 %15, %16
  %d_id.sroa.0.0.insert.shift202 = or i32 %17, %14
  %bf.lshr9.i = lshr exact i32 %d_id.sroa.0.0.insert.shift202, 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %f.037.i = phi ptr [ %tf.038.i, %for.inc.i.for.body.i_crit_edge ], [ %13, %for.body.i.preheader ]
  %18 = ptrtoint ptr %f.037.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %tf.038.i = load ptr, ptr %f.037.i, align 8
  %flags.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 35
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %node_name.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 4
  %port_name.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 5
  %d_id.i = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 6
  %21 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load.i = load i32, ptr %d_id.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %vha, i32 noundef 8280, ptr noundef nonnull @.str.1, ptr noundef %node_name.i, ptr noundef %port_name.i, i32 noundef %bf.lshr.i, i32 noundef %bf.lshr9.i) #12
  %22 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load11.i = load i32, ptr %d_id.i, align 8
  %cmp15.unshifted.i = xor i32 %bf.load11.i, %d_id.sroa.0.0.insert.shift202
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp15.unshifted.i)
  %cmp15.i = icmp ult i32 %cmp15.unshifted.i, 256
  br i1 %cmp15.i, label %qla2x00_find_fcport_by_pid.exit, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tf.038.i, %vp_fcports.i
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

qla2x00_find_fcport_by_pid.exit:                  ; preds = %if.then.i
  %tobool.not = icmp eq ptr %f.037.i, null
  br i1 %tobool.not, label %qla2x00_find_fcport_by_pid.exit.if.then_crit_edge, label %if.end

qla2x00_find_fcport_by_pid.exit.if.then_crit_edge: ; preds = %qla2x00_find_fcport_by_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %qla2x00_find_fcport_by_pid.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %23 = shl nuw nsw i32 %.pre250, 16
  %24 = shl nuw nsw i32 %.pre249, 8
  %25 = or i32 %24, %.pre
  %d_id.sroa.0.0.insert.shift = or i32 %25, %23
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37146, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.qla_edif_process_els, i32 noundef %d_id.sroa.0.0.insert.shift) #12
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 458752, ptr %3, align 4
  br label %cleanup

if.end:                                           ; preds = %qla2x00_find_fcport_by_pid.exit
  %27 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reply, align 4
  %29 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %request, align 4
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  %flags.i190 = getelementptr inbounds %struct.qla_hw_data, ptr %32, i32 0, i32 2
  %33 = getelementptr inbounds i32, ptr %flags.i190, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load.i191 = load volatile i32, ptr %33, align 4
  %35 = and i32 %bf.load.i191, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i192 = icmp eq i32 %35, 0
  br i1 %tobool.not.i192, label %if.then.i193, label %if.end.i

if.then.i193:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37125, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.qla_bsg_check) #12
  br label %qla_bsg_check.exit

if.end.i:                                         ; preds = %if.end
  %e_dbell.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90
  %36 = ptrtoint ptr %e_dbell.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %e_dbell.i, align 8
  %and.i194 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194)
  %tobool1.not.i = icmp eq i32 %and.i194, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37122, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.qla_bsg_check) #12
  br label %qla_bsg_check.exit

if.end3.i:                                        ; preds = %if.end.i
  %e.i = getelementptr inbounds %struct.qla_bsg_auth_els_request, ptr %30, i32 0, i32 1
  %38 = ptrtoint ptr %e.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %e.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp.i = icmp eq i32 %39, 2
  br i1 %cmp.i, label %if.then4.i, label %if.end11

if.then4.i:                                       ; preds = %if.end3.i
  %reply_len.i.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %40 = ptrtoint ptr %reply_len.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 20, ptr %reply_len.i.i, align 4
  %41 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load.i.i = load i32, ptr %d_id.i, align 8
  %pur_lock.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91, i32 1
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pur_lock.i.i.i) #12
  %head.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91, i32 2
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.then4.i
  %list_node.0.in.i.i.i = phi ptr [ %head.i.i.i, %if.then4.i ], [ %list_node.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %42 = ptrtoint ptr %list_node.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %list_node.0.i.i.i = load ptr, ptr %list_node.0.in.i.i.i, align 4
  %cmp14.not.i.i.i = icmp eq ptr %list_node.0.i.i.i, %head.i.i.i
  br i1 %cmp14.not.i.i.i, label %qla_enode_find.exit.thread.i.i, label %for.body.i.i.i

qla_enode_find.exit.thread.i.i:                   ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pur_lock.i.i.i, i32 noundef %call2.i.i.i) #12
  br label %if.then.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %u.i.i.i = getelementptr inbounds %struct.enode, ptr %list_node.0.i.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load.i.i.i = load i32, ptr %u.i.i.i, align 4
  %cmp16.i.unshifted.i.i = xor i32 %bf.load.i.i.i, %bf.load.i.i
  %cmp16.i.i.i = icmp ult i32 %cmp16.i.unshifted.i.i, 256
  br i1 %cmp16.i.i.i, label %if.then.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node.0.i.i.i) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.qla_enode_find.exit.i.i_crit_edge

if.then.i.i.i.qla_enode_find.exit.i.i_crit_edge:  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla_enode_find.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %list_node.0.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %list_node.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %list_node.0.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %qla_enode_find.exit.i.i

qla_enode_find.exit.i.i:                          ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.qla_enode_find.exit.i.i_crit_edge
  %50 = ptrtoint ptr %list_node.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %list_node.0.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %list_node.0.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pur_lock.i.i.i, i32 noundef %call2.i.i.i) #12
  %tobool.not.i.i = icmp eq ptr %list_node.0.i.i.i, null
  br i1 %tobool.not.i.i, label %qla_enode_find.exit.i.i.if.then.i.i_crit_edge, label %if.end.i.i

qla_enode_find.exit.i.i.if.then.i.i_crit_edge:    ; preds = %qla_enode_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %qla_enode_find.exit.i.i.if.then.i.i_crit_edge, %qla_enode_find.exit.thread.i.i
  %52 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load2.i.i = load i32, ptr %d_id.i, align 8
  %bf.lshr3.i.i = lshr i32 %bf.load2.i.i, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37137, ptr noundef nonnull @.str.167, ptr noundef nonnull @__func__.qla_pur_get_pending, ptr noundef %port_name.i, i32 noundef %bf.lshr3.i.i) #12
  %53 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 786432, ptr %28, align 4
  br label %qla_pur_get_pending.exit.i

if.end.i.i:                                       ; preds = %qla_enode_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pur_rx_xchg_address.i.i = getelementptr inbounds %struct.enode, ptr %list_node.0.i.i.i, i32 0, i32 3, i32 0, i32 0, i32 5
  %54 = ptrtoint ptr %pur_rx_xchg_address.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pur_rx_xchg_address.i.i, align 4
  %rx_xchg_address.i.i = getelementptr inbounds %struct.qla_bsg_auth_els_reply, ptr %28, i32 0, i32 1
  %56 = ptrtoint ptr %rx_xchg_address.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %rx_xchg_address.i.i, align 4
  %57 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %28, align 4
  %sg_list.i.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %58 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sg_list.i.i, align 4
  %sg_cnt.i.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %60 = ptrtoint ptr %sg_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sg_cnt.i.i, align 4
  %msgp.i.i = getelementptr inbounds %struct.enode, ptr %list_node.0.i.i.i, i32 0, i32 3, i32 0, i32 1
  %62 = ptrtoint ptr %msgp.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %msgp.i.i, align 4
  %pur_bytes_rcvd.i.i = getelementptr inbounds %struct.enode, ptr %list_node.0.i.i.i, i32 0, i32 3, i32 0, i32 0, i32 3
  %64 = ptrtoint ptr %pur_bytes_rcvd.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %pur_bytes_rcvd.i.i, align 2
  %conv.i.i = sext i16 %65 to i32
  %call8.i.i = tail call i32 @sg_pcopy_from_buffer(ptr noundef %59, i32 noundef %61, ptr noundef %63, i32 noundef %conv.i.i, i32 noundef 0) #12
  %reply_payload_rcv_len.i.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %28, i32 0, i32 1
  %66 = ptrtoint ptr %reply_payload_rcv_len.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call8.i.i, ptr %reply_payload_rcv_len.i.i, align 4
  %ntype.i.i.i = getelementptr inbounds %struct.enode, ptr %list_node.0.i.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %ntype.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %ntype.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %list_node.0.i.i.i) #12
  br label %qla_pur_get_pending.exit.i

qla_pur_get_pending.exit.i:                       ; preds = %if.end.i.i, %if.then.i.i
  %68 = ptrtoint ptr %e.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %e.i, align 1
  %conv.i = trunc i32 %69 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv.i)
  %70 = icmp ult i16 %conv.i, 3
  br i1 %70, label %switch.lookup, label %qla_pur_get_pending.exit.i.sc_to_str.exit.i_crit_edge

qla_pur_get_pending.exit.i.sc_to_str.exit.i_crit_edge: ; preds = %qla_pur_get_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sc_to_str.exit.i

switch.lookup:                                    ; preds = %qla_pur_get_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.cast = and i32 %69, 65535
  %str.i.i = getelementptr %struct.els_sub_cmd, ptr @sc_str, i32 %switch.idx.cast, i32 1
  %71 = ptrtoint ptr %str.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %str.i.i, align 4
  br label %sc_to_str.exit.i

sc_to_str.exit.i:                                 ; preds = %switch.lookup, %qla_pur_get_pending.exit.i.sc_to_str.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %72, %switch.lookup ], [ @.str, %qla_pur_get_pending.exit.i.sc_to_str.exit.i_crit_edge ]
  %73 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %bf.load8.i196 = load i32, ptr %d_id.i, align 8
  %bf.lshr9.i197 = lshr i32 %bf.load8.i196, 8
  %rx_xchg_address.i = getelementptr inbounds %struct.qla_bsg_auth_els_reply, ptr %28, i32 0, i32 1
  %74 = ptrtoint ptr %rx_xchg_address.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_xchg_address.i, align 4
  %reply_payload_rcv_len.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %28, i32 0, i32 1
  %76 = ptrtoint ptr %reply_payload_rcv_len.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %reply_payload_rcv_len.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.166, ptr noundef nonnull @__func__.qla_bsg_check, ptr noundef %retval.0.i.i, ptr noundef %port_name.i, i32 noundef %bf.lshr9.i197, i32 noundef %75, i32 noundef %77, ptr noundef %bsg_job) #12
  br label %qla_bsg_check.exit

qla_bsg_check.exit:                               ; preds = %sc_to_str.exit.i, %if.then2.i, %if.then.i193
  %78 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %28, align 4
  %reply_payload_rcv_len11.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %28, i32 0, i32 1
  %80 = ptrtoint ptr %reply_payload_rcv_len11.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %reply_payload_rcv_len11.i, align 4
  tail call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %79, i32 noundef %81) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end3.i
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %f.037.i, i32 0, i32 7
  %82 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %loop_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %83)
  %cmp = icmp eq i16 %83, 4096
  br i1 %cmp, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %rqst_data to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %rqst_data, align 1
  %conv15 = zext i8 %85 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37133, ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.qla_edif_process_els, i32 noundef %conv15) #12
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 262144, ptr %3, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %87)
  %bf.load18 = load volatile i32, ptr %flags, align 8
  %88 = and i32 %bf.load18, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool20.not = icmp eq i32 %88, 0
  br i1 %tobool20.not, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28677, ptr noundef nonnull @.str.85) #12
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 262144, ptr %3, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 55
  %90 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %device_type, align 4
  %and = and i32 %91, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28673, ptr noundef nonnull @.str.86) #12
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 262144, ptr %3, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %call28 = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef nonnull %f.037.i)
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %bf.load32 = load i32, ptr %d_id.i, align 8
  %bf.lshr33 = lshr i32 %bf.load32, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28676, ptr noundef nonnull @.str.87, i32 noundef %bf.lshr33) #12
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 786432, ptr %3, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  %request_payload = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7
  %95 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %request_payload, align 4
  %remap = getelementptr inbounds %struct.srb, ptr %call28, i32 0, i32 23
  %req = getelementptr inbounds %struct.srb, ptr %call28, i32 0, i32 23, i32 1
  %len = getelementptr inbounds %struct.srb, ptr %call28, i32 0, i32 23, i32 1, i32 2
  %97 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %len, align 4
  %purex_dma_pool = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 300
  %98 = ptrtoint ptr %purex_dma_pool to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %purex_dma_pool, align 4
  %call38 = tail call ptr @dma_pool_alloc(ptr noundef %99, i32 noundef 3264, ptr noundef %req) #12
  %buf = getelementptr inbounds %struct.srb, ptr %call28, i32 0, i32 23, i32 1, i32 1
  %100 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call38, ptr %buf, align 4
  %tobool44.not = icmp eq ptr %call38, null
  br i1 %tobool44.not, label %if.then45, label %if.end49

if.then45:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %request_payload, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28677, ptr noundef nonnull @.str.88, i32 noundef %102) #12
  %103 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 786432, ptr %3, align 4
  br label %done_free_sp

if.end49:                                         ; preds = %if.end35
  %reply_payload = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8
  %104 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %reply_payload, align 4
  %rsp = getelementptr inbounds %struct.srb, ptr %call28, i32 0, i32 23, i32 2
  %len52 = getelementptr inbounds %struct.srb, ptr %call28, i32 0, i32 23, i32 2, i32 2
  %106 = ptrtoint ptr %len52 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %len52, align 8
  %107 = ptrtoint ptr %purex_dma_pool to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %purex_dma_pool, align 4
  %call57 = tail call ptr @dma_pool_alloc(ptr noundef %108, i32 noundef 3264, ptr noundef %rsp) #12
  %buf60 = getelementptr inbounds %struct.srb, ptr %call28, i32 0, i32 23, i32 2, i32 1
  %109 = ptrtoint ptr %buf60 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call57, ptr %buf60, align 4
  %tobool64.not = icmp eq ptr %call57, null
  br i1 %tobool64.not, label %if.then65, label %if.end69

if.then65:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %reply_payload, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28678, ptr noundef nonnull @.str.89, i32 noundef %111) #12
  %112 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 786432, ptr %3, align 4
  br label %done_free_remap_req

if.end69:                                         ; preds = %if.end49
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %113 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %115 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sg_cnt, align 4
  %117 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %buf, align 4
  %119 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %len, align 4
  %call78 = tail call i32 @sg_copy_to_buffer(ptr noundef %114, i32 noundef %116, ptr noundef %118, i32 noundef %120) #12
  %121 = ptrtoint ptr %remap to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %remap, align 8
  %type = getelementptr inbounds %struct.srb, ptr %call28, i32 0, i32 11
  %122 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 26, ptr %type, align 2
  %name = getelementptr inbounds %struct.srb, ptr %call28, i32 0, i32 12
  %123 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @.str.90, ptr %name, align 8
  %u = getelementptr inbounds %struct.srb, ptr %call28, i32 0, i32 22
  %124 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %bsg_job, ptr %u, align 8
  tail call fastcc void @qla_parse_auth_els_ctl(ptr noundef nonnull %call28)
  %free = getelementptr inbounds %struct.srb, ptr %call28, i32 0, i32 25
  %125 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @qla2x00_bsg_sp_free, ptr %free, align 8
  %done = getelementptr inbounds %struct.srb, ptr %call28, i32 0, i32 24
  %126 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @qla2x00_bsg_job_done, ptr %done, align 4
  %call81 = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call28) #12
  %e = getelementptr inbounds %struct.qla_bsg_auth_els_request, ptr %1, i32 0, i32 1
  %127 = ptrtoint ptr %e to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %e, align 1
  %conv82 = trunc i32 %128 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv82)
  %129 = icmp ult i16 %conv82, 3
  br i1 %129, label %switch.lookup255, label %if.end69.sc_to_str.exit_crit_edge

if.end69.sc_to_str.exit_crit_edge:                ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %sc_to_str.exit

switch.lookup255:                                 ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.cast256 = and i32 %128, 65535
  %str.i = getelementptr %struct.els_sub_cmd, ptr @sc_str, i32 %switch.idx.cast256, i32 1
  %130 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %str.i, align 4
  br label %sc_to_str.exit

sc_to_str.exit:                                   ; preds = %switch.lookup255, %if.end69.sc_to_str.exit_crit_edge
  %retval.0.i200 = phi ptr [ %131, %switch.lookup255 ], [ @.str, %if.end69.sc_to_str.exit_crit_edge ]
  %extra_rx_xchg_address = getelementptr inbounds %struct.qla_bsg_auth_els_request, ptr %1, i32 0, i32 1, i32 1
  %132 = ptrtoint ptr %extra_rx_xchg_address to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %extra_rx_xchg_address, align 1
  %extra_control_flags = getelementptr inbounds %struct.qla_bsg_auth_els_request, ptr %1, i32 0, i32 1, i32 2
  %134 = ptrtoint ptr %extra_control_flags to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %extra_control_flags, align 1
  %conv86 = zext i8 %135 to i32
  %handle = getelementptr inbounds %struct.srb, ptr %call28, i32 0, i32 9
  %136 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %handle, align 8
  %138 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 28682, ptr noundef nonnull @.str.91, ptr noundef nonnull @__func__.qla_edif_process_els, ptr noundef %retval.0.i200, ptr noundef %port_name.i, i32 noundef %133, i32 noundef %conv86, i32 noundef %137, i32 noundef %139, ptr noundef %bsg_job) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp90.not = icmp eq i32 %call81, 0
  br i1 %cmp90.not, label %sc_to_str.exit.cleanup_crit_edge, label %if.then92

sc_to_str.exit.cleanup_crit_edge:                 ; preds = %sc_to_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then92:                                        ; preds = %sc_to_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28686, ptr noundef nonnull @.str.92, i32 noundef %call81) #12
  %140 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 786432, ptr %3, align 4
  %141 = ptrtoint ptr %purex_dma_pool to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %purex_dma_pool, align 4
  %143 = ptrtoint ptr %buf60 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %buf60, align 4
  %145 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rsp, align 8
  tail call void @dma_pool_free(ptr noundef %142, ptr noundef %144, i32 noundef %146) #12
  br label %done_free_remap_req

done_free_remap_req:                              ; preds = %if.then92, %if.then65
  %rval.0 = phi i32 [ -5, %if.then92 ], [ -12, %if.then65 ]
  %147 = ptrtoint ptr %purex_dma_pool to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %purex_dma_pool, align 4
  %149 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %buf, align 4
  %151 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %req, align 4
  tail call void @dma_pool_free(ptr noundef %148, ptr noundef %150, i32 noundef %152) #12
  br label %done_free_sp

done_free_sp:                                     ; preds = %done_free_remap_req, %if.then45
  %rval.1 = phi i32 [ %rval.0, %done_free_remap_req ], [ -12, %if.then45 ]
  tail call void @qla2x00_rel_sp(ptr noundef nonnull %call28)
  br label %cleanup

cleanup:                                          ; preds = %done_free_sp, %sc_to_str.exit.cleanup_crit_edge, %if.then30, %if.then25, %if.then21, %if.then13, %qla_bsg_check.exit, %if.then
  %retval.0 = phi i32 [ -6, %if.then13 ], [ -5, %if.then ], [ 0, %qla_bsg_check.exit ], [ 0, %sc_to_str.exit.cleanup_crit_edge ], [ %rval.1, %done_free_sp ], [ -12, %if.then30 ], [ -1, %if.then25 ], [ -5, %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @qla_parse_auth_els_ctl(ptr nocapture noundef %sp) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %u1 = getelementptr inbounds %struct.bsg_cmd, ptr %u, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %request4 = getelementptr inbounds %struct.bsg_job, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %request4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request4, align 4
  %req = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 23, i32 1
  %len = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 23, i32 1, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %tx_byte_count = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %tx_byte_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tx_byte_count, align 4
  %tx_len = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %tx_len, align 4
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %req, align 4
  %tx_addr = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %tx_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tx_addr, align 4
  %rsp = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 23, i32 2
  %len9 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 23, i32 2, i32 2
  %11 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len9, align 8
  %rx_byte_count = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %13 = ptrtoint ptr %rx_byte_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rx_byte_count, align 4
  %rx_len = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %rx_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %rx_len, align 4
  %15 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rsp, align 8
  %rx_addr = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 1, i32 1
  %17 = ptrtoint ptr %rx_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rx_addr, align 4
  %e = getelementptr inbounds %struct.qla_bsg_auth_els_request, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %e to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %e, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %if.then, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then:                                          ; preds = %entry
  %extra_control_flags = getelementptr inbounds %struct.qla_bsg_auth_els_request, ptr %3, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %extra_control_flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %extra_control_flags, align 1
  %conv = zext i8 %21 to i16
  %shl = shl i16 %conv, 13
  %control_flags = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %shl, ptr %control_flags, align 4
  %extra_rx_xchg_address = getelementptr inbounds %struct.qla_bsg_auth_els_request, ptr %3, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %extra_rx_xchg_address to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %extra_rx_xchg_address, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %rx_xchg_address = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %26 = ptrtoint ptr %rx_xchg_address to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rx_xchg_address, align 4
  %27 = ptrtoint ptr %extra_control_flags to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %extra_control_flags, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.183)
  switch i8 %28, label %if.then.if.end30_crit_edge [
    i8 1, label %if.then.if.end30.sink.split_crit_edge
    i8 2, label %if.then27
  ]

if.then.if.end30.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.sink.split

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then27:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.then27, %if.then.if.end30.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.then27 ], [ 2, %if.then.if.end30.sink.split_crit_edge ]
  %30 = ptrtoint ptr %u1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink, ptr %u1, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.then.if.end30_crit_edge, %entry.if.end30_crit_edge
  %did = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %31 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fcport, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %d_id, align 8
  %35 = ptrtoint ptr %did to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %did, align 4
  %rqst_data = getelementptr inbounds %struct.fc_bsg_request, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %rqst_data to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rqst_data, align 1
  %38 = ptrtoint ptr %u1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %u1, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %32, i32 0, i32 7
  %39 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %loop_id, align 4
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %nport_handle = getelementptr inbounds %struct.bsg_cmd, ptr %u, i32 0, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %nport_handle, align 2
  %vha = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %43 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vha, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %44, i32 0, i32 46
  %45 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vp_idx, align 8
  %conv33 = trunc i16 %46 to i8
  %vp_idx34 = getelementptr inbounds %struct.bsg_cmd, ptr %u, i32 0, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %vp_idx34 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv33, ptr %vp_idx34, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_bsg_sp_free(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_edif_sess_down(ptr noundef %vha, ptr noundef %sess) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edif = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 72
  %0 = ptrtoint ptr %edif to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %edif, align 8
  %1 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %e_dbell = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90
  %2 = ptrtoint ptr %e_dbell to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %e_dbell, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %port_name = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 5
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 61596, ptr noundef nonnull @.str.93, ptr noundef nonnull @__func__.qla_edif_sess_down, ptr noundef %port_name) #12
  %4 = ptrtoint ptr %edif to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load3 = load i16, ptr %edif, align 8
  %bf.clear4 = and i16 %bf.load3, -1025
  store i16 %bf.clear4, ptr %edif, align 8
  %d_id = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 6
  %5 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load5 = load i32, ptr %d_id, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 8
  tail call void @qla_edb_eventcreate(ptr noundef %vha, i32 noundef 1, i32 noundef %bf.lshr6, i32 noundef 0, ptr noundef %sess)
  %6 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load8 = load i32, ptr %d_id, align 8
  %bf.lshr9 = lshr i32 %bf.load8, 8
  %call = tail call i32 @qla2x00_post_aen_work(ptr noundef %vha, i32 noundef 513, i32 noundef %bf.lshr9) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_post_aen_work(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_edif_clear_appdata(ptr noundef %vha, ptr nocapture noundef readonly %fcport) local_unnamed_addr #2 align 64 {
entry:
  %enode_list.i = alloca %struct.list_head, align 4
  %edb_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 35
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %d_id = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 6
  %2 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack = load i32, ptr %d_id, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %edb_list.i) #12
  %3 = getelementptr inbounds %struct.list_head, ptr %edb_list.i, i32 0, i32 1
  %4 = ptrtoint ptr %edb_list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %edb_list.i, ptr %edb_list.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %edb_list.i, ptr %3, align 4
  %e_dbell.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90
  %6 = ptrtoint ptr %e_dbell.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %e_dbell.i, align 8
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body1.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37122, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.qla_edb_clear) #12
  br label %qla_edb_clear.exit

do.body1.i:                                       ; preds = %if.end
  %db_lock.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90, i32 1
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %db_lock.i) #12
  %head.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90, i32 2
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %cmp17.not111.i = icmp eq ptr %9, %head.i
  br i1 %cmp17.not111.i, label %do.body1.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.body1.i.for.end.i_crit_edge:                   ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.body1.i
  %bf.lshr25.i = lshr i32 %.unpack, 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %e.0112.i = phi ptr [ %9, %for.body.lr.ph.i ], [ %tmp.0113.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %e.0112.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp.0113.i = load ptr, ptr %e.0112.i, align 4
  %ntype.i = getelementptr inbounds %struct.edb_node, ptr %e.0112.i, i32 0, i32 1
  %11 = ptrtoint ptr %ntype.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ntype.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %12, label %sw.default.i [
    i32 2, label %for.body.i.sw.bb.i_crit_edge
    i32 1, label %for.body.i.sw.bb.i_crit_edge24
    i32 3, label %sw.bb19.i
    i32 4, label %for.body.i.for.inc.i_crit_edge
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.body.i.sw.bb.i_crit_edge24:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %for.body.i.sw.bb.i_crit_edge, %for.body.i.sw.bb.i_crit_edge24
  %u.i = getelementptr inbounds %struct.edb_node, ptr %e.0112.i, i32 0, i32 2
  %14 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 3)
  %sid.sroa.0.0.copyload.i = load i24, ptr %u.i, align 4
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %u20.i = getelementptr inbounds %struct.edb_node, ptr %e.0112.i, i32 0, i32 2
  %15 = ptrtoint ptr %u20.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 3)
  %sid.sroa.0.0.copyload67.i = load i24, ptr %u20.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 37122, ptr noundef nonnull @.str.168, ptr noundef nonnull @__func__.qla_edb_clear, i32 noundef %12) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb19.i, %sw.bb.i
  %sid.sroa.0.1.i = phi i24 [ 0, %sw.default.i ], [ %sid.sroa.0.0.copyload67.i, %sw.bb19.i ], [ %sid.sroa.0.0.copyload.i, %sw.bb.i ]
  %sid.sroa.0.0.insert.ext68.i = zext i24 %sid.sroa.0.1.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr25.i, i32 %sid.sroa.0.0.insert.ext68.i)
  %cmp26.i = icmp eq i32 %bf.lshr25.i, %sid.sroa.0.0.insert.ext68.i
  br i1 %cmp26.i, label %if.then28.i, label %sw.epilog.i.for.inc.i_crit_edge

sw.epilog.i.for.inc.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then28.i:                                      ; preds = %sw.epilog.i
  %16 = ptrtoint ptr %ntype.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ntype.i, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37135, ptr noundef nonnull @.str.169, ptr noundef nonnull @__func__.qla_edb_clear, i32 noundef %17, ptr noundef %e.0112.i) #12
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.0112.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then28.i.list_del_init.exit.i_crit_edge

if.then28.i.list_del_init.exit.i_crit_edge:       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.0112.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %e.0112.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %e.0112.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then28.i.list_del_init.exit.i_crit_edge
  %24 = ptrtoint ptr %e.0112.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %e.0112.i, ptr %e.0112.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %e.0112.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %e.0112.i, ptr %prev.i3.i.i, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %call.i.i102.i = call zeroext i1 @__list_add_valid(ptr noundef %e.0112.i, ptr noundef %27, ptr noundef nonnull %edb_list.i) #12
  br i1 %call.i.i102.i, label %if.end.i.i103.i, label %list_del_init.exit.i.for.inc.i_crit_edge

list_del_init.exit.i.for.inc.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i103.i:                                  ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %e.0112.i, ptr %3, align 4
  %29 = ptrtoint ptr %e.0112.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %edb_list.i, ptr %e.0112.i, align 4
  %30 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev.i3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %e.0112.i, ptr %27, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i103.i, %list_del_init.exit.i.for.inc.i_crit_edge, %sw.epilog.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp17.not.i = icmp eq ptr %tmp.0113.i, %head.i
  br i1 %cmp17.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.body1.i.for.end.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %db_lock.i, i32 noundef %call4.i) #12
  %32 = ptrtoint ptr %edb_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %edb_list.i, align 4
  %cmp51.not114.i = icmp eq ptr %33, %edb_list.i
  br i1 %cmp51.not114.i, label %for.end.i.qla_edb_clear.exit_crit_edge, label %for.end.i.for.body54.i_crit_edge

for.end.i.for.body54.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body54.i

for.end.i.qla_edb_clear.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla_edb_clear.exit

for.body54.i:                                     ; preds = %list_del_init.exit109.i.for.body54.i_crit_edge, %for.end.i.for.body54.i_crit_edge
  %e.1115.i = phi ptr [ %tmp.1.i, %list_del_init.exit109.i.for.body54.i_crit_edge ], [ %33, %for.end.i.for.body54.i_crit_edge ]
  %34 = ptrtoint ptr %e.1115.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %tmp.1.i = load ptr, ptr %e.1115.i, align 4
  %tobool.not.i.i = icmp eq ptr %e.1115.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37154, ptr noundef nonnull @.str.154, ptr noundef nonnull @__func__.qla_edb_node_free) #12
  br label %qla_edb_node_free.exit.i

if.end.i.i:                                       ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #14
  %ntype.i.i = getelementptr inbounds %struct.edb_node, ptr %e.1115.i, i32 0, i32 1
  %35 = ptrtoint ptr %ntype.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %ntype.i.i, align 4
  br label %qla_edb_node_free.exit.i

qla_edb_node_free.exit.i:                         ; preds = %if.end.i.i, %if.then.i.i
  %call.i.i104.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.1115.i) #12
  br i1 %call.i.i104.i, label %if.end.i.i107.i, label %qla_edb_node_free.exit.i.list_del_init.exit109.i_crit_edge

qla_edb_node_free.exit.i.list_del_init.exit109.i_crit_edge: ; preds = %qla_edb_node_free.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit109.i

if.end.i.i107.i:                                  ; preds = %qla_edb_node_free.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i105.i = getelementptr inbounds %struct.list_head, ptr %e.1115.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i105.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i105.i, align 4
  %38 = ptrtoint ptr %e.1115.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %e.1115.i, align 4
  %prev1.i.i.i106.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i106.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i106.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del_init.exit109.i

list_del_init.exit109.i:                          ; preds = %if.end.i.i107.i, %qla_edb_node_free.exit.i.list_del_init.exit109.i_crit_edge
  %42 = ptrtoint ptr %e.1115.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %e.1115.i, ptr %e.1115.i, align 4
  %prev.i3.i108.i = getelementptr inbounds %struct.list_head, ptr %e.1115.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i3.i108.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %e.1115.i, ptr %prev.i3.i108.i, align 4
  call void @kfree(ptr noundef %e.1115.i) #12
  %cmp51.not.i = icmp eq ptr %tmp.1.i, %edb_list.i
  br i1 %cmp51.not.i, label %list_del_init.exit109.i.qla_edb_clear.exit_crit_edge, label %list_del_init.exit109.i.for.body54.i_crit_edge

list_del_init.exit109.i.for.body54.i_crit_edge:   ; preds = %list_del_init.exit109.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body54.i

list_del_init.exit109.i.qla_edb_clear.exit_crit_edge: ; preds = %list_del_init.exit109.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla_edb_clear.exit

qla_edb_clear.exit:                               ; preds = %list_del_init.exit109.i.qla_edb_clear.exit_crit_edge, %for.end.i.qla_edb_clear.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edb_list.i) #12
  %44 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack5 = load i32, ptr %d_id, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %enode_list.i) #12
  %45 = getelementptr inbounds %struct.list_head, ptr %enode_list.i, i32 0, i32 1
  %46 = ptrtoint ptr %enode_list.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %enode_list.i, ptr %enode_list.i, align 4
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %enode_list.i, ptr %45, align 4
  %pur_cinfo.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91
  %48 = ptrtoint ptr %pur_cinfo.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pur_cinfo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.not.i = icmp eq i32 %49, 1
  br i1 %cmp.not.i, label %do.body1.i8, label %if.then.i6

if.then.i6:                                       ; preds = %qla_edb_clear.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37122, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.qla_enode_clear) #12
  br label %qla_enode_clear.exit

do.body1.i8:                                      ; preds = %qla_edb_clear.exit
  %pur_lock.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91, i32 1
  %call5.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pur_lock.i) #12
  %head.i7 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 91, i32 2
  %50 = ptrtoint ptr %head.i7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i7, align 8
  %cmp18.not97.i = icmp eq ptr %51, %head.i7
  br i1 %cmp18.not97.i, label %do.body1.i8.for.end.i19_crit_edge, label %for.body.lr.ph.i9

do.body1.i8.for.end.i19_crit_edge:                ; preds = %do.body1.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i19

for.body.lr.ph.i9:                                ; preds = %do.body1.i8
  %bf.lshr21.i = lshr i32 %.unpack5, 8
  br label %for.body.i11

for.body.i11:                                     ; preds = %for.inc.i18.for.body.i11_crit_edge, %for.body.lr.ph.i9
  %e.098.i = phi ptr [ %51, %for.body.lr.ph.i9 ], [ %tmp.099.i, %for.inc.i18.for.body.i11_crit_edge ]
  %52 = ptrtoint ptr %e.098.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %tmp.099.i = load ptr, ptr %e.098.i, align 4
  %u.i10 = getelementptr inbounds %struct.enode, ptr %e.098.i, i32 0, i32 3
  %53 = ptrtoint ptr %u.i10 to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load.i = load i32, ptr %u.i10, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %bf.lshr21.i)
  %cmp22.i = icmp eq i32 %bf.lshr.i, %bf.lshr21.i
  br i1 %cmp22.i, label %if.then24.i, label %for.body.i11.for.inc.i18_crit_edge

for.body.i11.for.inc.i18_crit_edge:               ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i18

if.then24.i:                                      ; preds = %for.body.i11
  %pur_rx_xchg_address.i = getelementptr inbounds %struct.enode, ptr %e.098.i, i32 0, i32 3, i32 0, i32 0, i32 5
  %54 = ptrtoint ptr %pur_rx_xchg_address.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pur_rx_xchg_address.i, align 4
  %pur_bytes_rcvd.i = getelementptr inbounds %struct.enode, ptr %e.098.i, i32 0, i32 3, i32 0, i32 0, i32 3
  %56 = ptrtoint ptr %pur_bytes_rcvd.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %pur_bytes_rcvd.i, align 2
  %conv29.i = sext i16 %57 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37149, ptr noundef nonnull @.str.170, ptr noundef nonnull @__func__.qla_enode_clear, i32 noundef %bf.lshr21.i, i32 noundef %55, i32 noundef %conv29.i) #12
  %call.i.i.i12 = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.098.i) #12
  br i1 %call.i.i.i12, label %if.end.i.i.i15, label %if.then24.i.list_del_init.exit.i17_crit_edge

if.then24.i.list_del_init.exit.i17_crit_edge:     ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i17

if.end.i.i.i15:                                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i13 = getelementptr inbounds %struct.list_head, ptr %e.098.i, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i.i13, align 4
  %60 = ptrtoint ptr %e.098.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %e.098.i, align 4
  %prev1.i.i.i.i14 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i.i14, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %list_del_init.exit.i17

list_del_init.exit.i17:                           ; preds = %if.end.i.i.i15, %if.then24.i.list_del_init.exit.i17_crit_edge
  %64 = ptrtoint ptr %e.098.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %e.098.i, ptr %e.098.i, align 4
  %prev.i3.i.i16 = getelementptr inbounds %struct.list_head, ptr %e.098.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i3.i.i16 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %e.098.i, ptr %prev.i3.i.i16, align 4
  %66 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %45, align 4
  %call.i.i88.i = call zeroext i1 @__list_add_valid(ptr noundef %e.098.i, ptr noundef %67, ptr noundef nonnull %enode_list.i) #12
  br i1 %call.i.i88.i, label %if.end.i.i89.i, label %list_del_init.exit.i17.for.inc.i18_crit_edge

list_del_init.exit.i17.for.inc.i18_crit_edge:     ; preds = %list_del_init.exit.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i18

if.end.i.i89.i:                                   ; preds = %list_del_init.exit.i17
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %e.098.i, ptr %45, align 4
  %69 = ptrtoint ptr %e.098.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %enode_list.i, ptr %e.098.i, align 4
  %70 = ptrtoint ptr %prev.i3.i.i16 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev.i3.i.i16, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %e.098.i, ptr %67, align 4
  br label %for.inc.i18

for.inc.i18:                                      ; preds = %if.end.i.i89.i, %list_del_init.exit.i17.for.inc.i18_crit_edge, %for.body.i11.for.inc.i18_crit_edge
  %cmp18.not.i = icmp eq ptr %tmp.099.i, %head.i7
  br i1 %cmp18.not.i, label %for.inc.i18.for.end.i19_crit_edge, label %for.inc.i18.for.body.i11_crit_edge

for.inc.i18.for.body.i11_crit_edge:               ; preds = %for.inc.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i11

for.inc.i18.for.end.i19_crit_edge:                ; preds = %for.inc.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i19

for.end.i19:                                      ; preds = %for.inc.i18.for.end.i19_crit_edge, %do.body1.i8.for.end.i19_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pur_lock.i, i32 noundef %call5.i) #12
  %72 = ptrtoint ptr %enode_list.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %enode_list.i, align 4
  %cmp51.not100.i = icmp eq ptr %73, %enode_list.i
  br i1 %cmp51.not100.i, label %for.end.i19.qla_enode_clear.exit_crit_edge, label %for.end.i19.for.body54.i21_crit_edge

for.end.i19.for.body54.i21_crit_edge:             ; preds = %for.end.i19
  br label %for.body54.i21

for.end.i19.qla_enode_clear.exit_crit_edge:       ; preds = %for.end.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla_enode_clear.exit

for.body54.i21:                                   ; preds = %list_del_init.exit95.i.for.body54.i21_crit_edge, %for.end.i19.for.body54.i21_crit_edge
  %e.1101.i = phi ptr [ %tmp.1.i20, %list_del_init.exit95.i.for.body54.i21_crit_edge ], [ %73, %for.end.i19.for.body54.i21_crit_edge ]
  %74 = ptrtoint ptr %e.1101.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %tmp.1.i20 = load ptr, ptr %e.1101.i, align 4
  %call.i.i90.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.1101.i) #12
  br i1 %call.i.i90.i, label %if.end.i.i93.i, label %for.body54.i21.list_del_init.exit95.i_crit_edge

for.body54.i21.list_del_init.exit95.i_crit_edge:  ; preds = %for.body54.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit95.i

if.end.i.i93.i:                                   ; preds = %for.body54.i21
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i91.i = getelementptr inbounds %struct.list_head, ptr %e.1101.i, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i91.i, align 4
  %77 = ptrtoint ptr %e.1101.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %e.1101.i, align 4
  %prev1.i.i.i92.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev1.i.i.i92.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %76, align 4
  br label %list_del_init.exit95.i

list_del_init.exit95.i:                           ; preds = %if.end.i.i93.i, %for.body54.i21.list_del_init.exit95.i_crit_edge
  %81 = ptrtoint ptr %e.1101.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %e.1101.i, ptr %e.1101.i, align 4
  %prev.i3.i94.i = getelementptr inbounds %struct.list_head, ptr %e.1101.i, i32 0, i32 1
  %82 = ptrtoint ptr %prev.i3.i94.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %e.1101.i, ptr %prev.i3.i94.i, align 4
  %ntype.i.i22 = getelementptr inbounds %struct.enode, ptr %e.1101.i, i32 0, i32 2
  %83 = ptrtoint ptr %ntype.i.i22 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %ntype.i.i22, align 4
  call void @kfree(ptr noundef %e.1101.i) #12
  %cmp51.not.i23 = icmp eq ptr %tmp.1.i20, %enode_list.i
  br i1 %cmp51.not.i23, label %list_del_init.exit95.i.qla_enode_clear.exit_crit_edge, label %list_del_init.exit95.i.for.body54.i21_crit_edge

list_del_init.exit95.i.for.body54.i21_crit_edge:  ; preds = %list_del_init.exit95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body54.i21

list_del_init.exit95.i.qla_enode_clear.exit_crit_edge: ; preds = %list_del_init.exit95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla_enode_clear.exit

qla_enode_clear.exit:                             ; preds = %list_del_init.exit95.i.qla_enode_clear.exit_crit_edge, %for.end.i19.qla_enode_clear.exit_crit_edge, %if.then.i6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enode_list.i) #12
  br label %return

return:                                           ; preds = %qla_enode_clear.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_wake_dpc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla2x00_find_fcport_by_wwpn(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_post_prli_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @qla_edif_get_sa_index_from_freepool(ptr nocapture noundef readonly %fcport, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 1
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33792, ptr noundef %1, i32 noundef 12387, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.qla_edif_get_sa_index_from_freepool) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not = icmp eq i32 %dir, 0
  %edif_tx_sa_id_map = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 303
  %edif_rx_sa_id_map = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 302
  %sa_id_map.0.in = select i1 %tobool.not, ptr %edif_rx_sa_id_map, ptr %edif_tx_sa_id_map
  %4 = ptrtoint ptr %sa_id_map.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %sa_id_map.0 = load ptr, ptr %sa_id_map.0.in, align 4
  %sadb_fp_lock = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 304
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sadb_fp_lock) #12
  %call6 = tail call i32 @_find_first_zero_bit_be(ptr noundef %sa_id_map.0, i32 noundef 512) #12
  %conv8 = and i32 %call6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %conv8)
  %cmp9 = icmp ugt i32 %conv8, 511
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_fp_lock, i32 noundef %call3) #12
  br label %cleanup

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef %conv8, ptr noundef %sa_id_map.0) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_fp_lock, i32 noundef %call3) #12
  %add = add nuw nsw i32 %conv8, 512
  %spec.select = select i1 %tobool.not, i32 %call6, i32 %add
  %sa_index.0 = trunc i32 %spec.select to i16
  %conv21 = and i32 %spec.select, 65535
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %1, i32 noundef 12387, ptr noundef nonnull @.str.146, ptr noundef nonnull @__func__.qla_edif_get_sa_index_from_freepool, i32 noundef %conv21) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11
  %retval.0 = phi i16 [ -1, %if.then11 ], [ %sa_index.0, %if.end13 ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_sa_replace_iocb_timeout(ptr nocapture noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -24
  %fcport1 = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport1, align 4
  %vha2 = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vha2, align 8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr, align 4
  %conv = zext i16 %5 to i32
  %port_name = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 5
  %d_id = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %d_id, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %3, i32 noundef 12393, ptr noundef nonnull @.str.150, ptr noundef nonnull @__func__.qla2x00_sa_replace_iocb_timeout, i32 noundef %conv, ptr noundef %port_name, i32 noundef %bf.lshr) #12
  %indx_list_lock = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 72, i32 9
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %indx_list_lock) #12
  %delete_sa_index = getelementptr i8, ptr %t, i32 -16
  %7 = ptrtoint ptr %delete_sa_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delete_sa_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %8)
  %cmp9.not = icmp eq i32 %8, 65535
  br i1 %cmp9.not, label %if.else27, label %if.then

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %delete_sa_index to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65535, ptr %delete_sa_index, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %indx_list_lock, i32 noundef %call6) #12
  %conv18 = and i32 %8, 65535
  %rx_sa_list.i = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 72, i32 11
  %12 = ptrtoint ptr %rx_sa_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_sa_list.i, align 4
  %cmp8.not29.i = icmp eq ptr %13, %rx_sa_list.i
  br i1 %cmp8.not29.i, label %if.then.if.else_crit_edge, label %for.body.i.preheader

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

for.body.i.preheader:                             ; preds = %if.then
  %14 = trunc i32 %8 to i16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %sa_ctl.030.i = phi ptr [ %tsa_ctl.031.i, %for.inc.i.for.body.i_crit_edge ], [ %13, %for.body.i.preheader ]
  %15 = ptrtoint ptr %sa_ctl.030.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %tsa_ctl.031.i = load ptr, ptr %sa_ctl.030.i, align 4
  %state.i = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 5
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index9.i = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 2
  %19 = ptrtoint ptr %index9.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %index9.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %14)
  %cmp10.i = icmp eq i16 %20, %14
  br i1 %cmp10.i, label %qla_edif_find_sa_ctl_by_index.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp8.not.i = icmp eq ptr %tsa_ctl.031.i, %rx_sa_list.i
  br i1 %cmp8.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

qla_edif_find_sa_ctl_by_index.exit:               ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %sa_ctl.030.i, null
  br i1 %tobool.not, label %qla_edif_find_sa_ctl_by_index.exit.if.else_crit_edge, label %if.then20

qla_edif_find_sa_ctl_by_index.exit.if.else_crit_edge: ; preds = %qla_edif_find_sa_ctl_by_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then20:                                        ; preds = %qla_edif_find_sa_ctl_by_index.exit
  %state.i.le = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 5
  %update_sa_index = getelementptr i8, ptr %t, i32 -20
  %21 = ptrtoint ptr %update_sa_index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %update_sa_index, align 4
  %conv22 = zext i16 %11 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %3, i32 noundef 12387, ptr noundef nonnull @.str.151, ptr noundef nonnull @__func__.qla2x00_sa_replace_iocb_timeout, ptr noundef nonnull %sa_ctl.030.i, i32 noundef %conv18, i32 noundef %22, i32 noundef %conv22) #12
  %flags23 = getelementptr inbounds %struct.edif_sa_ctl, ptr %sa_ctl.030.i, i32 0, i32 4
  %23 = ptrtoint ptr %flags23 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2, ptr %flags23, align 2
  tail call void @_set_bit(i32 noundef 3, ptr noundef %state.i.le) #12
  %24 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vha2, align 8
  %call.i = tail call ptr @qla2x00_alloc_work(ptr noundef %25, i32 noundef 26) #12
  %tobool.not.i55 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i55, label %if.then20.if.end30_crit_edge, label %if.end.i

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %u.i = getelementptr inbounds %struct.qla_work_evt, ptr %call.i, i32 0, i32 3
  %fcport1.i = getelementptr inbounds %struct.qla_work_evt, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %26 = ptrtoint ptr %fcport1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %1, ptr %fcport1.i, align 4
  %27 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sa_ctl.030.i, ptr %u.i, align 4
  %nport_handle5.i = getelementptr inbounds %struct.qla_work_evt, ptr %call.i, i32 0, i32 3, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %nport_handle5.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %11, ptr %nport_handle5.i, align 4
  %flags.i = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 35
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %30, 32
  store i32 %or.i, ptr %flags.i, align 8
  %call6.i = tail call i32 @qla2x00_post_work(ptr noundef %25, ptr noundef nonnull %call.i) #12
  br label %if.end30

if.else:                                          ; preds = %qla_edif_find_sa_ctl_by_index.exit.if.else_crit_edge, %for.inc.i.if.else_crit_edge, %if.then.if.else_crit_edge
  %31 = ptrtoint ptr %delete_sa_index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %delete_sa_index, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %3, i32 noundef 12387, ptr noundef nonnull @.str.152, ptr noundef nonnull @__func__.qla2x00_sa_replace_iocb_timeout, i32 noundef %32) #12
  br label %if.end30

if.else27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %indx_list_lock, i32 noundef %call6) #12
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.else, %if.end.i, %if.then20.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_rel_done_warning(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_rel_free_warning(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__qla2x00_alloc_iocbs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla_els_pt_iocb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dump_buffer(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_start_iocbs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !365, !367, !369, !371, !373, !375, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426}
!llvm.module.flags = !{!428, !429, !430, !431, !432, !433, !434, !435}
!llvm.ident = !{!436}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 52, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 262, i32 8}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 428, i32 6}
!6 = !{ptr @__func__.qla2x00_release_all_sadb, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 428, i32 27}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1018, i32 35}
!10 = !{ptr @__func__.qla_edif_app_mgmt, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1019, i32 6}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1028, i32 7}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1037, i32 7}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1069, i32 36}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1080, i32 7}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1258, i32 6}
!22 = !{ptr @__func__.qla24xx_sadb_update, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1258, i32 33}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1266, i32 36}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1273, i32 36}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1289, i32 36}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1299, i32 7}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1313, i32 7}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1322, i32 7}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1329, i32 6}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1348, i32 8}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1360, i32 8}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1376, i32 8}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1384, i32 9}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1391, i32 8}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1407, i32 7}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1425, i32 7}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1452, i32 7}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1459, i32 8}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1481, i32 13}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1492, i32 7}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1501, i32 6}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1516, i32 6}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1545, i32 37}
!66 = !{ptr @__func__.qla_enode_init, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1546, i32 7}
!68 = !{ptr @qla_enode_init.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1551, i32 2}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1554, i32 31}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1554, i32 46}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1573, i32 7}
!77 = !{ptr @__func__.qla_enode_stop, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1573, i32 32}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1585, i32 7}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1778, i32 7}
!83 = !{ptr @qla_edb_init.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1783, i32 2}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1873, i32 7}
!88 = !{ptr @__func__.qla_edb_stop, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1873, i32 36}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1884, i32 7}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1957, i32 7}
!94 = !{ptr @__func__.qla_edb_eventcreate, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1957, i32 45}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1964, i32 7}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1973, i32 7}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1978, i32 8}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2001, i32 4}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2010, i32 7}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2018, i32 6}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2058, i32 12}
!110 = !{ptr @__func__.qla_edif_timer, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2059, i32 12}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2087, i32 7}
!114 = !{ptr @__func__.edif_doorbell_show, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2087, i32 43}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2094, i32 7}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2130, i32 5}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2167, i32 6}
!122 = !{ptr @__func__.qla24xx_issue_sa_replace_iocb, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2167, i32 37}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2171, i32 7}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2181, i32 4}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2190, i32 6}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2200, i32 7}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2204, i32 13}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2228, i32 7}
!136 = !{ptr @__func__.qla24xx_sa_update_iocb, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2229, i32 7}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2233, i32 7}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2239, i32 7}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2245, i32 7}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2282, i32 6}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2325, i32 6}
!148 = !{ptr @__func__.qla24xx_sa_replace_iocb, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2326, i32 6}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2372, i32 7}
!152 = !{ptr @__func__.qla24xx_auth_els, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2373, i32 7}
!154 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2381, i32 36}
!156 = !{ptr @.str.64, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2391, i32 7}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2423, i32 7}
!160 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2435, i32 38}
!162 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2448, i32 6}
!164 = !{ptr @.str.68, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2567, i32 21}
!166 = !{ptr @.str.69, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2578, i32 4}
!168 = !{ptr @__func__.qla28xx_sa_update_iocb_entry, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2578, i32 33}
!170 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2614, i32 6}
!172 = !{ptr @.str.71, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2627, i32 8}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2633, i32 8}
!176 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2653, i32 7}
!178 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2667, i32 4}
!180 = !{ptr @.str.75, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2686, i32 7}
!182 = !{ptr @.str.76, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2714, i32 8}
!184 = !{ptr @.str.77, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2786, i32 8}
!186 = !{ptr @.str.78, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2835, i32 7}
!188 = !{ptr @.str.79, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2844, i32 7}
!190 = !{ptr @.str.80, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2860, i32 8}
!192 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3178, i32 7}
!194 = !{ptr @.str.82, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3188, i32 7}
!196 = !{ptr @.str.83, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3349, i32 7}
!198 = !{ptr @__func__.qla_edif_process_els, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3350, i32 7}
!200 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3360, i32 7}
!202 = !{ptr @.str.85, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3367, i32 36}
!204 = !{ptr @.str.86, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3376, i32 7}
!206 = !{ptr @.str.87, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3385, i32 7}
!208 = !{ptr @.str.88, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3396, i32 7}
!210 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3408, i32 7}
!212 = !{ptr @.str.90, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3420, i32 13}
!214 = !{ptr @.str.91, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3430, i32 6}
!216 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3437, i32 7}
!218 = !{ptr @.str.93, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3461, i32 4}
!220 = !{ptr @__func__.qla_edif_sess_down, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3462, i32 4}
!222 = !{ptr @.str.94, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 37, i32 13}
!224 = !{ptr @.str.95, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 38, i32 19}
!226 = !{ptr @.str.96, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 39, i32 13}
!228 = !{ptr @sc_str, !229, !"sc_str", i1 false, i1 false}
!229 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 36, i32 3}
!230 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 351, i32 8}
!232 = !{ptr @__func__.__qla2x00_release_all_sadb, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 352, i32 8}
!234 = !{ptr @.str.98, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 385, i32 9}
!236 = !{ptr @.str.99, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 406, i32 9}
!238 = !{ptr @.str.100, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 416, i32 6}
!240 = !{ptr @.str.101, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 417, i32 32}
!242 = !{ptr @.str.102, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 417, i32 39}
!244 = !{ptr @.str.103, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 320, i32 6}
!246 = !{ptr @__func__.qla_edif_add_sa_index_to_freepool, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 320, i32 21}
!248 = !{ptr @.str.104, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 333, i32 6}
!250 = !{ptr @.str.105, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 284, i32 53}
!252 = !{ptr @__func__.qla_edif_app_check, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 284, i32 71}
!254 = !{ptr @.str.106, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 287, i32 35}
!256 = !{ptr @.str.107, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 476, i32 9}
!258 = !{ptr @.str.108, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 482, i32 35}
!260 = !{ptr @__func__.qla_edif_app_start, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 483, i32 7}
!262 = !{ptr @.str.109, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 489, i32 36}
!264 = !{ptr @.str.110, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 502, i32 11}
!266 = !{ptr @.str.111, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 506, i32 11}
!268 = !{ptr @.str.112, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 527, i32 11}
!270 = !{ptr @.str.113, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 539, i32 36}
!272 = !{ptr @.str.114, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 557, i32 6}
!274 = !{ptr @.str.115, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 198, i32 6}
!276 = !{ptr @.str.116, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 582, i32 35}
!278 = !{ptr @__func__.qla_edif_app_stop, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 583, i32 6}
!280 = !{ptr @.str.117, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 597, i32 8}
!282 = !{ptr @.str.118, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 677, i32 8}
!284 = !{ptr @__func__.qla_edif_app_authok, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 678, i32 8}
!286 = !{ptr @.str.119, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 684, i32 8}
!288 = !{ptr @.str.120, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 689, i32 7}
!290 = !{ptr @.str.121, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 705, i32 7}
!292 = !{ptr @.str.122, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 715, i32 7}
!294 = !{ptr @.str.123, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 727, i32 7}
!296 = !{ptr @.str.124, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 736, i32 7}
!298 = !{ptr @.str.125, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 744, i32 7}
!300 = !{ptr @__func__.qla_edif_app_chk_sa_update, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 636, i32 7}
!302 = !{ptr @.str.126, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 774, i32 35}
!304 = !{ptr @__func__.qla_edif_app_authfail, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 774, i32 57}
!306 = !{ptr @.str.127, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 809, i32 6}
!308 = !{ptr @.str.128, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 814, i32 7}
!310 = !{ptr @.str.129, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 843, i32 35}
!312 = !{ptr @__func__.qla_edif_app_getfcinfo, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 843, i32 58}
!314 = !{ptr @.str.130, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 865, i32 8}
!316 = !{ptr @.str.131, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 889, i32 8}
!318 = !{ptr @.str.132, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 957, i32 6}
!320 = !{ptr @__func__.qla_edif_app_getstats, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 958, i32 7}
!322 = !{ptr @.str.133, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1188, i32 7}
!324 = !{ptr @__func__.qla24xx_check_sadb_avail_slot, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1189, i32 7}
!326 = !{ptr @.str.134, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1203, i32 7}
!328 = !{ptr @.str.135, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1209, i32 6}
!330 = !{ptr @.str.136, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1218, i32 7}
!332 = !{ptr @.str.137, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1231, i32 6}
!334 = !{ptr @.str.138, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3055, i32 6}
!336 = !{ptr @__func__.qla_edif_sadb_get_sa_index, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3056, i32 6}
!338 = !{ptr @.str.139, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3067, i32 8}
!340 = !{ptr @.str.140, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3093, i32 7}
!342 = !{ptr @.str.141, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3109, i32 9}
!344 = !{ptr @.str.142, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3121, i32 7}
!346 = !{ptr @.str.143, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3124, i32 7}
!348 = !{ptr @.str.144, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3135, i32 7}
!350 = !{ptr @.str.145, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3144, i32 6}
!352 = !{ptr @__func__.qla_edif_get_sa_index_from_freepool, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2464, i32 21}
!354 = !{ptr @.str.146, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2484, i32 6}
!356 = !{ptr @.str.147, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1101, i32 7}
!358 = !{ptr @.str.148, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1118, i32 6}
!360 = !{ptr @__func__.qla_edif_add_sa_ctl, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1119, i32 6}
!362 = !{ptr @qla_edif_list_add_sa_update_index.__key, !363, !"__key", i1 false, i1 false}
!363 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 161, i32 2}
!364 = !{ptr @.str.149, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @.str.150, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 80, i32 6}
!367 = !{ptr @__func__.qla2x00_sa_replace_iocb_timeout, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 81, i32 6}
!369 = !{ptr @.str.151, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 108, i32 8}
!371 = !{ptr @.str.152, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 119, i32 8}
!373 = !{ptr @init_completion.__key, !374, !"__key", i1 false, i1 false}
!374 = !{!"../include/linux/completion.h", i32 87, i32 2}
!375 = !{ptr @.str.153, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @.str.154, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1804, i32 7}
!378 = !{ptr @__func__.qla_edb_node_free, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1804, i32 44}
!380 = !{ptr @.str.155, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1906, i32 7}
!382 = !{ptr @__func__.qla_edb_node_add, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1924, i32 36}
!384 = !{ptr @.str.156, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1755, i32 7}
!386 = !{ptr @.str.157, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1762, i32 6}
!388 = !{ptr @.str.158, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1657, i32 6}
!390 = !{ptr @__func__.qla_enode_add, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1658, i32 6}
!392 = !{ptr @__func__.qla_edif_sadb_delete_sa_index, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2519, i32 21}
!394 = !{ptr @.str.159, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2529, i32 7}
!396 = !{ptr @.str.160, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 2557, i32 6}
!398 = !{ptr @.str.161, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3240, i32 6}
!400 = !{ptr @__func__.__chk_edif_rx_sa_delete_pending, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3241, i32 6}
!402 = !{ptr @.str.162, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3251, i32 7}
!404 = !{ptr @.str.163, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3259, i32 7}
!406 = !{ptr @.str.164, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3262, i32 7}
!408 = !{ptr @.str.165, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 3272, i32 7}
!410 = !{ptr @__func__.qla_bsg_check, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 218, i32 32}
!412 = !{ptr @.str.166, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 237, i32 4}
!414 = !{ptr @.str.167, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1719, i32 7}
!416 = !{ptr @__func__.qla_pur_get_pending, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1720, i32 7}
!418 = !{ptr @__func__.qla_edb_clear, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1821, i32 39}
!420 = !{ptr @.str.168, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1841, i32 11}
!422 = !{ptr @.str.169, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1847, i32 11}
!424 = !{ptr @__func__.qla_enode_clear, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1602, i32 35}
!426 = !{ptr @.str.170, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/scsi/qla2xxx/qla_edif.c", i32 1610, i32 8}
!428 = !{i32 1, !"wchar_size", i32 2}
!429 = !{i32 1, !"min_enum_size", i32 4}
!430 = !{i32 8, !"branch-target-enforcement", i32 0}
!431 = !{i32 8, !"sign-return-address", i32 0}
!432 = !{i32 8, !"sign-return-address-all", i32 0}
!433 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!434 = !{i32 7, !"uwtable", i32 1}
!435 = !{i32 7, !"frame-pointer", i32 2}
!436 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!437 = !{i64 2148451782, i64 2148451808, i64 2148451837, i64 2148451871, i64 2148451902, i64 2148451925}
!438 = !{i64 2156864088}
!439 = !{i64 2148454247, i64 2148454273, i64 2148454302, i64 2148454336, i64 2148454367, i64 2148454390}
!440 = !{i64 2156863191}
!441 = !{i64 2156985202}
!442 = !{!"branch_weights", i32 1, i32 2000}
!443 = !{i64 5222317}
!444 = !{i64 2156278181}
!445 = !{i64 2157018179}
!446 = !{i64 2156280625}
!447 = !{i64 5221899}
