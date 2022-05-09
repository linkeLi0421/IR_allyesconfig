; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla2xxx/tcm_qla2xxx.c_pt.bc'
source_filename = "../drivers/scsi/qla2xxx/tcm_qla2xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qla_tgt_func_tmpl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.btree_geo = type opaque
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.tcm_qla2xxx_lport = type { i64, i64, i64, [32 x i8], [32 x i8], %struct.btree_head32, ptr, ptr, %struct.qla_tgt, ptr, %struct.se_wwn }
%struct.btree_head32 = type { %struct.btree_head }
%struct.btree_head = type { ptr, ptr, i32 }
%struct.qla_tgt = type { ptr, ptr, %struct.btree_head64, ptr, i32, i32, i8, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.imm_ntfy_from_isp, %struct.wait_queue_head, i32, i32, i32, %struct.atomic_t, %struct.list_head }
%struct.btree_head64 = type { %struct.btree_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.imm_ntfy_from_isp = type { i8, i8, i8, i8, %union.anon.96, i16, i16 }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { i32, %union.target_id_t, i16, i8, i8, i16, i16, i16, i16, i16, i32, i16, i16, [28 x i8] }
%union.target_id_t = type { i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.se_wwn = type { ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, i32 }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.fc_port = type { %struct.list_head, ptr, [3 x i8], i8, [8 x i8], [8 x i8], %union.port_id_t, i16, i16, %struct.completion, i32, i32, ptr, i8, i32, ptr, %struct.list_head, %struct.spinlock, %struct.kref, ptr, i32, %struct.list_head, %struct.work_struct, %struct.work_struct, i64, i32, [2 x ptr], i16, i16, i16, i8, [8 x i8], i16, i32, %struct.atomic_t, i32, i32, ptr, ptr, i32, i8, i8, i8, i32, i32, i16, ptr, i32, ptr, %struct.ct_sns_desc, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, [64 x i8], i8, i8, i16, i16, ptr, i64, i64, i64, %struct.anon.147 }
%union.port_id_t = type { i24 }
%struct.ct_sns_desc = type { ptr, i32 }
%struct.anon.147 = type { i16, i32, i32, i64, i64, i8, i8, i16, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.se_device = type { i16, i32, i32, i8, i32, i64, i32, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.spinlock, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.semaphore, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.t10_wwn, %struct.t10_alua, %struct.t10_reservation, %struct.se_dev_attrib, %struct.config_group, %struct.config_group, %struct.config_group, %struct.se_dev_stat_grps, [512 x i8], [512 x i8], ptr, %struct.se_lun, i32, i32, %struct.callback_head, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.t10_wwn = type { [9 x i8], [17 x i8], [5 x i8], [254 x i8], i32, %struct.spinlock, ptr, %struct.config_group, %struct.list_head }
%struct.t10_alua = type { i16, i32, %struct.spinlock, i32, i32, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.config_group, %struct.list_head }
%struct.t10_reservation = type { i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, %struct.list_head, %struct.list_head }
%struct.se_dev_attrib = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.config_group }
%struct.se_dev_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.se_lun = type { i64, i8, i8, i32, i16, %struct.atomic_t, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, %struct.mutex, %struct.list_head, ptr, %struct.spinlock, ptr, %struct.scsi_port_stats, %struct.config_group, %struct.se_port_stat_grps, %struct.completion, %struct.percpu_ref, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_port_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.se_port_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.callback_head = type { ptr, ptr }
%struct.se_tmr_req = type { i8, i8, i32, i64, ptr, ptr, ptr, %struct.list_head }
%struct.scsi_qla_host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.work_struct, ptr, i32, [16 x i8], %struct.anon.83, %struct.atomic_t, i32, i32, i32, i32, i16, i16, %struct.fc_port, %union.port_id_t, i8, i16, i8, %struct.atomic_t, i8, i32, %struct.timer_list, [8 x i8], [8 x i8], [8 x i8], [8 x i8], ptr, %struct.completion, i16, i16, [6 x i8], %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i16, ptr, i32, %struct.atomic_t, i16, i16, ptr, %struct.scsi_qlt_host, ptr, i32, i32, %struct.fc_host_statistics, %struct.qla_statistics, %struct.bidi_statistics, %struct.atomic_t, %struct.qla8044_reset_template, i16, i16, i16, i16, i16, i16, ptr, %struct.purex_list, %struct.purex_item, %struct.name_list_extended, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, [8 x i8], [8 x i8], i16, [4 x i16], %struct.list_head, %struct.fab_scan, i8, i32, i64, i64, i64, i64, i64, i64, %struct.edif_dbell, %struct.pur_core }
%struct.anon.83 = type { i16, [2 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.scsi_qlt_host = type { ptr, %struct.mutex, %struct.mutex, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_statistics = type { i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, %struct.qla_dif_statistics }
%struct.qla_dif_statistics = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.bidi_statistics = type { i64, i64 }
%struct.qla8044_reset_template = type { i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.purex_list = type { %struct.list_head, %struct.spinlock }
%struct.purex_item = type { %struct.list_head, ptr, ptr, %struct.atomic_t, i16, %struct.anon.170 }
%struct.anon.170 = type { [64 x i8] }
%struct.name_list_extended = type { ptr, i32, %struct.list_head, i32, i8 }
%struct.fab_scan = type { ptr, i32, i16, i32, %struct.delayed_work }
%struct.edif_dbell = type { i32, %struct.spinlock, %struct.list_head, %struct.completion }
%struct.pur_core = type { i32, %struct.spinlock, %struct.list_head }
%struct.tcm_qla2xxx_tpg = type { i16, %struct.atomic_t, ptr, %struct.tcm_qla2xxx_tpg_attrib, %struct.se_portal_group }
%struct.tcm_qla2xxx_tpg_attrib = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.hlist_head = type { ptr }
%struct.tcm_qla2xxx_nacl = type { %struct.se_node_acl, i32, i64, [32 x i8], ptr, ptr }
%struct.se_node_acl = type { [224 x i8], i8, i8, i32, i32, i32, [64 x i8], %struct.atomic_t, %struct.hlist_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.list_head, %struct.list_head, %struct.completion, %struct.kref }
%struct.qla_hw_data = type { ptr, ptr, %struct.anon.148, i16, i16, [108 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i16, i8, ptr, ptr, ptr, [8 x i32], [8 x i32], [8 x i32], i8, i8, i8, i8, ptr, ptr, i16, i16, i8, i8, i8, %struct.atomic_t, i8, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i16, i16, ptr, i16, i16, ptr, i16, i8, i8, i16, i32, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i64, i8, i8, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, %struct.fc_els_flogi, ptr, [32 x i16], [32 x i32], [8 x i32], ptr, ptr, i32, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, i32, %struct.mutex, i16, i16, i16, i16, i16, [2 x i16], i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, [16 x i16], [4 x i8], [4 x i16], [3 x i8], [3 x i8], i32, [3 x i8], [3 x i8], [2 x %struct.fwdt], ptr, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, [8 x i16], i64, i64, %struct.mutex, i32, i16, [4 x i16], [17 x i8], [80 x i8], [17 x i8], ptr, i32, i32, i32, i32, %struct.mutex, [2 x i8], [2 x i8], [16 x i8], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.160, i8, i16, i8, i16, i16, ptr, %struct.list_head, [8 x i32], i16, i16, i16, i32, ptr, ptr, ptr, %struct.work_struct, %struct.qlfc_fw, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rwlock_t, i16, i32, ptr, %struct.qla82xx_legacy_intr_set, i16, i16, %struct.list_head, i8, i32, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mr_data_fx00, i32, [36 x i8], %struct.qlt_hw_data, i32, i32, i16, i16, ptr, %struct.anon.167, i64, i64, i64, i64, i64, %struct.atomic_t, i16, i8, %struct.atomic_t, i16, %struct.qla_hw_data_stat, i32, ptr, %struct.btree_head32, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.els_reject, i8 }
%struct.anon.148 = type { i56 }
%struct.fc_els_flogi = type <{ i8, [3 x i8], %struct.fc_els_csp, i64, i64, [4 x %struct.fc_els_cssp], [16 x i8] }>
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.156, i32 }
%union.anon.156 = type { %struct.anon.158 }
%struct.anon.158 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.fwdt = type { ptr, i32, i32 }
%struct.anon.160 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlfc_fw = type { ptr, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qla82xx_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.mr_data_fx00 = type { [64 x i8], [32 x i8], [16 x i8], [16 x i8], [16 x i8], [32 x i8], %struct.fc_port, i8, i8, i8, i32, i16, i8, i16, i32, i32, i8, i8, i8 }
%struct.qlt_hw_data = type { i8, i32, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr, i32, i16, i32, i32, i32, [2 x i8], [2 x i8], [8 x i8], ptr, ptr, ptr, %struct.list_head, i32, i32, i32, %struct.spinlock, i32, %struct.spinlock, i32, [60 x i8], %struct.spinlock, [84 x i8] }
%struct.anon.167 = type { %struct.anon.168, %struct.anon.169 }
%struct.anon.168 = type { %struct.list_head, i32 }
%struct.anon.169 = type { %struct.list_head, i32 }
%struct.qla_hw_data_stat = type { i32, i32 }
%struct.els_reject = type { ptr, i32, i16 }
%struct.qla_tgt_cmd = type <{ i8, [7 x i8], %struct.se_cmd, %struct.list_head, ptr, ptr, i32, i32, %struct.work_struct, [96 x i8], %struct.spinlock, i16, [2 x i8], i32, ptr, i32, i32, i32, i64, i32, i16, i16, i16, [2 x i8], ptr, ptr, %struct.list_head, %struct.atio_from_isp, i8, i8, [2 x i8], ptr, i32, i32, i32, i8, i8, i8, i8, ptr, ptr, [4 x i8], i64, i16, i16, i16, i16, i32, i32, i16, [6 x i8], i64, i64, i32, [4 x i8] }>
%struct.atio_from_isp = type { %union.anon.162 }
%union.anon.162 = type { %struct.anon.164 }
%struct.anon.164 = type { i16, i8, i8, i32, %struct.fcp_hdr, %struct.atio7_fcp_cmnd }
%struct.fcp_hdr = type { i8, %struct.be_id_t, i8, %struct.be_id_t, i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.be_id_t = type { i8, i8, i8 }
%struct.atio7_fcp_cmnd = type { i64, i8, i8, i8, i8, [16 x i8], [4 x i8] }
%struct.qla_qpair = type { %struct.spinlock, %struct.atomic_t, i32, ptr, ptr, i32, i8, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.qla_counters, %struct.list_head, %struct.list_head, i16, i32, i64, %struct.qla_tgt_counters, i16, [94 x i8], %struct.qla_fw_resources, i32, i32, i32, [108 x i8] }
%struct.qla_counters = type { i64, i64, i64, i64 }
%struct.qla_tgt_counters = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_fw_resources = type { i16, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.qla_tgt_mgmt_cmd = type { i8, [3 x i8], i16, i8, i8, ptr, ptr, ptr, %struct.se_cmd, %struct.work_struct, i32, i32, %struct.work_struct, i64, %union.anon.166 }
%union.anon.166 = type { %struct.atio_from_isp }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.85, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.85 = type { ptr }
%struct.anon.84 = type { i8, i8, i8, i8 }
%struct.tcm_qla2xxx_fc_loopid = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
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
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.fc_vport_identifiers = type { i64, i64, i32, i8, i32, [64 x i8] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.fc_vport = type { i32, i32, i64, i64, i32, i32, i32, [64 x i8], ptr, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.work_struct }

@__UNIQUE_ID_description365 = internal constant [71 x i8] c"tcm_qla2xxx.description=TCM QLA24XX+ series NPIV enabled fabric driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file366 = internal constant [50 x i8] c"tcm_qla2xxx.file=drivers/scsi/qla2xxx/tcm_qla2xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license367 = internal constant [24 x i8] c"tcm_qla2xxx.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_tcm_qla2xxx__368_1952_tcm_qla2xxx_init6 = internal global ptr @tcm_qla2xxx_init, section ".initcall6.init", align 4
@__exitcall_tcm_qla2xxx_exit = internal global ptr @tcm_qla2xxx_exit, section ".exitcall.exit", align 4
@tcm_qla2xxx_free_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tcm_qla2xxx_ops = internal constant { %struct.target_core_fabric_ops, [56 x i8] } { %struct.target_core_fabric_ops { ptr null, ptr null, ptr @.str, i32 984, i32 1200, ptr @tcm_qla2xxx_get_fabric_wwn, ptr @tcm_qla2xxx_get_tag, ptr null, ptr @tcm_qla2xxx_check_demo_mode, ptr @tcm_qla2xxx_check_demo_mode_cache, ptr @tcm_qla2xxx_check_demo_write_protect, ptr @tcm_qla2xxx_check_prod_write_protect, ptr @tcm_qla2xxx_check_demo_mode_login_only, ptr @tcm_qla2xxx_check_prot_fabric_only, ptr @tcm_qla2xxx_tpg_get_inst_index, ptr @tcm_qla2xxx_check_stop_free, ptr @tcm_qla2xxx_release_cmd, ptr @tcm_qla2xxx_close_session, ptr @tcm_qla2xxx_sess_get_index, ptr null, ptr @tcm_qla2xxx_write_pending, ptr @tcm_qla2xxx_set_default_node_attrs, ptr @tcm_qla2xxx_get_cmd_state, ptr @tcm_qla2xxx_queue_data_in, ptr @tcm_qla2xxx_queue_status, ptr @tcm_qla2xxx_queue_tm_rsp, ptr @tcm_qla2xxx_aborted_task, ptr @tcm_qla2xxx_make_lport, ptr @tcm_qla2xxx_drop_lport, ptr null, ptr @tcm_qla2xxx_make_tpg, ptr @tcm_qla2xxx_enable_tpg, ptr @tcm_qla2xxx_drop_tpg, ptr null, ptr null, ptr null, ptr null, ptr @tcm_qla2xxx_init_nodeacl, ptr null, ptr @tcm_qla2xxx_wwn_attrs, ptr @tcm_qla2xxx_tpg_attrs, ptr null, ptr @tcm_qla2xxx_tpg_attrib_attrs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_npiv_ops = internal constant { %struct.target_core_fabric_ops, [56 x i8] } { %struct.target_core_fabric_ops { ptr null, ptr null, ptr @.str.129, i32 984, i32 0, ptr @tcm_qla2xxx_get_fabric_wwn, ptr @tcm_qla2xxx_get_tag, ptr null, ptr @tcm_qla2xxx_check_demo_mode, ptr @tcm_qla2xxx_check_demo_mode_cache, ptr @tcm_qla2xxx_check_demo_mode, ptr @tcm_qla2xxx_check_prod_write_protect, ptr @tcm_qla2xxx_check_demo_mode_login_only, ptr null, ptr @tcm_qla2xxx_tpg_get_inst_index, ptr @tcm_qla2xxx_check_stop_free, ptr @tcm_qla2xxx_release_cmd, ptr @tcm_qla2xxx_close_session, ptr @tcm_qla2xxx_sess_get_index, ptr null, ptr @tcm_qla2xxx_write_pending, ptr @tcm_qla2xxx_set_default_node_attrs, ptr @tcm_qla2xxx_get_cmd_state, ptr @tcm_qla2xxx_queue_data_in, ptr @tcm_qla2xxx_queue_status, ptr @tcm_qla2xxx_queue_tm_rsp, ptr @tcm_qla2xxx_aborted_task, ptr @tcm_qla2xxx_npiv_make_lport, ptr @tcm_qla2xxx_npiv_drop_lport, ptr null, ptr @tcm_qla2xxx_npiv_make_tpg, ptr @tcm_qla2xxx_npiv_enable_tpg, ptr @tcm_qla2xxx_drop_tpg, ptr null, ptr null, ptr null, ptr null, ptr @tcm_qla2xxx_init_nodeacl, ptr null, ptr @tcm_qla2xxx_wwn_attrs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qla2xxx\00", [24 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_wwn_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @tcm_qla2xxx_wwn_attr_version, ptr null], [24 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @tcm_qla2xxx_tpg_attr_dynamic_sessions, ptr @tcm_qla2xxx_tpg_attr_fabric_prot_type, ptr null], [20 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @tcm_qla2xxx_tpg_attrib_attr_generate_node_acls, ptr @tcm_qla2xxx_tpg_attrib_attr_cache_dynamic_acls, ptr @tcm_qla2xxx_tpg_attrib_attr_demo_mode_write_protect, ptr @tcm_qla2xxx_tpg_attrib_attr_prod_mode_write_protect, ptr @tcm_qla2xxx_tpg_attrib_attr_demo_mode_login_only, ptr @tcm_qla2xxx_tpg_attrib_attr_jam_host, ptr null], [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/qla2xxx/tcm_qla2xxx.c\00", [61 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_write_pending.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.1, ptr @.str.4, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tcm_qla2xxx\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tcm_qla2xxx_write_pending\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"write_pending aborted cmd[%p] refcount %d transport_state %x, t_state %x, se_cmd_flags %x\0A\00", [37 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_queue_data_in.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.5, ptr @.str.1, ptr @.str.6, i8 0, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tcm_qla2xxx_queue_data_in\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"queue_data_in aborted cmd[%p] refcount %d transport_state %x, t_state %x, se_cmd_flags %x\0A\00", [37 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_queue_status.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str.1, ptr @.str.6, i8 0, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tcm_qla2xxx_queue_status\00", [39 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_queue_tm_rsp.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str.1, ptr @.str.9, i8 0, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tcm_qla2xxx_queue_tm_rsp\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"queue_tm_rsp: mcmd: %p func: 0x%02x response: 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_make_lport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.1, i32 1607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Unable to allocate struct tcm_qla2xxx_lport\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcm_qla2xxx_make_lport\00", [41 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_make_lport._entry_ptr = internal global ptr @tcm_qla2xxx_make_lport._entry, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"naa.%016llx\00", [20 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@tcm_qla2xxx_parse_wwn.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.13, ptr @.str.1, ptr @.str.14, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcm_qla2xxx_parse_wwn\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"err %u len %zu pos %u byte %u\0A\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x\00", [48 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_init_lport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.1, i32 1558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Unable to initialize lport->lport_fcport_map btree\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcm_qla2xxx_init_lport\00", [41 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_init_lport._entry_ptr = internal global ptr @tcm_qla2xxx_init_lport._entry, section ".printk_index", align 4
@tcm_qla2xxx_init_lport._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.1, i32 1567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013Unable to allocate lport->lport_loopid_map of %zu bytes\0A\00", [37 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_init_lport._entry_ptr.20 = internal global ptr @tcm_qla2xxx_init_lport._entry.18, section ".printk_index", align 4
@tcm_qla2xxx_init_lport.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.17, ptr @.str.1, ptr @.str.21, i8 1, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"qla2xxx: Allocated lport_loopid_map of %zu bytes\0A\00", [46 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_template = internal constant { %struct.qla_tgt_func_tmpl, [48 x i8] } { %struct.qla_tgt_func_tmpl { ptr @tcm_qla2xxx_find_cmd_by_tag, ptr @tcm_qla2xxx_handle_cmd, ptr @tcm_qla2xxx_handle_data, ptr @tcm_qla2xxx_handle_tmr, ptr @tcm_qla2xxx_get_cmd, ptr @tcm_qla2xxx_rel_cmd, ptr @tcm_qla2xxx_free_cmd, ptr @tcm_qla2xxx_free_mcmd, ptr @tcm_qla2xxx_free_session, ptr @tcm_qla2xxx_check_initiator_node_acl, ptr @tcm_qla2xxx_update_sess, ptr @tcm_qla2xxx_find_sess_by_loop_id, ptr @tcm_qla2xxx_find_sess_by_s_id, ptr @tcm_qla2xxx_clear_nacl_from_fcport_map, ptr @tcm_qla2xxx_put_sess, ptr @tcm_qla2xxx_shutdown_sess, ptr @tcm_qla2xxx_dif_tags, ptr @tcm_qla2xxx_chk_dif_tags, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_handle_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.1, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Unable to locate struct fc_port from qla_tgt_cmd\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcm_qla2xxx_handle_cmd\00", [41 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_handle_cmd._entry_ptr = internal global ptr @tcm_qla2xxx_handle_cmd._entry, section ".printk_index", align 4
@tcm_qla2xxx_handle_cmd._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.1, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Unable to locate active struct se_session\0A\00", [51 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_handle_cmd._entry_ptr.26 = internal global ptr @tcm_qla2xxx_handle_cmd._entry.24, section ".printk_index", align 4
@tcm_qla2xxx_handle_data.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&cmd->work)\00", [34 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.28, ptr @.str.1, ptr @.str.29, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcm_qla2xxx_handle_tmr\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%ld: ABTS received\0A\00", [44 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.28, ptr @.str.1, ptr @.str.30, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%ld: 2G Abort Task received\0A\00", [35 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.28, ptr @.str.1, ptr @.str.31, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%ld: CLEAR_ACA received\0A\00", [39 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.28, ptr @.str.1, ptr @.str.32, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%ld: TARGET_RESET received\0A\00", [36 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.28, ptr @.str.1, ptr @.str.33, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%ld: LUN_RESET received\0A\00", [39 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.28, ptr @.str.1, ptr @.str.34, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%ld: CLEAR_TS received\0A\00", [40 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.28, ptr @.str.1, ptr @.str.35, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%ld: ABORT_TS received\0A\00", [40 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.28, ptr @.str.1, ptr @.str.36, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%ld: Unknown task mgmt fn 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_free_cmd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tcm_qla2xxx_free_mcmd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&mcmd->free_work)\00", [60 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_free_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.1, i32 1360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013struct fc_port->se_sess is NULL\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tcm_qla2xxx_free_session\00", [39 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_free_session._entry_ptr = internal global ptr @tcm_qla2xxx_free_session._entry, section ".printk_index", align 4
@tcm_qla2xxx_free_session._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.1, i32 1367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Unable to locate struct tcm_qla2xxx_lport\0A\00", [51 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_free_session._entry_ptr.42 = internal global ptr @tcm_qla2xxx_free_session._entry.40, section ".printk_index", align 4
@tcm_qla2xxx_check_initiator_node_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.43, ptr @.str.1, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tcm_qla2xxx_check_initiator_node_acl\00", [59 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_check_initiator_node_acl._entry_ptr = internal global ptr @tcm_qla2xxx_check_initiator_node_acl._entry, section ".printk_index", align 4
@tcm_qla2xxx_check_initiator_node_acl._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.1, i32 1432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Unable to locate struct tcm_qla2xxx_lport->tpg_1\0A\00", [44 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_check_initiator_node_acl._entry_ptr.46 = internal global ptr @tcm_qla2xxx_check_initiator_node_acl._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%8phC\00", [26 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.48, ptr @.str.1, ptr @.str.49, i8 1, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tcm_qla2xxx_set_sess_by_s_id\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set_sess_by_s_id: %06x\0A\00", [40 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.48, ptr @.str.1, ptr @.str.50, i8 1, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Setting up new fc_port entry to new_se_nacl\0A\00", [51 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_set_sess_by_s_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.1, i32 1194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Unable to insert s_id into fcport_map: %06x\0A\00", [49 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_set_sess_by_s_id._entry_ptr = internal global ptr @tcm_qla2xxx_set_sess_by_s_id._entry, section ".printk_index", align 4
@tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.48, ptr @.str.1, ptr @.str.52, i8 1, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Wiping nonexisting fc_port entry\0A\00", [62 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.48, ptr @.str.1, ptr @.str.53, i8 1, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Clearing existing nacl->fc_port and fc_port entry\0A\00", [45 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.48, ptr @.str.1, ptr @.str.54, i8 1, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Replacing existing nacl->fc_port and fc_port entry\0A\00", [44 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.48, ptr @.str.1, ptr @.str.55, i8 1, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Clearing existing fc_port entry\0A\00", [63 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.48, ptr @.str.1, ptr @.str.56, i8 1, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Replacing existing fc_port entry w/o active nacl->fc_port\0A\00", [37 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.48, ptr @.str.1, ptr @.str.57, i8 1, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Setup nacl->fc_port %p by s_id for se_nacl: %p, initiatorname: %s\0A\00", [61 x i8] zeroinitializer }, align 32
@btree_geo32 = external dso_local global %struct.btree_geo, align 1
@tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.58, ptr @.str.1, ptr @.str.59, i8 1, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tcm_qla2xxx_set_sess_by_loop_id\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"set_sess_by_loop_id: Using loop_id: 0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.58, ptr @.str.1, ptr @.str.60, i8 1, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Setting up new fc_loopid->se_nacl to new_se_nacl\0A\00", [46 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.58, ptr @.str.1, ptr @.str.61, i8 1, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Clearing nacl->fc_port and fc_loopid->se_nacl\0A\00", [49 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.58, ptr @.str.1, ptr @.str.62, i8 1, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Replacing existing nacl->fc_port and fc_loopid->se_nacl\0A\00", [39 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.58, ptr @.str.1, ptr @.str.63, i8 1, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Clearing fc_loopid->se_nacl\0A\00", [35 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.58, ptr @.str.1, ptr @.str.64, i8 1, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Replacing existing fc_loopid->se_nacl w/o active nacl->fc_port\0A\00", [32 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.58, ptr @.str.1, ptr @.str.65, i8 1, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Setup nacl->fc_port %p by loop_id for se_nacl: %p, initiatorname: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_update_sess._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.1, i32 1473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016Updating session %p from port %8phC loop_id %d -> %d s_id %x:%x:%x -> %x:%x:%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tcm_qla2xxx_update_sess\00", [40 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_update_sess._entry_ptr = internal global ptr @tcm_qla2xxx_update_sess._entry, section ".printk_index", align 4
@.str.68 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Found wrong se_nacl when updating s_id %x:%x:%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"No lport_fcport_map entry for s_id %x:%x:%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Already have lport_fcport_map entry for s_id %x:%x:%x\0A\00", [41 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_find_sess_by_loop_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.71, ptr @.str.1, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tcm_qla2xxx_find_sess_by_loop_id\00", [63 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_find_sess_by_loop_id._entry_ptr = internal global ptr @tcm_qla2xxx_find_sess_by_loop_id._entry, section ".printk_index", align 4
@tcm_qla2xxx_find_sess_by_loop_id.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.71, ptr @.str.1, ptr @.str.72, i8 1, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"find_sess_by_loop_id: Using loop_id: 0x%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_find_sess_by_loop_id.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.71, ptr @.str.1, ptr @.str.73, i8 1, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to locate se_nacl by loop_id: 0x%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_find_sess_by_loop_id._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.71, ptr @.str.1, i32 1265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Unable to locate struct fc_port\0A\00", [61 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_find_sess_by_loop_id._entry_ptr.76 = internal global ptr @tcm_qla2xxx_find_sess_by_loop_id._entry.74, section ".printk_index", align 4
@tcm_qla2xxx_find_sess_by_s_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.77, ptr @.str.1, i32 1142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tcm_qla2xxx_find_sess_by_s_id\00", [34 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_find_sess_by_s_id._entry_ptr = internal global ptr @tcm_qla2xxx_find_sess_by_s_id._entry, section ".printk_index", align 4
@tcm_qla2xxx_find_sess_by_s_id.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.77, ptr @.str.1, ptr @.str.78, i8 1, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"find_sess_by_s_id: 0x%06x\0A\00", [37 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_find_sess_by_s_id.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.77, ptr @.str.1, ptr @.str.79, i8 1, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to locate s_id: 0x%06x\0A\00", [33 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_find_sess_by_s_id.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.77, ptr @.str.1, ptr @.str.80, i8 1, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"find_sess_by_s_id: located se_nacl: %p, initiatorname: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_find_sess_by_s_id._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.77, ptr @.str.1, i32 1160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_find_sess_by_s_id._entry_ptr.82 = internal global ptr @tcm_qla2xxx_find_sess_by_s_id._entry.81, section ".printk_index", align 4
@tcm_qla2xxx_clear_nacl_from_fcport_map.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.83, ptr @.str.1, ptr @.str.84, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tcm_qla2xxx_clear_nacl_from_fcport_map\00", [57 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fc_rport domain: port_id 0x%06x\0A\00", [63 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_clear_nacl_from_fcport_map.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.83, ptr @.str.1, ptr @.str.85, i8 0, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Removed from fcport_map: %p for WWNN: 0x%016LX, port_id: 0x%06x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tpgt_\00", [26 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_make_tpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.1, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013In non NPIV mode, a single TPG=1 is used for HW port mappings\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tcm_qla2xxx_make_tpg\00", [43 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_make_tpg._entry_ptr = internal global ptr @tcm_qla2xxx_make_tpg._entry, section ".printk_index", align 4
@tcm_qla2xxx_make_tpg._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.1, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Unable to allocate struct tcm_qla2xxx_tpg\0A\00", [51 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_make_tpg._entry_ptr.91 = internal global ptr @tcm_qla2xxx_make_tpg._entry.89, section ".printk_index", align 4
@tcm_qla2xxx_wwn_attr_version = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.92, ptr null, i16 292, ptr @tcm_qla2xxx_wwn_version_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"TCM QLOGIC QLA2XXX NPIV capable fabric module %s on %s/%s on %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"10.02.07.200-k\00", [17 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attr_dynamic_sessions = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.95, ptr null, i16 292, ptr @tcm_qla2xxx_tpg_dynamic_sessions_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attr_fabric_prot_type = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.96, ptr null, i16 420, ptr @tcm_qla2xxx_tpg_fabric_prot_type_show, ptr @tcm_qla2xxx_tpg_fabric_prot_type_store }, [44 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dynamic_sessions\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fabric_prot_type\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_fabric_prot_type_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.1, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013kstrtoul() returned %d for fabric_prot_type\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tcm_qla2xxx_tpg_fabric_prot_type_store\00", [57 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_fabric_prot_type_store._entry_ptr = internal global ptr @tcm_qla2xxx_tpg_fabric_prot_type_store._entry, section ".printk_index", align 4
@tcm_qla2xxx_tpg_fabric_prot_type_store._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.1, i32 966, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Invalid qla2xxx fabric_prot_type: %lu\0A\00", [55 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_fabric_prot_type_store._entry_ptr.102 = internal global ptr @tcm_qla2xxx_tpg_fabric_prot_type_store._entry.100, section ".printk_index", align 4
@tcm_qla2xxx_tpg_attrib_attr_generate_node_acls = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.103, ptr null, i16 420, ptr @tcm_qla2xxx_tpg_attrib_generate_node_acls_show, ptr @tcm_qla2xxx_tpg_attrib_generate_node_acls_store }, [44 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_attr_cache_dynamic_acls = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.109, ptr null, i16 420, ptr @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_show, ptr @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store }, [44 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_attr_demo_mode_write_protect = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.113, ptr null, i16 420, ptr @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_show, ptr @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store }, [44 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_attr_prod_mode_write_protect = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.117, ptr null, i16 420, ptr @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_show, ptr @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store }, [44 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_attr_demo_mode_login_only = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.121, ptr null, i16 420, ptr @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_show, ptr @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store }, [44 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_attr_jam_host = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.125, ptr null, i16 420, ptr @tcm_qla2xxx_tpg_attrib_jam_host_show, ptr @tcm_qla2xxx_tpg_attrib_jam_host_store }, [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"generate_node_acls\00", [45 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.1, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013kstrtoul() failed with ret: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tcm_qla2xxx_tpg_attrib_generate_node_acls_store\00", [48 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry_ptr = internal global ptr @tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry, section ".printk_index", align 4
@tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.1, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Illegal boolean value %lu\0A\00", [35 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry_ptr.108 = internal global ptr @tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry.106, section ".printk_index", align 4
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cache_dynamic_acls\00", [45 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.110, ptr @.str.1, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store\00", [48 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry_ptr = internal global ptr @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry, section ".printk_index", align 4
@tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.110, ptr @.str.1, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry_ptr.112 = internal global ptr @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry.111, section ".printk_index", align 4
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"demo_mode_write_protect\00", [40 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.114, ptr @.str.1, i32 897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store\00", [43 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry_ptr = internal global ptr @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry, section ".printk_index", align 4
@tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.114, ptr @.str.1, i32 897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry_ptr.116 = internal global ptr @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry.115, section ".printk_index", align 4
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"prod_mode_write_protect\00", [40 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.118, ptr @.str.1, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store\00", [43 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry_ptr = internal global ptr @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry, section ".printk_index", align 4
@tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.118, ptr @.str.1, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry_ptr.120 = internal global ptr @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry.119, section ".printk_index", align 4
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"demo_mode_login_only\00", [43 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.122, ptr @.str.1, i32 899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store\00", [46 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry_ptr = internal global ptr @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry, section ".printk_index", align 4
@tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.122, ptr @.str.1, i32 899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry_ptr.124 = internal global ptr @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry.123, section ".printk_index", align 4
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"jam_host\00", [23 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_jam_host_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.126, ptr @.str.1, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"tcm_qla2xxx_tpg_attrib_jam_host_store\00", [58 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_jam_host_store._entry_ptr = internal global ptr @tcm_qla2xxx_tpg_attrib_jam_host_store._entry, section ".printk_index", align 4
@tcm_qla2xxx_tpg_attrib_jam_host_store._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.126, ptr @.str.1, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_tpg_attrib_jam_host_store._entry_ptr.128 = internal global ptr @tcm_qla2xxx_tpg_attrib_jam_host_store._entry.127, section ".printk_index", align 4
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qla2xxx_npiv\00", [19 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_npiv_make_lport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.1, i32 1719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unable to locate NPIV '@' separator\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tcm_qla2xxx_npiv_make_lport\00", [36 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_npiv_make_lport._entry_ptr = internal global ptr @tcm_qla2xxx_npiv_make_lport._entry, section ".printk_index", align 4
@tcm_qla2xxx_npiv_make_lport._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.1, i32 1733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Unable to allocate struct tcm_qla2xxx_lport for NPIV\0A\00", [40 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_npiv_make_lport._entry_ptr.135 = internal global ptr @tcm_qla2xxx_npiv_make_lport._entry.133, section ".printk_index", align 4
@tcm_qla2xxx_lport_register_npiv_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.1, i32 1672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013qla2xxx base_vha not enabled for target mode\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tcm_qla2xxx_lport_register_npiv_cb\00", [61 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_lport_register_npiv_cb._entry_ptr = internal global ptr @tcm_qla2xxx_lport_register_npiv_cb._entry, section ".printk_index", align 4
@tcm_qla2xxx_lport_register_npiv_cb._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.1, i32 1678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013qla2xxx base_lport or tpg_1 not available\0A\00", [51 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_lport_register_npiv_cb._entry_ptr.140 = internal global ptr @tcm_qla2xxx_lport_register_npiv_cb._entry.138, section ".printk_index", align 4
@tcm_qla2xxx_lport_register_npiv_cb._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.137, ptr @.str.1, i32 1691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013fc_vport_create failed for qla2xxx_npiv\0A\00", [53 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_lport_register_npiv_cb._entry_ptr.143 = internal global ptr @tcm_qla2xxx_lport_register_npiv_cb._entry.141, section ".printk_index", align 4
@tcm_qla2xxx_npiv_make_tpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.144, ptr @.str.1, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tcm_qla2xxx_npiv_make_tpg\00", [38 x i8] zeroinitializer }, align 32
@tcm_qla2xxx_npiv_make_tpg._entry_ptr = internal global ptr @tcm_qla2xxx_npiv_make_tpg._entry, section ".printk_index", align 4
@tcm_qla2xxx_register_configfs.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.145, ptr @.str.1, ptr @.str.146, i8 1, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tcm_qla2xxx_register_configfs\00", [34 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"TCM QLOGIC QLA2XXX fabric module %s on %s/%s on %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcm_qla2xxx_free\00", [47 x i8] zeroinitializer }, align 32
@switch.table.tcm_qla2xxx_queue_tm_rsp = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\02\05\05\04", [27 x i8] zeroinitializer }, align 32
@switch.table.tcm_qla2xxx_handle_data_work = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 21, i32 23, i32 22], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 16, i64 2, i64 4, i64 16, i64 32, i64 64, i64 65530, i64 65531]
@__sancov_gen_cov_switch_values.148 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c"tcm_qla2xxx_free_wq\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 36, i32 33 }
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"tcm_qla2xxx_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1792, i32 44 }
@___asan_gen_.156 = private unnamed_addr constant [21 x i8] c"tcm_qla2xxx_npiv_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1840, i32 44 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1794, i32 19 }
@___asan_gen_.162 = private unnamed_addr constant [22 x i8] c"tcm_qla2xxx_wwn_attrs\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1787, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant [22 x i8] c"tcm_qla2xxx_tpg_attrs\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 987, i32 35 }
@___asan_gen_.168 = private unnamed_addr constant [29 x i8] c"tcm_qla2xxx_tpg_attrib_attrs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 904, i32 35 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 346, i32 6 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 395, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 662, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 703, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 743, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1607, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1613, i32 33 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 82, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 93, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1558, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1566, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1571, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [21 x i8] c"tcm_qla2xxx_template\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1531, i32 39 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 465, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 471, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 559, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 594, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 598, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 602, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 606, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 610, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 614, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 618, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 622, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 312, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 251, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1360, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1367, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1423, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1432, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1440, i32 41 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1183, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1188, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1193, i32 5 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1196, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1206, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1211, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1219, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1224, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1229, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1286, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1293, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1304, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1310, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1320, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1325, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1332, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1469, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1498, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1503, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1512, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1247, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1252, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1257, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1265, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1142, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1148, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1152, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1155, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1160, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 804, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 818, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1002, i32 19 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1008, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1014, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant [29 x i8] c"tcm_qla2xxx_wwn_attr_version\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1785, i32 1 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1780, i32 6 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1781, i32 6 }
@___asan_gen_.477 = private unnamed_addr constant [38 x i8] c"tcm_qla2xxx_tpg_attr_dynamic_sessions\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [38 x i8] c"tcm_qla2xxx_tpg_attr_fabric_prot_type\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 984, i32 1 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 985, i32 1 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 981, i32 23 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 962, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 966, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant [47 x i8] c"tcm_qla2xxx_tpg_attrib_attr_generate_node_acls\00", align 1
@___asan_gen_.510 = private unnamed_addr constant [47 x i8] c"tcm_qla2xxx_tpg_attrib_attr_cache_dynamic_acls\00", align 1
@___asan_gen_.513 = private unnamed_addr constant [52 x i8] c"tcm_qla2xxx_tpg_attrib_attr_demo_mode_write_protect\00", align 1
@___asan_gen_.516 = private unnamed_addr constant [52 x i8] c"tcm_qla2xxx_tpg_attrib_attr_prod_mode_write_protect\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [49 x i8] c"tcm_qla2xxx_tpg_attrib_attr_demo_mode_login_only\00", align 1
@___asan_gen_.522 = private unnamed_addr constant [37 x i8] c"tcm_qla2xxx_tpg_attrib_attr_jam_host\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 895, i32 1 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 896, i32 1 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 897, i32 1 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 898, i32 1 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 899, i32 1 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 901, i32 1 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1842, i32 19 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1715, i32 21 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1719, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1733, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1672, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1678, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1691, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1105, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1883, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.658 = private constant [38 x i8] c"../drivers/scsi/qla2xxx/tcm_qla2xxx.c\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1895, i32 40 }
@___asan_gen_.660 = private unnamed_addr constant [38 x i8] c"switch.table.tcm_qla2xxx_queue_tm_rsp\00", align 1
@___asan_gen_.661 = private unnamed_addr constant [42 x i8] c"switch.table.tcm_qla2xxx_handle_data_work\00", align 1
@llvm.compiler.used = appending global [215 x ptr] [ptr @__UNIQUE_ID_description365, ptr @__UNIQUE_ID_file366, ptr @__UNIQUE_ID_license367, ptr @__exitcall_tcm_qla2xxx_exit, ptr @__initcall__kmod_tcm_qla2xxx__368_1952_tcm_qla2xxx_init6, ptr @tcm_qla2xxx_check_initiator_node_acl._entry, ptr @tcm_qla2xxx_check_initiator_node_acl._entry.44, ptr @tcm_qla2xxx_check_initiator_node_acl._entry_ptr, ptr @tcm_qla2xxx_check_initiator_node_acl._entry_ptr.46, ptr @tcm_qla2xxx_exit, ptr @tcm_qla2xxx_find_sess_by_loop_id._entry, ptr @tcm_qla2xxx_find_sess_by_loop_id._entry.74, ptr @tcm_qla2xxx_find_sess_by_loop_id._entry_ptr, ptr @tcm_qla2xxx_find_sess_by_loop_id._entry_ptr.76, ptr @tcm_qla2xxx_find_sess_by_s_id._entry, ptr @tcm_qla2xxx_find_sess_by_s_id._entry.81, ptr @tcm_qla2xxx_find_sess_by_s_id._entry_ptr, ptr @tcm_qla2xxx_find_sess_by_s_id._entry_ptr.82, ptr @tcm_qla2xxx_free_session._entry, ptr @tcm_qla2xxx_free_session._entry.40, ptr @tcm_qla2xxx_free_session._entry_ptr, ptr @tcm_qla2xxx_free_session._entry_ptr.42, ptr @tcm_qla2xxx_handle_cmd._entry, ptr @tcm_qla2xxx_handle_cmd._entry.24, ptr @tcm_qla2xxx_handle_cmd._entry_ptr, ptr @tcm_qla2xxx_handle_cmd._entry_ptr.26, ptr @tcm_qla2xxx_init_lport._entry, ptr @tcm_qla2xxx_init_lport._entry.18, ptr @tcm_qla2xxx_init_lport._entry_ptr, ptr @tcm_qla2xxx_init_lport._entry_ptr.20, ptr @tcm_qla2xxx_lport_register_npiv_cb._entry, ptr @tcm_qla2xxx_lport_register_npiv_cb._entry.138, ptr @tcm_qla2xxx_lport_register_npiv_cb._entry.141, ptr @tcm_qla2xxx_lport_register_npiv_cb._entry_ptr, ptr @tcm_qla2xxx_lport_register_npiv_cb._entry_ptr.140, ptr @tcm_qla2xxx_lport_register_npiv_cb._entry_ptr.143, ptr @tcm_qla2xxx_make_lport._entry, ptr @tcm_qla2xxx_make_lport._entry_ptr, ptr @tcm_qla2xxx_make_tpg._entry, ptr @tcm_qla2xxx_make_tpg._entry.89, ptr @tcm_qla2xxx_make_tpg._entry_ptr, ptr @tcm_qla2xxx_make_tpg._entry_ptr.91, ptr @tcm_qla2xxx_npiv_make_lport._entry, ptr @tcm_qla2xxx_npiv_make_lport._entry.133, ptr @tcm_qla2xxx_npiv_make_lport._entry_ptr, ptr @tcm_qla2xxx_npiv_make_lport._entry_ptr.135, ptr @tcm_qla2xxx_npiv_make_tpg._entry, ptr @tcm_qla2xxx_npiv_make_tpg._entry_ptr, ptr @tcm_qla2xxx_set_sess_by_s_id._entry, ptr @tcm_qla2xxx_set_sess_by_s_id._entry_ptr, ptr @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry, ptr @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry.111, ptr @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry_ptr, ptr @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry_ptr.112, ptr @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry, ptr @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry.123, ptr @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry_ptr, ptr @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry_ptr.124, ptr @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry, ptr @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry.115, ptr @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry_ptr, ptr @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry_ptr.116, ptr @tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry, ptr @tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry.106, ptr @tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry_ptr, ptr @tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry_ptr.108, ptr @tcm_qla2xxx_tpg_attrib_jam_host_store._entry, ptr @tcm_qla2xxx_tpg_attrib_jam_host_store._entry.127, ptr @tcm_qla2xxx_tpg_attrib_jam_host_store._entry_ptr, ptr @tcm_qla2xxx_tpg_attrib_jam_host_store._entry_ptr.128, ptr @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry, ptr @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry.119, ptr @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry_ptr, ptr @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry_ptr.120, ptr @tcm_qla2xxx_tpg_fabric_prot_type_store._entry, ptr @tcm_qla2xxx_tpg_fabric_prot_type_store._entry.100, ptr @tcm_qla2xxx_tpg_fabric_prot_type_store._entry_ptr, ptr @tcm_qla2xxx_tpg_fabric_prot_type_store._entry_ptr.102, ptr @tcm_qla2xxx_update_sess._entry, ptr @tcm_qla2xxx_update_sess._entry_ptr, ptr @tcm_qla2xxx_free_wq, ptr @tcm_qla2xxx_ops, ptr @tcm_qla2xxx_npiv_ops, ptr @.str, ptr @tcm_qla2xxx_wwn_attrs, ptr @tcm_qla2xxx_tpg_attrs, ptr @tcm_qla2xxx_tpg_attrib_attrs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @tcm_qla2xxx_template, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @tcm_qla2xxx_handle_data.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @tcm_qla2xxx_free_cmd.__key, ptr @tcm_qla2xxx_free_mcmd.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @tcm_qla2xxx_wwn_attr_version, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @tcm_qla2xxx_tpg_attr_dynamic_sessions, ptr @tcm_qla2xxx_tpg_attr_fabric_prot_type, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @tcm_qla2xxx_tpg_attrib_attr_generate_node_acls, ptr @tcm_qla2xxx_tpg_attrib_attr_cache_dynamic_acls, ptr @tcm_qla2xxx_tpg_attrib_attr_demo_mode_write_protect, ptr @tcm_qla2xxx_tpg_attrib_attr_prod_mode_write_protect, ptr @tcm_qla2xxx_tpg_attrib_attr_demo_mode_login_only, ptr @tcm_qla2xxx_tpg_attrib_attr_jam_host, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.113, ptr @.str.114, ptr @.str.117, ptr @.str.118, ptr @.str.121, ptr @.str.122, ptr @.str.125, ptr @.str.126, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @switch.table.tcm_qla2xxx_queue_tm_rsp, ptr @switch.table.tcm_qla2xxx_handle_data_work], section "llvm.metadata"
@0 = internal global [172 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_free_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_ops to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_npiv_ops to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_wwn_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_make_lport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_init_lport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_init_lport._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_template to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_handle_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_handle_cmd._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_handle_data.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_free_cmd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_free_mcmd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_free_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_free_session._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_check_initiator_node_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_check_initiator_node_acl._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_set_sess_by_s_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_update_sess._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_find_sess_by_loop_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_find_sess_by_loop_id._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_find_sess_by_s_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_find_sess_by_s_id._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_make_tpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_make_tpg._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_wwn_attr_version to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attr_dynamic_sessions to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attr_fabric_prot_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_fabric_prot_type_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_fabric_prot_type_store._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_attr_generate_node_acls to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_attr_cache_dynamic_acls to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_attr_demo_mode_write_protect to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_attr_prod_mode_write_protect to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_attr_demo_mode_login_only to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_attr_jam_host to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_jam_host_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_tpg_attrib_jam_host_store._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_npiv_make_lport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_npiv_make_lport._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_lport_register_npiv_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_lport_register_npiv_cb._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_lport_register_npiv_cb._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_qla2xxx_npiv_make_tpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tcm_qla2xxx_queue_tm_rsp to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tcm_qla2xxx_handle_data_work to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = load ptr, ptr @tcm_qla2xxx_free_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #18
  tail call void @target_unregister_template(ptr noundef nonnull @tcm_qla2xxx_ops) #18
  tail call void @target_unregister_template(ptr noundef nonnull @tcm_qla2xxx_npiv_ops) #18
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tcm_qla2xxx_register_configfs()
  %0 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @tcm_qla2xxx_get_fabric_wwn(ptr nocapture noundef readonly %se_tpg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lport1 = getelementptr i8, ptr %se_tpg, i32 -32
  %0 = ptrtoint ptr %lport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport1, align 4
  %lport_naa_name = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %1, i32 0, i32 4
  ret ptr %lport_naa_name
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @tcm_qla2xxx_get_tag(ptr nocapture noundef readonly %se_tpg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -40
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %add.ptr, align 4
  ret i16 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_qla2xxx_check_demo_mode(ptr nocapture noundef readonly %se_tpg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_attrib = getelementptr i8, ptr %se_tpg, i32 -28
  %0 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpg_attrib, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_qla2xxx_check_demo_mode_cache(ptr nocapture noundef readonly %se_tpg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_dynamic_acls = getelementptr i8, ptr %se_tpg, i32 -24
  %0 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cache_dynamic_acls, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_qla2xxx_check_demo_write_protect(ptr nocapture noundef readonly %se_tpg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %demo_mode_write_protect = getelementptr i8, ptr %se_tpg, i32 -20
  %0 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demo_mode_write_protect, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_qla2xxx_check_prod_write_protect(ptr nocapture noundef readonly %se_tpg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %prod_mode_write_protect = getelementptr i8, ptr %se_tpg, i32 -16
  %0 = ptrtoint ptr %prod_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prod_mode_write_protect, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_qla2xxx_check_demo_mode_login_only(ptr nocapture noundef readonly %se_tpg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %demo_mode_login_only = getelementptr i8, ptr %se_tpg, i32 -12
  %0 = ptrtoint ptr %demo_mode_login_only to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demo_mode_login_only, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_qla2xxx_check_prot_fabric_only(ptr nocapture noundef readonly %se_tpg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %fabric_prot_type = getelementptr i8, ptr %se_tpg, i32 -8
  %0 = ptrtoint ptr %fabric_prot_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fabric_prot_type, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_get_inst_index(ptr nocapture noundef readonly %se_tpg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -40
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %add.ptr, align 4
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_check_stop_free(ptr noundef %se_cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %0 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %se_cmd_flags, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %trc_flags = getelementptr i8, ptr %se_cmd, i32 856
  %2 = ptrtoint ptr %trc_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trc_flags, align 8
  %or = or i32 %3, 65536
  store i32 %or, ptr %trc_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd) #18
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_release_cmd(ptr noundef %se_cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %0 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %se_cmd_flags, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -24
  tail call void @qlt_free_mcmd(ptr noundef %add.ptr) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_sent_to_fw = getelementptr i8, ptr %se_cmd, i32 648
  %2 = ptrtoint ptr %cmd_sent_to_fw to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %cmd_sent_to_fw, align 8
  %3 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool4.not = icmp eq i16 %3, 0
  br i1 %tobool4.not, label %if.end29, label %do.end, !prof !359

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #18
  br label %cleanup

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr3 = getelementptr i8, ptr %se_cmd, i32 -8
  tail call void @qlt_free_cmd(ptr noundef %add.ptr3) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_close_session(ptr noundef %se_sess) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %se_sess, i32 0, i32 6
  %0 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fabric_sess_ptr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %if.end.i, !prof !360

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/qla2xxx/tcm_qla2xxx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 372, 0\0A.popsection", ""() #18, !srcloc !361
  unreachable

if.end.i:                                         ; preds = %entry
  tail call void @target_stop_session(ptr noundef %se_sess) #18
  %explicit_logout = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %explicit_logout to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %explicit_logout, align 4
  %bf.set = or i24 %bf.load, 256
  store i24 %bf.set, ptr %explicit_logout, align 4
  %sess_kref.i = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 18
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sess_kref.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !362
  tail call void @llvm.prefetch.p0(ptr %sess_kref.i, i32 1, i32 3, i32 1) #18
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sess_kref.i, ptr %sess_kref.i, i32 1, ptr elementtype(i32) %sess_kref.i) #18, !srcloc !363
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.tcm_qla2xxx_put_sess.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !359

if.end5.i.i.i.i.i.tcm_qla2xxx_put_sess.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tcm_qla2xxx_put_sess.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %sess_kref.i, i32 noundef 3) #18
  br label %tcm_qla2xxx_put_sess.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !364
  tail call void @qlt_unreg_sess(ptr noundef nonnull %1) #18
  br label %tcm_qla2xxx_put_sess.exit

tcm_qla2xxx_put_sess.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.tcm_qla2xxx_put_sess.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_qla2xxx_sess_get_index(ptr nocapture noundef readnone %se_sess) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_write_pending(ptr noundef %se_cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -8
  %aborted = getelementptr i8, ptr %se_cmd, i32 652
  %0 = ptrtoint ptr %aborted to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aborted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end12, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_write_pending.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_write_pending, %if.then5)) #18
          to label %do.end [label %if.then5], !srcloc !365

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %cmd_kref = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 36
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_kref, i32 noundef 4) #18
  %2 = ptrtoint ptr %cmd_kref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cmd_kref, align 4
  %transport_state = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 34
  %4 = ptrtoint ptr %transport_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %transport_state, align 4
  %t_state = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 10
  %6 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t_state, align 4
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %8 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %se_cmd_flags, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_write_pending.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.4, ptr noundef %add.ptr, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #18
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  tail call void @transport_generic_request_failure(ptr noundef %se_cmd, i32 noundef 13) #18
  br label %cleanup

if.end12:                                         ; preds = %entry
  %trc_flags = getelementptr i8, ptr %se_cmd, i32 856
  %10 = ptrtoint ptr %trc_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %trc_flags, align 8
  %or = or i32 %11, 8
  store i32 %or, ptr %trc_flags, align 8
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 12
  %12 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_length, align 4
  %bufflen = getelementptr i8, ptr %se_cmd, i32 664
  %14 = ptrtoint ptr %bufflen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %bufflen, align 8
  %se_cmd_flags.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %15 = ptrtoint ptr %se_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %se_cmd_flags.i, align 8
  %and.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.target_reverse_dma_direction.exit_crit_edge

if.end12.target_reverse_dma_direction.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %target_reverse_dma_direction.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %data_direction.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 6
  %17 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %switch.selectcmp.i = icmp eq i32 %18, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %switch.selectcmp4.i = icmp eq i32 %18, 1
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 2, i32 %switch.select.i
  br label %target_reverse_dma_direction.exit

target_reverse_dma_direction.exit:                ; preds = %if.end.i, %if.end12.target_reverse_dma_direction.exit_crit_edge
  %retval.0.i38 = phi i32 [ 0, %if.end12.target_reverse_dma_direction.exit_crit_edge ], [ %switch.select5.i, %if.end.i ]
  %dma_data_direction = getelementptr i8, ptr %se_cmd, i32 680
  %19 = ptrtoint ptr %dma_data_direction to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i38, ptr %dma_data_direction, align 8
  %t_data_nents = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 41
  %20 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t_data_nents, align 4
  %sg_cnt = getelementptr i8, ptr %se_cmd, i32 660
  %22 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sg_cnt, align 4
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 39
  %23 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %t_data_sg, align 4
  %sg = getelementptr i8, ptr %se_cmd, i32 656
  %25 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %sg, align 8
  %t_prot_nents = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 56
  %26 = ptrtoint ptr %t_prot_nents to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %t_prot_nents, align 8
  %prot_sg_cnt = getelementptr i8, ptr %se_cmd, i32 780
  %28 = ptrtoint ptr %prot_sg_cnt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %prot_sg_cnt, align 4
  %t_prot_sg = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 55
  %29 = ptrtoint ptr %t_prot_sg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %t_prot_sg, align 4
  %prot_sg = getelementptr i8, ptr %se_cmd, i32 776
  %31 = ptrtoint ptr %prot_sg to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %prot_sg, align 8
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 19
  %32 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %se_dev, align 4
  %block_size = getelementptr inbounds %struct.se_device, ptr %33, i32 0, i32 39, i32 21
  %34 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %block_size, align 8
  %blk_sz = getelementptr i8, ptr %se_cmd, i32 784
  %36 = ptrtoint ptr %blk_sz to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %blk_sz, align 8
  %pi_err = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 57
  %37 = ptrtoint ptr %pi_err to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %pi_err, align 4
  %call14 = tail call i32 @qlt_rdy_to_xfer(ptr noundef %add.ptr) #18
  br label %cleanup

cleanup:                                          ; preds = %target_reverse_dma_direction.exit, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call14, %target_reverse_dma_direction.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tcm_qla2xxx_set_default_node_attrs(ptr nocapture noundef %nacl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_qla2xxx_get_cmd_state(ptr nocapture noundef readonly %se_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %0 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %se_cmd_flags, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %state = getelementptr i8, ptr %se_cmd, i32 460
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_queue_data_in(ptr noundef %se_cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -8
  %aborted = getelementptr i8, ptr %se_cmd, i32 652
  %0 = ptrtoint ptr %aborted to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aborted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end11, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_queue_data_in.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_queue_data_in, %if.then5)) #18
          to label %cleanup [label %if.then5], !srcloc !365

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %cmd_kref = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 36
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_kref, i32 noundef 4) #18
  %2 = ptrtoint ptr %cmd_kref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cmd_kref, align 4
  %transport_state = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 34
  %4 = ptrtoint ptr %transport_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %transport_state, align 4
  %t_state = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 10
  %6 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t_state, align 4
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %8 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %se_cmd_flags, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_queue_data_in.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.6, ptr noundef %add.ptr, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #18
  br label %cleanup

if.end11:                                         ; preds = %entry
  %trc_flags = getelementptr i8, ptr %se_cmd, i32 856
  %10 = ptrtoint ptr %trc_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %trc_flags, align 8
  %or = or i32 %11, 16
  store i32 %or, ptr %trc_flags, align 8
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 12
  %12 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_length, align 4
  %bufflen = getelementptr i8, ptr %se_cmd, i32 664
  %14 = ptrtoint ptr %bufflen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %bufflen, align 8
  %se_cmd_flags.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %15 = ptrtoint ptr %se_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %se_cmd_flags.i, align 8
  %and.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.target_reverse_dma_direction.exit_crit_edge

if.end11.target_reverse_dma_direction.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %target_reverse_dma_direction.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  %data_direction.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 6
  %17 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %switch.selectcmp.i = icmp eq i32 %18, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %switch.selectcmp4.i = icmp eq i32 %18, 1
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 2, i32 %switch.select.i
  br label %target_reverse_dma_direction.exit

target_reverse_dma_direction.exit:                ; preds = %if.end.i, %if.end11.target_reverse_dma_direction.exit_crit_edge
  %retval.0.i38 = phi i32 [ 0, %if.end11.target_reverse_dma_direction.exit_crit_edge ], [ %switch.select5.i, %if.end.i ]
  %dma_data_direction = getelementptr i8, ptr %se_cmd, i32 680
  %19 = ptrtoint ptr %dma_data_direction to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i38, ptr %dma_data_direction, align 8
  %t_data_nents = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 41
  %20 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t_data_nents, align 4
  %sg_cnt = getelementptr i8, ptr %se_cmd, i32 660
  %22 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sg_cnt, align 4
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 39
  %23 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %t_data_sg, align 4
  %sg = getelementptr i8, ptr %se_cmd, i32 656
  %25 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %sg, align 8
  %offset = getelementptr i8, ptr %se_cmd, i32 668
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %offset, align 4
  %t_prot_nents = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 56
  %27 = ptrtoint ptr %t_prot_nents to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %t_prot_nents, align 8
  %prot_sg_cnt = getelementptr i8, ptr %se_cmd, i32 780
  %29 = ptrtoint ptr %prot_sg_cnt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %prot_sg_cnt, align 4
  %t_prot_sg = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 55
  %30 = ptrtoint ptr %t_prot_sg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %t_prot_sg, align 4
  %prot_sg = getelementptr i8, ptr %se_cmd, i32 776
  %32 = ptrtoint ptr %prot_sg to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %prot_sg, align 8
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 19
  %33 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %se_dev, align 4
  %block_size = getelementptr inbounds %struct.se_device, ptr %34, i32 0, i32 39, i32 21
  %35 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %block_size, align 8
  %blk_sz = getelementptr i8, ptr %se_cmd, i32 784
  %37 = ptrtoint ptr %blk_sz to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %blk_sz, align 8
  %pi_err = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 57
  %38 = ptrtoint ptr %pi_err to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %pi_err, align 4
  %scsi_status = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 1
  %39 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %scsi_status, align 4
  %call13 = tail call i32 @qlt_xmit_response(ptr noundef %add.ptr, i32 noundef 3, i8 noundef zeroext %40) #18
  br label %cleanup

cleanup:                                          ; preds = %target_reverse_dma_direction.exit, %if.then5, %do.body
  %retval.0 = phi i32 [ %call13, %target_reverse_dma_direction.exit ], [ 0, %if.then5 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_queue_status(ptr noundef %se_cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -8
  %aborted = getelementptr i8, ptr %se_cmd, i32 652
  %0 = ptrtoint ptr %aborted to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aborted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end11, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_queue_status.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_queue_status, %if.then5)) #18
          to label %cleanup [label %if.then5], !srcloc !365

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %cmd_kref = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 36
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_kref, i32 noundef 4) #18
  %2 = ptrtoint ptr %cmd_kref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cmd_kref, align 4
  %transport_state = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 34
  %4 = ptrtoint ptr %transport_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %transport_state, align 4
  %t_state = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 10
  %6 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t_state, align 4
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %8 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %se_cmd_flags, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_queue_status.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.6, ptr noundef %add.ptr, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #18
  br label %cleanup

if.end11:                                         ; preds = %entry
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 12
  %10 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_length, align 4
  %bufflen = getelementptr i8, ptr %se_cmd, i32 664
  %12 = ptrtoint ptr %bufflen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bufflen, align 8
  %sg = getelementptr i8, ptr %se_cmd, i32 656
  %13 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %sg, align 8
  %sg_cnt = getelementptr i8, ptr %se_cmd, i32 660
  %14 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %sg_cnt, align 4
  %offset = getelementptr i8, ptr %se_cmd, i32 668
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %offset, align 4
  %se_cmd_flags.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %16 = ptrtoint ptr %se_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %se_cmd_flags.i, align 8
  %and.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.target_reverse_dma_direction.exit_crit_edge

if.end11.target_reverse_dma_direction.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %target_reverse_dma_direction.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  %data_direction.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 6
  %18 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %switch.selectcmp.i = icmp eq i32 %19, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %switch.selectcmp4.i = icmp eq i32 %19, 1
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 2, i32 %switch.select.i
  br label %target_reverse_dma_direction.exit

target_reverse_dma_direction.exit:                ; preds = %if.end.i, %if.end11.target_reverse_dma_direction.exit_crit_edge
  %retval.0.i51 = phi i32 [ 0, %if.end11.target_reverse_dma_direction.exit_crit_edge ], [ %switch.select5.i, %if.end.i ]
  %dma_data_direction = getelementptr i8, ptr %se_cmd, i32 680
  %20 = ptrtoint ptr %dma_data_direction to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i51, ptr %dma_data_direction, align 8
  %trc_flags = getelementptr i8, ptr %se_cmd, i32 856
  %21 = ptrtoint ptr %trc_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %trc_flags, align 8
  %or = or i32 %22, 32
  store i32 %or, ptr %trc_flags, align 8
  %data_direction = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 6
  %23 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp = icmp eq i32 %24, 2
  br i1 %cmp, label %if.then13, label %target_reverse_dma_direction.exit.if.end25_crit_edge

target_reverse_dma_direction.exit.if.end25_crit_edge: ; preds = %target_reverse_dma_direction.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

if.then13:                                        ; preds = %target_reverse_dma_direction.exit
  %and = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then13.if.end19_crit_edge, label %if.then16

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  %and18 = and i32 %17, -513
  %25 = ptrtoint ptr %se_cmd_flags.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and18, ptr %se_cmd_flags.i, align 8
  %residual_count = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 13
  %26 = ptrtoint ptr %residual_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %residual_count, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then13.if.end19_crit_edge
  %27 = ptrtoint ptr %se_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %se_cmd_flags.i, align 8
  %or21 = or i32 %28, 1024
  store i32 %or21, ptr %se_cmd_flags.i, align 8
  %residual_count23 = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 13
  %29 = ptrtoint ptr %residual_count23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %residual_count23, align 8
  %add = add i32 %30, %11
  store i32 %add, ptr %residual_count23, align 8
  %31 = ptrtoint ptr %bufflen to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %bufflen, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.end19, %target_reverse_dma_direction.exit.if.end25_crit_edge
  %scsi_status = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 1
  %32 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %scsi_status, align 4
  %call26 = tail call i32 @qlt_xmit_response(ptr noundef %add.ptr, i32 noundef 2, i8 noundef zeroext %33) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then5, %do.body
  %retval.0 = phi i32 [ %call26, %if.end25 ], [ 0, %if.then5 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_queue_tm_rsp(ptr noundef %se_cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tmr_req = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 22
  %0 = ptrtoint ptr %se_tmr_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tmr_req, align 8
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_queue_tm_rsp.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_queue_tm_rsp, %if.then)) #18
          to label %do.end [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8
  %conv = zext i8 %3 to i32
  %response = getelementptr inbounds %struct.se_tmr_req, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %response, align 1
  %conv4 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_queue_tm_rsp.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.9, ptr noundef %add.ptr, i32 noundef %conv, i32 noundef %conv4) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %response5 = getelementptr inbounds %struct.se_tmr_req, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %response5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %response5, align 1
  %switch.tableidx = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %8 = icmp ult i8 %switch.tableidx, 5
  br i1 %8, label %switch.lookup, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %9 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.tcm_qla2xxx_queue_tm_rsp, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %10)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end.sw.epilog_crit_edge
  %.sink = phi i8 [ %switch.load, %switch.lookup ], [ 5, %do.end.sw.epilog_crit_edge ]
  %fc_tm_rsp12 = getelementptr i8, ptr %se_cmd, i32 -18
  %11 = ptrtoint ptr %fc_tm_rsp12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %fc_tm_rsp12, align 2
  tail call void @qlt_xmit_tm_rsp(ptr noundef %add.ptr) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_aborted_task(ptr noundef %se_cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %0 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %se_cmd_flags, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -8
  %sess = getelementptr i8, ptr %se_cmd, i32 448
  %2 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sess, align 8
  %sess_cmd_lock = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 17
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sess_cmd_lock) #18
  %sess_cmd_list = getelementptr i8, ptr %se_cmd, i32 440
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sess_cmd_list) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr i8, ptr %se_cmd, i32 444
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %sess_cmd_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sess_cmd_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %sess_cmd_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %sess_cmd_list, ptr %sess_cmd_list, align 4
  %prev.i3.i = getelementptr i8, ptr %se_cmd, i32 444
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sess_cmd_list, ptr %prev.i3.i, align 4
  %12 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sess, align 8
  %sess_cmd_lock7 = getelementptr inbounds %struct.fc_port, ptr %13, i32 0, i32 17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sess_cmd_lock7, i32 noundef %call3) #18
  %call8 = tail call i32 @qlt_abort_cmd(ptr noundef %add.ptr) #18
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcm_qla2xxx_make_lport(ptr nocapture noundef readnone %tf, ptr nocapture noundef readnone %group, ptr noundef %name) #3 align 64 {
entry:
  %wwpn = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wwpn) #18
  %0 = ptrtoint ptr %wwpn to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %wwpn, align 8, !annotation !366
  %call = call fastcc i32 @tcm_qla2xxx_parse_wwn(ptr noundef %name, ptr noundef nonnull %wwpn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 656) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #22
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wwpn, align 8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %call7.i.i, align 8
  %lport_name = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %call7.i.i, i32 0, i32 3
  %b.sroa.0.0.extract.shift.i = lshr i64 %3, 56
  %b.sroa.0.0.extract.trunc.i = trunc i64 %b.sroa.0.0.extract.shift.i to i32
  %b.sroa.5.0.extract.shift.i = lshr i64 %3, 48
  %b.sroa.5.0.extract.trunc.i = trunc i64 %b.sroa.5.0.extract.shift.i to i32
  %b.sroa.7.0.extract.shift.i = lshr i64 %3, 40
  %b.sroa.7.0.extract.trunc.i = trunc i64 %b.sroa.7.0.extract.shift.i to i32
  %b.sroa.9.0.extract.shift.i = lshr i64 %3, 32
  %b.sroa.9.0.extract.trunc.i = trunc i64 %b.sroa.9.0.extract.shift.i to i32
  %5 = trunc i64 %3 to i32
  %6 = lshr i32 %5, 24
  %7 = lshr i32 %5, 16
  %8 = lshr i32 %5, 8
  %conv2.i = and i32 %b.sroa.5.0.extract.trunc.i, 255
  %conv4.i = and i32 %b.sroa.7.0.extract.trunc.i, 255
  %conv6.i = and i32 %b.sroa.9.0.extract.trunc.i, 255
  %conv10.i = and i32 %7, 255
  %conv12.i = and i32 %8, 255
  %conv14.i = and i32 %5, 255
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %lport_name, i32 noundef 32, ptr noundef nonnull @.str.15, i32 noundef %b.sroa.0.0.extract.trunc.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %6, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #18
  %lport_naa_name = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %call7.i.i, i32 0, i32 4
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %lport_naa_name, ptr noundef nonnull @.str.12, i64 noundef %3)
  %call9 = tail call fastcc i32 @tcm_qla2xxx_init_lport(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end12, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end12:                                         ; preds = %if.end6
  %call13 = tail call i32 @qlt_lport_register(ptr noundef nonnull %call7.i.i, i64 noundef %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @tcm_qla2xxx_lport_register_cb) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end16, label %out_lport

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %lport_wwn = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %call7.i.i, i32 0, i32 10
  br label %cleanup

out_lport:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %lport_loopid_map = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %lport_loopid_map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lport_loopid_map, align 4
  tail call void @vfree(ptr noundef %10) #18
  %lport_fcport_map = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %call7.i.i, i32 0, i32 5
  tail call void @btree_destroy(ptr noundef %lport_fcport_map) #18
  br label %out

out:                                              ; preds = %out_lport, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end6.out_crit_edge ], [ %call13, %out_lport ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #18
  %11 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %out ], [ %lport_wwn, %if.end16 ], [ inttoptr (i32 -12 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwpn) #18
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_drop_lport(ptr noundef %wwn) #3 align 64 {
entry:
  %key.addr.i = alloca i32, align 4
  %key = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %qla_vha = getelementptr i8, ptr %wwn, i32 -300
  %0 = ptrtoint ptr %qla_vha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qla_vha, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key) #18
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %key, align 4
  %qla_tgt = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 53, i32 3
  %3 = ptrtoint ptr %qla_tgt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qla_tgt, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tgt_stopped = getelementptr inbounds %struct.qla_tgt, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %tgt_stopped to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tgt_stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @qlt_stop_phase2(ptr noundef nonnull %4) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @qlt_lport_deregister(ptr noundef %1) #18
  %lport_loopid_map = getelementptr i8, ptr %wwn, i32 -304
  %7 = ptrtoint ptr %lport_loopid_map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lport_loopid_map, align 4
  tail call void @vfree(ptr noundef %8) #18
  %lport_fcport_map = getelementptr i8, ptr %wwn, i32 -316
  %call.i = call ptr @btree_last(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key) #18
  %tobool6.not23 = icmp eq ptr %call.i, null
  br i1 %tobool6.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %9 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i)
  %11 = ptrtoint ptr %key.addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %key.addr.i, align 4
  %call.i21 = call ptr @btree_remove(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key.addr.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i)
  %call.i22 = call ptr @btree_get_prev(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key) #18
  %tobool6.not = icmp eq ptr %call.i22, null
  br i1 %tobool6.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %wwn, i32 -404
  call void @btree_destroy(ptr noundef %lport_fcport_map) #18
  call void @kfree(ptr noundef %add.ptr) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcm_qla2xxx_make_tpg(ptr noundef %wwn, ptr noundef %name) #3 align 64 {
entry:
  %tpgt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wwn, i32 -404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tpgt) #18
  %0 = ptrtoint ptr %tpgt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tpgt, align 4, !annotation !366
  %strncmp = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.86, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strncmp)
  %cmp53.not = icmp eq i32 %strncmp, 0
  br i1 %cmp53.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr2 = getelementptr i8, ptr %name, i32 5
  %call.i = call i32 @_kstrtoul(ptr noundef %add.ptr2, i32 noundef 10, ptr noundef nonnull %tpgt) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %1 = ptrtoint ptr %tpgt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tpgt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %2)
  %cmp4 = icmp ugt i32 %2, 65535
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp8.not = icmp eq i32 %2, 1
  br i1 %cmp8.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #22
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 872) #21
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %do.end19, label %if.end23

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #22
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %lport24 = getelementptr inbounds %struct.tcm_qla2xxx_tpg, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %lport24 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %lport24, align 8
  %5 = ptrtoint ptr %tpgt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tpgt, align 4
  %conv = trunc i32 %6 to i16
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %call7.i.i, align 8
  %tpg_attrib = getelementptr inbounds %struct.tcm_qla2xxx_tpg, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %tpg_attrib, align 4
  %demo_mode_write_protect = getelementptr inbounds %struct.tcm_qla2xxx_tpg, ptr %call7.i.i, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %demo_mode_write_protect, align 4
  %cache_dynamic_acls = getelementptr inbounds %struct.tcm_qla2xxx_tpg, ptr %call7.i.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %cache_dynamic_acls, align 8
  %demo_mode_login_only = getelementptr inbounds %struct.tcm_qla2xxx_tpg, ptr %call7.i.i, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %demo_mode_login_only to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %demo_mode_login_only, align 4
  %jam_host = getelementptr inbounds %struct.tcm_qla2xxx_tpg, ptr %call7.i.i, i32 0, i32 3, i32 6
  %12 = ptrtoint ptr %jam_host to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %jam_host, align 4
  %se_tpg = getelementptr inbounds %struct.tcm_qla2xxx_tpg, ptr %call7.i.i, i32 0, i32 4
  %call29 = call i32 @core_tpg_register(ptr noundef %wwn, ptr noundef %se_tpg, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  %tpg_1 = getelementptr i8, ptr %wwn, i32 -4
  %13 = ptrtoint ptr %tpg_1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %tpg_1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then32, %do.end19, %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -38 to ptr), %do.end ], [ null, %if.then32 ], [ %se_tpg, %if.end33 ], [ inttoptr (i32 -12 to ptr), %do.end19 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tpgt) #18
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_enable_tpg(ptr noundef %se_tpg, i1 noundef zeroext %enable) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg_wwn = getelementptr inbounds %struct.se_portal_group, ptr %se_tpg, i32 0, i32 11
  %0 = ptrtoint ptr %se_tpg_wwn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn, align 4
  %qla_vha = getelementptr i8, ptr %1, i32 -300
  %2 = ptrtoint ptr %qla_vha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qla_vha, align 8
  %lport_tpg_enabled = getelementptr i8, ptr %se_tpg, i32 -36
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lport_tpg_enabled, i32 noundef 4) #18
  %4 = ptrtoint ptr %lport_tpg_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %lport_tpg_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lport_tpg_enabled, i32 noundef 4) #18
  %6 = ptrtoint ptr %lport_tpg_enabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %lport_tpg_enabled, align 4
  tail call void @qlt_enable_vha(ptr noundef %3) #18
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %tobool4.not, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lport_tpg_enabled, i32 noundef 4) #18
  %7 = ptrtoint ptr %lport_tpg_enabled to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %lport_tpg_enabled, align 4
  %qla_tgt = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 53, i32 3
  %8 = ptrtoint ptr %qla_tgt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qla_tgt, align 4
  %call13 = tail call i32 @qlt_stop_phase1(ptr noundef %9) #18
  %10 = ptrtoint ptr %qla_tgt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qla_tgt, align 4
  tail call void @qlt_stop_phase2(ptr noundef %11) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end11 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_drop_tpg(ptr noundef %se_tpg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lport1 = getelementptr i8, ptr %se_tpg, i32 -32
  %0 = ptrtoint ptr %lport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport1, align 4
  %qla_vha = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %qla_vha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qla_vha, align 8
  %qla_tgt = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 53, i32 3
  %4 = ptrtoint ptr %qla_tgt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qla_tgt, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tgt_stop = getelementptr inbounds %struct.qla_tgt, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %tgt_stop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tgt_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 @qlt_stop_phase1(ptr noundef nonnull %5) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -40
  %call7 = tail call i32 @core_tpg_deregister(ptr noundef %se_tpg) #18
  %tpg_1 = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %tpg_1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tpg_1, align 8
  tail call void @kfree(ptr noundef %add.ptr) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_init_nodeacl(ptr nocapture noundef writeonly %se_nacl, ptr noundef %name) #3 align 64 {
entry:
  %wwnn = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wwnn) #18
  %0 = ptrtoint ptr %wwnn to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %wwnn, align 8, !annotation !366
  %call = call fastcc i32 @tcm_qla2xxx_parse_wwn(ptr noundef %name, ptr noundef nonnull %wwnn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %1 = ptrtoint ptr %wwnn to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %wwnn, align 8
  %nport_wwnn = getelementptr inbounds %struct.tcm_qla2xxx_nacl, ptr %se_nacl, i32 0, i32 2
  %3 = ptrtoint ptr %nport_wwnn to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %nport_wwnn, align 8
  %nport_name = getelementptr inbounds %struct.tcm_qla2xxx_nacl, ptr %se_nacl, i32 0, i32 3
  %b.sroa.0.0.extract.shift.i = lshr i64 %2, 56
  %b.sroa.0.0.extract.trunc.i = trunc i64 %b.sroa.0.0.extract.shift.i to i32
  %b.sroa.5.0.extract.shift.i = lshr i64 %2, 48
  %b.sroa.5.0.extract.trunc.i = trunc i64 %b.sroa.5.0.extract.shift.i to i32
  %b.sroa.7.0.extract.shift.i = lshr i64 %2, 40
  %b.sroa.7.0.extract.trunc.i = trunc i64 %b.sroa.7.0.extract.shift.i to i32
  %b.sroa.9.0.extract.shift.i = lshr i64 %2, 32
  %b.sroa.9.0.extract.trunc.i = trunc i64 %b.sroa.9.0.extract.shift.i to i32
  %4 = trunc i64 %2 to i32
  %5 = lshr i32 %4, 24
  %6 = lshr i32 %4, 16
  %7 = lshr i32 %4, 8
  %conv2.i = and i32 %b.sroa.5.0.extract.trunc.i, 255
  %conv4.i = and i32 %b.sroa.7.0.extract.trunc.i, 255
  %conv6.i = and i32 %b.sroa.9.0.extract.trunc.i, 255
  %conv10.i = and i32 %6, 255
  %conv12.i = and i32 %7, 255
  %conv14.i = and i32 %4, 255
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %nport_name, i32 noundef 32, ptr noundef nonnull @.str.15, i32 noundef %b.sroa.0.0.extract.trunc.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %5, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwnn) #18
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_put_sess_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlt_free_mcmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlt_free_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_stop_session(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_put_sess(ptr noundef %sess) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sess, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %sess_kref = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 18
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sess_kref, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !362
  tail call void @llvm.prefetch.p0(ptr %sess_kref, i32 1, i32 3, i32 1) #18
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sess_kref, ptr %sess_kref, i32 1, ptr elementtype(i32) %sess_kref) #18, !srcloc !363
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !359

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %sess_kref, i32 noundef 3) #18
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !364
  tail call void @qlt_unreg_sess(ptr noundef nonnull %sess) #18
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlt_unreg_sess(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_generic_request_failure(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlt_rdy_to_xfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlt_xmit_response(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlt_xmit_tm_rsp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlt_abort_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcm_qla2xxx_parse_wwn(ptr noundef %name, ptr nocapture noundef %wwn) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wwn to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %wwn, align 8
  %arrayidx = getelementptr i8, ptr %name, i32 31
  %cmp4 = icmp ugt ptr %arrayidx, %name
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %cp.07 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %name, %entry.for.body_crit_edge ]
  %pos.06 = phi i32 [ %pos.2, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %byte.05 = phi i32 [ %byte.2, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %cp.07 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cp.07, align 1
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp1 = icmp eq i8 %2, 10
  br i1 %cmp1, label %land.lhs.true, label %for.body.land.lhs.true7_crit_edge

for.body.land.lhs.true7_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true7

land.lhs.true:                                    ; preds = %for.body
  %arrayidx3 = getelementptr i8, ptr %cp.07, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp5 = icmp eq i8 %4, 0
  br i1 %cmp5, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.land.lhs.true7_crit_edge

land.lhs.true.land.lhs.true7_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true7

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true.land.lhs.true7_crit_edge, %for.body.land.lhs.true7_crit_edge
  %inc = add i32 %pos.06, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pos.06)
  %cmp8 = icmp eq i32 %pos.06, 2
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true7.if.end20_crit_edge

land.lhs.true7.if.end20_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %inc11 = add i32 %byte.05, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %byte.05)
  %cmp12 = icmp ult i32 %byte.05, 7
  br i1 %cmp12, label %if.then14, label %land.lhs.true10.if.end20_crit_edge

land.lhs.true10.if.end20_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then14:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %2)
  %cmp16 = icmp eq i8 %2, 58
  br i1 %cmp16, label %if.then14.for.inc_crit_edge, label %if.then14.do.body_crit_edge

if.then14.do.body_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end20:                                         ; preds = %land.lhs.true10.if.end20_crit_edge, %land.lhs.true7.if.end20_crit_edge
  %byte.1 = phi i32 [ %inc11, %land.lhs.true10.if.end20_crit_edge ], [ %byte.05, %land.lhs.true7.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp22 = icmp eq i8 %2, 0
  br i1 %cmp22, label %land.lhs.true26, label %if.end31

land.lhs.true26:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %byte.1)
  %cmp27.not = icmp eq i32 %byte.1, 8
  br i1 %cmp27.not, label %if.end30, label %land.lhs.true26.do.body_crit_edge

land.lhs.true26.do.body_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.end30:                                         ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #20
  %sub.ptr.lhs.cast = ptrtoint ptr %cp.07 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %name to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  %5 = add nsw i32 %conv, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %6 = icmp ugt i32 %5, 9
  br i1 %6, label %if.else, label %if.end31.if.end55_crit_edge

if.end31.if.end55_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55

if.else:                                          ; preds = %if.end31
  %arrayidx37 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %7 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %8 to i32
  %and = and i32 %conv38, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp39.not = icmp eq i32 %and, 0
  %and45 = and i32 %conv38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %cmp46.not = icmp eq i32 %and45, 0
  %or.cond = or i1 %cmp39.not, %cmp46.not
  br i1 %or.cond, label %if.else.do.body_crit_edge, label %if.then49

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.then49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 0
  %sub.i = add i8 %2, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %2, i8 %sub.i
  %conv51 = zext i8 %spec.select.i to i32
  %add = add nsw i32 %conv51, -87
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %if.end31.if.end55_crit_edge
  %nibble.0 = phi i32 [ %add, %if.then49 ], [ %5, %if.end31.if.end55_crit_edge ]
  %10 = ptrtoint ptr %wwn to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %wwn, align 8
  %shl = shl i64 %11, 4
  %conv56 = zext i32 %nibble.0 to i64
  %or = or i64 %shl, %conv56
  store i64 %or, ptr %wwn, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end55, %if.then14.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %byte.2 = phi i32 [ %byte.05, %land.lhs.true.for.inc_crit_edge ], [ %inc11, %if.then14.for.inc_crit_edge ], [ %byte.1, %if.end55 ]
  %pos.2 = phi i32 [ %pos.06, %land.lhs.true.for.inc_crit_edge ], [ 0, %if.then14.for.inc_crit_edge ], [ %inc, %if.end55 ]
  %incdec.ptr = getelementptr i8, ptr %cp.07, i32 1
  %exitcond.not = icmp eq ptr %incdec.ptr, %arrayidx
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.else.do.body_crit_edge, %land.lhs.true26.do.body_crit_edge, %if.then14.do.body_crit_edge, %entry.do.body_crit_edge
  %cp.03 = phi ptr [ %cp.07, %land.lhs.true26.do.body_crit_edge ], [ %name, %entry.do.body_crit_edge ], [ %cp.07, %if.else.do.body_crit_edge ], [ %cp.07, %if.then14.do.body_crit_edge ], [ %arrayidx, %for.inc.do.body_crit_edge ]
  %byte.3 = phi i32 [ %byte.1, %land.lhs.true26.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ], [ %byte.1, %if.else.do.body_crit_edge ], [ %inc11, %if.then14.do.body_crit_edge ], [ %byte.2, %for.inc.do.body_crit_edge ]
  %pos.3 = phi i32 [ %inc, %land.lhs.true26.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ], [ %inc, %if.else.do.body_crit_edge ], [ 0, %if.then14.do.body_crit_edge ], [ %pos.2, %for.inc.do.body_crit_edge ]
  %err.0 = phi i32 [ 2, %land.lhs.true26.do.body_crit_edge ], [ 4, %entry.do.body_crit_edge ], [ 3, %if.else.do.body_crit_edge ], [ 1, %if.then14.do.body_crit_edge ], [ 4, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_parse_wwn.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_parse_wwn, %if.then61)) #18
          to label %cleanup [label %if.then61], !srcloc !365

if.then61:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %sub.ptr.lhs.cast62 = ptrtoint ptr %cp.03 to i32
  %sub.ptr.rhs.cast63 = ptrtoint ptr %name to i32
  %sub.ptr.sub64 = sub i32 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_parse_wwn.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.14, i32 noundef %err.0, i32 noundef %sub.ptr.sub64, i32 noundef %pos.3, i32 noundef %byte.3) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body, %if.end30
  %retval.0 = phi i32 [ %sub.ptr.sub, %if.end30 ], [ -1, %if.then61 ], [ -1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcm_qla2xxx_init_lport(ptr noundef %lport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lport_fcport_map = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %lport, i32 0, i32 5
  %call.i = tail call i32 @btree_init(ptr noundef %lport_fcport_map) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call noalias ptr @vzalloc(i32 noundef 262144) #23
  %lport_loopid_map = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %lport, i32 0, i32 6
  %0 = ptrtoint ptr %lport_loopid_map to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %lport_loopid_map, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.end9, label %do.body14

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 262144) #22
  tail call void @btree_destroy(ptr noundef %lport_fcport_map) #18
  br label %cleanup

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_init_lport.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_init_lport, %if.then20)) #18
          to label %cleanup [label %if.then20], !srcloc !365

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_init_lport.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.21, i32 noundef 262144) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body14, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -12, %do.end9 ], [ 0, %if.then20 ], [ 0, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlt_lport_register(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_qla2xxx_lport_register_cb(ptr noundef %vha, ptr noundef %target_lport_ptr, i64 noundef %npiv_wwpn, i64 noundef %npiv_wwnn) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %tgt_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 281, i32 8
  %2 = ptrtoint ptr %tgt_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tcm_qla2xxx_template, ptr %tgt_ops, align 4
  %vha_tgt = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 53
  %3 = ptrtoint ptr %vha_tgt to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %target_lport_ptr, ptr %vha_tgt, align 8
  %qla_vha = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %target_lport_ptr, i32 0, i32 7
  %4 = ptrtoint ptr %qla_vha to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vha, ptr %qla_vha, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btree_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcm_qla2xxx_find_cmd_by_tag(ptr noundef %sess, i64 noundef %tag) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 15
  %0 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body1:                                         ; preds = %entry
  %sess_cmd_lock = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 17
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sess_cmd_lock) #18
  %sess_cmd_list = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body1
  %.pn.in = phi ptr [ %sess_cmd_list, %do.body1 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 8
  %cmp8.not = icmp eq ptr %.pn, %sess_cmd_list
  br i1 %cmp8.not, label %for.cond.done_crit_edge, label %for.body

for.cond.done_crit_edge:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %done

for.body:                                         ; preds = %for.cond
  %tag10 = getelementptr i8, ptr %.pn, i32 -424
  %3 = ptrtoint ptr %tag10 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tag10, align 8
  %cmp11 = icmp eq i64 %4, %tag
  br i1 %cmp11, label %done.split.loop.exit29, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

done.split.loop.exit29:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %cmd.0.le = getelementptr i8, ptr %.pn, i32 -448
  br label %done

done:                                             ; preds = %done.split.loop.exit29, %for.cond.done_crit_edge
  %cmd.1 = phi ptr [ %cmd.0.le, %done.split.loop.exit29 ], [ null, %for.cond.done_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sess_cmd_lock, i32 noundef %call2) #18
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cmd.1, %done ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_handle_cmd(ptr nocapture noundef readnone %vha, ptr noundef %cmd, ptr noundef %cdb, i32 noundef %data_length, i32 noundef %fcp_task_attr, i32 noundef %data_dir, i32 noundef %bidi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_cmd1 = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bidi)
  %tobool.not = icmp eq i32 %bidi, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 3
  %cpuid = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 2, i32 59
  %0 = ptrtoint ptr %cpuid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpuid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  %or3 = or i32 %spec.select, 8
  %target_flags.1 = select i1 %cmp.not, i32 %spec.select, i32 %or3
  %sess5 = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %sess5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sess5, align 8
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %do.end, label %if.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #22
  br label %cleanup

if.end8:                                          ; preds = %entry
  %se_sess9 = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %se_sess9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_sess9, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #22
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %se_tpg18 = getelementptr inbounds %struct.se_session, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %se_tpg18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_tpg18, align 4
  %jam_host = getelementptr i8, ptr %7, i32 -4
  %8 = ptrtoint ptr %jam_host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %jam_host, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool20.not = icmp eq i32 %9, 0
  br i1 %tobool20.not, label %if.end24, label %if.end17.cleanup_crit_edge, !prof !359

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %qpair = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 5
  %10 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qpair, align 4
  %tgt_counters = getelementptr inbounds %struct.qla_qpair, ptr %11, i32 0, i32 24
  %12 = ptrtoint ptr %tgt_counters to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tgt_counters, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %tgt_counters, align 8
  %sess_cmd_lock = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 17
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sess_cmd_lock) #18
  %sess_cmd_list = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 3
  %sess_cmd_list35 = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 16, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %sess_cmd_list, ptr noundef %15, ptr noundef %sess_cmd_list35) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end24.list_add_tail.exit_crit_edge

if.end24.list_add_tail.exit_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sess_cmd_list, ptr %prev.i, align 4
  %17 = ptrtoint ptr %sess_cmd_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sess_cmd_list35, ptr %sess_cmd_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %sess_cmd_list, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end24.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sess_cmd_lock, i32 noundef %call30) #18
  %sense_buffer = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 9
  %unpacked_lun = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 18
  %20 = ptrtoint ptr %unpacked_lun to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %unpacked_lun, align 8
  %call37 = tail call i32 @target_init_cmd(ptr noundef %se_cmd1, ptr noundef nonnull %5, ptr noundef %sense_buffer, i64 noundef %21, i32 noundef %data_length, i32 noundef %fcp_task_attr, i32 noundef %data_dir, i32 noundef %target_flags.1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end40:                                         ; preds = %list_add_tail.exit
  %call41 = tail call i32 @target_submit_prep(ptr noundef %se_cmd1, ptr noundef %cdb, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @target_submit(ptr noundef %se_cmd1) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end40.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end14, %do.end
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -22, %do.end14 ], [ -22, %do.end ], [ 0, %if.end17.cleanup_crit_edge ], [ %call37, %list_add_tail.exit.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_handle_data(ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %trc_flags = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 53
  %0 = ptrtoint ptr %trc_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trc_flags, align 8
  %or = or i32 %1, 262144
  store i32 %or, ptr %trc_flags, align 8
  %cmd_in_wq = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 11
  %2 = ptrtoint ptr %cmd_in_wq to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %cmd_in_wq, align 8
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, ptr %cmd_in_wq, align 8
  %work = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 8
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #18
  %3 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @tcm_qla2xxx_handle_data.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry4 = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 8, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tcm_qla2xxx_handle_data_work, ptr %func, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !349) #18
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %11 = load ptr, ptr @tcm_qla2xxx_free_wq, align 4
  %call7 = tail call zeroext i1 @queue_work_on(i32 noundef %10, ptr noundef %11, ptr noundef %work) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_handle_tmr(ptr noundef %mcmd, i64 noundef %lun, i16 noundef zeroext %tmr_func, i32 noundef %tag) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, ptr %mcmd, i32 0, i32 5
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 8
  %se_cmd2 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, ptr %mcmd, i32 0, i32 8
  %conv = zext i16 %tmr_func to i32
  %2 = zext i16 %tmr_func to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %tmr_func, label %do.body119 [
    i16 -5, label %do.body
    i16 -6, label %do.body6
    i16 64, label %do.body25
    i16 32, label %do.body44
    i16 16, label %do.body63
    i16 4, label %do.body82
    i16 2, label %do.body101
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_handle_tmr, %if.then)) #18
          to label %sw.epilog [label %if.then], !srcloc !365

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %vha = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vha, align 8
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.29, i32 noundef %6) #18
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_handle_tmr, %if.then18)) #18
          to label %sw.epilog [label %if.then18], !srcloc !365

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #20
  %vha19 = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %vha19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vha19, align 8
  %host_no20 = getelementptr inbounds %struct.scsi_qla_host, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %host_no20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %host_no20, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.30, i32 noundef %10) #18
  br label %sw.epilog

do.body25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_handle_tmr, %if.then37)) #18
          to label %sw.epilog [label %if.then37], !srcloc !365

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #20
  %vha38 = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %vha38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vha38, align 8
  %host_no39 = getelementptr inbounds %struct.scsi_qla_host, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %host_no39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %host_no39, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.31, i32 noundef %14) #18
  br label %sw.epilog

do.body44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_handle_tmr, %if.then56)) #18
          to label %sw.epilog [label %if.then56], !srcloc !365

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #20
  %vha57 = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %vha57 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vha57, align 8
  %host_no58 = getelementptr inbounds %struct.scsi_qla_host, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %host_no58 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %host_no58, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.32, i32 noundef %18) #18
  br label %sw.epilog

do.body63:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_handle_tmr, %if.then75)) #18
          to label %sw.epilog [label %if.then75], !srcloc !365

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #20
  %vha76 = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %vha76 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vha76, align 8
  %host_no77 = getelementptr inbounds %struct.scsi_qla_host, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %host_no77 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %host_no77, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.33, i32 noundef %22) #18
  br label %sw.epilog

do.body82:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_handle_tmr, %if.then94)) #18
          to label %sw.epilog [label %if.then94], !srcloc !365

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #20
  %vha95 = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %vha95 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vha95, align 8
  %host_no96 = getelementptr inbounds %struct.scsi_qla_host, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %host_no96 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %host_no96, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.34, i32 noundef %26) #18
  br label %sw.epilog

do.body101:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_handle_tmr, %if.then113)) #18
          to label %sw.epilog [label %if.then113], !srcloc !365

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #20
  %vha114 = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %vha114 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vha114, align 8
  %host_no115 = getelementptr inbounds %struct.scsi_qla_host, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %host_no115 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %host_no115, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.35, i32 noundef %30) #18
  br label %sw.epilog

do.body119:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_handle_tmr, %if.then131)) #18
          to label %cleanup [label %if.then131], !srcloc !365

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #20
  %vha132 = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %vha132 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vha132, align 8
  %host_no133 = getelementptr inbounds %struct.scsi_qla_host, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %host_no133 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %host_no133, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.36, i32 noundef %34, i32 noundef %conv) #18
  br label %cleanup

sw.epilog:                                        ; preds = %if.then113, %do.body101, %if.then94, %do.body82, %if.then75, %do.body63, %if.then56, %do.body44, %if.then37, %do.body25, %if.then18, %do.body6, %if.then, %do.body
  %transl_tmr_func.0 = phi i8 [ 1, %if.then ], [ 1, %if.then18 ], [ 3, %if.then37 ], [ 6, %if.then56 ], [ 5, %if.then75 ], [ 4, %if.then94 ], [ 2, %if.then113 ], [ 1, %do.body ], [ 1, %do.body6 ], [ 3, %do.body25 ], [ 6, %do.body44 ], [ 5, %do.body63 ], [ 4, %do.body82 ], [ 2, %do.body101 ]
  %se_sess = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 15
  %35 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %se_sess, align 4
  %conv139 = zext i32 %tag to i64
  %call140 = tail call i32 @target_submit_tmr(ptr noundef %se_cmd2, ptr noundef %36, ptr noundef null, i64 noundef %lun, ptr noundef %mcmd, i8 noundef zeroext %transl_tmr_func.0, i32 noundef 2592, i64 noundef %conv139, i32 noundef 2) #18
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then131, %do.body119
  %retval.0 = phi i32 [ %call140, %sw.epilog ], [ -38, %if.then131 ], [ -38, %do.body119 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcm_qla2xxx_get_cmd(ptr nocapture noundef readonly %sess) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess1 = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 15
  %0 = ptrtoint ptr %se_sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess1, align 4
  %sess_tag_pool = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 14
  %2 = tail call i32 @llvm.read_register.i32(metadata !349) #18
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !367
  %6 = tail call i32 @llvm.read_register.i32(metadata !349) #18
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu1.i, align 4
  %call2.i = tail call i32 @__sbitmap_queue_get(ptr noundef %sess_tag_pool) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !368
  %10 = tail call i32 @llvm.read_register.i32(metadata !349) #18
  %and.i.i.i6.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i6.i to ptr
  %preempt_count.i.i7.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i7.i, align 4
  %sub.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sess_cmd_map = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %sess_cmd_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sess_cmd_map, align 4
  %arrayidx = getelementptr %struct.qla_tgt_cmd, ptr %15, i32 %call2.i
  %16 = call ptr @memset(ptr %arrayidx, i32 0, i32 872)
  %map_tag = getelementptr %struct.qla_tgt_cmd, ptr %15, i32 %call2.i, i32 2, i32 8
  %17 = ptrtoint ptr %map_tag to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call2.i, ptr %map_tag, align 4
  %map_cpu = getelementptr %struct.qla_tgt_cmd, ptr %15, i32 %call2.i, i32 2, i32 9
  %18 = ptrtoint ptr %map_cpu to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %9, ptr %map_cpu, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_rel_cmd(ptr nocapture noundef readonly %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sess = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %se_sess = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_sess, align 4
  %sess_tag_pool.i = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 14
  %map_tag.i = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %map_tag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %map_tag.i, align 4
  %map_cpu.i = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 2, i32 9
  %6 = ptrtoint ptr %map_cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map_cpu.i, align 8
  tail call void @sbitmap_queue_clear(ptr noundef %sess_tag_pool.i, i32 noundef %5, i32 noundef %7) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_free_cmd(ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %qpair = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qpair, align 4
  %core_qla_free_cmd = getelementptr inbounds %struct.qla_qpair, ptr %1, i32 0, i32 24, i32 5
  %2 = ptrtoint ptr %core_qla_free_cmd to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %core_qla_free_cmd, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %core_qla_free_cmd, align 8
  %cmd_in_wq = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 11
  %4 = ptrtoint ptr %cmd_in_wq to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %cmd_in_wq, align 8
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, ptr %cmd_in_wq, align 8
  %trc_flags = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 53
  %5 = ptrtoint ptr %trc_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %trc_flags, align 8
  %and = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !359

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 309, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %trc_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %trc_flags, align 8
  %or = or i32 %8, 32768
  store i32 %or, ptr %trc_flags, align 8
  %work = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 8
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #18
  %9 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @tcm_qla2xxx_free_cmd.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry25 = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %entry25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry25, ptr %entry25, align 4
  %prev.i = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 8, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry25, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @tcm_qla2xxx_complete_free, ptr %func, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !349) #18
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %17 = load ptr, ptr @tcm_qla2xxx_free_wq, align 4
  %call30 = tail call zeroext i1 @queue_work_on(i32 noundef %16, ptr noundef %17, ptr noundef %work) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_free_mcmd(ptr noundef %mcmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mcmd, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %free_work = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, ptr %mcmd, i32 0, i32 9
  tail call void @__init_work(ptr noundef %free_work, i32 noundef 0) #18
  %0 = ptrtoint ptr %free_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %free_work, align 8
  %lockdep_map = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, ptr %mcmd, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.37, ptr noundef nonnull @tcm_qla2xxx_free_mcmd.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry4 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, ptr %mcmd, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, ptr %mcmd, i32 0, i32 9, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, ptr %mcmd, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tcm_qla2xxx_complete_mcmd, ptr %func, align 4
  %4 = load ptr, ptr @tcm_qla2xxx_free_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %free_work) #18
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_free_session(ptr nocapture noundef readonly %sess) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess3 = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 15
  %0 = ptrtoint ptr %se_sess3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess3, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #22
  tail call void @dump_stack() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %tgt1 = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 19
  %2 = ptrtoint ptr %tgt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgt1, align 8
  %ha2 = getelementptr inbounds %struct.qla_tgt, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ha2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %vha_tgt = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %vha_tgt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vha_tgt, align 8
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #22
  tail call void @dump_stack() #22
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @target_wait_for_sess_cmds(ptr noundef nonnull %1) #18
  tail call void @target_remove_session(ptr noundef nonnull %1) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_check_initiator_node_acl(ptr nocapture noundef readonly %vha, ptr noundef %fc_wwpn, ptr noundef %qlat_sess) #3 align 64 {
entry:
  %port_name = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %port_name) #18
  %cur_fw_xcb_count = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 147
  %2 = ptrtoint ptr %cur_fw_xcb_count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cur_fw_xcb_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %narrow = select i1 %tobool.not, i16 2088, i16 %3
  %spec.select = zext i16 %narrow to i32
  %vha_tgt = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 53
  %4 = ptrtoint ptr %vha_tgt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vha_tgt, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #22
  tail call void @dump_stack() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %tpg_1 = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %tpg_1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tpg_1, align 8
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #22
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %8 = call ptr @memset(ptr %port_name, i32 0, i32 36)
  %call12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %port_name, i32 noundef 36, ptr noundef nonnull @.str.47, ptr noundef %fc_wwpn)
  %se_tpg = getelementptr inbounds %struct.tcm_qla2xxx_tpg, ptr %7, i32 0, i32 4
  %call14 = call ptr @target_setup_session(ptr noundef %se_tpg, i32 noundef %spec.select, i32 noundef 872, i32 noundef 63, ptr noundef nonnull %port_name, ptr noundef %qlat_sess, ptr noundef nonnull @tcm_qla2xxx_session_cb) #18
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call14 to i32
  %spec.select30 = select i1 %cmp.i, i32 %9, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end8 ], [ -22, %do.end ], [ %spec.select30, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %port_name) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_update_sess(ptr noundef %sess, [1 x i32] %s_id.coerce, i16 noundef zeroext %loop_id, i1 noundef zeroext %conf_compl_supported) #3 align 64 {
entry:
  %key.addr.i280 = alloca i32, align 4
  %key.addr.i278 = alloca i32, align 4
  %key.addr.i276 = alloca i32, align 4
  %key.addr.i274 = alloca i32, align 4
  %key.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %s_id.coerce.fca.0.extract = extractvalue [1 x i32] %s_id.coerce, 0
  %s_id.sroa.0.0.extract.shift = lshr i32 %s_id.coerce.fca.0.extract, 24
  %s_id.sroa.0.0.extract.trunc = trunc i32 %s_id.sroa.0.0.extract.shift to i8
  %s_id.sroa.7.0.extract.shift = lshr i32 %s_id.coerce.fca.0.extract, 16
  %s_id.sroa.7.0.extract.trunc = trunc i32 %s_id.sroa.7.0.extract.shift to i8
  %s_id.sroa.10.0.extract.shift = lshr i32 %s_id.coerce.fca.0.extract, 8
  %s_id.sroa.10.0.extract.trunc = trunc i32 %s_id.sroa.10.0.extract.shift to i8
  %s_id.sroa.13.0.extract.trunc = trunc i32 %s_id.coerce.fca.0.extract to i8
  %tgt1 = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 19
  %0 = ptrtoint ptr %tgt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgt1, align 8
  %ha2 = getelementptr inbounds %struct.qla_tgt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ha2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %vha_tgt = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %vha_tgt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vha_tgt, align 8
  %se_sess = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 15
  %10 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_sess, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %se_node_acl, align 8
  %loop_id3 = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 7
  %14 = ptrtoint ptr %loop_id3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %loop_id3, align 4
  %conv4 = zext i16 %loop_id to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %loop_id)
  %cmp.not = icmp eq i16 %15, %loop_id
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %d_id = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 6
  %16 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %d_id, align 8
  %cmp8.not.unshifted = xor i32 %bf.load, %s_id.coerce.fca.0.extract
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp8.not.unshifted)
  %cmp8.not = icmp ult i32 %cmp8.not.unshifted, 256
  br i1 %cmp8.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %port_name = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 5
  %conv12 = zext i16 %15 to i32
  %d_id14 = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 6
  %17 = ptrtoint ptr %d_id14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %d_id14, align 8
  %conv15 = zext i8 %18 to i32
  %area = getelementptr inbounds %struct.anon.84, ptr %d_id14, i32 0, i32 1
  %19 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %area, align 1
  %conv17 = zext i8 %20 to i32
  %al_pa = getelementptr inbounds %struct.anon.84, ptr %d_id14, i32 0, i32 2
  %21 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %al_pa, align 2
  %conv19 = zext i8 %22 to i32
  %conv23 = and i32 %s_id.sroa.7.0.extract.shift, 255
  %conv25 = and i32 %s_id.sroa.10.0.extract.shift, 255
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %sess, ptr noundef %port_name, i32 noundef %conv12, i32 noundef %conv4, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %s_id.sroa.0.0.extract.shift, i32 noundef %conv23, i32 noundef %conv25) #22
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false.if.end_crit_edge
  %23 = ptrtoint ptr %loop_id3 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %loop_id3, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %loop_id)
  %cmp30.not = icmp eq i16 %24, %loop_id
  br i1 %cmp30.not, label %if.end.if.end49_crit_edge, label %if.then32

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

if.then32:                                        ; preds = %if.end
  %conv28 = zext i16 %24 to i32
  %lport_loopid_map = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %9, i32 0, i32 6
  %25 = ptrtoint ptr %lport_loopid_map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lport_loopid_map, align 4
  %arrayidx = getelementptr %struct.tcm_qla2xxx_fc_loopid, ptr %26, i32 %conv28
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %cmp35 = icmp eq ptr %28, %13
  br i1 %cmp35, label %if.then37, label %if.then32.if.end43_crit_edge

if.then32.if.end43_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.then37:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %if.then32.if.end43_crit_edge
  %30 = ptrtoint ptr %lport_loopid_map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lport_loopid_map, align 4
  %arrayidx46 = getelementptr %struct.tcm_qla2xxx_fc_loopid, ptr %31, i32 %conv4
  %32 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %13, ptr %arrayidx46, align 4
  %33 = ptrtoint ptr %loop_id3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %loop_id, ptr %loop_id3, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end43, %if.end.if.end49_crit_edge
  %d_id50 = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 6
  %34 = ptrtoint ptr %d_id50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load51 = load i32, ptr %d_id50, align 8
  %s_id.sroa.10.0.insert.ext264 = and i32 %s_id.sroa.10.0.extract.shift, 255
  %s_id.sroa.10.0.insert.shift265 = shl nuw nsw i32 %s_id.sroa.10.0.insert.ext264, 8
  %s_id.sroa.7.0.insert.ext258 = and i32 %s_id.sroa.7.0.extract.shift, 255
  %s_id.sroa.7.0.insert.shift259 = shl nuw nsw i32 %s_id.sroa.7.0.insert.ext258, 16
  %s_id.sroa.7.0.insert.insert261 = or i32 %s_id.sroa.10.0.insert.shift265, %s_id.sroa.7.0.insert.shift259
  %s_id.sroa.0.0.insert.shift255 = and i32 %s_id.coerce.fca.0.extract, -16777216
  %s_id.sroa.0.0.insert.insert257 = or i32 %s_id.sroa.7.0.insert.insert261, %s_id.sroa.0.0.insert.shift255
  %cmp55.not.unshifted = xor i32 %bf.load51, %s_id.sroa.0.0.insert.insert257
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp55.not.unshifted)
  %cmp55.not = icmp ult i32 %cmp55.not.unshifted, 256
  br i1 %cmp55.not, label %if.end49.if.end198_crit_edge, label %if.then57

if.end49.if.end198_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end198

if.then57:                                        ; preds = %if.end49
  %35 = ptrtoint ptr %d_id50 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %d_id50, align 8
  %conv60 = zext i8 %36 to i32
  %shl = shl nuw nsw i32 %conv60, 16
  %area62 = getelementptr inbounds %struct.anon.84, ptr %d_id50, i32 0, i32 1
  %37 = ptrtoint ptr %area62 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %area62, align 1
  %conv63 = zext i8 %38 to i32
  %shl64 = shl nuw nsw i32 %conv63, 8
  %or = or i32 %shl64, %shl
  %al_pa66 = getelementptr inbounds %struct.anon.84, ptr %d_id50, i32 0, i32 2
  %39 = ptrtoint ptr %al_pa66 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %al_pa66, align 2
  %conv67 = zext i8 %40 to i32
  %or68 = or i32 %or, %conv67
  %lport_fcport_map = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %9, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i)
  %41 = ptrtoint ptr %key.addr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or68, ptr %key.addr.i, align 4
  %call.i = call ptr @btree_lookup(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key.addr.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i)
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end121, label %if.then70

if.then70:                                        ; preds = %if.then57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i274)
  %42 = ptrtoint ptr %key.addr.i274 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or68, ptr %key.addr.i274, align 4
  %call.i275 = call ptr @btree_remove(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key.addr.i274) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i274)
  %cmp73.not = icmp eq ptr %call.i275, %13
  br i1 %cmp73.not, label %if.then70.if.end144_crit_edge, label %do.end86, !prof !359

if.then70.if.end144_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end144

do.end86:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #20
  %43 = ptrtoint ptr %d_id50 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %d_id50, align 8
  %conv89 = zext i8 %44 to i32
  %45 = ptrtoint ptr %area62 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %area62, align 1
  %conv92 = zext i8 %46 to i32
  %47 = ptrtoint ptr %al_pa66 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %al_pa66, align 2
  %conv95 = zext i8 %48 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1501, i32 noundef 9, ptr noundef nonnull @.str.68, i32 noundef %conv89, i32 noundef %conv92, i32 noundef %conv95) #18
  br label %if.end144

do.end121:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #20
  %49 = ptrtoint ptr %d_id50 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %d_id50, align 8
  %conv124 = zext i8 %50 to i32
  %51 = ptrtoint ptr %area62 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %area62, align 1
  %conv127 = zext i8 %52 to i32
  %53 = ptrtoint ptr %al_pa66 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %al_pa66, align 2
  %conv130 = zext i8 %54 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1505, i32 noundef 9, ptr noundef nonnull @.str.69, i32 noundef %conv124, i32 noundef %conv127, i32 noundef %conv130) #18
  br label %if.end144

if.end144:                                        ; preds = %do.end121, %do.end86, %if.then70.if.end144_crit_edge
  %shl147 = shl nuw nsw i32 %s_id.sroa.0.0.extract.shift, 16
  %shl150 = shl nuw nsw i32 %s_id.sroa.7.0.insert.ext258, 8
  %or151 = or i32 %shl150, %shl147
  %or154 = or i32 %or151, %s_id.sroa.10.0.insert.ext264
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i276)
  %55 = ptrtoint ptr %key.addr.i276 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or154, ptr %key.addr.i276, align 4
  %call.i277 = call ptr @btree_lookup(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key.addr.i276) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i276)
  %tobool157.not = icmp eq ptr %call.i277, null
  br i1 %tobool157.not, label %if.else193, label %do.end171

do.end171:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1513, i32 noundef 9, ptr noundef nonnull @.str.70, i32 noundef %s_id.sroa.0.0.extract.shift, i32 noundef %s_id.sroa.7.0.insert.ext258, i32 noundef %s_id.sroa.10.0.insert.ext264) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i278)
  %56 = ptrtoint ptr %key.addr.i278 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or154, ptr %key.addr.i278, align 4
  %call.i279 = call i32 @btree_update(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key.addr.i278, ptr noundef %13) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i278)
  br label %if.end196

if.else193:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i280)
  %57 = ptrtoint ptr %key.addr.i280 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or154, ptr %key.addr.i280, align 4
  %call.i281 = call i32 @btree_insert(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key.addr.i280, ptr noundef %13, i32 noundef 2592) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i280)
  br label %if.end196

if.end196:                                        ; preds = %if.else193, %do.end171
  %58 = ptrtoint ptr %d_id50 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %s_id.sroa.0.0.extract.trunc, ptr %d_id50, align 8
  %59 = ptrtoint ptr %area62 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %s_id.sroa.7.0.extract.trunc, ptr %area62, align 1
  %60 = ptrtoint ptr %al_pa66 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %s_id.sroa.10.0.extract.trunc, ptr %al_pa66, align 2
  %s_id.sroa.13.0.d_id197.sroa_idx = getelementptr inbounds i8, ptr %d_id50, i32 3
  %61 = ptrtoint ptr %s_id.sroa.13.0.d_id197.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %s_id.sroa.13.0.extract.trunc, ptr %s_id.sroa.13.0.d_id197.sroa_idx, align 1
  %nport_id = getelementptr inbounds %struct.tcm_qla2xxx_nacl, ptr %13, i32 0, i32 1
  %62 = ptrtoint ptr %nport_id to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or154, ptr %nport_id, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.end196, %if.end49.if.end198_crit_edge
  %conf_compl_supported201 = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 2
  %63 = ptrtoint ptr %conf_compl_supported201 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 3)
  %bf.load202 = load i24, ptr %conf_compl_supported201, align 4
  %bf.shl = select i1 %conf_compl_supported, i24 -8388608, i24 0
  %bf.clear = and i24 %bf.load202, 8388607
  %bf.set = or i24 %bf.clear, %bf.shl
  store i24 %bf.set, ptr %conf_compl_supported201, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcm_qla2xxx_find_sess_by_loop_id(ptr nocapture noundef readonly %vha, i16 noundef zeroext %loop_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %vha_tgt = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 53
  %0 = ptrtoint ptr %vha_tgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha_tgt, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #22
  tail call void @dump_stack() #22
  br label %cleanup

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_find_sess_by_loop_id.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_find_sess_by_loop_id, %if.then7)) #18
          to label %do.end10 [label %if.then7], !srcloc !365

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i16 %loop_id to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_find_sess_by_loop_id.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.72, i32 noundef %conv) #18
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1
  %lport_loopid_map = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %lport_loopid_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lport_loopid_map, align 4
  %conv11 = zext i16 %loop_id to i32
  %add.ptr = getelementptr %struct.tcm_qla2xxx_fc_loopid, ptr %3, i32 %conv11
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %do.body15, label %if.end32

do.body15:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_find_sess_by_loop_id.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_find_sess_by_loop_id, %if.then27)) #18
          to label %cleanup [label %if.then27], !srcloc !365

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_find_sess_by_loop_id.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.73, i32 noundef %conv11) #18
  br label %cleanup

if.end32:                                         ; preds = %do.end10
  %fc_port = getelementptr inbounds %struct.tcm_qla2xxx_nacl, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %fc_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fc_port, align 8
  %tobool35.not = icmp eq ptr %7, null
  br i1 %tobool35.not, label %do.end39, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #22
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end32.cleanup_crit_edge, %if.then27, %do.body15, %do.end
  %retval.0 = phi ptr [ null, %do.end39 ], [ null, %do.end ], [ null, %if.then27 ], [ %7, %if.end32.cleanup_crit_edge ], [ null, %do.body15 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcm_qla2xxx_find_sess_by_s_id(ptr nocapture noundef readonly %vha, [1 x i32] %s_id.coerce) #3 align 64 {
entry:
  %key.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %vha_tgt = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 53
  %0 = ptrtoint ptr %vha_tgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha_tgt, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #22
  tail call void @dump_stack() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_id.coerce.fca.0.extract = extractvalue [1 x i32] %s_id.coerce, 0
  %tmp.coerce.sroa.0.0.extract.shift.i = lshr i32 %s_id.coerce.fca.0.extract, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_find_sess_by_s_id.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_find_sess_by_s_id, %if.then9)) #18
          to label %do.end12 [label %if.then9], !srcloc !365

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_find_sess_by_s_id.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.78, i32 noundef %tmp.coerce.sroa.0.0.extract.shift.i) #18
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %if.end
  %lport_fcport_map = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i)
  %2 = ptrtoint ptr %key.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %tmp.coerce.sroa.0.0.extract.shift.i, ptr %key.addr.i, align 4
  %call.i = call ptr @btree_lookup(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key.addr.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i)
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %do.body16, label %do.body33

do.body16:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_find_sess_by_s_id.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_find_sess_by_s_id, %if.then28)) #18
          to label %cleanup [label %if.then28], !srcloc !365

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_find_sess_by_s_id.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.79, i32 noundef %tmp.coerce.sroa.0.0.extract.shift.i) #18
  br label %cleanup

do.body33:                                        ; preds = %do.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_find_sess_by_s_id.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_find_sess_by_s_id, %if.then45)) #18
          to label %do.end48 [label %if.then45], !srcloc !365

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_find_sess_by_s_id.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.80, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i) #18
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %do.body33
  %fc_port = getelementptr inbounds %struct.tcm_qla2xxx_nacl, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %fc_port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fc_port, align 8
  %tobool50.not = icmp eq ptr %4, null
  br i1 %tobool50.not, label %do.end54, label %do.end48.cleanup_crit_edge

do.end48.cleanup_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end54:                                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #20
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #22
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %do.end48.cleanup_crit_edge, %if.then28, %do.body16, %do.end
  %retval.0 = phi ptr [ null, %do.end54 ], [ null, %do.end ], [ null, %if.then28 ], [ %4, %do.end48.cleanup_crit_edge ], [ null, %do.body16 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_clear_nacl_from_fcport_map(ptr noundef %sess) #3 align 64 {
entry:
  %key.addr.i80 = alloca i32, align 4
  %key.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 15
  %0 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_node_acl, align 8
  %se_tpg1 = getelementptr inbounds %struct.se_node_acl, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %se_tpg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_tpg1, align 4
  %se_tpg_wwn = getelementptr inbounds %struct.se_portal_group, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %se_tpg_wwn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_tpg_wwn, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_clear_nacl_from_fcport_map.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_clear_nacl_from_fcport_map, %if.then)) #18
          to label %do.end [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %nport_id = getelementptr inbounds %struct.tcm_qla2xxx_nacl, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %nport_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nport_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_clear_nacl_from_fcport_map.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.84, i32 noundef %9) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lport_fcport_map = getelementptr i8, ptr %7, i32 -316
  %nport_id8 = getelementptr inbounds %struct.tcm_qla2xxx_nacl, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %nport_id8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nport_id8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i)
  %12 = ptrtoint ptr %key.addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %key.addr.i, align 4
  %call.i = call ptr @btree_remove(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key.addr.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i)
  %tobool10.not = icmp ne ptr %call.i, null
  %cmp = icmp ne ptr %call.i, %3
  %spec.select = select i1 %tobool10.not, i1 %cmp, i1 false
  br i1 %spec.select, label %do.end26, label %do.end.do.body46_crit_edge, !prof !360

do.end.do.body46_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body46

do.end26:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 807, i32 noundef 9, ptr noundef null) #18
  %13 = ptrtoint ptr %nport_id8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nport_id8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i80)
  %15 = ptrtoint ptr %key.addr.i80 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %key.addr.i80, align 4
  %call.i81 = call i32 @btree_insert(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key.addr.i80, ptr noundef nonnull %call.i, i32 noundef 2592) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i80)
  br label %do.body46

do.body46:                                        ; preds = %do.end26, %do.end.do.body46_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_clear_nacl_from_fcport_map.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_clear_nacl_from_fcport_map, %if.then58)) #18
          to label %do.end62 [label %if.then58], !srcloc !365

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #20
  %nport_wwnn = getelementptr inbounds %struct.tcm_qla2xxx_nacl, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %nport_wwnn to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %nport_wwnn, align 8
  %18 = ptrtoint ptr %nport_id8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nport_id8, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_clear_nacl_from_fcport_map.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.85, ptr noundef %3, i64 noundef %17, i32 noundef %19) #18
  br label %do.end62

do.end62:                                         ; preds = %if.then58, %do.body46
  %add.ptr = getelementptr i8, ptr %7, i32 -404
  %20 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %se_sess, align 4
  %d_id.i = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 6
  %22 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack.i = load i32, ptr %d_id.i, align 8
  %retval.sroa.0.0.insert.insert.i.i = and i32 %.unpack.i, -256
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.insert.insert.i.i, 0
  call fastcc void @tcm_qla2xxx_set_sess_by_s_id(ptr noundef %add.ptr, ptr noundef null, ptr noundef %3, ptr noundef %21, ptr noundef %sess, [1 x i32] %.fca.0.insert.i) #18
  %loop_id.i = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 7
  %23 = ptrtoint ptr %loop_id.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %loop_id.i, align 4
  call fastcc void @tcm_qla2xxx_set_sess_by_loop_id(ptr noundef %add.ptr, ptr noundef null, ptr noundef %3, ptr noundef %21, ptr noundef %sess, i16 noundef zeroext %24) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_shutdown_sess(ptr nocapture noundef readonly %sess) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess = getelementptr inbounds %struct.fc_port, ptr %sess, i32 0, i32 15
  %0 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess, align 4
  tail call void @target_stop_session(ptr noundef %1) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_qla2xxx_dif_tags(ptr nocapture noundef readonly %cmd, ptr nocapture noundef %pfw_prot_opts) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %prot_checks = getelementptr inbounds %struct.qla_tgt_cmd, ptr %cmd, i32 0, i32 2, i32 51
  %0 = ptrtoint ptr %prot_checks to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prot_checks, align 8
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %3 = ptrtoint ptr %pfw_prot_opts to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pfw_prot_opts, align 2
  %5 = or i16 %4, 16
  store i16 %5, ptr %pfw_prot_opts, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %prot_checks to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %prot_checks, align 8
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %pfw_prot_opts to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pfw_prot_opts, align 2
  %11 = or i16 %10, 16384
  store i16 %11, ptr %pfw_prot_opts, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_qla2xxx_chk_dif_tags(i32 noundef %tag) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_init_cmd(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_submit_prep(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_submit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_handle_data_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_in_wq = getelementptr i8, ptr %work, i32 184
  %0 = ptrtoint ptr %cmd_in_wq to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %cmd_in_wq, align 8
  %bf.clear2 = and i16 %bf.load, -769
  store i16 %bf.clear2, ptr %cmd_in_wq, align 8
  %aborted = getelementptr i8, ptr %work, i32 188
  %1 = ptrtoint ptr %aborted to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %aborted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %se_cmd = getelementptr i8, ptr %work, i32 -464
  tail call void @transport_generic_request_failure(ptr noundef %se_cmd, i32 noundef 13) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %qpair = getelementptr i8, ptr %work, i32 -12
  %3 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qpair, align 4
  %qla_core_ret_ctio = getelementptr inbounds %struct.qla_qpair, ptr %4, i32 0, i32 24, i32 2
  %5 = ptrtoint ptr %qla_core_ret_ctio to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %qla_core_ret_ctio, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %qla_core_ret_ctio, align 8
  %7 = ptrtoint ptr %cmd_in_wq to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load4 = load i16, ptr %cmd_in_wq, align 8
  %8 = and i16 %bf.load4, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool6.not = icmp eq i16 %8, 0
  br i1 %tobool6.not, label %if.then7, label %if.end25

if.then7:                                         ; preds = %if.end
  %dif_err_code = getelementptr i8, ptr %work, i32 309
  %9 = ptrtoint ptr %dif_err_code to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dif_err_code, align 1
  %conv = sext i8 %10 to i32
  %switch.tableidx = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 3
  br i1 %11, label %switch.lookup, label %if.then7.sw.epilog_crit_edge

if.then7.sw.epilog_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.tcm_qla2xxx_handle_data_work, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %pi_err14 = getelementptr i8, ptr %work, i32 -44
  %13 = ptrtoint ptr %pi_err14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %switch.load, ptr %pi_err14, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then7.sw.epilog_crit_edge
  %se_cmd16 = getelementptr i8, ptr %work, i32 -464
  %pi_err17 = getelementptr i8, ptr %work, i32 -44
  %14 = ptrtoint ptr %pi_err17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pi_err17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @transport_generic_request_failure(ptr noundef %se_cmd16, i32 noundef %15) #18
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @transport_generic_request_failure(ptr noundef %se_cmd16, i32 noundef 13) #18
  br label %cleanup

if.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %se_cmd26 = getelementptr i8, ptr %work, i32 -464
  tail call void @target_execute_cmd(ptr noundef %se_cmd26) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.else, %if.then19, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_execute_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_submit_tmr(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_complete_free(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_in_wq = getelementptr i8, ptr %work, i32 184
  %0 = ptrtoint ptr %cmd_in_wq to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %cmd_in_wq, align 8
  %bf.clear = and i16 %bf.load, -257
  store i16 %bf.clear, ptr %cmd_in_wq, align 8
  %trc_flags = getelementptr i8, ptr %work, i32 392
  %1 = ptrtoint ptr %trc_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %trc_flags, align 8
  %and = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !359

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 262, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %qpair = getelementptr i8, ptr %work, i32 -12
  %3 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qpair, align 4
  %qla_core_ret_sta_ctio = getelementptr inbounds %struct.qla_qpair, ptr %4, i32 0, i32 24, i32 4
  %5 = ptrtoint ptr %qla_core_ret_sta_ctio to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %qla_core_ret_sta_ctio, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %qla_core_ret_sta_ctio, align 8
  %7 = ptrtoint ptr %trc_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %trc_flags, align 8
  %or = or i32 %8, 131072
  store i32 %or, ptr %trc_flags, align 8
  %9 = ptrtoint ptr %cmd_in_wq to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load22 = load i16, ptr %cmd_in_wq, align 8
  %bf.clear23 = and i16 %bf.load22, -513
  store i16 %bf.clear23, ptr %cmd_in_wq, align 8
  %sess = getelementptr i8, ptr %work, i32 -16
  %10 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sess, align 8
  %sess_cmd_lock = getelementptr inbounds %struct.fc_port, ptr %11, i32 0, i32 17
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sess_cmd_lock) #18
  %sess_cmd_list = getelementptr i8, ptr %work, i32 -24
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sess_cmd_list) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr i8, ptr %work, i32 -20
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %sess_cmd_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sess_cmd_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %sess_cmd_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %sess_cmd_list, ptr %sess_cmd_list, align 4
  %prev.i3.i = getelementptr i8, ptr %work, i32 -20
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sess_cmd_list, ptr %prev.i3.i, align 4
  %20 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sess, align 8
  %sess_cmd_lock34 = getelementptr inbounds %struct.fc_port, ptr %21, i32 0, i32 17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sess_cmd_lock34, i32 noundef %call28) #18
  %se_cmd = getelementptr i8, ptr %work, i32 -464
  %call35 = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd, i32 noundef 0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_generic_free_cmd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_complete_mcmd(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_cmd = getelementptr i8, ptr %work, i32 -440
  %call = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd, i32 noundef 0) #18
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_wait_for_sess_cmds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_remove_session(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @target_setup_session(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_session_cb(ptr nocapture noundef readonly %se_tpg, ptr noundef %se_sess, ptr noundef %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lport1 = getelementptr i8, ptr %se_tpg, i32 -32
  %0 = ptrtoint ptr %lport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport1, align 4
  %qla_vha = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %qla_vha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qla_vha, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %se_sess, i32 0, i32 4
  %6 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_node_acl, align 8
  %loop_id5 = getelementptr inbounds %struct.fc_port, ptr %p, i32 0, i32 7
  %8 = ptrtoint ptr %loop_id5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %loop_id5, align 4
  %sess_lock = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 281, i32 27
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sess_lock) #18
  %d_id = getelementptr inbounds %struct.fc_port, ptr %p, i32 0, i32 6
  %10 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack = load i32, ptr %d_id, align 8
  %retval.sroa.0.0.insert.insert.i = and i32 %.unpack, -256
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.insert.insert.i, 0
  tail call fastcc void @tcm_qla2xxx_set_sess_by_s_id(ptr noundef %1, ptr noundef %7, ptr noundef %7, ptr noundef %se_sess, ptr noundef %p, [1 x i32] %.fca.0.insert)
  tail call fastcc void @tcm_qla2xxx_set_sess_by_loop_id(ptr noundef %1, ptr noundef %7, ptr noundef %7, ptr noundef %se_sess, ptr noundef %p, i16 noundef zeroext %9)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sess_lock, i32 noundef %call8) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcm_qla2xxx_set_sess_by_s_id(ptr noundef %lport, ptr noundef %new_se_nacl, ptr nocapture noundef %nacl, ptr noundef %se_sess, ptr noundef %fc_port, [1 x i32] %s_id.coerce) unnamed_addr #3 align 64 {
entry:
  %key.addr.i223 = alloca i32, align 4
  %key.addr.i221 = alloca i32, align 4
  %key.addr.i219 = alloca i32, align 4
  %key.addr.i217 = alloca i32, align 4
  %key.addr.i215 = alloca i32, align 4
  %key.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %s_id.coerce.fca.0.extract = extractvalue [1 x i32] %s_id.coerce, 0
  %tmp.coerce.sroa.0.0.extract.shift.i = lshr i32 %s_id.coerce.fca.0.extract, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_set_sess_by_s_id, %if.then)) #18
          to label %do.end [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.49, i32 noundef %tmp.coerce.sroa.0.0.extract.shift.i) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lport_fcport_map = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %lport, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i)
  %0 = ptrtoint ptr %key.addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %tmp.coerce.sroa.0.0.extract.shift.i, ptr %key.addr.i, align 4
  %call.i = call ptr @btree_lookup(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key.addr.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i)
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end55

if.then7:                                         ; preds = %do.end
  %tobool8.not = icmp eq ptr %new_se_nacl, null
  br i1 %tobool8.not, label %do.body36, label %do.body10

do.body10:                                        ; preds = %if.then7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_set_sess_by_s_id, %if.then22)) #18
          to label %do.end25 [label %if.then22], !srcloc !365

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.50) #18
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body10
  %nport_id = getelementptr inbounds %struct.tcm_qla2xxx_nacl, ptr %nacl, i32 0, i32 1
  %1 = ptrtoint ptr %nport_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %tmp.coerce.sroa.0.0.extract.shift.i, ptr %nport_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i215)
  %2 = ptrtoint ptr %key.addr.i215 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %tmp.coerce.sroa.0.0.extract.shift.i, ptr %key.addr.i215, align 4
  %call.i216 = call i32 @btree_insert(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key.addr.i215, ptr noundef nonnull %new_se_nacl, i32 noundef 2592) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i215)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216)
  %tobool28.not = icmp eq i32 %call.i216, 0
  br i1 %tobool28.not, label %do.end25.if.end52_crit_edge, label %do.end32

do.end25.if.end52_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

do.end32:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #20
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %tmp.coerce.sroa.0.0.extract.shift.i) #22
  br label %if.end52

do.body36:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_set_sess_by_s_id, %if.then48)) #18
          to label %if.end52 [label %if.then48], !srcloc !365

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.52) #18
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %do.body36, %do.end32, %do.end25.if.end52_crit_edge
  %se_sess53 = getelementptr inbounds %struct.fc_port, ptr %fc_port, i32 0, i32 15
  %3 = ptrtoint ptr %se_sess53 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %se_sess, ptr %se_sess53, align 4
  %fc_port54 = getelementptr inbounds %struct.tcm_qla2xxx_nacl, ptr %nacl, i32 0, i32 4
  %4 = ptrtoint ptr %fc_port54 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fc_port, ptr %fc_port54, align 8
  br label %cleanup

if.end55:                                         ; preds = %do.end
  %fc_port56 = getelementptr inbounds %struct.tcm_qla2xxx_nacl, ptr %nacl, i32 0, i32 4
  %5 = ptrtoint ptr %fc_port56 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fc_port56, align 8
  %tobool57.not = icmp eq ptr %6, null
  %cmp101 = icmp eq ptr %new_se_nacl, null
  br i1 %tobool57.not, label %if.end100, label %if.then58

if.then58:                                        ; preds = %if.end55
  br i1 %cmp101, label %do.body60, label %do.body80

do.body60:                                        ; preds = %if.then58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_set_sess_by_s_id, %if.then72)) #18
          to label %do.end75 [label %if.then72], !srcloc !365

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.53) #18
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %do.body60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i217)
  %7 = ptrtoint ptr %key.addr.i217 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %tmp.coerce.sroa.0.0.extract.shift.i, ptr %key.addr.i217, align 4
  %call.i218 = call ptr @btree_remove(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key.addr.i217) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i217)
  %8 = ptrtoint ptr %fc_port56 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fc_port56, align 8
  br label %cleanup

do.body80:                                        ; preds = %if.then58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_set_sess_by_s_id, %if.then92)) #18
          to label %do.end95 [label %if.then92], !srcloc !365

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.54) #18
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %do.body80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i219)
  %9 = ptrtoint ptr %key.addr.i219 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %tmp.coerce.sroa.0.0.extract.shift.i, ptr %key.addr.i219, align 4
  %call.i220 = call i32 @btree_update(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key.addr.i219, ptr noundef nonnull %new_se_nacl) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i219)
  %se_sess98 = getelementptr inbounds %struct.fc_port, ptr %fc_port, i32 0, i32 15
  %10 = ptrtoint ptr %se_sess98 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %se_sess, ptr %se_sess98, align 4
  %11 = ptrtoint ptr %fc_port56 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fc_port, ptr %fc_port56, align 8
  br label %cleanup

if.end100:                                        ; preds = %if.end55
  br i1 %cmp101, label %do.body103, label %do.body122

do.body103:                                       ; preds = %if.end100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_set_sess_by_s_id, %if.then115)) #18
          to label %do.end118 [label %if.then115], !srcloc !365

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.55) #18
  br label %do.end118

do.end118:                                        ; preds = %if.then115, %do.body103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i221)
  %12 = ptrtoint ptr %key.addr.i221 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %tmp.coerce.sroa.0.0.extract.shift.i, ptr %key.addr.i221, align 4
  %call.i222 = call ptr @btree_remove(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key.addr.i221) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i221)
  br label %cleanup

do.body122:                                       ; preds = %if.end100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_set_sess_by_s_id, %if.then134)) #18
          to label %do.end137 [label %if.then134], !srcloc !365

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.56) #18
  br label %do.end137

do.end137:                                        ; preds = %if.then134, %do.body122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i223)
  %13 = ptrtoint ptr %key.addr.i223 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %tmp.coerce.sroa.0.0.extract.shift.i, ptr %key.addr.i223, align 4
  %call.i224 = call i32 @btree_update(ptr noundef %lport_fcport_map, ptr noundef nonnull @btree_geo32, ptr noundef nonnull %key.addr.i223, ptr noundef nonnull %new_se_nacl) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i223)
  %se_sess140 = getelementptr inbounds %struct.fc_port, ptr %fc_port, i32 0, i32 15
  %14 = ptrtoint ptr %se_sess140 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %se_sess, ptr %se_sess140, align 4
  %15 = ptrtoint ptr %fc_port56 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %fc_port, ptr %fc_port56, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_set_sess_by_s_id, %if.then154)) #18
          to label %cleanup [label %if.then154], !srcloc !365

if.then154:                                       ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %fc_port56 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fc_port56, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.57, ptr noundef %17, ptr noundef nonnull %new_se_nacl, ptr noundef nonnull %new_se_nacl) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then154, %do.end137, %do.end118, %do.end95, %do.end75, %if.end52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcm_qla2xxx_set_sess_by_loop_id(ptr nocapture noundef readonly %lport, ptr noundef %new_se_nacl, ptr nocapture noundef %nacl, ptr noundef %se_sess, ptr noundef %fc_port, i16 noundef zeroext %loop_id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_set_sess_by_loop_id, %if.then)) #18
          to label %do.end [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i16 %loop_id to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.59, i32 noundef %conv) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lport_loopid_map = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %lport, i32 0, i32 6
  %0 = ptrtoint ptr %lport_loopid_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport_loopid_map, align 4
  %idxprom = zext i16 %loop_id to i32
  %arrayidx = getelementptr %struct.tcm_qla2xxx_fc_loopid, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.body5, label %if.end33

do.body5:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_set_sess_by_loop_id, %if.then17)) #18
          to label %do.end20 [label %if.then17], !srcloc !365

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.60) #18
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %new_se_nacl, ptr %arrayidx, align 4
  %se_sess22 = getelementptr inbounds %struct.fc_port, ptr %fc_port, i32 0, i32 15
  %5 = ptrtoint ptr %se_sess22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %se_sess22, align 4
  %cmp.not = icmp eq ptr %6, %se_sess
  br i1 %cmp.not, label %do.end20.if.end26_crit_edge, label %if.then24

do.end20.if.end26_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then24:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %se_sess22 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %se_sess, ptr %se_sess22, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %do.end20.if.end26_crit_edge
  %fc_port27 = getelementptr inbounds %struct.tcm_qla2xxx_nacl, ptr %nacl, i32 0, i32 4
  %8 = ptrtoint ptr %fc_port27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fc_port27, align 8
  %cmp28.not = icmp eq ptr %9, %fc_port
  br i1 %cmp28.not, label %if.end26.cleanup_crit_edge, label %if.then30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %fc_port27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fc_port, ptr %fc_port27, align 8
  br label %cleanup

if.end33:                                         ; preds = %do.end
  %fc_port34 = getelementptr inbounds %struct.tcm_qla2xxx_nacl, ptr %nacl, i32 0, i32 4
  %11 = ptrtoint ptr %fc_port34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fc_port34, align 8
  %tobool35.not = icmp eq ptr %12, null
  %cmp89 = icmp eq ptr %new_se_nacl, null
  br i1 %tobool35.not, label %if.end88, label %if.then36

if.then36:                                        ; preds = %if.end33
  br i1 %cmp89, label %do.body40, label %do.body59

do.body40:                                        ; preds = %if.then36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_set_sess_by_loop_id, %if.then52)) #18
          to label %do.end55 [label %if.then52], !srcloc !365

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.61) #18
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %do.body40
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %fc_port34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %fc_port34, align 8
  br label %cleanup

do.body59:                                        ; preds = %if.then36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_set_sess_by_loop_id, %if.then71)) #18
          to label %do.end74 [label %if.then71], !srcloc !365

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.62) #18
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %do.body59
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %new_se_nacl, ptr %arrayidx, align 4
  %se_sess76 = getelementptr inbounds %struct.fc_port, ptr %fc_port, i32 0, i32 15
  %16 = ptrtoint ptr %se_sess76 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %se_sess76, align 4
  %cmp77.not = icmp eq ptr %17, %se_sess
  br i1 %cmp77.not, label %do.end74.if.end81_crit_edge, label %if.then79

do.end74.if.end81_crit_edge:                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end81

if.then79:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %se_sess76 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %se_sess, ptr %se_sess76, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %do.end74.if.end81_crit_edge
  %19 = ptrtoint ptr %fc_port34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fc_port34, align 8
  %cmp83.not = icmp eq ptr %20, %fc_port
  br i1 %cmp83.not, label %if.end81.cleanup_crit_edge, label %if.then85

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %fc_port34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %fc_port, ptr %fc_port34, align 8
  br label %cleanup

if.end88:                                         ; preds = %if.end33
  br i1 %cmp89, label %do.body92, label %do.body110

do.body92:                                        ; preds = %if.end88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_set_sess_by_loop_id, %if.then104)) #18
          to label %do.end107 [label %if.then104], !srcloc !365

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.63) #18
  br label %do.end107

do.end107:                                        ; preds = %if.then104, %do.body92
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

do.body110:                                       ; preds = %if.end88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_set_sess_by_loop_id, %if.then122)) #18
          to label %do.end125 [label %if.then122], !srcloc !365

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.64) #18
  br label %do.end125

do.end125:                                        ; preds = %if.then122, %do.body110
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %new_se_nacl, ptr %arrayidx, align 4
  %se_sess127 = getelementptr inbounds %struct.fc_port, ptr %fc_port, i32 0, i32 15
  %24 = ptrtoint ptr %se_sess127 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %se_sess127, align 4
  %cmp128.not = icmp eq ptr %25, %se_sess
  br i1 %cmp128.not, label %do.end125.if.end132_crit_edge, label %if.then130

do.end125.if.end132_crit_edge:                    ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end132

if.then130:                                       ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %se_sess127 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %se_sess, ptr %se_sess127, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %do.end125.if.end132_crit_edge
  %27 = ptrtoint ptr %fc_port34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fc_port34, align 8
  %cmp134.not = icmp eq ptr %28, %fc_port
  br i1 %cmp134.not, label %if.end132.do.body139_crit_edge, label %if.then136

if.end132.do.body139_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body139

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %fc_port34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %fc_port, ptr %fc_port34, align 8
  br label %do.body139

do.body139:                                       ; preds = %if.then136, %if.end132.do.body139_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_set_sess_by_loop_id, %if.then151)) #18
          to label %cleanup [label %if.then151], !srcloc !365

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #20
  %30 = ptrtoint ptr %fc_port34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fc_port34, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.65, ptr noundef %31, ptr noundef nonnull %new_se_nacl, ptr noundef nonnull %new_se_nacl) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then151, %do.body139, %do.end107, %if.then85, %if.end81.cleanup_crit_edge, %do.end55, %if.then30, %if.end26.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btree_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btree_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btree_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btree_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btree_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlt_stop_phase2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlt_lport_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btree_last(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btree_get_prev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlt_enable_vha(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlt_stop_phase1(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_wwn_version_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !349) #18
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uts_ns.i, align 4
  %machine = getelementptr inbounds %struct.new_utsname, ptr %7, i32 0, i32 4
  %release = getelementptr inbounds %struct.new_utsname, ptr %7, i32 0, i32 2
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, ptr noundef %7, ptr noundef %machine, ptr noundef %release)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_dynamic_sessions_show(ptr noundef %item, ptr noundef %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -272
  %call1 = tail call i32 @target_show_dynamic_sessions(ptr noundef %add.ptr.i, ptr noundef %page) #18
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_show_dynamic_sessions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_fabric_prot_type_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %fabric_prot_type = getelementptr i8, ptr %item, i32 -280
  %0 = ptrtoint ptr %fabric_prot_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fabric_prot_type, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.97, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_fabric_prot_type_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #18
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !366
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %call.i) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %2, label %do.end10 [
    i32 0, label %if.end.if.end13_crit_edge
    i32 1, label %if.end.if.end13_crit_edge19
    i32 3, label %if.end.if.end13_crit_edge20
  ]

if.end.if.end13_crit_edge20:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.end.if.end13_crit_edge19:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %2) #22
  br label %cleanup

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %if.end.if.end13_crit_edge19, %if.end.if.end13_crit_edge20
  %fabric_prot_type = getelementptr i8, ptr %item, i32 -280
  %4 = ptrtoint ptr %fabric_prot_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %2, ptr %fabric_prot_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end10, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end10 ], [ %count, %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #18
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_attrib_generate_node_acls_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_attrib = getelementptr i8, ptr %item, i32 -620
  %0 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpg_attrib, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.97, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_attrib_generate_node_acls_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_attrib = getelementptr i8, ptr %item, i32 -620
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #18
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !366
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %call.i) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %2) #22
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %3 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tpg_attrib, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #18
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_dynamic_acls = getelementptr i8, ptr %item, i32 -616
  %0 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cache_dynamic_acls, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.97, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #18
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !366
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %call.i) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %2) #22
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %cache_dynamic_acls = getelementptr i8, ptr %item, i32 -616
  %3 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cache_dynamic_acls, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #18
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %demo_mode_write_protect = getelementptr i8, ptr %item, i32 -612
  %0 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demo_mode_write_protect, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.97, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #18
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !366
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %call.i) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %2) #22
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %demo_mode_write_protect = getelementptr i8, ptr %item, i32 -612
  %3 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %demo_mode_write_protect, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #18
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %prod_mode_write_protect = getelementptr i8, ptr %item, i32 -608
  %0 = ptrtoint ptr %prod_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prod_mode_write_protect, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.97, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #18
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !366
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %call.i) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %2) #22
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %prod_mode_write_protect = getelementptr i8, ptr %item, i32 -608
  %3 = ptrtoint ptr %prod_mode_write_protect to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %prod_mode_write_protect, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #18
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %demo_mode_login_only = getelementptr i8, ptr %item, i32 -604
  %0 = ptrtoint ptr %demo_mode_login_only to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demo_mode_login_only, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.97, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #18
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !366
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %call.i) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %2) #22
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %demo_mode_login_only = getelementptr i8, ptr %item, i32 -604
  %3 = ptrtoint ptr %demo_mode_login_only to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %demo_mode_login_only, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #18
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_attrib_jam_host_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %jam_host = getelementptr i8, ptr %item, i32 -596
  %0 = ptrtoint ptr %jam_host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %jam_host, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.97, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_tpg_attrib_jam_host_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #18
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !366
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %call.i) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %2) #22
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %jam_host = getelementptr i8, ptr %item, i32 -596
  %3 = ptrtoint ptr %jam_host to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %jam_host, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcm_qla2xxx_npiv_make_lport(ptr nocapture noundef readnone %tf, ptr nocapture noundef readnone %group, ptr noundef %name) #3 align 64 {
entry:
  %wwn.i40.i = alloca [8 x i8], align 8
  %wwn.i.i = alloca [8 x i8], align 8
  %phys_wwpn = alloca i64, align 8
  %tmp = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %phys_wwpn) #18
  %0 = ptrtoint ptr %phys_wwpn to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %phys_wwpn, align 8, !annotation !366
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp) #18
  %1 = call ptr @memset(ptr %tmp, i32 255, i32 128)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 128, ptr noundef nonnull @.str.130, ptr noundef %name)
  %call2 = call ptr @strchr(ptr noundef nonnull %tmp, i32 noundef 64)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %call2, align 1
  %call7 = call fastcc i32 @tcm_qla2xxx_parse_wwn(ptr noundef nonnull %tmp, ptr noundef nonnull %phys_wwpn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %incdec.ptr = getelementptr i8, ptr %call2, i32 1
  %call11 = call i32 @strlen(ptr noundef %incdec.ptr) #24
  %add = add i32 %call11, 1
  %arrayidx.i = getelementptr i8, ptr %incdec.ptr, i32 %call11
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.149)
  switch i8 %4, label %if.end10.if.end.i_crit_edge [
    i8 10, label %if.end10.if.then.i_crit_edge
    i8 0, label %if.end10.if.then.i_crit_edge69
  ]

if.end10.if.then.i_crit_edge69:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.end10.if.then.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %if.end10.if.then.i_crit_edge, %if.end10.if.then.i_crit_edge69
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end10.if.end.i_crit_edge
  %cnt.0.i = phi i32 [ %call11, %if.then.i ], [ %add, %if.end10.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %cnt.0.i)
  %cmp7.not.i = icmp eq i32 %cnt.0.i, 33
  br i1 %cmp7.not.i, label %lor.lhs.false9.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false9.i:                                 ; preds = %if.end.i
  %arrayidx10.i = getelementptr i8, ptr %call2, i32 17
  %6 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %7)
  %cmp12.not.i = icmp eq i8 %7, 58
  br i1 %cmp12.not.i, label %if.end15.i, label %lor.lhs.false9.i.cleanup_crit_edge

lor.lhs.false9.i.cleanup_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end15.i:                                       ; preds = %lor.lhs.false9.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wwn.i.i) #18
  %8 = ptrtoint ptr %wwn.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %wwn.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end15.i
  %j.020.i.i = phi i32 [ 0, %if.end15.i ], [ %j.2.ph.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.018.i.i = phi i32 [ 0, %if.end15.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %ns.addr.017.i.i = phi ptr [ %incdec.ptr, %if.end15.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %ns.addr.017.i.i, i32 1
  %9 = ptrtoint ptr %ns.addr.017.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ns.addr.017.i.i, align 1
  %call.i.i = call i32 @hex_to_bin(i8 noundef zeroext %10) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp1.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp1.i.i, label %if.then.i.i, label %tcm_qla2xxx_npiv_extract_wwn.exit.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %shl.i.i = shl i32 %j.020.i.i, 4
  %or.i.i = or i32 %call.i.i, %shl.i.i
  %rem.i.i = and i32 %i.018.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.for.inc.i.i_crit_edge, label %if.then2.i.i

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i = trunc i32 %or.i.i to i8
  %div14.i.i = lshr i32 %i.018.i.i, 1
  %arrayidx.i.i = getelementptr [8 x i8], ptr %wwn.i.i, i32 0, i32 %div14.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i.i, ptr %arrayidx.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then2.i.i, %if.then.i.i.for.inc.i.i_crit_edge
  %j.2.ph.i.i = phi i32 [ %or.i.i, %if.then.i.i.for.inc.i.i_crit_edge ], [ 0, %if.then2.i.i ]
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %if.end20.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

tcm_qla2xxx_npiv_extract_wwn.exit.i:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwn.i.i) #18
  br label %cleanup

if.end20.i:                                       ; preds = %for.inc.i.i
  %12 = ptrtoint ptr %wwn.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wwn.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwn.i.i) #18
  %arrayidx21.i = getelementptr i8, ptr %call2, i32 18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wwn.i40.i) #18
  %14 = ptrtoint ptr %wwn.i40.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %wwn.i40.i, align 8
  br label %for.body.i47.i

for.body.i47.i:                                   ; preds = %for.inc.i60.i.for.body.i47.i_crit_edge, %if.end20.i
  %j.020.i41.i = phi i32 [ 0, %if.end20.i ], [ %j.2.ph.i57.i, %for.inc.i60.i.for.body.i47.i_crit_edge ]
  %i.018.i42.i = phi i32 [ 0, %if.end20.i ], [ %inc.i58.i, %for.inc.i60.i.for.body.i47.i_crit_edge ]
  %ns.addr.017.i43.i = phi ptr [ %arrayidx21.i, %if.end20.i ], [ %incdec.ptr.i44.i, %for.inc.i60.i.for.body.i47.i_crit_edge ]
  %incdec.ptr.i44.i = getelementptr i8, ptr %ns.addr.017.i43.i, i32 1
  %15 = ptrtoint ptr %ns.addr.017.i43.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ns.addr.017.i43.i, align 1
  %call.i45.i = call i32 @hex_to_bin(i8 noundef zeroext %16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i45.i)
  %cmp1.i46.i = icmp sgt i32 %call.i45.i, -1
  br i1 %cmp1.i46.i, label %if.then.i52.i, label %tcm_qla2xxx_npiv_parse_wwn.exit.thread65

tcm_qla2xxx_npiv_parse_wwn.exit.thread65:         ; preds = %for.body.i47.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwn.i40.i) #18
  br label %cleanup

if.then.i52.i:                                    ; preds = %for.body.i47.i
  %shl.i48.i = shl i32 %j.020.i41.i, 4
  %or.i49.i = or i32 %call.i45.i, %shl.i48.i
  %rem.i50.i = and i32 %i.018.i42.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i50.i)
  %tobool.not.i51.i = icmp eq i32 %rem.i50.i, 0
  br i1 %tobool.not.i51.i, label %if.then.i52.i.for.inc.i60.i_crit_edge, label %if.then2.i56.i

if.then.i52.i.for.inc.i60.i_crit_edge:            ; preds = %if.then.i52.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i60.i

if.then2.i56.i:                                   ; preds = %if.then.i52.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i53.i = trunc i32 %or.i49.i to i8
  %div14.i54.i = lshr i32 %i.018.i42.i, 1
  %arrayidx.i55.i = getelementptr [8 x i8], ptr %wwn.i40.i, i32 0, i32 %div14.i54.i
  %17 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i53.i, ptr %arrayidx.i55.i, align 1
  br label %for.inc.i60.i

for.inc.i60.i:                                    ; preds = %if.then2.i56.i, %if.then.i52.i.for.inc.i60.i_crit_edge
  %j.2.ph.i57.i = phi i32 [ %or.i49.i, %if.then.i52.i.for.inc.i60.i_crit_edge ], [ 0, %if.then2.i56.i ]
  %inc.i58.i = add nuw nsw i32 %i.018.i42.i, 1
  %exitcond.not.i59.i = icmp eq i32 %inc.i58.i, 16
  br i1 %exitcond.not.i59.i, label %if.end16, label %for.inc.i60.i.for.body.i47.i_crit_edge

for.inc.i60.i.for.body.i47.i_crit_edge:           ; preds = %for.inc.i60.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i47.i

if.end16:                                         ; preds = %for.inc.i60.i
  %18 = ptrtoint ptr %wwn.i40.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %wwn.i40.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwn.i40.i) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 656) #21
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %do.end22, label %if.end26

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134) #22
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %lport_npiv_wwpn = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %lport_npiv_wwpn to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %13, ptr %lport_npiv_wwpn, align 8
  %lport_npiv_wwnn = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %lport_npiv_wwnn to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %19, ptr %lport_npiv_wwnn, align 8
  %lport_naa_name = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %call7.i.i, i32 0, i32 4
  %call28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %lport_naa_name, ptr noundef nonnull @.str.12, i64 noundef %13)
  %call29 = call fastcc i32 @tcm_qla2xxx_init_lport(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end32, label %if.end26.out_crit_edge

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end32:                                         ; preds = %if.end26
  %23 = ptrtoint ptr %phys_wwpn to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %phys_wwpn, align 8
  %call33 = call i32 @qlt_lport_register(ptr noundef nonnull %call7.i.i, i64 noundef %24, i64 noundef %13, i64 noundef %19, ptr noundef nonnull @tcm_qla2xxx_lport_register_npiv_cb) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %if.end36, label %out_lport

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  %lport_wwn = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %call7.i.i, i32 0, i32 10
  br label %cleanup

out_lport:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  %lport_loopid_map = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %call7.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %lport_loopid_map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lport_loopid_map, align 4
  call void @vfree(ptr noundef %26) #18
  %lport_fcport_map = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %call7.i.i, i32 0, i32 5
  call void @btree_destroy(ptr noundef %lport_fcport_map) #18
  br label %out

out:                                              ; preds = %out_lport, %if.end26.out_crit_edge
  %ret.0 = phi i32 [ %call29, %if.end26.out_crit_edge ], [ %call33, %out_lport ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #18
  %27 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end36, %do.end22, %tcm_qla2xxx_npiv_parse_wwn.exit.thread65, %tcm_qla2xxx_npiv_extract_wwn.exit.i, %lor.lhs.false9.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %27, %out ], [ %lport_wwn, %if.end36 ], [ inttoptr (i32 -12 to ptr), %do.end22 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %tcm_qla2xxx_npiv_parse_wwn.exit.thread65 ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false9.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %tcm_qla2xxx_npiv_extract_wwn.exit.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phys_wwpn) #18
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_qla2xxx_npiv_drop_lport(ptr noundef %wwn) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wwn, i32 -404
  %qla_vha = getelementptr i8, ptr %wwn, i32 -300
  %0 = ptrtoint ptr %qla_vha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qla_vha, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 8
  tail call void @scsi_host_put(ptr noundef %9) #18
  %fc_vport = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 45
  %10 = ptrtoint ptr %fc_vport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fc_vport, align 4
  %call1 = tail call i32 @fc_vport_terminate(ptr noundef %11) #18
  %host2 = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host2, align 8
  tail call void @scsi_host_put(ptr noundef %13) #18
  tail call void @kfree(ptr noundef %add.ptr) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcm_qla2xxx_npiv_make_tpg(ptr noundef %wwn, ptr noundef %name) #3 align 64 {
entry:
  %tpgt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wwn, i32 -404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tpgt) #18
  %0 = ptrtoint ptr %tpgt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tpgt, align 4, !annotation !366
  %strncmp = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.86, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strncmp)
  %cmp42.not = icmp eq i32 %strncmp, 0
  br i1 %cmp42.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr2 = getelementptr i8, ptr %name, i32 5
  %call.i = call i32 @_kstrtoul(ptr noundef %add.ptr2, i32 noundef 10, ptr noundef nonnull %tpgt) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %1 = ptrtoint ptr %tpgt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tpgt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %2)
  %cmp4 = icmp ugt i32 %2, 65535
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 872) #21
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #22
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %lport15 = getelementptr inbounds %struct.tcm_qla2xxx_tpg, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %lport15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %lport15, align 8
  %5 = ptrtoint ptr %tpgt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tpgt, align 4
  %conv = trunc i32 %6 to i16
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %call7.i.i, align 8
  %tpg_attrib = getelementptr inbounds %struct.tcm_qla2xxx_tpg, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %tpg_attrib, align 4
  %demo_mode_write_protect = getelementptr inbounds %struct.tcm_qla2xxx_tpg, ptr %call7.i.i, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %demo_mode_write_protect, align 4
  %cache_dynamic_acls = getelementptr inbounds %struct.tcm_qla2xxx_tpg, ptr %call7.i.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %cache_dynamic_acls, align 8
  %demo_mode_login_only = getelementptr inbounds %struct.tcm_qla2xxx_tpg, ptr %call7.i.i, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %demo_mode_login_only to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %demo_mode_login_only, align 4
  %se_tpg = getelementptr inbounds %struct.tcm_qla2xxx_tpg, ptr %call7.i.i, i32 0, i32 4
  %call19 = call i32 @core_tpg_register(ptr noundef %wwn, ptr noundef %se_tpg, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %tpg_1 = getelementptr i8, ptr %wwn, i32 -4
  %12 = ptrtoint ptr %tpg_1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %tpg_1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then22, %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then22 ], [ %se_tpg, %if.end23 ], [ inttoptr (i32 -12 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tpgt) #18
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_npiv_enable_tpg(ptr noundef %se_tpg, i1 noundef zeroext %enable) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg_wwn = getelementptr inbounds %struct.se_portal_group, ptr %se_tpg, i32 0, i32 11
  %0 = ptrtoint ptr %se_tpg_wwn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn, align 4
  %qla_vha = getelementptr i8, ptr %1, i32 -300
  %2 = ptrtoint ptr %qla_vha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qla_vha, align 8
  %lport_tpg_enabled = getelementptr i8, ptr %se_tpg, i32 -36
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lport_tpg_enabled, i32 noundef 4) #18
  %4 = ptrtoint ptr %lport_tpg_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %lport_tpg_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lport_tpg_enabled, i32 noundef 4) #18
  %6 = ptrtoint ptr %lport_tpg_enabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %lport_tpg_enabled, align 4
  tail call void @qlt_enable_vha(ptr noundef %3) #18
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %tobool4.not, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lport_tpg_enabled, i32 noundef 4) #18
  %7 = ptrtoint ptr %lport_tpg_enabled to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %lport_tpg_enabled, align 4
  %qla_tgt = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 53, i32 3
  %8 = ptrtoint ptr %qla_tgt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qla_tgt, align 4
  %call13 = tail call i32 @qlt_stop_phase1(ptr noundef %9) #18
  %10 = ptrtoint ptr %qla_tgt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qla_tgt, align 4
  tail call void @qlt_stop_phase2(ptr noundef %11) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end11 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_qla2xxx_lport_register_npiv_cb(ptr nocapture noundef readonly %base_vha, ptr noundef %target_lport_ptr, i64 noundef %npiv_wwpn, i64 noundef %npiv_wwnn) #3 align 64 {
entry:
  %vport_id = alloca %struct.fc_vport_identifiers, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %base_vha, i32 0, i32 5
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 8
  %vha_tgt = getelementptr inbounds %struct.scsi_qla_host, ptr %base_vha, i32 0, i32 53
  %2 = ptrtoint ptr %vha_tgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vha_tgt, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %vport_id) #18
  %active_mode.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 36
  %4 = ptrtoint ptr %active_mode.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %active_mode.i, align 8
  %bf.lshr.mask.i = and i16 %bf.load.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask.i)
  %cmp.i = icmp eq i16 %bf.lshr.mask.i, 16384
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.do.end11_crit_edge, label %lor.lhs.false

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end11

lor.lhs.false:                                    ; preds = %if.end
  %tpg_1 = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %tpg_1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tpg_1, align 8
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %lor.lhs.false.do.end11_crit_edge, label %lor.lhs.false4

lor.lhs.false.do.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end11

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %lport_tpg_enabled = getelementptr inbounds %struct.tcm_qla2xxx_tpg, ptr %6, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lport_tpg_enabled, i32 noundef 4) #18
  %7 = ptrtoint ptr %lport_tpg_enabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %lport_tpg_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %lor.lhs.false4.do.end11_crit_edge, label %if.end14

lor.lhs.false4.do.end11_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end11

do.end11:                                         ; preds = %lor.lhs.false4.do.end11_crit_edge, %lor.lhs.false.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139) #22
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false4
  %9 = getelementptr inbounds i8, ptr %vport_id, i32 16
  %10 = call ptr @memset(ptr %9, i32 0, i32 80)
  %port_name = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vport_id, i32 0, i32 1
  %11 = ptrtoint ptr %port_name to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %npiv_wwpn, ptr %port_name, align 8
  %12 = ptrtoint ptr %vport_id to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %npiv_wwnn, ptr %vport_id, align 8
  %roles = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vport_id, i32 0, i32 2
  %13 = ptrtoint ptr %roles to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %roles, align 8
  %vport_type = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vport_id, i32 0, i32 4
  %14 = ptrtoint ptr %vport_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %vport_type, align 8
  %call15 = call ptr @fc_vport_create(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %vport_id) #18
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142) #22
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %call15, i32 0, i32 8
  %15 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dd_data, align 4
  %vha_tgt24 = getelementptr inbounds %struct.scsi_qla_host, ptr %16, i32 0, i32 53
  %17 = ptrtoint ptr %vha_tgt24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %target_lport_ptr, ptr %vha_tgt24, align 8
  %qla_vha = getelementptr inbounds %struct.tcm_qla2xxx_lport, ptr %target_lport_ptr, i32 0, i32 7
  %18 = ptrtoint ptr %qla_vha to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %qla_vha, align 8
  %host26 = getelementptr inbounds %struct.scsi_qla_host, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %host26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host26, align 8
  %call27 = call ptr @scsi_host_get(ptr noundef %20) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end20, %do.end11, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end23 ], [ -19, %do.end20 ], [ -1, %do.end11 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %vport_id) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_vport_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_vport_terminate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcm_qla2xxx_register_configfs() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_qla2xxx_register_configfs.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_qla2xxx_register_configfs, %if.then)) #18
          to label %do.end [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 @llvm.read_register.i32(metadata !349) #18
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uts_ns.i, align 4
  %machine = getelementptr inbounds %struct.new_utsname, ptr %7, i32 0, i32 4
  %release = getelementptr inbounds %struct.new_utsname, ptr %7, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_qla2xxx_register_configfs.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.94, ptr noundef %7, ptr noundef %machine, ptr noundef %release) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call8 = tail call i32 @target_register_template(ptr noundef nonnull @tcm_qla2xxx_ops) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call12 = tail call i32 @target_register_template(ptr noundef nonnull @tcm_qla2xxx_npiv_ops) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.out_fabric_crit_edge

if.end11.out_fabric_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_fabric

if.end15:                                         ; preds = %if.end11
  %call16 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.147, i32 noundef 8, i32 noundef 0) #18
  store ptr %call16, ptr @tcm_qla2xxx_free_wq, align 4
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @target_unregister_template(ptr noundef nonnull @tcm_qla2xxx_npiv_ops) #18
  br label %out_fabric

out_fabric:                                       ; preds = %if.then18, %if.end11.out_fabric_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11.out_fabric_crit_edge ], [ -12, %if.then18 ]
  tail call void @target_unregister_template(ptr noundef nonnull @tcm_qla2xxx_ops) #18
  br label %cleanup

cleanup:                                          ; preds = %out_fabric, %if.end15.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_fabric ], [ %call8, %do.end.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind readonly }
attributes #14 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !127, !128, !130, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !176, !177, !179, !181, !183, !185, !186, !187, !189, !190, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !217, !219, !220, !222, !224, !225, !226, !227, !229, !230, !231, !233, !235, !236, !238, !240, !242, !244, !245, !247, !248, !250, !252, !253, !254, !255, !257, !258, !259, !261, !263, !264, !265, !266, !267, !268, !269, !270, !271, !273, !274, !275, !276, !277, !278, !279, !281, !282, !283, !284, !285, !286, !287, !289, !290, !291, !292, !293, !294, !295, !297, !298, !299, !300, !301, !302, !303, !305, !306, !307, !308, !309, !310, !311, !313, !315, !317, !319, !320, !321, !322, !324, !325, !326, !328, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !345, !346, !347}
!llvm.named.register.sp = !{!349}
!llvm.module.flags = !{!350, !351, !352, !353, !354, !355, !356, !357}
!llvm.ident = !{!358}

!0 = !{ptr @__UNIQUE_ID_description365, !1, !"__UNIQUE_ID_description365", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1950, i32 1}
!2 = !{ptr @__UNIQUE_ID_file366, !3, !"__UNIQUE_ID_file366", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1951, i32 1}
!4 = !{ptr @__UNIQUE_ID_license367, !3, !"__UNIQUE_ID_license367", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_tcm_qla2xxx__368_1952_tcm_qla2xxx_init6, !6, !"__initcall__kmod_tcm_qla2xxx__368_1952_tcm_qla2xxx_init6", i1 false, i1 false}
!6 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1952, i32 1}
!7 = !{ptr @__exitcall_tcm_qla2xxx_exit, !8, !"__exitcall_tcm_qla2xxx_exit", i1 false, i1 false}
!8 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1953, i32 1}
!9 = !{ptr @tcm_qla2xxx_free_wq, !10, !"tcm_qla2xxx_free_wq", i1 false, i1 false}
!10 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 36, i32 33}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1794, i32 19}
!13 = !{ptr @tcm_qla2xxx_ops, !14, !"tcm_qla2xxx_ops", i1 false, i1 false}
!14 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1792, i32 44}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 346, i32 6}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 395, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tcm_qla2xxx_write_pending.__UNIQUE_ID_ddebug315, !18, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 662, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tcm_qla2xxx_queue_data_in.__UNIQUE_ID_ddebug324, !23, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 703, i32 3}
!28 = !{ptr @tcm_qla2xxx_queue_status.__UNIQUE_ID_ddebug325, !27, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 743, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tcm_qla2xxx_queue_tm_rsp.__UNIQUE_ID_ddebug326, !30, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1607, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @tcm_qla2xxx_make_lport._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @tcm_qla2xxx_make_lport._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1613, i32 33}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 82, i32 2}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tcm_qla2xxx_parse_wwn.__UNIQUE_ID_ddebug314, !41, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 93, i32 3}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1558, i32 3}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tcm_qla2xxx_init_lport._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @tcm_qla2xxx_init_lport._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1566, i32 3}
!53 = !{ptr @tcm_qla2xxx_init_lport._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tcm_qla2xxx_init_lport._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1571, i32 2}
!57 = !{ptr @tcm_qla2xxx_init_lport.__UNIQUE_ID_ddebug349, !56, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!58 = !{ptr @tcm_qla2xxx_template, !59, !"tcm_qla2xxx_template", i1 false, i1 false}
!59 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1531, i32 39}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 465, i32 3}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @tcm_qla2xxx_handle_cmd._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @tcm_qla2xxx_handle_cmd._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 471, i32 3}
!67 = !{ptr @tcm_qla2xxx_handle_cmd._entry.24, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @tcm_qla2xxx_handle_cmd._entry_ptr.26, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @tcm_qla2xxx_handle_data.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 559, i32 2}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 594, i32 3}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug316, !73, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 598, i32 3}
!78 = !{ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug317, !77, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 602, i32 3}
!81 = !{ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug318, !80, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 606, i32 3}
!84 = !{ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug319, !83, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 610, i32 3}
!87 = !{ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug320, !86, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 614, i32 3}
!90 = !{ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug321, !89, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 618, i32 3}
!93 = !{ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug322, !92, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 622, i32 3}
!96 = !{ptr @tcm_qla2xxx_handle_tmr.__UNIQUE_ID_ddebug323, !95, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!97 = !{ptr @tcm_qla2xxx_free_cmd.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 312, i32 2}
!99 = !{ptr @tcm_qla2xxx_free_mcmd.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 251, i32 2}
!101 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1360, i32 3}
!104 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @tcm_qla2xxx_free_session._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @tcm_qla2xxx_free_session._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1367, i32 3}
!109 = !{ptr @tcm_qla2xxx_free_session._entry.40, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @tcm_qla2xxx_free_session._entry_ptr.42, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1423, i32 3}
!113 = !{ptr @tcm_qla2xxx_check_initiator_node_acl._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @tcm_qla2xxx_check_initiator_node_acl._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1432, i32 3}
!117 = !{ptr @tcm_qla2xxx_check_initiator_node_acl._entry.44, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @tcm_qla2xxx_check_initiator_node_acl._entry_ptr.46, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1440, i32 41}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1183, i32 2}
!123 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug332, !122, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1188, i32 4}
!127 = !{ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug333, !126, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1193, i32 5}
!130 = !{ptr @tcm_qla2xxx_set_sess_by_s_id._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @tcm_qla2xxx_set_sess_by_s_id._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1196, i32 4}
!134 = !{ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug334, !133, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1206, i32 4}
!137 = !{ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug335, !136, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1211, i32 3}
!140 = !{ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug336, !139, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1219, i32 3}
!143 = !{ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug337, !142, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!144 = !{ptr @.str.56, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1224, i32 2}
!146 = !{ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug338, !145, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1229, i32 2}
!149 = !{ptr @tcm_qla2xxx_set_sess_by_s_id.__UNIQUE_ID_ddebug339, !148, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!150 = !{ptr @.str.58, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1286, i32 2}
!152 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug342, !151, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!154 = !{ptr @.str.60, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1293, i32 3}
!156 = !{ptr @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug343, !155, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!157 = !{ptr @.str.61, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1304, i32 4}
!159 = !{ptr @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug344, !158, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!160 = !{ptr @.str.62, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1310, i32 3}
!162 = !{ptr @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug345, !161, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!163 = !{ptr @.str.63, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1320, i32 3}
!165 = !{ptr @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug346, !164, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!166 = !{ptr @.str.64, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1325, i32 2}
!168 = !{ptr @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug347, !167, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!169 = !{ptr @.str.65, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1332, i32 2}
!171 = !{ptr @tcm_qla2xxx_set_sess_by_loop_id.__UNIQUE_ID_ddebug348, !170, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!172 = !{ptr @.str.66, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1469, i32 3}
!174 = !{ptr @.str.67, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @tcm_qla2xxx_update_sess._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @tcm_qla2xxx_update_sess._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.68, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1498, i32 4}
!179 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1503, i32 4}
!181 = !{ptr @.str.70, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1512, i32 4}
!183 = !{ptr @.str.71, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1247, i32 3}
!185 = !{ptr @tcm_qla2xxx_find_sess_by_loop_id._entry, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @tcm_qla2xxx_find_sess_by_loop_id._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.72, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1252, i32 2}
!189 = !{ptr @tcm_qla2xxx_find_sess_by_loop_id.__UNIQUE_ID_ddebug340, !188, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!190 = !{ptr @.str.73, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1257, i32 3}
!192 = !{ptr @tcm_qla2xxx_find_sess_by_loop_id.__UNIQUE_ID_ddebug341, !191, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!193 = !{ptr @.str.75, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1265, i32 3}
!195 = !{ptr @tcm_qla2xxx_find_sess_by_loop_id._entry.74, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @tcm_qla2xxx_find_sess_by_loop_id._entry_ptr.76, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.77, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1142, i32 3}
!199 = !{ptr @tcm_qla2xxx_find_sess_by_s_id._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @tcm_qla2xxx_find_sess_by_s_id._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.78, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1148, i32 2}
!203 = !{ptr @tcm_qla2xxx_find_sess_by_s_id.__UNIQUE_ID_ddebug329, !202, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!204 = !{ptr @.str.79, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1152, i32 3}
!206 = !{ptr @tcm_qla2xxx_find_sess_by_s_id.__UNIQUE_ID_ddebug330, !205, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!207 = !{ptr @.str.80, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1155, i32 2}
!209 = !{ptr @tcm_qla2xxx_find_sess_by_s_id.__UNIQUE_ID_ddebug331, !208, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!210 = !{ptr @tcm_qla2xxx_find_sess_by_s_id._entry.81, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1160, i32 3}
!212 = !{ptr @tcm_qla2xxx_find_sess_by_s_id._entry_ptr.82, !211, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.83, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 804, i32 2}
!215 = !{ptr @.str.84, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @tcm_qla2xxx_clear_nacl_from_fcport_map.__UNIQUE_ID_ddebug327, !214, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!217 = !{ptr @.str.85, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 818, i32 2}
!219 = !{ptr @tcm_qla2xxx_clear_nacl_from_fcport_map.__UNIQUE_ID_ddebug328, !218, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!220 = !{ptr @.str.86, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1002, i32 19}
!222 = !{ptr @.str.87, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1008, i32 3}
!224 = !{ptr @.str.88, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @tcm_qla2xxx_make_tpg._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @tcm_qla2xxx_make_tpg._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.90, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1014, i32 3}
!229 = !{ptr @tcm_qla2xxx_make_tpg._entry.89, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @tcm_qla2xxx_make_tpg._entry_ptr.91, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @tcm_qla2xxx_wwn_attrs, !232, !"tcm_qla2xxx_wwn_attrs", i1 false, i1 false}
!232 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1787, i32 35}
!233 = !{ptr @.str.92, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1785, i32 1}
!235 = !{ptr @tcm_qla2xxx_wwn_attr_version, !234, !"tcm_qla2xxx_wwn_attr_version", i1 false, i1 false}
!236 = !{ptr @.str.93, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1780, i32 6}
!238 = !{ptr @.str.94, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1781, i32 6}
!240 = !{ptr @tcm_qla2xxx_tpg_attrs, !241, !"tcm_qla2xxx_tpg_attrs", i1 false, i1 false}
!241 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 987, i32 35}
!242 = !{ptr @.str.95, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 984, i32 1}
!244 = !{ptr @tcm_qla2xxx_tpg_attr_dynamic_sessions, !243, !"tcm_qla2xxx_tpg_attr_dynamic_sessions", i1 false, i1 false}
!245 = !{ptr @.str.96, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 985, i32 1}
!247 = !{ptr @tcm_qla2xxx_tpg_attr_fabric_prot_type, !246, !"tcm_qla2xxx_tpg_attr_fabric_prot_type", i1 false, i1 false}
!248 = !{ptr @.str.97, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 981, i32 23}
!250 = !{ptr @.str.98, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 962, i32 3}
!252 = !{ptr @.str.99, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @tcm_qla2xxx_tpg_fabric_prot_type_store._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @tcm_qla2xxx_tpg_fabric_prot_type_store._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.101, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 966, i32 3}
!257 = !{ptr @tcm_qla2xxx_tpg_fabric_prot_type_store._entry.100, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @tcm_qla2xxx_tpg_fabric_prot_type_store._entry_ptr.102, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @tcm_qla2xxx_tpg_attrib_attrs, !260, !"tcm_qla2xxx_tpg_attrib_attrs", i1 false, i1 false}
!260 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 904, i32 35}
!261 = !{ptr @.str.103, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 895, i32 1}
!263 = !{ptr @tcm_qla2xxx_tpg_attrib_attr_generate_node_acls, !262, !"tcm_qla2xxx_tpg_attrib_attr_generate_node_acls", i1 false, i1 false}
!264 = !{ptr @.str.104, !262, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.105, !262, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry, !262, !"_entry", i1 false, i1 false}
!267 = !{ptr @tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.107, !262, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry.106, !262, !"_entry", i1 false, i1 false}
!270 = !{ptr @tcm_qla2xxx_tpg_attrib_generate_node_acls_store._entry_ptr.108, !262, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.109, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 896, i32 1}
!273 = !{ptr @tcm_qla2xxx_tpg_attrib_attr_cache_dynamic_acls, !272, !"tcm_qla2xxx_tpg_attrib_attr_cache_dynamic_acls", i1 false, i1 false}
!274 = !{ptr @.str.110, !272, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry, !272, !"_entry", i1 false, i1 false}
!276 = !{ptr @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry.111, !272, !"_entry", i1 false, i1 false}
!278 = !{ptr @tcm_qla2xxx_tpg_attrib_cache_dynamic_acls_store._entry_ptr.112, !272, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.113, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 897, i32 1}
!281 = !{ptr @tcm_qla2xxx_tpg_attrib_attr_demo_mode_write_protect, !280, !"tcm_qla2xxx_tpg_attrib_attr_demo_mode_write_protect", i1 false, i1 false}
!282 = !{ptr @.str.114, !280, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry, !280, !"_entry", i1 false, i1 false}
!284 = !{ptr @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry.115, !280, !"_entry", i1 false, i1 false}
!286 = !{ptr @tcm_qla2xxx_tpg_attrib_demo_mode_write_protect_store._entry_ptr.116, !280, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.117, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 898, i32 1}
!289 = !{ptr @tcm_qla2xxx_tpg_attrib_attr_prod_mode_write_protect, !288, !"tcm_qla2xxx_tpg_attrib_attr_prod_mode_write_protect", i1 false, i1 false}
!290 = !{ptr @.str.118, !288, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry, !288, !"_entry", i1 false, i1 false}
!292 = !{ptr @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry.119, !288, !"_entry", i1 false, i1 false}
!294 = !{ptr @tcm_qla2xxx_tpg_attrib_prod_mode_write_protect_store._entry_ptr.120, !288, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.121, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 899, i32 1}
!297 = !{ptr @tcm_qla2xxx_tpg_attrib_attr_demo_mode_login_only, !296, !"tcm_qla2xxx_tpg_attrib_attr_demo_mode_login_only", i1 false, i1 false}
!298 = !{ptr @.str.122, !296, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry, !296, !"_entry", i1 false, i1 false}
!300 = !{ptr @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry.123, !296, !"_entry", i1 false, i1 false}
!302 = !{ptr @tcm_qla2xxx_tpg_attrib_demo_mode_login_only_store._entry_ptr.124, !296, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.125, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 901, i32 1}
!305 = !{ptr @tcm_qla2xxx_tpg_attrib_attr_jam_host, !304, !"tcm_qla2xxx_tpg_attrib_attr_jam_host", i1 false, i1 false}
!306 = !{ptr @.str.126, !304, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @tcm_qla2xxx_tpg_attrib_jam_host_store._entry, !304, !"_entry", i1 false, i1 false}
!308 = !{ptr @tcm_qla2xxx_tpg_attrib_jam_host_store._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @tcm_qla2xxx_tpg_attrib_jam_host_store._entry.127, !304, !"_entry", i1 false, i1 false}
!310 = !{ptr @tcm_qla2xxx_tpg_attrib_jam_host_store._entry_ptr.128, !304, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.129, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1842, i32 19}
!313 = !{ptr @tcm_qla2xxx_npiv_ops, !314, !"tcm_qla2xxx_npiv_ops", i1 false, i1 false}
!314 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1840, i32 44}
!315 = !{ptr @.str.130, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1715, i32 21}
!317 = !{ptr @.str.131, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1719, i32 3}
!319 = !{ptr @.str.132, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @tcm_qla2xxx_npiv_make_lport._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @tcm_qla2xxx_npiv_make_lport._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.134, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1733, i32 3}
!324 = !{ptr @tcm_qla2xxx_npiv_make_lport._entry.133, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @tcm_qla2xxx_npiv_make_lport._entry_ptr.135, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.136, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1672, i32 3}
!328 = !{ptr @.str.137, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @tcm_qla2xxx_lport_register_npiv_cb._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @tcm_qla2xxx_lport_register_npiv_cb._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.139, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1678, i32 3}
!333 = !{ptr @tcm_qla2xxx_lport_register_npiv_cb._entry.138, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @tcm_qla2xxx_lport_register_npiv_cb._entry_ptr.140, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.142, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1691, i32 3}
!337 = !{ptr @tcm_qla2xxx_lport_register_npiv_cb._entry.141, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @tcm_qla2xxx_lport_register_npiv_cb._entry_ptr.143, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.144, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1105, i32 3}
!341 = !{ptr @tcm_qla2xxx_npiv_make_tpg._entry, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @tcm_qla2xxx_npiv_make_tpg._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.145, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1883, i32 2}
!345 = !{ptr @.str.146, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @tcm_qla2xxx_register_configfs.__UNIQUE_ID_ddebug350, !344, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!347 = !{ptr @.str.147, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/scsi/qla2xxx/tcm_qla2xxx.c", i32 1895, i32 40}
!349 = !{!"sp"}
!350 = !{i32 1, !"wchar_size", i32 2}
!351 = !{i32 1, !"min_enum_size", i32 4}
!352 = !{i32 8, !"branch-target-enforcement", i32 0}
!353 = !{i32 8, !"sign-return-address", i32 0}
!354 = !{i32 8, !"sign-return-address-all", i32 0}
!355 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!356 = !{i32 7, !"uwtable", i32 1}
!357 = !{i32 7, !"frame-pointer", i32 2}
!358 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!359 = !{!"branch_weights", i32 2000, i32 1}
!360 = !{!"branch_weights", i32 1, i32 2000}
!361 = !{i64 2156872355, i64 2156872854, i64 2156872392, i64 2156872448, i64 2156872482, i64 2156872506, i64 2156872547, i64 2156872568, i64 2156872596, i64 2156872630}
!362 = !{i64 2148481836}
!363 = !{i64 2148396276, i64 2148396308, i64 2148396337, i64 2148396371, i64 2148396402, i64 2148396425}
!364 = !{i64 2149357950}
!365 = !{i64 2149005658, i64 2149005663, i64 2149005676, i64 2149005720, i64 2149005754, i64 2149005775}
!366 = !{!"auto-init"}
!367 = !{i64 2154366512}
!368 = !{i64 2154366679}
