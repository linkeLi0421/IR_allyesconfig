; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla2xxx/qla_iocb.c_pt.bc'
source_filename = "../drivers/scsi/qla2xxx/qla_iocb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.req_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i32, i16, i32, i32, ptr, i16, [64 x i8] }
%struct.cmd_a64_entry_t = type { i8, i8, i8, i8, i32, %union.target_id_t, i16, i16, i16, i16, i16, [16 x i8], i32, [2 x %struct.dsd64] }
%union.target_id_t = type { i16 }
%struct.dsd64 = type <{ i64, i32 }>
%struct.scsi_qla_host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.work_struct, ptr, i32, [16 x i8], %struct.anon.79, %struct.atomic_t, i32, i32, i32, i32, i16, i16, %struct.fc_port, %union.port_id_t, i8, i16, i8, %struct.atomic_t, i8, i32, %struct.timer_list, [8 x i8], [8 x i8], [8 x i8], [8 x i8], ptr, %struct.completion, i16, i16, [6 x i8], %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i16, ptr, i32, %struct.atomic_t, i16, i16, ptr, %struct.scsi_qlt_host, ptr, i32, i32, %struct.fc_host_statistics, %struct.qla_statistics, %struct.bidi_statistics, %struct.atomic_t, %struct.qla8044_reset_template, i16, i16, i16, i16, i16, i16, ptr, %struct.purex_list, %struct.purex_item, %struct.name_list_extended, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, [8 x i8], [8 x i8], i16, [4 x i16], %struct.list_head, %struct.fab_scan, i8, i32, i64, i64, i64, i64, i64, i64, %struct.edif_dbell, %struct.pur_core }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.79 = type { i16, [2 x i8] }
%struct.fc_port = type { %struct.list_head, ptr, [3 x i8], i8, [8 x i8], [8 x i8], %union.port_id_t, i16, i16, %struct.completion, i32, i32, ptr, i8, i32, ptr, %struct.list_head, %struct.spinlock, %struct.kref, ptr, i32, %struct.list_head, %struct.work_struct, %struct.work_struct, i64, i32, [2 x ptr], i16, i16, i16, i8, [8 x i8], i16, i32, %struct.atomic_t, i32, i32, ptr, ptr, i32, i8, i8, i8, i32, i32, i16, ptr, i32, ptr, %struct.ct_sns_desc, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, [64 x i8], i8, i8, i16, i16, ptr, i64, i64, i64, %struct.anon.143 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ct_sns_desc = type { ptr, i32 }
%struct.anon.143 = type { i16, i32, i32, i64, i64, i8, i8, i16, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock }
%union.port_id_t = type { i24 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.scsi_qlt_host = type { ptr, %struct.mutex, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_statistics = type { i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, %struct.qla_dif_statistics }
%struct.qla_dif_statistics = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.bidi_statistics = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.qla8044_reset_template = type { i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.purex_list = type { %struct.list_head, %struct.spinlock }
%struct.purex_item = type { %struct.list_head, ptr, ptr, %struct.atomic_t, i16, %struct.anon.166 }
%struct.anon.166 = type { [64 x i8] }
%struct.name_list_extended = type { ptr, i32, %struct.list_head, i32, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
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
%struct.srb = type { i8, [3 x i8], %struct.iocb_resource, %struct.kref, ptr, %struct.wait_queue_head, ptr, ptr, i8, i32, i16, i16, ptr, i32, ptr, ptr, %struct.list_head, i32, i32, i32, i32, ptr, %union.anon.83, %struct.anon.106, ptr, ptr, ptr }
%struct.iocb_resource = type { i8, i8, i16 }
%union.anon.83 = type { %struct.srb_iocb }
%struct.srb_iocb = type { %union.anon.84, %struct.timer_list, ptr }
%union.anon.84 = type { %struct.anon.87, [112 x i8] }
%struct.anon.87 = type { i64, i32, i32, %struct.completion, i16 }
%struct.anon.106 = type { i8, %struct.anon.107, %struct.anon.108 }
%struct.anon.107 = type { i32, ptr, i32 }
%struct.anon.108 = type { i32, ptr, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.cmd_entry_t = type { i8, i8, i8, i8, i32, %union.target_id_t, i16, i16, i16, i16, i16, [16 x i8], i32, %union.anon.157 }
%union.anon.157 = type { [3 x %struct.dsd32] }
%struct.dsd32 = type { i32, i32 }
%struct.cont_entry_t = type { i8, i8, i8, i8, i32, [7 x %struct.dsd32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.cont_a64_entry_t = type { i8, i8, i8, i8, [5 x %struct.dsd64] }
%struct.qla_qpair = type { %struct.spinlock, %struct.atomic_t, i32, ptr, ptr, i32, i8, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.qla_counters, %struct.list_head, %struct.list_head, i16, i32, i64, %struct.qla_tgt_counters, i16, [94 x i8], %struct.qla_fw_resources, i32, i32, i32, [108 x i8] }
%struct.qla_counters = type { i64, i64, i64, i64 }
%struct.qla_tgt_counters = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_fw_resources = type { i16, i16, i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.81, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.81 = type { ptr }
%struct.mrk_entry_t = type { i8, i8, i8, i8, i32, %union.target_id_t, i8, i8, i16, i16, [48 x i8] }
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_reg_2xxx = type { i16, i16, [1 x i16], i16, i16, i16, i16, i16, %union.anon.145, i16, [4 x i16], i16, i16, i16, [5 x i16], i16, [3 x i16], i16, [3 x i16], i16, [5 x i16], i16, i16, %union.anon.148 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i16, i16, i16, i16, i16, i16, i16, i16, [59 x i16] }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { [8 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.82 = type { i8, i8 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.rsp_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, [64 x i8] }
%struct.response_t = type { i8, i8, i8, i8, i32, [52 x i8], i32 }
%struct.device_reg_24xx = type { i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, [10 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, [6 x i32], i32, [2 x i32], i32, [2 x i32], i32 }
%struct.device_reg_fx00 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mrk_entry_24xx = type { i8, i8, i8, i8, i32, i16, i8, i8, i8, i8, i16, [8 x i8], [40 x i8] }
%struct.cmd_type_7 = type { i8, i8, i8, i8, i32, i16, i16, i16, i16, %struct.scsi_lun, i16, i8, i8, [16 x i8], i32, [3 x i8], i8, %struct.dsd64 }
%struct.scsi_lun = type { [8 x i8] }
%struct.qla2_sgx = type { i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.qla_tc_param = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.dsd_dma = type { %struct.list_head, i32, ptr }
%struct.crc_context = type { i32, i32, i16, [4 x i8], [2 x i8], i16, i16, i16, i16, i32, %union.anon.102, %struct.fcp_cmnd, i32, %struct.list_head, %struct.list_head, i8, %struct.list_head, i32, i8 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, i16, i16, i32, [1 x %struct.dsd64], [2 x i32], i32 }
%struct.fcp_cmnd = type { %struct.scsi_lun, i8, i8, i8, i8, [260 x i8] }
%struct.qla_tgt_cmd = type <{ i8, [7 x i8], %struct.se_cmd, %struct.list_head, ptr, ptr, i32, i32, %struct.work_struct, [96 x i8], %struct.spinlock, i16, [2 x i8], i32, ptr, i32, i32, i32, i64, i32, i16, i16, i16, [2 x i8], ptr, ptr, %struct.list_head, %struct.atio_from_isp, i8, i8, [2 x i8], ptr, i32, i32, i32, i8, i8, i8, i8, ptr, ptr, [4 x i8], i64, i16, i16, i16, i16, i32, i32, i16, [6 x i8], i64, i64, i32, [4 x i8] }>
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.atio_from_isp = type { %union.anon.158 }
%union.anon.158 = type { %struct.anon.160 }
%struct.anon.160 = type { i16, i8, i8, i32, %struct.fcp_hdr, %struct.atio7_fcp_cmnd }
%struct.fcp_hdr = type { i8, %struct.be_id_t, i8, %struct.be_id_t, i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.be_id_t = type { i8, i8, i8 }
%struct.atio7_fcp_cmnd = type { i64, i8, i8, i8, i8, [16 x i8], [4 x i8] }
%struct.anon.80 = type { i8, i8, i8, i8 }
%struct.cmd_type_crc_2 = type <{ i8, i8, i8, i8, i32, i16, i16, i16, i16, %struct.scsi_lun, i16, i16, i64, i64, i32, [3 x i8], i8, i64, i16, i16 }>
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.device_reg_25xxmq = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.86 = type { i32, i32, %struct.completion, ptr, i32 }
%struct.bsg_job = type { ptr, %struct.kref, i32, ptr, ptr, i32, i32, %struct.bsg_buffer, %struct.bsg_buffer, i32, i32, ptr, ptr, ptr }
%struct.bsg_buffer = type { i32, i32, ptr }
%struct.els_entry_24xx = type { i8, i8, i8, i8, i32, i16, i16, i16, i8, i8, i32, i16, i8, i8, [3 x i8], [3 x i8], i16, %union.anon.171 }
%union.anon.171 = type { %struct.anon.173, [16 x i8] }
%struct.anon.173 = type { i32, i32, i32, i32 }
%struct.fc_bsg_request = type <{ i32, %union.anon.198 }>
%union.anon.198 = type { %struct.fc_bsg_host_vendor, [8 x i8] }
%struct.fc_bsg_host_vendor = type { i64, [0 x i32] }
%struct.bsg_cmd = type { ptr, %union.anon.105 }
%union.anon.105 = type { %struct.qla_els_pt_arg }
%struct.qla_els_pt_arg = type { i8, i8, i16, i16, i16, i32, %union.port_id_t, %union.port_id_t, i32, i32, i32, i32, i32, i32 }
%struct.logio_entry_24xx = type { i8, i8, i8, i8, i32, i16, i16, i16, i8, i8, [3 x i8], i8, [11 x i32] }
%struct.ct_entry_24xx = type { i8, i8, i8, i8, i32, i16, i16, i16, i8, i8, i16, i16, i16, [10 x i8], i32, i32, [2 x %struct.dsd64] }
%struct.nack_to_isp = type { i8, i8, i8, i8, %union.anon.178, [2 x i8], i16 }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type { i32, %union.target_id_t, i8, i8, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i8, i8, [24 x i8] }
%struct.imm_ntfy_from_isp = type { i8, i8, i8, i8, %union.anon.92, i16, i16 }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { i32, %union.target_id_t, i16, i8, i8, i16, i16, i16, i16, i16, i32, i16, i16, [28 x i8] }
%struct.anon.94 = type { i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i16, i16, %union.anon.95, [8 x i8], [3 x i8], i8, i32, [3 x i8], i8 }
%union.anon.95 = type { %struct.anon.97 }
%struct.anon.97 = type { i16, [6 x i8] }
%struct.anon.180 = type { i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i16, i16, [19 x i8], i8, i8, i8, i8, [5 x i8] }
%struct.els_plogi = type { i32, i32, %struct.completion, ptr, ptr, i32, i32, i32, i32, [3 x i32], i16, i16 }
%struct.els_plogi_payload = type { i8, [3 x i8], [28 x i32] }
%struct.event_arg = type { ptr, ptr, %union.port_id_t, [2 x i16], i16, [8 x i8], [2 x i32] }
%struct.qla_work_evt = type { %struct.list_head, i32, i32, %union.anon.184 }
%union.anon.184 = type { %struct.anon.194 }
%struct.anon.194 = type { ptr, [64 x i8], i32 }
%struct.ct6_dsd = type { i16, i32, ptr, i32, %struct.list_head }
%struct.cmd_type_6 = type <{ i8, i8, i8, i8, i32, i16, i16, i16, i16, %struct.scsi_lun, i16, i16, i64, i64, i32, [3 x i8], i8, %struct.dsd64 }>
%struct.mbx_entry = type { i8, i8, i8, i8, i32, %union.target_id_t, i16, i16, i16, [2 x i32], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i32], [8 x i8], [8 x i8] }
%struct.ms_iocb_entry_t = type { i8, i8, i8, i8, i32, %union.target_id_t, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i32, i32, i32, %struct.dsd64, %struct.dsd64 }
%struct.tsk_mgmt_entry = type { i8, i8, i8, i8, i32, i16, i16, i16, i16, %struct.scsi_lun, i32, [20 x i8], [3 x i8], i8, [12 x i8] }
%struct.pt_ls4_request = type { i8, i8, i8, i8, i32, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, [2 x %struct.dsd64] }
%struct.abort_entry_24xx = type { i8, i8, i8, i8, i32, %union.anon.174, i16, i32, i16, [30 x i8], [3 x i8], i8, [4 x i8], %union.anon.175, [4 x i8] }
%union.anon.174 = type { i16 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i16, i16 }
%struct.anon.89 = type { i32, i16, i16, %struct.completion }
%struct.mbx_24xx_entry = type { i8, i8, i8, i8, i32, [28 x i16] }
%struct.vp_ctrl_entry_24xx = type { i8, i8, i8, i8, i32, i16, i16, i16, i16, [16 x i8], i16, i16, i16, i16, [24 x i8] }
%struct.anon.100 = type { i16, i16 }
%struct.cmd_bidir = type <{ i8, i8, i8, i8, i32, i16, i16, i16, i16, %struct.scsi_lun, i16, i16, i64, [2 x i16], i32, i32, [3 x i8], i8, %struct.dsd64 }>

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: scsi_cmnd: %p, crc_ctx: %p, sp: %p\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.qla24xx_walk_and_build_prot_sglist = private unnamed_addr constant [35 x i8] c"qla24xx_walk_and_build_prot_sglist\00", align 1
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: enter (write=%u)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: page boundary crossing (phys=%llx len=%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: difctx pointer is NULL\0A\00", [36 x i8] zeroinitializer }, align 32
@ql2xdifbundlinginternalbuffers = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%s: sg[%x] (phys=%llx sglen=%x) ldma_sg_len: %x dif_bundl_len: %x ldma_needed: %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: failed alloc dsd_ptr\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed alloc ->dsd_ptr\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"dif_bundl_len=%x, no_dif_bundl=%x track_difbundl_buf: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: adding continuation iocb's\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed alloc ->dsd_addr\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: no_ldif_dsd:%x, no_dif_bundl:%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed alloc dsd_dma...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No room on outstanding cmd array.\0A\00", [61 x i8] zeroinitializer }, align 32
@qla2x00_init_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&sp->u.iocb_cmd.timer)\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fcport allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SRB allocation failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"portid=%02x%02x%02x done\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ELS_DCMD\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LOGO buffer:\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s LOGO sent, hdl=%x, loopid=%x, portid=%02x%02x%02x.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s Enter: PLOGI portid=%06x\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.qla24xx_els_dcmd2_iocb = private unnamed_addr constant [23 x i8] c"qla24xx_els_dcmd2_iocb\00", align 1
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PLOGI %p %p\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PLOGI buffer:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s PLOGI sent, hdl=%x, loopid=%x, to port_id %06x from port_id %06x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"qla2x00_marker failed for cmd=%p.\0A\00", [61 x i8] zeroinitializer }, align 32
@ql2xshiftctondsd = external dso_local local_unnamed_addr global i32, align 4
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Num of DSD list %d is than %d for cmd=%p.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to allocate memory for dsd_dma for cmd=%p.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to allocate memory for dsd_addr for cmd=%p.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocate ctx for cmd=%p.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to allocate fcp_cmnd for cmd=%p.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"scsi cmd len %d not multiple of 4 for cmd=%p.\0A\00", [49 x i8] zeroinitializer }, align 32
@ql2xdbwr = external dso_local local_unnamed_addr global i32, align 4
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qla2x00_alloc_iocbs failed.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate Marker IOCB.\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@ql2xenforce_iocb_limit = external dso_local local_unnamed_addr global i32, align 4
@ql2xenablehba_err_chk = external dso_local local_unnamed_addr global i32, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s Timeout, hdl=%x, portid=%02x%02x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mbx abort_command failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mbx abort_command success.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s hdl=%x, portid=%02x%02x%02x done\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"FCPort %8phC disc_state transition: %s to %s - portid=%06x.\0A\00", [35 x i8] zeroinitializer }, align 32
@port_dstate_str = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DELETED\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GNN_ID\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GNL\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LOGIN_PEND\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LOGIN_FAILED\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPDB\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UPD_FCPORT\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LOGIN_COMPLETE\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADISC\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DELETE_PEND\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LOGIN_AUTH_PEND\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s hdl=%x ELS Timeout, %8phC portid=%06x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mbx abort_command %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"successful\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s ELS done rc %d hdl=%x, portid=%06x %8phC\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s %d %8phC pid %06x inuse with lid %#x post gidpn\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.qla2x00_els_dcmd2_sp_done = private unnamed_addr constant [26 x i8] c"qla2x00_els_dcmd2_sp_done\00", align 1
@.str.56 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s %d %8phC pid %06x inuse with lid %#x sched del\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s %d %8phC lid %#x in use with pid %06x post gnl\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Exchange starvation. Resetting RISC\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s %8phC cmd error fw_status 0x%x 0x%x 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s %8phC cmd error 2 fw_status 0x%x 0x%x 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PLOGI ELS IOCB:\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LOGO ELS IOCB:\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s PLOGI NACK sent with FC SECURITY bit, hdl=%x, loopid=%x, to pid %06x\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.73 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.76 = internal global [25 x i64] [i64 23, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 20, i64 21, i64 22, i64 23, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 21, i64 49]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 26, i64 27]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1051, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1064, i32 6 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1074, i32 9 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1083, i32 10 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1114, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1130, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1142, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1183, i32 7 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1204, i32 9 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1228, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1266, i32 7 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1282, i32 10 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2328, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2565, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2650, i32 42 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2659, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2669, i32 33 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2673, i32 13 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2702, i32 51 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2714, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2994, i32 9 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3027, i32 33 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3043, i32 51 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3054, i32 7 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3342, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3375, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3390, i32 9 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3400, i32 9 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3427, i32 8 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3436, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3451, i32 9 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3799, i32 7 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 520, i32 7 }
@___asan_gen_.184 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 87, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2599, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2607, i32 7 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2619, i32 7 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2630, i32 6 }
@___asan_gen_.203 = private unnamed_addr constant [37 x i8] c"../drivers/scsi/qla2xxx/qla_inline.h\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 123, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant [16 x i8] c"port_dstate_str\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2676, i32 27 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2677, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2678, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2679, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2680, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2681, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2682, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2683, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2684, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2685, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2686, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [34 x i8] c"../drivers/scsi/qla2xxx/qla_def.h\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2687, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2800, i32 6 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2806, i32 6 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2807, i32 29 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2807, i32 44 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2849, i32 6 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2885, i32 10 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2891, i32 10 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2912, i32 9 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2925, i32 10 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2934, i32 9 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2948, i32 8 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2766, i32 7 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2781, i32 10 }
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.281 = private constant [35 x i8] c"../drivers/scsi/qla2xxx/qla_iocb.c\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3712, i32 7 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @qla2x00_init_timer.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @init_completion.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @port_dstate_str, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla2x00_init_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_dstate_str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @qla2x00_calc_iocbs_32(i16 noundef zeroext %dsds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %dsds)
  %cmp = icmp ugt i16 %dsds, 3
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add i16 %dsds, -3
  %div1314 = udiv i16 %sub, 7
  %0 = mul i16 %div1314, 7
  %rem1516.decomposed = sub i16 %sub, %0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem1516.decomposed)
  %tobool.not = icmp eq i16 %rem1516.decomposed, 0
  %spec.select.v = select i1 %tobool.not, i16 1, i16 2
  %spec.select = add nuw nsw i16 %spec.select.v, %div1314
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry.if.end8_crit_edge
  %iocbs.0 = phi i16 [ 1, %entry.if.end8_crit_edge ], [ %spec.select, %if.then ]
  ret i16 %iocbs.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @qla2x00_calc_iocbs_64(i16 noundef zeroext %dsds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %dsds)
  %cmp = icmp ugt i16 %dsds, 2
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add i16 %dsds, -2
  %div1314 = udiv i16 %sub, 5
  %0 = mul i16 %div1314, 5
  %rem1516.decomposed = sub i16 %sub, %0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem1516.decomposed)
  %tobool.not = icmp eq i16 %rem1516.decomposed, 0
  %spec.select.v = select i1 %tobool.not, i16 1, i16 2
  %spec.select = add nuw nsw i16 %spec.select.v, %div1314
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry.if.end8_crit_edge
  %iocbs.0 = phi i16 [ 1, %entry.if.end8_crit_edge ], [ %spec.select, %if.then ]
  ret i16 %iocbs.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qla2x00_prep_cont_type1_iocb(ptr nocapture noundef readonly %vha, ptr nocapture noundef %req) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_index = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 5
  %0 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ring_index, align 4
  %inc = add i16 %1, 1
  store i16 %inc, ptr %ring_index, align 4
  %length = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 9
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %3)
  %cmp = icmp eq i16 %inc, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %ring_index to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %ring_index, align 4
  %ring = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring, align 4
  %ring_ptr = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ring_ptr, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ring_ptr5 = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %ring_ptr5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring_ptr5, align 4
  %incdec.ptr = getelementptr %struct.cmd_a64_entry_t, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %ring_ptr5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ring_ptr6 = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %ring_ptr6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring_ptr6, align 4
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %13, i32 0, i32 54
  %14 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %isp_type, align 8
  %and7 = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  %cond = select i1 %tobool.not, i32 167772160, i32 50331648
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %cond, ptr %11, align 1
  ret ptr %11
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qla24xx_configure_prot_mode(ptr nocapture noundef readonly %sp, ptr nocapture noundef %fw_prot_opts) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %2 = ptrtoint ptr %fw_prot_opts to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %fw_prot_opts, align 2
  %prot_op.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %prot_op.i, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %sw.default [
    i8 3, label %entry.sw.epilog.sink.split_crit_edge
    i8 4, label %entry.sw.epilog_crit_edge
    i8 1, label %entry.sw.epilog_crit_edge48
    i8 2, label %entry.sw.epilog.sink.split_crit_edge49
    i8 5, label %entry.sw.bb16_crit_edge
    i8 6, label %entry.sw.bb16_crit_edge50
  ]

entry.sw.bb16_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

entry.sw.bb16_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

entry.sw.epilog.sink.split_crit_edge49:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge48:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

sw.bb16:                                          ; preds = %entry.sw.bb16_crit_edge, %entry.sw.bb16_crit_edge50
  %prot_flags = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %prot_flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %prot_flags, align 2
  %8 = and i8 %7, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %. = select i1 %tobool.not, i16 2, i16 6
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.default, %sw.bb16, %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge49
  %.sink = phi i16 [ 2, %sw.default ], [ 1, %entry.sw.epilog.sink.split_crit_edge ], [ 1, %entry.sw.epilog.sink.split_crit_edge49 ], [ %., %sw.bb16 ]
  %9 = ptrtoint ptr %fw_prot_opts to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink, ptr %fw_prot_opts, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge48
  %prot_flags27 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %prot_flags27 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %prot_flags27, align 2
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool30.not = icmp eq i8 %12, 0
  br i1 %tobool30.not, label %if.then31, label %sw.epilog.if.end35_crit_edge

sw.epilog.if.end35_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then31:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %fw_prot_opts to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fw_prot_opts, align 2
  %15 = or i16 %14, 16
  store i16 %15, ptr %fw_prot_opts, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %sw.epilog.if.end35_crit_edge
  %prot_sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end35.scsi_prot_sg_count.exit_crit_edge, label %cond.true.i

if.end35.scsi_prot_sg_count.exit_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_prot_sg_count.exit

cond.true.i:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %nents.i = getelementptr inbounds %struct.sg_table, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nents.i, align 4
  br label %scsi_prot_sg_count.exit

scsi_prot_sg_count.exit:                          ; preds = %cond.true.i, %if.end35.scsi_prot_sg_count.exit_crit_edge
  %cond.i = phi i32 [ %19, %cond.true.i ], [ 0, %if.end35.scsi_prot_sg_count.exit_crit_edge ]
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_build_scsi_iocbs_32(ptr nocapture noundef readonly %sp, ptr noundef %cmd_pkt, i16 noundef zeroext %tot_dsds) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %2 = ptrtoint ptr %cmd_pkt to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 285212672, ptr %cmd_pkt, align 1
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %byte_count = getelementptr inbounds %struct.cmd_entry_t, ptr %cmd_pkt, i32 0, i32 12
  %7 = ptrtoint ptr %byte_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %byte_count, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vha2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %8 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vha2, align 8
  %10 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %u, align 8
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sc_data_direction.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %13, label %if.end.qla2x00_get_cmd_direction.exit_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then7.i
  ]

if.end.qla2x00_get_cmd_direction.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla2x00_get_cmd_direction.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 17, i32 1
  %15 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i.i, align 4
  %conv.i = zext i32 %16 to i64
  %output_bytes.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 58, i32 2
  %17 = ptrtoint ptr %output_bytes.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %output_bytes.i, align 8
  %add.i = add i64 %18, %conv.i
  store i64 %add.i, ptr %output_bytes.i, align 8
  %output_requests.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 58, i32 4
  br label %if.end14.sink.split.i

if.then7.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %length.i22.i = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 17, i32 1
  %19 = ptrtoint ptr %length.i22.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i22.i, align 4
  %conv9.i = zext i32 %20 to i64
  %input_bytes.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 58, i32 1
  %21 = ptrtoint ptr %input_bytes.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %input_bytes.i, align 8
  %add11.i = add i64 %22, %conv9.i
  store i64 %add11.i, ptr %input_bytes.i, align 8
  %input_requests.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 58, i32 3
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.then7.i, %if.then.i
  %input_requests.sink23.i = phi ptr [ %input_requests.i, %if.then7.i ], [ %output_requests.i, %if.then.i ]
  %cflags.0.ph.i = phi i16 [ 32, %if.then7.i ], [ 64, %if.then.i ]
  %23 = ptrtoint ptr %input_requests.sink23.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %input_requests.sink23.i, align 8
  %inc13.i = add i64 %24, 1
  store i64 %inc13.i, ptr %input_requests.sink23.i, align 8
  br label %qla2x00_get_cmd_direction.exit

qla2x00_get_cmd_direction.exit:                   ; preds = %if.end14.sink.split.i, %if.end.qla2x00_get_cmd_direction.exit_crit_edge
  %cflags.0.i = phi i16 [ 0, %if.end.qla2x00_get_cmd_direction.exit_crit_edge ], [ %cflags.0.ph.i, %if.end14.sink.split.i ]
  %25 = tail call i16 @llvm.bswap.i16(i16 %cflags.0.i)
  %control_flags = getelementptr inbounds %struct.cmd_entry_t, ptr %cmd_pkt, i32 0, i32 7
  %26 = ptrtoint ptr %control_flags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %control_flags, align 4
  %or33 = or i16 %27, %25
  store i16 %or33, ptr %control_flags, align 4
  %conv7 = zext i16 %tot_dsds to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tot_dsds)
  %cmp840.not = icmp eq i16 %tot_dsds, 0
  br i1 %cmp840.not, label %qla2x00_get_cmd_direction.exit.cleanup_crit_edge, label %for.body.lr.ph

qla2x00_get_cmd_direction.exit.cleanup_crit_edge: ; preds = %qla2x00_get_cmd_direction.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %qla2x00_get_cmd_direction.exit
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %28 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdb.i, align 4
  %30 = getelementptr inbounds %struct.cmd_entry_t, ptr %cmd_pkt, i32 0, i32 13
  %req1.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 54
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end16.for.body_crit_edge ]
  %sg.043 = phi ptr [ %29, %for.body.lr.ph ], [ %call17, %if.end16.for.body_crit_edge ]
  %avail_dsds.042 = phi i16 [ 3, %for.body.lr.ph ], [ %dec, %if.end16.for.body_crit_edge ]
  %cur_dsd.041 = phi ptr [ %30, %for.body.lr.ph ], [ %incdec.ptr.i37, %if.end16.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %avail_dsds.042)
  %cmp11 = icmp eq i16 %avail_dsds.042, 0
  br i1 %cmp11, label %if.then13, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then13:                                        ; preds = %for.body
  %31 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %req1.i, align 8
  %ring_index.i = getelementptr inbounds %struct.req_que, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ring_index.i, align 4
  %inc.i = add i16 %34, 1
  store i16 %inc.i, ptr %ring_index.i, align 4
  %length.i34 = getelementptr inbounds %struct.req_que, ptr %32, i32 0, i32 9
  %35 = ptrtoint ptr %length.i34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %length.i34, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %36)
  %cmp.i = icmp eq i16 %inc.i, %36
  br i1 %cmp.i, label %if.then.i35, label %if.else.i

if.then.i35:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %ring_index.i, align 4
  %ring.i = getelementptr inbounds %struct.req_que, ptr %32, i32 0, i32 1
  %38 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring.i, align 4
  %ring_ptr.i = getelementptr inbounds %struct.req_que, ptr %32, i32 0, i32 2
  %40 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %ring_ptr.i, align 4
  br label %qla2x00_prep_cont_type0_iocb.exit

if.else.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %ring_ptr6.i = getelementptr inbounds %struct.req_que, ptr %32, i32 0, i32 2
  %41 = ptrtoint ptr %ring_ptr6.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring_ptr6.i, align 4
  %incdec.ptr.i = getelementptr %struct.cmd_a64_entry_t, ptr %42, i32 1
  store ptr %incdec.ptr.i, ptr %ring_ptr6.i, align 4
  br label %qla2x00_prep_cont_type0_iocb.exit

qla2x00_prep_cont_type0_iocb.exit:                ; preds = %if.else.i, %if.then.i35
  %ring_ptr7.i = getelementptr inbounds %struct.req_que, ptr %32, i32 0, i32 2
  %43 = ptrtoint ptr %ring_ptr7.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ring_ptr7.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 33554432, ptr %44, align 1
  %dsd = getelementptr inbounds %struct.cont_entry_t, ptr %44, i32 0, i32 5
  br label %if.end16

if.end16:                                         ; preds = %qla2x00_prep_cont_type0_iocb.exit, %for.body.if.end16_crit_edge
  %cur_dsd.1 = phi ptr [ %dsd, %qla2x00_prep_cont_type0_iocb.exit ], [ %cur_dsd.041, %for.body.if.end16_crit_edge ]
  %avail_dsds.1 = phi i16 [ 7, %qla2x00_prep_cont_type0_iocb.exit ], [ %avail_dsds.042, %for.body.if.end16_crit_edge ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.043, i32 0, i32 3
  %46 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_address.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #14
  %49 = ptrtoint ptr %cur_dsd.1 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %cur_dsd.1, align 1
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.043, i32 0, i32 4
  %50 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_length.i, align 4
  %length.i36 = getelementptr inbounds %struct.dsd32, ptr %cur_dsd.1, i32 0, i32 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #14
  %53 = ptrtoint ptr %length.i36 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %length.i36, align 1
  %incdec.ptr.i37 = getelementptr %struct.dsd32, ptr %cur_dsd.1, i32 1
  %dec = add i16 %avail_dsds.1, -1
  %inc = add nuw nsw i32 %i.044, 1
  %call17 = tail call ptr @sg_next(ptr noundef %sg.043) #14
  %exitcond.not = icmp eq i32 %inc, %conv7
  br i1 %exitcond.not, label %if.end16.cleanup_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %qla2x00_get_cmd_direction.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_build_scsi_iocbs_64(ptr nocapture noundef readonly %sp, ptr noundef %cmd_pkt, i16 noundef zeroext %tot_dsds) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %2 = ptrtoint ptr %cmd_pkt to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 419430400, ptr %cmd_pkt, align 1
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %byte_count = getelementptr inbounds %struct.cmd_entry_t, ptr %cmd_pkt, i32 0, i32 12
  %7 = ptrtoint ptr %byte_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %byte_count, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vha2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %8 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vha2, align 8
  %10 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %u, align 8
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sc_data_direction.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %13, label %if.end.qla2x00_get_cmd_direction.exit_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then7.i
  ]

if.end.qla2x00_get_cmd_direction.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla2x00_get_cmd_direction.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 17, i32 1
  %15 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i.i, align 4
  %conv.i = zext i32 %16 to i64
  %output_bytes.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 58, i32 2
  %17 = ptrtoint ptr %output_bytes.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %output_bytes.i, align 8
  %add.i = add i64 %18, %conv.i
  store i64 %add.i, ptr %output_bytes.i, align 8
  %output_requests.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 58, i32 4
  br label %if.end14.sink.split.i

if.then7.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %length.i22.i = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 17, i32 1
  %19 = ptrtoint ptr %length.i22.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i22.i, align 4
  %conv9.i = zext i32 %20 to i64
  %input_bytes.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 58, i32 1
  %21 = ptrtoint ptr %input_bytes.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %input_bytes.i, align 8
  %add11.i = add i64 %22, %conv9.i
  store i64 %add11.i, ptr %input_bytes.i, align 8
  %input_requests.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 58, i32 3
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.then7.i, %if.then.i
  %input_requests.sink23.i = phi ptr [ %input_requests.i, %if.then7.i ], [ %output_requests.i, %if.then.i ]
  %cflags.0.ph.i = phi i16 [ 32, %if.then7.i ], [ 64, %if.then.i ]
  %23 = ptrtoint ptr %input_requests.sink23.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %input_requests.sink23.i, align 8
  %inc13.i = add i64 %24, 1
  store i64 %inc13.i, ptr %input_requests.sink23.i, align 8
  br label %qla2x00_get_cmd_direction.exit

qla2x00_get_cmd_direction.exit:                   ; preds = %if.end14.sink.split.i, %if.end.qla2x00_get_cmd_direction.exit_crit_edge
  %cflags.0.i = phi i16 [ 0, %if.end.qla2x00_get_cmd_direction.exit_crit_edge ], [ %cflags.0.ph.i, %if.end14.sink.split.i ]
  %25 = tail call i16 @llvm.bswap.i16(i16 %cflags.0.i)
  %control_flags = getelementptr inbounds %struct.cmd_entry_t, ptr %cmd_pkt, i32 0, i32 7
  %26 = ptrtoint ptr %control_flags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %control_flags, align 4
  %or34 = or i16 %27, %25
  store i16 %or34, ptr %control_flags, align 4
  %conv7 = zext i16 %tot_dsds to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tot_dsds)
  %cmp842.not = icmp eq i16 %tot_dsds, 0
  br i1 %cmp842.not, label %qla2x00_get_cmd_direction.exit.cleanup_crit_edge, label %for.body.lr.ph

qla2x00_get_cmd_direction.exit.cleanup_crit_edge: ; preds = %qla2x00_get_cmd_direction.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %qla2x00_get_cmd_direction.exit
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %28 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdb.i, align 4
  %30 = getelementptr inbounds %struct.cmd_entry_t, ptr %cmd_pkt, i32 0, i32 13
  %req = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 54
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 52
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end16.for.body_crit_edge ]
  %sg.045 = phi ptr [ %29, %for.body.lr.ph ], [ %call17, %if.end16.for.body_crit_edge ]
  %avail_dsds.044 = phi i16 [ 2, %for.body.lr.ph ], [ %dec, %if.end16.for.body_crit_edge ]
  %cur_dsd.043 = phi ptr [ %30, %for.body.lr.ph ], [ %incdec.ptr.i39, %if.end16.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %avail_dsds.044)
  %cmp11 = icmp eq i16 %avail_dsds.044, 0
  br i1 %cmp11, label %if.then13, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then13:                                        ; preds = %for.body
  %31 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %req, align 8
  %ring_index.i = getelementptr inbounds %struct.req_que, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ring_index.i, align 4
  %inc.i = add i16 %34, 1
  store i16 %inc.i, ptr %ring_index.i, align 4
  %length.i35 = getelementptr inbounds %struct.req_que, ptr %32, i32 0, i32 9
  %35 = ptrtoint ptr %length.i35 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %length.i35, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %36)
  %cmp.i = icmp eq i16 %inc.i, %36
  br i1 %cmp.i, label %if.then.i36, label %if.else.i

if.then.i36:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %ring_index.i, align 4
  %ring.i = getelementptr inbounds %struct.req_que, ptr %32, i32 0, i32 1
  %38 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring.i, align 4
  %ring_ptr.i = getelementptr inbounds %struct.req_que, ptr %32, i32 0, i32 2
  %40 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %ring_ptr.i, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit

if.else.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %ring_ptr5.i = getelementptr inbounds %struct.req_que, ptr %32, i32 0, i32 2
  %41 = ptrtoint ptr %ring_ptr5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring_ptr5.i, align 4
  %incdec.ptr.i = getelementptr %struct.cmd_a64_entry_t, ptr %42, i32 1
  store ptr %incdec.ptr.i, ptr %ring_ptr5.i, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit

qla2x00_prep_cont_type1_iocb.exit:                ; preds = %if.else.i, %if.then.i36
  %ring_ptr6.i = getelementptr inbounds %struct.req_que, ptr %32, i32 0, i32 2
  %43 = ptrtoint ptr %ring_ptr6.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ring_ptr6.i, align 4
  %45 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw.i, align 4
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %46, i32 0, i32 54
  %47 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %isp_type.i, align 8
  %and7.i = and i32 %48, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  %cond.i = select i1 %tobool.not.i, i32 167772160, i32 50331648
  %49 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %cond.i, ptr %44, align 1
  %dsd = getelementptr inbounds %struct.cont_a64_entry_t, ptr %44, i32 0, i32 4
  br label %if.end16

if.end16:                                         ; preds = %qla2x00_prep_cont_type1_iocb.exit, %for.body.if.end16_crit_edge
  %cur_dsd.1 = phi ptr [ %dsd, %qla2x00_prep_cont_type1_iocb.exit ], [ %cur_dsd.043, %for.body.if.end16_crit_edge ]
  %avail_dsds.1 = phi i16 [ 5, %qla2x00_prep_cont_type1_iocb.exit ], [ %avail_dsds.044, %for.body.if.end16_crit_edge ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.045, i32 0, i32 3
  %50 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_address.i, align 4
  %conv.i37 = zext i32 %51 to i64
  %52 = tail call i64 @llvm.bswap.i64(i64 %conv.i37) #14
  %53 = ptrtoint ptr %cur_dsd.1 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %52, ptr %cur_dsd.1, align 1
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.045, i32 0, i32 4
  %54 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_length.i, align 4
  %length.i38 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.1, i32 0, i32 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #14
  %57 = ptrtoint ptr %length.i38 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %length.i38, align 1
  %incdec.ptr.i39 = getelementptr %struct.dsd64, ptr %cur_dsd.1, i32 1
  %dec = add i16 %avail_dsds.1, -1
  %inc = add nuw nsw i32 %i.046, 1
  %call17 = tail call ptr @sg_next(ptr noundef %sg.045) #14
  %exitcond.not = icmp eq i32 %inc, %conv7
  br i1 %exitcond.not, label %if.end16.cleanup_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %qla2x00_get_cmd_direction.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2xxx_get_next_handle(ptr nocapture noundef readonly %req) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %num_outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 18
  %0 = ptrtoint ptr %num_outstanding_cmds to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_outstanding_cmds, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp17 = icmp ugt i16 %1, 1
  br i1 %cmp17, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %current_outstanding_cmd = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 17
  %2 = ptrtoint ptr %current_outstanding_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_outstanding_cmd, align 4
  %outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 16
  %4 = ptrtoint ptr %outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %outstanding_cmds, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc8 = add nuw nsw i32 %index.018, 1
  %exitcond.not = icmp eq i32 %inc8, %conv
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %handle.019 = phi i32 [ %3, %for.body.lr.ph ], [ %spec.store.select, %for.cond.for.body_crit_edge ]
  %index.018 = phi i32 [ 1, %for.body.lr.ph ], [ %inc8, %for.cond.for.body_crit_edge ]
  %inc = add i32 %handle.019, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp4 = icmp eq i32 %inc, %conv
  %spec.store.select = select i1 %cmp4, i32 1, i32 %inc
  %arrayidx = getelementptr ptr, ptr %5, i32 %spec.store.select
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %spec.store.select, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_start_scsi(ptr noundef %sp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %u, align 8
  %req_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 24
  %8 = ptrtoint ptr %req_q_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req_q_map, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %rsp_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 25
  %12 = ptrtoint ptr %rsp_q_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rsp_q_map, align 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %marker_needed = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %marker_needed to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %marker_needed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not = icmp eq i8 %17, 0
  br i1 %cmp.not, label %entry.do.body10_crit_edge, label %if.then

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.then:                                          ; preds = %entry
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 34
  %18 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_qpair, align 4
  %qp_lock_ptr.i = getelementptr inbounds %struct.qla_qpair, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qp_lock_ptr.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #14
  %req1.i = getelementptr inbounds %struct.qla_qpair, ptr %19, i32 0, i32 12
  %22 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req1.i, align 4
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i, align 4
  %call2.i276 = tail call ptr @__qla2x00_alloc_iocbs(ptr noundef %19, ptr noundef null) #14
  %cmp.i = icmp eq ptr %call2.i276, null
  br i1 %cmp.i, label %__qla2x00_marker.exit, label %if.end

__qla2x00_marker.exit:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %29, i32 noundef 12326, ptr noundef nonnull @.str.32) #14
  %30 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %qp_lock_ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %call2.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %call2.i276 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 4, ptr %call2.i276, align 4
  %modifier.i = getelementptr inbounds %struct.mrk_entry_t, ptr %call2.i276, i32 0, i32 6
  %33 = ptrtoint ptr %modifier.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %modifier.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !147
  tail call void @arm_heavy_mb() #14
  tail call void @qla2x00_start_iocbs(ptr noundef %1, ptr noundef %23) #14
  %34 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %qp_lock_ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %call2.i) #14
  %36 = ptrtoint ptr %marker_needed to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %marker_needed, align 4
  br label %do.body10

do.body10:                                        ; preds = %if.end, %entry.do.body10_crit_edge
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 6
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #14
  %num_outstanding_cmds.i = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 18
  %37 = ptrtoint ptr %num_outstanding_cmds.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %num_outstanding_cmds.i, align 4
  %conv.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %38)
  %cmp17.i = icmp ugt i16 %38, 1
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %do.body10.if.end170_crit_edge

do.body10.if.end170_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170

for.body.lr.ph.i:                                 ; preds = %do.body10
  %current_outstanding_cmd.i = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 17
  %39 = ptrtoint ptr %current_outstanding_cmd.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %current_outstanding_cmd.i, align 4
  %outstanding_cmds.i = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 16
  %41 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %outstanding_cmds.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc8.i = add nuw nsw i32 %index.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.if.end170_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.if.end170_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %handle.019.i = phi i32 [ %40, %for.body.lr.ph.i ], [ %spec.store.select.i, %for.cond.i.for.body.i_crit_edge ]
  %index.018.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc8.i, %for.cond.i.for.body.i_crit_edge ]
  %inc.i = add i32 %handle.019.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp4.i = icmp eq i32 %inc.i, %conv.i
  %spec.store.select.i = select i1 %cmp4.i, i32 1, i32 %inc.i
  %arrayidx.i = getelementptr ptr, ptr %42, i32 %spec.store.select.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %qla2xxx_get_next_handle.exit, label %for.cond.i

qla2xxx_get_next_handle.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp18 = icmp eq i32 %spec.store.select.i, 0
  br i1 %cmp18, label %qla2xxx_get_next_handle.exit.if.end170_crit_edge, label %if.end21

qla2xxx_get_next_handle.exit.if.end170_crit_edge: ; preds = %qla2xxx_get_next_handle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170

if.end21:                                         ; preds = %qla2xxx_get_next_handle.exit
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 17, i32 0, i32 1
  %45 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not = icmp eq i32 %46, 0
  br i1 %tobool.not, label %if.end21.if.end33_crit_edge, label %if.then23

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then23:                                        ; preds = %if.end21
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 17
  %49 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sdb.i, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 15
  %51 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sc_data_direction, align 4
  %call26 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %50, i32 noundef %46, i32 noundef %52, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then23.if.end170_crit_edge, label %if.then23.if.end33_crit_edge, !prof !148

if.then23.if.end33_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then23.if.end170_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170

if.end33:                                         ; preds = %if.then23.if.end33_crit_edge, %if.end21.if.end33_crit_edge
  %nseg.0 = phi i32 [ %call26, %if.then23.if.end33_crit_edge ], [ 0, %if.end21.if.end33_crit_edge ]
  %conv34 = trunc i32 %nseg.0 to i16
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 234
  %53 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %isp_ops, align 4
  %calc_req_entries = getelementptr inbounds %struct.isp_operations, ptr %54, i32 0, i32 18
  %55 = ptrtoint ptr %calc_req_entries to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %calc_req_entries, align 4
  %call35 = tail call zeroext i16 %56(i16 noundef zeroext %conv34) #14
  %cnt36 = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 8
  %57 = ptrtoint ptr %cnt36 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %cnt36, align 4
  %conv37 = zext i16 %58 to i32
  %conv38 = zext i16 %call35 to i32
  %add = add nuw nsw i32 %conv38, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv37)
  %cmp39 = icmp ugt i32 %add, %conv37
  br i1 %cmp39, label %if.then41, label %if.end33.if.end79_crit_edge

if.end33.if.end79_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then41:                                        ; preds = %if.end33
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %59 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %isp_type, align 8
  %61 = and i32 %60, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %62 = icmp eq i32 %61, 0
  %mailbox4 = getelementptr inbounds %struct.device_reg_2xxx, ptr %5, i32 0, i32 8, i32 0, i32 4
  %req_q_out = getelementptr inbounds %struct.device_reg_2xxx, ptr %5, i32 0, i32 8, i32 0, i32 1
  %cond = select i1 %62, ptr %req_q_out, ptr %mailbox4
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cond) #14, !srcloc !149
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #14
  %ring_index = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 5
  %65 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %ring_index, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %66)
  %cmp53 = icmp ugt i16 %64, %66
  br i1 %cmp53, label %if.then55, label %if.else61

if.then55:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i16 %64, %66
  br label %if.end70

if.else61:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  %length = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 9
  %67 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %length, align 2
  %sub66.neg = sub i16 %64, %66
  %sub67 = add i16 %sub66.neg, %68
  br label %if.end70

if.end70:                                         ; preds = %if.else61, %if.then55
  %storemerge272 = phi i16 [ %sub67, %if.else61 ], [ %sub, %if.then55 ]
  %69 = ptrtoint ptr %cnt36 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %storemerge272, ptr %cnt36, align 4
  %conv72 = zext i16 %storemerge272 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv72)
  %cmp75 = icmp ugt i32 %add, %conv72
  br i1 %cmp75, label %queuing_error, label %if.end70.if.end79_crit_edge

if.end70.if.end79_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.end79:                                         ; preds = %if.end70.if.end79_crit_edge, %if.end33.if.end79_crit_edge
  %70 = ptrtoint ptr %current_outstanding_cmd.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %spec.store.select.i, ptr %current_outstanding_cmd.i, align 4
  %71 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %outstanding_cmds.i, align 4
  %arrayidx80 = getelementptr ptr, ptr %72, i32 %spec.store.select.i
  %73 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %sp, ptr %arrayidx80, align 4
  %handle81 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %74 = ptrtoint ptr %handle81 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %spec.store.select.i, ptr %handle81, align 8
  %75 = inttoptr i32 %spec.store.select.i to ptr
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 23
  %76 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %host_scribble, align 4
  %77 = ptrtoint ptr %cnt36 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %cnt36, align 4
  %sub85 = sub i16 %78, %call35
  store i16 %sub85, ptr %cnt36, align 4
  %ring_ptr = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 2
  %79 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ring_ptr, align 4
  %handle87 = getelementptr inbounds %struct.cmd_entry_t, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %handle87 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %spec.store.select.i, ptr %handle87, align 4
  %add.ptr = getelementptr i32, ptr %80, i32 2
  %82 = call ptr @memset(ptr %add.ptr, i32 0, i32 56)
  %83 = tail call i16 @llvm.bswap.i16(i16 %conv34)
  %dseg_count = getelementptr inbounds %struct.cmd_entry_t, ptr %80, i32 0, i32 10
  %84 = ptrtoint ptr %dseg_count to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %dseg_count, align 2
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %85 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %tobool90.not = icmp sgt i32 %86, -1
  %fcport93 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %87 = ptrtoint ptr %fcport93 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fcport93, align 4
  %loop_id94 = getelementptr inbounds %struct.fc_port, ptr %88, i32 0, i32 7
  %89 = ptrtoint ptr %loop_id94 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %loop_id94, align 4
  br i1 %tobool90.not, label %if.else92, label %if.then91

if.then91:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  %91 = tail call i16 @llvm.bswap.i16(i16 %90)
  %92 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %add.ptr, align 4
  br label %do.end99

if.else92:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  %conv95 = trunc i16 %90 to i8
  %standard = getelementptr inbounds %struct.anon.82, ptr %add.ptr, i32 0, i32 1
  %93 = ptrtoint ptr %standard to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv95, ptr %standard, align 1
  br label %do.end99

do.end99:                                         ; preds = %if.else92, %if.then91
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 1
  %94 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %95, i32 0, i32 18
  %96 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %lun, align 8
  %conv100 = trunc i64 %97 to i16
  %98 = tail call i16 @llvm.bswap.i16(i16 %conv100)
  %lun101 = getelementptr inbounds %struct.cmd_entry_t, ptr %80, i32 0, i32 6
  %99 = ptrtoint ptr %lun101 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %lun101, align 2
  %control_flags = getelementptr inbounds %struct.cmd_entry_t, ptr %80, i32 0, i32 7
  %100 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 2048, ptr %control_flags, align 4
  %scsi_cdb = getelementptr inbounds %struct.cmd_entry_t, ptr %80, i32 0, i32 11
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 16
  %101 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cmnd, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 14
  %103 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %cmd_len, align 4
  %conv102 = zext i16 %104 to i32
  %105 = call ptr @memcpy(ptr %scsi_cdb, ptr %102, i32 %conv102)
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 17, i32 1
  %106 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %length.i, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  %byte_count = getelementptr inbounds %struct.cmd_entry_t, ptr %80, i32 0, i32 12
  %109 = ptrtoint ptr %byte_count to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %byte_count, align 4
  %110 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %isp_ops, align 4
  %build_iocbs = getelementptr inbounds %struct.isp_operations, ptr %111, i32 0, i32 19
  %112 = ptrtoint ptr %build_iocbs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %build_iocbs, align 4
  tail call void %113(ptr noundef %sp, ptr noundef %80, i16 noundef zeroext %conv34) #14
  %conv105 = trunc i16 %call35 to i8
  %entry_count = getelementptr inbounds %struct.cmd_entry_t, ptr %80, i32 0, i32 1
  %114 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv105, ptr %entry_count, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !150
  tail call void @arm_heavy_mb() #14
  %ring_index109 = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 5
  %115 = ptrtoint ptr %ring_index109 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %ring_index109, align 4
  %inc = add i16 %116, 1
  store i16 %inc, ptr %ring_index109, align 4
  %length112 = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 9
  %117 = ptrtoint ptr %length112 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %length112, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %118)
  %cmp114 = icmp eq i16 %inc, %118
  br i1 %cmp114, label %if.then116, label %if.else119

if.then116:                                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #16
  %119 = ptrtoint ptr %ring_index109 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %ring_index109, align 4
  %ring = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 1
  %120 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ring, align 4
  br label %if.end121

if.else119:                                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #16
  %122 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ring_ptr, align 4
  %incdec.ptr = getelementptr %struct.cmd_a64_entry_t, ptr %123, i32 1
  br label %if.end121

if.end121:                                        ; preds = %if.else119, %if.then116
  %storemerge = phi ptr [ %incdec.ptr, %if.else119 ], [ %121, %if.then116 ]
  %124 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %storemerge, ptr %ring_ptr, align 4
  %flags122 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %125 = ptrtoint ptr %flags122 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %flags122, align 4
  %127 = or i16 %126, 1
  store i16 %127, ptr %flags122, align 4
  %isp_type125 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %128 = ptrtoint ptr %isp_type125 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %isp_type125, align 8
  %130 = and i32 %129, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %131 = icmp eq i32 %130, 0
  %mailbox4136 = getelementptr inbounds %struct.device_reg_2xxx, ptr %5, i32 0, i32 8, i32 0, i32 4
  %u138 = getelementptr inbounds %struct.device_reg_2xxx, ptr %5, i32 0, i32 8
  %cond140 = select i1 %131, ptr %u138, ptr %mailbox4136
  %132 = ptrtoint ptr %ring_index109 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %ring_index109, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !151
  tail call void @arm_heavy_mb() #14
  %134 = tail call i16 @llvm.bswap.i16(i16 %133) #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %cond140, i16 %134) #14, !srcloc !152
  %135 = ptrtoint ptr %isp_type125 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %isp_type125, align 8
  %137 = and i32 %136, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %138 = icmp eq i32 %137, 0
  %cond158 = select i1 %138, ptr %u138, ptr %mailbox4136
  %139 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cond158) #14, !srcloc !149
  %flags160 = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 8
  %140 = ptrtoint ptr %flags160 to i32
  call void @__asan_load4_noabort(i32 %140)
  %bf.load = load volatile i32, ptr %flags160, align 8
  %141 = and i32 %bf.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool161.not = icmp eq i32 %141, 0
  br i1 %tobool161.not, label %if.end121.if.end166_crit_edge, label %land.lhs.true

if.end121.if.end166_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end166

land.lhs.true:                                    ; preds = %if.end121
  %ring_ptr162 = getelementptr inbounds %struct.rsp_que, ptr %15, i32 0, i32 2
  %142 = ptrtoint ptr %ring_ptr162 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ring_ptr162, align 4
  %signature = getelementptr inbounds %struct.response_t, ptr %143, i32 0, i32 6
  %144 = ptrtoint ptr %signature to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %signature, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559030611, i32 %145)
  %cmp163.not = icmp eq i32 %145, -559030611
  br i1 %cmp163.not, label %land.lhs.true.if.end166_crit_edge, label %if.then165

land.lhs.true.if.end166_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end166

if.then165:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qla2x00_process_response_queue(ptr noundef %15) #14
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %land.lhs.true.if.end166_crit_edge, %if.end121.if.end166_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call14) #14
  br label %cleanup

queuing_error:                                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv34)
  %tobool168.not = icmp eq i16 %conv34, 0
  br i1 %tobool168.not, label %queuing_error.if.end170_crit_edge, label %if.then169

queuing_error.if.end170_crit_edge:                ; preds = %queuing_error
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170

if.then169:                                       ; preds = %queuing_error
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @scsi_dma_unmap(ptr noundef %7) #14
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %queuing_error.if.end170_crit_edge, %if.then23.if.end170_crit_edge, %qla2xxx_get_next_handle.exit.if.end170_crit_edge, %for.cond.i.if.end170_crit_edge, %do.body10.if.end170_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call14) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end170, %if.end166, %__qla2x00_marker.exit
  %retval.0 = phi i32 [ 258, %if.end170 ], [ 0, %if.end166 ], [ 258, %__qla2x00_marker.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_marker(ptr noundef %vha, ptr nocapture noundef %qpair, i16 noundef zeroext %loop_id, i64 noundef %lun, i8 noundef zeroext %type) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %qp_lock_ptr = getelementptr inbounds %struct.qla_qpair, ptr %qpair, i32 0, i32 3
  %0 = ptrtoint ptr %qp_lock_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp_lock_ptr, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  %call5 = tail call fastcc i32 @__qla2x00_marker(ptr noundef %vha, ptr noundef %qpair, i16 noundef zeroext %loop_id, i64 noundef %lun, i8 noundef zeroext %type)
  %2 = ptrtoint ptr %qp_lock_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_lock_ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call2) #14
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_process_response_queue(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_start_iocbs(ptr noundef %vha, ptr nocapture noundef %req) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %mqenable = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %mqenable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mqenable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cond.true_crit_edge

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true

lor.lhs.false:                                    ; preds = %entry
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %6 = and i32 %5, 45711360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %cond.false, label %lor.lhs.false.cond.true_crit_edge

lor.lhs.false.cond.true_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true

cond.true:                                        ; preds = %lor.lhs.false.cond.true_crit_edge, %entry.cond.true_crit_edge
  %mqiobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %mqiobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mqiobase, align 32
  %id = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 12
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %id, align 4
  %conv33 = zext i16 %11 to i32
  %mul = shl nuw nsw i32 %conv33, 12
  %add.ptr = getelementptr i8, ptr %9, i32 %mul
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %13, %cond.false ]
  %isp_type34 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %14 = ptrtoint ptr %isp_type34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %isp_type34, align 8
  %16 = and i32 %15, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qla82xx_start_iocbs(ptr noundef %vha) #14
  br label %if.end157

if.else:                                          ; preds = %cond.end
  %ring_index = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 5
  %18 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ring_index, align 4
  %inc = add i16 %19, 1
  store i16 %inc, ptr %ring_index, align 4
  %length = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 9
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %21)
  %cmp = icmp eq i16 %inc, %21
  br i1 %cmp, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %ring_index to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %ring_index, align 4
  %ring = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 1
  %23 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring, align 4
  %ring_ptr = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 2
  %25 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %ring_ptr, align 4
  br label %if.end

if.else49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %ring_ptr50 = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 2
  %26 = ptrtoint ptr %ring_ptr50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ring_ptr50, align 4
  %incdec.ptr = getelementptr %struct.cmd_a64_entry_t, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %ring_ptr50, align 4
  br label %if.end

if.end:                                           ; preds = %if.else49, %if.then47
  %28 = ptrtoint ptr %mqenable to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mqenable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool53.not = icmp eq i8 %29, 0
  br i1 %tobool53.not, label %lor.lhs.false54, label %if.end.if.then79_crit_edge

if.end.if.then79_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then79

lor.lhs.false54:                                  ; preds = %if.end
  %30 = ptrtoint ptr %isp_type34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %isp_type34, align 8
  %32 = and i32 %31, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %if.else82, label %lor.lhs.false54.if.then79_crit_edge

lor.lhs.false54.if.then79_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then79

if.then79:                                        ; preds = %lor.lhs.false54.if.then79_crit_edge, %if.end.if.then79_crit_edge
  %req_q_in = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 3
  %34 = ptrtoint ptr %req_q_in to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req_q_in, align 4
  %36 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ring_index, align 4
  %conv81 = zext i16 %37 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !153
  tail call void @arm_heavy_mb() #14
  %38 = tail call i32 @llvm.bswap.i32(i32 %conv81) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %38) #14, !srcloc !154
  br label %if.end157

if.else82:                                        ; preds = %lor.lhs.false54
  %39 = and i32 %31, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %if.else97, label %if.then92

if.then92:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #16
  %req_q_in93 = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 3
  %41 = ptrtoint ptr %req_q_in93 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %req_q_in93, align 4
  %43 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ring_index, align 4
  %conv95 = zext i16 %44 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !153
  tail call void @arm_heavy_mb() #14
  %45 = tail call i32 @llvm.bswap.i32(i32 %conv95) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %45) #14, !srcloc !154
  %iobase96 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %iobase96 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iobase96, align 4
  %hccr = getelementptr inbounds %struct.device_reg_24xx, ptr %47, i32 0, i32 16
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hccr) #14, !srcloc !155
  br label %if.end157

if.else97:                                        ; preds = %if.else82
  %and100 = and i32 %31, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.else109, label %if.then102

if.then102:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #16
  %req_q_in103 = getelementptr inbounds %struct.device_reg_fx00, ptr %cond, i32 0, i32 40
  %49 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ring_index, align 4
  %conv105 = zext i16 %50 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !153
  tail call void @arm_heavy_mb() #14
  %51 = tail call i32 @llvm.bswap.i32(i32 %conv105) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %req_q_in103, i32 %51) #14, !srcloc !154
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %req_q_in103) #14, !srcloc !155
  %cregbase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 12
  %53 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cregbase, align 64
  %add.ptr108 = getelementptr i8, ptr %54, i32 133636
  %rqstq_intr_code = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 14
  %55 = ptrtoint ptr %rqstq_intr_code to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rqstq_intr_code, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !153
  tail call void @arm_heavy_mb() #14
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %57) #14, !srcloc !154
  br label %if.end157

if.else109:                                       ; preds = %if.else97
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 55
  %58 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %device_type, align 4
  %and110 = and i32 %59, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.else118, label %if.then112

if.then112:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #16
  %req_q_in113 = getelementptr inbounds %struct.device_reg_24xx, ptr %cond, i32 0, i32 6
  %60 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ring_index, align 4
  %conv115 = zext i16 %61 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !153
  tail call void @arm_heavy_mb() #14
  %62 = tail call i32 @llvm.bswap.i32(i32 %conv115) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %req_q_in113, i32 %62) #14, !srcloc !154
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %req_q_in113) #14, !srcloc !155
  br label %if.end157

if.else118:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #16
  %64 = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %65 = icmp eq i32 %64, 0
  %mailbox4 = getelementptr inbounds %struct.device_reg_2xxx, ptr %cond, i32 0, i32 8, i32 0, i32 4
  %u130 = getelementptr inbounds %struct.device_reg_2xxx, ptr %cond, i32 0, i32 8
  %cond133 = select i1 %65, ptr %u130, ptr %mailbox4
  %66 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %ring_index, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !151
  tail call void @arm_heavy_mb() #14
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %cond133, i16 %68) #14, !srcloc !152
  %69 = ptrtoint ptr %isp_type34 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %isp_type34, align 8
  %71 = and i32 %70, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %72 = icmp eq i32 %71, 0
  %cond151 = select i1 %72, ptr %u130, ptr %mailbox4
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cond151) #14, !srcloc !149
  br label %if.end157

if.end157:                                        ; preds = %if.else118, %if.then112, %if.then102, %if.then92, %if.then79, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla82xx_start_iocbs(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qla2x00_marker(ptr noundef %vha, ptr nocapture noundef %qpair, i16 noundef zeroext %loop_id, i64 noundef %lun, i8 noundef zeroext %type) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %req1 = getelementptr inbounds %struct.qla_qpair, ptr %qpair, i32 0, i32 12
  %0 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req1, align 4
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
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
  %call2 = tail call ptr @__qla2x00_alloc_iocbs(ptr noundef %qpair, ptr noundef null)
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %7, i32 noundef 12326, ptr noundef nonnull @.str.32) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %call2, align 4
  %modifier = getelementptr inbounds %struct.mrk_entry_t, ptr %call2, i32 0, i32 6
  %9 = ptrtoint ptr %modifier to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %type, ptr %modifier, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type)
  %cmp3.not = icmp eq i8 %type, 2
  br i1 %cmp3.not, label %if.end.do.body26_crit_edge, label %if.then5

if.end.do.body26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body26

if.then5:                                         ; preds = %if.end
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %10 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device_type, align 4
  %and = and i32 %11, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.then6

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %12 = tail call i16 @llvm.bswap.i16(i16 %loop_id)
  %nport_handle = getelementptr inbounds %struct.mrk_entry_24xx, ptr %call2, i32 0, i32 5
  %13 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %nport_handle, align 4
  %lun7 = getelementptr inbounds %struct.mrk_entry_24xx, ptr %call2, i32 0, i32 11
  tail call void @int_to_scsilun(i64 noundef %lun, ptr noundef %lun7) #14
  %incdec.ptr1.i = getelementptr %struct.mrk_entry_24xx, ptr %call2, i32 0, i32 11, i32 4
  %14 = ptrtoint ptr %lun7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lun7, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #14
  %17 = ptrtoint ptr %lun7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %lun7, align 4
  %18 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr1.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #14
  %21 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %incdec.ptr1.i, align 4
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 46
  %22 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vp_idx, align 8
  %conv10 = trunc i16 %23 to i8
  %vp_index = getelementptr inbounds %struct.mrk_entry_24xx, ptr %call2, i32 0, i32 9
  %24 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv10, ptr %vp_index, align 1
  %id = getelementptr inbounds %struct.req_que, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %id, align 4
  %handle = getelementptr inbounds %struct.mrk_entry_24xx, ptr %call2, i32 0, i32 4
  %27 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %handle, align 4
  %conv.i = zext i16 %26 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv1.i = and i32 %28, 65535
  %or.i = or i32 %shl.i, %conv1.i
  store i32 %or.i, ptr %handle, align 4
  br label %do.body26

do.body:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool16.not = icmp sgt i32 %11, -1
  br i1 %tobool16.not, label %if.else18, label %if.then17

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %29 = tail call i16 @llvm.bswap.i16(i16 %loop_id)
  %target = getelementptr inbounds %struct.mrk_entry_t, ptr %call2, i32 0, i32 5
  %30 = ptrtoint ptr %target to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %target, align 4
  br label %do.end

if.else18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %conv19 = trunc i16 %loop_id to i8
  %target20 = getelementptr inbounds %struct.mrk_entry_t, ptr %call2, i32 0, i32 5
  %standard = getelementptr inbounds %struct.anon.82, ptr %target20, i32 0, i32 1
  %31 = ptrtoint ptr %standard to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv19, ptr %standard, align 1
  br label %do.end

do.end:                                           ; preds = %if.else18, %if.then17
  %conv22 = trunc i64 %lun to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv22)
  %lun23 = getelementptr inbounds %struct.mrk_entry_t, ptr %call2, i32 0, i32 9
  %33 = ptrtoint ptr %lun23 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %lun23, align 2
  br label %do.body26

do.body26:                                        ; preds = %do.end, %if.then6, %if.end.do.body26_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !147
  tail call void @arm_heavy_mb() #14
  tail call void @qla2x00_start_iocbs(ptr noundef %vha, ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %do.body26, %if.then
  %retval.0 = phi i32 [ 258, %if.then ], [ 0, %do.body26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_issue_marker(ptr noundef %vha, i32 noundef %ha_locked) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ha_locked)
  %tobool.not = icmp eq i32 %ha_locked, 0
  %hw2 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw2, align 4
  %base_qpair3 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %base_qpair3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_qpair3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %req1.i = getelementptr inbounds %struct.qla_qpair, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req1.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %call2.i = tail call ptr @__qla2x00_alloc_iocbs(ptr noundef %3, ptr noundef null) #14
  %cmp.i = icmp eq ptr %call2.i, null
  br i1 %cmp.i, label %__qla2x00_marker.exit, label %__qla2x00_marker.exit.thread

__qla2x00_marker.exit.thread:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %call2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %call2.i, align 4
  %modifier.i = getelementptr inbounds %struct.mrk_entry_t, ptr %call2.i, i32 0, i32 6
  %11 = ptrtoint ptr %modifier.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %modifier.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !147
  tail call void @arm_heavy_mb() #14
  tail call void @qla2x00_start_iocbs(ptr noundef %vha, ptr noundef %5) #14
  br label %if.end8

__qla2x00_marker.exit:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %9, i32 noundef 12326, ptr noundef nonnull @.str.32) #14
  br label %return

if.else:                                          ; preds = %entry
  %qp_lock_ptr.i = getelementptr inbounds %struct.qla_qpair, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qp_lock_ptr.i, align 4
  %call2.i13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #14
  %req1.i14 = getelementptr inbounds %struct.qla_qpair, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %req1.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req1.i14, align 4
  %16 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw2, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 128
  %driver_data.i.i.i16 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i16, align 4
  %call2.i17 = tail call ptr @__qla2x00_alloc_iocbs(ptr noundef %3, ptr noundef null) #14
  %cmp.i18 = icmp eq ptr %call2.i17, null
  br i1 %cmp.i18, label %__qla2x00_marker.exit23, label %__qla2x00_marker.exit23.thread

__qla2x00_marker.exit23.thread:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %call2.i17 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %call2.i17, align 4
  %modifier.i20 = getelementptr inbounds %struct.mrk_entry_t, ptr %call2.i17, i32 0, i32 6
  %23 = ptrtoint ptr %modifier.i20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %modifier.i20, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !147
  tail call void @arm_heavy_mb() #14
  tail call void @qla2x00_start_iocbs(ptr noundef %vha, ptr noundef %15) #14
  %24 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qp_lock_ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %call2.i13) #14
  br label %if.end8

__qla2x00_marker.exit23:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %21, i32 noundef 12326, ptr noundef nonnull @.str.32) #14
  %26 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qp_lock_ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %call2.i13) #14
  br label %return

if.end8:                                          ; preds = %__qla2x00_marker.exit23.thread, %__qla2x00_marker.exit.thread
  %marker_needed = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 18
  %28 = ptrtoint ptr %marker_needed to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %marker_needed, align 4
  br label %return

return:                                           ; preds = %if.end8, %__qla2x00_marker.exit23, %__qla2x00_marker.exit
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 258, %__qla2x00_marker.exit ], [ 258, %__qla2x00_marker.exit23 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla24xx_build_scsi_iocbs(ptr nocapture noundef readonly %sp, ptr noundef %cmd_pkt, i16 noundef zeroext %tot_dsds, ptr nocapture noundef %req) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %qpair1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 14
  %0 = ptrtoint ptr %qpair1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qpair1, align 8
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u, align 8
  %4 = ptrtoint ptr %cmd_pkt to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 402653184, ptr %cmd_pkt, align 1
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17, i32 1
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 15
  %7 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %byte_count = getelementptr inbounds %struct.cmd_type_7, ptr %cmd_pkt, i32 0, i32 14
  %9 = ptrtoint ptr %byte_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %byte_count, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vha3 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %10 = ptrtoint ptr %vha3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vha3, align 8
  %12 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %8, label %if.end.if.end21_crit_edge [
    i32 1, label %if.then6
    i32 2, label %if.then12
  ]

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %task_mgmt_flags = getelementptr inbounds %struct.cmd_type_7, ptr %cmd_pkt, i32 0, i32 10
  %13 = ptrtoint ptr %task_mgmt_flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 256, ptr %task_mgmt_flags, align 4
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 4
  %conv = zext i32 %15 to i64
  %output_bytes = getelementptr inbounds %struct.qla_qpair, ptr %1, i32 0, i32 18, i32 2
  %16 = ptrtoint ptr %output_bytes to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %output_bytes, align 8
  %add = add i64 %17, %conv
  store i64 %add, ptr %output_bytes, align 8
  %output_requests = getelementptr inbounds %struct.qla_qpair, ptr %1, i32 0, i32 18, i32 3
  br label %if.end21.sink.split

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %task_mgmt_flags13 = getelementptr inbounds %struct.cmd_type_7, ptr %cmd_pkt, i32 0, i32 10
  %18 = ptrtoint ptr %task_mgmt_flags13 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 512, ptr %task_mgmt_flags13, align 4
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i, align 4
  %conv15 = zext i32 %20 to i64
  %counters16 = getelementptr inbounds %struct.qla_qpair, ptr %1, i32 0, i32 18
  %21 = ptrtoint ptr %counters16 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %counters16, align 8
  %add17 = add i64 %22, %conv15
  store i64 %add17, ptr %counters16, align 8
  %input_requests = getelementptr inbounds %struct.qla_qpair, ptr %1, i32 0, i32 18, i32 1
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.then12, %if.then6
  %input_requests.sink71 = phi ptr [ %input_requests, %if.then12 ], [ %output_requests, %if.then6 ]
  %23 = ptrtoint ptr %input_requests.sink71 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %input_requests.sink71, align 8
  %inc19 = add i64 %24, 1
  store i64 %inc19, ptr %input_requests.sink71, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.end.if.end21_crit_edge
  %conv23 = zext i16 %tot_dsds to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tot_dsds)
  %cmp2466.not = icmp eq i16 %tot_dsds, 0
  br i1 %cmp2466.not, label %if.end21.cleanup_crit_edge, label %for.body.lr.ph

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end21
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17
  %25 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdb.i, align 4
  %dsd = getelementptr inbounds %struct.cmd_type_7, ptr %cmd_pkt, i32 0, i32 17
  %ring_index.i = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 5
  %length.i61 = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 9
  %ring_ptr5.i = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 2
  %ring.i = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 1
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %11, i32 0, i32 52
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc33, %if.end32.for.body_crit_edge ]
  %sg.069 = phi ptr [ %26, %for.body.lr.ph ], [ %call34, %if.end32.for.body_crit_edge ]
  %avail_dsds.068 = phi i16 [ 1, %for.body.lr.ph ], [ %dec, %if.end32.for.body_crit_edge ]
  %cur_dsd.067 = phi ptr [ %dsd, %for.body.lr.ph ], [ %incdec.ptr.i63, %if.end32.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %avail_dsds.068)
  %cmp27 = icmp eq i16 %avail_dsds.068, 0
  br i1 %cmp27, label %if.then29, label %for.body.if.end32_crit_edge

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then29:                                        ; preds = %for.body
  %27 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ring_index.i, align 4
  %inc.i = add i16 %28, 1
  store i16 %inc.i, ptr %ring_index.i, align 4
  %29 = ptrtoint ptr %length.i61 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %length.i61, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %30)
  %cmp.i = icmp eq i16 %inc.i, %30
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %ring_index.i, align 4
  %32 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring.i, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit

if.else.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %ring_ptr5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ring_ptr5.i, align 4
  %incdec.ptr.i = getelementptr %struct.cmd_a64_entry_t, ptr %35, i32 1
  br label %qla2x00_prep_cont_type1_iocb.exit

qla2x00_prep_cont_type1_iocb.exit:                ; preds = %if.else.i, %if.then.i
  %storemerge = phi ptr [ %incdec.ptr.i, %if.else.i ], [ %33, %if.then.i ]
  %36 = ptrtoint ptr %ring_ptr5.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %storemerge, ptr %ring_ptr5.i, align 4
  %37 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw.i, align 4
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %38, i32 0, i32 54
  %39 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %isp_type.i, align 8
  %and7.i = and i32 %40, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  %cond.i = select i1 %tobool.not.i, i32 167772160, i32 50331648
  %41 = ptrtoint ptr %storemerge to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %cond.i, ptr %storemerge, align 1
  %dsd31 = getelementptr inbounds %struct.cont_a64_entry_t, ptr %storemerge, i32 0, i32 4
  br label %if.end32

if.end32:                                         ; preds = %qla2x00_prep_cont_type1_iocb.exit, %for.body.if.end32_crit_edge
  %cur_dsd.1 = phi ptr [ %dsd31, %qla2x00_prep_cont_type1_iocb.exit ], [ %cur_dsd.067, %for.body.if.end32_crit_edge ]
  %avail_dsds.1 = phi i16 [ 5, %qla2x00_prep_cont_type1_iocb.exit ], [ %avail_dsds.068, %for.body.if.end32_crit_edge ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.069, i32 0, i32 3
  %42 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_address.i, align 4
  %conv.i = zext i32 %43 to i64
  %44 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #14
  %45 = ptrtoint ptr %cur_dsd.1 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %cur_dsd.1, align 1
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.069, i32 0, i32 4
  %46 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_length.i, align 4
  %length.i62 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.1, i32 0, i32 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #14
  %49 = ptrtoint ptr %length.i62 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %length.i62, align 1
  %incdec.ptr.i63 = getelementptr %struct.dsd64, ptr %cur_dsd.1, i32 1
  %dec = add i16 %avail_dsds.1, -1
  %inc33 = add nuw nsw i32 %i.070, 1
  %call34 = tail call ptr @sg_next(ptr noundef %sg.069) #14
  %exitcond.not = icmp eq i32 %inc33, %conv23
  br i1 %exitcond.not, label %if.end32.cleanup_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end32.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_get_one_block_sg(i32 noundef %blk_sz, ptr nocapture noundef %sgx, ptr nocapture noundef writeonly %partial) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %num_bytes = getelementptr inbounds %struct.qla2_sgx, ptr %sgx, i32 0, i32 5
  %0 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_bytes, align 4
  %tot_bytes = getelementptr inbounds %struct.qla2_sgx, ptr %sgx, i32 0, i32 2
  %2 = ptrtoint ptr %tot_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tot_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_sg = getelementptr inbounds %struct.qla2_sgx, ptr %sgx, i32 0, i32 3
  %4 = ptrtoint ptr %cur_sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_sg, align 4
  %tot_partial = getelementptr inbounds %struct.qla2_sgx, ptr %sgx, i32 0, i32 6
  %6 = ptrtoint ptr %tot_partial to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tot_partial, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_length, align 4
  %bytes_consumed = getelementptr inbounds %struct.qla2_sgx, ptr %sgx, i32 0, i32 4
  %12 = ptrtoint ptr %bytes_consumed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytes_consumed, align 4
  %add = add i32 %13, %9
  %14 = ptrtoint ptr %sgx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %sgx, align 4
  %sub = sub i32 %11, %13
  %add2 = add i32 %sub, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %blk_sz)
  %cmp3.not = icmp ult i32 %add2, %blk_sz
  br i1 %cmp3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub5 = sub i32 %blk_sz, %7
  %dma_len = getelementptr inbounds %struct.qla2_sgx, ptr %sgx, i32 0, i32 1
  %15 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub5, ptr %dma_len, align 4
  %16 = ptrtoint ptr %tot_partial to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tot_partial, align 4
  %add8 = add i32 %1, %blk_sz
  %17 = ptrtoint ptr %num_bytes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add8, ptr %num_bytes, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dma_len11 = getelementptr inbounds %struct.qla2_sgx, ptr %sgx, i32 0, i32 1
  %18 = ptrtoint ptr %dma_len11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %dma_len11, align 4
  %19 = ptrtoint ptr %tot_partial to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add2, ptr %tot_partial, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then4
  %storemerge = phi i32 [ 1, %if.else ], [ 0, %if.then4 ]
  %20 = ptrtoint ptr %partial to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %partial, align 4
  %dma_len16 = getelementptr inbounds %struct.qla2_sgx, ptr %sgx, i32 0, i32 1
  %21 = ptrtoint ptr %dma_len16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_len16, align 4
  %23 = ptrtoint ptr %bytes_consumed to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bytes_consumed, align 4
  %add18 = add i32 %24, %22
  store i32 %add18, ptr %bytes_consumed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add18)
  %cmp20 = icmp eq i32 %11, %add18
  br i1 %cmp20, label %if.then21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr @sg_next(ptr noundef %5) #14
  %num_sg = getelementptr inbounds %struct.qla2_sgx, ptr %sgx, i32 0, i32 7
  %25 = ptrtoint ptr %num_sg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_sg, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %num_sg, align 4
  %27 = ptrtoint ptr %cur_sg to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %cur_sg, align 4
  %28 = ptrtoint ptr %bytes_consumed to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bytes_consumed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then21 ], [ 1, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_walk_and_build_sglist_no_difb(ptr nocapture noundef readonly %ha, ptr noundef %sp, ptr nocapture noundef writeonly %dsd, i16 noundef zeroext %tot_dsds, ptr noundef readonly %tc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sp, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sector_size.i, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 4
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdb.i, align 4
  %prot_sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.if.end14_crit_edge, label %if.then.if.end14.sink.split_crit_edge

if.then.if.end14.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.sink.split

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.else:                                          ; preds = %entry
  %tobool6.not = icmp eq ptr %tc, null
  br i1 %tobool6.not, label %do.body, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %blk_sz = getelementptr inbounds %struct.qla_tc_param, ptr %tc, i32 0, i32 1
  %12 = ptrtoint ptr %blk_sz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blk_sz, align 4
  %bufflen = getelementptr inbounds %struct.qla_tc_param, ptr %tc, i32 0, i32 2
  %14 = ptrtoint ptr %bufflen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bufflen, align 4
  %sg = getelementptr inbounds %struct.qla_tc_param, ptr %tc, i32 0, i32 3
  %16 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sg, align 4
  %prot_sg = getelementptr inbounds %struct.qla_tc_param, ptr %tc, i32 0, i32 4
  br label %if.end14.sink.split

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/qla2xxx/qla_iocb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 868, 0\0A.popsection", ""() #14, !srcloc !156
  unreachable

if.end14.sink.split:                              ; preds = %if.then7, %if.then.if.end14.sink.split_crit_edge
  %.sink = phi ptr [ %prot_sg, %if.then7 ], [ %11, %if.then.if.end14.sink.split_crit_edge ]
  %sgx.sroa.10.0.ph = phi i32 [ %15, %if.then7 ], [ %7, %if.then.if.end14.sink.split_crit_edge ]
  %sgx.sroa.13.0.ph = phi ptr [ %17, %if.then7 ], [ %9, %if.then.if.end14.sink.split_crit_edge ]
  %prot_int.0.ph = phi i32 [ %13, %if.then7 ], [ %5, %if.then.if.end14.sink.split_crit_edge ]
  %18 = ptrtoint ptr %.sink to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.sink, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.then.if.end14_crit_edge
  %sgx.sroa.10.0 = phi i32 [ %7, %if.then.if.end14_crit_edge ], [ %sgx.sroa.10.0.ph, %if.end14.sink.split ]
  %sgx.sroa.13.0 = phi ptr [ %9, %if.then.if.end14_crit_edge ], [ %sgx.sroa.13.0.ph, %if.end14.sink.split ]
  %sg_prot.0 = phi ptr [ null, %if.then.if.end14_crit_edge ], [ %19, %if.end14.sink.split ]
  %prot_int.0 = phi i32 [ %5, %if.then.if.end14_crit_edge ], [ %prot_int.0.ph, %if.end14.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sgx.sroa.10.0)
  %cmp.i161 = icmp eq i32 %sgx.sroa.10.0, 0
  br i1 %cmp.i161, label %if.end14.while.end_crit_edge, label %if.end.i.lr.ph

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end.i.lr.ph:                                   ; preds = %if.end14
  %dl_dma_pool = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 239
  %crc_ctx = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %flags = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %ctx = getelementptr inbounds %struct.qla_tc_param, ptr %tc, i32 0, i32 5
  %ctx_dsd_alloced = getelementptr inbounds %struct.qla_tc_param, ptr %tc, i32 0, i32 6
  br label %if.end.i

while.cond.loopexit:                              ; preds = %if.end47
  %cmp.i = icmp eq i32 %sgx.sroa.21.1, %sgx.sroa.10.0
  br i1 %cmp.i, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.if.end.i_crit_edge

while.cond.loopexit.if.end.i_crit_edge:           ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end.i:                                         ; preds = %while.cond.loopexit.if.end.i_crit_edge, %if.end.i.lr.ph
  %tot_prot_dma_len.0171 = phi i32 [ 0, %if.end.i.lr.ph ], [ %tot_prot_dma_len.1, %while.cond.loopexit.if.end.i_crit_edge ]
  %used_dsds.0170 = phi i16 [ %tot_dsds, %if.end.i.lr.ph ], [ %used_dsds.2, %while.cond.loopexit.if.end.i_crit_edge ]
  %cur_dsd.0169 = phi ptr [ %dsd, %if.end.i.lr.ph ], [ %incdec.ptr, %while.cond.loopexit.if.end.i_crit_edge ]
  %sg_prot.1168 = phi ptr [ %sg_prot.0, %if.end.i.lr.ph ], [ %sg_prot.2.ph, %while.cond.loopexit.if.end.i_crit_edge ]
  %avail_dsds.0167 = phi i8 [ 0, %if.end.i.lr.ph ], [ %dec, %while.cond.loopexit.if.end.i_crit_edge ]
  %sgx.sroa.23.0165 = phi i32 [ 0, %if.end.i.lr.ph ], [ %sgx.sroa.23.1, %while.cond.loopexit.if.end.i_crit_edge ]
  %sgx.sroa.21.0164 = phi i32 [ 0, %if.end.i.lr.ph ], [ %sgx.sroa.21.1, %while.cond.loopexit.if.end.i_crit_edge ]
  %sgx.sroa.17.0163 = phi i32 [ 0, %if.end.i.lr.ph ], [ %sgx.sroa.17.1.ph, %while.cond.loopexit.if.end.i_crit_edge ]
  %sgx.sroa.13.1162 = phi ptr [ %sgx.sroa.13.0, %if.end.i.lr.ph ], [ %sgx.sroa.13.2.ph, %while.cond.loopexit.if.end.i_crit_edge ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sgx.sroa.13.1162, i32 0, i32 3
  %20 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sgx.sroa.13.1162, i32 0, i32 4
  %22 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_length.i, align 4
  %add.i = add i32 %21, %sgx.sroa.17.0163
  %sub.i = sub i32 %23, %sgx.sroa.17.0163
  %add2.i = add i32 %sub.i, %sgx.sroa.23.0165
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %prot_int.0)
  %cmp3.not.i = icmp ult i32 %add2.i, %prot_int.0
  br i1 %cmp3.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then4.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub5.i = sub i32 %prot_int.0, %sgx.sroa.23.0165
  %add8.i = add i32 %sgx.sroa.21.0164, %prot_int.0
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then4.i, %if.end.i.if.end15.i_crit_edge
  %sgx.sroa.6.1 = phi i32 [ %sub5.i, %if.then4.i ], [ %sub.i, %if.end.i.if.end15.i_crit_edge ]
  %sgx.sroa.21.1 = phi i32 [ %add8.i, %if.then4.i ], [ %sgx.sroa.21.0164, %if.end.i.if.end15.i_crit_edge ]
  %sgx.sroa.23.1 = phi i32 [ 0, %if.then4.i ], [ %add2.i, %if.end.i.if.end15.i_crit_edge ]
  %storemerge.i = phi i32 [ 0, %if.then4.i ], [ 1, %if.end.i.if.end15.i_crit_edge ]
  %add18.i = add i32 %sgx.sroa.6.1, %sgx.sroa.17.0163
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add18.i)
  %cmp20.i = icmp eq i32 %23, %add18.i
  br i1 %cmp20.i, label %if.then21.i, label %if.end15.i.while.body_crit_edge

if.end15.i.while.body_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.then21.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @sg_next(ptr noundef %sgx.sroa.13.1162) #14
  br label %while.body

while.body:                                       ; preds = %if.then21.i, %if.end15.i.while.body_crit_edge
  %sgx.sroa.13.2.ph = phi ptr [ %sgx.sroa.13.1162, %if.end15.i.while.body_crit_edge ], [ %call.i, %if.then21.i ]
  %sgx.sroa.17.1.ph = phi i32 [ %add18.i, %if.end15.i.while.body_crit_edge ], [ 0, %if.then21.i ]
  br label %alloc_and_fill.outer

alloc_and_fill.outer:                             ; preds = %if.then58, %while.body
  %partial.2.ph = phi i32 [ 1, %if.then58 ], [ %storemerge.i, %while.body ]
  %avail_dsds.1.ph = phi i8 [ %dec, %if.then58 ], [ %avail_dsds.0167, %while.body ]
  %sg_prot.2.ph = phi ptr [ %call59, %if.then58 ], [ %sg_prot.1168, %while.body ]
  %cur_dsd.1.ph = phi ptr [ %incdec.ptr, %if.then58 ], [ %cur_dsd.0169, %while.body ]
  %used_dsds.1.ph = phi i16 [ %used_dsds.2, %if.then58 ], [ %used_dsds.0170, %while.body ]
  %sle_dma.0.ph = phi i32 [ %add54, %if.then58 ], [ %add.i, %while.body ]
  %sle_dma_len.0.ph = phi i32 [ 8, %if.then58 ], [ %sgx.sroa.6.1, %while.body ]
  %tot_prot_dma_len.1.ph = phi i32 [ 0, %if.then58 ], [ %tot_prot_dma_len.0171, %while.body ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg_prot.2.ph, i32 0, i32 3
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg_prot.2.ph, i32 0, i32 4
  br label %alloc_and_fill

alloc_and_fill:                                   ; preds = %if.then53.alloc_and_fill_crit_edge, %alloc_and_fill.outer
  %partial.2 = phi i32 [ 1, %if.then53.alloc_and_fill_crit_edge ], [ %partial.2.ph, %alloc_and_fill.outer ]
  %avail_dsds.1 = phi i8 [ %dec, %if.then53.alloc_and_fill_crit_edge ], [ %avail_dsds.1.ph, %alloc_and_fill.outer ]
  %cur_dsd.1 = phi ptr [ %incdec.ptr, %if.then53.alloc_and_fill_crit_edge ], [ %cur_dsd.1.ph, %alloc_and_fill.outer ]
  %used_dsds.1 = phi i16 [ %used_dsds.2, %if.then53.alloc_and_fill_crit_edge ], [ %used_dsds.1.ph, %alloc_and_fill.outer ]
  %sle_dma.0 = phi i32 [ %add54, %if.then53.alloc_and_fill_crit_edge ], [ %sle_dma.0.ph, %alloc_and_fill.outer ]
  %sle_dma_len.0 = phi i32 [ 8, %if.then53.alloc_and_fill_crit_edge ], [ %sle_dma_len.0.ph, %alloc_and_fill.outer ]
  %tot_prot_dma_len.1 = phi i32 [ %add55, %if.then53.alloc_and_fill_crit_edge ], [ %tot_prot_dma_len.1.ph, %alloc_and_fill.outer ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %avail_dsds.1)
  %cmp = icmp eq i8 %avail_dsds.1, 0
  br i1 %cmp, label %if.then18, label %alloc_and_fill.if.end47_crit_edge

alloc_and_fill.if.end47_crit_edge:                ; preds = %alloc_and_fill
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then18:                                        ; preds = %alloc_and_fill
  %24 = tail call i16 @llvm.umin.i16(i16 %used_dsds.1, i16 37)
  %25 = trunc i16 %24 to i8
  %narrow = mul nuw nsw i16 %24, 12
  %narrow153 = add nuw nsw i16 %narrow, 12
  %mul = zext i16 %narrow153 to i32
  %conv27 = sub i16 %used_dsds.1, %24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 2848, i32 noundef 16) #17
  %tobool29.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool29.not, label %if.then18.cleanup_crit_edge, label %if.end31

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31:                                         ; preds = %if.then18
  %27 = ptrtoint ptr %dl_dma_pool to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dl_dma_pool, align 16
  %dsd_list_dma = getelementptr inbounds %struct.dsd_dma, ptr %call7.i.i, i32 0, i32 1
  %call32 = tail call ptr @dma_pool_alloc(ptr noundef %28, i32 noundef 2592, ptr noundef %dsd_list_dma) #14
  %dsd_addr = getelementptr inbounds %struct.dsd_dma, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %dsd_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call32, ptr %dsd_addr, align 4
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  br i1 %tobool.not, label %if.else41, label %if.then37

if.then37:                                        ; preds = %if.end35
  %30 = ptrtoint ptr %crc_ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %crc_ctx, align 4
  %dsd_list = getelementptr inbounds %struct.crc_context, ptr %31, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.crc_context, ptr %31, i32 0, i32 13, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %33, ptr noundef %dsd_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then37.list_add_tail.exit_crit_edge

if.then37.list_add_tail.exit_crit_edge:           ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dsd_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call7.i.i, ptr %33, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then37.list_add_tail.exit_crit_edge
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags, align 4
  %40 = or i16 %39, 32
  store i16 %40, ptr %flags, align 4
  br label %if.end44

if.else41:                                        ; preds = %if.end35
  %41 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctx, align 4
  %dsd_list43 = getelementptr inbounds %struct.crc_context, ptr %42, i32 0, i32 13
  %prev.i116 = getelementptr inbounds %struct.crc_context, ptr %42, i32 0, i32 13, i32 1
  %43 = ptrtoint ptr %prev.i116 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i116, align 4
  %call.i.i117 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %44, ptr noundef %dsd_list43) #14
  br i1 %call.i.i117, label %if.end.i.i119, label %if.else41.list_add_tail.exit120_crit_edge

if.else41.list_add_tail.exit120_crit_edge:        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit120

if.end.i.i119:                                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %prev.i116 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i, ptr %prev.i116, align 4
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dsd_list43, ptr %call7.i.i, align 8
  %prev3.i.i118 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i118 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i118, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %call7.i.i, ptr %44, align 4
  br label %list_add_tail.exit120

list_add_tail.exit120:                            ; preds = %if.end.i.i119, %if.else41.list_add_tail.exit120_crit_edge
  %49 = ptrtoint ptr %ctx_dsd_alloced to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctx_dsd_alloced, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %50, align 1
  br label %if.end44

if.end44:                                         ; preds = %list_add_tail.exit120, %list_add_tail.exit
  %52 = ptrtoint ptr %dsd_list_dma to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dsd_list_dma, align 8
  %conv46 = zext i32 %53 to i64
  %54 = tail call i64 @llvm.bswap.i64(i64 %conv46) #14
  %55 = ptrtoint ptr %cur_dsd.1 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %54, ptr %cur_dsd.1, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %length = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.1, i32 0, i32 1
  %57 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %length, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.end44, %alloc_and_fill.if.end47_crit_edge
  %avail_dsds.2 = phi i8 [ %25, %if.end44 ], [ %avail_dsds.1, %alloc_and_fill.if.end47_crit_edge ]
  %cur_dsd.2 = phi ptr [ %call32, %if.end44 ], [ %cur_dsd.1, %alloc_and_fill.if.end47_crit_edge ]
  %used_dsds.2 = phi i16 [ %conv27, %if.end44 ], [ %used_dsds.1, %alloc_and_fill.if.end47_crit_edge ]
  %conv48 = zext i32 %sle_dma.0 to i64
  %58 = tail call i64 @llvm.bswap.i64(i64 %conv48) #14
  %59 = ptrtoint ptr %cur_dsd.2 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %cur_dsd.2, align 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %sle_dma_len.0)
  %length50 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.2, i32 0, i32 1
  %61 = ptrtoint ptr %length50 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %length50, align 1
  %incdec.ptr = getelementptr %struct.dsd64, ptr %cur_dsd.2, i32 1
  %dec = add i8 %avail_dsds.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %partial.2)
  %cmp51 = icmp eq i32 %partial.2, 0
  br i1 %cmp51, label %if.then53, label %while.cond.loopexit

if.then53:                                        ; preds = %if.end47
  %62 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_address, align 4
  %add54 = add i32 %63, %tot_prot_dma_len.1
  %add55 = add i32 %tot_prot_dma_len.1, 8
  %64 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_length, align 4
  %cmp56 = icmp eq i32 %add55, %65
  br i1 %cmp56, label %if.then58, label %if.then53.alloc_and_fill_crit_edge

if.then53.alloc_and_fill_crit_edge:               ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %alloc_and_fill

if.then58:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  %call59 = tail call ptr @sg_next(ptr noundef %sg_prot.2.ph) #14
  br label %alloc_and_fill.outer

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %if.end14.while.end_crit_edge
  %cur_dsd.0.lcssa = phi ptr [ %dsd, %if.end14.while.end_crit_edge ], [ %incdec.ptr, %while.cond.loopexit.while.end_crit_edge ]
  %66 = ptrtoint ptr %cur_dsd.0.lcssa to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 0, ptr %cur_dsd.0.lcssa, align 1
  %length63 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.0.lcssa, i32 0, i32 1
  %67 = ptrtoint ptr %length63 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 0, ptr %length63, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then34, %if.then18.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then34 ], [ 0, %while.end ], [ 1, %if.then18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_walk_and_build_sglist(ptr nocapture noundef readonly %ha, ptr noundef %sp, ptr noundef %dsd, i16 noundef zeroext %tot_dsds, ptr noundef readonly %tc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sp, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  br label %if.end9

if.else:                                          ; preds = %entry
  %tobool2.not = icmp eq ptr %tc, null
  br i1 %tobool2.not, label %do.body, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %sg4 = getelementptr inbounds %struct.qla_tc_param, ptr %tc, i32 0, i32 3
  br label %if.end9

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/qla2xxx/qla_iocb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 968, 0\0A.popsection", ""() #14, !srcloc !157
  unreachable

if.end9:                                          ; preds = %if.then3, %if.then
  %sgl.0.in = phi ptr [ %sdb.i, %if.then ], [ %sg4, %if.then3 ]
  %conv = zext i16 %tot_dsds to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tot_dsds)
  %cmp93.not = icmp eq i16 %tot_dsds, 0
  br i1 %cmp93.not, label %if.end9.for.end_crit_edge, label %for.body.lr.ph

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %2 = ptrtoint ptr %sgl.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %sgl.0 = load ptr, ptr %sgl.0.in, align 4
  %dl_dma_pool = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 239
  %crc_ctx = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %flags = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %ctx = getelementptr inbounds %struct.qla_tc_param, ptr %tc, i32 0, i32 5
  %ctx_dsd_alloced = getelementptr inbounds %struct.qla_tc_param, ptr %tc, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %for.body.lr.ph
  %used_dsds.098 = phi i16 [ %tot_dsds, %for.body.lr.ph ], [ %used_dsds.1, %if.end43.for.body_crit_edge ]
  %i.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end43.for.body_crit_edge ]
  %sg.096 = phi ptr [ %sgl.0, %for.body.lr.ph ], [ %call44, %if.end43.for.body_crit_edge ]
  %avail_dsds.095 = phi i8 [ 0, %for.body.lr.ph ], [ %dec, %if.end43.for.body_crit_edge ]
  %cur_dsd.094 = phi ptr [ %dsd, %for.body.lr.ph ], [ %incdec.ptr.i, %if.end43.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %avail_dsds.095)
  %cmp12 = icmp eq i8 %avail_dsds.095, 0
  br i1 %cmp12, label %if.then14, label %for.body.if.end43_crit_edge

for.body.if.end43_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then14:                                        ; preds = %for.body
  %3 = tail call i16 @llvm.umin.i16(i16 %used_dsds.098, i16 37)
  %4 = trunc i16 %3 to i8
  %narrow = mul nuw nsw i16 %3, 12
  %narrow89 = add nuw nsw i16 %narrow, 12
  %mul = zext i16 %narrow89 to i32
  %conv23 = sub i16 %used_dsds.098, %3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 16) #17
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %if.then14.cleanup_crit_edge, label %if.end27

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end27:                                         ; preds = %if.then14
  %6 = ptrtoint ptr %dl_dma_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dl_dma_pool, align 16
  %dsd_list_dma = getelementptr inbounds %struct.dsd_dma, ptr %call7.i.i, i32 0, i32 1
  %call28 = tail call ptr @dma_pool_alloc(ptr noundef %7, i32 noundef 2592, ptr noundef %dsd_list_dma) #14
  %dsd_addr = getelementptr inbounds %struct.dsd_dma, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %dsd_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call28, ptr %dsd_addr, align 4
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  br i1 %tobool.not, label %if.else37, label %if.then33

if.then33:                                        ; preds = %if.end31
  %9 = ptrtoint ptr %crc_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %crc_ctx, align 4
  %dsd_list = getelementptr inbounds %struct.crc_context, ptr %10, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.crc_context, ptr %10, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %12, ptr noundef %dsd_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then33.list_add_tail.exit_crit_edge

if.then33.list_add_tail.exit_crit_edge:           ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dsd_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then33.list_add_tail.exit_crit_edge
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags, align 4
  %19 = or i16 %18, 32
  store i16 %19, ptr %flags, align 4
  br label %if.end40

if.else37:                                        ; preds = %if.end31
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %dsd_list39 = getelementptr inbounds %struct.crc_context, ptr %21, i32 0, i32 13
  %prev.i78 = getelementptr inbounds %struct.crc_context, ptr %21, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i78, align 4
  %call.i.i79 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %23, ptr noundef %dsd_list39) #14
  br i1 %call.i.i79, label %if.end.i.i81, label %if.else37.list_add_tail.exit82_crit_edge

if.else37.list_add_tail.exit82_crit_edge:         ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit82

if.end.i.i81:                                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %prev.i78, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dsd_list39, ptr %call7.i.i, align 8
  %prev3.i.i80 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i80 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i80, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i, ptr %23, align 4
  br label %list_add_tail.exit82

list_add_tail.exit82:                             ; preds = %if.end.i.i81, %if.else37.list_add_tail.exit82_crit_edge
  %28 = ptrtoint ptr %ctx_dsd_alloced to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx_dsd_alloced, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %29, align 1
  br label %if.end40

if.end40:                                         ; preds = %list_add_tail.exit82, %list_add_tail.exit
  %31 = ptrtoint ptr %dsd_list_dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dsd_list_dma, align 8
  %conv42 = zext i32 %32 to i64
  %33 = tail call i64 @llvm.bswap.i64(i64 %conv42) #14
  %34 = ptrtoint ptr %cur_dsd.094 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %cur_dsd.094, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %length = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.094, i32 0, i32 1
  %36 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %length, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.end40, %for.body.if.end43_crit_edge
  %cur_dsd.1 = phi ptr [ %call28, %if.end40 ], [ %cur_dsd.094, %for.body.if.end43_crit_edge ]
  %avail_dsds.1 = phi i8 [ %4, %if.end40 ], [ %avail_dsds.095, %for.body.if.end43_crit_edge ]
  %used_dsds.1 = phi i16 [ %conv23, %if.end40 ], [ %used_dsds.098, %for.body.if.end43_crit_edge ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.096, i32 0, i32 3
  %37 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_address.i, align 4
  %conv.i = zext i32 %38 to i64
  %39 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #14
  %40 = ptrtoint ptr %cur_dsd.1 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %39, ptr %cur_dsd.1, align 1
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.096, i32 0, i32 4
  %41 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_length.i, align 4
  %length.i = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.1, i32 0, i32 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #14
  %44 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %length.i, align 1
  %incdec.ptr.i = getelementptr %struct.dsd64, ptr %cur_dsd.1, i32 1
  %dec = add i8 %avail_dsds.1, -1
  %inc = add nuw nsw i32 %i.097, 1
  %call44 = tail call ptr @sg_next(ptr noundef %sg.096) #14
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %if.end43.for.end_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end43.for.end_crit_edge, %if.end9.for.end_crit_edge
  %cur_dsd.0.lcssa = phi ptr [ %dsd, %if.end9.for.end_crit_edge ], [ %incdec.ptr.i, %if.end43.for.end_crit_edge ]
  %45 = ptrtoint ptr %cur_dsd.0.lcssa to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 0, ptr %cur_dsd.0.lcssa, align 1
  %length46 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.0.lcssa, i32 0, i32 1
  %46 = ptrtoint ptr %length46 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 0, ptr %length46, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then30, %if.then14.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then30 ], [ 0, %for.end ], [ 1, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_walk_and_build_prot_sglist(ptr nocapture noundef %ha, ptr noundef %sp, ptr noundef %cur_dsd, i16 noundef zeroext %tot_dsds, ptr noundef %tc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %tot_dsds to i32
  %tobool.not = icmp eq ptr %sp, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %prot_sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.scsi_prot_sglist.exit_crit_edge, label %cond.true.i

if.then.scsi_prot_sglist.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_prot_sglist.exit

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br label %scsi_prot_sglist.exit

scsi_prot_sglist.exit:                            ; preds = %cond.true.i, %if.then.scsi_prot_sglist.exit_crit_edge
  %cond.i = phi ptr [ %5, %cond.true.i ], [ null, %if.then.scsi_prot_sglist.exit_crit_edge ]
  %vha2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %6 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vha2, align 8
  %crc_ctx = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %crc_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crc_ctx, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sc_data_direction, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 49152, ptr noundef %7, i32 noundef 57377, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qla24xx_walk_and_build_prot_sglist, ptr noundef %1, ptr noundef %9, ptr noundef nonnull %sp) #14
  br label %if.end15

if.else:                                          ; preds = %entry
  %tobool5.not = icmp eq ptr %tc, null
  br i1 %tobool5.not, label %do.body, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %vha7 = getelementptr inbounds %struct.qla_tgt_cmd, ptr %tc, i32 0, i32 25
  %12 = ptrtoint ptr %vha7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vha7, align 8
  %prot_sg = getelementptr inbounds %struct.qla_tgt_cmd, ptr %tc, i32 0, i32 31
  %14 = ptrtoint ptr %prot_sg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prot_sg, align 8
  %ctx = getelementptr inbounds %struct.qla_tgt_cmd, ptr %tc, i32 0, i32 39
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %dma_data_direction = getelementptr inbounds %struct.qla_tgt_cmd, ptr %tc, i32 0, i32 19
  %18 = ptrtoint ptr %dma_data_direction to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_data_direction, align 8
  br label %if.end15

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/qla2xxx/qla_iocb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #14, !srcloc !158
  unreachable

if.end15:                                         ; preds = %if.then6, %scsi_prot_sglist.exit
  %vha.0 = phi ptr [ %7, %scsi_prot_sglist.exit ], [ %13, %if.then6 ]
  %direction_to_device.0.in.in = phi i32 [ %11, %scsi_prot_sglist.exit ], [ %19, %if.then6 ]
  %difctx.0 = phi ptr [ %9, %scsi_prot_sglist.exit ], [ %17, %if.then6 ]
  %sgl.0 = phi ptr [ %cond.i, %scsi_prot_sglist.exit ], [ %15, %if.then6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction_to_device.0.in.in)
  %direction_to_device.0.in = icmp eq i32 %direction_to_device.0.in.in, 1
  %conv17 = zext i1 %direction_to_device.0.in to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 49152, ptr noundef %vha.0, i32 noundef 57377, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.qla24xx_walk_and_build_prot_sglist, i32 noundef %conv17) #14
  br i1 %direction_to_device.0.in, label %for.cond.preheader, label %if.else42

for.cond.preheader:                               ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tot_dsds)
  %cmp21538.not = icmp eq i16 %tot_dsds, 0
  br i1 %cmp21538.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %sg.0540 = phi ptr [ %call40, %for.inc.for.body_crit_edge ], [ %sgl.0, %for.cond.preheader.for.body_crit_edge ]
  %i.0539 = phi i32 [ %inc39, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %20 = ptrtoint ptr %sg.0540 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sg.0540, align 4
  %and.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_phys.exit, label %do.body2.i.i, !prof !159

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !160
  unreachable

sg_phys.exit:                                     ; preds = %for.body
  %and.i.i = and i32 %21, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %and.i.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %23
  %shl.i = shl i32 %add.i, 12
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0540, i32 0, i32 1
  %24 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i, align 4
  %add1.i = add i32 %shl.i, %25
  %conv24 = zext i32 %add1.i to i64
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0540, i32 0, i32 2
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length, align 4
  %conv25 = zext i32 %27 to i64
  %add = add nuw nsw i64 %conv24, %conv25
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %tobool31.not = icmp ult i64 %add, 4294967296
  br i1 %tobool31.not, label %for.inc, label %if.then32

if.then32:                                        ; preds = %sg_phys.exit
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 49152, ptr noundef %vha.0, i32 noundef 57378, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.qla24xx_walk_and_build_prot_sglist, i64 noundef %conv24, i32 noundef %27) #14
  %tobool34.not = icmp eq ptr %difctx.0, null
  br i1 %tobool34.not, label %if.else36, label %if.then35

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  %dif_bundle_crossed_pages = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 288
  %28 = ptrtoint ptr %dif_bundle_crossed_pages to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dif_bundle_crossed_pages, align 8
  %inc = add i64 %29, 1
  store i64 %inc, ptr %dif_bundle_crossed_pages, align 8
  br label %for.end

if.else36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 49152, ptr noundef %vha.0, i32 noundef 57378, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.qla24xx_walk_and_build_prot_sglist) #14
  br label %for.end

for.inc:                                          ; preds = %sg_phys.exit
  %inc39 = add nuw nsw i32 %i.0539, 1
  %call40 = tail call ptr @sg_next(ptr noundef %sg.0540) #14
  %exitcond.not = icmp eq i32 %inc39, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else36, %if.then35, %for.cond.preheader.for.end_crit_edge
  %extract.t457 = phi i1 [ true, %if.then35 ], [ false, %if.else36 ], [ false, %for.cond.preheader.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ]
  %dif_bundle_writes = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 290
  %30 = ptrtoint ptr %dif_bundle_writes to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %dif_bundle_writes, align 8
  %inc41 = add i64 %31, 1
  store i64 %inc41, ptr %dif_bundle_writes, align 8
  br label %if.end44

if.else42:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %dif_bundle_reads = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 289
  %32 = ptrtoint ptr %dif_bundle_reads to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %dif_bundle_reads, align 16
  %inc43 = add i64 %33, 1
  store i64 %inc43, ptr %dif_bundle_reads, align 16
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %for.end
  %dif_local_dma_alloc.4.off0 = phi i1 [ %extract.t457, %for.end ], [ false, %if.else42 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xdifbundlinginternalbuffers to i32))
  %34 = load i32, ptr @ql2xdifbundlinginternalbuffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool45.not = icmp eq i32 %34, 0
  %spec.select = select i1 %tobool45.not, i1 %dif_local_dma_alloc.4.off0, i1 %direction_to_device.0.in
  br i1 %spec.select, label %if.then51, label %for.cond230.preheader

for.cond230.preheader:                            ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tot_dsds)
  %cmp232541.not = icmp eq i16 %tot_dsds, 0
  br i1 %cmp232541.not, label %for.cond230.preheader.if.end282_crit_edge, label %for.body234.lr.ph

for.cond230.preheader.if.end282_crit_edge:        ; preds = %for.cond230.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end282

for.body234.lr.ph:                                ; preds = %for.cond230.preheader
  %dl_dma_pool251 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 239
  %dsd_list = getelementptr inbounds %struct.crc_context, ptr %difctx.0, i32 0, i32 13
  %prev.i488 = getelementptr inbounds %struct.crc_context, ptr %difctx.0, i32 0, i32 13, i32 1
  %flags262 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %ctx_dsd_alloced269 = getelementptr inbounds %struct.qla_tgt_cmd, ptr %tc, i32 0, i32 28
  br label %for.body234

if.then51:                                        ; preds = %if.end44
  %no_dif_bundl = getelementptr inbounds %struct.crc_context, ptr %difctx.0, i32 0, i32 18
  %35 = ptrtoint ptr %no_dif_bundl to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %no_dif_bundl, align 4
  %dif_bundl_len = getelementptr inbounds %struct.crc_context, ptr %difctx.0, i32 0, i32 17
  %36 = ptrtoint ptr %dif_bundl_len to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %dif_bundl_len, align 4
  %ldif_dsd_list = getelementptr inbounds %struct.crc_context, ptr %difctx.0, i32 0, i32 14
  %37 = ptrtoint ptr %ldif_dsd_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %ldif_dsd_list, ptr %ldif_dsd_list, align 4
  %prev.i = getelementptr inbounds %struct.crc_context, ptr %difctx.0, i32 0, i32 14, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ldif_dsd_list, ptr %prev.i, align 4
  %ldif_dma_hndl_list = getelementptr inbounds %struct.crc_context, ptr %difctx.0, i32 0, i32 16
  %39 = ptrtoint ptr %ldif_dma_hndl_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %ldif_dma_hndl_list, ptr %ldif_dma_hndl_list, align 4
  %prev.i462 = getelementptr inbounds %struct.crc_context, ptr %difctx.0, i32 0, i32 16, i32 1
  %40 = ptrtoint ptr %prev.i462 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ldif_dma_hndl_list, ptr %prev.i462, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tot_dsds)
  %cmp54555.not = icmp eq i16 %tot_dsds, 0
  br i1 %cmp54555.not, label %if.then51.for.end106_crit_edge, label %for.body56.lr.ph

if.then51.for.end106_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end106

for.body56.lr.ph:                                 ; preds = %if.then51
  %dif_bundle_kallocs = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 291
  %dif_bundl_pool = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 286
  %dif_bundle_dma_allocs = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 292
  br label %for.body56

for.body56:                                       ; preds = %for.inc103.for.body56_crit_edge, %for.body56.lr.ph
  %dsd_ptr.0561 = phi ptr [ null, %for.body56.lr.ph ], [ %dsd_ptr.1.lcssa, %for.inc103.for.body56_crit_edge ]
  %sg.1559 = phi ptr [ %sgl.0, %for.body56.lr.ph ], [ %call105, %for.inc103.for.body56_crit_edge ]
  %ldma_needed.0558 = phi i8 [ 1, %for.body56.lr.ph ], [ %ldma_needed.1.lcssa, %for.inc103.for.body56_crit_edge ]
  %ldma_sg_len.0557 = phi i32 [ 0, %for.body56.lr.ph ], [ %ldma_sg_len.1.lcssa, %for.inc103.for.body56_crit_edge ]
  %i.1556 = phi i32 [ 0, %for.body56.lr.ph ], [ %inc104, %for.inc103.for.body56_crit_edge ]
  %41 = ptrtoint ptr %sg.1559 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sg.1559, align 4
  %and.i.i.i463 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i463)
  %tobool.i.not.i.i464 = icmp eq i32 %and.i.i.i463, 0
  br i1 %tobool.i.not.i.i464, label %sg_phys.exit474, label %do.body2.i.i465, !prof !159

do.body2.i.i465:                                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !160
  unreachable

sg_phys.exit474:                                  ; preds = %for.body56
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.1559, i32 0, i32 4
  %43 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_length, align 4
  %and.i.i466 = and i32 %42, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %45 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i467 = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i468 = sub i32 %and.i.i466, %sub.ptr.rhs.cast.i467
  %sub.ptr.div.i469 = sdiv exact i32 %sub.ptr.sub.i468, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %46 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i470 = add i32 %sub.ptr.div.i469, %46
  %shl.i471 = shl i32 %add.i470, 12
  %offset.i472 = getelementptr inbounds %struct.scatterlist, ptr %sg.1559, i32 0, i32 1
  %47 = ptrtoint ptr %offset.i472 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset.i472, align 4
  %add1.i473 = add i32 %shl.i471, %48
  %conv58 = zext i32 %add1.i473 to i64
  %49 = ptrtoint ptr %dif_bundl_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dif_bundl_len, align 4
  %conv60 = zext i8 %ldma_needed.0558 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 49152, ptr noundef %vha.0, i32 noundef 57379, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.qla24xx_walk_and_build_prot_sglist, i32 noundef %i.1556, i64 noundef %conv58, i32 noundef %44, i32 noundef %ldma_sg_len.0557, i32 noundef %50, i32 noundef %conv60) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool61.not547 = icmp eq i32 %44, 0
  br i1 %tobool61.not547, label %sg_phys.exit474.for.inc103_crit_edge, label %sg_phys.exit474.while.body_crit_edge

sg_phys.exit474.while.body_crit_edge:             ; preds = %sg_phys.exit474
  br label %while.body

sg_phys.exit474.for.inc103_crit_edge:             ; preds = %sg_phys.exit474
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc103

while.body:                                       ; preds = %cleanup97.while.body_crit_edge, %sg_phys.exit474.while.body_crit_edge
  %dsd_ptr.1551 = phi ptr [ %dsd_ptr.2, %cleanup97.while.body_crit_edge ], [ %dsd_ptr.0561, %sg_phys.exit474.while.body_crit_edge ]
  %sglen.0550 = phi i32 [ %sub89, %cleanup97.while.body_crit_edge ], [ %44, %sg_phys.exit474.while.body_crit_edge ]
  %ldma_needed.1549 = phi i8 [ %ldma_needed.4, %cleanup97.while.body_crit_edge ], [ %ldma_needed.0558, %sg_phys.exit474.while.body_crit_edge ]
  %ldma_sg_len.1548 = phi i32 [ %ldma_sg_len.3, %cleanup97.while.body_crit_edge ], [ %ldma_sg_len.0557, %sg_phys.exit474.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ldma_needed.1549)
  %tobool62.not = icmp eq i8 %ldma_needed.1549, 0
  br i1 %tobool62.not, label %while.body.if.end79_crit_edge, label %if.then63

while.body.if.end79_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then63:                                        ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 2848, i32 noundef 16) #17
  %tobool65.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool65.not, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 16384, ptr noundef %vha.0, i32 noundef 57380, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla24xx_walk_and_build_prot_sglist) #14
  br label %cleanup286

if.end67:                                         ; preds = %if.then63
  %52 = ptrtoint ptr %dif_bundle_kallocs to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %dif_bundle_kallocs, align 64
  %inc68 = add i64 %53, 1
  store i64 %inc68, ptr %dif_bundle_kallocs, align 64
  %54 = ptrtoint ptr %dif_bundl_pool to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dif_bundl_pool, align 4
  %dsd_list_dma = getelementptr inbounds %struct.dsd_dma, ptr %call7.i.i, i32 0, i32 1
  %call69 = tail call ptr @dma_pool_alloc(ptr noundef %55, i32 noundef 2592, ptr noundef %dsd_list_dma) #14
  %dsd_addr = getelementptr inbounds %struct.dsd_dma, ptr %call7.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %dsd_addr to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call69, ptr %dsd_addr, align 4
  %tobool71.not = icmp eq ptr %call69, null
  br i1 %tobool71.not, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 16384, ptr noundef %vha.0, i32 noundef 57380, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.qla24xx_walk_and_build_prot_sglist) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  %57 = ptrtoint ptr %dif_bundle_kallocs to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %dif_bundle_kallocs, align 64
  %dec = add i64 %58, -1
  store i64 %dec, ptr %dif_bundle_kallocs, align 64
  br label %cleanup286

if.end74:                                         ; preds = %if.end67
  %59 = ptrtoint ptr %dif_bundle_dma_allocs to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %dif_bundle_dma_allocs, align 8
  %inc75 = add i64 %60, 1
  store i64 %inc75, ptr %dif_bundle_dma_allocs, align 8
  %61 = ptrtoint ptr %no_dif_bundl to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %no_dif_bundl, align 4
  %inc77 = add i8 %62, 1
  store i8 %inc77, ptr %no_dif_bundl, align 4
  %63 = ptrtoint ptr %prev.i462 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i462, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %64, ptr noundef %ldif_dma_hndl_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end74.if.end79_crit_edge

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.end.i.i:                                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %prev.i462 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i, ptr %prev.i462, align 4
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %ldif_dma_hndl_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call7.i.i, ptr %64, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.end.i.i, %if.end74.if.end79_crit_edge, %while.body.if.end79_crit_edge
  %dsd_ptr.2 = phi ptr [ %dsd_ptr.1551, %while.body.if.end79_crit_edge ], [ %call7.i.i, %if.end74.if.end79_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  %sub = sub i32 1024, %ldma_sg_len.1548
  %69 = tail call i32 @llvm.umin.i32(i32 %sglen.0550, i32 %sub)
  %call83 = tail call i32 @sg_nents(ptr noundef %sgl.0) #14
  %dsd_addr84 = getelementptr inbounds %struct.dsd_dma, ptr %dsd_ptr.2, i32 0, i32 2
  %70 = ptrtoint ptr %dsd_addr84 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dsd_addr84, align 4
  %add.ptr = getelementptr i8, ptr %71, i32 %ldma_sg_len.1548
  %72 = ptrtoint ptr %dif_bundl_len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dif_bundl_len, align 4
  %call86 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %sgl.0, i32 noundef %call83, ptr noundef %add.ptr, i32 noundef %69, i32 noundef %73) #14
  %74 = ptrtoint ptr %dif_bundl_len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dif_bundl_len, align 4
  %add88 = add i32 %75, %69
  store i32 %add88, ptr %dif_bundl_len, align 4
  %sub89 = sub i32 %sglen.0550, %69
  %add90 = add i32 %69, %ldma_sg_len.1548
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add90)
  %cmp91 = icmp eq i32 %add90, 1024
  br i1 %cmp91, label %if.end79.if.then95_crit_edge, label %lor.lhs.false

if.end79.if.then95_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then95

lor.lhs.false:                                    ; preds = %if.end79
  %76 = ptrtoint ptr %sg.1559 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sg.1559, align 4
  %and.i = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup97_crit_edge, label %lor.lhs.false.if.then95_crit_edge

lor.lhs.false.if.then95_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then95

lor.lhs.false.cleanup97_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup97

if.then95:                                        ; preds = %lor.lhs.false.if.then95_crit_edge, %if.end79.if.then95_crit_edge
  br label %cleanup97

cleanup97:                                        ; preds = %if.then95, %lor.lhs.false.cleanup97_crit_edge
  %ldma_sg_len.3 = phi i32 [ 0, %if.then95 ], [ %add90, %lor.lhs.false.cleanup97_crit_edge ]
  %ldma_needed.4 = phi i8 [ 1, %if.then95 ], [ 0, %lor.lhs.false.cleanup97_crit_edge ]
  %tobool61.not = icmp eq i32 %sub89, 0
  br i1 %tobool61.not, label %cleanup97.for.inc103_crit_edge, label %cleanup97.while.body_crit_edge

cleanup97.while.body_crit_edge:                   ; preds = %cleanup97
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup97.for.inc103_crit_edge:                   ; preds = %cleanup97
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc103

for.inc103:                                       ; preds = %cleanup97.for.inc103_crit_edge, %sg_phys.exit474.for.inc103_crit_edge
  %ldma_sg_len.1.lcssa = phi i32 [ %ldma_sg_len.0557, %sg_phys.exit474.for.inc103_crit_edge ], [ %ldma_sg_len.3, %cleanup97.for.inc103_crit_edge ]
  %ldma_needed.1.lcssa = phi i8 [ %ldma_needed.0558, %sg_phys.exit474.for.inc103_crit_edge ], [ %ldma_needed.4, %cleanup97.for.inc103_crit_edge ]
  %dsd_ptr.1.lcssa = phi ptr [ %dsd_ptr.0561, %sg_phys.exit474.for.inc103_crit_edge ], [ %dsd_ptr.2, %cleanup97.for.inc103_crit_edge ]
  %inc104 = add nuw nsw i32 %i.1556, 1
  %call105 = tail call ptr @sg_next(ptr noundef %sg.1559) #14
  %exitcond577.not = icmp eq i32 %inc104, %conv
  br i1 %exitcond577.not, label %for.inc103.for.end106_crit_edge, label %for.inc103.for.body56_crit_edge

for.inc103.for.body56_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body56

for.inc103.for.end106_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end106

for.end106:                                       ; preds = %for.inc103.for.end106_crit_edge, %if.then51.for.end106_crit_edge
  %78 = ptrtoint ptr %no_dif_bundl to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %no_dif_bundl, align 4
  %conv108 = zext i8 %79 to i32
  %80 = ptrtoint ptr %dif_bundl_len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dif_bundl_len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 49152, ptr noundef %vha.0, i32 noundef 57381, ptr noundef nonnull @.str.7, i32 noundef %81, i32 noundef %conv108, i32 noundef %conv108) #14
  br i1 %tobool.not, label %if.else116, label %if.then113

if.then113:                                       ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %flags, align 4
  %84 = or i16 %83, 128
  store i16 %84, ptr %flags, align 4
  br label %if.end117

if.else116:                                       ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #16
  %prot_flags = getelementptr inbounds %struct.qla_tgt_cmd, ptr %tc, i32 0, i32 49
  %85 = ptrtoint ptr %prot_flags to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 1, ptr %prot_flags, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.else116, %if.then113
  %86 = ptrtoint ptr %ldif_dma_hndl_list to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ldif_dma_hndl_list, align 4
  %cmp128.not563 = icmp eq ptr %87, %ldif_dma_hndl_list
  br i1 %cmp128.not563, label %if.end117.for.end219_crit_edge, label %for.body130.lr.ph

if.end117.for.end219_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end219

for.body130.lr.ph:                                ; preds = %if.end117
  %dif_bundle_kallocs171 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 291
  %no_ldif_dsd = getelementptr inbounds %struct.crc_context, ptr %difctx.0, i32 0, i32 15
  %dl_dma_pool = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 239
  %dif_bundle_dma_allocs183 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 292
  %flags189 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %ctx_dsd_alloced = getelementptr inbounds %struct.qla_tgt_cmd, ptr %tc, i32 0, i32 28
  br label %for.body130

for.body130:                                      ; preds = %cleanup210.for.body130_crit_edge, %for.body130.lr.ph
  %dif_dsd.0568 = phi ptr [ %87, %for.body130.lr.ph ], [ %nxt_dsd.0569, %cleanup210.for.body130_crit_edge ]
  %track_difbundl_buf.0567 = phi i32 [ %conv108, %for.body130.lr.ph ], [ %dec209, %cleanup210.for.body130_crit_edge ]
  %used_dsds.0566 = phi i32 [ %conv108, %for.body130.lr.ph ], [ %used_dsds.1, %cleanup210.for.body130_crit_edge ]
  %avail_dsds.0565 = phi i32 [ 0, %for.body130.lr.ph ], [ %dec206, %cleanup210.for.body130_crit_edge ]
  %cur_dsd.addr.0564 = phi ptr [ %cur_dsd, %for.body130.lr.ph ], [ %incdec.ptr, %cleanup210.for.body130_crit_edge ]
  %88 = ptrtoint ptr %dif_dsd.0568 to i32
  call void @__asan_load4_noabort(i32 %88)
  %nxt_dsd.0569 = load ptr, ptr %dif_dsd.0568, align 4
  %89 = ptrtoint ptr %dif_bundl_len to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dif_bundl_len, align 4
  %91 = tail call i32 @llvm.umin.i32(i32 %90, i32 1024)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %track_difbundl_buf.0567)
  %cmp141 = icmp eq i32 %track_difbundl_buf.0567, 0
  br i1 %cmp141, label %do.body147, label %do.end155, !prof !148

do.body147:                                       ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/qla2xxx/qla_iocb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1198, 0\0A.popsection", ""() #14, !srcloc !161
  unreachable

do.end155:                                        ; preds = %for.body130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avail_dsds.0565)
  %cmp156 = icmp eq i32 %avail_dsds.0565, 0
  br i1 %cmp156, label %if.then158, label %do.end155.cleanup210_crit_edge

do.end155.cleanup210_crit_edge:                   ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup210

if.then158:                                       ; preds = %do.end155
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 49152, ptr noundef %vha.0, i32 noundef 57380, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.qla24xx_walk_and_build_prot_sglist) #14
  %92 = tail call i32 @llvm.umin.i32(i32 %used_dsds.0566, i32 37)
  %93 = mul nuw nsw i32 %92, 12
  %mul = add nuw nsw i32 %93, 12
  %sub166 = sub i32 %used_dsds.0566, %92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %94 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i476 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %94, i32 noundef 2848, i32 noundef 16) #17
  %tobool168.not = icmp eq ptr %call7.i.i476, null
  br i1 %tobool168.not, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 16384, ptr noundef %vha.0, i32 noundef 57382, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla24xx_walk_and_build_prot_sglist) #14
  br label %cleanup286

if.end170:                                        ; preds = %if.then158
  %95 = ptrtoint ptr %dif_bundle_kallocs171 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %dif_bundle_kallocs171, align 64
  %inc172 = add i64 %96, 1
  store i64 %inc172, ptr %dif_bundle_kallocs171, align 64
  %97 = ptrtoint ptr %no_ldif_dsd to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %no_ldif_dsd, align 4
  %inc173 = add i8 %98, 1
  store i8 %inc173, ptr %no_ldif_dsd, align 4
  %99 = ptrtoint ptr %dl_dma_pool to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dl_dma_pool, align 16
  %dsd_list_dma174 = getelementptr inbounds %struct.dsd_dma, ptr %call7.i.i476, i32 0, i32 1
  %call175 = tail call ptr @dma_pool_alloc(ptr noundef %100, i32 noundef 2592, ptr noundef %dsd_list_dma174) #14
  %dsd_addr176 = getelementptr inbounds %struct.dsd_dma, ptr %call7.i.i476, i32 0, i32 2
  %101 = ptrtoint ptr %dsd_addr176 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call175, ptr %dsd_addr176, align 4
  %tobool178.not = icmp eq ptr %call175, null
  br i1 %tobool178.not, label %if.then179, label %if.end182

if.then179:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 16384, ptr noundef %vha.0, i32 noundef 57382, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.qla24xx_walk_and_build_prot_sglist) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i476) #14
  %102 = ptrtoint ptr %dif_bundle_kallocs171 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %dif_bundle_kallocs171, align 64
  %dec181 = add i64 %103, -1
  store i64 %dec181, ptr %dif_bundle_kallocs171, align 64
  br label %cleanup286

if.end182:                                        ; preds = %if.end170
  %104 = ptrtoint ptr %dif_bundle_dma_allocs183 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %dif_bundle_dma_allocs183, align 8
  %inc184 = add i64 %105, 1
  store i64 %inc184, ptr %dif_bundle_dma_allocs183, align 8
  %106 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i, align 4
  %call.i.i483 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i476, ptr noundef %107, ptr noundef %ldif_dsd_list) #14
  br i1 %tobool.not, label %if.else193, label %if.then186

if.then186:                                       ; preds = %if.end182
  br i1 %call.i.i483, label %if.end.i.i480, label %if.then186.list_add_tail.exit481_crit_edge

if.then186.list_add_tail.exit481_crit_edge:       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit481

if.end.i.i480:                                    ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #16
  %108 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call7.i.i476, ptr %prev.i, align 4
  %109 = ptrtoint ptr %call7.i.i476 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %ldif_dsd_list, ptr %call7.i.i476, align 8
  %prev3.i.i479 = getelementptr inbounds %struct.list_head, ptr %call7.i.i476, i32 0, i32 1
  %110 = ptrtoint ptr %prev3.i.i479 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev3.i.i479, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %call7.i.i476, ptr %107, align 4
  br label %list_add_tail.exit481

list_add_tail.exit481:                            ; preds = %if.end.i.i480, %if.then186.list_add_tail.exit481_crit_edge
  %112 = ptrtoint ptr %flags189 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %flags189, align 4
  %114 = or i16 %113, 32
  store i16 %114, ptr %flags189, align 4
  br label %if.end196

if.else193:                                       ; preds = %if.end182
  br i1 %call.i.i483, label %if.end.i.i485, label %if.else193.list_add_tail.exit486_crit_edge

if.else193.list_add_tail.exit486_crit_edge:       ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit486

if.end.i.i485:                                    ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #16
  %115 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call7.i.i476, ptr %prev.i, align 4
  %116 = ptrtoint ptr %call7.i.i476 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %ldif_dsd_list, ptr %call7.i.i476, align 8
  %prev3.i.i484 = getelementptr inbounds %struct.list_head, ptr %call7.i.i476, i32 0, i32 1
  %117 = ptrtoint ptr %prev3.i.i484 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %107, ptr %prev3.i.i484, align 4
  %118 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %call7.i.i476, ptr %107, align 4
  br label %list_add_tail.exit486

list_add_tail.exit486:                            ; preds = %if.end.i.i485, %if.else193.list_add_tail.exit486_crit_edge
  %119 = ptrtoint ptr %ctx_dsd_alloced to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %ctx_dsd_alloced, align 4
  br label %if.end196

if.end196:                                        ; preds = %list_add_tail.exit486, %list_add_tail.exit481
  %120 = ptrtoint ptr %dsd_list_dma174 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dsd_list_dma174, align 8
  %conv198 = zext i32 %121 to i64
  %122 = tail call i64 @llvm.bswap.i64(i64 %conv198) #14
  %123 = ptrtoint ptr %cur_dsd.addr.0564 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 8)
  store i64 %122, ptr %cur_dsd.addr.0564, align 1
  %124 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %length199 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.addr.0564, i32 0, i32 1
  %125 = ptrtoint ptr %length199 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %124, ptr %length199, align 1
  %126 = ptrtoint ptr %dsd_addr176 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dsd_addr176, align 4
  br label %cleanup210

cleanup210:                                       ; preds = %if.end196, %do.end155.cleanup210_crit_edge
  %cur_dsd.addr.1 = phi ptr [ %127, %if.end196 ], [ %cur_dsd.addr.0564, %do.end155.cleanup210_crit_edge ]
  %avail_dsds.1 = phi i32 [ %92, %if.end196 ], [ %avail_dsds.0565, %do.end155.cleanup210_crit_edge ]
  %used_dsds.1 = phi i32 [ %sub166, %if.end196 ], [ %used_dsds.0566, %do.end155.cleanup210_crit_edge ]
  %dsd_list_dma202 = getelementptr inbounds %struct.dsd_dma, ptr %dif_dsd.0568, i32 0, i32 1
  %128 = ptrtoint ptr %dsd_list_dma202 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %dsd_list_dma202, align 4
  %conv203 = zext i32 %129 to i64
  %130 = tail call i64 @llvm.bswap.i64(i64 %conv203) #14
  %131 = ptrtoint ptr %cur_dsd.addr.1 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 8)
  store i64 %130, ptr %cur_dsd.addr.1, align 1
  %132 = tail call i32 @llvm.bswap.i32(i32 %91)
  %length205 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.addr.1, i32 0, i32 1
  %133 = ptrtoint ptr %length205 to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %132, ptr %length205, align 1
  %incdec.ptr = getelementptr %struct.dsd64, ptr %cur_dsd.addr.1, i32 1
  %dec206 = add i32 %avail_dsds.1, -1
  %134 = ptrtoint ptr %dif_bundl_len to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %dif_bundl_len, align 4
  %sub208 = sub i32 %135, %91
  store i32 %sub208, ptr %dif_bundl_len, align 4
  %dec209 = add nsw i32 %track_difbundl_buf.0567, -1
  %cmp128.not = icmp eq ptr %nxt_dsd.0569, %ldif_dma_hndl_list
  br i1 %cmp128.not, label %cleanup210.for.end219_crit_edge, label %cleanup210.for.body130_crit_edge

cleanup210.for.body130_crit_edge:                 ; preds = %cleanup210
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body130

cleanup210.for.end219_crit_edge:                  ; preds = %cleanup210
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end219

for.end219:                                       ; preds = %cleanup210.for.end219_crit_edge, %if.end117.for.end219_crit_edge
  %cur_dsd.addr.0.lcssa = phi ptr [ %cur_dsd, %if.end117.for.end219_crit_edge ], [ %incdec.ptr, %cleanup210.for.end219_crit_edge ]
  %no_ldif_dsd220 = getelementptr inbounds %struct.crc_context, ptr %difctx.0, i32 0, i32 15
  %136 = ptrtoint ptr %no_ldif_dsd220 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %no_ldif_dsd220, align 4
  %conv221 = zext i8 %137 to i32
  %138 = ptrtoint ptr %no_dif_bundl to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %no_dif_bundl, align 4
  %conv223 = zext i8 %139 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 49152, ptr noundef %vha.0, i32 noundef 57382, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.qla24xx_walk_and_build_prot_sglist, i32 noundef %conv221, i32 noundef %conv223) #14
  br label %if.end282

for.body234:                                      ; preds = %if.end276.for.body234_crit_edge, %for.body234.lr.ph
  %sg.2546 = phi ptr [ %sgl.0, %for.body234.lr.ph ], [ %call280, %if.end276.for.body234_crit_edge ]
  %i.2545 = phi i32 [ 0, %for.body234.lr.ph ], [ %inc279, %if.end276.for.body234_crit_edge ]
  %used_dsds.3544 = phi i32 [ %conv, %for.body234.lr.ph ], [ %used_dsds.4, %if.end276.for.body234_crit_edge ]
  %avail_dsds.3543 = phi i32 [ 0, %for.body234.lr.ph ], [ %dec277, %if.end276.for.body234_crit_edge ]
  %cur_dsd.addr.3542 = phi ptr [ %cur_dsd, %for.body234.lr.ph ], [ %incdec.ptr.i, %if.end276.for.body234_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avail_dsds.3543)
  %cmp235 = icmp eq i32 %avail_dsds.3543, 0
  br i1 %cmp235, label %if.then237, label %for.body234.if.end276_crit_edge

for.body234.if.end276_crit_edge:                  ; preds = %for.body234
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end276

if.then237:                                       ; preds = %for.body234
  %140 = tail call i32 @llvm.umin.i32(i32 %used_dsds.3544, i32 37)
  %141 = mul nuw nsw i32 %140, 12
  %mul245 = add nuw nsw i32 %141, 12
  %sub246 = sub i32 %used_dsds.3544, %140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %142 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i487 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %142, i32 noundef 2848, i32 noundef 16) #17
  %tobool248.not = icmp eq ptr %call7.i.i487, null
  br i1 %tobool248.not, label %if.then249, label %if.end250

if.then249:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 49152, ptr noundef %vha.0, i32 noundef 57383, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.qla24xx_walk_and_build_prot_sglist) #14
  br label %cleanup286

if.end250:                                        ; preds = %if.then237
  %143 = ptrtoint ptr %dl_dma_pool251 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dl_dma_pool251, align 16
  %dsd_list_dma252 = getelementptr inbounds %struct.dsd_dma, ptr %call7.i.i487, i32 0, i32 1
  %call253 = tail call ptr @dma_pool_alloc(ptr noundef %144, i32 noundef 2592, ptr noundef %dsd_list_dma252) #14
  %dsd_addr254 = getelementptr inbounds %struct.dsd_dma, ptr %call7.i.i487, i32 0, i32 2
  %145 = ptrtoint ptr %dsd_addr254 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call253, ptr %dsd_addr254, align 4
  %tobool256.not = icmp eq ptr %call253, null
  br i1 %tobool256.not, label %if.then257, label %if.end258

if.then257:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i487) #14
  br label %cleanup286

if.end258:                                        ; preds = %if.end250
  %146 = ptrtoint ptr %prev.i488 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %prev.i488, align 4
  %call.i.i494 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i487, ptr noundef %147, ptr noundef %dsd_list) #14
  br i1 %tobool.not, label %if.else266, label %if.then260

if.then260:                                       ; preds = %if.end258
  br i1 %call.i.i494, label %if.end.i.i491, label %if.then260.list_add_tail.exit492_crit_edge

if.then260.list_add_tail.exit492_crit_edge:       ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit492

if.end.i.i491:                                    ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #16
  %148 = ptrtoint ptr %prev.i488 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call7.i.i487, ptr %prev.i488, align 4
  %149 = ptrtoint ptr %call7.i.i487 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %dsd_list, ptr %call7.i.i487, align 8
  %prev3.i.i490 = getelementptr inbounds %struct.list_head, ptr %call7.i.i487, i32 0, i32 1
  %150 = ptrtoint ptr %prev3.i.i490 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %147, ptr %prev3.i.i490, align 4
  %151 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %call7.i.i487, ptr %147, align 4
  br label %list_add_tail.exit492

list_add_tail.exit492:                            ; preds = %if.end.i.i491, %if.then260.list_add_tail.exit492_crit_edge
  %152 = ptrtoint ptr %flags262 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %flags262, align 4
  %154 = or i16 %153, 32
  store i16 %154, ptr %flags262, align 4
  br label %if.end270

if.else266:                                       ; preds = %if.end258
  br i1 %call.i.i494, label %if.end.i.i496, label %if.else266.list_add_tail.exit497_crit_edge

if.else266.list_add_tail.exit497_crit_edge:       ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit497

if.end.i.i496:                                    ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #16
  %155 = ptrtoint ptr %prev.i488 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call7.i.i487, ptr %prev.i488, align 4
  %156 = ptrtoint ptr %call7.i.i487 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %dsd_list, ptr %call7.i.i487, align 8
  %prev3.i.i495 = getelementptr inbounds %struct.list_head, ptr %call7.i.i487, i32 0, i32 1
  %157 = ptrtoint ptr %prev3.i.i495 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %147, ptr %prev3.i.i495, align 4
  %158 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %call7.i.i487, ptr %147, align 4
  br label %list_add_tail.exit497

list_add_tail.exit497:                            ; preds = %if.end.i.i496, %if.else266.list_add_tail.exit497_crit_edge
  %159 = ptrtoint ptr %ctx_dsd_alloced269 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %ctx_dsd_alloced269, align 4
  br label %if.end270

if.end270:                                        ; preds = %list_add_tail.exit497, %list_add_tail.exit492
  %160 = ptrtoint ptr %dsd_list_dma252 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dsd_list_dma252, align 8
  %conv272 = zext i32 %161 to i64
  %162 = tail call i64 @llvm.bswap.i64(i64 %conv272) #14
  %163 = ptrtoint ptr %cur_dsd.addr.3542 to i32
  call void @__asan_storeN_noabort(i32 %163, i32 8)
  store i64 %162, ptr %cur_dsd.addr.3542, align 1
  %164 = tail call i32 @llvm.bswap.i32(i32 %mul245)
  %length274 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.addr.3542, i32 0, i32 1
  %165 = ptrtoint ptr %length274 to i32
  call void @__asan_storeN_noabort(i32 %165, i32 4)
  store i32 %164, ptr %length274, align 1
  %166 = ptrtoint ptr %dsd_addr254 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dsd_addr254, align 4
  br label %if.end276

if.end276:                                        ; preds = %if.end270, %for.body234.if.end276_crit_edge
  %cur_dsd.addr.4 = phi ptr [ %167, %if.end270 ], [ %cur_dsd.addr.3542, %for.body234.if.end276_crit_edge ]
  %avail_dsds.4 = phi i32 [ %140, %if.end270 ], [ %avail_dsds.3543, %for.body234.if.end276_crit_edge ]
  %used_dsds.4 = phi i32 [ %sub246, %if.end270 ], [ %used_dsds.3544, %for.body234.if.end276_crit_edge ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.2546, i32 0, i32 3
  %168 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %dma_address.i, align 4
  %conv.i = zext i32 %169 to i64
  %170 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #14
  %171 = ptrtoint ptr %cur_dsd.addr.4 to i32
  call void @__asan_storeN_noabort(i32 %171, i32 8)
  store i64 %170, ptr %cur_dsd.addr.4, align 1
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.2546, i32 0, i32 4
  %172 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %dma_length.i, align 4
  %length.i = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.addr.4, i32 0, i32 1
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #14
  %175 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %175, i32 4)
  store i32 %174, ptr %length.i, align 1
  %incdec.ptr.i = getelementptr %struct.dsd64, ptr %cur_dsd.addr.4, i32 1
  %dec277 = add i32 %avail_dsds.4, -1
  %inc279 = add nuw nsw i32 %i.2545, 1
  %call280 = tail call ptr @sg_next(ptr noundef %sg.2546) #14
  %exitcond576.not = icmp eq i32 %inc279, %conv
  br i1 %exitcond576.not, label %if.end276.if.end282_crit_edge, label %if.end276.for.body234_crit_edge

if.end276.for.body234_crit_edge:                  ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body234

if.end276.if.end282_crit_edge:                    ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end282

if.end282:                                        ; preds = %if.end276.if.end282_crit_edge, %for.end219, %for.cond230.preheader.if.end282_crit_edge
  %cur_dsd.addr.5 = phi ptr [ %cur_dsd.addr.0.lcssa, %for.end219 ], [ %cur_dsd, %for.cond230.preheader.if.end282_crit_edge ], [ %incdec.ptr.i, %if.end276.if.end282_crit_edge ]
  %176 = ptrtoint ptr %cur_dsd.addr.5 to i32
  call void @__asan_storeN_noabort(i32 %176, i32 8)
  store i64 0, ptr %cur_dsd.addr.5, align 1
  %length284 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.addr.5, i32 0, i32 1
  %177 = ptrtoint ptr %length284 to i32
  call void @__asan_storeN_noabort(i32 %177, i32 4)
  store i32 0, ptr %length284, align 1
  br label %cleanup286

cleanup286:                                       ; preds = %if.end282, %if.then257, %if.then249, %if.then179, %if.then169, %if.then72, %if.then66
  %retval.7 = phi i32 [ 0, %if.end282 ], [ 1, %if.then257 ], [ 1, %if.then249 ], [ 1, %if.then72 ], [ 1, %if.then66 ], [ 1, %if.then179 ], [ 1, %if.then169 ]
  ret i32 %retval.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dbg(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_start_scsi(ptr noundef %sp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %vha2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %2 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vha2, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %6 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcport, align 4
  %edif = getelementptr inbounds %struct.fc_port, ptr %7, i32 0, i32 72
  %8 = ptrtoint ptr %edif to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %edif, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags4 = getelementptr inbounds %struct.fc_port, ptr %7, i32 0, i32 35
  %9 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags4, align 8
  %and = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @qla28xx_start_scsi_edif(ptr noundef %sp) #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %req6 = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 54
  %11 = ptrtoint ptr %req6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req6, align 8
  %rsp7 = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %rsp7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rsp7, align 4
  %marker_needed = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 18
  %15 = ptrtoint ptr %marker_needed to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %marker_needed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.not = icmp eq i8 %16, 0
  br i1 %cmp.not, label %if.end.do.body17_crit_edge, label %if.then9

if.end.do.body17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body17

if.then9:                                         ; preds = %if.end
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 34
  %17 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_qpair, align 4
  %qp_lock_ptr.i = getelementptr inbounds %struct.qla_qpair, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp_lock_ptr.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #14
  %req1.i = getelementptr inbounds %struct.qla_qpair, ptr %18, i32 0, i32 12
  %21 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req1.i, align 4
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i, align 4
  %call2.i343 = tail call ptr @__qla2x00_alloc_iocbs(ptr noundef %18, ptr noundef null) #14
  %cmp.i344 = icmp eq ptr %call2.i343, null
  br i1 %cmp.i344, label %__qla2x00_marker.exit, label %if.end14

__qla2x00_marker.exit:                            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %28, i32 noundef 12326, ptr noundef nonnull @.str.32) #14
  %29 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %qp_lock_ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %call2.i) #14
  br label %cleanup

if.end14:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %call2.i343 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %call2.i343, align 4
  %modifier.i = getelementptr inbounds %struct.mrk_entry_t, ptr %call2.i343, i32 0, i32 6
  %32 = ptrtoint ptr %modifier.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %modifier.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !147
  tail call void @arm_heavy_mb() #14
  tail call void @qla2x00_start_iocbs(ptr noundef %3, ptr noundef %22) #14
  %33 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %qp_lock_ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %call2.i) #14
  %35 = ptrtoint ptr %marker_needed to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %marker_needed, align 4
  br label %do.body17

do.body17:                                        ; preds = %if.end14, %if.end.do.body17_crit_edge
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 6
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #14
  %num_outstanding_cmds.i = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 18
  %36 = ptrtoint ptr %num_outstanding_cmds.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_outstanding_cmds.i, align 4
  %conv.i = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %37)
  %cmp17.i = icmp ugt i16 %37, 1
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %do.body17.if.end182_crit_edge

do.body17.if.end182_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

for.body.lr.ph.i:                                 ; preds = %do.body17
  %current_outstanding_cmd.i = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 17
  %38 = ptrtoint ptr %current_outstanding_cmd.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %current_outstanding_cmd.i, align 4
  %outstanding_cmds.i = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 16
  %40 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %outstanding_cmds.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc8.i = add nuw nsw i32 %index.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.if.end182_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.if.end182_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %handle.019.i = phi i32 [ %39, %for.body.lr.ph.i ], [ %spec.store.select.i, %for.cond.i.for.body.i_crit_edge ]
  %index.018.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc8.i, %for.cond.i.for.body.i_crit_edge ]
  %inc.i = add i32 %handle.019.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp4.i = icmp eq i32 %inc.i, %conv.i
  %spec.store.select.i = select i1 %cmp4.i, i32 1, i32 %inc.i
  %arrayidx.i = getelementptr ptr, ptr %41, i32 %spec.store.select.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %qla2xxx_get_next_handle.exit, label %for.cond.i

qla2xxx_get_next_handle.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp25 = icmp eq i32 %spec.store.select.i, 0
  br i1 %cmp25, label %qla2xxx_get_next_handle.exit.if.end182_crit_edge, label %if.end28

qla2xxx_get_next_handle.exit.if.end182_crit_edge: ; preds = %qla2xxx_get_next_handle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

if.end28:                                         ; preds = %qla2xxx_get_next_handle.exit
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %44 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool30.not = icmp eq i32 %45, 0
  br i1 %tobool30.not, label %if.end28.qla24xx_calc_iocbs.exit_crit_edge, label %if.then31

if.end28.qla24xx_calc_iocbs.exit_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_calc_iocbs.exit

if.then31:                                        ; preds = %if.end28
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %5, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %48 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sdb.i, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %50 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sc_data_direction, align 4
  %call34 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %49, i32 noundef %45, i32 noundef %51, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then31.if.end182_crit_edge, label %if.end41, !prof !148

if.then31.if.end182_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

if.end41:                                         ; preds = %if.then31
  %conv42 = trunc i32 %call34 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv42)
  %cmp.i = icmp ugt i16 %conv42, 1
  br i1 %cmp.i, label %if.then.i, label %if.end41.qla24xx_calc_iocbs.exit_crit_edge

if.end41.qla24xx_calc_iocbs.exit_crit_edge:       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_calc_iocbs.exit

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = add i16 %conv42, -1
  %sub.i.frozen = freeze i16 %sub.i
  %div12.i = udiv i16 %sub.i.frozen, 5
  %52 = mul i16 %div12.i, 5
  %rem34.i.decomposed = sub i16 %sub.i.frozen, %52
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem34.i.decomposed)
  %tobool.not.i308 = icmp eq i16 %rem34.i.decomposed, 0
  %spec.select.v.i = select i1 %tobool.not.i308, i16 1, i16 2
  %spec.select.i = add nuw nsw i16 %spec.select.v.i, %div12.i
  br label %qla24xx_calc_iocbs.exit

qla24xx_calc_iocbs.exit:                          ; preds = %if.then.i, %if.end41.qla24xx_calc_iocbs.exit_crit_edge, %if.end28.qla24xx_calc_iocbs.exit_crit_edge
  %conv42355 = phi i16 [ %conv42, %if.end41.qla24xx_calc_iocbs.exit_crit_edge ], [ %conv42, %if.then.i ], [ 0, %if.end28.qla24xx_calc_iocbs.exit_crit_edge ]
  %iocbs.0.i = phi i16 [ 1, %if.end41.qla24xx_calc_iocbs.exit_crit_edge ], [ %spec.select.i, %if.then.i ], [ 1, %if.end28.qla24xx_calc_iocbs.exit_crit_edge ]
  %iores = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2
  %53 = ptrtoint ptr %iores to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %iores, align 4
  %iocb_cnt = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %iocb_cnt to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %iocbs.0.i, ptr %iocb_cnt, align 2
  %qpair = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 14
  %55 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %qpair, align 8
  %vha.i = getelementptr inbounds %struct.qla_qpair, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %vha.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vha.i, align 8
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %58, i32 0, i32 52
  %59 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xenforce_iocb_limit to i32))
  %61 = load i32, ptr @ql2xenforce_iocb_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i309 = icmp eq i32 %61, 0
  br i1 %tobool.not.i309, label %if.then.i310, label %if.end.i

if.then.i310:                                     ; preds = %qla24xx_calc_iocbs.exit
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %iores to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %iores, align 2
  br label %if.end49

if.end.i:                                         ; preds = %qla24xx_calc_iocbs.exit
  %63 = ptrtoint ptr %iocb_cnt to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %iocb_cnt, align 2
  %conv.i311 = zext i16 %64 to i32
  %iocbs_used1.i = getelementptr inbounds %struct.qla_qpair, ptr %56, i32 0, i32 27, i32 3
  %65 = ptrtoint ptr %iocbs_used1.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %iocbs_used1.i, align 2
  %conv2.i = zext i16 %66 to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv.i311
  %iocbs_qp_limit.i = getelementptr inbounds %struct.qla_qpair, ptr %56, i32 0, i32 27, i32 2
  %67 = ptrtoint ptr %iocbs_qp_limit.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %iocbs_qp_limit.i, align 4
  %conv4.i = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv4.i)
  %cmp.i312 = icmp ult i32 %add.i, %conv4.i
  br i1 %cmp.i312, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv13.i = trunc i32 %add.i to i16
  %69 = ptrtoint ptr %iocbs_used1.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv13.i, ptr %iocbs_used1.i, align 2
  br label %if.end49

if.else.i:                                        ; preds = %if.end.i
  %base_qpair.i = getelementptr inbounds %struct.qla_hw_data, ptr %60, i32 0, i32 34
  %70 = ptrtoint ptr %base_qpair.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base_qpair.i, align 4
  %iocbs_used15.i = getelementptr inbounds %struct.qla_qpair, ptr %71, i32 0, i32 27, i32 3
  %72 = ptrtoint ptr %iocbs_used15.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %iocbs_used15.i, align 2
  %max_qpairs.i = getelementptr inbounds %struct.qla_hw_data, ptr %60, i32 0, i32 32
  %74 = ptrtoint ptr %max_qpairs.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %max_qpairs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp1869.not.i = icmp eq i8 %75, 0
  br i1 %cmp1869.not.i, label %if.else.i.for.end.i_crit_edge, label %for.body.lr.ph.i313

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i313:                              ; preds = %if.else.i
  %queue_pair_map.i = getelementptr inbounds %struct.qla_hw_data, ptr %60, i32 0, i32 26
  %76 = ptrtoint ptr %queue_pair_map.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %queue_pair_map.i, align 4
  %wide.trip.count.i = zext i8 %75 to i32
  br label %for.body.i315

for.body.i315:                                    ; preds = %for.inc.i.for.body.i315_crit_edge, %for.body.lr.ph.i313
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i313 ], [ %indvars.iv.next.i, %for.inc.i.for.body.i315_crit_edge ]
  %iocbs_used.070.i = phi i16 [ %73, %for.body.lr.ph.i313 ], [ %iocbs_used.1.i, %for.inc.i.for.body.i315_crit_edge ]
  %arrayidx.i314 = getelementptr ptr, ptr %77, i32 %indvars.iv.i
  %78 = ptrtoint ptr %arrayidx.i314 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i314, align 4
  %tobool20.not.i = icmp eq ptr %79, null
  br i1 %tobool20.not.i, label %for.body.i315.for.inc.i_crit_edge, label %if.then21.i

for.body.i315.for.inc.i_crit_edge:                ; preds = %for.body.i315
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then21.i:                                      ; preds = %for.body.i315
  call void @__sanitizer_cov_trace_pc() #16
  %iocbs_used26.i = getelementptr inbounds %struct.qla_qpair, ptr %79, i32 0, i32 27, i32 3
  %80 = ptrtoint ptr %iocbs_used26.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %iocbs_used26.i, align 2
  %add29.i = add i16 %81, %iocbs_used.070.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then21.i, %for.body.i315.for.inc.i_crit_edge
  %iocbs_used.1.i = phi i16 [ %add29.i, %if.then21.i ], [ %iocbs_used.070.i, %for.body.i315.for.inc.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i316 = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i316, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i315_crit_edge

for.inc.i.for.body.i315_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i315

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.else.i.for.end.i_crit_edge
  %iocbs_used.0.lcssa.i = phi i16 [ %73, %if.else.i.for.end.i_crit_edge ], [ %iocbs_used.1.i, %for.inc.i.for.end.i_crit_edge ]
  %conv34.i = zext i16 %iocbs_used.0.lcssa.i to i32
  %add35.i = add nuw nsw i32 %conv34.i, %conv.i311
  %iocbs_limit.i = getelementptr inbounds %struct.qla_qpair, ptr %56, i32 0, i32 27, i32 1
  %82 = ptrtoint ptr %iocbs_limit.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %iocbs_limit.i, align 2
  %conv37.i = zext i16 %83 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add35.i, i32 %conv37.i)
  %cmp38.i = icmp ult i32 %add35.i, %conv37.i
  br i1 %cmp38.i, label %if.then40.i, label %qla_get_iocbs.exit

if.then40.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %add46.i = add i16 %66, %64
  %84 = ptrtoint ptr %iocbs_used1.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %add46.i, ptr %iocbs_used1.i, align 2
  br label %if.end49

qla_get_iocbs.exit:                               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %85 = ptrtoint ptr %iores to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %iores, align 2
  br label %queuing_error

if.end49:                                         ; preds = %if.then40.i, %if.then6.i, %if.then.i310
  %cnt50 = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 8
  %86 = ptrtoint ptr %cnt50 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %cnt50, align 4
  %conv51 = zext i16 %87 to i32
  %conv52 = zext i16 %iocbs.0.i to i32
  %add = add nuw nsw i32 %conv52, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv51)
  %cmp53 = icmp ugt i32 %add, %conv51
  br i1 %cmp53, label %if.then55, label %if.end49.if.end114_crit_edge

if.end49.if.end114_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

if.then55:                                        ; preds = %if.end49
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 54
  %88 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %isp_type, align 8
  %90 = and i32 %89, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %if.else79, label %if.then78

if.then78:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  %out_ptr = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 7
  %92 = ptrtoint ptr %out_ptr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %out_ptr, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %93, align 2
  br label %if.end85

if.else79:                                        ; preds = %if.then55
  %req_q_out = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 4
  %96 = ptrtoint ptr %req_q_out to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %req_q_out, align 4
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #14, !srcloc !155
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #14
  %conv81 = trunc i32 %99 to i16
  %call82 = tail call zeroext i1 @qla2x00_check_reg16_for_disconnect(ptr noundef %3, i16 noundef zeroext %conv81) #14
  br i1 %call82, label %if.else79.queuing_error_crit_edge, label %if.else79.if.end85_crit_edge

if.else79.if.end85_crit_edge:                     ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.else79.queuing_error_crit_edge:                ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #16
  br label %queuing_error

if.end85:                                         ; preds = %if.else79.if.end85_crit_edge, %if.then78
  %cnt.0 = phi i16 [ %95, %if.then78 ], [ %conv81, %if.else79.if.end85_crit_edge ]
  %ring_index = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 5
  %100 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %ring_index, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %cnt.0, i16 %101)
  %cmp88 = icmp ugt i16 %cnt.0, %101
  br i1 %cmp88, label %if.then90, label %if.else96

if.then90:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i16 %cnt.0, %101
  br label %if.end105

if.else96:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  %length = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 9
  %102 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %length, align 2
  %sub101.neg = sub i16 %cnt.0, %101
  %sub102 = add i16 %sub101.neg, %103
  br label %if.end105

if.end105:                                        ; preds = %if.else96, %if.then90
  %storemerge303 = phi i16 [ %sub102, %if.else96 ], [ %sub, %if.then90 ]
  %104 = ptrtoint ptr %cnt50 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %storemerge303, ptr %cnt50, align 4
  %conv107 = zext i16 %storemerge303 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv107)
  %cmp110 = icmp ugt i32 %add, %conv107
  br i1 %cmp110, label %if.end105.queuing_error_crit_edge, label %if.end105.if.end114_crit_edge

if.end105.if.end114_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

if.end105.queuing_error_crit_edge:                ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %queuing_error

if.end114:                                        ; preds = %if.end105.if.end114_crit_edge, %if.end49.if.end114_crit_edge
  %105 = ptrtoint ptr %current_outstanding_cmd.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %spec.store.select.i, ptr %current_outstanding_cmd.i, align 4
  %106 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %outstanding_cmds.i, align 4
  %arrayidx = getelementptr ptr, ptr %107, i32 %spec.store.select.i
  %108 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %sp, ptr %arrayidx, align 4
  %handle115 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %109 = ptrtoint ptr %handle115 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %spec.store.select.i, ptr %handle115, align 8
  %110 = inttoptr i32 %spec.store.select.i to ptr
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 23
  %111 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %host_scribble, align 4
  %112 = ptrtoint ptr %cnt50 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %cnt50, align 4
  %sub119 = sub i16 %113, %iocbs.0.i
  store i16 %sub119, ptr %cnt50, align 4
  %ring_ptr = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 2
  %114 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ring_ptr, align 4
  %id = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 12
  %116 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %id, align 4
  %conv.i318 = zext i16 %117 to i32
  %shl.i = shl nuw i32 %conv.i318, 16
  %conv1.i = and i32 %spec.store.select.i, 65535
  %or.i = or i32 %shl.i, %conv1.i
  %handle123 = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 4
  %118 = ptrtoint ptr %handle123 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or.i, ptr %handle123, align 4
  %add.ptr = getelementptr i32, ptr %115, i32 2
  %119 = call ptr @memset(ptr %add.ptr, i32 0, i32 56)
  %120 = tail call i16 @llvm.bswap.i16(i16 %conv42355)
  %dseg_count = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 7
  %121 = ptrtoint ptr %dseg_count to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %dseg_count, align 4
  %122 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fcport, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %123, i32 0, i32 7
  %124 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %loop_id, align 4
  %126 = tail call i16 @llvm.bswap.i16(i16 %125)
  %127 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %add.ptr, align 4
  %128 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %fcport, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %129, i32 0, i32 6
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %130 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %al_pa, align 2
  %port_id = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 15
  %132 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %port_id, align 4
  %133 = load ptr, ptr %fcport, align 4
  %d_id128 = getelementptr inbounds %struct.fc_port, ptr %133, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id128, i32 0, i32 1
  %134 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %area, align 1
  %arrayidx130 = getelementptr %struct.cmd_type_7, ptr %115, i32 0, i32 15, i32 1
  %136 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %arrayidx130, align 1
  %137 = load ptr, ptr %fcport, align 4
  %d_id132 = getelementptr inbounds %struct.fc_port, ptr %137, i32 0, i32 6
  %138 = ptrtoint ptr %d_id132 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %d_id132, align 8
  %arrayidx134 = getelementptr %struct.cmd_type_7, ptr %115, i32 0, i32 15, i32 2
  %140 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %arrayidx134, align 2
  %141 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %vha2, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %142, i32 0, i32 46
  %143 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %vp_idx, align 8
  %conv136 = trunc i16 %144 to i8
  %vp_index = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 16
  %145 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv136, ptr %vp_index, align 1
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %146 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %147, i32 0, i32 18
  %148 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %lun, align 8
  %lun137 = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 9
  tail call void @int_to_scsilun(i64 noundef %149, ptr noundef %lun137) #14
  %incdec.ptr1.i = getelementptr %struct.cmd_type_7, ptr %115, i32 0, i32 9, i32 0, i32 4
  %150 = ptrtoint ptr %lun137 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %lun137, align 4
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #14
  %153 = ptrtoint ptr %lun137 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %lun137, align 4
  %154 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %incdec.ptr1.i, align 4
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #14
  %157 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %incdec.ptr1.i, align 4
  %task = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 11
  %158 = ptrtoint ptr %task to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %task, align 2
  %fcp_cdb = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 13
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %159 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cmnd, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %161 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %cmd_len, align 4
  %conv140 = zext i16 %162 to i32
  %163 = call ptr @memcpy(ptr %fcp_cdb, ptr %160, i32 %conv140)
  %incdec.ptr1.i324 = getelementptr %struct.cmd_type_7, ptr %115, i32 0, i32 13, i32 4
  %164 = ptrtoint ptr %fcp_cdb to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %fcp_cdb, align 4
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #14
  %167 = ptrtoint ptr %fcp_cdb to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %fcp_cdb, align 4
  %incdec.ptr1.i324.1 = getelementptr %struct.cmd_type_7, ptr %115, i32 0, i32 13, i32 8
  %168 = ptrtoint ptr %incdec.ptr1.i324 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %incdec.ptr1.i324, align 4
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #14
  %171 = ptrtoint ptr %incdec.ptr1.i324 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %incdec.ptr1.i324, align 4
  %incdec.ptr1.i324.2 = getelementptr %struct.cmd_type_7, ptr %115, i32 0, i32 13, i32 12
  %172 = ptrtoint ptr %incdec.ptr1.i324.1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %incdec.ptr1.i324.1, align 4
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #14
  %175 = ptrtoint ptr %incdec.ptr1.i324.1 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %incdec.ptr1.i324.1, align 4
  %176 = ptrtoint ptr %incdec.ptr1.i324.2 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %incdec.ptr1.i324.2, align 4
  %178 = tail call i32 @llvm.bswap.i32(i32 %177) #14
  %179 = ptrtoint ptr %incdec.ptr1.i324.2 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %incdec.ptr1.i324.2, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %180 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %length.i, align 4
  %182 = tail call i32 @llvm.bswap.i32(i32 %181)
  %byte_count = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 14
  %183 = ptrtoint ptr %byte_count to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %byte_count, align 4
  %184 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %qpair, align 8
  %186 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %u, align 8
  %188 = ptrtoint ptr %115 to i32
  call void @__asan_storeN_noabort(i32 %188, i32 4)
  store i32 402653184, ptr %115, align 1
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %187, i32 0, i32 17, i32 1
  %189 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not.i330 = icmp eq i32 %190, 0
  br i1 %tobool.not.i330, label %if.end114.if.then.i332_crit_edge, label %lor.lhs.false.i

if.end114.if.then.i332_crit_edge:                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i332

lor.lhs.false.i:                                  ; preds = %if.end114
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %187, i32 0, i32 15
  %191 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %sc_data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %192)
  %cmp.i331 = icmp eq i32 %192, 3
  br i1 %cmp.i331, label %lor.lhs.false.i.if.then.i332_crit_edge, label %if.end.i333

lor.lhs.false.i.if.then.i332_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i332

if.then.i332:                                     ; preds = %lor.lhs.false.i.if.then.i332_crit_edge, %if.end114.if.then.i332_crit_edge
  %193 = ptrtoint ptr %byte_count to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %byte_count, align 4
  br label %qla24xx_build_scsi_iocbs.exit

if.end.i333:                                      ; preds = %lor.lhs.false.i
  %194 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %vha2, align 8
  %196 = zext i32 %192 to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %192, label %if.end.i333.if.end21.i_crit_edge [
    i32 1, label %if.then6.i336
    i32 2, label %if.then12.i
  ]

if.end.i333.if.end21.i_crit_edge:                 ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

if.then6.i336:                                    ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_pc() #16
  %task_mgmt_flags.i = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 10
  %197 = ptrtoint ptr %task_mgmt_flags.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 256, ptr %task_mgmt_flags.i, align 4
  %198 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %length.i.i, align 4
  %conv.i334 = zext i32 %199 to i64
  %output_bytes.i = getelementptr inbounds %struct.qla_qpair, ptr %185, i32 0, i32 18, i32 2
  %200 = ptrtoint ptr %output_bytes.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %output_bytes.i, align 8
  %add.i335 = add i64 %201, %conv.i334
  store i64 %add.i335, ptr %output_bytes.i, align 8
  %output_requests.i = getelementptr inbounds %struct.qla_qpair, ptr %185, i32 0, i32 18, i32 3
  br label %if.end21.sink.split.i

if.then12.i:                                      ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_pc() #16
  %task_mgmt_flags13.i = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 10
  %202 = ptrtoint ptr %task_mgmt_flags13.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 512, ptr %task_mgmt_flags13.i, align 4
  %203 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %length.i.i, align 4
  %conv15.i = zext i32 %204 to i64
  %counters16.i = getelementptr inbounds %struct.qla_qpair, ptr %185, i32 0, i32 18
  %205 = ptrtoint ptr %counters16.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %counters16.i, align 8
  %add17.i = add i64 %206, %conv15.i
  store i64 %add17.i, ptr %counters16.i, align 8
  %input_requests.i = getelementptr inbounds %struct.qla_qpair, ptr %185, i32 0, i32 18, i32 1
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %if.then12.i, %if.then6.i336
  %input_requests.sink71.i = phi ptr [ %input_requests.i, %if.then12.i ], [ %output_requests.i, %if.then6.i336 ]
  %207 = ptrtoint ptr %input_requests.sink71.i to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %input_requests.sink71.i, align 8
  %inc19.i = add i64 %208, 1
  store i64 %inc19.i, ptr %input_requests.sink71.i, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.sink.split.i, %if.end.i333.if.end21.i_crit_edge
  %conv23.i = zext i16 %conv42355 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv42355)
  %cmp2466.not.i = icmp eq i16 %conv42355, 0
  br i1 %cmp2466.not.i, label %if.end21.i.qla24xx_build_scsi_iocbs.exit_crit_edge, label %for.body.lr.ph.i337

if.end21.i.qla24xx_build_scsi_iocbs.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_build_scsi_iocbs.exit

for.body.lr.ph.i337:                              ; preds = %if.end21.i
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %187, i32 0, i32 17
  %209 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %sdb.i.i, align 4
  %dsd.i = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 17
  %ring_index.i.i = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 5
  %length.i61.i = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 9
  %ring.i.i = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 1
  %hw.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %195, i32 0, i32 52
  br label %for.body.i338

for.body.i338:                                    ; preds = %if.end32.i.for.body.i338_crit_edge, %for.body.lr.ph.i337
  %i.070.i = phi i32 [ 0, %for.body.lr.ph.i337 ], [ %inc33.i, %if.end32.i.for.body.i338_crit_edge ]
  %sg.069.i = phi ptr [ %210, %for.body.lr.ph.i337 ], [ %call34.i, %if.end32.i.for.body.i338_crit_edge ]
  %avail_dsds.068.i = phi i16 [ 1, %for.body.lr.ph.i337 ], [ %dec.i339, %if.end32.i.for.body.i338_crit_edge ]
  %cur_dsd.067.i = phi ptr [ %dsd.i, %for.body.lr.ph.i337 ], [ %incdec.ptr.i63.i, %if.end32.i.for.body.i338_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %avail_dsds.068.i)
  %cmp27.i = icmp eq i16 %avail_dsds.068.i, 0
  br i1 %cmp27.i, label %if.then29.i, label %for.body.i338.if.end32.i_crit_edge

for.body.i338.if.end32.i_crit_edge:               ; preds = %for.body.i338
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

if.then29.i:                                      ; preds = %for.body.i338
  %211 = ptrtoint ptr %ring_index.i.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %ring_index.i.i, align 4
  %inc.i.i = add i16 %212, 1
  store i16 %inc.i.i, ptr %ring_index.i.i, align 4
  %213 = ptrtoint ptr %length.i61.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %length.i61.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i, i16 %214)
  %cmp.i.i = icmp eq i16 %inc.i.i, %214
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  %215 = ptrtoint ptr %ring_index.i.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 0, ptr %ring_index.i.i, align 4
  %216 = ptrtoint ptr %ring.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ring.i.i, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit.i

if.else.i.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  %218 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ring_ptr, align 4
  %incdec.ptr.i.i = getelementptr %struct.cmd_a64_entry_t, ptr %219, i32 1
  br label %qla2x00_prep_cont_type1_iocb.exit.i

qla2x00_prep_cont_type1_iocb.exit.i:              ; preds = %if.else.i.i, %if.then.i.i
  %storemerge.i = phi ptr [ %incdec.ptr.i.i, %if.else.i.i ], [ %217, %if.then.i.i ]
  %220 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %storemerge.i, ptr %ring_ptr, align 4
  %221 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %hw.i.i, align 4
  %isp_type.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %222, i32 0, i32 54
  %223 = ptrtoint ptr %isp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %isp_type.i.i, align 8
  %and7.i.i = and i32 %224, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool.not.i.i = icmp eq i32 %and7.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 167772160, i32 50331648
  %225 = ptrtoint ptr %storemerge.i to i32
  call void @__asan_storeN_noabort(i32 %225, i32 4)
  store i32 %cond.i.i, ptr %storemerge.i, align 1
  %dsd31.i = getelementptr inbounds %struct.cont_a64_entry_t, ptr %storemerge.i, i32 0, i32 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %qla2x00_prep_cont_type1_iocb.exit.i, %for.body.i338.if.end32.i_crit_edge
  %cur_dsd.1.i = phi ptr [ %dsd31.i, %qla2x00_prep_cont_type1_iocb.exit.i ], [ %cur_dsd.067.i, %for.body.i338.if.end32.i_crit_edge ]
  %avail_dsds.1.i = phi i16 [ 5, %qla2x00_prep_cont_type1_iocb.exit.i ], [ %avail_dsds.068.i, %for.body.i338.if.end32.i_crit_edge ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.069.i, i32 0, i32 3
  %226 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %dma_address.i.i, align 4
  %conv.i.i = zext i32 %227 to i64
  %228 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i) #14
  %229 = ptrtoint ptr %cur_dsd.1.i to i32
  call void @__asan_storeN_noabort(i32 %229, i32 8)
  store i64 %228, ptr %cur_dsd.1.i, align 1
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.069.i, i32 0, i32 4
  %230 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %dma_length.i.i, align 4
  %length.i62.i = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.1.i, i32 0, i32 1
  %232 = tail call i32 @llvm.bswap.i32(i32 %231) #14
  %233 = ptrtoint ptr %length.i62.i to i32
  call void @__asan_storeN_noabort(i32 %233, i32 4)
  store i32 %232, ptr %length.i62.i, align 1
  %incdec.ptr.i63.i = getelementptr %struct.dsd64, ptr %cur_dsd.1.i, i32 1
  %dec.i339 = add i16 %avail_dsds.1.i, -1
  %inc33.i = add nuw nsw i32 %i.070.i, 1
  %call34.i = tail call ptr @sg_next(ptr noundef %sg.069.i) #14
  %exitcond.not.i340 = icmp eq i32 %inc33.i, %conv23.i
  br i1 %exitcond.not.i340, label %if.end32.i.qla24xx_build_scsi_iocbs.exit_crit_edge, label %if.end32.i.for.body.i338_crit_edge

if.end32.i.for.body.i338_crit_edge:               ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i338

if.end32.i.qla24xx_build_scsi_iocbs.exit_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_build_scsi_iocbs.exit

qla24xx_build_scsi_iocbs.exit:                    ; preds = %if.end32.i.qla24xx_build_scsi_iocbs.exit_crit_edge, %if.end21.i.qla24xx_build_scsi_iocbs.exit_crit_edge, %if.then.i332
  %conv145 = trunc i16 %iocbs.0.i to i8
  %entry_count = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 1
  %234 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %conv145, ptr %entry_count, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !162
  tail call void @arm_heavy_mb() #14
  %ring_index149 = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 5
  %235 = ptrtoint ptr %ring_index149 to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %ring_index149, align 4
  %inc = add i16 %236, 1
  store i16 %inc, ptr %ring_index149, align 4
  %length152 = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 9
  %237 = ptrtoint ptr %length152 to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %length152, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %238)
  %cmp154 = icmp eq i16 %inc, %238
  br i1 %cmp154, label %if.then156, label %if.else159

if.then156:                                       ; preds = %qla24xx_build_scsi_iocbs.exit
  call void @__sanitizer_cov_trace_pc() #16
  %239 = ptrtoint ptr %ring_index149 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 0, ptr %ring_index149, align 4
  %ring = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 1
  %240 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %ring, align 4
  br label %if.end161

if.else159:                                       ; preds = %qla24xx_build_scsi_iocbs.exit
  call void @__sanitizer_cov_trace_pc() #16
  %242 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ring_ptr, align 4
  %incdec.ptr = getelementptr %struct.cmd_a64_entry_t, ptr %243, i32 1
  br label %if.end161

if.end161:                                        ; preds = %if.else159, %if.then156
  %storemerge = phi ptr [ %incdec.ptr, %if.else159 ], [ %241, %if.then156 ]
  %244 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %storemerge, ptr %ring_ptr, align 4
  %245 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %qpair, align 8
  %cmd_cnt = getelementptr inbounds %struct.qla_qpair, ptr %246, i32 0, i32 28
  %247 = ptrtoint ptr %cmd_cnt to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %cmd_cnt, align 8
  %inc163 = add i32 %248, 1
  store i32 %inc163, ptr %cmd_cnt, align 8
  %flags164 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %249 = ptrtoint ptr %flags164 to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %flags164, align 4
  %251 = or i16 %250, 1
  store i16 %251, ptr %flags164, align 4
  %req_q_in = getelementptr inbounds %struct.req_que, ptr %12, i32 0, i32 3
  %252 = ptrtoint ptr %req_q_in to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %req_q_in, align 4
  %254 = ptrtoint ptr %ring_index149 to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %ring_index149, align 4
  %conv168 = zext i16 %255 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !153
  tail call void @arm_heavy_mb() #14
  %256 = tail call i32 @llvm.bswap.i32(i32 %conv168) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %253, i32 %256) #14, !srcloc !154
  %flags169 = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 8
  %257 = ptrtoint ptr %flags169 to i32
  call void @__asan_load4_noabort(i32 %257)
  %bf.load170 = load volatile i32, ptr %flags169, align 8
  %258 = and i32 %bf.load170, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool172.not = icmp eq i32 %258, 0
  br i1 %tobool172.not, label %if.end161.if.end178_crit_edge, label %land.lhs.true173

if.end161.if.end178_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end178

land.lhs.true173:                                 ; preds = %if.end161
  %ring_ptr174 = getelementptr inbounds %struct.rsp_que, ptr %14, i32 0, i32 2
  %259 = ptrtoint ptr %ring_ptr174 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %ring_ptr174, align 4
  %signature = getelementptr inbounds %struct.response_t, ptr %260, i32 0, i32 6
  %261 = ptrtoint ptr %signature to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %signature, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559030611, i32 %262)
  %cmp175.not = icmp eq i32 %262, -559030611
  br i1 %cmp175.not, label %land.lhs.true173.if.end178_crit_edge, label %if.then177

land.lhs.true173.if.end178_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end178

if.then177:                                       ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qla24xx_process_response_queue(ptr noundef %3, ptr noundef %14) #14
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %land.lhs.true173.if.end178_crit_edge, %if.end161.if.end178_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call21) #14
  br label %cleanup

queuing_error:                                    ; preds = %if.end105.queuing_error_crit_edge, %if.else79.queuing_error_crit_edge, %qla_get_iocbs.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv42355)
  %tobool180.not = icmp eq i16 %conv42355, 0
  br i1 %tobool180.not, label %queuing_error.if.end182_crit_edge, label %if.then181

queuing_error.if.end182_crit_edge:                ; preds = %queuing_error
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

if.then181:                                       ; preds = %queuing_error
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @scsi_dma_unmap(ptr noundef %1) #14
  br label %if.end182

if.end182:                                        ; preds = %if.then181, %queuing_error.if.end182_crit_edge, %if.then31.if.end182_crit_edge, %qla2xxx_get_next_handle.exit.if.end182_crit_edge, %for.cond.i.if.end182_crit_edge, %do.body17.if.end182_crit_edge
  %iores184 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2
  %263 = ptrtoint ptr %iores184 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %iores184, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %cond.i = icmp eq i8 %264, 0
  br i1 %cond.i, label %if.end182.qla_put_iocbs.exit_crit_edge, label %sw.default.i

if.end182.qla_put_iocbs.exit_crit_edge:           ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla_put_iocbs.exit

sw.default.i:                                     ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #16
  %qpair183 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 14
  %265 = ptrtoint ptr %qpair183 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %qpair183, align 8
  %iocbs_used.i = getelementptr inbounds %struct.qla_qpair, ptr %266, i32 0, i32 27, i32 3
  %267 = ptrtoint ptr %iocbs_used.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %iocbs_used.i, align 2
  %iocb_cnt.i341 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2, i32 2
  %269 = ptrtoint ptr %iocb_cnt.i341 to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %iocb_cnt.i341, align 2
  %271 = tail call i16 @llvm.usub.sat.i16(i16 %268, i16 %270) #14
  %272 = ptrtoint ptr %iocbs_used.i to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %271, ptr %iocbs_used.i, align 2
  br label %qla_put_iocbs.exit

qla_put_iocbs.exit:                               ; preds = %sw.default.i, %if.end182.qla_put_iocbs.exit_crit_edge
  %273 = ptrtoint ptr %iores184 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 0, ptr %iores184, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call21) #14
  br label %cleanup

cleanup:                                          ; preds = %qla_put_iocbs.exit, %if.end178, %__qla2x00_marker.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 258, %qla_put_iocbs.exit ], [ 0, %if.end178 ], [ 258, %__qla2x00_marker.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla28xx_start_scsi_edif(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qla2x00_check_reg16_for_disconnect(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla24xx_process_response_queue(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_dif_start_scsi(ptr noundef %sp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %vha2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %2 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vha2, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %prot_op.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %prot_op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then:                                          ; preds = %entry
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %9)
  %cmp5 = icmp ult i16 %9, 17
  br i1 %cmp5, label %if.then7, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call i32 @qla24xx_start_scsi(ptr noundef %sp)
  br label %cleanup

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %req10 = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 54
  %10 = ptrtoint ptr %req10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req10, align 8
  %rsp11 = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %rsp11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rsp11, align 4
  %marker_needed = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 18
  %14 = ptrtoint ptr %marker_needed to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %marker_needed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp13.not = icmp eq i8 %15, 0
  br i1 %cmp13.not, label %if.end9.do.body23_crit_edge, label %if.then15

if.end9.do.body23_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body23

if.then15:                                        ; preds = %if.end9
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 34
  %16 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_qpair, align 4
  %qp_lock_ptr.i = getelementptr inbounds %struct.qla_qpair, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qp_lock_ptr.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #14
  %req1.i = getelementptr inbounds %struct.qla_qpair, ptr %17, i32 0, i32 12
  %20 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req1.i, align 4
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i, align 4
  %call2.i441 = tail call ptr @__qla2x00_alloc_iocbs(ptr noundef %17, ptr noundef null) #14
  %cmp.i442 = icmp eq ptr %call2.i441, null
  br i1 %cmp.i442, label %__qla2x00_marker.exit, label %if.end20

__qla2x00_marker.exit:                            ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %27, i32 noundef 12326, ptr noundef nonnull @.str.32) #14
  %28 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qp_lock_ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %call2.i) #14
  br label %cleanup

if.end20:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %call2.i441 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 4, ptr %call2.i441, align 4
  %modifier.i = getelementptr inbounds %struct.mrk_entry_t, ptr %call2.i441, i32 0, i32 6
  %31 = ptrtoint ptr %modifier.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %modifier.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !147
  tail call void @arm_heavy_mb() #14
  tail call void @qla2x00_start_iocbs(ptr noundef %3, ptr noundef %21) #14
  %32 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %qp_lock_ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %call2.i) #14
  %34 = ptrtoint ptr %marker_needed to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %marker_needed, align 4
  br label %do.body23

do.body23:                                        ; preds = %if.end20, %if.end9.do.body23_crit_edge
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 6
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #14
  %num_outstanding_cmds.i = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 18
  %35 = ptrtoint ptr %num_outstanding_cmds.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_outstanding_cmds.i, align 4
  %conv.i = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %36)
  %cmp17.i = icmp ugt i16 %36, 1
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %do.body23.if.end256_crit_edge

do.body23.if.end256_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end256

for.body.lr.ph.i:                                 ; preds = %do.body23
  %current_outstanding_cmd.i = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 17
  %37 = ptrtoint ptr %current_outstanding_cmd.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %current_outstanding_cmd.i, align 4
  %outstanding_cmds.i = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 16
  %39 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %outstanding_cmds.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc8.i = add nuw nsw i32 %index.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.if.end256_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.if.end256_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end256

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %handle.019.i = phi i32 [ %38, %for.body.lr.ph.i ], [ %spec.store.select.i, %for.cond.i.for.body.i_crit_edge ]
  %index.018.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc8.i, %for.cond.i.for.body.i_crit_edge ]
  %inc.i = add i32 %handle.019.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp4.i = icmp eq i32 %inc.i, %conv.i
  %spec.store.select.i = select i1 %cmp4.i, i32 1, i32 %inc.i
  %arrayidx.i = getelementptr ptr, ptr %40, i32 %spec.store.select.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %qla2xxx_get_next_handle.exit, label %for.cond.i

qla2xxx_get_next_handle.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp31 = icmp eq i32 %spec.store.select.i, 0
  br i1 %cmp31, label %qla2xxx_get_next_handle.exit.if.end256_crit_edge, label %if.end34

qla2xxx_get_next_handle.exit.if.end256_crit_edge: ; preds = %qla2xxx_get_next_handle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end256

if.end34:                                         ; preds = %qla2xxx_get_next_handle.exit
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %43 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not = icmp eq i32 %44, 0
  br i1 %tobool.not, label %if.end34.if.end65_crit_edge, label %if.then36

if.end34.if.end65_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then36:                                        ; preds = %if.end34
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %47 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sdb.i, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %49 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sc_data_direction, align 4
  %call39 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %48, i32 noundef %44, i32 noundef %50, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then36.if.end256_crit_edge, label %if.else, !prof !148

if.then36.if.end256_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end256

if.else:                                          ; preds = %if.then36
  %flags45 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %51 = ptrtoint ptr %flags45 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %flags45, align 4
  %53 = or i16 %52, 1
  store i16 %53, ptr %flags45, align 4
  %54 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %prot_op.i, align 4
  %.off = add i8 %55, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then57, label %if.else.if.end65_crit_edge

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then57:                                        ; preds = %if.else
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %56 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i487 = icmp eq i32 %57, 0
  br i1 %cmp.i487, label %if.then57.if.end65_crit_edge, label %if.end.i.lr.ph

if.then57.if.end65_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.end.i.lr.ph:                                   ; preds = %if.then57
  %58 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sdb.i, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %while.body.if.end.i_crit_edge, %if.end.i.lr.ph
  %nseg.0493 = phi i32 [ 0, %if.end.i.lr.ph ], [ %inc, %while.body.if.end.i_crit_edge ]
  %sgx.sroa.19.0491 = phi i32 [ 0, %if.end.i.lr.ph ], [ %sgx.sroa.19.1, %while.body.if.end.i_crit_edge ]
  %sgx.sroa.17.0490 = phi i32 [ 0, %if.end.i.lr.ph ], [ %sgx.sroa.17.1, %while.body.if.end.i_crit_edge ]
  %sgx.sroa.13.0489 = phi i32 [ 0, %if.end.i.lr.ph ], [ %sgx.sroa.13.1.ph, %while.body.if.end.i_crit_edge ]
  %sgx.sroa.10.0488 = phi ptr [ %59, %if.end.i.lr.ph ], [ %sgx.sroa.10.1.ph, %while.body.if.end.i_crit_edge ]
  %60 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device, align 4
  %sector_size = getelementptr inbounds %struct.scsi_device, ptr %61, i32 0, i32 20
  %62 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sector_size, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sgx.sroa.10.0488, i32 0, i32 4
  %64 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_length.i, align 4
  %sub.i = sub i32 %65, %sgx.sroa.13.0489
  %add2.i = add i32 %sub.i, %sgx.sroa.19.0491
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %63)
  %cmp3.not.i = icmp ult i32 %add2.i, %63
  %sub5.i = sub i32 %63, %sgx.sroa.19.0491
  %sgx.sroa.5.0 = select i1 %cmp3.not.i, i32 %sub.i, i32 %sub5.i
  %add8.i = select i1 %cmp3.not.i, i32 0, i32 %63
  %sgx.sroa.17.1 = add i32 %add8.i, %sgx.sroa.17.0490
  %sgx.sroa.19.1 = select i1 %cmp3.not.i, i32 %add2.i, i32 0
  %add18.i = add i32 %sgx.sroa.5.0, %sgx.sroa.13.0489
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %add18.i)
  %cmp20.i = icmp eq i32 %65, %add18.i
  br i1 %cmp20.i, label %if.then21.i, label %if.end.i.while.body_crit_edge

if.end.i.while.body_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @sg_next(ptr noundef %sgx.sroa.10.0488) #14
  br label %while.body

while.body:                                       ; preds = %if.then21.i, %if.end.i.while.body_crit_edge
  %sgx.sroa.10.1.ph = phi ptr [ %sgx.sroa.10.0488, %if.end.i.while.body_crit_edge ], [ %call.i, %if.then21.i ]
  %sgx.sroa.13.1.ph = phi i32 [ %add18.i, %if.end.i.while.body_crit_edge ], [ 0, %if.then21.i ]
  %inc = add i32 %nseg.0493, 1
  %cmp.i = icmp eq i32 %sgx.sroa.17.1, %57
  br i1 %cmp.i, label %while.body.if.end65_crit_edge, label %while.body.if.end.i_crit_edge

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

while.body.if.end65_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.end65:                                         ; preds = %while.body.if.end65_crit_edge, %if.then57.if.end65_crit_edge, %if.else.if.end65_crit_edge, %if.end34.if.end65_crit_edge
  %nseg.1 = phi i32 [ 0, %if.end34.if.end65_crit_edge ], [ %call39, %if.else.if.end65_crit_edge ], [ 0, %if.then57.if.end65_crit_edge ], [ %inc, %while.body.if.end65_crit_edge ]
  %66 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %u, align 8
  %prot_op.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %prot_op.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %prot_op.i.i, align 4
  %70 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %69, label %sw.default.i [
    i8 3, label %if.end65.sw.epilog.sink.split.i_crit_edge
    i8 4, label %if.end65.sw.epilog.i_crit_edge
    i8 1, label %if.end65.sw.epilog.i_crit_edge499
    i8 2, label %if.end65.sw.epilog.sink.split.i_crit_edge500
    i8 5, label %if.end65.sw.bb16.i_crit_edge
    i8 6, label %if.end65.sw.bb16.i_crit_edge501
  ]

if.end65.sw.bb16.i_crit_edge501:                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16.i

if.end65.sw.bb16.i_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16.i

if.end65.sw.epilog.sink.split.i_crit_edge500:     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i

if.end65.sw.epilog.i_crit_edge499:                ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end65.sw.epilog.i_crit_edge:                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end65.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i

sw.bb16.i:                                        ; preds = %if.end65.sw.bb16.i_crit_edge, %if.end65.sw.bb16.i_crit_edge501
  %prot_flags.i = getelementptr inbounds %struct.scsi_cmnd, ptr %67, i32 0, i32 12
  %71 = ptrtoint ptr %prot_flags.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %prot_flags.i, align 2
  %73 = and i8 %72, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i406 = icmp eq i8 %73, 0
  %..i = select i1 %tobool.not.i406, i16 2, i16 6
  br label %sw.epilog.sink.split.i

sw.default.i:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.default.i, %sw.bb16.i, %if.end65.sw.epilog.sink.split.i_crit_edge, %if.end65.sw.epilog.sink.split.i_crit_edge500
  %.sink.i = phi i16 [ 2, %sw.default.i ], [ 1, %if.end65.sw.epilog.sink.split.i_crit_edge ], [ 1, %if.end65.sw.epilog.sink.split.i_crit_edge500 ], [ %..i, %sw.bb16.i ]
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end65.sw.epilog.i_crit_edge, %if.end65.sw.epilog.i_crit_edge499
  %fw_prot_opts.0 = phi i16 [ %.sink.i, %sw.epilog.sink.split.i ], [ 0, %if.end65.sw.epilog.i_crit_edge ], [ 0, %if.end65.sw.epilog.i_crit_edge499 ]
  %prot_flags27.i = getelementptr inbounds %struct.scsi_cmnd, ptr %67, i32 0, i32 12
  %74 = ptrtoint ptr %prot_flags27.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %prot_flags27.i, align 2
  %76 = and i8 %75, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool30.not.i = icmp eq i8 %76, 0
  %77 = or i16 %fw_prot_opts.0, 16
  %spec.select = select i1 %tobool30.not.i, i16 %77, i16 %fw_prot_opts.0
  %prot_sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %67, i32 0, i32 18
  %78 = ptrtoint ptr %prot_sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prot_sdb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %sw.epilog.i.if.end107_crit_edge, label %qla24xx_configure_prot_mode.exit

sw.epilog.i.if.end107_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

qla24xx_configure_prot_mode.exit:                 ; preds = %sw.epilog.i
  %nents.i.i = getelementptr inbounds %struct.sg_table, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool68.not = icmp eq i32 %81, 0
  br i1 %tobool68.not, label %qla24xx_configure_prot_mode.exit.if.end107_crit_edge, label %if.then69

qla24xx_configure_prot_mode.exit.if.end107_crit_edge: ; preds = %qla24xx_configure_prot_mode.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then69:                                        ; preds = %qla24xx_configure_prot_mode.exit
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %5, align 128
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %prot_sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 18
  %84 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i407 = icmp eq ptr %85, null
  br i1 %tobool.not.i407, label %if.then69.scsi_prot_sg_count.exit_crit_edge, label %cond.true.i411

if.then69.scsi_prot_sg_count.exit_crit_edge:      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_prot_sg_count.exit

cond.true.i411:                                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #16
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %nents.i410 = getelementptr inbounds %struct.sg_table, ptr %85, i32 0, i32 1
  %88 = ptrtoint ptr %nents.i410 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nents.i410, align 4
  br label %scsi_prot_sg_count.exit

scsi_prot_sg_count.exit:                          ; preds = %cond.true.i411, %if.then69.scsi_prot_sg_count.exit_crit_edge
  %cond.i478 = phi ptr [ %87, %cond.true.i411 ], [ null, %if.then69.scsi_prot_sg_count.exit_crit_edge ]
  %cond.i412 = phi i32 [ %89, %cond.true.i411 ], [ 0, %if.then69.scsi_prot_sg_count.exit_crit_edge ]
  %sc_data_direction74 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %90 = ptrtoint ptr %sc_data_direction74 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sc_data_direction74, align 4
  %call75 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev71, ptr noundef %cond.i478, i32 noundef %cond.i412, i32 noundef %91, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %scsi_prot_sg_count.exit.if.end256_crit_edge, label %if.else86, !prof !148

scsi_prot_sg_count.exit.if.end256_crit_edge:      ; preds = %scsi_prot_sg_count.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end256

if.else86:                                        ; preds = %scsi_prot_sg_count.exit
  %flags87 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %92 = ptrtoint ptr %flags87 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %flags87, align 4
  %94 = or i16 %93, 16
  store i16 %94, ptr %flags87, align 4
  %95 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %prot_op.i, align 4
  %.off484 = add i8 %96, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off484)
  %switch485 = icmp ult i8 %.off484, 2
  br i1 %switch485, label %if.then101, label %if.else86.if.end107_crit_edge

if.else86.if.end107_crit_edge:                    ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then101:                                       ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #16
  %length.i415 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %97 = ptrtoint ptr %length.i415 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %length.i415, align 4
  %device103 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %99 = ptrtoint ptr %device103 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %device103, align 4
  %sector_size104 = getelementptr inbounds %struct.scsi_device, ptr %100, i32 0, i32 20
  %101 = ptrtoint ptr %sector_size104 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sector_size104, align 4
  %div = udiv i32 %98, %102
  br label %if.end107

if.end107:                                        ; preds = %if.then101, %if.else86.if.end107_crit_edge, %qla24xx_configure_prot_mode.exit.if.end107_crit_edge, %sw.epilog.i.if.end107_crit_edge
  %nseg.2 = phi i32 [ %div, %if.then101 ], [ 0, %qla24xx_configure_prot_mode.exit.if.end107_crit_edge ], [ 0, %sw.epilog.i.if.end107_crit_edge ], [ %call75, %if.else86.if.end107_crit_edge ]
  %conv108 = trunc i32 %nseg.2 to i16
  %add = add i32 %nseg.2, %nseg.1
  %conv110 = trunc i32 %add to i16
  %iores = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2
  %103 = ptrtoint ptr %iores to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %iores, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv110)
  %cmp.i416 = icmp ugt i16 %conv110, 1
  br i1 %cmp.i416, label %if.then.i, label %if.end107.qla24xx_calc_iocbs.exit_crit_edge

if.end107.qla24xx_calc_iocbs.exit_crit_edge:      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_calc_iocbs.exit

if.then.i:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i417 = add i16 %conv110, -1
  %sub.i417.frozen = freeze i16 %sub.i417
  %div12.i = udiv i16 %sub.i417.frozen, 5
  %104 = mul i16 %div12.i, 5
  %rem34.i.decomposed = sub i16 %sub.i417.frozen, %104
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem34.i.decomposed)
  %tobool.not.i418 = icmp eq i16 %rem34.i.decomposed, 0
  %spec.select.v.i = select i1 %tobool.not.i418, i16 1, i16 2
  %spec.select.i = add nuw nsw i16 %spec.select.v.i, %div12.i
  br label %qla24xx_calc_iocbs.exit

qla24xx_calc_iocbs.exit:                          ; preds = %if.then.i, %if.end107.qla24xx_calc_iocbs.exit_crit_edge
  %iocbs.0.i = phi i16 [ 1, %if.end107.qla24xx_calc_iocbs.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  %iocb_cnt = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2, i32 2
  %105 = ptrtoint ptr %iocb_cnt to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %iocbs.0.i, ptr %iocb_cnt, align 2
  %qpair = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 14
  %106 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %qpair, align 8
  %vha.i = getelementptr inbounds %struct.qla_qpair, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %vha.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %vha.i, align 8
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %109, i32 0, i32 52
  %110 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xenforce_iocb_limit to i32))
  %112 = load i32, ptr @ql2xenforce_iocb_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i419 = icmp eq i32 %112, 0
  br i1 %tobool.not.i419, label %if.then.i420, label %if.end.i424

if.then.i420:                                     ; preds = %qla24xx_calc_iocbs.exit
  call void @__sanitizer_cov_trace_pc() #16
  %113 = ptrtoint ptr %iores to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %iores, align 2
  br label %if.end117

if.end.i424:                                      ; preds = %qla24xx_calc_iocbs.exit
  %114 = ptrtoint ptr %iocb_cnt to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %iocb_cnt, align 2
  %conv.i421 = zext i16 %115 to i32
  %iocbs_used1.i = getelementptr inbounds %struct.qla_qpair, ptr %107, i32 0, i32 27, i32 3
  %116 = ptrtoint ptr %iocbs_used1.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %iocbs_used1.i, align 2
  %conv2.i = zext i16 %117 to i32
  %add.i422 = add nuw nsw i32 %conv2.i, %conv.i421
  %iocbs_qp_limit.i = getelementptr inbounds %struct.qla_qpair, ptr %107, i32 0, i32 27, i32 2
  %118 = ptrtoint ptr %iocbs_qp_limit.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %iocbs_qp_limit.i, align 4
  %conv4.i = zext i16 %119 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i422, i32 %conv4.i)
  %cmp.i423 = icmp ult i32 %add.i422, %conv4.i
  br i1 %cmp.i423, label %if.then6.i, label %if.else.i425

if.then6.i:                                       ; preds = %if.end.i424
  call void @__sanitizer_cov_trace_pc() #16
  %conv13.i = trunc i32 %add.i422 to i16
  %120 = ptrtoint ptr %iocbs_used1.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv13.i, ptr %iocbs_used1.i, align 2
  br label %if.end117

if.else.i425:                                     ; preds = %if.end.i424
  %base_qpair.i = getelementptr inbounds %struct.qla_hw_data, ptr %111, i32 0, i32 34
  %121 = ptrtoint ptr %base_qpair.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base_qpair.i, align 4
  %iocbs_used15.i = getelementptr inbounds %struct.qla_qpair, ptr %122, i32 0, i32 27, i32 3
  %123 = ptrtoint ptr %iocbs_used15.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %iocbs_used15.i, align 2
  %max_qpairs.i = getelementptr inbounds %struct.qla_hw_data, ptr %111, i32 0, i32 32
  %125 = ptrtoint ptr %max_qpairs.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %max_qpairs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cmp1869.not.i = icmp eq i8 %126, 0
  br i1 %cmp1869.not.i, label %if.else.i425.for.end.i_crit_edge, label %for.body.lr.ph.i426

if.else.i425.for.end.i_crit_edge:                 ; preds = %if.else.i425
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i426:                              ; preds = %if.else.i425
  %queue_pair_map.i = getelementptr inbounds %struct.qla_hw_data, ptr %111, i32 0, i32 26
  %127 = ptrtoint ptr %queue_pair_map.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %queue_pair_map.i, align 4
  %wide.trip.count.i = zext i8 %126 to i32
  br label %for.body.i428

for.body.i428:                                    ; preds = %for.inc.i.for.body.i428_crit_edge, %for.body.lr.ph.i426
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i426 ], [ %indvars.iv.next.i, %for.inc.i.for.body.i428_crit_edge ]
  %iocbs_used.070.i = phi i16 [ %124, %for.body.lr.ph.i426 ], [ %iocbs_used.1.i, %for.inc.i.for.body.i428_crit_edge ]
  %arrayidx.i427 = getelementptr ptr, ptr %128, i32 %indvars.iv.i
  %129 = ptrtoint ptr %arrayidx.i427 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i427, align 4
  %tobool20.not.i = icmp eq ptr %130, null
  br i1 %tobool20.not.i, label %for.body.i428.for.inc.i_crit_edge, label %if.then21.i429

for.body.i428.for.inc.i_crit_edge:                ; preds = %for.body.i428
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then21.i429:                                   ; preds = %for.body.i428
  call void @__sanitizer_cov_trace_pc() #16
  %iocbs_used26.i = getelementptr inbounds %struct.qla_qpair, ptr %130, i32 0, i32 27, i32 3
  %131 = ptrtoint ptr %iocbs_used26.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %iocbs_used26.i, align 2
  %add29.i = add i16 %132, %iocbs_used.070.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then21.i429, %for.body.i428.for.inc.i_crit_edge
  %iocbs_used.1.i = phi i16 [ %add29.i, %if.then21.i429 ], [ %iocbs_used.070.i, %for.body.i428.for.inc.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i430 = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i430, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i428_crit_edge

for.inc.i.for.body.i428_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i428

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.else.i425.for.end.i_crit_edge
  %iocbs_used.0.lcssa.i = phi i16 [ %124, %if.else.i425.for.end.i_crit_edge ], [ %iocbs_used.1.i, %for.inc.i.for.end.i_crit_edge ]
  %conv34.i = zext i16 %iocbs_used.0.lcssa.i to i32
  %add35.i = add nuw nsw i32 %conv34.i, %conv.i421
  %iocbs_limit.i = getelementptr inbounds %struct.qla_qpair, ptr %107, i32 0, i32 27, i32 1
  %133 = ptrtoint ptr %iocbs_limit.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %iocbs_limit.i, align 2
  %conv37.i = zext i16 %134 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add35.i, i32 %conv37.i)
  %cmp38.i = icmp ult i32 %add35.i, %conv37.i
  br i1 %cmp38.i, label %if.then40.i, label %qla_get_iocbs.exit

if.then40.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %add46.i = add i16 %117, %115
  %135 = ptrtoint ptr %iocbs_used1.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %add46.i, ptr %iocbs_used1.i, align 2
  br label %if.end117

qla_get_iocbs.exit:                               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %136 = ptrtoint ptr %iores to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %iores, align 2
  br label %if.end256

if.end117:                                        ; preds = %if.then40.i, %if.then6.i, %if.then.i420
  %cnt118 = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 8
  %137 = ptrtoint ptr %cnt118 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %cnt118, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %138)
  %cmp122 = icmp ult i16 %138, 3
  br i1 %cmp122, label %if.then124, label %if.end117.if.end183_crit_edge

if.end117.if.end183_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end183

if.then124:                                       ; preds = %if.end117
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 54
  %139 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %isp_type, align 8
  %141 = and i32 %140, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %if.else148, label %if.then147

if.then147:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #16
  %out_ptr = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 7
  %143 = ptrtoint ptr %out_ptr to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %out_ptr, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %144, align 2
  br label %if.end154

if.else148:                                       ; preds = %if.then124
  %req_q_out = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 4
  %147 = ptrtoint ptr %req_q_out to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %req_q_out, align 4
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #14, !srcloc !155
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #14
  %conv150 = trunc i32 %150 to i16
  %call151 = tail call zeroext i1 @qla2x00_check_reg16_for_disconnect(ptr noundef %3, i16 noundef zeroext %conv150) #14
  br i1 %call151, label %if.else148.if.end256_crit_edge, label %if.else148.if.end154_crit_edge

if.else148.if.end154_crit_edge:                   ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154

if.else148.if.end256_crit_edge:                   ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end256

if.end154:                                        ; preds = %if.else148.if.end154_crit_edge, %if.then147
  %cnt.0 = phi i16 [ %146, %if.then147 ], [ %conv150, %if.else148.if.end154_crit_edge ]
  %ring_index = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 5
  %151 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %ring_index, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %cnt.0, i16 %152)
  %cmp157 = icmp ugt i16 %cnt.0, %152
  br i1 %cmp157, label %if.then159, label %if.else165

if.then159:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i16 %cnt.0, %152
  br label %if.end174

if.else165:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #16
  %length = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 9
  %153 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %length, align 2
  %sub170.neg = sub i16 %cnt.0, %152
  %sub171 = add i16 %sub170.neg, %154
  br label %if.end174

if.end174:                                        ; preds = %if.else165, %if.then159
  %storemerge396 = phi i16 [ %sub171, %if.else165 ], [ %sub, %if.then159 ]
  %155 = ptrtoint ptr %cnt118 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %storemerge396, ptr %cnt118, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %storemerge396)
  %cmp179 = icmp ult i16 %storemerge396, 3
  br i1 %cmp179, label %if.end174.if.end256_crit_edge, label %if.end174.if.end183_crit_edge

if.end174.if.end183_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end183

if.end174.if.end256_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end256

if.end183:                                        ; preds = %if.end174.if.end183_crit_edge, %if.end117.if.end183_crit_edge
  %156 = ptrtoint ptr %current_outstanding_cmd.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %spec.store.select.i, ptr %current_outstanding_cmd.i, align 4
  %157 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %outstanding_cmds.i, align 4
  %arrayidx = getelementptr ptr, ptr %158, i32 %spec.store.select.i
  %159 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %sp, ptr %arrayidx, align 4
  %handle185 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %160 = ptrtoint ptr %handle185 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %spec.store.select.i, ptr %handle185, align 8
  %161 = inttoptr i32 %spec.store.select.i to ptr
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 23
  %162 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %161, ptr %host_scribble, align 4
  %163 = ptrtoint ptr %cnt118 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %cnt118, align 4
  %sub189 = add i16 %164, -1
  store i16 %sub189, ptr %cnt118, align 4
  %ring_ptr = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 2
  %165 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ring_ptr, align 4
  %id = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 12
  %167 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %id, align 4
  %conv.i432 = zext i16 %168 to i32
  %shl.i = shl nuw i32 %conv.i432, 16
  %conv1.i = and i32 %spec.store.select.i, 65535
  %or.i = or i32 %shl.i, %conv1.i
  %handle193 = getelementptr inbounds %struct.cmd_type_crc_2, ptr %166, i32 0, i32 4
  %169 = ptrtoint ptr %handle193 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %or.i, ptr %handle193, align 4
  %add.ptr = getelementptr i32, ptr %166, i32 2
  %170 = call ptr @memset(ptr %add.ptr, i32 0, i32 56)
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %171 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %fcport, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %172, i32 0, i32 7
  %173 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %loop_id, align 4
  %175 = tail call i16 @llvm.bswap.i16(i16 %174)
  %176 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %175, ptr %add.ptr, align 4
  %177 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %fcport, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %178, i32 0, i32 6
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %179 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %al_pa, align 2
  %port_id = getelementptr inbounds %struct.cmd_type_crc_2, ptr %166, i32 0, i32 15
  %181 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %port_id, align 4
  %182 = load ptr, ptr %fcport, align 4
  %d_id197 = getelementptr inbounds %struct.fc_port, ptr %182, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id197, i32 0, i32 1
  %183 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %area, align 1
  %arrayidx199 = getelementptr %struct.cmd_type_crc_2, ptr %166, i32 0, i32 15, i32 1
  %185 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %arrayidx199, align 1
  %186 = load ptr, ptr %fcport, align 4
  %d_id201 = getelementptr inbounds %struct.fc_port, ptr %186, i32 0, i32 6
  %187 = ptrtoint ptr %d_id201 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %d_id201, align 8
  %arrayidx203 = getelementptr %struct.cmd_type_crc_2, ptr %166, i32 0, i32 15, i32 2
  %189 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %arrayidx203, align 2
  %device204 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %190 = ptrtoint ptr %device204 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %device204, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %191, i32 0, i32 18
  %192 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %lun, align 8
  %lun205 = getelementptr inbounds %struct.cmd_type_crc_2, ptr %166, i32 0, i32 9
  tail call void @int_to_scsilun(i64 noundef %193, ptr noundef %lun205) #14
  %incdec.ptr1.i = getelementptr %struct.cmd_type_crc_2, ptr %166, i32 0, i32 9, i32 0, i32 4
  %194 = ptrtoint ptr %lun205 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %lun205, align 4
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #14
  %197 = ptrtoint ptr %lun205 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %lun205, align 4
  %198 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %incdec.ptr1.i, align 4
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #14
  %201 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %incdec.ptr1.i, align 4
  %202 = tail call i16 @llvm.bswap.i16(i16 %conv110)
  %dseg_count = getelementptr inbounds %struct.cmd_type_crc_2, ptr %166, i32 0, i32 7
  %203 = ptrtoint ptr %dseg_count to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %202, ptr %dseg_count, align 4
  %204 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ring_ptr, align 4
  %call209 = tail call fastcc i32 @qla24xx_build_scsi_crc_2_iocbs(ptr noundef %sp, ptr noundef %205, i16 noundef zeroext %conv110, i16 noundef zeroext %conv108, i16 noundef zeroext %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %cmp210.not = icmp eq i32 %call209, 0
  br i1 %cmp210.not, label %if.end213, label %if.then248

if.end213:                                        ; preds = %if.end183
  %entry_count = getelementptr inbounds %struct.cmd_type_crc_2, ptr %166, i32 0, i32 1
  %206 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %entry_count, align 1
  %id215 = getelementptr inbounds %struct.rsp_que, ptr %13, i32 0, i32 11
  %207 = ptrtoint ptr %id215 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %id215, align 2
  %conv216 = trunc i16 %208 to i8
  %entry_status = getelementptr inbounds %struct.cmd_type_crc_2, ptr %166, i32 0, i32 3
  %209 = ptrtoint ptr %entry_status to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %conv216, ptr %entry_status, align 1
  %timeout = getelementptr inbounds %struct.cmd_type_crc_2, ptr %166, i32 0, i32 6
  %210 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 0, ptr %timeout, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !163
  tail call void @arm_heavy_mb() #14
  %ring_index220 = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 5
  %211 = ptrtoint ptr %ring_index220 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %ring_index220, align 4
  %inc221 = add i16 %212, 1
  store i16 %inc221, ptr %ring_index220, align 4
  %length224 = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 9
  %213 = ptrtoint ptr %length224 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %length224, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc221, i16 %214)
  %cmp226 = icmp eq i16 %inc221, %214
  br i1 %cmp226, label %if.then228, label %if.else231

if.then228:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #16
  %215 = ptrtoint ptr %ring_index220 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 0, ptr %ring_index220, align 4
  %ring = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 1
  %216 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ring, align 4
  br label %if.end233

if.else231:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #16
  %218 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ring_ptr, align 4
  %incdec.ptr = getelementptr %struct.cmd_a64_entry_t, ptr %219, i32 1
  br label %if.end233

if.end233:                                        ; preds = %if.else231, %if.then228
  %storemerge = phi ptr [ %incdec.ptr, %if.else231 ], [ %217, %if.then228 ]
  %220 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %storemerge, ptr %ring_ptr, align 4
  %221 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %qpair, align 8
  %cmd_cnt = getelementptr inbounds %struct.qla_qpair, ptr %222, i32 0, i32 28
  %223 = ptrtoint ptr %cmd_cnt to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %cmd_cnt, align 8
  %inc235 = add i32 %224, 1
  store i32 %inc235, ptr %cmd_cnt, align 8
  %req_q_in = getelementptr inbounds %struct.req_que, ptr %11, i32 0, i32 3
  %225 = ptrtoint ptr %req_q_in to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %req_q_in, align 4
  %227 = ptrtoint ptr %ring_index220 to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %ring_index220, align 4
  %conv237 = zext i16 %228 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !153
  tail call void @arm_heavy_mb() #14
  %229 = tail call i32 @llvm.bswap.i32(i32 %conv237) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %226, i32 %229) #14, !srcloc !154
  %flags238 = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 8
  %230 = ptrtoint ptr %flags238 to i32
  call void @__asan_load4_noabort(i32 %230)
  %bf.load = load volatile i32, ptr %flags238, align 8
  %231 = and i32 %bf.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool239.not = icmp eq i32 %231, 0
  br i1 %tobool239.not, label %if.end233.if.end244_crit_edge, label %land.lhs.true

if.end233.if.end244_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end244

land.lhs.true:                                    ; preds = %if.end233
  %ring_ptr240 = getelementptr inbounds %struct.rsp_que, ptr %13, i32 0, i32 2
  %232 = ptrtoint ptr %ring_ptr240 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ring_ptr240, align 4
  %signature = getelementptr inbounds %struct.response_t, ptr %233, i32 0, i32 6
  %234 = ptrtoint ptr %signature to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %signature, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559030611, i32 %235)
  %cmp241.not = icmp eq i32 %235, -559030611
  br i1 %cmp241.not, label %land.lhs.true.if.end244_crit_edge, label %if.then243

land.lhs.true.if.end244_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end244

if.then243:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qla24xx_process_response_queue(ptr noundef %3, ptr noundef %13) #14
  br label %if.end244

if.end244:                                        ; preds = %if.then243, %land.lhs.true.if.end244_crit_edge, %if.end233.if.end244_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call27) #14
  br label %cleanup

if.then248:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #16
  %236 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %outstanding_cmds.i, align 4
  %arrayidx250 = getelementptr ptr, ptr %237, i32 %spec.store.select.i
  %238 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr null, ptr %arrayidx250, align 4
  %239 = ptrtoint ptr %cnt118 to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %cnt118, align 4
  %add254 = add i16 %240, 1
  store i16 %add254, ptr %cnt118, align 4
  br label %if.end256

if.end256:                                        ; preds = %if.then248, %if.end174.if.end256_crit_edge, %if.else148.if.end256_crit_edge, %qla_get_iocbs.exit, %scsi_prot_sg_count.exit.if.end256_crit_edge, %if.then36.if.end256_crit_edge, %qla2xxx_get_next_handle.exit.if.end256_crit_edge, %for.cond.i.if.end256_crit_edge, %do.body23.if.end256_crit_edge
  %iores258 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2
  %241 = ptrtoint ptr %iores258 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %iores258, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %cond.i436 = icmp eq i8 %242, 0
  br i1 %cond.i436, label %if.end256.qla_put_iocbs.exit_crit_edge, label %sw.default.i438

if.end256.qla_put_iocbs.exit_crit_edge:           ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla_put_iocbs.exit

sw.default.i438:                                  ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #16
  %qpair257 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 14
  %243 = ptrtoint ptr %qpair257 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %qpair257, align 8
  %iocbs_used.i = getelementptr inbounds %struct.qla_qpair, ptr %244, i32 0, i32 27, i32 3
  %245 = ptrtoint ptr %iocbs_used.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %iocbs_used.i, align 2
  %iocb_cnt.i437 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2, i32 2
  %247 = ptrtoint ptr %iocb_cnt.i437 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %iocb_cnt.i437, align 2
  %249 = tail call i16 @llvm.usub.sat.i16(i16 %246, i16 %248) #14
  %250 = ptrtoint ptr %iocbs_used.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %249, ptr %iocbs_used.i, align 2
  br label %qla_put_iocbs.exit

qla_put_iocbs.exit:                               ; preds = %sw.default.i438, %if.end256.qla_put_iocbs.exit_crit_edge
  %251 = ptrtoint ptr %iores258 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 0, ptr %iores258, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call27) #14
  br label %cleanup

cleanup:                                          ; preds = %qla_put_iocbs.exit, %if.end244, %__qla2x00_marker.exit, %if.then7
  %retval.0 = phi i32 [ %call8, %if.then7 ], [ 258, %qla_put_iocbs.exit ], [ 0, %if.end244 ], [ 258, %__qla2x00_marker.exit ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla24xx_build_scsi_crc_2_iocbs(ptr noundef %sp, ptr nocapture noundef %cmd_pkt, i16 noundef zeroext %tot_dsds, i16 noundef zeroext %tot_prot_dsds, i16 noundef zeroext %fw_prot_opts) unnamed_addr #8 align 64 {
entry:
  %crc_ctx_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc_ctx_dma) #14
  %0 = ptrtoint ptr %crc_ctx_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %crc_ctx_dma, align 4, !annotation !164
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %1 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %u, align 8
  %3 = ptrtoint ptr %cmd_pkt to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 1778384896, ptr %cmd_pkt, align 1
  %vha2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %4 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vha2, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 52
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %2, i32 0, i32 17, i32 1
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %2, i32 0, i32 15
  %10 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp = icmp eq i32 %11, 3
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %byte_count = getelementptr inbounds %struct.cmd_type_crc_2, ptr %cmd_pkt, i32 0, i32 14
  %12 = ptrtoint ptr %byte_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %byte_count, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 46
  %13 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vp_idx, align 8
  %conv = trunc i16 %14 to i8
  %vp_index = getelementptr inbounds %struct.cmd_type_crc_2, ptr %cmd_pkt, i32 0, i32 16
  %15 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %vp_index, align 1
  %16 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sc_data_direction, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %17, label %if.end.if.end14_crit_edge [
    i32 1, label %if.end.if.end14.sink.split_crit_edge
    i32 2, label %if.then11
  ]

if.end.if.end14.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.sink.split

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then11, %if.end.if.end14.sink.split_crit_edge
  %.sink = phi i16 [ 512, %if.then11 ], [ 256, %if.end.if.end14.sink.split_crit_edge ]
  %control_flags12 = getelementptr inbounds %struct.cmd_type_crc_2, ptr %cmd_pkt, i32 0, i32 10
  %19 = ptrtoint ptr %control_flags12 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %.sink, ptr %control_flags12, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.end.if.end14_crit_edge
  %prot_op.i = getelementptr inbounds %struct.scsi_cmnd, ptr %2, i32 0, i32 10
  %20 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %prot_op.i, align 4
  %.off = add i8 %21, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off)
  %switch = icmp ult i8 %.off, 4
  %dl_dma_pool = getelementptr inbounds %struct.qla_hw_data, ptr %7, i32 0, i32 239
  %22 = ptrtoint ptr %dl_dma_pool to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dl_dma_pool, align 16
  %call.i = call ptr @dma_pool_alloc(ptr noundef %23, i32 noundef 2848, ptr noundef nonnull %crc_ctx_dma) #14
  %crc_ctx = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %crc_ctx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %crc_ctx, align 4
  %tobool38.not = icmp eq ptr %call.i, null
  br i1 %tobool38.not, label %if.end14.crc_queuing_error_crit_edge, label %if.end40

if.end14.crc_queuing_error_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %crc_queuing_error

if.end40:                                         ; preds = %if.end14
  %25 = ptrtoint ptr %crc_ctx_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %crc_ctx_dma, align 4
  %crc_ctx_dma41 = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 12
  %27 = ptrtoint ptr %crc_ctx_dma41 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %crc_ctx_dma41, align 4
  %flags = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags, align 4
  %30 = or i16 %29, 4
  store i16 %30, ptr %flags, align 4
  %handle = getelementptr inbounds %struct.cmd_type_crc_2, ptr %cmd_pkt, i32 0, i32 4
  %31 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %handle, align 4
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %call.i, align 4
  %dsd_list = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 13
  %34 = ptrtoint ptr %dsd_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %dsd_list, ptr %dsd_list, align 4
  %prev.i = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 13, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dsd_list, ptr %prev.i, align 4
  %ref_tag = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %u, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 -192
  %38 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i.i, label %if.end40.scsi_prot_ref_tag.exit.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end40.scsi_prot_ref_tag.exit.i_crit_edge:      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_prot_ref_tag.exit.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %logical_block_size.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %39, i32 0, i32 37, i32 9
  %40 = ptrtoint ptr %logical_block_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %logical_block_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool2.not.i.i.i.i = icmp eq i32 %41, 0
  %spec.select.i.i.i.i = select i1 %tobool2.not.i.i.i.i, i32 512, i32 %41
  br label %scsi_prot_ref_tag.exit.i

scsi_prot_ref_tag.exit.i:                         ; preds = %land.lhs.true.i.i.i.i, %if.end40.scsi_prot_ref_tag.exit.i_crit_edge
  %retval1.0.i.i.i.i = phi i32 [ 512, %if.end40.scsi_prot_ref_tag.exit.i_crit_edge ], [ %spec.select.i.i.i.i, %land.lhs.true.i.i.i.i ]
  %42 = call i32 @llvm.ctlz.i32(i32 %retval1.0.i.i.i.i, i1 false) #14, !range !165
  %sub.i.i.i.i = sub nsw i32 31, %42
  %interval_exp.i.i.i = getelementptr inbounds %struct.request_queue, ptr %39, i32 0, i32 18, i32 3
  %43 = ptrtoint ptr %interval_exp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %interval_exp.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i.i.i = icmp eq i8 %44, 0
  %conv.i.i.i = zext i8 %44 to i32
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 %sub.i.i.i.i, i32 %conv.i.i.i
  %__sector.i.i.i.i = getelementptr i8, ptr %37, i32 -152
  %45 = ptrtoint ptr %__sector.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %__sector.i.i.i.i, align 8
  %sub.i.i.i = add nsw i32 %spec.select.i.i.i, -9
  %sh_prom.i.i.i = zext i32 %sub.i.i.i to i64
  %shr.i.i.i = lshr i64 %46, %sh_prom.i.i.i
  %conv7.i.i.i = trunc i64 %shr.i.i.i to i32
  %47 = call i32 @llvm.bswap.i32(i32 %conv7.i.i.i) #14
  %48 = ptrtoint ptr %ref_tag to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %ref_tag, align 4
  %prot_flags.i = getelementptr inbounds %struct.scsi_cmnd, ptr %37, i32 0, i32 12
  %49 = ptrtoint ptr %prot_flags.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %prot_flags.i, align 2
  %51 = and i8 %50, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i, label %scsi_prot_ref_tag.exit.i.qla24xx_set_t10dif_tags.exit_crit_edge, label %land.lhs.true.i

scsi_prot_ref_tag.exit.i.qla24xx_set_t10dif_tags.exit_crit_edge: ; preds = %scsi_prot_ref_tag.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_set_t10dif_tags.exit

land.lhs.true.i:                                  ; preds = %scsi_prot_ref_tag.exit.i
  %52 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %u, align 8
  %prot_op.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %prot_op.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %prot_op.i.i.i, align 4
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %55, label %land.lhs.true.i.qla24xx_set_t10dif_tags.exit_crit_edge [
    i8 3, label %land.lhs.true.i.sw.bb.i.i_crit_edge
    i8 4, label %land.lhs.true.i.sw.bb.i.i_crit_edge371
    i8 5, label %land.lhs.true.i.sw.bb2.i.i_crit_edge
    i8 6, label %land.lhs.true.i.sw.bb2.i.i_crit_edge372
    i8 1, label %land.lhs.true.i.if.then.i_crit_edge
    i8 2, label %land.lhs.true.i.if.then.i_crit_edge373
  ]

land.lhs.true.i.if.then.i_crit_edge373:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

land.lhs.true.i.sw.bb2.i.i_crit_edge372:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i.i

land.lhs.true.i.sw.bb2.i.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i.i

land.lhs.true.i.sw.bb.i.i_crit_edge371:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

land.lhs.true.i.sw.bb.i.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

land.lhs.true.i.qla24xx_set_t10dif_tags.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_set_t10dif_tags.exit

sw.bb.i.i:                                        ; preds = %land.lhs.true.i.sw.bb.i.i_crit_edge, %land.lhs.true.i.sw.bb.i.i_crit_edge371
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xenablehba_err_chk to i32))
  %57 = load i32, ptr @ql2xenablehba_err_chk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i = icmp sgt i32 %57, 0
  br i1 %cmp.i.i, label %sw.bb.i.i.if.then.i_crit_edge, label %sw.bb.i.i.qla24xx_set_t10dif_tags.exit_crit_edge

sw.bb.i.i.qla24xx_set_t10dif_tags.exit_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_set_t10dif_tags.exit

sw.bb.i.i.if.then.i_crit_edge:                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

sw.bb2.i.i:                                       ; preds = %land.lhs.true.i.sw.bb2.i.i_crit_edge, %land.lhs.true.i.sw.bb2.i.i_crit_edge372
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xenablehba_err_chk to i32))
  %58 = load i32, ptr @ql2xenablehba_err_chk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp3.i.i = icmp sgt i32 %58, 1
  br i1 %cmp3.i.i, label %sw.bb2.i.i.if.then.i_crit_edge, label %sw.bb2.i.i.qla24xx_set_t10dif_tags.exit_crit_edge

sw.bb2.i.i.qla24xx_set_t10dif_tags.exit_crit_edge: ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_set_t10dif_tags.exit

sw.bb2.i.i.if.then.i_crit_edge:                   ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %sw.bb2.i.i.if.then.i_crit_edge, %sw.bb.i.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge373
  %ref_tag_mask.i = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 3
  %59 = ptrtoint ptr %ref_tag_mask.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 -1, ptr %ref_tag_mask.i, align 2
  br label %qla24xx_set_t10dif_tags.exit

qla24xx_set_t10dif_tags.exit:                     ; preds = %if.then.i, %sw.bb2.i.i.qla24xx_set_t10dif_tags.exit_crit_edge, %sw.bb.i.i.qla24xx_set_t10dif_tags.exit_crit_edge, %land.lhs.true.i.qla24xx_set_t10dif_tags.exit_crit_edge, %scsi_prot_ref_tag.exit.i.qla24xx_set_t10dif_tags.exit_crit_edge
  %app_tag.i = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 2
  %60 = ptrtoint ptr %app_tag.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %app_tag.i, align 4
  %app_tag_mask.i = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 4
  %61 = ptrtoint ptr %app_tag_mask.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %app_tag_mask.i, align 2
  %arrayidx12.i = getelementptr %struct.crc_context, ptr %call.i, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx12.i, align 1
  %63 = ptrtoint ptr %crc_ctx_dma to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %crc_ctx_dma, align 4
  %conv46 = zext i32 %64 to i64
  %crc_context_address = getelementptr inbounds %struct.cmd_type_crc_2, ptr %cmd_pkt, i32 0, i32 17
  %65 = call i64 @llvm.bswap.i64(i64 %conv46) #14
  %66 = ptrtoint ptr %crc_context_address to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %65, ptr %crc_context_address, align 1
  %crc_context_len = getelementptr inbounds %struct.cmd_type_crc_2, ptr %cmd_pkt, i32 0, i32 18
  %67 = ptrtoint ptr %crc_context_len to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 16384, ptr %crc_context_len, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %2, i32 0, i32 14
  %68 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %69)
  %cmp48 = icmp ugt i16 %69, 16
  br i1 %cmp48, label %if.then50, label %qla24xx_set_t10dif_tags.exit.if.end65_crit_edge

qla24xx_set_t10dif_tags.exit.if.end65_crit_edge:  ; preds = %qla24xx_set_t10dif_tags.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then50:                                        ; preds = %qla24xx_set_t10dif_tags.exit
  %70 = and i16 %69, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp56.not = icmp eq i16 %70, 0
  br i1 %cmp56.not, label %if.end59, label %if.then50.crc_queuing_error_crit_edge

if.then50.crc_queuing_error_crit_edge:            ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %crc_queuing_error

if.end59:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  %71 = trunc i16 %69 to i8
  %conv53 = add i8 %71, -16
  %add62 = add i16 %69, 16
  br label %if.end65

if.end65:                                         ; preds = %if.end59, %qla24xx_set_t10dif_tags.exit.if.end65_crit_edge
  %additional_fcpcdb_len.0 = phi i8 [ %conv53, %if.end59 ], [ 0, %qla24xx_set_t10dif_tags.exit.if.end65_crit_edge ]
  %fcp_cmnd_len.0 = phi i16 [ %add62, %if.end59 ], [ 32, %qla24xx_set_t10dif_tags.exit.if.end65_crit_edge ]
  %fcp_cmnd66 = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 11
  %additional_cdb_len = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 11, i32 4
  %72 = ptrtoint ptr %additional_cdb_len to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %additional_fcpcdb_len.0, ptr %additional_cdb_len, align 1
  %73 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sc_data_direction, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %74, label %if.end65.if.end85_crit_edge [
    i32 1, label %if.end65.if.end85.sink.split_crit_edge
    i32 2, label %if.then79
  ]

if.end65.if.end85.sink.split_crit_edge:           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85.sink.split

if.end65.if.end85_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then79:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85.sink.split

if.end85.sink.split:                              ; preds = %if.then79, %if.end65.if.end85.sink.split_crit_edge
  %.sink370 = phi i8 [ 2, %if.then79 ], [ 1, %if.end65.if.end85.sink.split_crit_edge ]
  %76 = or i8 %additional_fcpcdb_len.0, %.sink370
  %77 = ptrtoint ptr %additional_cdb_len to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %additional_cdb_len, align 1
  br label %if.end85

if.end85:                                         ; preds = %if.end85.sink.split, %if.end65.if.end85_crit_edge
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %2, i32 0, i32 1
  %78 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %79, i32 0, i32 18
  %80 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %lun, align 8
  call void @int_to_scsilun(i64 noundef %81, ptr noundef %fcp_cmnd66) #14
  %cdb = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 11, i32 5
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %2, i32 0, i32 16
  %82 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cmnd, align 4
  %84 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %cmd_len, align 4
  %conv88 = zext i16 %85 to i32
  %86 = call ptr @memcpy(ptr %cdb, ptr %83, i32 %conv88)
  %87 = call i16 @llvm.bswap.i16(i16 %fcp_cmnd_len.0)
  %fcp_cmnd_dseg_len = getelementptr inbounds %struct.cmd_type_crc_2, ptr %cmd_pkt, i32 0, i32 11
  %88 = ptrtoint ptr %fcp_cmnd_dseg_len to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %fcp_cmnd_dseg_len, align 2
  %89 = ptrtoint ptr %crc_ctx_dma to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %crc_ctx_dma, align 4
  %add89 = add i32 %90, 64
  %conv90 = zext i32 %add89 to i64
  %fcp_cmnd_dseg_address = getelementptr inbounds %struct.cmd_type_crc_2, ptr %cmd_pkt, i32 0, i32 12
  %91 = call i64 @llvm.bswap.i64(i64 %conv90) #14
  %92 = ptrtoint ptr %fcp_cmnd_dseg_address to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 %91, ptr %fcp_cmnd_dseg_address, align 1
  %task_management = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 11, i32 3
  %93 = ptrtoint ptr %task_management to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %task_management, align 1
  %task_attribute = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 11, i32 2
  %94 = ptrtoint ptr %task_attribute to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %task_attribute, align 1
  %fcp_rsp_dseg_len = getelementptr inbounds %struct.cmd_type_crc_2, ptr %cmd_pkt, i32 0, i32 8
  %95 = ptrtoint ptr %fcp_rsp_dseg_len to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %fcp_rsp_dseg_len, align 2
  %96 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %device, align 4
  %sector_size = getelementptr inbounds %struct.scsi_device, ptr %97, i32 0, i32 20
  %98 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sector_size, align 4
  %conv92 = trunc i32 %99 to i16
  %conv93 = and i32 %99, 65535
  %div = udiv i32 %9, %conv93
  %mul = shl i32 %div, 3
  %100 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %u, align 8
  %prot_op.i360 = getelementptr inbounds %struct.scsi_cmnd, ptr %101, i32 0, i32 10
  %102 = ptrtoint ptr %prot_op.i360 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %prot_op.i360, align 4
  %104 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %103, label %do.body [
    i8 1, label %if.end85.sw.bb_crit_edge
    i8 2, label %if.end85.sw.bb_crit_edge374
    i8 3, label %if.end85.sw.bb99_crit_edge
    i8 4, label %if.end85.sw.bb99_crit_edge375
    i8 5, label %if.end85.sw.bb99_crit_edge376
    i8 6, label %if.end85.sw.bb99_crit_edge377
  ]

if.end85.sw.bb99_crit_edge377:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb99

if.end85.sw.bb99_crit_edge376:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb99

if.end85.sw.bb99_crit_edge375:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb99

if.end85.sw.bb99_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb99

if.end85.sw.bb_crit_edge374:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end85.sw.bb_crit_edge:                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.bb:                                            ; preds = %if.end85.sw.bb_crit_edge, %if.end85.sw.bb_crit_edge374
  %add98 = add i32 %mul, %9
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end85.sw.bb99_crit_edge, %if.end85.sw.bb99_crit_edge375, %if.end85.sw.bb99_crit_edge376, %if.end85.sw.bb99_crit_edge377
  %add100 = add i32 %mul, %9
  br label %sw.epilog

do.body:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/qla2xxx/qla_iocb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1459, 0\0A.popsection", ""() #14, !srcloc !166
  unreachable

sw.epilog:                                        ; preds = %sw.bb99, %sw.bb
  %total_bytes.0 = phi i32 [ %add100, %sw.bb99 ], [ %9, %sw.bb ]
  %data_bytes.0 = phi i32 [ %9, %sw.bb99 ], [ %add98, %sw.bb ]
  %105 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %103, label %sw.epilog.if.then106_crit_edge [
    i8 3, label %sw.epilog.sw.bb.i_crit_edge
    i8 4, label %sw.epilog.sw.bb.i_crit_edge378
    i8 5, label %sw.epilog.sw.bb2.i_crit_edge
    i8 6, label %sw.epilog.sw.bb2.i_crit_edge379
    i8 1, label %sw.epilog.if.else110_crit_edge
    i8 2, label %sw.epilog.if.else110_crit_edge380
  ]

sw.epilog.if.else110_crit_edge380:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else110

sw.epilog.if.else110_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else110

sw.epilog.sw.bb2.i_crit_edge379:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i

sw.epilog.sw.bb2.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i

sw.epilog.sw.bb.i_crit_edge378:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

sw.epilog.sw.bb.i_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

sw.epilog.if.then106_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then106

sw.bb.i:                                          ; preds = %sw.epilog.sw.bb.i_crit_edge, %sw.epilog.sw.bb.i_crit_edge378
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xenablehba_err_chk to i32))
  %106 = load i32, ptr @ql2xenablehba_err_chk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp.i = icmp sgt i32 %106, 0
  br i1 %cmp.i, label %sw.bb.i.if.else110_crit_edge, label %sw.bb.i.if.then106_crit_edge

sw.bb.i.if.then106_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then106

sw.bb.i.if.else110_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else110

sw.bb2.i:                                         ; preds = %sw.epilog.sw.bb2.i_crit_edge, %sw.epilog.sw.bb2.i_crit_edge379
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xenablehba_err_chk to i32))
  %107 = load i32, ptr @ql2xenablehba_err_chk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp3.i = icmp sgt i32 %107, 1
  br i1 %cmp3.i, label %sw.bb2.i.if.else110_crit_edge, label %sw.bb2.i.if.then106_crit_edge

sw.bb2.i.if.then106_crit_edge:                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then106

sw.bb2.i.if.else110_crit_edge:                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else110

if.then106:                                       ; preds = %sw.bb2.i.if.then106_crit_edge, %sw.bb.i.if.then106_crit_edge, %sw.epilog.if.then106_crit_edge
  %108 = or i16 %fw_prot_opts, 16
  br label %if.end165

if.else110:                                       ; preds = %sw.bb2.i.if.else110_crit_edge, %sw.bb.i.if.else110_crit_edge, %sw.epilog.if.else110_crit_edge, %sw.epilog.if.else110_crit_edge380
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %7, i32 0, i32 54
  %109 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %isp_type, align 8
  %111 = and i32 %110, 3768320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %if.else110.if.end165_crit_edge, label %if.then133

if.else110.if.end165_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165

if.then133:                                       ; preds = %if.else110
  %prot_type.i = getelementptr inbounds %struct.scsi_cmnd, ptr %101, i32 0, i32 11
  %113 = ptrtoint ptr %prot_type.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %prot_type.i, align 1
  %.off367 = add i8 %114, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off367)
  %switch368 = icmp ult i8 %.off367, 2
  br i1 %switch368, label %if.then147, label %if.else151

if.then147:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #16
  %115 = or i16 %fw_prot_opts, 1024
  br label %if.end165

if.else151:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %114)
  %cmp156 = icmp eq i8 %114, 3
  %116 = or i16 %fw_prot_opts, 2048
  %spec.select = select i1 %cmp156, i16 %116, i16 %fw_prot_opts
  br label %if.end165

if.end165:                                        ; preds = %if.else151, %if.then147, %if.else110.if.end165_crit_edge, %if.then106
  %fw_prot_opts.addr.0 = phi i16 [ %115, %if.then147 ], [ %108, %if.then106 ], [ %fw_prot_opts, %if.else110.if.end165_crit_edge ], [ %spec.select, %if.else151 ]
  br i1 %switch, label %if.end165.if.end182_crit_edge, label %if.else169

if.end165.if.end182_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

if.else169:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #16
  %117 = or i16 %fw_prot_opts.addr.0, 256
  %118 = call i32 @llvm.bswap.i32(i32 %mul)
  %u173 = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 10
  %119 = ptrtoint ptr %u173 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %u173, align 4
  %sub176 = sub i16 %tot_dsds, %tot_prot_dsds
  %120 = call i16 @llvm.bswap.i16(i16 %sub176)
  %dseg_count = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 10, i32 0, i32 2
  %121 = ptrtoint ptr %dseg_count to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %dseg_count, align 2
  br label %if.end182

if.end182:                                        ; preds = %if.else169, %if.end165.if.end182_crit_edge
  %fw_prot_opts.addr.1 = phi i16 [ %117, %if.else169 ], [ %fw_prot_opts.addr.0, %if.end165.if.end182_crit_edge ]
  %cur_dsd.0 = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 10, i32 0, i32 4
  %122 = call i16 @llvm.bswap.i16(i16 %conv92)
  %blk_size183 = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 7
  %123 = ptrtoint ptr %blk_size183 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %blk_size183, align 4
  %124 = call i16 @llvm.bswap.i16(i16 %fw_prot_opts.addr.1)
  %prot_opts = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 6
  %125 = ptrtoint ptr %prot_opts to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %prot_opts, align 2
  %126 = call i32 @llvm.bswap.i32(i32 %data_bytes.0)
  %byte_count184 = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 9
  %127 = ptrtoint ptr %byte_count184 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %byte_count184, align 4
  %guard_seed = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 5
  %128 = ptrtoint ptr %guard_seed to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %guard_seed, align 4
  %129 = call i32 @llvm.bswap.i32(i32 %total_bytes.0)
  %byte_count185 = getelementptr inbounds %struct.cmd_type_crc_2, ptr %cmd_pkt, i32 0, i32 14
  %130 = ptrtoint ptr %byte_count185 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %byte_count185, align 4
  %add.ptr = getelementptr %struct.crc_context, ptr %call.i, i32 0, i32 11, i32 5, i32 16
  %conv189 = zext i8 %additional_fcpcdb_len.0 to i32
  %add.ptr190 = getelementptr i8, ptr %add.ptr, i32 %conv189
  %131 = ptrtoint ptr %add.ptr190 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %total_bytes.0, ptr %add.ptr190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_bytes.0)
  %tobool191.not = icmp eq i32 %data_bytes.0, 0
  br i1 %tobool191.not, label %if.end182.if.then196_crit_edge, label %lor.lhs.false192

if.end182.if.then196_crit_edge:                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then196

lor.lhs.false192:                                 ; preds = %if.end182
  %132 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %133)
  %cmp194 = icmp eq i32 %133, 3
  br i1 %cmp194, label %lor.lhs.false192.if.then196_crit_edge, label %if.end198

lor.lhs.false192.if.then196_crit_edge:            ; preds = %lor.lhs.false192
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then196

if.then196:                                       ; preds = %lor.lhs.false192.if.then196_crit_edge, %if.end182.if.then196_crit_edge
  %134 = ptrtoint ptr %byte_count185 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %byte_count185, align 4
  br label %cleanup

if.end198:                                        ; preds = %lor.lhs.false192
  %control_flags199 = getelementptr inbounds %struct.cmd_type_crc_2, ptr %cmd_pkt, i32 0, i32 10
  %135 = ptrtoint ptr %control_flags199 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %control_flags199, align 4
  %137 = or i16 %136, 1024
  store i16 %137, ptr %control_flags199, align 4
  %tobool166.not.not = xor i1 %switch, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tot_prot_dsds)
  %tobool205.not = icmp eq i16 %tot_prot_dsds, 0
  %or.cond355 = or i1 %tobool205.not, %tobool166.not.not
  br i1 %or.cond355, label %if.else211, label %if.then206

if.then206:                                       ; preds = %if.end198
  %call207 = call i32 @qla24xx_walk_and_build_sglist_no_difb(ptr noundef %7, ptr noundef %sp, ptr noundef %cur_dsd.0, i16 noundef zeroext %tot_dsds, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.then206.if.end220_crit_edge, label %if.then206.crc_queuing_error_crit_edge

if.then206.crc_queuing_error_crit_edge:           ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #16
  br label %crc_queuing_error

if.then206.if.end220_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220

if.else211:                                       ; preds = %if.end198
  %sub214 = sub i16 %tot_dsds, %tot_prot_dsds
  %call216 = call i32 @qla24xx_walk_and_build_sglist(ptr noundef %7, ptr noundef %sp, ptr noundef %cur_dsd.0, i16 noundef zeroext %sub214, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.else211.if.end220_crit_edge, label %if.else211.crc_queuing_error_crit_edge

if.else211.crc_queuing_error_crit_edge:           ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #16
  br label %crc_queuing_error

if.else211.if.end220_crit_edge:                   ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220

if.end220:                                        ; preds = %if.else211.if.end220_crit_edge, %if.then206.if.end220_crit_edge
  %or.cond356 = or i1 %tobool205.not, %switch
  br i1 %or.cond356, label %if.end220.cleanup_crit_edge, label %if.then226

if.end220.cleanup_crit_edge:                      ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then226:                                       ; preds = %if.end220
  %138 = ptrtoint ptr %control_flags199 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %control_flags199, align 4
  %140 = or i16 %139, 2048
  store i16 %140, ptr %control_flags199, align 4
  %dif_dsd = getelementptr inbounds %struct.crc_context, ptr %call.i, i32 0, i32 10, i32 0, i32 5
  %call232 = call i32 @qla24xx_walk_and_build_prot_sglist(ptr noundef %7, ptr noundef %sp, ptr noundef %dif_dsd, i16 noundef zeroext %tot_prot_dsds, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %if.then226.cleanup_crit_edge, label %if.then226.crc_queuing_error_crit_edge

if.then226.crc_queuing_error_crit_edge:           ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #16
  br label %crc_queuing_error

if.then226.cleanup_crit_edge:                     ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

crc_queuing_error:                                ; preds = %if.then226.crc_queuing_error_crit_edge, %if.else211.crc_queuing_error_crit_edge, %if.then206.crc_queuing_error_crit_edge, %if.then50.crc_queuing_error_crit_edge, %if.end14.crc_queuing_error_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %crc_queuing_error, %if.then226.cleanup_crit_edge, %if.end220.cleanup_crit_edge, %if.then196, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 258, %crc_queuing_error ], [ 0, %if.then196 ], [ 0, %if.then226.cleanup_crit_edge ], [ 0, %if.end220.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc_ctx_dma) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2xxx_dif_start_scsi_mq(ptr noundef %sp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %2 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcport, align 4
  %vha2 = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vha2, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 52
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %qpair3 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 14
  %8 = ptrtoint ptr %qpair3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qpair3, align 8
  %online = getelementptr inbounds %struct.qla_qpair, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %online, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %11 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65536, ptr %result, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %prot_op.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %prot_op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not = icmp eq i8 %14, 0
  br i1 %cmp.not, label %land.lhs.true.if.end11_crit_edge, label %if.then9

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %result10 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %result10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65536, ptr %result10, align 4
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %prot_op.i426 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %prot_op.i426 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %prot_op.i426, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp14 = icmp eq i8 %17, 0
  br i1 %cmp14, label %if.then16, label %if.end11.do.body24_crit_edge

if.end11.do.body24_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body24

if.then16:                                        ; preds = %if.end11
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %19)
  %cmp18 = icmp ult i16 %19, 17
  br i1 %cmp18, label %if.then20, label %if.then16.do.body24_crit_edge

if.then16.do.body24_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body24

if.then20:                                        ; preds = %if.then16
  %edif.i = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 72
  %20 = ptrtoint ptr %edif.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i = load i16, ptr %edif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then20.do.body8.i_crit_edge, label %land.lhs.true.i

if.then20.do.body8.i_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body8.i

land.lhs.true.i:                                  ; preds = %if.then20
  %flags6.i = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 35
  %21 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags6.i, align 8
  %and.i = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.do.body8.i_crit_edge, label %if.then.i

land.lhs.true.i.do.body8.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body8.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 @qla28xx_start_scsi_edif(ptr noundef %sp) #14
  br label %cleanup

do.body8.i:                                       ; preds = %land.lhs.true.i.do.body8.i_crit_edge, %if.then20.do.body8.i_crit_edge
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #14
  %req13.i = getelementptr inbounds %struct.qla_qpair, ptr %9, i32 0, i32 12
  %23 = ptrtoint ptr %req13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %req13.i, align 4
  %rsp14.i = getelementptr inbounds %struct.qla_qpair, ptr %9, i32 0, i32 13
  %25 = ptrtoint ptr %rsp14.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rsp14.i, align 8
  %marker_needed.i = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 18
  %27 = ptrtoint ptr %marker_needed.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %marker_needed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp16.not.i = icmp eq i8 %28, 0
  br i1 %cmp16.not.i, label %do.body8.i.if.end26.i_crit_edge, label %if.then18.i

do.body8.i.if.end26.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.then18.i:                                      ; preds = %do.body8.i
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44, i32 8
  %33 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %call2.i.i = tail call ptr @__qla2x00_alloc_iocbs(ptr noundef %9, ptr noundef null) #14
  %cmp.i.i = icmp eq ptr %call2.i.i, null
  br i1 %cmp.i.i, label %if.then22.i, label %if.end24.i

if.then22.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %34, i32 noundef 12326, ptr noundef nonnull @.str.32) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call10.i) #14
  br label %cleanup

if.end24.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %call2.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 4, ptr %call2.i.i, align 4
  %modifier.i.i = getelementptr inbounds %struct.mrk_entry_t, ptr %call2.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %modifier.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %modifier.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !147
  tail call void @arm_heavy_mb() #14
  tail call void @qla2x00_start_iocbs(ptr noundef %5, ptr noundef %24) #14
  %37 = ptrtoint ptr %marker_needed.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %marker_needed.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end24.i, %do.body8.i.if.end26.i_crit_edge
  %num_outstanding_cmds.i.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 18
  %38 = ptrtoint ptr %num_outstanding_cmds.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_outstanding_cmds.i.i, align 4
  %conv.i.i = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp17.i.i = icmp ugt i16 %39, 1
  br i1 %cmp17.i.i, label %for.body.lr.ph.i.i, label %if.end26.i.if.end187.i_crit_edge

if.end26.i.if.end187.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end187.i

for.body.lr.ph.i.i:                               ; preds = %if.end26.i
  %current_outstanding_cmd.i.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 17
  %40 = ptrtoint ptr %current_outstanding_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %current_outstanding_cmd.i.i, align 4
  %outstanding_cmds.i.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 16
  %42 = ptrtoint ptr %outstanding_cmds.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %outstanding_cmds.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc8.i.i = add nuw nsw i32 %index.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc8.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end187.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.cond.i.i.if.end187.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end187.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %handle.019.i.i = phi i32 [ %41, %for.body.lr.ph.i.i ], [ %spec.store.select.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %index.018.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %inc8.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %handle.019.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %conv.i.i)
  %cmp4.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  %spec.store.select.i.i = select i1 %cmp4.i.i, i32 1, i32 %inc.i.i
  %arrayidx.i.i = getelementptr ptr, ptr %43, i32 %spec.store.select.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %qla2xxx_get_next_handle.exit.i, label %for.cond.i.i

qla2xxx_get_next_handle.exit.i:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i)
  %cmp28.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %cmp28.i, label %qla2xxx_get_next_handle.exit.i.if.end187.i_crit_edge, label %if.end31.i

qla2xxx_get_next_handle.exit.i.if.end187.i_crit_edge: ; preds = %qla2xxx_get_next_handle.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end187.i

if.end31.i:                                       ; preds = %qla2xxx_get_next_handle.exit.i
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %46 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool33.not.i = icmp eq i32 %47, 0
  br i1 %tobool33.not.i, label %if.end31.i.qla24xx_calc_iocbs.exit.i_crit_edge, label %if.then34.i

if.end31.i.qla24xx_calc_iocbs.exit.i_crit_edge:   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_calc_iocbs.exit.i

if.then34.i:                                      ; preds = %if.end31.i
  %48 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %7, align 128
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %50 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdb.i.i, align 4
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %52 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sc_data_direction.i, align 4
  %call37.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev.i, ptr noundef %51, i32 noundef %47, i32 noundef %53, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.then34.i.if.end187.i_crit_edge, label %if.end44.i, !prof !148

if.then34.i.if.end187.i_crit_edge:                ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end187.i

if.end44.i:                                       ; preds = %if.then34.i
  %conv45.i = trunc i32 %call37.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv45.i)
  %cmp.i317.i = icmp ugt i16 %conv45.i, 1
  br i1 %cmp.i317.i, label %if.then.i319.i, label %if.end44.i.qla24xx_calc_iocbs.exit.i_crit_edge

if.end44.i.qla24xx_calc_iocbs.exit.i_crit_edge:   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_calc_iocbs.exit.i

if.then.i319.i:                                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i16 %conv45.i, -1
  %sub.i.i.frozen = freeze i16 %sub.i.i
  %div12.i.i = udiv i16 %sub.i.i.frozen, 5
  %54 = mul i16 %div12.i.i, 5
  %rem34.i.i.decomposed = sub i16 %sub.i.i.frozen, %54
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem34.i.i.decomposed)
  %tobool.not.i318.i = icmp eq i16 %rem34.i.i.decomposed, 0
  %spec.select.v.i.i = select i1 %tobool.not.i318.i, i16 1, i16 2
  %spec.select.i.i = add nuw nsw i16 %spec.select.v.i.i, %div12.i.i
  br label %qla24xx_calc_iocbs.exit.i

qla24xx_calc_iocbs.exit.i:                        ; preds = %if.then.i319.i, %if.end44.i.qla24xx_calc_iocbs.exit.i_crit_edge, %if.end31.i.qla24xx_calc_iocbs.exit.i_crit_edge
  %conv45362.i = phi i16 [ %conv45.i, %if.end44.i.qla24xx_calc_iocbs.exit.i_crit_edge ], [ %conv45.i, %if.then.i319.i ], [ 0, %if.end31.i.qla24xx_calc_iocbs.exit.i_crit_edge ]
  %iocbs.0.i.i = phi i16 [ 1, %if.end44.i.qla24xx_calc_iocbs.exit.i_crit_edge ], [ %spec.select.i.i, %if.then.i319.i ], [ 1, %if.end31.i.qla24xx_calc_iocbs.exit.i_crit_edge ]
  %iores.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2
  %55 = ptrtoint ptr %iores.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %iores.i, align 4
  %iocb_cnt.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2, i32 2
  %56 = ptrtoint ptr %iocb_cnt.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %iocbs.0.i.i, ptr %iocb_cnt.i, align 2
  %57 = ptrtoint ptr %qpair3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %qpair3, align 8
  %vha.i.i = getelementptr inbounds %struct.qla_qpair, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %vha.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vha.i.i, align 8
  %hw.i320.i = getelementptr inbounds %struct.scsi_qla_host, ptr %60, i32 0, i32 52
  %61 = ptrtoint ptr %hw.i320.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw.i320.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xenforce_iocb_limit to i32))
  %63 = load i32, ptr @ql2xenforce_iocb_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i321.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i321.i, label %if.then.i322.i, label %if.end.i325.i

if.then.i322.i:                                   ; preds = %qla24xx_calc_iocbs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %iores.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %iores.i, align 2
  %.pre = zext i16 %iocbs.0.i.i to i32
  br label %if.end53.i

if.end.i325.i:                                    ; preds = %qla24xx_calc_iocbs.exit.i
  %conv.i323.i = zext i16 %iocbs.0.i.i to i32
  %iocbs_used1.i.i = getelementptr inbounds %struct.qla_qpair, ptr %58, i32 0, i32 27, i32 3
  %65 = ptrtoint ptr %iocbs_used1.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %iocbs_used1.i.i, align 2
  %conv2.i.i = zext i16 %66 to i32
  %add.i.i = add nuw nsw i32 %conv2.i.i, %conv.i323.i
  %iocbs_qp_limit.i.i = getelementptr inbounds %struct.qla_qpair, ptr %58, i32 0, i32 27, i32 2
  %67 = ptrtoint ptr %iocbs_qp_limit.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %iocbs_qp_limit.i.i, align 4
  %conv4.i.i = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv4.i.i)
  %cmp.i324.i = icmp ult i32 %add.i.i, %conv4.i.i
  br i1 %cmp.i324.i, label %if.then6.i.i, label %if.else.i.i

if.then6.i.i:                                     ; preds = %if.end.i325.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv13.i.i = trunc i32 %add.i.i to i16
  %69 = ptrtoint ptr %iocbs_used1.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv13.i.i, ptr %iocbs_used1.i.i, align 2
  br label %if.end53.i

if.else.i.i:                                      ; preds = %if.end.i325.i
  %base_qpair.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %62, i32 0, i32 34
  %70 = ptrtoint ptr %base_qpair.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base_qpair.i.i, align 4
  %iocbs_used15.i.i = getelementptr inbounds %struct.qla_qpair, ptr %71, i32 0, i32 27, i32 3
  %72 = ptrtoint ptr %iocbs_used15.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %iocbs_used15.i.i, align 2
  %max_qpairs.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %62, i32 0, i32 32
  %74 = ptrtoint ptr %max_qpairs.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %max_qpairs.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp1869.not.i.i = icmp eq i8 %75, 0
  br i1 %cmp1869.not.i.i, label %if.else.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i326.i

if.else.i.i.for.end.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.lr.ph.i326.i:                            ; preds = %if.else.i.i
  %queue_pair_map.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %62, i32 0, i32 26
  %76 = ptrtoint ptr %queue_pair_map.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %queue_pair_map.i.i, align 4
  %wide.trip.count.i.i = zext i8 %75 to i32
  br label %for.body.i328.i

for.body.i328.i:                                  ; preds = %for.inc.i.i.for.body.i328.i_crit_edge, %for.body.lr.ph.i326.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i326.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i328.i_crit_edge ]
  %iocbs_used.070.i.i = phi i16 [ %73, %for.body.lr.ph.i326.i ], [ %iocbs_used.1.i.i, %for.inc.i.i.for.body.i328.i_crit_edge ]
  %arrayidx.i327.i = getelementptr ptr, ptr %77, i32 %indvars.iv.i.i
  %78 = ptrtoint ptr %arrayidx.i327.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i327.i, align 4
  %tobool20.not.i.i = icmp eq ptr %79, null
  br i1 %tobool20.not.i.i, label %for.body.i328.i.for.inc.i.i_crit_edge, label %if.then21.i.i

for.body.i328.i.for.inc.i.i_crit_edge:            ; preds = %for.body.i328.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then21.i.i:                                    ; preds = %for.body.i328.i
  call void @__sanitizer_cov_trace_pc() #16
  %iocbs_used26.i.i = getelementptr inbounds %struct.qla_qpair, ptr %79, i32 0, i32 27, i32 3
  %80 = ptrtoint ptr %iocbs_used26.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %iocbs_used26.i.i, align 2
  %add29.i.i = add i16 %81, %iocbs_used.070.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then21.i.i, %for.body.i328.i.for.inc.i.i_crit_edge
  %iocbs_used.1.i.i = phi i16 [ %add29.i.i, %if.then21.i.i ], [ %iocbs_used.070.i.i, %for.body.i328.i.for.inc.i.i_crit_edge ]
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i329.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i329.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i328.i_crit_edge

for.inc.i.i.for.body.i328.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i328.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.else.i.i.for.end.i.i_crit_edge
  %iocbs_used.0.lcssa.i.i = phi i16 [ %73, %if.else.i.i.for.end.i.i_crit_edge ], [ %iocbs_used.1.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %conv34.i.i = zext i16 %iocbs_used.0.lcssa.i.i to i32
  %add35.i.i = add nuw nsw i32 %conv34.i.i, %conv.i323.i
  %iocbs_limit.i.i = getelementptr inbounds %struct.qla_qpair, ptr %58, i32 0, i32 27, i32 1
  %82 = ptrtoint ptr %iocbs_limit.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %iocbs_limit.i.i, align 2
  %conv37.i.i = zext i16 %83 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add35.i.i, i32 %conv37.i.i)
  %cmp38.i.i = icmp ult i32 %add35.i.i, %conv37.i.i
  br i1 %cmp38.i.i, label %if.then40.i.i, label %qla_get_iocbs.exit.i

if.then40.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add46.i.i = add i16 %66, %iocbs.0.i.i
  %84 = ptrtoint ptr %iocbs_used1.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %add46.i.i, ptr %iocbs_used1.i.i, align 2
  br label %if.end53.i

qla_get_iocbs.exit.i:                             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %85 = ptrtoint ptr %iores.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %iores.i, align 2
  br label %queuing_error.i

if.end53.i:                                       ; preds = %if.then40.i.i, %if.then6.i.i, %if.then.i322.i
  %conv56.i.pre-phi = phi i32 [ %conv.i323.i, %if.then40.i.i ], [ %conv.i323.i, %if.then6.i.i ], [ %.pre, %if.then.i322.i ]
  %cnt54.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 8
  %86 = ptrtoint ptr %cnt54.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %cnt54.i, align 4
  %conv55.i = zext i16 %87 to i32
  %add.i = add nuw nsw i32 %conv56.i.pre-phi, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv55.i)
  %cmp57.i = icmp ugt i32 %add.i, %conv55.i
  br i1 %cmp57.i, label %if.then59.i, label %if.end53.i.if.end118.i_crit_edge

if.end53.i.if.end118.i_crit_edge:                 ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end118.i

if.then59.i:                                      ; preds = %if.end53.i
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %7, i32 0, i32 54
  %88 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %isp_type.i, align 8
  %90 = and i32 %89, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %if.else83.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #16
  %out_ptr.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 7
  %92 = ptrtoint ptr %out_ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %out_ptr.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %93, align 2
  br label %if.end89.i

if.else83.i:                                      ; preds = %if.then59.i
  %req_q_out.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 4
  %96 = ptrtoint ptr %req_q_out.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %req_q_out.i, align 4
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #14, !srcloc !155
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #14
  %conv85.i = trunc i32 %99 to i16
  %call86.i = tail call zeroext i1 @qla2x00_check_reg16_for_disconnect(ptr noundef %5, i16 noundef zeroext %conv85.i) #14
  br i1 %call86.i, label %if.else83.i.queuing_error.i_crit_edge, label %if.else83.i.if.end89.i_crit_edge

if.else83.i.if.end89.i_crit_edge:                 ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89.i

if.else83.i.queuing_error.i_crit_edge:            ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %queuing_error.i

if.end89.i:                                       ; preds = %if.else83.i.if.end89.i_crit_edge, %if.then82.i
  %cnt.0.i = phi i16 [ %95, %if.then82.i ], [ %conv85.i, %if.else83.i.if.end89.i_crit_edge ]
  %ring_index.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 5
  %100 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %ring_index.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %cnt.0.i, i16 %101)
  %cmp92.i = icmp ugt i16 %cnt.0.i, %101
  br i1 %cmp92.i, label %if.then94.i, label %if.else100.i

if.then94.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = sub i16 %cnt.0.i, %101
  br label %if.end109.i

if.else100.i:                                     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #16
  %length.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 9
  %102 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %length.i, align 2
  %sub105.neg.i = sub i16 %cnt.0.i, %101
  %sub106.i = add i16 %sub105.neg.i, %103
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.else100.i, %if.then94.i
  %storemerge311.i = phi i16 [ %sub106.i, %if.else100.i ], [ %sub.i, %if.then94.i ]
  %104 = ptrtoint ptr %cnt54.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %storemerge311.i, ptr %cnt54.i, align 4
  %conv111.i = zext i16 %storemerge311.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv111.i)
  %cmp114.i = icmp ugt i32 %add.i, %conv111.i
  br i1 %cmp114.i, label %if.end109.i.queuing_error.i_crit_edge, label %if.end109.i.if.end118.i_crit_edge

if.end109.i.if.end118.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end118.i

if.end109.i.queuing_error.i_crit_edge:            ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %queuing_error.i

if.end118.i:                                      ; preds = %if.end109.i.if.end118.i_crit_edge, %if.end53.i.if.end118.i_crit_edge
  %105 = ptrtoint ptr %current_outstanding_cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %spec.store.select.i.i, ptr %current_outstanding_cmd.i.i, align 4
  %106 = ptrtoint ptr %outstanding_cmds.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %outstanding_cmds.i.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %107, i32 %spec.store.select.i.i
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %sp, ptr %arrayidx.i, align 4
  %handle119.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %109 = ptrtoint ptr %handle119.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %spec.store.select.i.i, ptr %handle119.i, align 8
  %110 = inttoptr i32 %spec.store.select.i.i to ptr
  %host_scribble.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 23
  %111 = ptrtoint ptr %host_scribble.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %host_scribble.i, align 4
  %112 = ptrtoint ptr %cnt54.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %cnt54.i, align 4
  %sub123.i = sub i16 %113, %iocbs.0.i.i
  store i16 %sub123.i, ptr %cnt54.i, align 4
  %ring_ptr.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 2
  %114 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ring_ptr.i, align 4
  %id.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 12
  %116 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %id.i, align 4
  %conv.i331.i = zext i16 %117 to i32
  %shl.i.i = shl nuw i32 %conv.i331.i, 16
  %conv1.i.i = and i32 %spec.store.select.i.i, 65535
  %or.i.i = or i32 %shl.i.i, %conv1.i.i
  %handle127.i = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 4
  %118 = ptrtoint ptr %handle127.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or.i.i, ptr %handle127.i, align 4
  %add.ptr.i = getelementptr i32, ptr %115, i32 2
  %119 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 56)
  %120 = tail call i16 @llvm.bswap.i16(i16 %conv45362.i) #14
  %dseg_count.i = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 7
  %121 = ptrtoint ptr %dseg_count.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %dseg_count.i, align 4
  %122 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fcport, align 4
  %loop_id.i = getelementptr inbounds %struct.fc_port, ptr %123, i32 0, i32 7
  %124 = ptrtoint ptr %loop_id.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %loop_id.i, align 4
  %126 = tail call i16 @llvm.bswap.i16(i16 %125) #14
  %127 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %add.ptr.i, align 4
  %128 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %fcport, align 4
  %d_id.i = getelementptr inbounds %struct.fc_port, ptr %129, i32 0, i32 6
  %al_pa.i = getelementptr inbounds %struct.anon.80, ptr %d_id.i, i32 0, i32 2
  %130 = ptrtoint ptr %al_pa.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %al_pa.i, align 2
  %port_id.i = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 15
  %132 = ptrtoint ptr %port_id.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %port_id.i, align 4
  %133 = load ptr, ptr %fcport, align 4
  %d_id132.i = getelementptr inbounds %struct.fc_port, ptr %133, i32 0, i32 6
  %area.i = getelementptr inbounds %struct.anon.80, ptr %d_id132.i, i32 0, i32 1
  %134 = ptrtoint ptr %area.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %area.i, align 1
  %arrayidx134.i = getelementptr %struct.cmd_type_7, ptr %115, i32 0, i32 15, i32 1
  %136 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %arrayidx134.i, align 1
  %137 = load ptr, ptr %fcport, align 4
  %d_id136.i = getelementptr inbounds %struct.fc_port, ptr %137, i32 0, i32 6
  %138 = ptrtoint ptr %d_id136.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %d_id136.i, align 8
  %arrayidx138.i = getelementptr %struct.cmd_type_7, ptr %115, i32 0, i32 15, i32 2
  %140 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %arrayidx138.i, align 2
  %141 = load ptr, ptr %fcport, align 4
  %vha140.i = getelementptr inbounds %struct.fc_port, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %vha140.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %vha140.i, align 8
  %vp_idx.i = getelementptr inbounds %struct.scsi_qla_host, ptr %143, i32 0, i32 46
  %144 = ptrtoint ptr %vp_idx.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %vp_idx.i, align 8
  %conv141.i = trunc i16 %145 to i8
  %vp_index.i = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 16
  %146 = ptrtoint ptr %vp_index.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv141.i, ptr %vp_index.i, align 1
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %147 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %device.i, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %148, i32 0, i32 18
  %149 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %lun.i, align 8
  %lun142.i = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 9
  tail call void @int_to_scsilun(i64 noundef %150, ptr noundef %lun142.i) #14
  %incdec.ptr1.i.i = getelementptr %struct.cmd_type_7, ptr %115, i32 0, i32 9, i32 0, i32 4
  %151 = ptrtoint ptr %lun142.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %lun142.i, align 4
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #14
  %154 = ptrtoint ptr %lun142.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %lun142.i, align 4
  %155 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %incdec.ptr1.i.i, align 4
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #14
  %158 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %incdec.ptr1.i.i, align 4
  %task.i = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 11
  %159 = ptrtoint ptr %task.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %task.i, align 2
  %fcp_cdb.i = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 13
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %160 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cmnd.i, align 4
  %162 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %cmd_len, align 4
  %conv145.i = zext i16 %163 to i32
  %164 = call ptr @memcpy(ptr %fcp_cdb.i, ptr %161, i32 %conv145.i)
  %incdec.ptr1.i337.i = getelementptr %struct.cmd_type_7, ptr %115, i32 0, i32 13, i32 4
  %165 = ptrtoint ptr %fcp_cdb.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %fcp_cdb.i, align 4
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #14
  %168 = ptrtoint ptr %fcp_cdb.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %fcp_cdb.i, align 4
  %incdec.ptr1.i337.1.i = getelementptr %struct.cmd_type_7, ptr %115, i32 0, i32 13, i32 8
  %169 = ptrtoint ptr %incdec.ptr1.i337.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %incdec.ptr1.i337.i, align 4
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #14
  %172 = ptrtoint ptr %incdec.ptr1.i337.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %incdec.ptr1.i337.i, align 4
  %incdec.ptr1.i337.2.i = getelementptr %struct.cmd_type_7, ptr %115, i32 0, i32 13, i32 12
  %173 = ptrtoint ptr %incdec.ptr1.i337.1.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %incdec.ptr1.i337.1.i, align 4
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #14
  %176 = ptrtoint ptr %incdec.ptr1.i337.1.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %incdec.ptr1.i337.1.i, align 4
  %177 = ptrtoint ptr %incdec.ptr1.i337.2.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %incdec.ptr1.i337.2.i, align 4
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #14
  %180 = ptrtoint ptr %incdec.ptr1.i337.2.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %incdec.ptr1.i337.2.i, align 4
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %181 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %length.i.i, align 4
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #14
  %byte_count.i = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 14
  %184 = ptrtoint ptr %byte_count.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %byte_count.i, align 4
  %185 = ptrtoint ptr %qpair3 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %qpair3, align 8
  %187 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %u, align 8
  %189 = ptrtoint ptr %115 to i32
  call void @__asan_storeN_noabort(i32 %189, i32 4)
  store i32 402653184, ptr %115, align 1
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %188, i32 0, i32 17, i32 1
  %190 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool.not.i343.i = icmp eq i32 %191, 0
  br i1 %tobool.not.i343.i, label %if.end118.i.if.then.i345.i_crit_edge, label %lor.lhs.false.i.i

if.end118.i.if.then.i345.i_crit_edge:             ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i345.i

lor.lhs.false.i.i:                                ; preds = %if.end118.i
  %sc_data_direction.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %188, i32 0, i32 15
  %192 = ptrtoint ptr %sc_data_direction.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %sc_data_direction.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %193)
  %cmp.i344.i = icmp eq i32 %193, 3
  br i1 %cmp.i344.i, label %lor.lhs.false.i.i.if.then.i345.i_crit_edge, label %if.end.i346.i

lor.lhs.false.i.i.if.then.i345.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i345.i

if.then.i345.i:                                   ; preds = %lor.lhs.false.i.i.if.then.i345.i_crit_edge, %if.end118.i.if.then.i345.i_crit_edge
  %194 = ptrtoint ptr %byte_count.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %byte_count.i, align 4
  br label %qla24xx_build_scsi_iocbs.exit.i

if.end.i346.i:                                    ; preds = %lor.lhs.false.i.i
  %vha3.i.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %195 = ptrtoint ptr %vha3.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %vha3.i.i, align 8
  %197 = zext i32 %193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %197, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %193, label %if.end.i346.i.if.end21.i.i_crit_edge [
    i32 1, label %if.then6.i349.i
    i32 2, label %if.then12.i.i
  ]

if.end.i346.i.if.end21.i.i_crit_edge:             ; preds = %if.end.i346.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i.i

if.then6.i349.i:                                  ; preds = %if.end.i346.i
  call void @__sanitizer_cov_trace_pc() #16
  %task_mgmt_flags.i.i = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 10
  %198 = ptrtoint ptr %task_mgmt_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 256, ptr %task_mgmt_flags.i.i, align 4
  %199 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %length.i.i.i, align 4
  %conv.i347.i = zext i32 %200 to i64
  %output_bytes.i.i = getelementptr inbounds %struct.qla_qpair, ptr %186, i32 0, i32 18, i32 2
  %201 = ptrtoint ptr %output_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %output_bytes.i.i, align 8
  %add.i348.i = add i64 %202, %conv.i347.i
  store i64 %add.i348.i, ptr %output_bytes.i.i, align 8
  %output_requests.i.i = getelementptr inbounds %struct.qla_qpair, ptr %186, i32 0, i32 18, i32 3
  br label %if.end21.sink.split.i.i

if.then12.i.i:                                    ; preds = %if.end.i346.i
  call void @__sanitizer_cov_trace_pc() #16
  %task_mgmt_flags13.i.i = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 10
  %203 = ptrtoint ptr %task_mgmt_flags13.i.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 512, ptr %task_mgmt_flags13.i.i, align 4
  %204 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %length.i.i.i, align 4
  %conv15.i.i = zext i32 %205 to i64
  %counters16.i.i = getelementptr inbounds %struct.qla_qpair, ptr %186, i32 0, i32 18
  %206 = ptrtoint ptr %counters16.i.i to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %counters16.i.i, align 8
  %add17.i.i = add i64 %207, %conv15.i.i
  store i64 %add17.i.i, ptr %counters16.i.i, align 8
  %input_requests.i.i = getelementptr inbounds %struct.qla_qpair, ptr %186, i32 0, i32 18, i32 1
  br label %if.end21.sink.split.i.i

if.end21.sink.split.i.i:                          ; preds = %if.then12.i.i, %if.then6.i349.i
  %input_requests.sink71.i.i = phi ptr [ %input_requests.i.i, %if.then12.i.i ], [ %output_requests.i.i, %if.then6.i349.i ]
  %208 = ptrtoint ptr %input_requests.sink71.i.i to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %input_requests.sink71.i.i, align 8
  %inc19.i.i = add i64 %209, 1
  store i64 %inc19.i.i, ptr %input_requests.sink71.i.i, align 8
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.end21.sink.split.i.i, %if.end.i346.i.if.end21.i.i_crit_edge
  %conv23.i.i = zext i16 %conv45362.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv45362.i)
  %cmp2466.not.i.i = icmp eq i16 %conv45362.i, 0
  br i1 %cmp2466.not.i.i, label %if.end21.i.i.qla24xx_build_scsi_iocbs.exit.i_crit_edge, label %for.body.lr.ph.i350.i

if.end21.i.i.qla24xx_build_scsi_iocbs.exit.i_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_build_scsi_iocbs.exit.i

for.body.lr.ph.i350.i:                            ; preds = %if.end21.i.i
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %188, i32 0, i32 17
  %210 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %sdb.i.i.i, align 4
  %dsd.i.i = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 17
  %ring_index.i.i.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 5
  %length.i61.i.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 9
  %ring.i.i.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 1
  %hw.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %196, i32 0, i32 52
  br label %for.body.i351.i

for.body.i351.i:                                  ; preds = %if.end32.i.i.for.body.i351.i_crit_edge, %for.body.lr.ph.i350.i
  %i.070.i.i = phi i32 [ 0, %for.body.lr.ph.i350.i ], [ %inc33.i.i, %if.end32.i.i.for.body.i351.i_crit_edge ]
  %sg.069.i.i = phi ptr [ %211, %for.body.lr.ph.i350.i ], [ %call34.i.i, %if.end32.i.i.for.body.i351.i_crit_edge ]
  %avail_dsds.068.i.i = phi i16 [ 1, %for.body.lr.ph.i350.i ], [ %dec.i352.i, %if.end32.i.i.for.body.i351.i_crit_edge ]
  %cur_dsd.067.i.i = phi ptr [ %dsd.i.i, %for.body.lr.ph.i350.i ], [ %incdec.ptr.i63.i.i, %if.end32.i.i.for.body.i351.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %avail_dsds.068.i.i)
  %cmp27.i.i = icmp eq i16 %avail_dsds.068.i.i, 0
  br i1 %cmp27.i.i, label %if.then29.i.i, label %for.body.i351.i.if.end32.i.i_crit_edge

for.body.i351.i.if.end32.i.i_crit_edge:           ; preds = %for.body.i351.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i.i

if.then29.i.i:                                    ; preds = %for.body.i351.i
  %212 = ptrtoint ptr %ring_index.i.i.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %ring_index.i.i.i, align 4
  %inc.i.i.i = add i16 %213, 1
  store i16 %inc.i.i.i, ptr %ring_index.i.i.i, align 4
  %214 = ptrtoint ptr %length.i61.i.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %length.i61.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i.i, i16 %215)
  %cmp.i.i.i = icmp eq i16 %inc.i.i.i, %215
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %216 = ptrtoint ptr %ring_index.i.i.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 0, ptr %ring_index.i.i.i, align 4
  %217 = ptrtoint ptr %ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ring.i.i.i, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %219 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ring_ptr.i, align 4
  %incdec.ptr.i.i.i = getelementptr %struct.cmd_a64_entry_t, ptr %220, i32 1
  br label %qla2x00_prep_cont_type1_iocb.exit.i.i

qla2x00_prep_cont_type1_iocb.exit.i.i:            ; preds = %if.else.i.i.i, %if.then.i.i.i
  %storemerge.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.else.i.i.i ], [ %218, %if.then.i.i.i ]
  %221 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %storemerge.i.i, ptr %ring_ptr.i, align 4
  %222 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %hw.i.i.i, align 4
  %isp_type.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %223, i32 0, i32 54
  %224 = ptrtoint ptr %isp_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %isp_type.i.i.i, align 8
  %and7.i.i.i = and i32 %225, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and7.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 167772160, i32 50331648
  %226 = ptrtoint ptr %storemerge.i.i to i32
  call void @__asan_storeN_noabort(i32 %226, i32 4)
  store i32 %cond.i.i.i, ptr %storemerge.i.i, align 1
  %dsd31.i.i = getelementptr inbounds %struct.cont_a64_entry_t, ptr %storemerge.i.i, i32 0, i32 4
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %qla2x00_prep_cont_type1_iocb.exit.i.i, %for.body.i351.i.if.end32.i.i_crit_edge
  %cur_dsd.1.i.i = phi ptr [ %dsd31.i.i, %qla2x00_prep_cont_type1_iocb.exit.i.i ], [ %cur_dsd.067.i.i, %for.body.i351.i.if.end32.i.i_crit_edge ]
  %avail_dsds.1.i.i = phi i16 [ 5, %qla2x00_prep_cont_type1_iocb.exit.i.i ], [ %avail_dsds.068.i.i, %for.body.i351.i.if.end32.i.i_crit_edge ]
  %dma_address.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.069.i.i, i32 0, i32 3
  %227 = ptrtoint ptr %dma_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %dma_address.i.i.i, align 4
  %conv.i.i.i = zext i32 %228 to i64
  %229 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i) #14
  %230 = ptrtoint ptr %cur_dsd.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %230, i32 8)
  store i64 %229, ptr %cur_dsd.1.i.i, align 1
  %dma_length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.069.i.i, i32 0, i32 4
  %231 = ptrtoint ptr %dma_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %dma_length.i.i.i, align 4
  %length.i62.i.i = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.1.i.i, i32 0, i32 1
  %233 = tail call i32 @llvm.bswap.i32(i32 %232) #14
  %234 = ptrtoint ptr %length.i62.i.i to i32
  call void @__asan_storeN_noabort(i32 %234, i32 4)
  store i32 %233, ptr %length.i62.i.i, align 1
  %incdec.ptr.i63.i.i = getelementptr %struct.dsd64, ptr %cur_dsd.1.i.i, i32 1
  %dec.i352.i = add i16 %avail_dsds.1.i.i, -1
  %inc33.i.i = add nuw nsw i32 %i.070.i.i, 1
  %call34.i.i = tail call ptr @sg_next(ptr noundef %sg.069.i.i) #14
  %exitcond.not.i353.i = icmp eq i32 %inc33.i.i, %conv23.i.i
  br i1 %exitcond.not.i353.i, label %if.end32.i.i.qla24xx_build_scsi_iocbs.exit.i_crit_edge, label %if.end32.i.i.for.body.i351.i_crit_edge

if.end32.i.i.for.body.i351.i_crit_edge:           ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i351.i

if.end32.i.i.qla24xx_build_scsi_iocbs.exit.i_crit_edge: ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_build_scsi_iocbs.exit.i

qla24xx_build_scsi_iocbs.exit.i:                  ; preds = %if.end32.i.i.qla24xx_build_scsi_iocbs.exit.i_crit_edge, %if.end21.i.i.qla24xx_build_scsi_iocbs.exit.i_crit_edge, %if.then.i345.i
  %conv150.i = trunc i16 %iocbs.0.i.i to i8
  %entry_count.i = getelementptr inbounds %struct.cmd_type_7, ptr %115, i32 0, i32 1
  %235 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %conv150.i, ptr %entry_count.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !167
  tail call void @arm_heavy_mb() #14
  %ring_index154.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 5
  %236 = ptrtoint ptr %ring_index154.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %ring_index154.i, align 4
  %inc.i = add i16 %237, 1
  store i16 %inc.i, ptr %ring_index154.i, align 4
  %length157.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 9
  %238 = ptrtoint ptr %length157.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %length157.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %239)
  %cmp159.i = icmp eq i16 %inc.i, %239
  br i1 %cmp159.i, label %if.then161.i, label %if.else164.i

if.then161.i:                                     ; preds = %qla24xx_build_scsi_iocbs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %240 = ptrtoint ptr %ring_index154.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 0, ptr %ring_index154.i, align 4
  %ring.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 1
  %241 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ring.i, align 4
  br label %if.end166.i

if.else164.i:                                     ; preds = %qla24xx_build_scsi_iocbs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %243 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %ring_ptr.i, align 4
  %incdec.ptr.i = getelementptr %struct.cmd_a64_entry_t, ptr %244, i32 1
  br label %if.end166.i

if.end166.i:                                      ; preds = %if.else164.i, %if.then161.i
  %storemerge.i = phi ptr [ %incdec.ptr.i, %if.else164.i ], [ %242, %if.then161.i ]
  %245 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %storemerge.i, ptr %ring_ptr.i, align 4
  %246 = ptrtoint ptr %qpair3 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %qpair3, align 8
  %cmd_cnt.i = getelementptr inbounds %struct.qla_qpair, ptr %247, i32 0, i32 28
  %248 = ptrtoint ptr %cmd_cnt.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %cmd_cnt.i, align 8
  %inc168.i = add i32 %249, 1
  store i32 %inc168.i, ptr %cmd_cnt.i, align 8
  %flags169.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %250 = ptrtoint ptr %flags169.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %flags169.i, align 4
  %252 = or i16 %251, 1
  store i16 %252, ptr %flags169.i, align 4
  %req_q_in.i = getelementptr inbounds %struct.req_que, ptr %24, i32 0, i32 3
  %253 = ptrtoint ptr %req_q_in.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %req_q_in.i, align 4
  %255 = ptrtoint ptr %ring_index154.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %ring_index154.i, align 4
  %conv173.i = zext i16 %256 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !153
  tail call void @arm_heavy_mb() #14
  %257 = tail call i32 @llvm.bswap.i32(i32 %conv173.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %254, i32 %257) #14, !srcloc !154
  %flags174.i = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 8
  %258 = ptrtoint ptr %flags174.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %bf.load175.i = load volatile i32, ptr %flags174.i, align 8
  %259 = and i32 %bf.load175.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool177.not.i = icmp eq i32 %259, 0
  br i1 %tobool177.not.i, label %if.end166.i.if.end183.i_crit_edge, label %land.lhs.true178.i

if.end166.i.if.end183.i_crit_edge:                ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end183.i

land.lhs.true178.i:                               ; preds = %if.end166.i
  %ring_ptr179.i = getelementptr inbounds %struct.rsp_que, ptr %26, i32 0, i32 2
  %260 = ptrtoint ptr %ring_ptr179.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %ring_ptr179.i, align 4
  %signature.i = getelementptr inbounds %struct.response_t, ptr %261, i32 0, i32 6
  %262 = ptrtoint ptr %signature.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %signature.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559030611, i32 %263)
  %cmp180.not.i = icmp eq i32 %263, -559030611
  br i1 %cmp180.not.i, label %land.lhs.true178.i.if.end183.i_crit_edge, label %if.then182.i

land.lhs.true178.i.if.end183.i_crit_edge:         ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end183.i

if.then182.i:                                     ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qla24xx_process_response_queue(ptr noundef %5, ptr noundef %26) #14
  br label %if.end183.i

if.end183.i:                                      ; preds = %if.then182.i, %land.lhs.true178.i.if.end183.i_crit_edge, %if.end166.i.if.end183.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call10.i) #14
  br label %cleanup

queuing_error.i:                                  ; preds = %if.end109.i.queuing_error.i_crit_edge, %if.else83.i.queuing_error.i_crit_edge, %qla_get_iocbs.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv45362.i)
  %tobool185.not.i = icmp eq i16 %conv45362.i, 0
  br i1 %tobool185.not.i, label %queuing_error.i.if.end187.i_crit_edge, label %if.then186.i

queuing_error.i.if.end187.i_crit_edge:            ; preds = %queuing_error.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end187.i

if.then186.i:                                     ; preds = %queuing_error.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @scsi_dma_unmap(ptr noundef %1) #14
  br label %if.end187.i

if.end187.i:                                      ; preds = %if.then186.i, %queuing_error.i.if.end187.i_crit_edge, %if.then34.i.if.end187.i_crit_edge, %qla2xxx_get_next_handle.exit.i.if.end187.i_crit_edge, %for.cond.i.i.if.end187.i_crit_edge, %if.end26.i.if.end187.i_crit_edge
  %iores189.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2
  %264 = ptrtoint ptr %iores189.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %iores189.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %cond.i.i = icmp eq i8 %265, 0
  br i1 %cond.i.i, label %if.end187.i.qla_put_iocbs.exit.i_crit_edge, label %sw.default.i.i

if.end187.i.qla_put_iocbs.exit.i_crit_edge:       ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla_put_iocbs.exit.i

sw.default.i.i:                                   ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #16
  %266 = ptrtoint ptr %qpair3 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %qpair3, align 8
  %iocbs_used.i.i = getelementptr inbounds %struct.qla_qpair, ptr %267, i32 0, i32 27, i32 3
  %268 = ptrtoint ptr %iocbs_used.i.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %iocbs_used.i.i, align 2
  %iocb_cnt.i354.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2, i32 2
  %270 = ptrtoint ptr %iocb_cnt.i354.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %iocb_cnt.i354.i, align 2
  %272 = tail call i16 @llvm.usub.sat.i16(i16 %269, i16 %271) #14
  %273 = ptrtoint ptr %iocbs_used.i.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 %272, ptr %iocbs_used.i.i, align 2
  br label %qla_put_iocbs.exit.i

qla_put_iocbs.exit.i:                             ; preds = %sw.default.i.i, %if.end187.i.qla_put_iocbs.exit.i_crit_edge
  %274 = ptrtoint ptr %iores189.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 0, ptr %iores189.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call10.i) #14
  br label %cleanup

do.body24:                                        ; preds = %if.then16.do.body24_crit_edge, %if.end11.do.body24_crit_edge
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #14
  %rsp31 = getelementptr inbounds %struct.qla_qpair, ptr %9, i32 0, i32 13
  %275 = ptrtoint ptr %rsp31 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %rsp31, align 8
  %req32 = getelementptr inbounds %struct.qla_qpair, ptr %9, i32 0, i32 12
  %277 = ptrtoint ptr %req32 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %req32, align 4
  %marker_needed = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 18
  %279 = ptrtoint ptr %marker_needed to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %marker_needed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %cmp34.not = icmp eq i8 %280, 0
  br i1 %cmp34.not, label %do.body24.if.end44_crit_edge, label %if.then36

do.body24.if.end44_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then36:                                        ; preds = %do.body24
  %281 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %hw, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %282, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %284, i32 0, i32 44, i32 8
  %285 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %driver_data.i.i.i, align 4
  %call2.i = tail call ptr @__qla2x00_alloc_iocbs(ptr noundef %9, ptr noundef null) #14
  %cmp.i = icmp eq ptr %call2.i, null
  br i1 %cmp.i, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %286, i32 noundef 12326, ptr noundef nonnull @.str.32) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call28) #14
  br label %cleanup

if.end42:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  %287 = ptrtoint ptr %call2.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 4, ptr %call2.i, align 4
  %modifier.i = getelementptr inbounds %struct.mrk_entry_t, ptr %call2.i, i32 0, i32 6
  %288 = ptrtoint ptr %modifier.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 2, ptr %modifier.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !147
  tail call void @arm_heavy_mb() #14
  tail call void @qla2x00_start_iocbs(ptr noundef %5, ptr noundef %278) #14
  %289 = ptrtoint ptr %marker_needed to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 0, ptr %marker_needed, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %do.body24.if.end44_crit_edge
  %num_outstanding_cmds.i = getelementptr inbounds %struct.req_que, ptr %278, i32 0, i32 18
  %290 = ptrtoint ptr %num_outstanding_cmds.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %num_outstanding_cmds.i, align 4
  %conv.i = zext i16 %291 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %291)
  %cmp17.i = icmp ugt i16 %291, 1
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %if.end44.if.end276_crit_edge

if.end44.if.end276_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end276

for.body.lr.ph.i:                                 ; preds = %if.end44
  %current_outstanding_cmd.i = getelementptr inbounds %struct.req_que, ptr %278, i32 0, i32 17
  %292 = ptrtoint ptr %current_outstanding_cmd.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %current_outstanding_cmd.i, align 4
  %outstanding_cmds.i = getelementptr inbounds %struct.req_que, ptr %278, i32 0, i32 16
  %294 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %outstanding_cmds.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc8.i = add nuw nsw i32 %index.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.if.end276_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.if.end276_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end276

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %handle.019.i = phi i32 [ %293, %for.body.lr.ph.i ], [ %spec.store.select.i, %for.cond.i.for.body.i_crit_edge ]
  %index.018.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc8.i, %for.cond.i.for.body.i_crit_edge ]
  %inc.i430 = add i32 %handle.019.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i430, i32 %conv.i)
  %cmp4.i = icmp eq i32 %inc.i430, %conv.i
  %spec.store.select.i = select i1 %cmp4.i, i32 1, i32 %inc.i430
  %arrayidx.i431 = getelementptr ptr, ptr %295, i32 %spec.store.select.i
  %296 = ptrtoint ptr %arrayidx.i431 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %arrayidx.i431, align 4
  %tobool.not.i432 = icmp eq ptr %297, null
  br i1 %tobool.not.i432, label %qla2xxx_get_next_handle.exit, label %for.cond.i

qla2xxx_get_next_handle.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp46 = icmp eq i32 %spec.store.select.i, 0
  br i1 %cmp46, label %qla2xxx_get_next_handle.exit.if.end276_crit_edge, label %if.end49

qla2xxx_get_next_handle.exit.if.end276_crit_edge: ; preds = %qla2xxx_get_next_handle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end276

if.end49:                                         ; preds = %qla2xxx_get_next_handle.exit
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %298 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool51.not = icmp eq i32 %299, 0
  br i1 %tobool51.not, label %if.end49.if.end81_crit_edge, label %if.then52

if.end49.if.end81_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

if.then52:                                        ; preds = %if.end49
  %300 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %7, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %301, i32 0, i32 44
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %302 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %sdb.i, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %304 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %sc_data_direction, align 4
  %call55 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %303, i32 noundef %299, i32 noundef %305, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then52.if.end276_crit_edge, label %if.else, !prof !148

if.then52.if.end276_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end276

if.else:                                          ; preds = %if.then52
  %flags61 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %306 = ptrtoint ptr %flags61 to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %flags61, align 4
  %308 = or i16 %307, 1
  store i16 %308, ptr %flags61, align 4
  %309 = ptrtoint ptr %prot_op.i426 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %prot_op.i426, align 4
  %.off = add i8 %310, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then73, label %if.else.if.end81_crit_edge

if.else.if.end81_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

if.then73:                                        ; preds = %if.else
  %length.i437 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %311 = ptrtoint ptr %length.i437 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %length.i437, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %cmp.i439531 = icmp eq i32 %312, 0
  br i1 %cmp.i439531, label %if.then73.if.end81_crit_edge, label %if.end.i442.lr.ph

if.then73.if.end81_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

if.end.i442.lr.ph:                                ; preds = %if.then73
  %313 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %sdb.i, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  br label %if.end.i442

if.end.i442:                                      ; preds = %while.body.if.end.i442_crit_edge, %if.end.i442.lr.ph
  %nseg.0537 = phi i32 [ 0, %if.end.i442.lr.ph ], [ %inc, %while.body.if.end.i442_crit_edge ]
  %sgx.sroa.19.0535 = phi i32 [ 0, %if.end.i442.lr.ph ], [ %sgx.sroa.19.1, %while.body.if.end.i442_crit_edge ]
  %sgx.sroa.17.0534 = phi i32 [ 0, %if.end.i442.lr.ph ], [ %sgx.sroa.17.1, %while.body.if.end.i442_crit_edge ]
  %sgx.sroa.13.0533 = phi i32 [ 0, %if.end.i442.lr.ph ], [ %sgx.sroa.13.1.ph, %while.body.if.end.i442_crit_edge ]
  %sgx.sroa.10.0532 = phi ptr [ %314, %if.end.i442.lr.ph ], [ %sgx.sroa.10.1.ph, %while.body.if.end.i442_crit_edge ]
  %315 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %device, align 4
  %sector_size = getelementptr inbounds %struct.scsi_device, ptr %316, i32 0, i32 20
  %317 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %sector_size, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sgx.sroa.10.0532, i32 0, i32 4
  %319 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %dma_length.i, align 4
  %sub.i441 = sub i32 %320, %sgx.sroa.13.0533
  %add2.i = add i32 %sub.i441, %sgx.sroa.19.0535
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %318)
  %cmp3.not.i = icmp ult i32 %add2.i, %318
  %sub5.i = sub i32 %318, %sgx.sroa.19.0535
  %sgx.sroa.5.0 = select i1 %cmp3.not.i, i32 %sub.i441, i32 %sub5.i
  %add8.i = select i1 %cmp3.not.i, i32 0, i32 %318
  %sgx.sroa.17.1 = add i32 %add8.i, %sgx.sroa.17.0534
  %sgx.sroa.19.1 = select i1 %cmp3.not.i, i32 %add2.i, i32 0
  %add18.i = add i32 %sgx.sroa.5.0, %sgx.sroa.13.0533
  call void @__sanitizer_cov_trace_cmp4(i32 %320, i32 %add18.i)
  %cmp20.i = icmp eq i32 %320, %add18.i
  br i1 %cmp20.i, label %if.then21.i, label %if.end.i442.while.body_crit_edge

if.end.i442.while.body_crit_edge:                 ; preds = %if.end.i442
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.then21.i:                                      ; preds = %if.end.i442
  call void @__sanitizer_cov_trace_pc() #16
  %call.i444 = tail call ptr @sg_next(ptr noundef %sgx.sroa.10.0532) #14
  br label %while.body

while.body:                                       ; preds = %if.then21.i, %if.end.i442.while.body_crit_edge
  %sgx.sroa.10.1.ph = phi ptr [ %sgx.sroa.10.0532, %if.end.i442.while.body_crit_edge ], [ %call.i444, %if.then21.i ]
  %sgx.sroa.13.1.ph = phi i32 [ %add18.i, %if.end.i442.while.body_crit_edge ], [ 0, %if.then21.i ]
  %inc = add i32 %nseg.0537, 1
  %cmp.i439 = icmp eq i32 %sgx.sroa.17.1, %312
  br i1 %cmp.i439, label %while.body.if.end81_crit_edge, label %while.body.if.end.i442_crit_edge

while.body.if.end.i442_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i442

while.body.if.end81_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

if.end81:                                         ; preds = %while.body.if.end81_crit_edge, %if.then73.if.end81_crit_edge, %if.else.if.end81_crit_edge, %if.end49.if.end81_crit_edge
  %nseg.1 = phi i32 [ 0, %if.end49.if.end81_crit_edge ], [ %call55, %if.else.if.end81_crit_edge ], [ 0, %if.then73.if.end81_crit_edge ], [ %inc, %while.body.if.end81_crit_edge ]
  %321 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %u, align 8
  %prot_op.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %322, i32 0, i32 10
  %323 = ptrtoint ptr %prot_op.i.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %prot_op.i.i, align 4
  %325 = zext i8 %324 to i64
  call void @__sanitizer_cov_trace_switch(i64 %325, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %324, label %sw.default.i [
    i8 3, label %if.end81.sw.epilog.sink.split.i_crit_edge
    i8 4, label %if.end81.sw.epilog.i_crit_edge
    i8 1, label %if.end81.sw.epilog.i_crit_edge548
    i8 2, label %if.end81.sw.epilog.sink.split.i_crit_edge549
    i8 5, label %if.end81.sw.bb16.i_crit_edge
    i8 6, label %if.end81.sw.bb16.i_crit_edge550
  ]

if.end81.sw.bb16.i_crit_edge550:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16.i

if.end81.sw.bb16.i_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16.i

if.end81.sw.epilog.sink.split.i_crit_edge549:     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i

if.end81.sw.epilog.i_crit_edge548:                ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end81.sw.epilog.i_crit_edge:                   ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end81.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i

sw.bb16.i:                                        ; preds = %if.end81.sw.bb16.i_crit_edge, %if.end81.sw.bb16.i_crit_edge550
  %prot_flags.i = getelementptr inbounds %struct.scsi_cmnd, ptr %322, i32 0, i32 12
  %326 = ptrtoint ptr %prot_flags.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %prot_flags.i, align 2
  %328 = and i8 %327, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %328)
  %tobool.not.i448 = icmp eq i8 %328, 0
  %..i = select i1 %tobool.not.i448, i16 2, i16 6
  br label %sw.epilog.sink.split.i

sw.default.i:                                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.default.i, %sw.bb16.i, %if.end81.sw.epilog.sink.split.i_crit_edge, %if.end81.sw.epilog.sink.split.i_crit_edge549
  %.sink.i = phi i16 [ 2, %sw.default.i ], [ 1, %if.end81.sw.epilog.sink.split.i_crit_edge ], [ 1, %if.end81.sw.epilog.sink.split.i_crit_edge549 ], [ %..i, %sw.bb16.i ]
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end81.sw.epilog.i_crit_edge, %if.end81.sw.epilog.i_crit_edge548
  %fw_prot_opts.0 = phi i16 [ %.sink.i, %sw.epilog.sink.split.i ], [ 0, %if.end81.sw.epilog.i_crit_edge ], [ 0, %if.end81.sw.epilog.i_crit_edge548 ]
  %prot_flags27.i = getelementptr inbounds %struct.scsi_cmnd, ptr %322, i32 0, i32 12
  %329 = ptrtoint ptr %prot_flags27.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %prot_flags27.i, align 2
  %331 = and i8 %330, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %tobool30.not.i = icmp eq i8 %331, 0
  %332 = or i16 %fw_prot_opts.0, 16
  %spec.select = select i1 %tobool30.not.i, i16 %332, i16 %fw_prot_opts.0
  %prot_sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %322, i32 0, i32 18
  %333 = ptrtoint ptr %prot_sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %prot_sdb.i.i, align 4
  %tobool.not.i.i449 = icmp eq ptr %334, null
  br i1 %tobool.not.i.i449, label %sw.epilog.i.if.end123_crit_edge, label %qla24xx_configure_prot_mode.exit

sw.epilog.i.if.end123_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

qla24xx_configure_prot_mode.exit:                 ; preds = %sw.epilog.i
  %nents.i.i450 = getelementptr inbounds %struct.sg_table, ptr %334, i32 0, i32 1
  %335 = ptrtoint ptr %nents.i.i450 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %nents.i.i450, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %336)
  %tobool84.not = icmp eq i32 %336, 0
  br i1 %tobool84.not, label %qla24xx_configure_prot_mode.exit.if.end123_crit_edge, label %if.then85

qla24xx_configure_prot_mode.exit.if.end123_crit_edge: ; preds = %qla24xx_configure_prot_mode.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

if.then85:                                        ; preds = %qla24xx_configure_prot_mode.exit
  %337 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %7, align 128
  %dev87 = getelementptr inbounds %struct.pci_dev, ptr %338, i32 0, i32 44
  %prot_sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 18
  %339 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i452 = icmp eq ptr %340, null
  br i1 %tobool.not.i452, label %if.then85.scsi_prot_sg_count.exit_crit_edge, label %cond.true.i456

if.then85.scsi_prot_sg_count.exit_crit_edge:      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_prot_sg_count.exit

cond.true.i456:                                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #16
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %340, align 4
  %nents.i455 = getelementptr inbounds %struct.sg_table, ptr %340, i32 0, i32 1
  %343 = ptrtoint ptr %nents.i455 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %nents.i455, align 4
  br label %scsi_prot_sg_count.exit

scsi_prot_sg_count.exit:                          ; preds = %cond.true.i456, %if.then85.scsi_prot_sg_count.exit_crit_edge
  %cond.i520 = phi ptr [ %342, %cond.true.i456 ], [ null, %if.then85.scsi_prot_sg_count.exit_crit_edge ]
  %cond.i457 = phi i32 [ %344, %cond.true.i456 ], [ 0, %if.then85.scsi_prot_sg_count.exit_crit_edge ]
  %sc_data_direction90 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %345 = ptrtoint ptr %sc_data_direction90 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %sc_data_direction90, align 4
  %call91 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev87, ptr noundef %cond.i520, i32 noundef %cond.i457, i32 noundef %346, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %scsi_prot_sg_count.exit.if.end276_crit_edge, label %if.else102, !prof !148

scsi_prot_sg_count.exit.if.end276_crit_edge:      ; preds = %scsi_prot_sg_count.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end276

if.else102:                                       ; preds = %scsi_prot_sg_count.exit
  %flags103 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %347 = ptrtoint ptr %flags103 to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %flags103, align 4
  %349 = or i16 %348, 16
  store i16 %349, ptr %flags103, align 4
  %350 = ptrtoint ptr %prot_op.i426 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %prot_op.i426, align 4
  %.off526 = add i8 %351, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off526)
  %switch527 = icmp ult i8 %.off526, 2
  br i1 %switch527, label %if.then117, label %if.else102.if.end123_crit_edge

if.else102.if.end123_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

if.then117:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #16
  %length.i460 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %352 = ptrtoint ptr %length.i460 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %length.i460, align 4
  %device119 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %354 = ptrtoint ptr %device119 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %device119, align 4
  %sector_size120 = getelementptr inbounds %struct.scsi_device, ptr %355, i32 0, i32 20
  %356 = ptrtoint ptr %sector_size120 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %sector_size120, align 4
  %div = udiv i32 %353, %357
  br label %if.end123

if.end123:                                        ; preds = %if.then117, %if.else102.if.end123_crit_edge, %qla24xx_configure_prot_mode.exit.if.end123_crit_edge, %sw.epilog.i.if.end123_crit_edge
  %nseg.2 = phi i32 [ %div, %if.then117 ], [ 0, %qla24xx_configure_prot_mode.exit.if.end123_crit_edge ], [ 0, %sw.epilog.i.if.end123_crit_edge ], [ %call91, %if.else102.if.end123_crit_edge ]
  %conv124 = trunc i32 %nseg.2 to i16
  %add = add i32 %nseg.2, %nseg.1
  %conv126 = trunc i32 %add to i16
  %iores = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2
  %358 = ptrtoint ptr %iores to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 1, ptr %iores, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv126)
  %cmp.i461 = icmp ugt i16 %conv126, 1
  br i1 %cmp.i461, label %if.then.i464, label %if.end123.qla24xx_calc_iocbs.exit_crit_edge

if.end123.qla24xx_calc_iocbs.exit_crit_edge:      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_calc_iocbs.exit

if.then.i464:                                     ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i462 = add i16 %conv126, -1
  %sub.i462.frozen = freeze i16 %sub.i462
  %div12.i = udiv i16 %sub.i462.frozen, 5
  %359 = mul i16 %div12.i, 5
  %rem34.i.decomposed = sub i16 %sub.i462.frozen, %359
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem34.i.decomposed)
  %tobool.not.i463 = icmp eq i16 %rem34.i.decomposed, 0
  %spec.select.v.i = select i1 %tobool.not.i463, i16 1, i16 2
  %spec.select.i = add nuw nsw i16 %spec.select.v.i, %div12.i
  br label %qla24xx_calc_iocbs.exit

qla24xx_calc_iocbs.exit:                          ; preds = %if.then.i464, %if.end123.qla24xx_calc_iocbs.exit_crit_edge
  %iocbs.0.i = phi i16 [ 1, %if.end123.qla24xx_calc_iocbs.exit_crit_edge ], [ %spec.select.i, %if.then.i464 ]
  %iocb_cnt = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2, i32 2
  %360 = ptrtoint ptr %iocb_cnt to i32
  call void @__asan_store2_noabort(i32 %360)
  store i16 %iocbs.0.i, ptr %iocb_cnt, align 2
  %361 = ptrtoint ptr %qpair3 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %qpair3, align 8
  %vha.i = getelementptr inbounds %struct.qla_qpair, ptr %362, i32 0, i32 4
  %363 = ptrtoint ptr %vha.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %vha.i, align 8
  %hw.i465 = getelementptr inbounds %struct.scsi_qla_host, ptr %364, i32 0, i32 52
  %365 = ptrtoint ptr %hw.i465 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %hw.i465, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xenforce_iocb_limit to i32))
  %367 = load i32, ptr @ql2xenforce_iocb_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %367)
  %tobool.not.i466 = icmp eq i32 %367, 0
  br i1 %tobool.not.i466, label %if.then.i467, label %if.end.i472

if.then.i467:                                     ; preds = %qla24xx_calc_iocbs.exit
  call void @__sanitizer_cov_trace_pc() #16
  %368 = ptrtoint ptr %iores to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 0, ptr %iores, align 2
  br label %if.end134

if.end.i472:                                      ; preds = %qla24xx_calc_iocbs.exit
  %369 = ptrtoint ptr %iocb_cnt to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %iocb_cnt, align 2
  %conv.i469 = zext i16 %370 to i32
  %iocbs_used1.i = getelementptr inbounds %struct.qla_qpair, ptr %362, i32 0, i32 27, i32 3
  %371 = ptrtoint ptr %iocbs_used1.i to i32
  call void @__asan_load2_noabort(i32 %371)
  %372 = load i16, ptr %iocbs_used1.i, align 2
  %conv2.i = zext i16 %372 to i32
  %add.i470 = add nuw nsw i32 %conv2.i, %conv.i469
  %iocbs_qp_limit.i = getelementptr inbounds %struct.qla_qpair, ptr %362, i32 0, i32 27, i32 2
  %373 = ptrtoint ptr %iocbs_qp_limit.i to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %iocbs_qp_limit.i, align 4
  %conv4.i = zext i16 %374 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i470, i32 %conv4.i)
  %cmp.i471 = icmp ult i32 %add.i470, %conv4.i
  br i1 %cmp.i471, label %if.then6.i, label %if.else.i473

if.then6.i:                                       ; preds = %if.end.i472
  call void @__sanitizer_cov_trace_pc() #16
  %conv13.i = trunc i32 %add.i470 to i16
  %375 = ptrtoint ptr %iocbs_used1.i to i32
  call void @__asan_store2_noabort(i32 %375)
  store i16 %conv13.i, ptr %iocbs_used1.i, align 2
  br label %if.end134

if.else.i473:                                     ; preds = %if.end.i472
  %base_qpair.i = getelementptr inbounds %struct.qla_hw_data, ptr %366, i32 0, i32 34
  %376 = ptrtoint ptr %base_qpair.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %base_qpair.i, align 4
  %iocbs_used15.i = getelementptr inbounds %struct.qla_qpair, ptr %377, i32 0, i32 27, i32 3
  %378 = ptrtoint ptr %iocbs_used15.i to i32
  call void @__asan_load2_noabort(i32 %378)
  %379 = load i16, ptr %iocbs_used15.i, align 2
  %max_qpairs.i = getelementptr inbounds %struct.qla_hw_data, ptr %366, i32 0, i32 32
  %380 = ptrtoint ptr %max_qpairs.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %max_qpairs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %381)
  %cmp1869.not.i = icmp eq i8 %381, 0
  br i1 %cmp1869.not.i, label %if.else.i473.for.end.i_crit_edge, label %for.body.lr.ph.i474

if.else.i473.for.end.i_crit_edge:                 ; preds = %if.else.i473
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i474:                              ; preds = %if.else.i473
  %queue_pair_map.i = getelementptr inbounds %struct.qla_hw_data, ptr %366, i32 0, i32 26
  %382 = ptrtoint ptr %queue_pair_map.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %queue_pair_map.i, align 4
  %wide.trip.count.i = zext i8 %381 to i32
  br label %for.body.i476

for.body.i476:                                    ; preds = %for.inc.i.for.body.i476_crit_edge, %for.body.lr.ph.i474
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i474 ], [ %indvars.iv.next.i, %for.inc.i.for.body.i476_crit_edge ]
  %iocbs_used.070.i = phi i16 [ %379, %for.body.lr.ph.i474 ], [ %iocbs_used.1.i, %for.inc.i.for.body.i476_crit_edge ]
  %arrayidx.i475 = getelementptr ptr, ptr %383, i32 %indvars.iv.i
  %384 = ptrtoint ptr %arrayidx.i475 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %arrayidx.i475, align 4
  %tobool20.not.i = icmp eq ptr %385, null
  br i1 %tobool20.not.i, label %for.body.i476.for.inc.i_crit_edge, label %if.then21.i477

for.body.i476.for.inc.i_crit_edge:                ; preds = %for.body.i476
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then21.i477:                                   ; preds = %for.body.i476
  call void @__sanitizer_cov_trace_pc() #16
  %iocbs_used26.i = getelementptr inbounds %struct.qla_qpair, ptr %385, i32 0, i32 27, i32 3
  %386 = ptrtoint ptr %iocbs_used26.i to i32
  call void @__asan_load2_noabort(i32 %386)
  %387 = load i16, ptr %iocbs_used26.i, align 2
  %add29.i = add i16 %387, %iocbs_used.070.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then21.i477, %for.body.i476.for.inc.i_crit_edge
  %iocbs_used.1.i = phi i16 [ %add29.i, %if.then21.i477 ], [ %iocbs_used.070.i, %for.body.i476.for.inc.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i478 = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i478, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i476_crit_edge

for.inc.i.for.body.i476_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i476

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.else.i473.for.end.i_crit_edge
  %iocbs_used.0.lcssa.i = phi i16 [ %379, %if.else.i473.for.end.i_crit_edge ], [ %iocbs_used.1.i, %for.inc.i.for.end.i_crit_edge ]
  %conv34.i = zext i16 %iocbs_used.0.lcssa.i to i32
  %add35.i = add nuw nsw i32 %conv34.i, %conv.i469
  %iocbs_limit.i = getelementptr inbounds %struct.qla_qpair, ptr %362, i32 0, i32 27, i32 1
  %388 = ptrtoint ptr %iocbs_limit.i to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %iocbs_limit.i, align 2
  %conv37.i = zext i16 %389 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add35.i, i32 %conv37.i)
  %cmp38.i = icmp ult i32 %add35.i, %conv37.i
  br i1 %cmp38.i, label %if.then40.i, label %qla_get_iocbs.exit

if.then40.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %add46.i = add i16 %372, %370
  %390 = ptrtoint ptr %iocbs_used1.i to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 %add46.i, ptr %iocbs_used1.i, align 2
  br label %if.end134

qla_get_iocbs.exit:                               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %391 = ptrtoint ptr %iores to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 0, ptr %iores, align 2
  br label %if.end276

if.end134:                                        ; preds = %if.then40.i, %if.then6.i, %if.then.i467
  %cnt135 = getelementptr inbounds %struct.req_que, ptr %278, i32 0, i32 8
  %392 = ptrtoint ptr %cnt135 to i32
  call void @__asan_load2_noabort(i32 %392)
  %393 = load i16, ptr %cnt135, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %393)
  %cmp139 = icmp ult i16 %393, 3
  br i1 %cmp139, label %if.then141, label %if.end134.if.end200_crit_edge

if.end134.if.end200_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end200

if.then141:                                       ; preds = %if.end134
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %7, i32 0, i32 54
  %394 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %isp_type, align 8
  %396 = and i32 %395, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %396)
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %if.else165, label %if.then164

if.then164:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #16
  %out_ptr = getelementptr inbounds %struct.req_que, ptr %278, i32 0, i32 7
  %398 = ptrtoint ptr %out_ptr to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %out_ptr, align 4
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_load2_noabort(i32 %400)
  %401 = load i16, ptr %399, align 2
  br label %if.end171

if.else165:                                       ; preds = %if.then141
  %req_q_out = getelementptr inbounds %struct.req_que, ptr %278, i32 0, i32 4
  %402 = ptrtoint ptr %req_q_out to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %req_q_out, align 4
  %404 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %403) #14, !srcloc !155
  %405 = tail call i32 @llvm.bswap.i32(i32 %404) #14
  %conv167 = trunc i32 %405 to i16
  %call168 = tail call zeroext i1 @qla2x00_check_reg16_for_disconnect(ptr noundef %5, i16 noundef zeroext %conv167) #14
  br i1 %call168, label %if.else165.if.end276_crit_edge, label %if.else165.if.end171_crit_edge

if.else165.if.end171_crit_edge:                   ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171

if.else165.if.end276_crit_edge:                   ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end276

if.end171:                                        ; preds = %if.else165.if.end171_crit_edge, %if.then164
  %cnt.0 = phi i16 [ %401, %if.then164 ], [ %conv167, %if.else165.if.end171_crit_edge ]
  %ring_index = getelementptr inbounds %struct.req_que, ptr %278, i32 0, i32 5
  %406 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %406)
  %407 = load i16, ptr %ring_index, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %cnt.0, i16 %407)
  %cmp174 = icmp ugt i16 %cnt.0, %407
  br i1 %cmp174, label %if.then176, label %if.else182

if.then176:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i16 %cnt.0, %407
  br label %if.end191

if.else182:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  %length = getelementptr inbounds %struct.req_que, ptr %278, i32 0, i32 9
  %408 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %length, align 2
  %sub187.neg = sub i16 %cnt.0, %407
  %sub188 = add i16 %sub187.neg, %409
  br label %if.end191

if.end191:                                        ; preds = %if.else182, %if.then176
  %storemerge422 = phi i16 [ %sub188, %if.else182 ], [ %sub, %if.then176 ]
  %410 = ptrtoint ptr %cnt135 to i32
  call void @__asan_store2_noabort(i32 %410)
  store i16 %storemerge422, ptr %cnt135, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %storemerge422)
  %cmp196 = icmp ult i16 %storemerge422, 3
  br i1 %cmp196, label %if.end191.if.end276_crit_edge, label %if.end191.if.end200_crit_edge

if.end191.if.end200_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end200

if.end191.if.end276_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end276

if.end200:                                        ; preds = %if.end191.if.end200_crit_edge, %if.end134.if.end200_crit_edge
  %411 = ptrtoint ptr %current_outstanding_cmd.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %spec.store.select.i, ptr %current_outstanding_cmd.i, align 4
  %412 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %outstanding_cmds.i, align 4
  %arrayidx = getelementptr ptr, ptr %413, i32 %spec.store.select.i
  %414 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %414)
  store ptr %sp, ptr %arrayidx, align 4
  %handle202 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %415 = ptrtoint ptr %handle202 to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 %spec.store.select.i, ptr %handle202, align 8
  %416 = inttoptr i32 %spec.store.select.i to ptr
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 23
  %417 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %416, ptr %host_scribble, align 4
  %418 = ptrtoint ptr %cnt135 to i32
  call void @__asan_load2_noabort(i32 %418)
  %419 = load i16, ptr %cnt135, align 4
  %sub206 = add i16 %419, -1
  store i16 %sub206, ptr %cnt135, align 4
  %ring_ptr = getelementptr inbounds %struct.req_que, ptr %278, i32 0, i32 2
  %420 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %ring_ptr, align 4
  %id = getelementptr inbounds %struct.req_que, ptr %278, i32 0, i32 12
  %422 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %422)
  %423 = load i16, ptr %id, align 4
  %conv.i480 = zext i16 %423 to i32
  %shl.i = shl nuw i32 %conv.i480, 16
  %conv1.i = and i32 %spec.store.select.i, 65535
  %or.i = or i32 %shl.i, %conv1.i
  %handle210 = getelementptr inbounds %struct.cmd_type_crc_2, ptr %421, i32 0, i32 4
  %424 = ptrtoint ptr %handle210 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %or.i, ptr %handle210, align 4
  %add.ptr = getelementptr i32, ptr %421, i32 2
  %425 = call ptr @memset(ptr %add.ptr, i32 0, i32 56)
  %426 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %fcport, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %427, i32 0, i32 7
  %428 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %428)
  %429 = load i16, ptr %loop_id, align 4
  %430 = tail call i16 @llvm.bswap.i16(i16 %429)
  %431 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %431)
  store i16 %430, ptr %add.ptr, align 4
  %432 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %fcport, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %433, i32 0, i32 6
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %434 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %al_pa, align 2
  %port_id = getelementptr inbounds %struct.cmd_type_crc_2, ptr %421, i32 0, i32 15
  %436 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 %435, ptr %port_id, align 4
  %437 = load ptr, ptr %fcport, align 4
  %d_id215 = getelementptr inbounds %struct.fc_port, ptr %437, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id215, i32 0, i32 1
  %438 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %area, align 1
  %arrayidx217 = getelementptr %struct.cmd_type_crc_2, ptr %421, i32 0, i32 15, i32 1
  %440 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 %439, ptr %arrayidx217, align 1
  %441 = load ptr, ptr %fcport, align 4
  %d_id219 = getelementptr inbounds %struct.fc_port, ptr %441, i32 0, i32 6
  %442 = ptrtoint ptr %d_id219 to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %d_id219, align 8
  %arrayidx221 = getelementptr %struct.cmd_type_crc_2, ptr %421, i32 0, i32 15, i32 2
  %444 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store1_noabort(i32 %444)
  store i8 %443, ptr %arrayidx221, align 2
  %device222 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %445 = ptrtoint ptr %device222 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %device222, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %446, i32 0, i32 18
  %447 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %447)
  %448 = load i64, ptr %lun, align 8
  %lun223 = getelementptr inbounds %struct.cmd_type_crc_2, ptr %421, i32 0, i32 9
  tail call void @int_to_scsilun(i64 noundef %448, ptr noundef %lun223) #14
  %incdec.ptr1.i = getelementptr %struct.cmd_type_crc_2, ptr %421, i32 0, i32 9, i32 0, i32 4
  %449 = ptrtoint ptr %lun223 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %lun223, align 4
  %451 = tail call i32 @llvm.bswap.i32(i32 %450) #14
  %452 = ptrtoint ptr %lun223 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %451, ptr %lun223, align 4
  %453 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %incdec.ptr1.i, align 4
  %455 = tail call i32 @llvm.bswap.i32(i32 %454) #14
  %456 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 %455, ptr %incdec.ptr1.i, align 4
  %457 = tail call i16 @llvm.bswap.i16(i16 %conv126)
  %dseg_count = getelementptr inbounds %struct.cmd_type_crc_2, ptr %421, i32 0, i32 7
  %458 = ptrtoint ptr %dseg_count to i32
  call void @__asan_store2_noabort(i32 %458)
  store i16 %457, ptr %dseg_count, align 4
  %459 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %ring_ptr, align 4
  %call227 = tail call fastcc i32 @qla24xx_build_scsi_crc_2_iocbs(ptr noundef %sp, ptr noundef %460, i16 noundef zeroext %conv126, i16 noundef zeroext %conv124, i16 noundef zeroext %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %cmp228.not = icmp eq i32 %call227, 0
  br i1 %cmp228.not, label %if.end231, label %if.then268

if.end231:                                        ; preds = %if.end200
  %entry_count = getelementptr inbounds %struct.cmd_type_crc_2, ptr %421, i32 0, i32 1
  %461 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %461)
  store i8 1, ptr %entry_count, align 1
  %timeout = getelementptr inbounds %struct.cmd_type_crc_2, ptr %421, i32 0, i32 6
  %462 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %462)
  store i16 0, ptr %timeout, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !168
  tail call void @arm_heavy_mb() #14
  %ring_index236 = getelementptr inbounds %struct.req_que, ptr %278, i32 0, i32 5
  %463 = ptrtoint ptr %ring_index236 to i32
  call void @__asan_load2_noabort(i32 %463)
  %464 = load i16, ptr %ring_index236, align 4
  %inc237 = add i16 %464, 1
  store i16 %inc237, ptr %ring_index236, align 4
  %length240 = getelementptr inbounds %struct.req_que, ptr %278, i32 0, i32 9
  %465 = ptrtoint ptr %length240 to i32
  call void @__asan_load2_noabort(i32 %465)
  %466 = load i16, ptr %length240, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc237, i16 %466)
  %cmp242 = icmp eq i16 %inc237, %466
  br i1 %cmp242, label %if.then244, label %if.else247

if.then244:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #16
  %467 = ptrtoint ptr %ring_index236 to i32
  call void @__asan_store2_noabort(i32 %467)
  store i16 0, ptr %ring_index236, align 4
  %ring = getelementptr inbounds %struct.req_que, ptr %278, i32 0, i32 1
  %468 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %ring, align 4
  br label %if.end249

if.else247:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #16
  %470 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %ring_ptr, align 4
  %incdec.ptr = getelementptr %struct.cmd_a64_entry_t, ptr %471, i32 1
  br label %if.end249

if.end249:                                        ; preds = %if.else247, %if.then244
  %storemerge = phi ptr [ %incdec.ptr, %if.else247 ], [ %469, %if.then244 ]
  %472 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_store4_noabort(i32 %472)
  store ptr %storemerge, ptr %ring_ptr, align 4
  %473 = ptrtoint ptr %qpair3 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %qpair3, align 8
  %cmd_cnt = getelementptr inbounds %struct.qla_qpair, ptr %474, i32 0, i32 28
  %475 = ptrtoint ptr %cmd_cnt to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %cmd_cnt, align 8
  %inc251 = add i32 %476, 1
  store i32 %inc251, ptr %cmd_cnt, align 8
  %req_q_in = getelementptr inbounds %struct.req_que, ptr %278, i32 0, i32 3
  %477 = ptrtoint ptr %req_q_in to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %req_q_in, align 4
  %479 = ptrtoint ptr %ring_index236 to i32
  call void @__asan_load2_noabort(i32 %479)
  %480 = load i16, ptr %ring_index236, align 4
  %conv253 = zext i16 %480 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !153
  tail call void @arm_heavy_mb() #14
  %481 = tail call i32 @llvm.bswap.i32(i32 %conv253) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %478, i32 %481) #14, !srcloc !154
  %flags254 = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 8
  %482 = ptrtoint ptr %flags254 to i32
  call void @__asan_load4_noabort(i32 %482)
  %bf.load255 = load volatile i32, ptr %flags254, align 8
  %483 = and i32 %bf.load255, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %483)
  %tobool258.not = icmp eq i32 %483, 0
  br i1 %tobool258.not, label %if.end249.if.end264_crit_edge, label %land.lhs.true259

if.end249.if.end264_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end264

land.lhs.true259:                                 ; preds = %if.end249
  %ring_ptr260 = getelementptr inbounds %struct.rsp_que, ptr %276, i32 0, i32 2
  %484 = ptrtoint ptr %ring_ptr260 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %ring_ptr260, align 4
  %signature = getelementptr inbounds %struct.response_t, ptr %485, i32 0, i32 6
  %486 = ptrtoint ptr %signature to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %signature, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559030611, i32 %487)
  %cmp261.not = icmp eq i32 %487, -559030611
  br i1 %cmp261.not, label %land.lhs.true259.if.end264_crit_edge, label %if.then263

land.lhs.true259.if.end264_crit_edge:             ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end264

if.then263:                                       ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qla24xx_process_response_queue(ptr noundef %5, ptr noundef %276) #14
  br label %if.end264

if.end264:                                        ; preds = %if.then263, %land.lhs.true259.if.end264_crit_edge, %if.end249.if.end264_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call28) #14
  br label %cleanup

if.then268:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #16
  %488 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %outstanding_cmds.i, align 4
  %arrayidx270 = getelementptr ptr, ptr %489, i32 %spec.store.select.i
  %490 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_store4_noabort(i32 %490)
  store ptr null, ptr %arrayidx270, align 4
  %491 = ptrtoint ptr %cnt135 to i32
  call void @__asan_load2_noabort(i32 %491)
  %492 = load i16, ptr %cnt135, align 4
  %add274 = add i16 %492, 1
  store i16 %add274, ptr %cnt135, align 4
  br label %if.end276

if.end276:                                        ; preds = %if.then268, %if.end191.if.end276_crit_edge, %if.else165.if.end276_crit_edge, %qla_get_iocbs.exit, %scsi_prot_sg_count.exit.if.end276_crit_edge, %if.then52.if.end276_crit_edge, %qla2xxx_get_next_handle.exit.if.end276_crit_edge, %for.cond.i.if.end276_crit_edge, %if.end44.if.end276_crit_edge
  %iores278 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2
  %493 = ptrtoint ptr %iores278 to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %iores278, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %494)
  %cond.i484 = icmp eq i8 %494, 0
  br i1 %cond.i484, label %if.end276.qla_put_iocbs.exit_crit_edge, label %sw.default.i486

if.end276.qla_put_iocbs.exit_crit_edge:           ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla_put_iocbs.exit

sw.default.i486:                                  ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #16
  %495 = ptrtoint ptr %qpair3 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %qpair3, align 8
  %iocbs_used.i = getelementptr inbounds %struct.qla_qpair, ptr %496, i32 0, i32 27, i32 3
  %497 = ptrtoint ptr %iocbs_used.i to i32
  call void @__asan_load2_noabort(i32 %497)
  %498 = load i16, ptr %iocbs_used.i, align 2
  %iocb_cnt.i485 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 2, i32 2
  %499 = ptrtoint ptr %iocb_cnt.i485 to i32
  call void @__asan_load2_noabort(i32 %499)
  %500 = load i16, ptr %iocb_cnt.i485, align 2
  %501 = tail call i16 @llvm.usub.sat.i16(i16 %498, i16 %500) #14
  %502 = ptrtoint ptr %iocbs_used.i to i32
  call void @__asan_store2_noabort(i32 %502)
  store i16 %501, ptr %iocbs_used.i, align 2
  br label %qla_put_iocbs.exit

qla_put_iocbs.exit:                               ; preds = %sw.default.i486, %if.end276.qla_put_iocbs.exit_crit_edge
  %503 = ptrtoint ptr %iores278 to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 0, ptr %iores278, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call28) #14
  br label %cleanup

cleanup:                                          ; preds = %qla_put_iocbs.exit, %if.end264, %if.then40, %qla_put_iocbs.exit.i, %if.end183.i, %if.then22.i, %if.then.i, %if.then9, %if.then
  %retval.0 = phi i32 [ 258, %if.then40 ], [ 258, %qla_put_iocbs.exit ], [ 0, %if.end264 ], [ 2, %if.then9 ], [ 2, %if.then ], [ %call.i, %if.then.i ], [ 258, %if.then22.i ], [ 258, %qla_put_iocbs.exit.i ], [ 0, %if.end183.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__qla2x00_alloc_iocbs(ptr nocapture noundef %qpair, ptr noundef %sp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.qla_qpair, ptr %qpair, i32 0, i32 4
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %req2 = getelementptr inbounds %struct.qla_qpair, ptr %qpair, i32 0, i32 12
  %4 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req2, align 4
  %mqenable = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %mqenable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mqenable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cond.true_crit_edge

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true

lor.lhs.false:                                    ; preds = %entry
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %8 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %isp_type, align 8
  %10 = and i32 %9, 45711360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %cond.false, label %lor.lhs.false.cond.true_crit_edge

lor.lhs.false.cond.true_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true

cond.true:                                        ; preds = %lor.lhs.false.cond.true_crit_edge, %entry.cond.true_crit_edge
  %mqiobase = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 20
  %12 = ptrtoint ptr %mqiobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mqiobase, align 32
  %id = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 12
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %id, align 4
  %conv35 = zext i16 %15 to i32
  %mul = shl nuw nsw i32 %conv35, 12
  %add.ptr = getelementptr i8, ptr %13, i32 %mul
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %17, %cond.false ]
  %tobool36.not = icmp eq ptr %sp, null
  br i1 %tobool36.not, label %cond.end.if.end_crit_edge, label %land.lhs.true

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %type = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 11
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %19)
  %cmp.not = icmp eq i16 %19, 8
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %iocbs = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 13
  %20 = ptrtoint ptr %iocbs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iocbs, align 4
  %conv39 = trunc i32 %21 to i16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %cond.end.if.end_crit_edge
  %req_cnt.0 = phi i16 [ %conv39, %if.then ], [ 1, %land.lhs.true.if.end_crit_edge ], [ 1, %cond.end.if.end_crit_edge ]
  %cnt40 = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 8
  %22 = ptrtoint ptr %cnt40 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cnt40, align 4
  %conv41 = zext i16 %23 to i32
  %conv42 = zext i16 %req_cnt.0 to i32
  %add = add nuw nsw i32 %conv42, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv41)
  %cmp43 = icmp ugt i32 %add, %conv41
  br i1 %cmp43, label %if.then45, label %if.end.if.end172_crit_edge

if.end.if.end172_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end172

if.then45:                                        ; preds = %if.end
  %use_shadow_reg = getelementptr inbounds %struct.qla_qpair, ptr %qpair, i32 0, i32 6
  %24 = ptrtoint ptr %use_shadow_reg to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %use_shadow_reg, align 64
  %25 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool46.not = icmp eq i8 %25, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #16
  %out_ptr = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %out_ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %out_ptr, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %27, align 2
  br label %if.end139

if.else:                                          ; preds = %if.then45
  br i1 %tobool.not, label %lor.lhs.false51, label %if.else.if.then86_crit_edge

if.else.if.then86_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

lor.lhs.false51:                                  ; preds = %if.else
  %isp_type52 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %30 = ptrtoint ptr %isp_type52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %isp_type52, align 8
  %32 = and i32 %31, 45711360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %if.else88, label %lor.lhs.false51.if.then86_crit_edge

lor.lhs.false51.if.then86_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

if.then86:                                        ; preds = %lor.lhs.false51.if.then86_crit_edge, %if.else.if.then86_crit_edge
  %req_q_out = getelementptr inbounds %struct.device_reg_25xxmq, ptr %cond, i32 0, i32 1
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %req_q_out) #14, !srcloc !155
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !169
  %conv87 = trunc i32 %35 to i16
  br label %if.end139

if.else88:                                        ; preds = %lor.lhs.false51
  %36 = and i32 %31, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %if.else102, label %if.then98

if.then98:                                        ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #16
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond) #14, !srcloc !155
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !169
  %conv101 = trunc i32 %39 to i16
  br label %if.end139

if.else102:                                       ; preds = %if.else88
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %40 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %device_type, align 4
  %and103 = and i32 %41, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.else109, label %if.then105

if.then105:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #16
  %req_q_out106 = getelementptr inbounds %struct.device_reg_24xx, ptr %cond, i32 0, i32 7
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %req_q_out106) #14, !srcloc !155
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !169
  %conv108 = trunc i32 %43 to i16
  br label %if.end139

if.else109:                                       ; preds = %if.else102
  %and112 = and i32 %31, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.else118, label %if.then114

if.then114:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #16
  %req_q_out115 = getelementptr inbounds %struct.device_reg_fx00, ptr %cond, i32 0, i32 41
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %req_q_out115) #14, !srcloc !155
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !169
  %conv117 = trunc i32 %45 to i16
  br label %if.end139

if.else118:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #16
  %46 = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %47 = icmp eq i32 %46, 0
  %mailbox4 = getelementptr inbounds %struct.device_reg_2xxx, ptr %cond, i32 0, i32 8, i32 0, i32 4
  %req_q_out131 = getelementptr inbounds %struct.device_reg_2xxx, ptr %cond, i32 0, i32 8, i32 0, i32 1
  %cond133 = select i1 %47, ptr %req_q_out131, ptr %mailbox4
  %call134 = tail call fastcc zeroext i16 @qla2x00_debounce_register(ptr noundef %cond133)
  br label %if.end139

if.end139:                                        ; preds = %if.else118, %if.then114, %if.then105, %if.then98, %if.then86, %if.then47
  %cnt.0 = phi i16 [ %29, %if.then47 ], [ %conv87, %if.then86 ], [ %conv101, %if.then98 ], [ %conv108, %if.then105 ], [ %conv117, %if.then114 ], [ %call134, %if.else118 ]
  %48 = ptrtoint ptr %use_shadow_reg to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load141 = load i8, ptr %use_shadow_reg, align 64
  %49 = and i8 %bf.load141, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool145.not = icmp eq i8 %49, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %cnt.0)
  %cmp148 = icmp eq i16 %cnt.0, -1
  %or.cond299 = select i1 %tobool145.not, i1 %cmp148, i1 false
  br i1 %or.cond299, label %if.then150, label %if.end151

if.then150:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qla_schedule_eeh_work(ptr noundef %1) #14
  br label %cleanup

if.end151:                                        ; preds = %if.end139
  %ring_index = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 5
  %50 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %ring_index, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %cnt.0, i16 %51)
  %cmp154 = icmp ugt i16 %cnt.0, %51
  br i1 %cmp154, label %if.then156, label %if.else162

if.then156:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i16 %cnt.0, %51
  br label %if.end172.sink.split

if.else162:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #16
  %length = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 9
  %52 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %length, align 2
  %sub167.neg = sub i16 %cnt.0, %51
  %sub168 = add i16 %sub167.neg, %53
  br label %if.end172.sink.split

if.end172.sink.split:                             ; preds = %if.else162, %if.then156
  %sub.sink = phi i16 [ %sub, %if.then156 ], [ %sub168, %if.else162 ]
  %54 = ptrtoint ptr %cnt40 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %sub.sink, ptr %cnt40, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.end172.sink.split, %if.end.if.end172_crit_edge
  %55 = ptrtoint ptr %cnt40 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %cnt40, align 4
  %conv174 = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv174)
  %cmp177 = icmp ugt i32 %add, %conv174
  br i1 %cmp177, label %if.end172.queuing_error_crit_edge, label %if.end180

if.end172.queuing_error_crit_edge:                ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #16
  br label %queuing_error

if.end180:                                        ; preds = %if.end172
  br i1 %tobool36.not, label %if.end180.if.end189_crit_edge, label %if.then182

if.end180.if.end189_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end189

if.then182:                                       ; preds = %if.end180
  %num_outstanding_cmds.i = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 18
  %57 = ptrtoint ptr %num_outstanding_cmds.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %num_outstanding_cmds.i, align 4
  %conv.i = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %58)
  %cmp17.i = icmp ugt i16 %58, 1
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %if.then182.if.then186_crit_edge

if.then182.if.then186_crit_edge:                  ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then186

for.body.lr.ph.i:                                 ; preds = %if.then182
  %current_outstanding_cmd.i = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 17
  %59 = ptrtoint ptr %current_outstanding_cmd.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %current_outstanding_cmd.i, align 4
  %outstanding_cmds.i = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 16
  %61 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %outstanding_cmds.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc8.i = add nuw nsw i32 %index.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.if.then186_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.if.then186_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then186

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %handle.019.i = phi i32 [ %60, %for.body.lr.ph.i ], [ %spec.store.select.i, %for.cond.i.for.body.i_crit_edge ]
  %index.018.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc8.i, %for.cond.i.for.body.i_crit_edge ]
  %inc.i = add i32 %handle.019.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp4.i = icmp eq i32 %inc.i, %conv.i
  %spec.store.select.i = select i1 %cmp4.i, i32 1, i32 %inc.i
  %arrayidx.i = getelementptr ptr, ptr %62, i32 %spec.store.select.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %64, null
  br i1 %tobool.not.i, label %qla2xxx_get_next_handle.exit, label %for.cond.i

qla2xxx_get_next_handle.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp184 = icmp eq i32 %spec.store.select.i, 0
  br i1 %cmp184, label %qla2xxx_get_next_handle.exit.if.then186_crit_edge, label %if.end187

qla2xxx_get_next_handle.exit.if.then186_crit_edge: ; preds = %qla2xxx_get_next_handle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then186

if.then186:                                       ; preds = %qla2xxx_get_next_handle.exit.if.then186_crit_edge, %for.cond.i.if.then186_crit_edge, %if.then182.if.then186_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %1, i32 noundef 28683, ptr noundef nonnull @.str.12) #14
  br label %queuing_error

if.end187:                                        ; preds = %qla2xxx_get_next_handle.exit
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %current_outstanding_cmd.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %spec.store.select.i, ptr %current_outstanding_cmd.i, align 4
  %66 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %outstanding_cmds.i, align 4
  %arrayidx = getelementptr ptr, ptr %67, i32 %spec.store.select.i
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %sp, ptr %arrayidx, align 4
  %handle188 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %69 = ptrtoint ptr %handle188 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %spec.store.select.i, ptr %handle188, align 8
  br label %if.end189

if.end189:                                        ; preds = %if.end187, %if.end180.if.end189_crit_edge
  %handle.0 = phi i32 [ %spec.store.select.i, %if.end187 ], [ 0, %if.end180.if.end189_crit_edge ]
  %70 = ptrtoint ptr %cnt40 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %cnt40, align 4
  %sub193 = sub i16 %71, %req_cnt.0
  store i16 %sub193, ptr %cnt40, align 4
  %ring_ptr = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 2
  %72 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ring_ptr, align 4
  %74 = call ptr @memset(ptr %73, i32 0, i32 64)
  %isp_type195 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %75 = ptrtoint ptr %isp_type195 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %isp_type195, align 8
  %and197 = and i32 %76, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %if.else202, label %if.then199

if.then199:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #16
  %entry_count = getelementptr inbounds %struct.cmd_a64_entry_t, ptr %73, i32 0, i32 1
  %conv200 = trunc i16 %req_cnt.0 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !170
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %entry_count, i8 %conv200) #14, !srcloc !171
  %handle201 = getelementptr inbounds %struct.cmd_a64_entry_t, ptr %73, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !153
  tail call void @arm_heavy_mb() #14
  %77 = tail call i32 @llvm.bswap.i32(i32 %handle.0) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %handle201, i32 %77) #14, !srcloc !154
  br label %cleanup

if.else202:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #16
  %conv203 = trunc i16 %req_cnt.0 to i8
  %entry_count204 = getelementptr inbounds %struct.cmd_a64_entry_t, ptr %73, i32 0, i32 1
  %78 = ptrtoint ptr %entry_count204 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv203, ptr %entry_count204, align 1
  %handle205 = getelementptr inbounds %struct.cmd_a64_entry_t, ptr %73, i32 0, i32 4
  %79 = ptrtoint ptr %handle205 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %handle.0, ptr %handle205, align 4
  br label %cleanup

queuing_error:                                    ; preds = %if.then186, %if.end172.queuing_error_crit_edge
  %num_alloc_iocb_failed = getelementptr inbounds %struct.qla_qpair, ptr %qpair, i32 0, i32 24, i32 7
  %80 = ptrtoint ptr %num_alloc_iocb_failed to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %num_alloc_iocb_failed, align 8
  %inc = add i64 %81, 1
  store i64 %inc, ptr %num_alloc_iocb_failed, align 8
  br label %cleanup

cleanup:                                          ; preds = %queuing_error, %if.else202, %if.then199, %if.then150
  %retval.0 = phi ptr [ null, %queuing_error ], [ null, %if.then150 ], [ %73, %if.else202 ], [ %73, %if.then199 ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @qla2x00_debounce_register(ptr noundef %addr) unnamed_addr #8 align 64 {
entry:
  %first = alloca i16, align 2
  %second = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %first)
  %0 = ptrtoint ptr %first to i32
  call void @__asan_store2_noabort(i32 %0)
  store volatile i16 -1, ptr %first, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %second)
  %1 = ptrtoint ptr %second to i32
  call void @__asan_store2_noabort(i32 %1)
  store volatile i16 -1, ptr %second, align 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %addr) #14, !srcloc !149
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !172
  %4 = ptrtoint ptr %first to i32
  call void @__asan_store2_noabort(i32 %4)
  store volatile i16 %3, ptr %first, align 2
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !174
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !175
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %addr) #14, !srcloc !149
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !172
  %7 = ptrtoint ptr %second to i32
  call void @__asan_store2_noabort(i32 %7)
  store volatile i16 %6, ptr %second, align 2
  %8 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %8)
  %first.0.first.0.first.0. = load volatile i16, ptr %first, align 2
  %second.0.second.0.second.0. = load volatile i16, ptr %second, align 2
  %cmp.not = icmp eq i16 %first.0.first.0.first.0., %second.0.second.0.second.0.
  br i1 %cmp.not, label %do.end12, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end12:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %9)
  %first.0.first.0.first.0.13 = load volatile i16, ptr %first, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %second)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %first)
  ret i16 %first.0.first.0.first.0.13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla_schedule_eeh_work(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qla2x00_alloc_iocbs_ready(ptr nocapture noundef %qpair, ptr noundef %sp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.qla_qpair, ptr %qpair, i32 0, i32 4
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %dpc_flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %dpc_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dpc_flags.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %11 = ptrtoint ptr %dpc_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dpc_flags.i, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not.i = icmp eq i32 %13, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %dpc_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %dpc_flags.i, align 4
  %16 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool8.not.i = icmp eq i32 %16, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false5.i.cleanup_crit_edge

lor.lhs.false5.i.cleanup_crit_edge:               ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false5.i
  %dpc_flags10.i = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %dpc_flags10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dpc_flags10.i, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not.i = icmp eq i32 %19, 0
  br i1 %tobool12.not.i, label %qla2x00_reset_active.exit, label %lor.lhs.false9.i.cleanup_crit_edge

lor.lhs.false9.i.cleanup_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

qla2x00_reset_active.exit:                        ; preds = %lor.lhs.false9.i
  %20 = ptrtoint ptr %dpc_flags10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %dpc_flags10.i, align 4
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.end, label %qla2x00_reset_active.exit.cleanup_crit_edge

qla2x00_reset_active.exit.cleanup_crit_edge:      ; preds = %qla2x00_reset_active.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %qla2x00_reset_active.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call ptr @__qla2x00_alloc_iocbs(ptr noundef %qpair, ptr noundef %sp)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qla2x00_reset_active.exit.cleanup_crit_edge, %lor.lhs.false9.i.cleanup_crit_edge, %lor.lhs.false5.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ null, %qla2x00_reset_active.exit.cleanup_crit_edge ], [ null, %lor.lhs.false9.i.cleanup_crit_edge ], [ null, %lor.lhs.false5.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qla2x00_alloc_iocbs(ptr nocapture noundef readonly %vha, ptr noundef %sp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_qpair, align 4
  %call = tail call ptr @__qla2x00_alloc_iocbs(ptr noundef %3, ptr noundef %sp)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_init_timer(ptr noundef %sp, i32 noundef %tmo) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @qla2x00_sp_timeout, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @qla2x00_init_timer.__key) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %mul = mul i32 %tmo, 100
  %add = add i32 %0, %mul
  %expires = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %expires, align 8
  %free = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %2 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @qla2x00_sp_free, ptr %free, align 8
  %vha = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %3 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vha, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %4, i32 0, i32 52
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %6, i32 0, i32 54
  %7 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %isp_type, align 8
  %and3 = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 11
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %10)
  %cmp = icmp eq i16 %10, 10
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %fxiocb_comp = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 7
  %11 = ptrtoint ptr %fxiocb_comp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %fxiocb_comp, align 4
  %wait.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %start_timer = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 8
  %12 = ptrtoint ptr %start_timer to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %start_timer, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %start_timer, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_sp_timeout(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_sp_free(ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_els_dcmd_iocb(ptr noundef %vha, i32 noundef %els_opcode, [1 x i32] %remote_did.coerce) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %remote_did.coerce.fca.0.extract = extractvalue [1 x i32] %remote_did.coerce, 0
  %remote_did.sroa.0.0.extract.shift = lshr i32 %remote_did.coerce.fca.0.extract, 24
  %remote_did.sroa.0.0.extract.trunc = trunc i32 %remote_did.sroa.0.0.extract.shift to i8
  %remote_did.sroa.2.0.extract.shift = lshr i32 %remote_did.coerce.fca.0.extract, 16
  %remote_did.sroa.2.0.extract.trunc = trunc i32 %remote_did.sroa.2.0.extract.shift to i8
  %remote_did.sroa.3.0.extract.shift = lshr i32 %remote_did.coerce.fca.0.extract, 8
  %remote_did.sroa.3.0.extract.trunc = trunc i32 %remote_did.sroa.3.0.extract.shift to i8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %call = tail call ptr @qla2x00_alloc_fcport(ptr noundef %vha, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 28901, ptr noundef nonnull @.str.14) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef nonnull %call)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call) #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 28902, ptr noundef nonnull @.str.15) #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %loop_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %loop_id, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %d_id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %remote_did.sroa.0.0.extract.trunc, ptr %d_id, align 8
  %area7 = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 1
  %4 = ptrtoint ptr %area7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %remote_did.sroa.2.0.extract.trunc, ptr %area7, align 1
  %al_pa9 = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %5 = ptrtoint ptr %al_pa9 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %remote_did.sroa.3.0.extract.trunc, ptr %al_pa9, align 2
  %conv14 = and i32 %remote_did.sroa.2.0.extract.shift, 255
  %conv17 = and i32 %remote_did.sroa.3.0.extract.shift, 255
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %vha, i32 noundef 12403, ptr noundef nonnull @.str.16, i32 noundef %remote_did.sroa.0.0.extract.shift, i32 noundef %conv14, i32 noundef %conv17) #14
  %type = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 11
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 13, ptr %type, align 2
  %name = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 12
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.17, ptr %name, align 8
  %fcport18 = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 6
  %8 = ptrtoint ptr %fcport18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %fcport18, align 4
  %timeout = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 22, i32 0, i32 2
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @qla2x00_els_dcmd_iocb_timeout, ptr %timeout, align 8
  %timer.i = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 22, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @qla2x00_sp_timeout, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @qla2x00_init_timer.__key) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %10, 2000
  %expires.i = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 22, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %expires.i, align 8
  %free.i = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 25
  %12 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @qla2x00_sp_free, ptr %free.i, align 8
  %vha.i = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 7
  %13 = ptrtoint ptr %vha.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vha.i, align 8
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %14, i32 0, i32 52
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 4
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 54
  %17 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %isp_type.i, align 8
  %and3.i = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.end4.qla2x00_init_timer.exit_crit_edge, label %land.lhs.true.i

if.end4.qla2x00_init_timer.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla2x00_init_timer.exit

land.lhs.true.i:                                  ; preds = %if.end4
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %20)
  %cmp.i = icmp eq i16 %20, 10
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.qla2x00_init_timer.exit_crit_edge

land.lhs.true.i.qla2x00_init_timer.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla2x00_init_timer.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %fxiocb_comp.i = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 7
  %21 = ptrtoint ptr %fxiocb_comp.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %fxiocb_comp.i, align 4
  %wait.i.i = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #14
  br label %qla2x00_init_timer.exit

qla2x00_init_timer.exit:                          ; preds = %if.then.i, %land.lhs.true.i.qla2x00_init_timer.exit_crit_edge, %if.end4.qla2x00_init_timer.exit_crit_edge
  %start_timer.i = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 8
  %22 = ptrtoint ptr %start_timer.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %start_timer.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %start_timer.i, align 4
  %comp = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #14
  %done = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 24
  %24 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @qla2x00_els_dcmd_sp_done, ptr %done, align 4
  %25 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @qla2x00_els_dcmd_sp_free, ptr %free.i, align 8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %els_logo_pyld_dma = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 256, ptr noundef %els_logo_pyld_dma, i32 noundef 3264, i32 noundef 0) #14
  %els_logo_pyld = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1
  %28 = ptrtoint ptr %els_logo_pyld to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %els_logo_pyld, align 8
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %if.then27, label %if.end29

if.then27:                                        ; preds = %qla2x00_init_timer.exit
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %free.i, align 8
  tail call void %30(ptr noundef nonnull %call1) #14
  br label %cleanup

if.end29:                                         ; preds = %qla2x00_init_timer.exit
  %u = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 22
  %els_cmd = getelementptr inbounds %struct.anon.86, ptr %u, i32 0, i32 1
  %31 = ptrtoint ptr %els_cmd to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %els_opcode, ptr %els_cmd, align 4
  %conv31 = trunc i32 %els_opcode to i8
  %d_id32 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 17
  %al_pa33 = getelementptr inbounds %struct.anon.80, ptr %d_id32, i32 0, i32 2
  %32 = ptrtoint ptr %al_pa33 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %al_pa33, align 2
  %area35 = getelementptr inbounds %struct.anon.80, ptr %d_id32, i32 0, i32 1
  %34 = ptrtoint ptr %area35 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %area35, align 1
  %36 = ptrtoint ptr %d_id32 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %d_id32, align 8
  %logo_pyld.sroa.9.sroa.10.0.insert.ext137 = zext i8 %37 to i32
  %logo_pyld.sroa.9.sroa.10.0.insert.shift138 = shl nuw nsw i32 %logo_pyld.sroa.9.sroa.10.0.insert.ext137, 8
  %logo_pyld.sroa.9.sroa.8.0.insert.ext133 = zext i8 %35 to i32
  %logo_pyld.sroa.9.sroa.8.0.insert.shift134 = shl nuw nsw i32 %logo_pyld.sroa.9.sroa.8.0.insert.ext133, 16
  %logo_pyld.sroa.9.sroa.8.0.insert.insert136 = or i32 %logo_pyld.sroa.9.sroa.10.0.insert.shift138, %logo_pyld.sroa.9.sroa.8.0.insert.shift134
  %logo_pyld.sroa.9.sroa.0.0.insert.ext129 = zext i8 %33 to i32
  %logo_pyld.sroa.9.sroa.0.0.insert.shift130 = shl nuw i32 %logo_pyld.sroa.9.sroa.0.0.insert.ext129, 24
  %logo_pyld.sroa.9.sroa.0.0.insert.insert132 = or i32 %logo_pyld.sroa.9.sroa.8.0.insert.insert136, %logo_pyld.sroa.9.sroa.0.0.insert.shift130
  %38 = tail call i32 @llvm.bswap.i32(i32 %logo_pyld.sroa.9.sroa.0.0.insert.insert132) #14
  %port_name = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 26
  %39 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %port_name, align 8
  %41 = ptrtoint ptr %els_logo_pyld to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %els_logo_pyld, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv31, ptr %42, align 1
  %logo_pyld.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %42, i32 1
  %44 = ptrtoint ptr %logo_pyld.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %logo_pyld.sroa.6.0..sroa_idx, align 1
  %logo_pyld.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %42, i32 2
  %45 = ptrtoint ptr %logo_pyld.sroa.7.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %logo_pyld.sroa.7.0..sroa_idx, align 1
  %logo_pyld.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %42, i32 3
  %46 = ptrtoint ptr %logo_pyld.sroa.8.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %logo_pyld.sroa.8.0..sroa_idx, align 1
  %logo_pyld.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %42, i32 4
  %47 = ptrtoint ptr %logo_pyld.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %38, ptr %logo_pyld.sroa.9.0..sroa_idx, align 1
  %logo_pyld.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %42, i32 8
  %48 = ptrtoint ptr %logo_pyld.sroa.18.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %40, ptr %logo_pyld.sroa.18.0..sroa_idx, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268566528, ptr noundef %vha, i32 noundef 12405, ptr noundef nonnull @.str.18) #14
  %49 = ptrtoint ptr %els_logo_pyld to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %els_logo_pyld, align 8
  tail call void @ql_dump_buffer(i32 noundef 268566528, ptr noundef %vha, i32 noundef 266, ptr noundef %50, i32 noundef 16) #14
  %call49 = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp.not = icmp eq i32 %call49, 0
  br i1 %cmp.not, label %if.end53, label %if.then51

if.then51:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %free.i, align 8
  tail call void %52(ptr noundef nonnull %call1) #14
  br label %cleanup

if.end53:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.srb, ptr %call1, i32 0, i32 9
  %55 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %handle, align 8
  %57 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %loop_id, align 4
  %conv56 = zext i16 %58 to i32
  %59 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %d_id, align 8
  %conv59 = zext i8 %60 to i32
  %61 = ptrtoint ptr %area7 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %area7, align 1
  %conv62 = zext i8 %62 to i32
  %63 = ptrtoint ptr %al_pa9 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %al_pa9, align 2
  %conv65 = zext i8 %64 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %vha, i32 noundef 12404, ptr noundef nonnull @.str.19, ptr noundef %54, i32 noundef %56, i32 noundef %conv56, i32 noundef %conv59, i32 noundef %conv62, i32 noundef %conv65) #14
  tail call void @wait_for_completion(ptr noundef %comp) #14
  %65 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %free.i, align 8
  tail call void %66(ptr noundef nonnull %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then51, %if.then27, %if.then3, %if.then
  %retval.0 = phi i32 [ 258, %if.then51 ], [ 0, %if.end53 ], [ 258, %if.then27 ], [ -12, %if.then3 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla2x00_alloc_fcport(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef %fcport) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %vref_count = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 60
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #14, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !177
  tail call void @arm_heavy_mb() #14
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load volatile i32, ptr %flags, align 8
  %2 = and i32 %bf.load, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #14
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #14, !srcloc !178
  %vref_waitq = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
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
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #14, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !179
  tail call void @arm_heavy_mb() #14
  %delete_in_progress.i = getelementptr inbounds %struct.qla_qpair, ptr %7, i32 0, i32 6
  %9 = ptrtoint ptr %delete_in_progress.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %delete_in_progress.i, align 64
  %10 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #14
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #14, !srcloc !178
  br label %do.body16.critedge

if.end9.i:                                        ; preds = %if.end9
  %srb_mempool.i = getelementptr inbounds %struct.qla_qpair, ptr %7, i32 0, i32 9
  %12 = ptrtoint ptr %srb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srb_mempool.i, align 8
  %call.i = tail call noalias ptr @mempool_alloc(ptr noundef %13, i32 noundef 3264) #14
  %tobool10.not.i = icmp eq ptr %call.i, null
  br i1 %tobool10.not.i, label %if.else12.i, label %if.end12

if.else12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #14, !srcloc !178
  br label %do.body16.critedge

if.end12:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
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
  %call.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #14
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #14, !srcloc !178
  %vref_waitq18 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq18, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body16.critedge, %if.end12, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %call.i, %if.end12 ], [ null, %do.body16.critedge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_els_dcmd_iocb_timeout(ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fcport1 = getelementptr inbounds %struct.srb, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport1, align 4
  %vha2 = getelementptr inbounds %struct.srb, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vha2, align 8
  %name = getelementptr inbounds %struct.srb, ptr %data, i32 0, i32 12
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.srb, ptr %data, i32 0, i32 9
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  %d_id = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %d_id, align 8
  %conv = zext i8 %9 to i32
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 1
  %10 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %area, align 1
  %conv4 = zext i8 %11 to i32
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %12 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %al_pa, align 2
  %conv6 = zext i8 %13 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %3, i32 noundef 12393, ptr noundef nonnull @.str.34, ptr noundef %5, i32 noundef %7, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv6) #14
  %call = tail call i32 @qla24xx_async_abort_cmd(ptr noundef %data, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %3, i32 noundef 12400, ptr noundef nonnull @.str.35) #14
  %qpair = getelementptr inbounds %struct.srb, ptr %data, i32 0, i32 14
  %14 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qpair, align 8
  %qp_lock_ptr = getelementptr inbounds %struct.qla_qpair, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %qp_lock_ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qp_lock_ptr, align 4
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #14
  %18 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qpair, align 8
  %req = getelementptr inbounds %struct.qla_qpair, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req, align 4
  %num_outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %num_outstanding_cmds to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_outstanding_cmds, align 4
  %conv14 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %23)
  %cmp1548 = icmp ugt i16 %23, 1
  br i1 %cmp1548, label %for.body.lr.ph, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %21, i32 0, i32 16
  %24 = ptrtoint ptr %outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %outstanding_cmds, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %h.049 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %25, i32 %h.049
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %cmp19 = icmp eq ptr %27, %data
  br i1 %cmp19, label %if.then21, label %for.inc

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.le = getelementptr ptr, ptr %25, i32 %h.049
  %28 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx.le, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %h.049, 1
  %exitcond.not = icmp eq i32 %inc, %conv14
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then21, %if.then.for.end_crit_edge
  %29 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %qpair, align 8
  %qp_lock_ptr27 = getelementptr inbounds %struct.qla_qpair, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %qp_lock_ptr27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qp_lock_ptr27, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %call10) #14
  %comp = getelementptr inbounds %struct.srb, ptr %data, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  tail call void @complete(ptr noundef %comp) #14
  br label %if.end29

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %3, i32 noundef 12401, ptr noundef nonnull @.str.36) #14
  br label %if.end29

if.end29:                                         ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_els_dcmd_sp_done(ptr noundef %sp, i32 noundef %res) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fcport1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %0 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport1, align 4
  %vha2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %2 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vha2, align 8
  %name = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 12
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  %d_id = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %d_id, align 8
  %conv = zext i8 %9 to i32
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 1
  %10 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %area, align 1
  %conv4 = zext i8 %11 to i32
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %12 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %al_pa, align 2
  %conv6 = zext i8 %13 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %3, i32 noundef 12402, ptr noundef nonnull @.str.37, ptr noundef %5, i32 noundef %7, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv6) #14
  %comp = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  tail call void @complete(ptr noundef %comp) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_els_dcmd_sp_free(ptr noundef %sp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %0 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport, align 4
  tail call void @kfree(ptr noundef %1) #14
  %els_logo_pyld = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1
  %2 = ptrtoint ptr %els_logo_pyld to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %els_logo_pyld, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %vha = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %4 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vha, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 52
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %els_logo_pyld_dma = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %els_logo_pyld_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %els_logo_pyld_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %3, i32 noundef %11, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %timer = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 1
  %call = tail call i32 @del_timer(ptr noundef %timer) #14
  %vha.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %12 = ptrtoint ptr %vha.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vha.i, align 8
  %vref_count.i = getelementptr inbounds %struct.scsi_qla_host, ptr %13, i32 0, i32 60
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %vref_count.i, i32 1, i32 3, i32 1) #14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count.i, ptr %vref_count.i, i32 1, ptr elementtype(i32) %vref_count.i) #14, !srcloc !178
  %15 = ptrtoint ptr %vha.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vha.i, align 8
  %vref_waitq.i = getelementptr inbounds %struct.scsi_qla_host, ptr %16, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %qpair.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 14
  %17 = ptrtoint ptr %qpair.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qpair.i, align 8
  store ptr null, ptr %qpair.i, align 8
  %done.i.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 24
  %19 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @qla2xxx_rel_done_warning, ptr %done.i.i, align 4
  %free.i.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %20 = ptrtoint ptr %free.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @qla2xxx_rel_free_warning, ptr %free.i.i, align 8
  %srb_mempool.i.i = getelementptr inbounds %struct.qla_qpair, ptr %18, i32 0, i32 9
  %21 = ptrtoint ptr %srb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %srb_mempool.i.i, align 8
  tail call void @mempool_free(ptr noundef %sp, ptr noundef %22) #14
  %ref_count.i.i = getelementptr inbounds %struct.qla_qpair, ptr %18, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #14
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #14, !srcloc !178
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dump_buffer(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_start_sp(ptr noundef %sp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %flags3 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load volatile i32, ptr %flags3, align 8
  %7 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body4:                                         ; preds = %entry
  %qp_lock_ptr = getelementptr inbounds %struct.qla_qpair, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %qp_lock_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qp_lock_ptr, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #14
  %10 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qpair, align 8
  %call9 = tail call ptr @__qla2x00_alloc_iocbs(ptr noundef %11, ptr noundef %sp)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %1, i32 noundef 28684, ptr noundef nonnull @.str.31) #14
  br label %done

if.end12:                                         ; preds = %do.body4
  %type = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 11
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %type, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %13, label %if.end12.sw.epilog_crit_edge [
    i16 1, label %sw.bb
    i16 21, label %sw.bb15
    i16 2, label %sw.bb16
    i16 3, label %if.end12.sw.bb23_crit_edge
    i16 4, label %if.end12.sw.bb23_crit_edge171
    i16 26, label %sw.bb24
    i16 5, label %sw.bb28
    i16 6, label %sw.bb35
    i16 7, label %sw.bb42
    i16 10, label %if.end12.sw.bb49_crit_edge
    i16 11, label %if.end12.sw.bb49_crit_edge172
    i16 20, label %sw.bb50
    i16 12, label %sw.bb51
    i16 13, label %sw.bb59
    i16 15, label %sw.bb60
    i16 14, label %sw.bb61
    i16 16, label %if.end12.sw.bb62_crit_edge
    i16 17, label %if.end12.sw.bb62_crit_edge173
    i16 18, label %if.end12.sw.bb62_crit_edge174
    i16 22, label %sw.bb63
    i16 23, label %sw.bb64
    i16 25, label %sw.bb65
    i16 27, label %sw.bb66
  ]

if.end12.sw.bb62_crit_edge174:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb62

if.end12.sw.bb62_crit_edge173:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb62

if.end12.sw.bb62_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb62

if.end12.sw.bb49_crit_edge172:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb49

if.end12.sw.bb49_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb49

if.end12.sw.bb23_crit_edge171:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb23

if.end12.sw.bb23_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb23

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end12
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %15 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device_type, align 4
  %and = and i32 %16, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qla24xx_login_iocb(ptr noundef %sp, ptr noundef nonnull %call9)
  br label %sw.epilog

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qla2x00_login_iocb(ptr noundef %sp, ptr noundef nonnull %call9)
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qla24xx_prli_iocb(ptr noundef %sp, ptr noundef nonnull %call9)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end12
  %device_type17 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %17 = ptrtoint ptr %device_type17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %device_type17, align 4
  %and18 = and i32 %18, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %cond.false21, label %cond.true20

cond.true20:                                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qla24xx_logout_iocb(ptr noundef %sp, ptr noundef nonnull %call9)
  br label %sw.epilog

cond.false21:                                     ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qla2x00_logout_iocb(ptr noundef %sp, ptr noundef nonnull %call9)
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end12.sw.bb23_crit_edge, %if.end12.sw.bb23_crit_edge171
  %u.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %19 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %u.i, align 8
  %request.i = getelementptr inbounds %struct.bsg_job, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %request.i, align 4
  %23 = ptrtoint ptr %call9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 83, ptr %call9, align 4
  %entry_count.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 1
  %24 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %entry_count.i, align 1
  %sys_define.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 2
  %25 = ptrtoint ptr %sys_define.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %sys_define.i, align 2
  %entry_status.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 3
  %26 = ptrtoint ptr %entry_status.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %entry_status.i, align 1
  %handle.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %27 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %handle.i, align 8
  %handle1.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 4
  %29 = ptrtoint ptr %handle1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %handle1.i, align 4
  %fcport.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %30 = ptrtoint ptr %fcport.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fcport.i, align 4
  %loop_id.i = getelementptr inbounds %struct.fc_port, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %loop_id.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %loop_id.i, align 4
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #14
  %nport_handle.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 6
  %35 = ptrtoint ptr %nport_handle.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %nport_handle.i, align 2
  %sg_cnt.i = getelementptr inbounds %struct.bsg_job, ptr %20, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sg_cnt.i, align 4
  %conv.i = trunc i32 %37 to i16
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #14
  %tx_dsd_count.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 7
  %39 = ptrtoint ptr %tx_dsd_count.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %tx_dsd_count.i, align 4
  %40 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vha1, align 8
  %vp_idx.i = getelementptr inbounds %struct.scsi_qla_host, ptr %41, i32 0, i32 46
  %42 = ptrtoint ptr %vp_idx.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vp_idx.i, align 8
  %conv2.i = trunc i16 %43 to i8
  %vp_index.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 8
  %44 = ptrtoint ptr %vp_index.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv2.i, ptr %vp_index.i, align 2
  %sof_type.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 9
  %45 = ptrtoint ptr %sof_type.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 16, ptr %sof_type.i, align 1
  %sg_cnt3.i = getelementptr inbounds %struct.bsg_job, ptr %20, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %sg_cnt3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sg_cnt3.i, align 4
  %conv4.i = trunc i32 %47 to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv4.i) #14
  %rx_dsd_count.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 11
  %49 = ptrtoint ptr %rx_dsd_count.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %rx_dsd_count.i, align 4
  %cond.in.in.i = getelementptr inbounds %struct.fc_bsg_request, ptr %22, i32 0, i32 1
  %50 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %cond.in73.i = load i8, ptr %cond.in.in.i, align 1
  %reply_payload.i = getelementptr inbounds %struct.bsg_job, ptr %20, i32 0, i32 8
  %request_payload.i = getelementptr inbounds %struct.bsg_job, ptr %20, i32 0, i32 7
  %opcode.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 12
  %51 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %cond.in73.i, ptr %opcode.i, align 2
  %52 = ptrtoint ptr %fcport.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fcport.i, align 4
  %d_id.i = getelementptr inbounds %struct.fc_port, ptr %53, i32 0, i32 6
  %al_pa.i = getelementptr inbounds %struct.anon.80, ptr %d_id.i, i32 0, i32 2
  %54 = ptrtoint ptr %al_pa.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %al_pa.i, align 2
  %d_id12.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 14
  %56 = ptrtoint ptr %d_id12.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %d_id12.i, align 4
  %57 = load ptr, ptr %fcport.i, align 4
  %d_id14.i = getelementptr inbounds %struct.fc_port, ptr %57, i32 0, i32 6
  %area.i = getelementptr inbounds %struct.anon.80, ptr %d_id14.i, i32 0, i32 1
  %58 = ptrtoint ptr %area.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %area.i, align 1
  %arrayidx16.i = getelementptr %struct.els_entry_24xx, ptr %call9, i32 0, i32 14, i32 1
  %60 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx16.i, align 1
  %61 = load ptr, ptr %fcport.i, align 4
  %d_id18.i = getelementptr inbounds %struct.fc_port, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %d_id18.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %d_id18.i, align 8
  %arrayidx20.i = getelementptr %struct.els_entry_24xx, ptr %call9, i32 0, i32 14, i32 2
  %64 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx20.i, align 2
  %control_flags.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 16
  %65 = ptrtoint ptr %control_flags.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %control_flags.i, align 2
  %66 = ptrtoint ptr %reply_payload.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %reply_payload.i, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #14
  %69 = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 17
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %68, ptr %69, align 4
  %71 = ptrtoint ptr %request_payload.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %request_payload.i, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #14
  %tx_byte_count.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 17, i32 0, i32 1
  %74 = ptrtoint ptr %tx_byte_count.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %tx_byte_count.i, align 4
  %sg_list.i = getelementptr inbounds %struct.bsg_job, ptr %20, i32 0, i32 7, i32 2
  %75 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sg_list.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dma_address.i, align 4
  %conv25.i = zext i32 %78 to i64
  %tx_address.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 17, i32 0, i32 2
  %79 = tail call i64 @llvm.bswap.i64(i64 %conv25.i) #14
  %80 = ptrtoint ptr %tx_address.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 %79, ptr %tx_address.i, align 1
  %81 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sg_list.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dma_length.i, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #14
  %tx_len.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 17, i32 1
  %86 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %tx_len.i, align 4
  %sg_list29.i = getelementptr inbounds %struct.bsg_job, ptr %20, i32 0, i32 8, i32 2
  %87 = ptrtoint ptr %sg_list29.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sg_list29.i, align 4
  %dma_address30.i = getelementptr inbounds %struct.scatterlist, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %dma_address30.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dma_address30.i, align 4
  %conv31.i = zext i32 %90 to i64
  %rx_address.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 17, i32 1, i32 4
  %91 = tail call i64 @llvm.bswap.i64(i64 %conv31.i) #14
  %92 = ptrtoint ptr %rx_address.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 %91, ptr %rx_address.i, align 1
  %93 = ptrtoint ptr %sg_list29.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sg_list29.i, align 4
  %dma_length34.i = getelementptr inbounds %struct.scatterlist, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %dma_length34.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dma_length34.i, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #14
  %rx_len.i = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 17, i32 1, i32 12
  %98 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %rx_len.i, align 4
  %99 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vha1, align 8
  %control_requests.i = getelementptr inbounds %struct.scsi_qla_host, ptr %100, i32 0, i32 58, i32 5
  %101 = ptrtoint ptr %control_requests.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %control_requests.i, align 8
  %inc.i = add i32 %102, 1
  store i32 %inc.i, ptr %control_requests.i, align 8
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %103 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %vha1, align 8
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %u26 = getelementptr inbounds %struct.bsg_cmd, ptr %u, i32 0, i32 1
  tail call void @qla_els_pt_iocb(ptr noundef %104, ptr noundef nonnull %call9, ptr noundef %u26)
  %handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %105 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %handle, align 8
  %handle27 = getelementptr inbounds %struct.els_entry_24xx, ptr %call9, i32 0, i32 4
  %107 = ptrtoint ptr %handle27 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %handle27, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end12
  %device_type29 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %108 = ptrtoint ptr %device_type29 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %device_type29, align 4
  %and30 = and i32 %109, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %cond.false33, label %cond.true32

cond.true32:                                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qla24xx_ct_iocb(ptr noundef %sp, ptr noundef nonnull %call9)
  br label %sw.epilog

cond.false33:                                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qla2x00_ct_iocb(ptr noundef %sp, ptr noundef nonnull %call9)
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end12
  %device_type36 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %110 = ptrtoint ptr %device_type36 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %device_type36, align 4
  %and37 = and i32 %111, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %cond.false40, label %cond.true39

cond.true39:                                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #16
  %112 = ptrtoint ptr %call9 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 82, ptr %call9, align 4
  %control_flags.i151 = getelementptr inbounds %struct.logio_entry_24xx, ptr %call9, i32 0, i32 7
  %113 = ptrtoint ptr %control_flags.i151 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 768, ptr %control_flags.i151, align 4
  %fcport.i152 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %114 = ptrtoint ptr %fcport.i152 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %fcport.i152, align 4
  %loop_id.i153 = getelementptr inbounds %struct.fc_port, ptr %115, i32 0, i32 7
  %116 = ptrtoint ptr %loop_id.i153 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %loop_id.i153, align 4
  %118 = tail call i16 @llvm.bswap.i16(i16 %117) #14
  %nport_handle.i154 = getelementptr inbounds %struct.logio_entry_24xx, ptr %call9, i32 0, i32 6
  %119 = ptrtoint ptr %nport_handle.i154 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %nport_handle.i154, align 2
  %120 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %vha1, align 8
  %vp_idx.i156 = getelementptr inbounds %struct.scsi_qla_host, ptr %121, i32 0, i32 46
  %122 = ptrtoint ptr %vp_idx.i156 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %vp_idx.i156, align 8
  %conv.i157 = trunc i16 %123 to i8
  %vp_index.i158 = getelementptr inbounds %struct.logio_entry_24xx, ptr %call9, i32 0, i32 8
  %124 = ptrtoint ptr %vp_index.i158 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv.i157, ptr %vp_index.i158, align 2
  br label %sw.epilog

cond.false40:                                     ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qla2x00_adisc_iocb(ptr noundef %sp, ptr noundef nonnull %call9)
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end12
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %125 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %isp_type, align 8
  %and44 = and i32 %126, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %cond.false47, label %cond.true46

cond.true46:                                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qlafx00_tm_iocb(ptr noundef %sp, ptr noundef nonnull %call9) #14
  br label %sw.epilog

cond.false47:                                     ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qla24xx_tm_iocb(ptr noundef %sp, ptr noundef nonnull %call9)
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end12.sw.bb49_crit_edge, %if.end12.sw.bb49_crit_edge172
  tail call void @qlafx00_fxdisc_iocb(ptr noundef %sp, ptr noundef nonnull %call9) #14
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qla_nvme_ls(ptr noundef %sp, ptr noundef nonnull %call9)
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end12
  %isp_type52 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %127 = ptrtoint ptr %isp_type52 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %isp_type52, align 8
  %and54 = and i32 %128, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %cond.false57, label %cond.true56

cond.true56:                                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qlafx00_abort_iocb(ptr noundef %sp, ptr noundef nonnull %call9) #14
  br label %sw.epilog

cond.false57:                                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qla24xx_abort_iocb(ptr noundef %sp, ptr noundef nonnull %call9)
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qla24xx_els_logo_iocb(ptr noundef %sp, ptr noundef nonnull %call9)
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %u.i159 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %129 = ptrtoint ptr %u.i159 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call9, ptr %u.i159, align 8
  %130 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %vha1, align 8
  %call.i = tail call ptr @qla24xx_prep_ms_iocb(ptr noundef %131, ptr noundef %u.i159) #14
  %handle.i161 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %132 = ptrtoint ptr %handle.i161 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %handle.i161, align 8
  %handle4.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %call9, i32 0, i32 4
  %134 = ptrtoint ptr %handle4.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %handle4.i, align 4
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qla2x00_mb_iocb(ptr noundef %sp, ptr noundef nonnull %call9)
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end12.sw.bb62_crit_edge, %if.end12.sw.bb62_crit_edge173, %if.end12.sw.bb62_crit_edge174
  %u.i162 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %135 = ptrtoint ptr %u.i162 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %u.i162, align 8
  %137 = ptrtoint ptr %call9 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 14, ptr %call9, align 1
  %entry_count.i163 = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 1
  %138 = ptrtoint ptr %entry_count.i163 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %entry_count.i163, align 1
  %ox_id.i = getelementptr inbounds %struct.imm_ntfy_from_isp, ptr %136, i32 0, i32 6
  %139 = ptrtoint ptr %ox_id.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 2)
  %140 = load i16, ptr %ox_id.i, align 1
  %ox_id3.i = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 6
  %141 = ptrtoint ptr %ox_id3.i to i32
  call void @__asan_storeN_noabort(i32 %141, i32 2)
  store i16 %140, ptr %ox_id3.i, align 1
  %handle.i164 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %142 = ptrtoint ptr %handle.i164 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %handle.i164, align 8
  %u4.i = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 4
  %144 = ptrtoint ptr %u4.i to i32
  call void @__asan_storeN_noabort(i32 %144, i32 4)
  store i32 %143, ptr %u4.i, align 1
  %u6.i = getelementptr inbounds %struct.imm_ntfy_from_isp, ptr %136, i32 0, i32 4
  %nport_handle.i165 = getelementptr inbounds %struct.imm_ntfy_from_isp, ptr %136, i32 0, i32 4, i32 0, i32 1
  %145 = ptrtoint ptr %nport_handle.i165 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 2)
  %146 = load i16, ptr %nport_handle.i165, align 1
  %nport_handle8.i = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 4, i32 0, i32 1
  %147 = ptrtoint ptr %nport_handle8.i to i32
  call void @__asan_storeN_noabort(i32 %147, i32 2)
  store i16 %146, ptr %nport_handle8.i, align 1
  %status.i = getelementptr inbounds %struct.imm_ntfy_from_isp, ptr %136, i32 0, i32 4, i32 0, i32 6
  %148 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 2)
  %149 = load i16, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 17920, i16 %149)
  %cmp.i = icmp eq i16 %149, 17920
  br i1 %cmp.i, label %if.then.i, label %sw.bb62.if.end.i_crit_edge

sw.bb62.if.end.i_crit_edge:                       ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i = getelementptr inbounds %struct.imm_ntfy_from_isp, ptr %136, i32 0, i32 4, i32 0, i32 3
  %150 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %151 = load i16, ptr %flags.i, align 1
  %152 = and i16 %151, 256
  %flags15.i = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 4, i32 0, i32 4
  %153 = ptrtoint ptr %flags15.i to i32
  call void @__asan_storeN_noabort(i32 %153, i32 2)
  store i16 %152, ptr %flags15.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb62.if.end.i_crit_edge
  %srr_rx_id.i = getelementptr inbounds %struct.imm_ntfy_from_isp, ptr %136, i32 0, i32 4, i32 0, i32 5
  %154 = ptrtoint ptr %srr_rx_id.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %srr_rx_id.i, align 1
  %srr_rx_id18.i = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 4, i32 0, i32 5
  %156 = ptrtoint ptr %srr_rx_id18.i to i32
  call void @__asan_storeN_noabort(i32 %156, i32 2)
  store i16 %155, ptr %srr_rx_id18.i, align 1
  %157 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %158 = load i16, ptr %status.i, align 1
  %status22.i = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 4, i32 0, i32 6
  %159 = ptrtoint ptr %status22.i to i32
  call void @__asan_storeN_noabort(i32 %159, i32 2)
  store i16 %158, ptr %status22.i, align 1
  %status_subcode.i = getelementptr inbounds %struct.imm_ntfy_from_isp, ptr %136, i32 0, i32 4, i32 0, i32 7
  %160 = ptrtoint ptr %status_subcode.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %status_subcode.i, align 1
  %status_subcode25.i = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 4, i32 0, i32 7
  %162 = ptrtoint ptr %status_subcode25.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %status_subcode25.i, align 1
  %fw_handle.i = getelementptr inbounds %struct.anon.94, ptr %u6.i, i32 0, i32 7
  %163 = ptrtoint ptr %fw_handle.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %fw_handle.i, align 1
  %fw_handle28.i = getelementptr inbounds %struct.anon.180, ptr %u4.i, i32 0, i32 7
  %165 = ptrtoint ptr %fw_handle28.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %164, ptr %fw_handle28.i, align 1
  %exchange_address.i = getelementptr inbounds %struct.imm_ntfy_from_isp, ptr %136, i32 0, i32 4, i32 0, i32 8
  %166 = ptrtoint ptr %exchange_address.i to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %exchange_address.i, align 1
  %exchange_address31.i = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 4, i32 0, i32 8
  %168 = ptrtoint ptr %exchange_address31.i to i32
  call void @__asan_storeN_noabort(i32 %168, i32 4)
  store i32 %167, ptr %exchange_address31.i, align 1
  %srr_rel_offs.i = getelementptr inbounds %struct.imm_ntfy_from_isp, ptr %136, i32 0, i32 4, i32 0, i32 10
  %169 = ptrtoint ptr %srr_rel_offs.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %srr_rel_offs.i, align 1
  %srr_rel_offs34.i = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 4, i32 0, i32 10
  %171 = ptrtoint ptr %srr_rel_offs34.i to i32
  call void @__asan_storeN_noabort(i32 %171, i32 4)
  store i32 %170, ptr %srr_rel_offs34.i, align 1
  %srr_ui.i = getelementptr inbounds %struct.imm_ntfy_from_isp, ptr %136, i32 0, i32 4, i32 0, i32 11
  %172 = ptrtoint ptr %srr_ui.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 2)
  %173 = load i16, ptr %srr_ui.i, align 1
  %srr_ui37.i = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 4, i32 0, i32 11
  %174 = ptrtoint ptr %srr_ui37.i to i32
  call void @__asan_storeN_noabort(i32 %174, i32 2)
  store i16 %173, ptr %srr_ui37.i, align 1
  %srr_flags.i = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 4, i32 0, i32 12
  %175 = ptrtoint ptr %srr_flags.i to i32
  call void @__asan_storeN_noabort(i32 %175, i32 2)
  store i16 0, ptr %srr_flags.i, align 1
  %srr_reject_code.i = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 4, i32 0, i32 16, i32 18
  %176 = ptrtoint ptr %srr_reject_code.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %srr_reject_code.i, align 1
  %srr_reject_code_expl.i = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 4, i32 0, i32 16, i32 17
  %177 = ptrtoint ptr %srr_reject_code_expl.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %srr_reject_code_expl.i, align 1
  %vp_index.i166 = getelementptr inbounds %struct.imm_ntfy_from_isp, ptr %136, i32 0, i32 4, i32 0, i32 13, i32 19
  %178 = ptrtoint ptr %vp_index.i166 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %vp_index.i166, align 1
  %vp_index43.i = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 4, i32 0, i32 16, i32 15
  %180 = ptrtoint ptr %vp_index43.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %vp_index43.i, align 1
  %181 = load i8, ptr %status_subcode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %181)
  %cmp47.i = icmp eq i8 %181, 3
  br i1 %cmp47.i, label %land.lhs.true.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %if.end.i
  %flags50.i = getelementptr inbounds %struct.imm_ntfy_from_isp, ptr %136, i32 0, i32 4, i32 0, i32 3
  %182 = ptrtoint ptr %flags50.i to i32
  call void @__asan_loadN_noabort(i32 %182, i32 2)
  %183 = load i16, ptr %flags50.i, align 1
  %184 = and i16 %183, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %184)
  %tobool.not.i = icmp eq i16 %184, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.sw.epilog_crit_edge, label %land.lhs.true53.i

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true53.i:                                ; preds = %land.lhs.true.i
  %185 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %vha1, align 8
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %186, i32 0, i32 52
  %187 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %hw.i, align 4
  %flags54.i = getelementptr inbounds %struct.qla_hw_data, ptr %188, i32 0, i32 2
  %189 = getelementptr inbounds i32, ptr %flags54.i, i32 1
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %bf.load.i = load volatile i32, ptr %189, align 4
  %191 = and i32 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool55.not.i = icmp eq i32 %191, 0
  br i1 %tobool55.not.i, label %land.lhs.true53.i.sw.epilog_crit_edge, label %if.then56.i

land.lhs.true53.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then56.i:                                      ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 12
  %192 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %name.i, align 8
  %194 = ptrtoint ptr %handle.i164 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %handle.i164, align 8
  %fcport.i168 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %196 = ptrtoint ptr %fcport.i168 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %fcport.i168, align 4
  %loop_id.i169 = getelementptr inbounds %struct.fc_port, ptr %197, i32 0, i32 7
  %198 = ptrtoint ptr %loop_id.i169 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %loop_id.i169, align 4
  %conv59.i = zext i16 %199 to i32
  %d_id.i170 = getelementptr inbounds %struct.fc_port, ptr %197, i32 0, i32 6
  %200 = ptrtoint ptr %d_id.i170 to i32
  call void @__asan_load4_noabort(i32 %200)
  %bf.load61.i = load i32, ptr %d_id.i170, align 8
  %bf.lshr62.i = lshr i32 %bf.load61.i, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %186, i32 noundef 12404, ptr noundef nonnull @.str.63, ptr noundef %193, i32 noundef %195, i32 noundef %conv59.i, i32 noundef %bf.lshr62.i) #14
  %flags64.i = getelementptr inbounds %struct.nack_to_isp, ptr %call9, i32 0, i32 4, i32 0, i32 4
  %201 = ptrtoint ptr %flags64.i to i32
  call void @__asan_loadN_noabort(i32 %201, i32 2)
  %202 = load i16, ptr %flags64.i, align 1
  %203 = or i16 %202, 8192
  store i16 %203, ptr %flags64.i, align 1
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qla25xx_ctrlvp_iocb(ptr noundef %sp, ptr noundef nonnull %call9)
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qla24xx_prlo_iocb(ptr noundef %sp, ptr noundef nonnull %call9)
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qla24xx_sa_update_iocb(ptr noundef %sp, ptr noundef nonnull %call9) #14
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qla24xx_sa_replace_iocb(ptr noundef %sp, ptr noundef nonnull %call9) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %if.then56.i, %land.lhs.true53.i.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb61, %sw.bb60, %sw.bb59, %cond.false57, %cond.true56, %sw.bb50, %sw.bb49, %cond.false47, %cond.true46, %cond.false40, %cond.true39, %cond.false33, %cond.true32, %sw.bb24, %sw.bb23, %cond.false21, %cond.true20, %sw.bb15, %cond.false, %cond.true, %if.end12.sw.epilog_crit_edge
  %start_timer = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 8
  %204 = ptrtoint ptr %start_timer to i32
  call void @__asan_load1_noabort(i32 %204)
  %bf.load67 = load i8, ptr %start_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load67)
  %tobool69.not = icmp sgt i8 %bf.load67, -1
  br i1 %tobool69.not, label %sw.epilog.do.body73_crit_edge, label %if.then70

sw.epilog.do.body73_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body73

if.then70:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %timer = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 1
  tail call void @add_timer(ptr noundef %timer) #14
  br label %do.body73

do.body73:                                        ; preds = %if.then70, %sw.epilog.do.body73_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !180
  tail call void @arm_heavy_mb() #14
  %req = getelementptr inbounds %struct.qla_qpair, ptr %5, i32 0, i32 12
  %205 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %req, align 4
  tail call void @qla2x00_start_iocbs(ptr noundef %1, ptr noundef %206)
  br label %done

done:                                             ; preds = %do.body73, %if.then11
  %rval.0 = phi i32 [ 0, %do.body73 ], [ 11, %if.then11 ]
  %207 = ptrtoint ptr %qp_lock_ptr to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %qp_lock_ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %208, i32 noundef %call5) #14
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rval.0, %done ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_els_dcmd2_free(ptr nocapture noundef readonly %vha, ptr nocapture noundef readonly %els_plogi) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %els_plogi_pyld = getelementptr inbounds %struct.els_plogi, ptr %els_plogi, i32 0, i32 3
  %0 = ptrtoint ptr %els_plogi_pyld to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %els_plogi_pyld, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %tx_size = getelementptr inbounds %struct.els_plogi, ptr %els_plogi, i32 0, i32 5
  %6 = ptrtoint ptr %tx_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_size, align 4
  %els_plogi_pyld_dma = getelementptr inbounds %struct.els_plogi, ptr %els_plogi, i32 0, i32 7
  %8 = ptrtoint ptr %els_plogi_pyld_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %els_plogi_pyld_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %7, ptr noundef nonnull %1, i32 noundef %9, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %els_resp_pyld = getelementptr inbounds %struct.els_plogi, ptr %els_plogi, i32 0, i32 4
  %10 = ptrtoint ptr %els_resp_pyld to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %els_resp_pyld, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %hw4 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %12 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw4, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %rx_size = getelementptr inbounds %struct.els_plogi, ptr %els_plogi, i32 0, i32 6
  %16 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_size, align 4
  %els_resp_pyld_dma = getelementptr inbounds %struct.els_plogi, ptr %els_plogi, i32 0, i32 8
  %18 = ptrtoint ptr %els_resp_pyld_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %els_resp_pyld_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev6, i32 noundef %17, ptr noundef nonnull %11, i32 noundef %19, i32 noundef 0) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_els_dcmd2_iocb(ptr noundef %vha, i32 noundef %els_opcode, ptr noundef %fcport, i1 noundef zeroext %wait) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %call = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef %fcport)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 28902, ptr noundef nonnull @.str.15) #14
  %flags = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 35
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, -33
  store i32 %and, ptr %flags, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags1 = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 35
  %4 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1, align 8
  %or = or i32 %5, 8
  store i32 %or, ptr %flags1, align 8
  %disc_state.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 50
  %6 = ptrtoint ptr %disc_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %disc_state.i, align 8
  %shadow_disc_state.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 51
  br label %while.cond.i

while.cond.i:                                     ; preds = %atomic_cmpxchg.exit.i.while.cond.i_crit_edge, %if.end
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %shadow_disc_state.i, i32 noundef 4) #14
  %7 = ptrtoint ptr %shadow_disc_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %shadow_disc_state.i, align 4
  %shl4.i = shl i32 %8, 4
  %or.i = or i32 %shl4.i, 3
  %call.i.i20.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %shadow_disc_state.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %shadow_disc_state.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %while.cond.i
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %shadow_disc_state.i, ptr %shadow_disc_state.i, i32 %8, i32 %or.i, ptr elementtype(i32) %shadow_disc_state.i) #14, !srcloc !182
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !183
  %cmp.i = icmp eq i32 %8, %asmresult3.i.i.i.i
  br i1 %cmp.i, label %qla2x00_set_fcport_disc_state.exit, label %atomic_cmpxchg.exit.i.while.cond.i_crit_edge

atomic_cmpxchg.exit.i.while.cond.i_crit_edge:     ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

qla2x00_set_fcport_disc_state.exit:               ; preds = %atomic_cmpxchg.exit.i
  %vha.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 1
  %10 = ptrtoint ptr %vha.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vha.i, align 8
  %port_name.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 5
  %and.i = and i32 %8, 15
  %arrayidx.i = getelementptr [11 x ptr], ptr @port_dstate_str, i32 0, i32 %and.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %d_id.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 6
  %14 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i = load i32, ptr %d_id.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %11, i32 noundef 8500, ptr noundef nonnull @.str.38, ptr noundef %port_name.i, ptr noundef %13, ptr noundef nonnull @.str.42, i32 noundef %bf.lshr.i) #14
  %u = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22
  %15 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load = load i32, ptr %d_id.i, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %vha, i32 noundef 12403, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.qla24xx_els_dcmd2_iocb, i32 noundef %bf.lshr) #14
  %type = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 11
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 13, ptr %type, align 2
  %name = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 12
  %17 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.17, ptr %name, align 8
  %fcport2 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 6
  %18 = ptrtoint ptr %fcport2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fcport, ptr %fcport2, align 4
  %timeout = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 2
  %19 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @qla2x00_els_dcmd2_iocb_timeout, ptr %timeout, align 8
  br i1 %wait, label %if.then4, label %qla2x00_set_fcport_disc_state.exit.if.end6_crit_edge

qla2x00_set_fcport_disc_state.exit.if.end6_crit_edge: ; preds = %qla2x00_set_fcport_disc_state.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then4:                                         ; preds = %qla2x00_set_fcport_disc_state.exit
  call void @__sanitizer_cov_trace_pc() #16
  %flags5 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 10
  %20 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 64, ptr %flags5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %qla2x00_set_fcport_disc_state.exit.if.end6_crit_edge
  %timer.i = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @qla2x00_sp_timeout, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @qla2x00_init_timer.__key) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %21, 2200
  %expires.i = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i, ptr %expires.i, align 8
  %free.i = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 25
  %23 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @qla2x00_sp_free, ptr %free.i, align 8
  %vha.i139 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 7
  %24 = ptrtoint ptr %vha.i139 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vha.i139, align 8
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %25, i32 0, i32 52
  %26 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw.i, align 4
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %27, i32 0, i32 54
  %28 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %isp_type.i, align 8
  %and3.i = and i32 %29, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.end6.qla2x00_init_timer.exit_crit_edge, label %land.lhs.true.i

if.end6.qla2x00_init_timer.exit_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla2x00_init_timer.exit

land.lhs.true.i:                                  ; preds = %if.end6
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %31)
  %cmp.i140 = icmp eq i16 %31, 10
  br i1 %cmp.i140, label %if.then.i, label %land.lhs.true.i.qla2x00_init_timer.exit_crit_edge

land.lhs.true.i.qla2x00_init_timer.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla2x00_init_timer.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %fxiocb_comp.i = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 7
  %32 = ptrtoint ptr %fxiocb_comp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %fxiocb_comp.i, align 4
  %wait.i.i = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #14
  br label %qla2x00_init_timer.exit

qla2x00_init_timer.exit:                          ; preds = %if.then.i, %land.lhs.true.i.qla2x00_init_timer.exit_crit_edge, %if.end6.qla2x00_init_timer.exit_crit_edge
  %start_timer.i = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 8
  %33 = ptrtoint ptr %start_timer.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i141 = load i8, ptr %start_timer.i, align 4
  %bf.set.i = or i8 %bf.load.i141, -128
  store i8 %bf.set.i, ptr %start_timer.i, align 4
  %done = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 24
  %34 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @qla2x00_els_dcmd2_sp_done, ptr %done, align 4
  %rx_size = getelementptr inbounds %struct.els_plogi, ptr %u, i32 0, i32 6
  %35 = ptrtoint ptr %rx_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 256, ptr %rx_size, align 4
  %tx_size = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 4
  %36 = ptrtoint ptr %tx_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 256, ptr %tx_size, align 8
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %els_plogi_pyld_dma = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 256, ptr noundef %els_plogi_pyld_dma, i32 noundef 3264, i32 noundef 0) #14
  %els_plogi_pyld = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1
  %39 = ptrtoint ptr %els_plogi_pyld to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %els_plogi_pyld, align 8
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %qla2x00_init_timer.exit.out_crit_edge, label %if.end18

qla2x00_init_timer.exit.out_crit_edge:            ; preds = %qla2x00_init_timer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end18:                                         ; preds = %qla2x00_init_timer.exit
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 128
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %42 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_size, align 4
  %els_resp_pyld_dma = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 1, i32 4
  %call.i142 = tail call ptr @dma_alloc_attrs(ptr noundef %dev20, i32 noundef %43, ptr noundef %els_resp_pyld_dma, i32 noundef 3264, i32 noundef 0) #14
  %els_resp_pyld = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1
  %44 = ptrtoint ptr %els_resp_pyld to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i142, ptr %els_resp_pyld, align 4
  %tobool28.not = icmp eq ptr %call.i142, null
  br i1 %tobool28.not, label %if.end18.out_crit_edge, label %if.end30

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end30:                                         ; preds = %if.end18
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %vha, i32 noundef 12403, ptr noundef nonnull @.str.21, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i142) #14
  %45 = call ptr @memset(ptr %call.i, i32 0, i32 116)
  %46 = call ptr @memset(ptr %call.i142, i32 0, i32 116)
  %47 = ptrtoint ptr %els_plogi_pyld to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %els_plogi_pyld, align 8
  %data = getelementptr inbounds %struct.els_plogi_payload, ptr %48, i32 0, i32 2
  %fl_csp = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 117, i32 2
  %49 = call ptr @memcpy(ptr %data, ptr %fl_csp, i32 112)
  %els_cmd = getelementptr inbounds %struct.els_plogi, ptr %u, i32 0, i32 1
  %50 = ptrtoint ptr %els_cmd to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %els_opcode, ptr %els_cmd, align 4
  %conv = trunc i32 %els_opcode to i8
  %51 = load ptr, ptr %els_plogi_pyld, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %els_opcode)
  %cmp = icmp eq i32 %els_opcode, 3
  br i1 %cmp, label %land.lhs.true, label %if.end30.if.end44_crit_edge

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end30
  %e_dbell = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 90
  %53 = ptrtoint ptr %e_dbell to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %e_dbell, align 8
  %and37 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %land.lhs.true.if.end44_crit_edge, label %if.then39

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %sp_features = getelementptr inbounds %struct.fc_els_flogi, ptr %call.i, i32 0, i32 2, i32 3
  %55 = ptrtoint ptr %sp_features to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %sp_features, align 1
  %57 = or i16 %56, 32
  store i16 %57, ptr %sp_features, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %land.lhs.true.if.end44_crit_edge, %if.end30.if.end44_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268566528, ptr noundef %vha, i32 noundef 12403, ptr noundef nonnull @.str.22) #14
  %58 = ptrtoint ptr %els_plogi_pyld to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %els_plogi_pyld, align 8
  tail call void @ql_dump_buffer(i32 noundef 268566528, ptr noundef %vha, i32 noundef 265, ptr noundef %59, i32 noundef 116) #14
  %comp = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %60 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #14
  %call48 = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %if.else, label %if.end44.if.end60_crit_edge

if.end44.if.end60_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 9
  %63 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %handle, align 8
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 7
  %65 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %loop_id, align 4
  %conv53 = zext i16 %66 to i32
  %67 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load55 = load i32, ptr %d_id.i, align 8
  %bf.lshr56 = lshr i32 %bf.load55, 8
  %d_id57 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 17
  %68 = ptrtoint ptr %d_id57 to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load58 = load i32, ptr %d_id57, align 8
  %bf.lshr59 = lshr i32 %bf.load58, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 12404, ptr noundef nonnull @.str.23, ptr noundef %62, i32 noundef %64, i32 noundef %conv53, i32 noundef %bf.lshr56, i32 noundef %bf.lshr59) #14
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.end44.if.end60_crit_edge
  %rval.0 = phi i32 [ 0, %if.else ], [ 258, %if.end44.if.end60_crit_edge ]
  br i1 %wait, label %if.then62, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @wait_for_completion(ptr noundef %comp) #14
  %comp_status = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 1, i32 20
  %69 = ptrtoint ptr %comp_status to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %comp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp67.not = icmp eq i16 %70, 0
  %spec.select = select i1 %cmp67.not, i32 %rval.0, i32 258
  br label %out

out:                                              ; preds = %if.then62, %if.end18.out_crit_edge, %qla2x00_init_timer.exit.out_crit_edge
  %rval.1 = phi i32 [ 258, %qla2x00_init_timer.exit.out_crit_edge ], [ 258, %if.end18.out_crit_edge ], [ %spec.select, %if.then62 ]
  %71 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags1, align 8
  %and74 = and i32 %72, -41
  store i32 %and74, ptr %flags1, align 8
  %73 = ptrtoint ptr %els_plogi_pyld to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %els_plogi_pyld, align 4
  %tobool.not.i143 = icmp eq ptr %74, null
  br i1 %tobool.not.i143, label %out.if.end.i_crit_edge, label %if.then.i145

out.if.end.i_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i145:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 128
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %79 = ptrtoint ptr %tx_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_size, align 4
  %81 = ptrtoint ptr %els_plogi_pyld_dma to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %els_plogi_pyld_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %80, ptr noundef nonnull %74, i32 noundef %82, i32 noundef 0) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i145, %out.if.end.i_crit_edge
  %els_resp_pyld.i = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1
  %83 = ptrtoint ptr %els_resp_pyld.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %els_resp_pyld.i, align 4
  %tobool2.not.i = icmp eq ptr %84, null
  br i1 %tobool2.not.i, label %if.end.i.qla2x00_els_dcmd2_free.exit_crit_edge, label %if.then3.i

if.end.i.qla2x00_els_dcmd2_free.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla2x00_els_dcmd2_free.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %85 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 128
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 44
  %89 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_size, align 4
  %els_resp_pyld_dma.i = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 1, i32 4
  %91 = ptrtoint ptr %els_resp_pyld_dma.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %els_resp_pyld_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev6.i, i32 noundef %90, ptr noundef nonnull %84, i32 noundef %92, i32 noundef 0) #14
  br label %qla2x00_els_dcmd2_free.exit

qla2x00_els_dcmd2_free.exit:                      ; preds = %if.then3.i, %if.end.i.qla2x00_els_dcmd2_free.exit_crit_edge
  %93 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %free.i, align 8
  tail call void %94(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %qla2x00_els_dcmd2_free.exit, %if.end60.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %rval.1, %qla2x00_els_dcmd2_free.exit ], [ %rval.0, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_els_dcmd2_iocb_timeout(ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fcport1 = getelementptr inbounds %struct.srb, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport1, align 4
  %vha2 = getelementptr inbounds %struct.srb, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vha2, align 8
  %name = getelementptr inbounds %struct.srb, ptr %data, i32 0, i32 12
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.srb, ptr %data, i32 0, i32 9
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  %port_name = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 5
  %d_id = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %d_id, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 402653184, ptr noundef %3, i32 noundef 12393, ptr noundef nonnull @.str.50, ptr noundef %5, i32 noundef %7, ptr noundef %port_name, i32 noundef %bf.lshr) #14
  %call = tail call i32 @qla24xx_async_abort_cmd(ptr noundef %data, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %cond = select i1 %cmp, ptr @.str.52, ptr @.str.53
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %3, i32 noundef 12400, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond) #14
  br i1 %cmp, label %entry.if.end24_crit_edge, label %do.body3

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

do.body3:                                         ; preds = %entry
  %qpair = getelementptr inbounds %struct.srb, ptr %data, i32 0, i32 14
  %9 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qpair, align 8
  %qp_lock_ptr = getelementptr inbounds %struct.qla_qpair, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %qp_lock_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qp_lock_ptr, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #14
  %13 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qpair, align 8
  %req = getelementptr inbounds %struct.qla_qpair, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req, align 4
  %num_outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %num_outstanding_cmds to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_outstanding_cmds, align 4
  %conv10 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %18)
  %cmp1143 = icmp ugt i16 %18, 1
  br i1 %cmp1143, label %for.body.lr.ph, label %do.body3.for.end_crit_edge

do.body3.for.end_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body3
  %outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %16, i32 0, i32 16
  %19 = ptrtoint ptr %outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %outstanding_cmds, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %h.044 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %20, i32 %h.044
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %cmp15 = icmp eq ptr %22, %data
  br i1 %cmp15, label %if.then17, label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.le = getelementptr ptr, ptr %20, i32 %h.044
  %23 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx.le, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %h.044, 1
  %exitcond.not = icmp eq i32 %inc, %conv10
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then17, %do.body3.for.end_crit_edge
  %24 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qpair, align 8
  %qp_lock_ptr23 = getelementptr inbounds %struct.qla_qpair, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %qp_lock_ptr23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qp_lock_ptr23, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %call6) #14
  %done = getelementptr inbounds %struct.srb, ptr %data, i32 0, i32 24
  %28 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %done, align 4
  tail call void %29(ptr noundef %data, i32 noundef 256) #14
  br label %if.end24

if.end24:                                         ; preds = %for.end, %entry.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_els_dcmd2_sp_done(ptr noundef %sp, i32 noundef %res) #4 align 64 {
entry:
  %ea = alloca %struct.event_arg, align 4
  %conflict_fcport = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fcport1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %0 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport1, align 4
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %vha2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %2 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vha2, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ea) #14
  %4 = call ptr @memset(ptr %ea, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conflict_fcport) #14
  %5 = ptrtoint ptr %conflict_fcport to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %conflict_fcport, align 4, !annotation !164
  %fw_status5 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 8
  %name = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 12
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle, align 8
  %d_id = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %d_id, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  %port_name = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 5
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %3, i32 noundef 12402, ptr noundef nonnull @.str.54, ptr noundef %7, i32 noundef %res, i32 noundef %9, i32 noundef %bf.lshr, ptr noundef %port_name) #14
  %flags = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 35
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and = and i32 %12, -41
  store i32 %and, ptr %flags, align 8
  %timer = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 1
  %call = tail call i32 @del_timer(ptr noundef %timer) #14
  %flags8 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %13 = ptrtoint ptr %flags8 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags8, align 4
  %15 = and i16 %14, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %comp = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  tail call void @complete(ptr noundef %comp) #14
  br label %cleanup

if.else:                                          ; preds = %entry
  %16 = ptrtoint ptr %fw_status5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_status5, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %18, label %sw.default86 [
    i32 21, label %if.else.sw.bb_crit_edge
    i32 0, label %if.else.sw.bb_crit_edge231
    i32 49, label %sw.bb13
  ]

if.else.sw.bb_crit_edge231:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.else.sw.bb_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.bb:                                            ; preds = %if.else.sw.bb_crit_edge, %if.else.sw.bb_crit_edge231
  %20 = getelementptr inbounds i8, ptr %ea, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 32)
  %22 = ptrtoint ptr %ea to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %1, ptr %ea, align 4
  %conv12 = trunc i32 %res to i16
  %rc = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 4
  %23 = ptrtoint ptr %rc to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv12, ptr %rc, align 4
  call void @qla_handle_els_plogi_done(ptr noundef %3, ptr noundef nonnull %ea) #14
  br label %sw.epilog97

sw.bb13:                                          ; preds = %if.else
  %arrayidx14 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 12
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx14, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %26, label %sw.bb13.sw.default_crit_edge [
    i32 26, label %sw.bb15
    i32 27, label %sw.bb44
    i32 3, label %sw.bb67
  ]

sw.bb13.sw.default_crit_edge:                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.default

sw.bb15:                                          ; preds = %sw.bb13
  %arrayidx16 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 16
  %28 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx16, align 4
  %30 = and i32 %29, -65536
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %conv18 = trunc i32 %31 to i16
  %32 = ptrtoint ptr %port_name to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %port_name, align 1
  %34 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack = load i32, ptr %d_id, align 8
  %35 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call23 = call ptr @qlt_find_sess_invalidate_other(ptr noundef %3, i64 noundef %33, [1 x i32] %35, i16 noundef zeroext %conv18, ptr noundef nonnull %conflict_fcport) #14
  %36 = ptrtoint ptr %conflict_fcport to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %conflict_fcport, align 4
  %tobool24.not = icmp eq ptr %37, null
  br i1 %tobool24.not, label %if.else33, label %if.then25

if.then25:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #16
  %conflict = getelementptr inbounds %struct.fc_port, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %conflict to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %1, ptr %conflict, align 8
  %login_pause = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %login_pause to i32
  call void @__asan_loadN_noabort(i32 %39, i32 3)
  %bf.load26 = load i24, ptr %login_pause, align 4
  %bf.set = or i24 %bf.load26, 16384
  store i24 %bf.set, ptr %login_pause, align 4
  %40 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load30 = load i32, ptr %d_id, align 8
  %bf.lshr31 = lshr i32 %bf.load30, 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %3, i32 noundef 8429, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.qla2x00_els_dcmd2_sp_done, i32 noundef 2886, ptr noundef %port_name, i32 noundef %bf.lshr31, i32 noundef %31) #14
  br label %sw.epilog97

if.else33:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load37 = load i32, ptr %d_id, align 8
  %bf.lshr38 = lshr i32 %bf.load37, 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %3, i32 noundef 8429, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.qla2x00_els_dcmd2_sp_done, i32 noundef 2892, ptr noundef %port_name, i32 noundef %bf.lshr38, i32 noundef %31) #14
  call void @qla2x00_clear_loop_id(ptr noundef %1) #14
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 52
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  %loop_id_map = getelementptr inbounds %struct.qla_hw_data, ptr %43, i32 0, i32 268
  %44 = ptrtoint ptr %loop_id_map to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %loop_id_map, align 8
  call void @_set_bit(i32 noundef %31, ptr noundef %45) #14
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 7
  %46 = ptrtoint ptr %loop_id to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv18, ptr %loop_id, align 4
  %keep_nport_handle = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %keep_nport_handle to i32
  call void @__asan_loadN_noabort(i32 %47, i32 3)
  %bf.load41 = load i24, ptr %keep_nport_handle, align 4
  %bf.clear42 = and i24 %bf.load41, -65537
  store i24 %bf.clear42, ptr %keep_nport_handle, align 4
  call void @qlt_schedule_sess_for_deletion(ptr noundef %1) #14
  br label %sw.epilog97

sw.bb44:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx45 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 16
  %48 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx45, align 4
  %loop_id57 = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 7
  %50 = ptrtoint ptr %loop_id57 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %loop_id57, align 4
  %conv58 = zext i16 %51 to i32
  %52 = and i32 %49, -256
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %3, i32 noundef 8428, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.qla2x00_els_dcmd2_sp_done, i32 noundef 2913, ptr noundef %port_name, i32 noundef %conv58, i32 noundef %53) #14
  %54 = ptrtoint ptr %loop_id57 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %loop_id57, align 4
  %conv62 = zext i16 %55 to i32
  %hw63 = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 52
  %56 = ptrtoint ptr %hw63 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw63, align 4
  %loop_id_map64 = getelementptr inbounds %struct.qla_hw_data, ptr %57, i32 0, i32 268
  %58 = ptrtoint ptr %loop_id_map64 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %loop_id_map64, align 8
  tail call void @_set_bit(i32 noundef %conv62, ptr noundef %59) #14
  %60 = ptrtoint ptr %loop_id57 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 4096, ptr %loop_id57, align 4
  %call66 = tail call i32 @qla24xx_post_gnl_work(ptr noundef %3, ptr noundef %1) #14
  br label %sw.epilog97

sw.bb67:                                          ; preds = %sw.bb13
  %hw68 = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 52
  %61 = ptrtoint ptr %hw68 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw68, align 4
  %exch_starvation = getelementptr inbounds %struct.qla_hw_data, ptr %62, i32 0, i32 39
  %63 = ptrtoint ptr %exch_starvation to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %exch_starvation, align 1
  %inc = add i8 %64, 1
  store i8 %inc, ptr %exch_starvation, align 1
  %65 = load ptr, ptr %hw68, align 4
  %exch_starvation70 = getelementptr inbounds %struct.qla_hw_data, ptr %65, i32 0, i32 39
  %66 = ptrtoint ptr %exch_starvation70 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %exch_starvation70, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %67)
  %cmp = icmp ugt i8 %67, 5
  br i1 %cmp, label %if.then73, label %sw.bb67.sw.default_crit_edge

sw.bb67.sw.default_crit_edge:                     ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.default

if.then73:                                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %3, i32 noundef 53318, ptr noundef nonnull @.str.58) #14
  %68 = ptrtoint ptr %hw68 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw68, align 4
  %exch_starvation75 = getelementptr inbounds %struct.qla_hw_data, ptr %69, i32 0, i32 39
  %70 = ptrtoint ptr %exch_starvation75 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %exch_starvation75, align 1
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags) #14
  tail call void @qla2xxx_wake_dpc(ptr noundef %3) #14
  br label %sw.default

sw.default:                                       ; preds = %if.then73, %sw.bb67.sw.default_crit_edge, %sw.bb13.sw.default_crit_edge
  %71 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fcport1, align 4
  %port_name78 = getelementptr inbounds %struct.fc_port, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %fw_status5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fw_status5, align 4
  %75 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx14, align 4
  %arrayidx82 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 16
  %77 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx82, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %3, i32 noundef 8427, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.qla2x00_els_dcmd2_sp_done, ptr noundef %port_name78, i32 noundef %74, i32 noundef %76, i32 noundef %78) #14
  %79 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags, align 8
  %and84 = and i32 %80, -9
  store i32 %and84, ptr %flags, align 8
  %disc_state.i = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 50
  %81 = ptrtoint ptr %disc_state.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4, ptr %disc_state.i, align 8
  %shadow_disc_state.i = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 51
  br label %while.cond.i

while.cond.i:                                     ; preds = %atomic_cmpxchg.exit.i.while.cond.i_crit_edge, %sw.default
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %shadow_disc_state.i, i32 noundef 4) #14
  %82 = ptrtoint ptr %shadow_disc_state.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %shadow_disc_state.i, align 4
  %shl4.i = shl i32 %83, 4
  %or.i = or i32 %shl4.i, 4
  %call.i.i20.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %shadow_disc_state.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %shadow_disc_state.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %while.cond.i
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %shadow_disc_state.i, ptr %shadow_disc_state.i, i32 %83, i32 %or.i, ptr elementtype(i32) %shadow_disc_state.i) #14, !srcloc !182
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %84, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %84, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !183
  %cmp.i = icmp eq i32 %83, %asmresult3.i.i.i.i
  br i1 %cmp.i, label %qla2x00_set_fcport_disc_state.exit, label %atomic_cmpxchg.exit.i.while.cond.i_crit_edge

atomic_cmpxchg.exit.i.while.cond.i_crit_edge:     ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

qla2x00_set_fcport_disc_state.exit:               ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %vha.i = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 1
  %85 = ptrtoint ptr %vha.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vha.i, align 8
  %and.i = and i32 %83, 15
  %arrayidx.i = getelementptr [11 x ptr], ptr @port_dstate_str, i32 0, i32 %and.i
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i, align 4
  %89 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %89)
  %bf.load.i = load i32, ptr %d_id, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %86, i32 noundef 8500, ptr noundef nonnull @.str.38, ptr noundef %port_name, ptr noundef %88, ptr noundef nonnull @.str.43, i32 noundef %bf.lshr.i) #14
  %dpc_flags85 = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 8, ptr noundef %dpc_flags85) #14
  br label %sw.epilog97

sw.default86:                                     ; preds = %if.else
  %90 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fcport1, align 4
  %port_name88 = getelementptr inbounds %struct.fc_port, ptr %91, i32 0, i32 5
  %arrayidx91 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 12
  %92 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx91, align 4
  %arrayidx92 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 16
  %94 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx92, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %3, i32 noundef 8427, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.qla2x00_els_dcmd2_sp_done, ptr noundef %port_name88, i32 noundef %17, i32 noundef %93, i32 noundef %95) #14
  %96 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fcport1, align 4
  %flags94 = getelementptr inbounds %struct.fc_port, ptr %97, i32 0, i32 35
  %98 = ptrtoint ptr %flags94 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags94, align 8
  %and95 = and i32 %99, -9
  store i32 %and95, ptr %flags94, align 8
  %disc_state.i192 = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 50
  %100 = ptrtoint ptr %disc_state.i192 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 4, ptr %disc_state.i192, align 8
  %shadow_disc_state.i193 = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 51
  br label %while.cond.i198

while.cond.i198:                                  ; preds = %atomic_cmpxchg.exit.i204.while.cond.i198_crit_edge, %sw.default86
  %call.i.i.i194 = tail call zeroext i1 @__kasan_check_read(ptr noundef %shadow_disc_state.i193, i32 noundef 4) #14
  %101 = ptrtoint ptr %shadow_disc_state.i193 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %shadow_disc_state.i193, align 4
  %shl4.i195 = shl i32 %102, 4
  %or.i196 = or i32 %shl4.i195, 4
  %call.i.i20.i197 = tail call zeroext i1 @__kasan_check_write(ptr noundef %shadow_disc_state.i193, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %shadow_disc_state.i193, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i201

do.body.i.i.i.i201:                               ; preds = %do.body.i.i.i.i201.do.body.i.i.i.i201_crit_edge, %while.cond.i198
  %103 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %shadow_disc_state.i193, ptr %shadow_disc_state.i193, i32 %102, i32 %or.i196, ptr elementtype(i32) %shadow_disc_state.i193) #14, !srcloc !182
  %asmresult.i.i.i.i199 = extractvalue { i32, i32 } %103, 0
  %tobool.not.i.i.i.i200 = icmp eq i32 %asmresult.i.i.i.i199, 0
  br i1 %tobool.not.i.i.i.i200, label %atomic_cmpxchg.exit.i204, label %do.body.i.i.i.i201.do.body.i.i.i.i201_crit_edge

do.body.i.i.i.i201.do.body.i.i.i.i201_crit_edge:  ; preds = %do.body.i.i.i.i201
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i201

atomic_cmpxchg.exit.i204:                         ; preds = %do.body.i.i.i.i201
  %asmresult3.i.i.i.i202 = extractvalue { i32, i32 } %103, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !183
  %cmp.i203 = icmp eq i32 %102, %asmresult3.i.i.i.i202
  br i1 %cmp.i203, label %qla2x00_set_fcport_disc_state.exit212, label %atomic_cmpxchg.exit.i204.while.cond.i198_crit_edge

atomic_cmpxchg.exit.i204.while.cond.i198_crit_edge: ; preds = %atomic_cmpxchg.exit.i204
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i198

qla2x00_set_fcport_disc_state.exit212:            ; preds = %atomic_cmpxchg.exit.i204
  call void @__sanitizer_cov_trace_pc() #16
  %vha.i205 = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 1
  %104 = ptrtoint ptr %vha.i205 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %vha.i205, align 8
  %and.i207 = and i32 %102, 15
  %arrayidx.i208 = getelementptr [11 x ptr], ptr @port_dstate_str, i32 0, i32 %and.i207
  %106 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i208, align 4
  %108 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %108)
  %bf.load.i210 = load i32, ptr %d_id, align 8
  %bf.lshr.i211 = lshr i32 %bf.load.i210, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %105, i32 noundef 8500, ptr noundef nonnull @.str.38, ptr noundef %port_name, ptr noundef %107, ptr noundef nonnull @.str.43, i32 noundef %bf.lshr.i211) #14
  %dpc_flags96 = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 8, ptr noundef %dpc_flags96) #14
  br label %sw.epilog97

sw.epilog97:                                      ; preds = %qla2x00_set_fcport_disc_state.exit212, %qla2x00_set_fcport_disc_state.exit, %sw.bb44, %if.else33, %if.then25, %sw.bb
  %call98 = call ptr @qla2x00_alloc_work(ptr noundef %3, i32 noundef 8) #14
  %tobool99.not = icmp eq ptr %call98, null
  br i1 %tobool99.not, label %if.then100, label %if.end103

if.then100:                                       ; preds = %sw.epilog97
  %els_plogi_pyld.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1
  %109 = ptrtoint ptr %els_plogi_pyld.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %els_plogi_pyld.i, align 4
  %tobool.not.i = icmp eq ptr %110, null
  br i1 %tobool.not.i, label %if.then100.if.end.i_crit_edge, label %if.then.i

if.then100.if.end.i_crit_edge:                    ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #16
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 52
  %111 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 128
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  %tx_size.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 4
  %115 = ptrtoint ptr %tx_size.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tx_size.i, align 4
  %els_plogi_pyld_dma.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1
  %117 = ptrtoint ptr %els_plogi_pyld_dma.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %els_plogi_pyld_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %116, ptr noundef nonnull %110, i32 noundef %118, i32 noundef 0) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then100.if.end.i_crit_edge
  %els_resp_pyld.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1
  %119 = ptrtoint ptr %els_resp_pyld.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %els_resp_pyld.i, align 4
  %tobool2.not.i = icmp eq ptr %120, null
  br i1 %tobool2.not.i, label %if.end.i.qla2x00_els_dcmd2_free.exit_crit_edge, label %if.then3.i

if.end.i.qla2x00_els_dcmd2_free.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla2x00_els_dcmd2_free.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %hw4.i = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 52
  %121 = ptrtoint ptr %hw4.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw4.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 128
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 44
  %rx_size.i = getelementptr inbounds %struct.els_plogi, ptr %u, i32 0, i32 6
  %125 = ptrtoint ptr %rx_size.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rx_size.i, align 4
  %els_resp_pyld_dma.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 4
  %127 = ptrtoint ptr %els_resp_pyld_dma.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %els_resp_pyld_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev6.i, i32 noundef %126, ptr noundef nonnull %120, i32 noundef %128, i32 noundef 0) #14
  br label %qla2x00_els_dcmd2_free.exit

qla2x00_els_dcmd2_free.exit:                      ; preds = %if.then3.i, %if.end.i.qla2x00_els_dcmd2_free.exit_crit_edge
  %free = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %129 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %free, align 8
  call void %130(ptr noundef %sp) #14
  br label %cleanup

if.end103:                                        ; preds = %sw.epilog97
  call void @__sanitizer_cov_trace_pc() #16
  %u104 = getelementptr inbounds %struct.qla_work_evt, ptr %call98, i32 0, i32 3
  %131 = ptrtoint ptr %u104 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %sp, ptr %u104, align 4
  %call106 = call i32 @qla2x00_post_work(ptr noundef %3, ptr noundef nonnull %call98) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %qla2x00_els_dcmd2_free.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conflict_fcport) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ea) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qla_els_pt_iocb(ptr nocapture noundef readonly %vha, ptr noundef writeonly %els_iocb, ptr nocapture noundef readonly %a) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %els_iocb to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 83, ptr %els_iocb, align 4
  %entry_count = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 1
  %1 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %entry_count, align 1
  %sys_define = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 2
  %2 = ptrtoint ptr %sys_define to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %sys_define, align 2
  %entry_status = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 3
  %3 = ptrtoint ptr %entry_status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %entry_status, align 1
  %handle = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 268435455, ptr %handle, align 4
  %nport_handle = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 2
  %5 = ptrtoint ptr %nport_handle to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nport_handle, align 2
  %nport_handle1 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 6
  %7 = ptrtoint ptr %nport_handle1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %nport_handle1, align 2
  %rx_xchg_address = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 5
  %8 = ptrtoint ptr %rx_xchg_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_xchg_address, align 4
  %rx_xchg_address2 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 10
  %10 = ptrtoint ptr %rx_xchg_address2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rx_xchg_address2, align 4
  %tx_dsd_count = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 7
  %11 = ptrtoint ptr %tx_dsd_count to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 256, ptr %tx_dsd_count, align 4
  %vp_idx = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 1
  %12 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vp_idx, align 1
  %vp_index = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 8
  %14 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %vp_index, align 2
  %sof_type = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 9
  %15 = ptrtoint ptr %sof_type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %sof_type, align 1
  %rx_dsd_count = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 11
  %16 = ptrtoint ptr %rx_dsd_count to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %rx_dsd_count, align 4
  %17 = ptrtoint ptr %a to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %a, align 4
  %opcode = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 12
  %19 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %opcode, align 2
  %did = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 6
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %did, i32 0, i32 2
  %20 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %al_pa, align 2
  %d_id = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 14
  %22 = ptrtoint ptr %d_id to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %d_id, align 4
  %area = getelementptr inbounds %struct.anon.80, ptr %did, i32 0, i32 1
  %23 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %area, align 1
  %arrayidx5 = getelementptr %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 14, i32 1
  %25 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx5, align 1
  %26 = ptrtoint ptr %did to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %did, align 4
  %arrayidx8 = getelementptr %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 14, i32 2
  %28 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx8, align 2
  %d_id9 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 17
  %al_pa10 = getelementptr inbounds %struct.anon.80, ptr %d_id9, i32 0, i32 2
  %29 = ptrtoint ptr %al_pa10 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %al_pa10, align 2
  %s_id = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 15
  %arrayidx11 = getelementptr %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 15, i32 1
  %31 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx11, align 1
  %area13 = getelementptr inbounds %struct.anon.80, ptr %d_id9, i32 0, i32 1
  %32 = ptrtoint ptr %area13 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %area13, align 1
  %arrayidx15 = getelementptr %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 15, i32 2
  %34 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx15, align 1
  %35 = ptrtoint ptr %d_id9 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %d_id9, align 8
  %37 = ptrtoint ptr %s_id to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %s_id, align 1
  %control_flags = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 3
  %38 = ptrtoint ptr %control_flags to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %control_flags, align 4
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %control_flags20 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 16
  %41 = ptrtoint ptr %control_flags20 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %control_flags20, align 2
  %tx_byte_count = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 9
  %42 = ptrtoint ptr %tx_byte_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_byte_count, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17
  %tx_byte_count21 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17, i32 0, i32 1
  %46 = ptrtoint ptr %tx_byte_count21 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %tx_byte_count21, align 4
  %tx_len = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 8
  %47 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_len, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %tx_len22 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17, i32 1
  %50 = ptrtoint ptr %tx_len22 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %tx_len22, align 4
  %tx_addr = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 12
  %51 = ptrtoint ptr %tx_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_addr, align 4
  %conv = zext i32 %52 to i64
  %tx_address = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17, i32 0, i32 2
  %53 = tail call i64 @llvm.bswap.i64(i64 %conv) #14
  %54 = ptrtoint ptr %tx_address to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 %53, ptr %tx_address, align 1
  %rx_byte_count = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 11
  %55 = ptrtoint ptr %rx_byte_count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_byte_count, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %45, align 4
  %rx_len = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 10
  %59 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_len, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %rx_len24 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17, i32 1, i32 12
  %62 = ptrtoint ptr %rx_len24 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %rx_len24, align 4
  %rx_addr = getelementptr inbounds %struct.qla_els_pt_arg, ptr %a, i32 0, i32 13
  %63 = ptrtoint ptr %rx_addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_addr, align 4
  %conv25 = zext i32 %64 to i64
  %rx_address = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17, i32 1, i32 4
  %65 = tail call i64 @llvm.bswap.i64(i64 %conv25) #14
  %66 = ptrtoint ptr %rx_address to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %65, ptr %rx_address, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_start_scsi(ptr noundef %sp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %u, align 8
  %req3 = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 54
  %8 = ptrtoint ptr %req3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req3, align 8
  %rsp_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 25
  %10 = ptrtoint ptr %rsp_q_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rsp_q_map, align 16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %portnum = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 254
  %14 = ptrtoint ptr %portnum to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %portnum, align 4
  %conv = zext i16 %15 to i32
  %shl = shl nuw nsw i32 %conv, 5
  %marker_needed = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %marker_needed to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %marker_needed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not = icmp eq i8 %17, 0
  br i1 %cmp.not, label %entry.do.body11_crit_edge, label %if.then

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11

if.then:                                          ; preds = %entry
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 34
  %18 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_qpair, align 4
  %qp_lock_ptr.i = getelementptr inbounds %struct.qla_qpair, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qp_lock_ptr.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #14
  %req1.i = getelementptr inbounds %struct.qla_qpair, ptr %19, i32 0, i32 12
  %22 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req1.i, align 4
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i, align 4
  %call2.i703 = tail call ptr @__qla2x00_alloc_iocbs(ptr noundef %19, ptr noundef null) #14
  %cmp.i704 = icmp eq ptr %call2.i703, null
  br i1 %cmp.i704, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %29, i32 noundef 12326, ptr noundef nonnull @.str.32) #14
  %30 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %qp_lock_ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %call2.i) #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %1, i32 noundef 12300, ptr noundef nonnull @.str.24, ptr noundef %7) #14
  br label %cleanup426

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %call2.i703 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 4, ptr %call2.i703, align 4
  %modifier.i = getelementptr inbounds %struct.mrk_entry_t, ptr %call2.i703, i32 0, i32 6
  %33 = ptrtoint ptr %modifier.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %modifier.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !147
  tail call void @arm_heavy_mb() #14
  tail call void @qla2x00_start_iocbs(ptr noundef %1, ptr noundef %23) #14
  %34 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %qp_lock_ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %call2.i) #14
  %36 = ptrtoint ptr %marker_needed to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %marker_needed, align 4
  br label %do.body11

do.body11:                                        ; preds = %if.end, %entry.do.body11_crit_edge
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 6
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #14
  %num_outstanding_cmds.i = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 18
  %37 = ptrtoint ptr %num_outstanding_cmds.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %num_outstanding_cmds.i, align 4
  %conv.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %38)
  %cmp17.i = icmp ugt i16 %38, 1
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %do.body11.if.end415_crit_edge

do.body11.if.end415_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end415

for.body.lr.ph.i:                                 ; preds = %do.body11
  %current_outstanding_cmd.i = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 17
  %39 = ptrtoint ptr %current_outstanding_cmd.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %current_outstanding_cmd.i, align 4
  %outstanding_cmds.i = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 16
  %41 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %outstanding_cmds.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc8.i = add nuw nsw i32 %index.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.if.end415_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.if.end415_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end415

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %handle.019.i = phi i32 [ %40, %for.body.lr.ph.i ], [ %spec.store.select.i, %for.cond.i.for.body.i_crit_edge ]
  %index.018.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc8.i, %for.cond.i.for.body.i_crit_edge ]
  %inc.i = add i32 %handle.019.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp4.i = icmp eq i32 %inc.i, %conv.i
  %spec.store.select.i = select i1 %cmp4.i, i32 1, i32 %inc.i
  %arrayidx.i = getelementptr ptr, ptr %42, i32 %spec.store.select.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %qla2xxx_get_next_handle.exit, label %for.cond.i

qla2xxx_get_next_handle.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp19 = icmp eq i32 %spec.store.select.i, 0
  br i1 %cmp19, label %qla2xxx_get_next_handle.exit.if.end415_crit_edge, label %if.end22

qla2xxx_get_next_handle.exit.if.end415_crit_edge: ; preds = %qla2xxx_get_next_handle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end415

if.end22:                                         ; preds = %qla2xxx_get_next_handle.exit
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 17, i32 0, i32 1
  %45 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not = icmp eq i32 %46, 0
  br i1 %tobool.not, label %if.end22.if.end34_crit_edge, label %if.then24

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then24:                                        ; preds = %if.end22
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 17
  %49 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sdb.i, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 15
  %51 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sc_data_direction, align 4
  %call27 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %50, i32 noundef %46, i32 noundef %52, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then24.if.end415_crit_edge, label %if.then24.if.end34_crit_edge, !prof !148

if.then24.if.end34_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then24.if.end415_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end415

if.end34:                                         ; preds = %if.then24.if.end34_crit_edge, %if.end22.if.end34_crit_edge
  %nseg.0 = phi i32 [ %call27, %if.then24.if.end34_crit_edge ], [ 0, %if.end22.if.end34_crit_edge ]
  %conv35 = trunc i32 %nseg.0 to i16
  %conv36 = and i32 %nseg.0, 65535
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xshiftctondsd to i32))
  %53 = load i32, ptr @ql2xshiftctondsd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv36, i32 %53)
  %cmp37 = icmp sgt i32 %conv36, %53
  br i1 %cmp37, label %if.then39, label %if.else235

if.then39:                                        ; preds = %if.end34
  %conv35.frozen = freeze i16 %conv35
  %div.i = udiv i16 %conv35.frozen, 37
  %54 = mul i16 %div.i, 37
  %.decomposed = sub i16 %conv35.frozen, %54
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.decomposed)
  %tobool.not.i667 = icmp ne i16 %.decomposed, 0
  %inc.i668 = zext i1 %tobool.not.i667 to i16
  %spec.select.i = add nuw nsw i16 %div.i, %inc.i668
  %conv41 = zext i16 %spec.select.i to i32
  %gbl_dsd_inuse = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 258
  %55 = ptrtoint ptr %gbl_dsd_inuse to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %gbl_dsd_inuse, align 16
  %conv42 = zext i16 %56 to i32
  %add = add nuw nsw i32 %conv42, %conv41
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add)
  %cmp43 = icmp ugt i32 %add, 4095
  br i1 %cmp43, label %if.then45, label %if.end50

if.then45:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %1, i32 noundef 12301, ptr noundef nonnull @.str.25, i32 noundef %add, i32 noundef 4096, ptr noundef %7) #14
  br label %queuing_error

if.end50:                                         ; preds = %if.then39
  %gbl_dsd_avail = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 259
  %57 = ptrtoint ptr %gbl_dsd_avail to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %gbl_dsd_avail, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select.i, i16 %58)
  %cmp53.not = icmp ugt i16 %spec.select.i, %58
  br i1 %cmp53.not, label %for.body.lr.ph, label %if.end50.sufficient_dsds_crit_edge

if.end50.sufficient_dsds_crit_edge:               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %sufficient_dsds

for.body.lr.ph:                                   ; preds = %if.end50
  %sub = sub i16 %spec.select.i, %58
  %dl_dma_pool = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 239
  %gbl_dsd_list = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 260
  %prev.i = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 260, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0731 = phi i16 [ 0, %for.body.lr.ph ], [ %inc76, %list_add_tail.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 2848, i32 noundef 16) #17
  %tobool67.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool67.not, label %if.then68, label %if.end69

if.then68:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %1, i32 noundef 12302, ptr noundef nonnull @.str.26, ptr noundef %7) #14
  br label %queuing_error

if.end69:                                         ; preds = %for.body
  %60 = ptrtoint ptr %dl_dma_pool to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dl_dma_pool, align 16
  %dsd_list_dma = getelementptr inbounds %struct.dsd_dma, ptr %call7.i.i, i32 0, i32 1
  %call70 = tail call ptr @dma_pool_alloc(ptr noundef %61, i32 noundef 2592, ptr noundef %dsd_list_dma) #14
  %dsd_addr = getelementptr inbounds %struct.dsd_dma, ptr %call7.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %dsd_addr to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call70, ptr %dsd_addr, align 4
  %tobool72.not = icmp eq ptr %call70, null
  br i1 %tobool72.not, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %1, i32 noundef 12303, ptr noundef nonnull @.str.27, ptr noundef %7) #14
  br label %queuing_error

if.end74:                                         ; preds = %if.end69
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %64, ptr noundef %gbl_dsd_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end74.list_add_tail.exit_crit_edge

if.end74.list_add_tail.exit_crit_edge:            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %gbl_dsd_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call7.i.i, ptr %64, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end74.list_add_tail.exit_crit_edge
  %69 = ptrtoint ptr %gbl_dsd_avail to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %gbl_dsd_avail, align 2
  %inc = add i16 %70, 1
  store i16 %inc, ptr %gbl_dsd_avail, align 2
  %inc76 = add nuw i16 %i.0731, 1
  %cmp64 = icmp ult i16 %inc76, %sub
  br i1 %cmp64, label %list_add_tail.exit.for.body_crit_edge, label %list_add_tail.exit.sufficient_dsds_crit_edge

list_add_tail.exit.sufficient_dsds_crit_edge:     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sufficient_dsds

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

sufficient_dsds:                                  ; preds = %list_add_tail.exit.sufficient_dsds_crit_edge, %if.end50.sufficient_dsds_crit_edge
  %cnt77 = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 8
  %71 = ptrtoint ptr %cnt77 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %cnt77, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %72)
  %cmp81 = icmp ult i16 %72, 3
  br i1 %cmp81, label %if.then83, label %sufficient_dsds.if.end116_crit_edge

sufficient_dsds.if.end116_crit_edge:              ; preds = %sufficient_dsds
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end116

if.then83:                                        ; preds = %sufficient_dsds
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !155
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #14
  %ring_index = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 5
  %75 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ring_index, align 4
  %conv87 = zext i16 %76 to i32
  %conv88 = and i32 %74, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv88, i32 %conv87)
  %cmp89 = icmp ugt i32 %conv88, %conv87
  br i1 %cmp89, label %if.then91, label %if.else98

if.then91:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  %77 = trunc i32 %74 to i16
  %conv96 = sub i16 %77, %76
  br label %if.end107

if.else98:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  %length = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 9
  %78 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %length, align 2
  %80 = trunc i32 %74 to i16
  %81 = sub i16 %80, %76
  %conv105 = add i16 %81, %79
  br label %if.end107

if.end107:                                        ; preds = %if.else98, %if.then91
  %storemerge665 = phi i16 [ %conv105, %if.else98 ], [ %conv96, %if.then91 ]
  %82 = ptrtoint ptr %cnt77 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %storemerge665, ptr %cnt77, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %storemerge665)
  %cmp112 = icmp ult i16 %storemerge665, 3
  br i1 %cmp112, label %if.end107.queuing_error_crit_edge, label %if.end107.if.end116_crit_edge

if.end107.if.end116_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end116

if.end107.queuing_error_crit_edge:                ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %queuing_error

if.end116:                                        ; preds = %if.end107.if.end116_crit_edge, %sufficient_dsds.if.end116_crit_edge
  %ctx_mempool = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 241
  %83 = ptrtoint ptr %ctx_mempool to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ctx_mempool, align 8
  %call117 = tail call noalias ptr @mempool_alloc(ptr noundef %84, i32 noundef 2592) #14
  %ct6_ctx = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %85 = ptrtoint ptr %ct6_ctx to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call117, ptr %ct6_ctx, align 8
  %tobool119.not = icmp eq ptr %call117, null
  br i1 %tobool119.not, label %if.then120, label %if.end121

if.then120:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %1, i32 noundef 12304, ptr noundef nonnull @.str.28, ptr noundef %7) #14
  br label %queuing_error

if.end121:                                        ; preds = %if.end116
  %86 = call ptr @memset(ptr %call117, i32 0, i32 24)
  %fcp_cmnd_dma_pool = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 240
  %87 = ptrtoint ptr %fcp_cmnd_dma_pool to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fcp_cmnd_dma_pool, align 4
  %fcp_cmnd_dma = getelementptr inbounds %struct.ct6_dsd, ptr %call117, i32 0, i32 1
  %call.i = tail call ptr @dma_pool_alloc(ptr noundef %88, i32 noundef 2848, ptr noundef %fcp_cmnd_dma) #14
  %fcp_cmnd = getelementptr inbounds %struct.ct6_dsd, ptr %call117, i32 0, i32 2
  %89 = ptrtoint ptr %fcp_cmnd to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i, ptr %fcp_cmnd, align 4
  %tobool124.not = icmp eq ptr %call.i, null
  br i1 %tobool124.not, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %1, i32 noundef 12305, ptr noundef nonnull @.str.29, ptr noundef %7) #14
  br label %queuing_error

if.end126:                                        ; preds = %if.end121
  %dsd_list = getelementptr inbounds %struct.ct6_dsd, ptr %call117, i32 0, i32 4
  %90 = ptrtoint ptr %dsd_list to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %dsd_list, ptr %dsd_list, align 4
  %prev.i669 = getelementptr inbounds %struct.ct6_dsd, ptr %call117, i32 0, i32 4, i32 1
  %91 = ptrtoint ptr %prev.i669 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %dsd_list, ptr %prev.i669, align 4
  %dsd_use_cnt = getelementptr inbounds %struct.ct6_dsd, ptr %call117, i32 0, i32 3
  %92 = ptrtoint ptr %dsd_use_cnt to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %dsd_use_cnt, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 14
  %93 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %cmd_len, align 4
  %conv127 = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %94)
  %cmp128 = icmp ugt i16 %94, 16
  br i1 %cmp128, label %if.then130, label %if.end126.if.end150_crit_edge

if.end126.if.end150_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end150

if.then130:                                       ; preds = %if.end126
  %rem = and i32 %conv127, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp137.not = icmp eq i32 %rem, 0
  br i1 %cmp137.not, label %if.end142, label %queuing_error_fcp_cmnd

if.end142:                                        ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #16
  %95 = trunc i16 %94 to i8
  %conv134 = add i8 %95, -16
  %add146 = add i16 %94, 16
  br label %if.end150

if.end150:                                        ; preds = %if.end142, %if.end126.if.end150_crit_edge
  %storemerge = phi i16 [ %add146, %if.end142 ], [ 32, %if.end126.if.end150_crit_edge ]
  %additional_cdb_len.0 = phi i8 [ %conv134, %if.end142 ], [ 0, %if.end126.if.end150_crit_edge ]
  %96 = ptrtoint ptr %call117 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %storemerge, ptr %call117, align 4
  %ring_ptr = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 2
  %97 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ring_ptr, align 4
  %id = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 12
  %99 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %id, align 4
  %conv.i670 = zext i16 %100 to i32
  %shl.i = shl nuw i32 %conv.i670, 16
  %conv1.i = and i32 %spec.store.select.i, 65535
  %or.i = or i32 %shl.i, %conv1.i
  %handle153 = getelementptr inbounds %struct.cmd_type_6, ptr %98, i32 0, i32 4
  %101 = ptrtoint ptr %handle153 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or.i, ptr %handle153, align 4
  %add.ptr = getelementptr i32, ptr %98, i32 2
  %102 = call ptr @memset(ptr %add.ptr, i32 0, i32 56)
  %103 = tail call i16 @llvm.bswap.i16(i16 %conv35)
  %dseg_count = getelementptr inbounds %struct.cmd_type_6, ptr %98, i32 0, i32 7
  %104 = ptrtoint ptr %dseg_count to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %dseg_count, align 4
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %105 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %fcport, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %106, i32 0, i32 7
  %107 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %loop_id, align 4
  %109 = tail call i16 @llvm.bswap.i16(i16 %108)
  %110 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %add.ptr, align 4
  %111 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %fcport, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %112, i32 0, i32 6
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %113 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %al_pa, align 2
  %port_id = getelementptr inbounds %struct.cmd_type_6, ptr %98, i32 0, i32 15
  %115 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %port_id, align 4
  %116 = load ptr, ptr %fcport, align 4
  %d_id157 = getelementptr inbounds %struct.fc_port, ptr %116, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id157, i32 0, i32 1
  %117 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %area, align 1
  %arrayidx159 = getelementptr %struct.cmd_type_6, ptr %98, i32 0, i32 15, i32 1
  %119 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx159, align 1
  %120 = load ptr, ptr %fcport, align 4
  %d_id161 = getelementptr inbounds %struct.fc_port, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %d_id161 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %d_id161, align 8
  %arrayidx163 = getelementptr %struct.cmd_type_6, ptr %98, i32 0, i32 15, i32 2
  %123 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %arrayidx163, align 2
  %124 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %vha1, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %125, i32 0, i32 46
  %126 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %vp_idx, align 8
  %conv165 = trunc i16 %127 to i8
  %vp_index = getelementptr inbounds %struct.cmd_type_6, ptr %98, i32 0, i32 16
  %128 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv165, ptr %vp_index, align 1
  tail call fastcc void @qla24xx_build_scsi_type_6_iocbs(ptr noundef %sp, ptr noundef %98, i16 noundef zeroext %conv35)
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 1
  %129 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %130, i32 0, i32 18
  %131 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %lun, align 8
  %lun170 = getelementptr inbounds %struct.cmd_type_6, ptr %98, i32 0, i32 9
  tail call void @int_to_scsilun(i64 noundef %132, ptr noundef %lun170) #14
  %incdec.ptr1.i = getelementptr %struct.cmd_type_6, ptr %98, i32 0, i32 9, i32 0, i32 4
  %133 = ptrtoint ptr %lun170 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %lun170, align 4
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #14
  %136 = ptrtoint ptr %lun170 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %lun170, align 4
  %137 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %incdec.ptr1.i, align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #14
  %140 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %incdec.ptr1.i, align 4
  %141 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %device, align 4
  %lun174 = getelementptr inbounds %struct.scsi_device, ptr %142, i32 0, i32 18
  %143 = ptrtoint ptr %lun174 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %lun174, align 8
  %145 = ptrtoint ptr %fcp_cmnd to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %fcp_cmnd, align 4
  tail call void @int_to_scsilun(i64 noundef %144, ptr noundef %146) #14
  %147 = ptrtoint ptr %fcp_cmnd to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %fcp_cmnd, align 4
  %additional_cdb_len178 = getelementptr inbounds %struct.fcp_cmnd, ptr %148, i32 0, i32 4
  %149 = ptrtoint ptr %additional_cdb_len178 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %additional_cdb_len.0, ptr %additional_cdb_len178, align 1
  %sc_data_direction179 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 15
  %150 = ptrtoint ptr %sc_data_direction179 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sc_data_direction179, align 4
  %152 = zext i32 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %151, label %if.end150.if.end199_crit_edge [
    i32 1, label %if.end150.if.end199.sink.split_crit_edge
    i32 2, label %if.then192
  ]

if.end150.if.end199.sink.split_crit_edge:         ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199.sink.split

if.end150.if.end199_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199

if.then192:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199.sink.split

if.end199.sink.split:                             ; preds = %if.then192, %if.end150.if.end199.sink.split_crit_edge
  %.sink740 = phi i8 [ 2, %if.then192 ], [ 1, %if.end150.if.end199.sink.split_crit_edge ]
  %153 = ptrtoint ptr %fcp_cmnd to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %fcp_cmnd, align 4
  %additional_cdb_len184 = getelementptr inbounds %struct.fcp_cmnd, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %additional_cdb_len184 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %additional_cdb_len184, align 1
  %157 = or i8 %156, %.sink740
  store i8 %157, ptr %additional_cdb_len184, align 1
  br label %if.end199

if.end199:                                        ; preds = %if.end199.sink.split, %if.end150.if.end199_crit_edge
  %flags200 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 2
  %158 = ptrtoint ptr %flags200 to i32
  call void @__asan_load4_noabort(i32 %158)
  %bf.load = load volatile i32, ptr %flags200, align 8
  %159 = and i32 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool201.not = icmp eq i32 %159, 0
  br i1 %tobool201.not, label %if.end199.cleanup.thread718_crit_edge, label %if.then202

if.end199.cleanup.thread718_crit_edge:            ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread718

if.then202:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #16
  %160 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %fcport, align 4
  %fcp_prio = getelementptr inbounds %struct.fc_port, ptr %161, i32 0, i32 30
  %162 = ptrtoint ptr %fcp_prio to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %fcp_prio, align 2
  %shl205 = shl i8 %163, 3
  %164 = ptrtoint ptr %fcp_cmnd to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %fcp_cmnd, align 4
  %task_attribute = getelementptr inbounds %struct.fcp_cmnd, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %task_attribute to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %task_attribute, align 1
  %or208 = or i8 %167, %shl205
  store i8 %or208, ptr %task_attribute, align 1
  br label %cleanup.thread718

cleanup.thread718:                                ; preds = %if.then202, %if.end199.cleanup.thread718_crit_edge
  %168 = ptrtoint ptr %fcp_cmnd to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %fcp_cmnd, align 4
  %cdb = getelementptr inbounds %struct.fcp_cmnd, ptr %169, i32 0, i32 5
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 16
  %170 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %cmnd, align 4
  %172 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %cmd_len, align 4
  %conv213 = zext i16 %173 to i32
  %174 = call ptr @memcpy(ptr %cdb, ptr %171, i32 %conv213)
  %175 = load ptr, ptr %fcp_cmnd, align 4
  %add.ptr217 = getelementptr %struct.fcp_cmnd, ptr %175, i32 0, i32 5, i32 16
  %conv218 = zext i8 %additional_cdb_len.0 to i32
  %add.ptr219 = getelementptr i8, ptr %add.ptr217, i32 %conv218
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 17, i32 1
  %176 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %length.i, align 4
  %178 = ptrtoint ptr %add.ptr219 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %add.ptr219, align 4
  %179 = ptrtoint ptr %call117 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %call117, align 4
  %181 = tail call i16 @llvm.bswap.i16(i16 %180)
  %fcp_cmnd_dseg_len = getelementptr inbounds %struct.cmd_type_6, ptr %98, i32 0, i32 11
  %182 = ptrtoint ptr %fcp_cmnd_dseg_len to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %fcp_cmnd_dseg_len, align 2
  %183 = ptrtoint ptr %fcp_cmnd_dma to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %fcp_cmnd_dma, align 4
  %conv223 = zext i32 %184 to i64
  %fcp_cmnd_dseg_address = getelementptr inbounds %struct.cmd_type_6, ptr %98, i32 0, i32 12
  %185 = tail call i64 @llvm.bswap.i64(i64 %conv223) #14
  %186 = ptrtoint ptr %fcp_cmnd_dseg_address to i32
  call void @__asan_storeN_noabort(i32 %186, i32 8)
  store i64 %185, ptr %fcp_cmnd_dseg_address, align 1
  %flags224 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %187 = ptrtoint ptr %flags224 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %flags224, align 4
  %189 = or i16 %188, 4096
  store i16 %189, ptr %flags224, align 4
  %190 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %length.i, align 4
  %192 = tail call i32 @llvm.bswap.i32(i32 %191)
  %byte_count = getelementptr inbounds %struct.cmd_type_6, ptr %98, i32 0, i32 14
  %193 = ptrtoint ptr %byte_count to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %byte_count, align 4
  %entry_count = getelementptr inbounds %struct.cmd_type_6, ptr %98, i32 0, i32 1
  %194 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %entry_count, align 1
  %id230 = getelementptr inbounds %struct.rsp_que, ptr %13, i32 0, i32 11
  %195 = ptrtoint ptr %id230 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %id230, align 2
  %conv231 = trunc i16 %196 to i8
  %entry_status = getelementptr inbounds %struct.cmd_type_6, ptr %98, i32 0, i32 3
  %197 = ptrtoint ptr %entry_status to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %conv231, ptr %entry_status, align 1
  br label %if.end346

if.else235:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv35)
  %cmp.i = icmp ugt i16 %conv35, 1
  br i1 %cmp.i, label %if.then.i, label %if.else235.qla24xx_calc_iocbs.exit_crit_edge

if.else235.qla24xx_calc_iocbs.exit_crit_edge:     ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_calc_iocbs.exit

if.then.i:                                        ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = add i16 %conv35, -1
  %sub.i.frozen = freeze i16 %sub.i
  %div12.i = udiv i16 %sub.i.frozen, 5
  %198 = mul i16 %div12.i, 5
  %rem34.i.decomposed = sub i16 %sub.i.frozen, %198
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem34.i.decomposed)
  %tobool.not.i674 = icmp eq i16 %rem34.i.decomposed, 0
  %spec.select.v.i = select i1 %tobool.not.i674, i16 1, i16 2
  %spec.select.i675 = add nuw nsw i16 %spec.select.v.i, %div12.i
  br label %qla24xx_calc_iocbs.exit

qla24xx_calc_iocbs.exit:                          ; preds = %if.then.i, %if.else235.qla24xx_calc_iocbs.exit_crit_edge
  %iocbs.0.i = phi i16 [ 1, %if.else235.qla24xx_calc_iocbs.exit_crit_edge ], [ %spec.select.i675, %if.then.i ]
  %cnt238 = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 8
  %199 = ptrtoint ptr %cnt238 to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %cnt238, align 4
  %conv239 = zext i16 %200 to i32
  %conv240 = zext i16 %iocbs.0.i to i32
  %add241 = add nuw nsw i32 %conv240, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add241, i32 %conv239)
  %cmp242 = icmp ugt i32 %add241, %conv239
  br i1 %cmp242, label %if.then244, label %qla24xx_calc_iocbs.exit.if.end272_crit_edge

qla24xx_calc_iocbs.exit.if.end272_crit_edge:      ; preds = %qla24xx_calc_iocbs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end272

if.then244:                                       ; preds = %qla24xx_calc_iocbs.exit
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !155
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #14
  %ring_index249 = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 5
  %203 = ptrtoint ptr %ring_index249 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %ring_index249, align 4
  %conv250 = zext i16 %204 to i32
  %conv251 = and i32 %202, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv251, i32 %conv250)
  %cmp252 = icmp ugt i32 %conv251, %conv250
  br i1 %cmp252, label %if.then254, label %if.else261

if.then254:                                       ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #16
  %205 = trunc i32 %202 to i16
  %conv259 = sub i16 %205, %204
  br label %if.end272.sink.split

if.else261:                                       ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #16
  %length262 = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 9
  %206 = ptrtoint ptr %length262 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %length262, align 2
  %208 = trunc i32 %202 to i16
  %209 = sub i16 %208, %204
  %conv269 = add i16 %209, %207
  br label %if.end272.sink.split

if.end272.sink.split:                             ; preds = %if.else261, %if.then254
  %conv259.sink = phi i16 [ %conv259, %if.then254 ], [ %conv269, %if.else261 ]
  %210 = ptrtoint ptr %cnt238 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %conv259.sink, ptr %cnt238, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.end272.sink.split, %qla24xx_calc_iocbs.exit.if.end272_crit_edge
  %211 = ptrtoint ptr %cnt238 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %cnt238, align 4
  %conv274 = zext i16 %212 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add241, i32 %conv274)
  %cmp277 = icmp ugt i32 %add241, %conv274
  br i1 %cmp277, label %if.end272.queuing_error_crit_edge, label %if.end280

if.end272.queuing_error_crit_edge:                ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #16
  br label %queuing_error

if.end280:                                        ; preds = %if.end272
  %ring_ptr281 = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 2
  %213 = ptrtoint ptr %ring_ptr281 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ring_ptr281, align 4
  %id282 = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 12
  %215 = ptrtoint ptr %id282 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %id282, align 4
  %conv.i676 = zext i16 %216 to i32
  %shl.i677 = shl nuw i32 %conv.i676, 16
  %conv1.i678 = and i32 %spec.store.select.i, 65535
  %or.i679 = or i32 %shl.i677, %conv1.i678
  %handle285 = getelementptr inbounds %struct.cmd_type_7, ptr %214, i32 0, i32 4
  %217 = ptrtoint ptr %handle285 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %or.i679, ptr %handle285, align 4
  %add.ptr286 = getelementptr i32, ptr %214, i32 2
  %218 = call ptr @memset(ptr %add.ptr286, i32 0, i32 56)
  %219 = tail call i16 @llvm.bswap.i16(i16 %conv35)
  %dseg_count287 = getelementptr inbounds %struct.cmd_type_7, ptr %214, i32 0, i32 7
  %220 = ptrtoint ptr %dseg_count287 to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %219, ptr %dseg_count287, align 4
  %fcport288 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %221 = ptrtoint ptr %fcport288 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %fcport288, align 4
  %loop_id289 = getelementptr inbounds %struct.fc_port, ptr %222, i32 0, i32 7
  %223 = ptrtoint ptr %loop_id289 to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %loop_id289, align 4
  %225 = tail call i16 @llvm.bswap.i16(i16 %224)
  %226 = ptrtoint ptr %add.ptr286 to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %225, ptr %add.ptr286, align 4
  %227 = ptrtoint ptr %fcport288 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %fcport288, align 4
  %d_id292 = getelementptr inbounds %struct.fc_port, ptr %228, i32 0, i32 6
  %al_pa293 = getelementptr inbounds %struct.anon.80, ptr %d_id292, i32 0, i32 2
  %229 = ptrtoint ptr %al_pa293 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %al_pa293, align 2
  %port_id294 = getelementptr inbounds %struct.cmd_type_7, ptr %214, i32 0, i32 15
  %231 = ptrtoint ptr %port_id294 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %230, ptr %port_id294, align 4
  %232 = load ptr, ptr %fcport288, align 4
  %d_id297 = getelementptr inbounds %struct.fc_port, ptr %232, i32 0, i32 6
  %area298 = getelementptr inbounds %struct.anon.80, ptr %d_id297, i32 0, i32 1
  %233 = ptrtoint ptr %area298 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %area298, align 1
  %arrayidx300 = getelementptr %struct.cmd_type_7, ptr %214, i32 0, i32 15, i32 1
  %235 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %234, ptr %arrayidx300, align 1
  %236 = load ptr, ptr %fcport288, align 4
  %d_id302 = getelementptr inbounds %struct.fc_port, ptr %236, i32 0, i32 6
  %237 = ptrtoint ptr %d_id302 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %d_id302, align 8
  %arrayidx305 = getelementptr %struct.cmd_type_7, ptr %214, i32 0, i32 15, i32 2
  %239 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %238, ptr %arrayidx305, align 2
  %240 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %vha1, align 8
  %vp_idx307 = getelementptr inbounds %struct.scsi_qla_host, ptr %241, i32 0, i32 46
  %242 = ptrtoint ptr %vp_idx307 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %vp_idx307, align 8
  %conv308 = trunc i16 %243 to i8
  %vp_index309 = getelementptr inbounds %struct.cmd_type_7, ptr %214, i32 0, i32 16
  %244 = ptrtoint ptr %vp_index309 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %conv308, ptr %vp_index309, align 1
  %device310 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 1
  %245 = ptrtoint ptr %device310 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %device310, align 4
  %lun311 = getelementptr inbounds %struct.scsi_device, ptr %246, i32 0, i32 18
  %247 = ptrtoint ptr %lun311 to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %lun311, align 8
  %lun312 = getelementptr inbounds %struct.cmd_type_7, ptr %214, i32 0, i32 9
  tail call void @int_to_scsilun(i64 noundef %248, ptr noundef %lun312) #14
  %incdec.ptr1.i682 = getelementptr %struct.cmd_type_7, ptr %214, i32 0, i32 9, i32 0, i32 4
  %249 = ptrtoint ptr %lun312 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %lun312, align 4
  %251 = tail call i32 @llvm.bswap.i32(i32 %250) #14
  %252 = ptrtoint ptr %lun312 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %lun312, align 4
  %253 = ptrtoint ptr %incdec.ptr1.i682 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %incdec.ptr1.i682, align 4
  %255 = tail call i32 @llvm.bswap.i32(i32 %254) #14
  %256 = ptrtoint ptr %incdec.ptr1.i682 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %incdec.ptr1.i682, align 4
  %flags315 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 2
  %257 = ptrtoint ptr %flags315 to i32
  call void @__asan_load4_noabort(i32 %257)
  %bf.load316 = load volatile i32, ptr %flags315, align 8
  %258 = and i32 %bf.load316, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool319.not = icmp eq i32 %258, 0
  br i1 %tobool319.not, label %if.end280.if.end328_crit_edge, label %if.then320

if.end280.if.end328_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end328

if.then320:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #16
  %259 = ptrtoint ptr %fcport288 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %fcport288, align 4
  %fcp_prio322 = getelementptr inbounds %struct.fc_port, ptr %260, i32 0, i32 30
  %261 = ptrtoint ptr %fcp_prio322 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %fcp_prio322, align 2
  %shl324 = shl i8 %262, 3
  %task = getelementptr inbounds %struct.cmd_type_7, ptr %214, i32 0, i32 11
  %263 = ptrtoint ptr %task to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %task, align 2
  %or326 = or i8 %shl324, %264
  store i8 %or326, ptr %task, align 2
  br label %if.end328

if.end328:                                        ; preds = %if.then320, %if.end280.if.end328_crit_edge
  %fcp_cdb = getelementptr inbounds %struct.cmd_type_7, ptr %214, i32 0, i32 13
  %cmnd330 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 16
  %265 = ptrtoint ptr %cmnd330 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %cmnd330, align 4
  %cmd_len331 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 14
  %267 = ptrtoint ptr %cmd_len331 to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %cmd_len331, align 4
  %conv332 = zext i16 %268 to i32
  %269 = call ptr @memcpy(ptr %fcp_cdb, ptr %266, i32 %conv332)
  %incdec.ptr1.i689 = getelementptr %struct.cmd_type_7, ptr %214, i32 0, i32 13, i32 4
  %270 = ptrtoint ptr %fcp_cdb to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %fcp_cdb, align 4
  %272 = tail call i32 @llvm.bswap.i32(i32 %271) #14
  %273 = ptrtoint ptr %fcp_cdb to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %272, ptr %fcp_cdb, align 4
  %incdec.ptr1.i689.1 = getelementptr %struct.cmd_type_7, ptr %214, i32 0, i32 13, i32 8
  %274 = ptrtoint ptr %incdec.ptr1.i689 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %incdec.ptr1.i689, align 4
  %276 = tail call i32 @llvm.bswap.i32(i32 %275) #14
  %277 = ptrtoint ptr %incdec.ptr1.i689 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %incdec.ptr1.i689, align 4
  %incdec.ptr1.i689.2 = getelementptr %struct.cmd_type_7, ptr %214, i32 0, i32 13, i32 12
  %278 = ptrtoint ptr %incdec.ptr1.i689.1 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %incdec.ptr1.i689.1, align 4
  %280 = tail call i32 @llvm.bswap.i32(i32 %279) #14
  %281 = ptrtoint ptr %incdec.ptr1.i689.1 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %280, ptr %incdec.ptr1.i689.1, align 4
  %282 = ptrtoint ptr %incdec.ptr1.i689.2 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %incdec.ptr1.i689.2, align 4
  %284 = tail call i32 @llvm.bswap.i32(i32 %283) #14
  %285 = ptrtoint ptr %incdec.ptr1.i689.2 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %284, ptr %incdec.ptr1.i689.2, align 4
  %length.i694 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 17, i32 1
  %286 = ptrtoint ptr %length.i694 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %length.i694, align 4
  %288 = tail call i32 @llvm.bswap.i32(i32 %287)
  %byte_count337 = getelementptr inbounds %struct.cmd_type_7, ptr %214, i32 0, i32 14
  %289 = ptrtoint ptr %byte_count337 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %byte_count337, align 4
  %qpair1.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 14
  %290 = ptrtoint ptr %qpair1.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %qpair1.i, align 8
  %292 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %u, align 8
  %294 = ptrtoint ptr %214 to i32
  call void @__asan_storeN_noabort(i32 %294, i32 4)
  store i32 402653184, ptr %214, align 1
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %293, i32 0, i32 17, i32 1
  %295 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %tobool.not.i695 = icmp eq i32 %296, 0
  br i1 %tobool.not.i695, label %if.end328.if.then.i697_crit_edge, label %lor.lhs.false.i

if.end328.if.then.i697_crit_edge:                 ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i697

lor.lhs.false.i:                                  ; preds = %if.end328
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %293, i32 0, i32 15
  %297 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %sc_data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %298)
  %cmp.i696 = icmp eq i32 %298, 3
  br i1 %cmp.i696, label %lor.lhs.false.i.if.then.i697_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i697_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i697

if.then.i697:                                     ; preds = %lor.lhs.false.i.if.then.i697_crit_edge, %if.end328.if.then.i697_crit_edge
  %299 = ptrtoint ptr %byte_count337 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 0, ptr %byte_count337, align 4
  br label %cleanup343.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %300 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %vha1, align 8
  %302 = zext i32 %298 to i64
  call void @__sanitizer_cov_trace_switch(i64 %302, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %298, label %if.end.i.if.end21.i_crit_edge [
    i32 1, label %if.then6.i
    i32 2, label %if.then12.i
  ]

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %task_mgmt_flags.i = getelementptr inbounds %struct.cmd_type_7, ptr %214, i32 0, i32 10
  %303 = ptrtoint ptr %task_mgmt_flags.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 256, ptr %task_mgmt_flags.i, align 4
  %304 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %length.i.i, align 4
  %conv.i698 = zext i32 %305 to i64
  %output_bytes.i = getelementptr inbounds %struct.qla_qpair, ptr %291, i32 0, i32 18, i32 2
  %306 = ptrtoint ptr %output_bytes.i to i32
  call void @__asan_load8_noabort(i32 %306)
  %307 = load i64, ptr %output_bytes.i, align 8
  %add.i = add i64 %307, %conv.i698
  store i64 %add.i, ptr %output_bytes.i, align 8
  %output_requests.i = getelementptr inbounds %struct.qla_qpair, ptr %291, i32 0, i32 18, i32 3
  br label %if.end21.sink.split.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %task_mgmt_flags13.i = getelementptr inbounds %struct.cmd_type_7, ptr %214, i32 0, i32 10
  %308 = ptrtoint ptr %task_mgmt_flags13.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 512, ptr %task_mgmt_flags13.i, align 4
  %309 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %length.i.i, align 4
  %conv15.i = zext i32 %310 to i64
  %counters16.i = getelementptr inbounds %struct.qla_qpair, ptr %291, i32 0, i32 18
  %311 = ptrtoint ptr %counters16.i to i32
  call void @__asan_load8_noabort(i32 %311)
  %312 = load i64, ptr %counters16.i, align 8
  %add17.i = add i64 %312, %conv15.i
  store i64 %add17.i, ptr %counters16.i, align 8
  %input_requests.i = getelementptr inbounds %struct.qla_qpair, ptr %291, i32 0, i32 18, i32 1
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %if.then12.i, %if.then6.i
  %input_requests.sink71.i = phi ptr [ %input_requests.i, %if.then12.i ], [ %output_requests.i, %if.then6.i ]
  %313 = ptrtoint ptr %input_requests.sink71.i to i32
  call void @__asan_load8_noabort(i32 %313)
  %314 = load i64, ptr %input_requests.sink71.i, align 8
  %inc19.i = add i64 %314, 1
  store i64 %inc19.i, ptr %input_requests.sink71.i, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.sink.split.i, %if.end.i.if.end21.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv35)
  %cmp2466.not.i = icmp eq i16 %conv35, 0
  br i1 %cmp2466.not.i, label %if.end21.i.cleanup343.thread_crit_edge, label %for.body.lr.ph.i699

if.end21.i.cleanup343.thread_crit_edge:           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup343.thread

for.body.lr.ph.i699:                              ; preds = %if.end21.i
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %293, i32 0, i32 17
  %315 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %sdb.i.i, align 4
  %dsd.i = getelementptr inbounds %struct.cmd_type_7, ptr %214, i32 0, i32 17
  %ring_index.i.i = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 5
  %length.i61.i = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 9
  %ring.i.i = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 1
  %hw.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %301, i32 0, i32 52
  br label %for.body.i700

for.body.i700:                                    ; preds = %if.end32.i.for.body.i700_crit_edge, %for.body.lr.ph.i699
  %i.070.i = phi i32 [ 0, %for.body.lr.ph.i699 ], [ %inc33.i, %if.end32.i.for.body.i700_crit_edge ]
  %sg.069.i = phi ptr [ %316, %for.body.lr.ph.i699 ], [ %call34.i, %if.end32.i.for.body.i700_crit_edge ]
  %avail_dsds.068.i = phi i16 [ 1, %for.body.lr.ph.i699 ], [ %dec.i701, %if.end32.i.for.body.i700_crit_edge ]
  %cur_dsd.067.i = phi ptr [ %dsd.i, %for.body.lr.ph.i699 ], [ %incdec.ptr.i63.i, %if.end32.i.for.body.i700_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %avail_dsds.068.i)
  %cmp27.i = icmp eq i16 %avail_dsds.068.i, 0
  br i1 %cmp27.i, label %if.then29.i, label %for.body.i700.if.end32.i_crit_edge

for.body.i700.if.end32.i_crit_edge:               ; preds = %for.body.i700
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

if.then29.i:                                      ; preds = %for.body.i700
  %317 = ptrtoint ptr %ring_index.i.i to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %ring_index.i.i, align 4
  %inc.i.i = add i16 %318, 1
  store i16 %inc.i.i, ptr %ring_index.i.i, align 4
  %319 = ptrtoint ptr %length.i61.i to i32
  call void @__asan_load2_noabort(i32 %319)
  %320 = load i16, ptr %length.i61.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i, i16 %320)
  %cmp.i.i = icmp eq i16 %inc.i.i, %320
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  %321 = ptrtoint ptr %ring_index.i.i to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 0, ptr %ring_index.i.i, align 4
  %322 = ptrtoint ptr %ring.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %ring.i.i, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit.i

if.else.i.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  %324 = ptrtoint ptr %ring_ptr281 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %ring_ptr281, align 4
  %incdec.ptr.i.i = getelementptr %struct.cmd_a64_entry_t, ptr %325, i32 1
  br label %qla2x00_prep_cont_type1_iocb.exit.i

qla2x00_prep_cont_type1_iocb.exit.i:              ; preds = %if.else.i.i, %if.then.i.i
  %storemerge.i = phi ptr [ %incdec.ptr.i.i, %if.else.i.i ], [ %323, %if.then.i.i ]
  %326 = ptrtoint ptr %ring_ptr281 to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %storemerge.i, ptr %ring_ptr281, align 4
  %327 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %hw.i.i, align 4
  %isp_type.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %328, i32 0, i32 54
  %329 = ptrtoint ptr %isp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %isp_type.i.i, align 8
  %and7.i.i = and i32 %330, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool.not.i.i = icmp eq i32 %and7.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 167772160, i32 50331648
  %331 = ptrtoint ptr %storemerge.i to i32
  call void @__asan_storeN_noabort(i32 %331, i32 4)
  store i32 %cond.i.i, ptr %storemerge.i, align 1
  %dsd31.i = getelementptr inbounds %struct.cont_a64_entry_t, ptr %storemerge.i, i32 0, i32 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %qla2x00_prep_cont_type1_iocb.exit.i, %for.body.i700.if.end32.i_crit_edge
  %cur_dsd.1.i = phi ptr [ %dsd31.i, %qla2x00_prep_cont_type1_iocb.exit.i ], [ %cur_dsd.067.i, %for.body.i700.if.end32.i_crit_edge ]
  %avail_dsds.1.i = phi i16 [ 5, %qla2x00_prep_cont_type1_iocb.exit.i ], [ %avail_dsds.068.i, %for.body.i700.if.end32.i_crit_edge ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.069.i, i32 0, i32 3
  %332 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %dma_address.i.i, align 4
  %conv.i.i = zext i32 %333 to i64
  %334 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i) #14
  %335 = ptrtoint ptr %cur_dsd.1.i to i32
  call void @__asan_storeN_noabort(i32 %335, i32 8)
  store i64 %334, ptr %cur_dsd.1.i, align 1
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.069.i, i32 0, i32 4
  %336 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %dma_length.i.i, align 4
  %length.i62.i = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.1.i, i32 0, i32 1
  %338 = tail call i32 @llvm.bswap.i32(i32 %337) #14
  %339 = ptrtoint ptr %length.i62.i to i32
  call void @__asan_storeN_noabort(i32 %339, i32 4)
  store i32 %338, ptr %length.i62.i, align 1
  %incdec.ptr.i63.i = getelementptr %struct.dsd64, ptr %cur_dsd.1.i, i32 1
  %dec.i701 = add i16 %avail_dsds.1.i, -1
  %inc33.i = add nuw nsw i32 %i.070.i, 1
  %call34.i = tail call ptr @sg_next(ptr noundef %sg.069.i) #14
  %exitcond.not.i702 = icmp eq i32 %inc33.i, %conv36
  br i1 %exitcond.not.i702, label %if.end32.i.cleanup343.thread_crit_edge, label %if.end32.i.for.body.i700_crit_edge

if.end32.i.for.body.i700_crit_edge:               ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i700

if.end32.i.cleanup343.thread_crit_edge:           ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup343.thread

cleanup343.thread:                                ; preds = %if.end32.i.cleanup343.thread_crit_edge, %if.end21.i.cleanup343.thread_crit_edge, %if.then.i697
  %conv338 = trunc i16 %iocbs.0.i to i8
  %entry_count339 = getelementptr inbounds %struct.cmd_type_7, ptr %214, i32 0, i32 1
  %340 = ptrtoint ptr %entry_count339 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %conv338, ptr %entry_count339, align 1
  %id340 = getelementptr inbounds %struct.rsp_que, ptr %13, i32 0, i32 11
  %341 = ptrtoint ptr %id340 to i32
  call void @__asan_load2_noabort(i32 %341)
  %342 = load i16, ptr %id340, align 2
  %conv341 = trunc i16 %342 to i8
  %entry_status342 = getelementptr inbounds %struct.cmd_type_7, ptr %214, i32 0, i32 3
  %343 = ptrtoint ptr %entry_status342 to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %conv341, ptr %entry_status342, align 1
  br label %if.end346

if.end346:                                        ; preds = %cleanup343.thread, %cleanup.thread718
  %req_cnt.1 = phi i16 [ 1, %cleanup.thread718 ], [ %iocbs.0.i, %cleanup343.thread ]
  %344 = ptrtoint ptr %current_outstanding_cmd.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %spec.store.select.i, ptr %current_outstanding_cmd.i, align 4
  %345 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %outstanding_cmds.i, align 4
  %arrayidx347 = getelementptr ptr, ptr %346, i32 %spec.store.select.i
  %347 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %sp, ptr %arrayidx347, align 4
  %handle348 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %348 = ptrtoint ptr %handle348 to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %spec.store.select.i, ptr %handle348, align 8
  %349 = inttoptr i32 %spec.store.select.i to ptr
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 23
  %350 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr %349, ptr %host_scribble, align 4
  %cnt350 = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 8
  %351 = ptrtoint ptr %cnt350 to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %cnt350, align 4
  %sub352 = sub i16 %352, %req_cnt.1
  store i16 %sub352, ptr %cnt350, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %ring_index357 = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 5
  %353 = ptrtoint ptr %ring_index357 to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %ring_index357, align 4
  %inc358 = add i16 %354, 1
  store i16 %inc358, ptr %ring_index357, align 4
  %length361 = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 9
  %355 = ptrtoint ptr %length361 to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %length361, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc358, i16 %356)
  %cmp363 = icmp eq i16 %inc358, %356
  br i1 %cmp363, label %if.then365, label %if.else368

if.then365:                                       ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #16
  %357 = ptrtoint ptr %ring_index357 to i32
  call void @__asan_store2_noabort(i32 %357)
  store i16 0, ptr %ring_index357, align 4
  %ring = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 1
  %358 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %ring, align 4
  %ring_ptr367 = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 2
  %360 = ptrtoint ptr %ring_ptr367 to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr %359, ptr %ring_ptr367, align 4
  br label %if.end370

if.else368:                                       ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #16
  %ring_ptr369 = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 2
  %361 = ptrtoint ptr %ring_ptr369 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %ring_ptr369, align 4
  %incdec.ptr = getelementptr %struct.cmd_a64_entry_t, ptr %362, i32 1
  store ptr %incdec.ptr, ptr %ring_ptr369, align 4
  br label %if.end370

if.end370:                                        ; preds = %if.else368, %if.then365
  %flags371 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %363 = ptrtoint ptr %flags371 to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %flags371, align 4
  %365 = or i16 %364, 1
  store i16 %365, ptr %flags371, align 4
  %id375 = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 12
  %366 = ptrtoint ptr %id375 to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %id375, align 4
  %conv376 = zext i16 %367 to i32
  %shl377 = shl nuw nsw i32 %conv376, 8
  %368 = ptrtoint ptr %ring_index357 to i32
  call void @__asan_load2_noabort(i32 %368)
  %369 = load i16, ptr %ring_index357, align 4
  %conv380 = zext i16 %369 to i32
  %shl381 = shl nuw i32 %conv380, 16
  %or = or i32 %shl, %shl377
  %or378 = or i32 %or, %shl381
  %or382 = or i32 %or378, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xdbwr to i32))
  %370 = load i32, ptr @ql2xdbwr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %tobool383.not = icmp eq i32 %370, 0
  %nxdb_wr_ptr387 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 244
  %371 = ptrtoint ptr %nxdb_wr_ptr387 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %nxdb_wr_ptr387, align 4
  br i1 %tobool383.not, label %if.else386, label %if.then384

if.then384:                                       ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #16
  %373 = ptrtoint ptr %372 to i32
  %call385 = tail call i32 @qla82xx_wr_32(ptr noundef %3, i32 noundef %373, i32 noundef %or382) #14
  br label %if.end398

if.else386:                                       ; preds = %if.end370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !153
  tail call void @arm_heavy_mb() #14
  %374 = tail call i32 @llvm.bswap.i32(i32 %or382) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %372, i32 %374) #14, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !185
  tail call void @arm_heavy_mb() #14
  %nxdb_rd_ptr = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 243
  %375 = ptrtoint ptr %nxdb_rd_ptr to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %nxdb_rd_ptr, align 32
  %377 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %376) #14, !srcloc !155
  %378 = tail call i32 @llvm.bswap.i32(i32 %377) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !169
  call void @__sanitizer_cov_trace_cmp4(i32 %378, i32 %or382)
  %cmp392.not732 = icmp eq i32 %378, %or382
  br i1 %cmp392.not732, label %if.else386.if.end398_crit_edge, label %if.else386.while.body_crit_edge

if.else386.while.body_crit_edge:                  ; preds = %if.else386
  br label %while.body

if.else386.if.end398_crit_edge:                   ; preds = %if.else386
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end398

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else386.while.body_crit_edge
  %379 = ptrtoint ptr %nxdb_wr_ptr387 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %nxdb_wr_ptr387, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !153
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %380, i32 %374) #14, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !186
  tail call void @arm_heavy_mb() #14
  %381 = ptrtoint ptr %nxdb_rd_ptr to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %nxdb_rd_ptr, align 32
  %383 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %382) #14, !srcloc !155
  %384 = tail call i32 @llvm.bswap.i32(i32 %383) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !169
  %cmp392.not = icmp eq i32 %384, %or382
  br i1 %cmp392.not, label %while.body.if.end398_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.if.end398_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end398

if.end398:                                        ; preds = %while.body.if.end398_crit_edge, %if.else386.if.end398_crit_edge, %if.then384
  %flags399 = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 8
  %385 = ptrtoint ptr %flags399 to i32
  call void @__asan_load4_noabort(i32 %385)
  %bf.load400 = load volatile i32, ptr %flags399, align 8
  %386 = and i32 %bf.load400, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %386)
  %tobool403.not = icmp eq i32 %386, 0
  br i1 %tobool403.not, label %if.end398.if.end408_crit_edge, label %land.lhs.true

if.end398.if.end408_crit_edge:                    ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end408

land.lhs.true:                                    ; preds = %if.end398
  %ring_ptr404 = getelementptr inbounds %struct.rsp_que, ptr %13, i32 0, i32 2
  %387 = ptrtoint ptr %ring_ptr404 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %ring_ptr404, align 4
  %signature = getelementptr inbounds %struct.response_t, ptr %388, i32 0, i32 6
  %389 = ptrtoint ptr %signature to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %signature, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559030611, i32 %390)
  %cmp405.not = icmp eq i32 %390, -559030611
  br i1 %cmp405.not, label %land.lhs.true.if.end408_crit_edge, label %if.then407

land.lhs.true.if.end408_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end408

if.then407:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qla24xx_process_response_queue(ptr noundef %1, ptr noundef %13) #14
  br label %if.end408

if.end408:                                        ; preds = %if.then407, %land.lhs.true.if.end408_crit_edge, %if.end398.if.end408_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call15) #14
  br label %cleanup426

queuing_error_fcp_cmnd:                           ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %1, i32 noundef 12306, ptr noundef nonnull @.str.30, i32 noundef %conv127, ptr noundef %7) #14
  %391 = ptrtoint ptr %fcp_cmnd_dma_pool to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %fcp_cmnd_dma_pool, align 4
  %393 = ptrtoint ptr %fcp_cmnd to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %fcp_cmnd, align 4
  %395 = ptrtoint ptr %fcp_cmnd_dma to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %fcp_cmnd_dma, align 4
  tail call void @dma_pool_free(ptr noundef %392, ptr noundef %394, i32 noundef %396) #14
  br label %queuing_error

queuing_error:                                    ; preds = %queuing_error_fcp_cmnd, %if.end272.queuing_error_crit_edge, %if.then125, %if.then120, %if.end107.queuing_error_crit_edge, %if.then73, %if.then68, %if.then45
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv35)
  %tobool413.not = icmp eq i16 %conv35, 0
  br i1 %tobool413.not, label %queuing_error.if.end415_crit_edge, label %if.then414

queuing_error.if.end415_crit_edge:                ; preds = %queuing_error
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end415

if.then414:                                       ; preds = %queuing_error
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @scsi_dma_unmap(ptr noundef %7) #14
  br label %if.end415

if.end415:                                        ; preds = %if.then414, %queuing_error.if.end415_crit_edge, %if.then24.if.end415_crit_edge, %qla2xxx_get_next_handle.exit.if.end415_crit_edge, %for.cond.i.if.end415_crit_edge, %do.body11.if.end415_crit_edge
  %crc_ctx = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %397 = ptrtoint ptr %crc_ctx to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %crc_ctx, align 4
  %tobool417.not = icmp eq ptr %398, null
  br i1 %tobool417.not, label %if.end415.if.end424_crit_edge, label %if.then418

if.end415.if.end424_crit_edge:                    ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end424

if.then418:                                       ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #16
  %ctx_mempool421 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 241
  %399 = ptrtoint ptr %ctx_mempool421 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %ctx_mempool421, align 8
  tail call void @mempool_free(ptr noundef nonnull %398, ptr noundef %400) #14
  %401 = ptrtoint ptr %crc_ctx to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr null, ptr %crc_ctx, align 4
  br label %if.end424

if.end424:                                        ; preds = %if.then418, %if.end415.if.end424_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call15) #14
  br label %cleanup426

cleanup426:                                       ; preds = %if.end424, %if.end408, %if.then8
  %retval.0 = phi i32 [ 258, %if.then8 ], [ 258, %if.end424 ], [ 0, %if.end408 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla24xx_build_scsi_type_6_iocbs(ptr nocapture noundef readonly %sp, ptr nocapture noundef %cmd_pkt, i16 noundef zeroext %tot_dsds) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %qpair1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 14
  %0 = ptrtoint ptr %qpair1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qpair1, align 8
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u, align 8
  %4 = ptrtoint ptr %cmd_pkt to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 1207959552, ptr %cmd_pkt, align 1
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17, i32 1
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 15
  %7 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %byte_count = getelementptr inbounds %struct.cmd_type_6, ptr %cmd_pkt, i32 0, i32 14
  %9 = ptrtoint ptr %byte_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %byte_count, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vha3 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %10 = ptrtoint ptr %vha3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vha3, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %11, i32 0, i32 52
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %14 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %8, label %if.end.if.end21_crit_edge [
    i32 1, label %if.then6
    i32 2, label %if.then12
  ]

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %control_flags = getelementptr inbounds %struct.cmd_type_6, ptr %cmd_pkt, i32 0, i32 10
  %15 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 256, ptr %control_flags, align 4
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 4
  %conv = zext i32 %17 to i64
  %output_bytes = getelementptr inbounds %struct.qla_qpair, ptr %1, i32 0, i32 18, i32 2
  %18 = ptrtoint ptr %output_bytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %output_bytes, align 8
  %add = add i64 %19, %conv
  store i64 %add, ptr %output_bytes, align 8
  %output_requests = getelementptr inbounds %struct.qla_qpair, ptr %1, i32 0, i32 18, i32 3
  br label %if.end21.sink.split

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %control_flags13 = getelementptr inbounds %struct.cmd_type_6, ptr %cmd_pkt, i32 0, i32 10
  %20 = ptrtoint ptr %control_flags13 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 512, ptr %control_flags13, align 4
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 4
  %conv15 = zext i32 %22 to i64
  %counters16 = getelementptr inbounds %struct.qla_qpair, ptr %1, i32 0, i32 18
  %23 = ptrtoint ptr %counters16 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %counters16, align 8
  %add17 = add i64 %24, %conv15
  store i64 %add17, ptr %counters16, align 8
  %input_requests = getelementptr inbounds %struct.qla_qpair, ptr %1, i32 0, i32 18, i32 1
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.then12, %if.then6
  %input_requests.sink25 = phi ptr [ %input_requests, %if.then12 ], [ %output_requests, %if.then6 ]
  %25 = ptrtoint ptr %input_requests.sink25 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %input_requests.sink25, align 8
  %inc19 = add i64 %26, 1
  store i64 %inc19, ptr %input_requests.sink25, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.end.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tot_dsds)
  %tobool24.not19 = icmp eq i16 %tot_dsds, 0
  br i1 %tobool24.not19, label %if.end21.while.end53_crit_edge, label %while.body.lr.ph

if.end21.while.end53_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end53

while.body.lr.ph:                                 ; preds = %if.end21
  %ct6_ctx = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %27 = ptrtoint ptr %ct6_ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ct6_ctx, align 8
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17
  %29 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sdb.i, align 4
  %gbl_dsd_list = getelementptr inbounds %struct.qla_hw_data, ptr %13, i32 0, i32 260
  %gbl_dsd_avail = getelementptr inbounds %struct.qla_hw_data, ptr %13, i32 0, i32 259
  %dsd_list = getelementptr inbounds %struct.ct6_dsd, ptr %28, i32 0, i32 4
  %prev.i3 = getelementptr inbounds %struct.ct6_dsd, ptr %28, i32 0, i32 4, i32 1
  %dsd_use_cnt = getelementptr inbounds %struct.ct6_dsd, ptr %28, i32 0, i32 3
  %gbl_dsd_inuse = getelementptr inbounds %struct.qla_hw_data, ptr %13, i32 0, i32 258
  %fcp_dsd = getelementptr inbounds %struct.cmd_type_6, ptr %cmd_pkt, i32 0, i32 17
  %length = getelementptr inbounds %struct.cmd_type_6, ptr %cmd_pkt, i32 0, i32 17, i32 1
  br label %while.body

while.cond.loopexit:                              ; preds = %while.body50.while.cond.loopexit_crit_edge, %if.end47.while.cond.loopexit_crit_edge
  %cur_dsd.1.lcssa = phi ptr [ %36, %if.end47.while.cond.loopexit_crit_edge ], [ %incdec.ptr.i, %while.body50.while.cond.loopexit_crit_edge ]
  %cur_seg.1.lcssa = phi ptr [ %cur_seg.021, %if.end47.while.cond.loopexit_crit_edge ], [ %call51, %while.body50.while.cond.loopexit_crit_edge ]
  %tobool24.not = icmp eq i16 %conv32, 0
  br i1 %tobool24.not, label %while.cond.loopexit.while.end53_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.loopexit.while.end53_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end53

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %tot_dsds.addr.023 = phi i16 [ %tot_dsds, %while.body.lr.ph ], [ %conv32, %while.cond.loopexit.while.body_crit_edge ]
  %tobool38.not22 = phi i1 [ false, %while.body.lr.ph ], [ true, %while.cond.loopexit.while.body_crit_edge ]
  %cur_seg.021 = phi ptr [ %30, %while.body.lr.ph ], [ %cur_seg.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %cur_dsd.020 = phi ptr [ null, %while.body.lr.ph ], [ %cur_dsd.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %31 = tail call i16 @llvm.umin.i16(i16 %tot_dsds.addr.023, i16 37)
  %32 = trunc i16 %31 to i8
  %conv32 = sub i16 %tot_dsds.addr.023, %31
  %narrow = mul nuw nsw i16 %31, 12
  %narrow13 = add nuw nsw i16 %narrow, 12
  %mul = zext i16 %narrow13 to i32
  %33 = ptrtoint ptr %gbl_dsd_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gbl_dsd_list, align 4
  %dsd_addr = getelementptr inbounds %struct.dsd_dma, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dsd_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dsd_addr, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %34) #14
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %34, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %43 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %34, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %45 = ptrtoint ptr %gbl_dsd_avail to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %gbl_dsd_avail, align 2
  %dec = add i16 %46, -1
  store i16 %dec, ptr %gbl_dsd_avail, align 2
  %47 = ptrtoint ptr %prev.i3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i3, align 4
  %call.i.i4 = tail call zeroext i1 @__list_add_valid(ptr noundef %34, ptr noundef %48, ptr noundef %dsd_list) #14
  br i1 %call.i.i4, label %if.end.i.i5, label %list_del.exit.list_add_tail.exit_crit_edge

list_del.exit.list_add_tail.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i5:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %prev.i3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %34, ptr %prev.i3, align 4
  %50 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dsd_list, ptr %34, align 4
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %34, ptr %48, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i5, %list_del.exit.list_add_tail.exit_crit_edge
  %53 = ptrtoint ptr %dsd_use_cnt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dsd_use_cnt, align 4
  %inc36 = add i32 %54, 1
  store i32 %inc36, ptr %dsd_use_cnt, align 4
  %55 = ptrtoint ptr %gbl_dsd_inuse to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %gbl_dsd_inuse, align 16
  %inc37 = add i16 %56, 1
  store i16 %inc37, ptr %gbl_dsd_inuse, align 16
  %dsd_list_dma43 = getelementptr inbounds %struct.dsd_dma, ptr %34, i32 0, i32 1
  %57 = ptrtoint ptr %dsd_list_dma43 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dsd_list_dma43, align 4
  %conv44 = zext i32 %58 to i64
  %59 = tail call i64 @llvm.bswap.i64(i64 %conv44) #14
  br i1 %tobool38.not22, label %if.else42, label %if.then39

if.then39:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %fcp_dsd to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %59, ptr %fcp_dsd, align 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %62 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %length, align 4
  br label %if.end47

if.else42:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %63 = ptrtoint ptr %cur_dsd.020 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %59, ptr %cur_dsd.020, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %length46 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.020, i32 0, i32 1
  %65 = ptrtoint ptr %length46 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %length46, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.else42, %if.then39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool49.not14 = icmp eq i8 %32, 0
  br i1 %tobool49.not14, label %if.end47.while.cond.loopexit_crit_edge, label %if.end47.while.body50_crit_edge

if.end47.while.body50_crit_edge:                  ; preds = %if.end47
  br label %while.body50

if.end47.while.cond.loopexit_crit_edge:           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.loopexit

while.body50:                                     ; preds = %while.body50.while.body50_crit_edge, %if.end47.while.body50_crit_edge
  %avail_dsds.017 = phi i8 [ %dec52, %while.body50.while.body50_crit_edge ], [ %32, %if.end47.while.body50_crit_edge ]
  %cur_seg.116 = phi ptr [ %call51, %while.body50.while.body50_crit_edge ], [ %cur_seg.021, %if.end47.while.body50_crit_edge ]
  %cur_dsd.115 = phi ptr [ %incdec.ptr.i, %while.body50.while.body50_crit_edge ], [ %36, %if.end47.while.body50_crit_edge ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %cur_seg.116, i32 0, i32 3
  %66 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_address.i, align 4
  %conv.i = zext i32 %67 to i64
  %68 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #14
  %69 = ptrtoint ptr %cur_dsd.115 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 %68, ptr %cur_dsd.115, align 1
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %cur_seg.116, i32 0, i32 4
  %70 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_length.i, align 4
  %length.i6 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.115, i32 0, i32 1
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #14
  %73 = ptrtoint ptr %length.i6 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %72, ptr %length.i6, align 1
  %incdec.ptr.i = getelementptr %struct.dsd64, ptr %cur_dsd.115, i32 1
  %call51 = tail call ptr @sg_next(ptr noundef %cur_seg.116) #14
  %dec52 = add nsw i8 %avail_dsds.017, -1
  %tobool49.not = icmp eq i8 %dec52, 0
  br i1 %tobool49.not, label %while.body50.while.cond.loopexit_crit_edge, label %while.body50.while.body50_crit_edge

while.body50.while.body50_crit_edge:              ; preds = %while.body50
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body50

while.body50.while.cond.loopexit_crit_edge:       ; preds = %while.body50
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.loopexit

while.end53:                                      ; preds = %while.cond.loopexit.while.end53_crit_edge, %if.end21.while.end53_crit_edge
  %cur_dsd.0.lcssa = phi ptr [ null, %if.end21.while.end53_crit_edge ], [ %cur_dsd.1.lcssa, %while.cond.loopexit.while.end53_crit_edge ]
  %74 = ptrtoint ptr %cur_dsd.0.lcssa to i32
  call void @__asan_storeN_noabort(i32 %74, i32 8)
  store i64 0, ptr %cur_dsd.0.lcssa, align 1
  %length55 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.0.lcssa, i32 0, i32 1
  %75 = ptrtoint ptr %length55 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 0, ptr %length55, align 1
  %control_flags57 = getelementptr inbounds %struct.cmd_type_6, ptr %cmd_pkt, i32 0, i32 10
  %76 = ptrtoint ptr %control_flags57 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %control_flags57, align 4
  %78 = or i16 %77, 1024
  store i16 %78, ptr %control_flags57, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end53, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla82xx_wr_32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @qla24xx_login_iocb(ptr nocapture noundef readonly %sp, ptr nocapture noundef %logio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %0 = ptrtoint ptr %logio to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 82, ptr %logio, align 4
  %control_flags = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 7
  %1 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %control_flags, align 4
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 8
  %4 = and i16 %3, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 256, ptr %control_flags, align 4
  br label %if.end35

if.else:                                          ; preds = %entry
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %u, align 8
  %8 = shl i16 %7, 11
  %9 = and i16 %8, 4096
  %10 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %control_flags, align 4
  %11 = load i16, ptr %u, align 8
  %12 = and i16 %11, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool17.not = icmp eq i16 %12, 0
  br i1 %tobool17.not, label %if.else.if.end23_crit_edge, label %if.then18

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %13 = or i16 %9, 8192
  %14 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %control_flags, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.else.if.end23_crit_edge
  %15 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %u, align 8
  %17 = and i16 %16, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool28.not = icmp eq i16 %17, 0
  br i1 %tobool28.not, label %if.end23.if.end35_crit_edge, label %if.then29

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %control_flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %control_flags, align 4
  %20 = or i16 %19, -24576
  store i16 %20, ptr %control_flags, align 4
  %io_parameter = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 12
  %21 = ptrtoint ptr %io_parameter to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8320, ptr %io_parameter, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.end23.if.end35_crit_edge, %if.then
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %22 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fcport, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %loop_id, align 4
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %nport_handle = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 6
  %27 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %nport_handle, align 2
  %28 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fcport, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %29, i32 0, i32 6
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %30 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %al_pa, align 2
  %port_id = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 10
  %32 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %port_id, align 4
  %33 = load ptr, ptr %fcport, align 4
  %d_id39 = getelementptr inbounds %struct.fc_port, ptr %33, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id39, i32 0, i32 1
  %34 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %area, align 1
  %arrayidx41 = getelementptr %struct.logio_entry_24xx, ptr %logio, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx41, align 1
  %37 = load ptr, ptr %fcport, align 4
  %d_id43 = getelementptr inbounds %struct.fc_port, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %d_id43 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %d_id43, align 8
  %arrayidx45 = getelementptr %struct.logio_entry_24xx, ptr %logio, i32 0, i32 10, i32 2
  %40 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx45, align 2
  %vha = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %41 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vha, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %42, i32 0, i32 46
  %43 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vp_idx, align 8
  %conv46 = trunc i16 %44 to i8
  %vp_index = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 8
  %45 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv46, ptr %vp_index, align 2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @qla2x00_login_iocb(ptr nocapture noundef readonly %sp, ptr nocapture noundef writeonly %mbx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vha = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %4 = ptrtoint ptr %mbx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 57, ptr %mbx, align 4
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %5 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not = icmp sgt i32 %6, -1
  %fcport2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %7 = ptrtoint ptr %fcport2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fcport2, align 4
  %loop_id3 = getelementptr inbounds %struct.fc_port, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %loop_id3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %loop_id3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %loop_id1 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 5
  %12 = ptrtoint ptr %loop_id1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %loop_id1, align 4
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = trunc i16 %10 to i8
  %loop_id4 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 5
  %standard = getelementptr inbounds %struct.anon.82, ptr %loop_id4, i32 0, i32 1
  %13 = ptrtoint ptr %standard to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %standard, align 1
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %mb0 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 10
  %14 = ptrtoint ptr %mb0 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 28416, ptr %mb0, align 4
  %15 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %u, align 8
  %and7 = lshr i16 %16, 1
  %or67 = and i16 %and7, 3
  %17 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool20.not = icmp sgt i32 %18, -1
  %fcport25 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %19 = ptrtoint ptr %fcport25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fcport25, align 4
  %loop_id26 = getelementptr inbounds %struct.fc_port, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %loop_id26 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %loop_id26, align 4
  br i1 %tobool20.not, label %if.else24, label %if.then21

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %24 = shl nuw nsw i16 %or67, 8
  %mb10 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 17
  %25 = ptrtoint ptr %mb10 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %mb10, align 2
  br label %if.end32

if.else24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %shl = shl i16 %22, 8
  %or29 = or i16 %shl, %or67
  %26 = tail call i16 @llvm.bswap.i16(i16 %or29)
  br label %if.end32

if.end32:                                         ; preds = %if.else24, %if.then21
  %.sink = phi i16 [ %26, %if.else24 ], [ %23, %if.then21 ]
  %27 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 11
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %.sink, ptr %27, align 2
  %fcport33 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %29 = ptrtoint ptr %fcport33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcport33, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %d_id, align 8
  %conv34 = zext i8 %32 to i16
  %33 = shl nuw i16 %conv34, 8
  %mb2 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 12
  %34 = ptrtoint ptr %mb2 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %mb2, align 4
  %35 = load ptr, ptr %fcport33, align 4
  %d_id36 = getelementptr inbounds %struct.fc_port, ptr %35, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id36, i32 0, i32 1
  %36 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %area, align 1
  %conv37 = zext i8 %37 to i16
  %shl38 = shl nuw i16 %conv37, 8
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id36, i32 0, i32 2
  %38 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %al_pa, align 2
  %conv41 = zext i8 %39 to i16
  %or42 = or i16 %shl38, %conv41
  %40 = tail call i16 @llvm.bswap.i16(i16 %or42)
  %mb3 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 13
  %41 = ptrtoint ptr %mb3 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %mb3, align 2
  %42 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vha, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %43, i32 0, i32 46
  %44 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vp_idx, align 8
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %mb9 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 16
  %47 = ptrtoint ptr %mb9 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %mb9, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @qla24xx_prli_iocb(ptr nocapture noundef readonly %sp, ptr nocapture noundef %logio) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %0 = ptrtoint ptr %logio to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 82, ptr %logio, align 4
  %control_flags = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 7
  %1 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 256, ptr %control_flags, align 4
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 8
  %4 = and i16 %3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 16640, ptr %control_flags, align 4
  %vha = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %6 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vha, align 8
  %flags5 = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load volatile i32, ptr %flags5, align 8
  %9 = and i32 %bf.load, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %io_parameter = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 12
  %10 = ptrtoint ptr %io_parameter to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16777216, ptr %io_parameter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %11 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vha, align 8
  %flags9 = getelementptr inbounds %struct.scsi_qla_host, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load10 = load volatile i32, ptr %flags9, align 8
  %14 = and i32 %bf.load10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %if.end.if.end25_crit_edge, label %if.then14

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %io_parameter15 = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 12
  %15 = ptrtoint ptr %io_parameter15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_parameter15, align 4
  %or23 = or i32 %16, -2147287040
  store i32 %or23, ptr %io_parameter15, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then14, %if.end.if.end25_crit_edge, %entry.if.end25_crit_edge
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %17 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fcport, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %loop_id, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %nport_handle = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 6
  %22 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %nport_handle, align 2
  %23 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fcport, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %24, i32 0, i32 6
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %25 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %al_pa, align 2
  %port_id = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 10
  %27 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %port_id, align 4
  %28 = load ptr, ptr %fcport, align 4
  %d_id29 = getelementptr inbounds %struct.fc_port, ptr %28, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id29, i32 0, i32 1
  %29 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %area, align 1
  %arrayidx31 = getelementptr %struct.logio_entry_24xx, ptr %logio, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx31, align 1
  %32 = load ptr, ptr %fcport, align 4
  %d_id33 = getelementptr inbounds %struct.fc_port, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %d_id33 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %d_id33, align 8
  %arrayidx35 = getelementptr %struct.logio_entry_24xx, ptr %logio, i32 0, i32 10, i32 2
  %35 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx35, align 2
  %vha36 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %36 = ptrtoint ptr %vha36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vha36, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %37, i32 0, i32 46
  %38 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vp_idx, align 8
  %conv37 = trunc i16 %39 to i8
  %vp_index = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 8
  %40 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv37, ptr %vp_index, align 2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @qla24xx_logout_iocb(ptr nocapture noundef readonly %sp, ptr nocapture noundef writeonly %logio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %logio to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 82, ptr %logio, align 4
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %1 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fcport, align 4
  %explicit_logout = getelementptr inbounds %struct.fc_port, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %explicit_logout to i32
  call void @__asan_loadN_noabort(i32 %3, i32 3)
  %bf.load = load i24, ptr %explicit_logout, align 4
  %4 = and i24 %bf.load, 256
  %tobool.not = icmp eq i24 %4, 0
  %5 = and i24 %bf.load, 65536
  %tobool10.not = icmp eq i24 %5, 0
  %spec.select = select i1 %tobool10.not, i16 -26624, i16 6144
  %control_flags.0 = select i1 %tobool.not, i16 %spec.select, i16 -14336
  %control_flags16 = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 7
  %6 = ptrtoint ptr %control_flags16 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %control_flags.0, ptr %control_flags16, align 4
  %7 = load ptr, ptr %fcport, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %loop_id, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %nport_handle = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 6
  %11 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %nport_handle, align 2
  %12 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcport, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %13, i32 0, i32 6
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %14 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %al_pa, align 2
  %port_id = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 10
  %16 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %port_id, align 4
  %17 = load ptr, ptr %fcport, align 4
  %d_id20 = getelementptr inbounds %struct.fc_port, ptr %17, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id20, i32 0, i32 1
  %18 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %area, align 1
  %arrayidx22 = getelementptr %struct.logio_entry_24xx, ptr %logio, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx22, align 1
  %21 = load ptr, ptr %fcport, align 4
  %d_id24 = getelementptr inbounds %struct.fc_port, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %d_id24 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %d_id24, align 8
  %arrayidx26 = getelementptr %struct.logio_entry_24xx, ptr %logio, i32 0, i32 10, i32 2
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx26, align 2
  %vha = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %25 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vha, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %26, i32 0, i32 46
  %27 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vp_idx, align 8
  %conv27 = trunc i16 %28 to i8
  %vp_index = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 8
  %29 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv27, ptr %vp_index, align 2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @qla2x00_logout_iocb(ptr nocapture noundef readonly %sp, ptr nocapture noundef writeonly %mbx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vha = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %4 = ptrtoint ptr %mbx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 57, ptr %mbx, align 4
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %5 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not = icmp sgt i32 %6, -1
  %fcport2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %7 = ptrtoint ptr %fcport2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fcport2, align 4
  %loop_id3 = getelementptr inbounds %struct.fc_port, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %loop_id3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %loop_id3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %loop_id1 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 5
  %12 = ptrtoint ptr %loop_id1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %loop_id1, align 4
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = trunc i16 %10 to i8
  %loop_id4 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 5
  %standard = getelementptr inbounds %struct.anon.82, ptr %loop_id4, i32 0, i32 1
  %13 = ptrtoint ptr %standard to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %standard, align 1
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %mb0 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 10
  %14 = ptrtoint ptr %mb0 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 28928, ptr %mb0, align 4
  %15 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device_type, align 4
  %fcport11 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %17 = ptrtoint ptr %fcport11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fcport11, align 4
  %loop_id12 = getelementptr inbounds %struct.fc_port, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %loop_id12 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %loop_id12, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %22 = and i16 %20, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not44 = icmp slt i32 %16, 0
  %cond.in = select i1 %tobool7.not44, i16 %21, i16 %22
  %mb1 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 11
  %23 = ptrtoint ptr %mb1 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %cond.in, ptr %mb1, align 2
  %fcport17 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %24 = ptrtoint ptr %fcport17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fcport17, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %d_id, align 8
  %conv18 = zext i8 %27 to i16
  %28 = shl nuw i16 %conv18, 8
  %mb2 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 12
  %29 = ptrtoint ptr %mb2 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %mb2, align 4
  %30 = load ptr, ptr %fcport17, align 4
  %d_id20 = getelementptr inbounds %struct.fc_port, ptr %30, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id20, i32 0, i32 1
  %31 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %area, align 1
  %conv21 = zext i8 %32 to i16
  %shl22 = shl nuw i16 %conv21, 8
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id20, i32 0, i32 2
  %33 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %al_pa, align 2
  %conv25 = zext i8 %34 to i16
  %or = or i16 %shl22, %conv25
  %35 = tail call i16 @llvm.bswap.i16(i16 %or)
  %mb3 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 13
  %36 = ptrtoint ptr %mb3 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %mb3, align 2
  %37 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vha, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %38, i32 0, i32 46
  %39 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vp_idx, align 8
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %mb9 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 16
  %42 = ptrtoint ptr %mb9 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %mb9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla24xx_ct_iocb(ptr nocapture noundef readonly %sp, ptr noundef %ct_iocb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %u, align 8
  %6 = ptrtoint ptr %ct_iocb to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 41, ptr %ct_iocb, align 4
  %entry_status = getelementptr inbounds %struct.ct_entry_24xx, ptr %ct_iocb, i32 0, i32 3
  %7 = ptrtoint ptr %entry_status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %entry_status, align 1
  %sys_define = getelementptr inbounds %struct.ct_entry_24xx, ptr %ct_iocb, i32 0, i32 2
  %8 = ptrtoint ptr %sys_define to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %sys_define, align 2
  %handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %9 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle, align 8
  %handle2 = getelementptr inbounds %struct.ct_entry_24xx, ptr %ct_iocb, i32 0, i32 4
  %11 = ptrtoint ptr %handle2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %handle2, align 4
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %12 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcport, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %loop_id, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %nport_handle = getelementptr inbounds %struct.ct_entry_24xx, ptr %ct_iocb, i32 0, i32 6
  %17 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %nport_handle, align 2
  %18 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vha1, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %19, i32 0, i32 46
  %20 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vp_idx, align 8
  %conv = trunc i16 %21 to i8
  %vp_index = getelementptr inbounds %struct.ct_entry_24xx, ptr %ct_iocb, i32 0, i32 8
  %22 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %vp_index, align 2
  %comp_status = getelementptr inbounds %struct.ct_entry_24xx, ptr %ct_iocb, i32 0, i32 5
  %23 = ptrtoint ptr %comp_status to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %comp_status, align 4
  %request_payload = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 7
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sg_cnt, align 4
  %conv4 = trunc i32 %25 to i16
  %sg_cnt5 = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %sg_cnt5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sg_cnt5, align 4
  %conv6 = trunc i32 %27 to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv4)
  %cmd_dsd_count = getelementptr inbounds %struct.ct_entry_24xx, ptr %ct_iocb, i32 0, i32 7
  %29 = ptrtoint ptr %cmd_dsd_count to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %cmd_dsd_count, align 4
  %timeout = getelementptr inbounds %struct.ct_entry_24xx, ptr %ct_iocb, i32 0, i32 10
  %30 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %timeout, align 4
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  %rsp_dsd_count = getelementptr inbounds %struct.ct_entry_24xx, ptr %ct_iocb, i32 0, i32 12
  %32 = ptrtoint ptr %rsp_dsd_count to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %rsp_dsd_count, align 4
  %33 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %request_payload, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %cmd_byte_count = getelementptr inbounds %struct.ct_entry_24xx, ptr %ct_iocb, i32 0, i32 15
  %36 = ptrtoint ptr %cmd_byte_count to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cmd_byte_count, align 4
  %dsd = getelementptr inbounds %struct.ct_entry_24xx, ptr %ct_iocb, i32 0, i32 16
  %conv9 = and i32 %25, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %cmp109.not = icmp eq i32 %conv9, 0
  br i1 %cmp109.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 7, i32 2
  %37 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sg_list, align 4
  %req_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %entry_count.0114 = phi i32 [ 1, %for.body.lr.ph ], [ %entry_count.1, %if.end.for.body_crit_edge ]
  %index.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %if.end.for.body_crit_edge ]
  %sg.0112 = phi ptr [ %38, %for.body.lr.ph ], [ %call17, %if.end.for.body_crit_edge ]
  %avail_dsds.0111 = phi i16 [ 2, %for.body.lr.ph ], [ %dec, %if.end.for.body_crit_edge ]
  %cur_dsd.0110 = phi ptr [ %dsd, %for.body.lr.ph ], [ %incdec.ptr.i81, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %avail_dsds.0111)
  %cmp12 = icmp eq i16 %avail_dsds.0111, 0
  br i1 %cmp12, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %for.body
  %39 = ptrtoint ptr %req_q_map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %req_q_map, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %ring_index.i = getelementptr inbounds %struct.req_que, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ring_index.i, align 4
  %inc.i = add i16 %44, 1
  store i16 %inc.i, ptr %ring_index.i, align 4
  %length.i = getelementptr inbounds %struct.req_que, ptr %42, i32 0, i32 9
  %45 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %length.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %46)
  %cmp.i = icmp eq i16 %inc.i, %46
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %ring_index.i, align 4
  %ring.i = getelementptr inbounds %struct.req_que, ptr %42, i32 0, i32 1
  %48 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ring.i, align 4
  %ring_ptr.i = getelementptr inbounds %struct.req_que, ptr %42, i32 0, i32 2
  %50 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %ring_ptr.i, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %ring_ptr5.i = getelementptr inbounds %struct.req_que, ptr %42, i32 0, i32 2
  %51 = ptrtoint ptr %ring_ptr5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring_ptr5.i, align 4
  %incdec.ptr.i = getelementptr %struct.cmd_a64_entry_t, ptr %52, i32 1
  store ptr %incdec.ptr.i, ptr %ring_ptr5.i, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit

qla2x00_prep_cont_type1_iocb.exit:                ; preds = %if.else.i, %if.then.i
  %ring_ptr6.i = getelementptr inbounds %struct.req_que, ptr %42, i32 0, i32 2
  %53 = ptrtoint ptr %ring_ptr6.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ring_ptr6.i, align 4
  %55 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw, align 4
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %56, i32 0, i32 54
  %57 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %isp_type.i, align 8
  %and7.i = and i32 %58, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  %cond.i = select i1 %tobool.not.i, i32 167772160, i32 50331648
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %cond.i, ptr %54, align 1
  %dsd14 = getelementptr inbounds %struct.cont_a64_entry_t, ptr %54, i32 0, i32 4
  %inc = add i32 %entry_count.0114, 1
  br label %if.end

if.end:                                           ; preds = %qla2x00_prep_cont_type1_iocb.exit, %for.body.if.end_crit_edge
  %cur_dsd.1 = phi ptr [ %dsd14, %qla2x00_prep_cont_type1_iocb.exit ], [ %cur_dsd.0110, %for.body.if.end_crit_edge ]
  %avail_dsds.1 = phi i16 [ 5, %qla2x00_prep_cont_type1_iocb.exit ], [ %avail_dsds.0111, %for.body.if.end_crit_edge ]
  %entry_count.1 = phi i32 [ %inc, %qla2x00_prep_cont_type1_iocb.exit ], [ %entry_count.0114, %for.body.if.end_crit_edge ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0112, i32 0, i32 3
  %60 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_address.i, align 4
  %conv.i = zext i32 %61 to i64
  %62 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #14
  %63 = ptrtoint ptr %cur_dsd.1 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %62, ptr %cur_dsd.1, align 1
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0112, i32 0, i32 4
  %64 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_length.i, align 4
  %length.i80 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.1, i32 0, i32 1
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #14
  %67 = ptrtoint ptr %length.i80 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %length.i80, align 1
  %incdec.ptr.i81 = getelementptr %struct.dsd64, ptr %cur_dsd.1, i32 1
  %dec = add i16 %avail_dsds.1, -1
  %inc16 = add nuw nsw i32 %index.0113, 1
  %call17 = tail call ptr @sg_next(ptr noundef %sg.0112) #14
  %exitcond.not = icmp eq i32 %inc16, %conv9
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %cur_dsd.0.lcssa = phi ptr [ %dsd, %entry.for.end_crit_edge ], [ %incdec.ptr.i81, %if.end.for.end_crit_edge ]
  %avail_dsds.0.lcssa = phi i16 [ 2, %entry.for.end_crit_edge ], [ %dec, %if.end.for.end_crit_edge ]
  %entry_count.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %entry_count.1, %if.end.for.end_crit_edge ]
  %conv21 = and i32 %27, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv21)
  %cmp22117.not = icmp eq i32 %conv21, 0
  br i1 %cmp22117.not, label %for.end.for.end40_crit_edge, label %for.body24.lr.ph

for.end.for.end40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end40

for.body24.lr.ph:                                 ; preds = %for.end
  %sg_list19 = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 8, i32 2
  %68 = ptrtoint ptr %sg_list19 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sg_list19, align 4
  %req_q_map29 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 24
  br label %for.body24

for.body24:                                       ; preds = %if.end35.for.body24_crit_edge, %for.body24.lr.ph
  %entry_count.2122 = phi i32 [ %entry_count.0.lcssa, %for.body24.lr.ph ], [ %entry_count.3, %if.end35.for.body24_crit_edge ]
  %index.1121 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc38, %if.end35.for.body24_crit_edge ]
  %sg.1120 = phi ptr [ %69, %for.body24.lr.ph ], [ %call39, %if.end35.for.body24_crit_edge ]
  %avail_dsds.2119 = phi i16 [ %avail_dsds.0.lcssa, %for.body24.lr.ph ], [ %dec36, %if.end35.for.body24_crit_edge ]
  %cur_dsd.2118 = phi ptr [ %cur_dsd.0.lcssa, %for.body24.lr.ph ], [ %incdec.ptr.i103, %if.end35.for.body24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %avail_dsds.2119)
  %cmp26 = icmp eq i16 %avail_dsds.2119, 0
  br i1 %cmp26, label %if.then28, label %for.body24.if.end35_crit_edge

for.body24.if.end35_crit_edge:                    ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then28:                                        ; preds = %for.body24
  %70 = ptrtoint ptr %req_q_map29 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %req_q_map29, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %ring_index.i82 = getelementptr inbounds %struct.req_que, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %ring_index.i82 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %ring_index.i82, align 4
  %inc.i83 = add i16 %75, 1
  store i16 %inc.i83, ptr %ring_index.i82, align 4
  %length.i84 = getelementptr inbounds %struct.req_que, ptr %73, i32 0, i32 9
  %76 = ptrtoint ptr %length.i84 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %length.i84, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i83, i16 %77)
  %cmp.i85 = icmp eq i16 %inc.i83, %77
  br i1 %cmp.i85, label %if.then.i88, label %if.else.i91

if.then.i88:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %78 = ptrtoint ptr %ring_index.i82 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %ring_index.i82, align 4
  %ring.i86 = getelementptr inbounds %struct.req_que, ptr %73, i32 0, i32 1
  %79 = ptrtoint ptr %ring.i86 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ring.i86, align 4
  %ring_ptr.i87 = getelementptr inbounds %struct.req_que, ptr %73, i32 0, i32 2
  %81 = ptrtoint ptr %ring_ptr.i87 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %ring_ptr.i87, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit98

if.else.i91:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %ring_ptr5.i89 = getelementptr inbounds %struct.req_que, ptr %73, i32 0, i32 2
  %82 = ptrtoint ptr %ring_ptr5.i89 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ring_ptr5.i89, align 4
  %incdec.ptr.i90 = getelementptr %struct.cmd_a64_entry_t, ptr %83, i32 1
  store ptr %incdec.ptr.i90, ptr %ring_ptr5.i89, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit98

qla2x00_prep_cont_type1_iocb.exit98:              ; preds = %if.else.i91, %if.then.i88
  %ring_ptr6.i92 = getelementptr inbounds %struct.req_que, ptr %73, i32 0, i32 2
  %84 = ptrtoint ptr %ring_ptr6.i92 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ring_ptr6.i92, align 4
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 4
  %isp_type.i94 = getelementptr inbounds %struct.qla_hw_data, ptr %87, i32 0, i32 54
  %88 = ptrtoint ptr %isp_type.i94 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %isp_type.i94, align 8
  %and7.i95 = and i32 %89, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i95)
  %tobool.not.i96 = icmp eq i32 %and7.i95, 0
  %cond.i97 = select i1 %tobool.not.i96, i32 167772160, i32 50331648
  %90 = ptrtoint ptr %85 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %cond.i97, ptr %85, align 1
  %dsd32 = getelementptr inbounds %struct.cont_a64_entry_t, ptr %85, i32 0, i32 4
  %inc34 = add i32 %entry_count.2122, 1
  br label %if.end35

if.end35:                                         ; preds = %qla2x00_prep_cont_type1_iocb.exit98, %for.body24.if.end35_crit_edge
  %cur_dsd.3 = phi ptr [ %dsd32, %qla2x00_prep_cont_type1_iocb.exit98 ], [ %cur_dsd.2118, %for.body24.if.end35_crit_edge ]
  %avail_dsds.3 = phi i16 [ 5, %qla2x00_prep_cont_type1_iocb.exit98 ], [ %avail_dsds.2119, %for.body24.if.end35_crit_edge ]
  %entry_count.3 = phi i32 [ %inc34, %qla2x00_prep_cont_type1_iocb.exit98 ], [ %entry_count.2122, %for.body24.if.end35_crit_edge ]
  %dma_address.i99 = getelementptr inbounds %struct.scatterlist, ptr %sg.1120, i32 0, i32 3
  %91 = ptrtoint ptr %dma_address.i99 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dma_address.i99, align 4
  %conv.i100 = zext i32 %92 to i64
  %93 = tail call i64 @llvm.bswap.i64(i64 %conv.i100) #14
  %94 = ptrtoint ptr %cur_dsd.3 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 8)
  store i64 %93, ptr %cur_dsd.3, align 1
  %dma_length.i101 = getelementptr inbounds %struct.scatterlist, ptr %sg.1120, i32 0, i32 4
  %95 = ptrtoint ptr %dma_length.i101 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dma_length.i101, align 4
  %length.i102 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.3, i32 0, i32 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #14
  %98 = ptrtoint ptr %length.i102 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %97, ptr %length.i102, align 1
  %incdec.ptr.i103 = getelementptr %struct.dsd64, ptr %cur_dsd.3, i32 1
  %dec36 = add i16 %avail_dsds.3, -1
  %inc38 = add nuw nsw i32 %index.1121, 1
  %call39 = tail call ptr @sg_next(ptr noundef %sg.1120) #14
  %exitcond124.not = icmp eq i32 %inc38, %conv21
  br i1 %exitcond124.not, label %if.end35.for.end40_crit_edge, label %if.end35.for.body24_crit_edge

if.end35.for.body24_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body24

if.end35.for.end40_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end40

for.end40:                                        ; preds = %if.end35.for.end40_crit_edge, %for.end.for.end40_crit_edge
  %entry_count.2.lcssa = phi i32 [ %entry_count.0.lcssa, %for.end.for.end40_crit_edge ], [ %entry_count.3, %if.end35.for.end40_crit_edge ]
  %conv41 = trunc i32 %entry_count.2.lcssa to i8
  %entry_count42 = getelementptr inbounds %struct.ct_entry_24xx, ptr %ct_iocb, i32 0, i32 1
  %99 = ptrtoint ptr %entry_count42 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv41, ptr %entry_count42, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla2x00_ct_iocb(ptr nocapture noundef readonly %sp, ptr noundef %ct_iocb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %u, align 8
  %6 = call ptr @memset(ptr %ct_iocb, i32 0, i32 64)
  %7 = ptrtoint ptr %ct_iocb to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 41, ptr %ct_iocb, align 4
  %handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle, align 8
  %handle1 = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ct_iocb, i32 0, i32 4
  %10 = ptrtoint ptr %handle1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %handle1, align 4
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %11 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool.not = icmp sgt i32 %12, -1
  %fcport3 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %13 = ptrtoint ptr %fcport3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fcport3, align 4
  %loop_id4 = getelementptr inbounds %struct.fc_port, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %loop_id4 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %loop_id4, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %loop_id2 = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ct_iocb, i32 0, i32 5
  %18 = ptrtoint ptr %loop_id2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %loop_id2, align 4
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = trunc i16 %16 to i8
  %loop_id5 = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ct_iocb, i32 0, i32 5
  %standard = getelementptr inbounds %struct.anon.82, ptr %loop_id5, i32 0, i32 1
  %19 = ptrtoint ptr %standard to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %standard, align 1
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %status = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ct_iocb, i32 0, i32 6
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %status, align 2
  %control_flags = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ct_iocb, i32 0, i32 7
  %21 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %control_flags, align 4
  %timeout = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ct_iocb, i32 0, i32 9
  %22 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %timeout, align 4
  %request_payload = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 7
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sg_cnt, align 4
  %conv6 = trunc i32 %24 to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  %cmd_dsd_count = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ct_iocb, i32 0, i32 10
  %26 = ptrtoint ptr %cmd_dsd_count to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %cmd_dsd_count, align 2
  %27 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sg_cnt, align 4
  %29 = trunc i32 %28 to i16
  %conv9 = add i16 %29, 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %total_dsd_count = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ct_iocb, i32 0, i32 11
  %31 = ptrtoint ptr %total_dsd_count to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %total_dsd_count, align 4
  %32 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %request_payload, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %req_bytecount = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ct_iocb, i32 0, i32 18
  %35 = ptrtoint ptr %req_bytecount to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %req_bytecount, align 4
  %reply_payload = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 8
  %36 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reply_payload, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %rsp_bytecount = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ct_iocb, i32 0, i32 17
  %39 = ptrtoint ptr %rsp_bytecount to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rsp_bytecount, align 4
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 7, i32 2
  %40 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sg_list, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_address, align 4
  %conv13 = zext i32 %43 to i64
  %req_dsd = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ct_iocb, i32 0, i32 19
  %44 = tail call i64 @llvm.bswap.i64(i64 %conv13) #14
  %45 = ptrtoint ptr %req_dsd to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %req_dsd, align 1
  %length = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ct_iocb, i32 0, i32 19, i32 1
  %46 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %34, ptr %length, align 4
  %sg_list17 = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 8, i32 2
  %47 = ptrtoint ptr %sg_list17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sg_list17, align 4
  %dma_address18 = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %dma_address18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_address18, align 4
  %conv19 = zext i32 %50 to i64
  %rsp_dsd = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ct_iocb, i32 0, i32 20
  %51 = tail call i64 @llvm.bswap.i64(i64 %conv19) #14
  %52 = ptrtoint ptr %rsp_dsd to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %51, ptr %rsp_dsd, align 1
  %length23 = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ct_iocb, i32 0, i32 20, i32 1
  %53 = ptrtoint ptr %length23 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %38, ptr %length23, align 4
  %sg_cnt26 = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %sg_cnt26 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sg_cnt26, align 4
  %conv30 = and i32 %55, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv30)
  %cmp86.not = icmp eq i32 %conv30, 0
  br i1 %cmp86.not, label %do.end.for.end_crit_edge, label %for.body.preheader

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %do.end
  %56 = ptrtoint ptr %sg_list17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sg_list17, align 4
  br label %for.body

for.body:                                         ; preds = %if.end37.for.body_crit_edge, %for.body.preheader
  %entry_count.091 = phi i32 [ %entry_count.1, %if.end37.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %avail_dsds.090 = phi i16 [ %dec, %if.end37.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %index.089 = phi i32 [ %inc38, %if.end37.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.088 = phi ptr [ %call39, %if.end37.for.body_crit_edge ], [ %57, %for.body.preheader ]
  %cur_dsd.087 = phi ptr [ %incdec.ptr.i83, %if.end37.for.body_crit_edge ], [ %rsp_dsd, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %avail_dsds.090)
  %cmp33 = icmp eq i16 %avail_dsds.090, 0
  br i1 %cmp33, label %if.then35, label %for.body.if.end37_crit_edge

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then35:                                        ; preds = %for.body
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw, align 4
  %req_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %59, i32 0, i32 24
  %60 = ptrtoint ptr %req_q_map to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %req_q_map, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %ring_index.i = getelementptr inbounds %struct.req_que, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %ring_index.i, align 4
  %inc.i = add i16 %65, 1
  store i16 %inc.i, ptr %ring_index.i, align 4
  %length.i = getelementptr inbounds %struct.req_que, ptr %63, i32 0, i32 9
  %66 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %length.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %67)
  %cmp.i = icmp eq i16 %inc.i, %67
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  %68 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %ring_index.i, align 4
  %ring.i = getelementptr inbounds %struct.req_que, ptr %63, i32 0, i32 1
  %69 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ring.i, align 4
  %ring_ptr.i = getelementptr inbounds %struct.req_que, ptr %63, i32 0, i32 2
  %71 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %ring_ptr.i, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit

if.else.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  %ring_ptr5.i = getelementptr inbounds %struct.req_que, ptr %63, i32 0, i32 2
  %72 = ptrtoint ptr %ring_ptr5.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ring_ptr5.i, align 4
  %incdec.ptr.i = getelementptr %struct.cmd_a64_entry_t, ptr %73, i32 1
  store ptr %incdec.ptr.i, ptr %ring_ptr5.i, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit

qla2x00_prep_cont_type1_iocb.exit:                ; preds = %if.else.i, %if.then.i
  %ring_ptr6.i = getelementptr inbounds %struct.req_que, ptr %63, i32 0, i32 2
  %74 = ptrtoint ptr %ring_ptr6.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ring_ptr6.i, align 4
  %76 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw, align 4
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %77, i32 0, i32 54
  %78 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %isp_type.i, align 8
  %and7.i = and i32 %79, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  %cond.i = select i1 %tobool.not.i, i32 167772160, i32 50331648
  %80 = ptrtoint ptr %75 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %cond.i, ptr %75, align 1
  %dsd = getelementptr inbounds %struct.cont_a64_entry_t, ptr %75, i32 0, i32 4
  %inc = add i32 %entry_count.091, 1
  br label %if.end37

if.end37:                                         ; preds = %qla2x00_prep_cont_type1_iocb.exit, %for.body.if.end37_crit_edge
  %cur_dsd.1 = phi ptr [ %dsd, %qla2x00_prep_cont_type1_iocb.exit ], [ %cur_dsd.087, %for.body.if.end37_crit_edge ]
  %avail_dsds.1 = phi i16 [ 5, %qla2x00_prep_cont_type1_iocb.exit ], [ %avail_dsds.090, %for.body.if.end37_crit_edge ]
  %entry_count.1 = phi i32 [ %inc, %qla2x00_prep_cont_type1_iocb.exit ], [ %entry_count.091, %for.body.if.end37_crit_edge ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.088, i32 0, i32 3
  %81 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dma_address.i, align 4
  %conv.i = zext i32 %82 to i64
  %83 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #14
  %84 = ptrtoint ptr %cur_dsd.1 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 8)
  store i64 %83, ptr %cur_dsd.1, align 1
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.088, i32 0, i32 4
  %85 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dma_length.i, align 4
  %length.i82 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.1, i32 0, i32 1
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #14
  %88 = ptrtoint ptr %length.i82 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %87, ptr %length.i82, align 1
  %incdec.ptr.i83 = getelementptr %struct.dsd64, ptr %cur_dsd.1, i32 1
  %dec = add i16 %avail_dsds.1, -1
  %inc38 = add nuw nsw i32 %index.089, 1
  %call39 = tail call ptr @sg_next(ptr noundef %sg.088) #14
  %exitcond.not = icmp eq i32 %inc38, %conv30
  br i1 %exitcond.not, label %if.end37.for.end_crit_edge, label %if.end37.for.body_crit_edge

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end37.for.end_crit_edge, %do.end.for.end_crit_edge
  %entry_count.0.lcssa = phi i32 [ 1, %do.end.for.end_crit_edge ], [ %entry_count.1, %if.end37.for.end_crit_edge ]
  %conv40 = trunc i32 %entry_count.0.lcssa to i8
  %entry_count41 = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ct_iocb, i32 0, i32 1
  %89 = ptrtoint ptr %entry_count41 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv40, ptr %entry_count41, align 1
  %90 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vha1, align 8
  %control_requests = getelementptr inbounds %struct.scsi_qla_host, ptr %91, i32 0, i32 58, i32 5
  %92 = ptrtoint ptr %control_requests to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %control_requests, align 8
  %inc43 = add i32 %93, 1
  store i32 %inc43, ptr %control_requests, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @qla2x00_adisc_iocb(ptr nocapture noundef readonly %sp, ptr nocapture noundef writeonly %mbx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vha = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %4 = ptrtoint ptr %mbx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 57, ptr %mbx, align 4
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %5 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not = icmp sgt i32 %6, -1
  %fcport2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %7 = ptrtoint ptr %fcport2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fcport2, align 4
  %loop_id3 = getelementptr inbounds %struct.fc_port, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %loop_id3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %loop_id3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %loop_id1 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 5
  %12 = ptrtoint ptr %loop_id1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %loop_id1, align 4
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = trunc i16 %10 to i8
  %loop_id4 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 5
  %standard = getelementptr inbounds %struct.anon.82, ptr %loop_id4, i32 0, i32 1
  %13 = ptrtoint ptr %standard to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %standard, align 1
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %mb0 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 10
  %14 = ptrtoint ptr %mb0 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 25600, ptr %mb0, align 4
  %15 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool7.not = icmp sgt i32 %16, -1
  %fcport12 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %17 = ptrtoint ptr %fcport12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fcport12, align 4
  %loop_id13 = getelementptr inbounds %struct.fc_port, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %loop_id13 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %loop_id13, align 4
  br i1 %tobool7.not, label %if.else11, label %if.then8

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %mb10 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 17
  %22 = ptrtoint ptr %mb10 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 256, ptr %mb10, align 2
  br label %if.end17

if.else11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %shl = shl i16 %20, 8
  %or = or i16 %shl, 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %or)
  br label %if.end17

if.end17:                                         ; preds = %if.else11, %if.then8
  %.sink = phi i16 [ %23, %if.else11 ], [ %21, %if.then8 ]
  %24 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 11
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %.sink, ptr %24, align 2
  %async_pd_dma = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 109
  %26 = ptrtoint ptr %async_pd_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %async_pd_dma, align 8
  %shr = lshr i32 %27, 16
  %conv18 = trunc i32 %shr to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv18)
  %mb2 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 12
  %29 = ptrtoint ptr %mb2 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %mb2, align 4
  %30 = ptrtoint ptr %async_pd_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %async_pd_dma, align 8
  %conv20 = trunc i32 %31 to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  %mb3 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 13
  %33 = ptrtoint ptr %mb3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %mb3, align 2
  %mb6 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 14
  %34 = ptrtoint ptr %mb6 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %mb6, align 4
  %mb7 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 15
  %35 = ptrtoint ptr %mb7 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %mb7, align 2
  %36 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vha, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %37, i32 0, i32 46
  %38 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vp_idx, align 8
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %mb9 = getelementptr inbounds %struct.mbx_entry, ptr %mbx, i32 0, i32 16
  %41 = ptrtoint ptr %mb9 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %mb9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlafx00_tm_iocb(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla24xx_tm_iocb(ptr nocapture noundef readonly %sp, ptr noundef %tsk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fcport1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %0 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport1, align 4
  %vha2 = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vha2, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %req3 = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 54
  %6 = ptrtoint ptr %req3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req3, align 8
  %flags5 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags5, align 8
  %10 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %u, align 8
  %12 = ptrtoint ptr %tsk to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 20, ptr %tsk, align 4
  %entry_count = getelementptr inbounds %struct.tsk_mgmt_entry, ptr %tsk, i32 0, i32 1
  %13 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %entry_count, align 1
  %id = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 12
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %id, align 4
  %handle = getelementptr inbounds %struct.tsk_mgmt_entry, ptr %tsk, i32 0, i32 4
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle, align 4
  %conv.i = zext i16 %15 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv1.i = and i32 %17, 65535
  %or.i = or i32 %shl.i, %conv1.i
  store i32 %or.i, ptr %handle, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %loop_id, align 4
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %nport_handle = getelementptr inbounds %struct.tsk_mgmt_entry, ptr %tsk, i32 0, i32 5
  %21 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %nport_handle, align 4
  %r_a_tov = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 68
  %22 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %r_a_tov, align 8
  %24 = udiv i16 %23, 10
  %25 = shl nuw nsw i16 %24, 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %timeout = getelementptr inbounds %struct.tsk_mgmt_entry, ptr %tsk, i32 0, i32 8
  %27 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %timeout, align 2
  %28 = tail call i32 @llvm.bswap.i32(i32 %9)
  %control_flags = getelementptr inbounds %struct.tsk_mgmt_entry, ptr %tsk, i32 0, i32 10
  %29 = ptrtoint ptr %control_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %control_flags, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 6
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %30 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %al_pa, align 2
  %port_id = getelementptr inbounds %struct.tsk_mgmt_entry, ptr %tsk, i32 0, i32 12
  %32 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %port_id, align 4
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 1
  %33 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %area, align 1
  %arrayidx13 = getelementptr %struct.tsk_mgmt_entry, ptr %tsk, i32 0, i32 12, i32 1
  %35 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx13, align 1
  %36 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %d_id, align 8
  %arrayidx16 = getelementptr %struct.tsk_mgmt_entry, ptr %tsk, i32 0, i32 12, i32 2
  %38 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx16, align 2
  %39 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vha2, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %40, i32 0, i32 46
  %41 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vp_idx, align 8
  %conv18 = trunc i16 %42 to i8
  %vp_index = getelementptr inbounds %struct.tsk_mgmt_entry, ptr %tsk, i32 0, i32 13
  %43 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv18, ptr %vp_index, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp = icmp eq i32 %9, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %lun20 = getelementptr inbounds %struct.tsk_mgmt_entry, ptr %tsk, i32 0, i32 9
  tail call void @int_to_scsilun(i64 noundef %11, ptr noundef %lun20) #14
  %incdec.ptr1.i = getelementptr %struct.tsk_mgmt_entry, ptr %tsk, i32 0, i32 9, i32 0, i32 4
  %44 = ptrtoint ptr %lun20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lun20, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #14
  %47 = ptrtoint ptr %lun20 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %lun20, align 4
  %48 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %incdec.ptr1.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #14
  %51 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %incdec.ptr1.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlafx00_fxdisc_iocb(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @qla_nvme_ls(ptr nocapture noundef readonly %sp, ptr nocapture noundef writeonly %cmd_pkt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd_pkt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -119, ptr %cmd_pkt, align 4
  %entry_count = getelementptr inbounds %struct.pt_ls4_request, ptr %cmd_pkt, i32 0, i32 1
  %1 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %entry_count, align 1
  %control_flags = getelementptr inbounds %struct.pt_ls4_request, ptr %cmd_pkt, i32 0, i32 11
  %2 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %control_flags, align 2
  %timeout_sec = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %3 = ptrtoint ptr %timeout_sec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout_sec, align 4
  %conv = trunc i32 %4 to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %timeout = getelementptr inbounds %struct.pt_ls4_request, ptr %cmd_pkt, i32 0, i32 10
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %timeout, align 4
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %7 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fcport, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %loop_id, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %nport_handle = getelementptr inbounds %struct.pt_ls4_request, ptr %cmd_pkt, i32 0, i32 6
  %12 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %nport_handle, align 2
  %13 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fcport, align 4
  %vha = getelementptr inbounds %struct.fc_port, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vha, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vp_idx, align 8
  %conv3 = trunc i16 %18 to i8
  %vp_index = getelementptr inbounds %struct.pt_ls4_request, ptr %cmd_pkt, i32 0, i32 8
  %19 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv3, ptr %vp_index, align 2
  %tx_dseg_count = getelementptr inbounds %struct.pt_ls4_request, ptr %cmd_pkt, i32 0, i32 7
  %20 = ptrtoint ptr %tx_dseg_count to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 256, ptr %tx_dseg_count, align 4
  %cmd_len = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmd_len, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %tx_byte_count = getelementptr inbounds %struct.pt_ls4_request, ptr %cmd_pkt, i32 0, i32 17
  %24 = ptrtoint ptr %tx_byte_count to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tx_byte_count, align 4
  %25 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd_len, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %dsd = getelementptr inbounds %struct.pt_ls4_request, ptr %cmd_pkt, i32 0, i32 18
  %length = getelementptr inbounds %struct.pt_ls4_request, ptr %cmd_pkt, i32 0, i32 18, i32 0, i32 1
  %28 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %length, align 4
  %cmd_dma = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %cmd_dma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cmd_dma, align 4
  %conv8 = zext i32 %30 to i64
  %31 = tail call i64 @llvm.bswap.i64(i64 %conv8) #14
  %32 = ptrtoint ptr %dsd to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %dsd, align 1
  %rx_dseg_count = getelementptr inbounds %struct.pt_ls4_request, ptr %cmd_pkt, i32 0, i32 12
  %33 = ptrtoint ptr %rx_dseg_count to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 256, ptr %rx_dseg_count, align 4
  %rsp_len = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %34 = ptrtoint ptr %rsp_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rsp_len, align 8
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %rx_byte_count = getelementptr inbounds %struct.pt_ls4_request, ptr %cmd_pkt, i32 0, i32 16
  %37 = ptrtoint ptr %rx_byte_count to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %rx_byte_count, align 4
  %38 = ptrtoint ptr %rsp_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rsp_len, align 8
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %arrayidx15 = getelementptr %struct.pt_ls4_request, ptr %cmd_pkt, i32 0, i32 18, i32 1
  %length16 = getelementptr %struct.pt_ls4_request, ptr %cmd_pkt, i32 0, i32 18, i32 1, i32 1
  %41 = ptrtoint ptr %length16 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %length16, align 4
  %rsp_dma = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rsp_dma, align 8
  %conv18 = zext i32 %43 to i64
  %44 = tail call i64 @llvm.bswap.i64(i64 %conv18) #14
  %45 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %arrayidx15, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlafx00_abort_iocb(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla24xx_abort_iocb(ptr nocapture noundef readonly %sp, ptr noundef %abt_iocb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %qpair = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 14
  %2 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qpair, align 8
  %req2 = getelementptr inbounds %struct.qla_qpair, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req2, align 4
  %cmd_sp = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 15
  %6 = ptrtoint ptr %cmd_sp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd_sp, align 4
  %8 = call ptr @memset(ptr %abt_iocb, i32 0, i32 64)
  %9 = ptrtoint ptr %abt_iocb to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 51, ptr %abt_iocb, align 4
  %entry_count = getelementptr inbounds %struct.abort_entry_24xx, ptr %abt_iocb, i32 0, i32 1
  %10 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %entry_count, align 1
  %id = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 12
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %id, align 4
  %handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %handle, align 8
  %conv.i = zext i16 %12 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv1.i = and i32 %14, 65535
  %or.i = or i32 %shl.i, %conv1.i
  %handle3 = getelementptr inbounds %struct.abort_entry_24xx, ptr %abt_iocb, i32 0, i32 4
  %15 = ptrtoint ptr %handle3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %handle3, align 4
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %16 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fcport, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %loop_id, align 4
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %21 = getelementptr inbounds %struct.abort_entry_24xx, ptr %abt_iocb, i32 0, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %20, ptr %21, align 4
  %23 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fcport, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %24, i32 0, i32 6
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %25 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %al_pa, align 2
  %port_id = getelementptr inbounds %struct.abort_entry_24xx, ptr %abt_iocb, i32 0, i32 10
  %27 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %port_id, align 4
  %28 = load ptr, ptr %fcport, align 4
  %d_id7 = getelementptr inbounds %struct.fc_port, ptr %28, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id7, i32 0, i32 1
  %29 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %area, align 1
  %arrayidx9 = getelementptr %struct.abort_entry_24xx, ptr %abt_iocb, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx9, align 1
  %32 = load ptr, ptr %fcport, align 4
  %d_id11 = getelementptr inbounds %struct.fc_port, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %d_id11 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %d_id11, align 8
  %arrayidx13 = getelementptr %struct.abort_entry_24xx, ptr %abt_iocb, i32 0, i32 10, i32 2
  %35 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx13, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %req_que_no = getelementptr inbounds %struct.anon.89, ptr %u, i32 0, i32 2
  %36 = ptrtoint ptr %req_que_no to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %req_que_no, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %39 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %u, align 8
  %conv.i49 = zext i16 %38 to i32
  %shl.i50 = shl nuw i32 %conv.i49, 16
  %conv1.i51 = and i32 %40, 65535
  %or.i52 = or i32 %shl.i50, %conv1.i51
  %handle_to_abort = getelementptr inbounds %struct.abort_entry_24xx, ptr %abt_iocb, i32 0, i32 7
  %41 = ptrtoint ptr %handle_to_abort to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i52, ptr %handle_to_abort, align 4
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 46
  %42 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vp_idx, align 8
  %conv18 = trunc i16 %43 to i8
  %vp_index = getelementptr inbounds %struct.abort_entry_24xx, ptr %abt_iocb, i32 0, i32 11
  %44 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv18, ptr %vp_index, align 1
  %45 = ptrtoint ptr %req_que_no to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %req_que_no, align 2
  %req_que_no21 = getelementptr inbounds %struct.abort_entry_24xx, ptr %abt_iocb, i32 0, i32 8
  %47 = ptrtoint ptr %req_que_no21 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %req_que_no21, align 4
  %tobool22.not = icmp eq ptr %7, null
  br i1 %tobool22.not, label %if.end.do.body_crit_edge, label %if.then23

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qla_nvme_abort_set_option(ptr noundef %abt_iocb, ptr noundef nonnull %7) #14
  br label %do.body

do.body:                                          ; preds = %if.then23, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !187
  tail call void @arm_heavy_mb() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla24xx_els_logo_iocb(ptr nocapture noundef readonly %sp, ptr noundef %els_iocb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %2 = ptrtoint ptr %els_iocb to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 83, ptr %els_iocb, align 4
  %entry_count = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 1
  %3 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %entry_count, align 1
  %sys_define = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 2
  %4 = ptrtoint ptr %sys_define to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %sys_define, align 2
  %entry_status = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 3
  %5 = ptrtoint ptr %entry_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %entry_status, align 1
  %handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  %handle2 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 4
  %8 = ptrtoint ptr %handle2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %handle2, align 4
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %9 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fcport, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %loop_id, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %nport_handle = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 6
  %14 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %nport_handle, align 2
  %tx_dsd_count = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 7
  %15 = ptrtoint ptr %tx_dsd_count to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 256, ptr %tx_dsd_count, align 4
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 46
  %16 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vp_idx, align 8
  %conv = trunc i16 %17 to i8
  %vp_index = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 8
  %18 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %vp_index, align 2
  %sof_type = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 9
  %19 = ptrtoint ptr %sof_type to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 16, ptr %sof_type, align 1
  %rx_dsd_count = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 11
  %20 = ptrtoint ptr %rx_dsd_count to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %rx_dsd_count, align 4
  %els_cmd = getelementptr inbounds %struct.anon.86, ptr %u, i32 0, i32 1
  %21 = ptrtoint ptr %els_cmd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %els_cmd, align 4
  %conv4 = trunc i32 %22 to i8
  %opcode = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 12
  %23 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv4, ptr %opcode, align 2
  %24 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fcport, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %25, i32 0, i32 6
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %26 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %al_pa, align 2
  %d_id6 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 14
  %28 = ptrtoint ptr %d_id6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %d_id6, align 4
  %29 = load ptr, ptr %fcport, align 4
  %d_id8 = getelementptr inbounds %struct.fc_port, ptr %29, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id8, i32 0, i32 1
  %30 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %area, align 1
  %arrayidx10 = getelementptr %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 14, i32 1
  %32 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx10, align 1
  %33 = load ptr, ptr %fcport, align 4
  %d_id12 = getelementptr inbounds %struct.fc_port, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %d_id12 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %d_id12, align 8
  %arrayidx14 = getelementptr %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 14, i32 2
  %36 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx14, align 2
  %d_id15 = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 17
  %al_pa16 = getelementptr inbounds %struct.anon.80, ptr %d_id15, i32 0, i32 2
  %37 = ptrtoint ptr %al_pa16 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %al_pa16, align 2
  %s_id = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 15
  %arrayidx17 = getelementptr %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 15, i32 1
  %39 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx17, align 1
  %area19 = getelementptr inbounds %struct.anon.80, ptr %d_id15, i32 0, i32 1
  %40 = ptrtoint ptr %area19 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %area19, align 1
  %arrayidx21 = getelementptr %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 15, i32 2
  %42 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx21, align 1
  %43 = ptrtoint ptr %d_id15 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %d_id15, align 8
  %45 = ptrtoint ptr %s_id to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %s_id, align 1
  %46 = load i32, ptr %els_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp = icmp eq i32 %46, 3
  br i1 %cmp, label %if.then, label %if.else36

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %48, i32 0, i32 2
  %49 = getelementptr inbounds i32, ptr %flags, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load = load volatile i32, ptr %49, align 4
  %51 = trunc i32 %bf.load to i16
  %52 = lshr i16 %51, 3
  %53 = and i16 %52, 2048
  %54 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 16
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %53, ptr %54, align 2
  %56 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17
  %tx_len = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17, i32 1
  %57 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1946157056, ptr %tx_len, align 4
  %tx_byte_count = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17, i32 0, i32 1
  %58 = ptrtoint ptr %tx_byte_count to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1946157056, ptr %tx_byte_count, align 4
  %els_plogi_pyld_dma = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %els_plogi_pyld_dma to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %els_plogi_pyld_dma, align 8
  %conv32 = zext i32 %60 to i64
  %tx_address = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17, i32 0, i32 2
  %61 = tail call i64 @llvm.bswap.i64(i64 %conv32) #14
  %62 = ptrtoint ptr %tx_address to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %61, ptr %tx_address, align 1
  %63 = ptrtoint ptr %rx_dsd_count to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 256, ptr %rx_dsd_count, align 4
  %rx_len = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17, i32 1, i32 12
  %64 = ptrtoint ptr %rx_len to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1946157056, ptr %rx_len, align 4
  %65 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1946157056, ptr %56, align 4
  %els_resp_pyld_dma = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 4
  %66 = ptrtoint ptr %els_resp_pyld_dma to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %els_resp_pyld_dma, align 4
  %conv35 = zext i32 %67 to i64
  %rx_address = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17, i32 1, i32 4
  %68 = tail call i64 @llvm.bswap.i64(i64 %conv35) #14
  %69 = ptrtoint ptr %rx_address to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 %68, ptr %rx_address, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134348800, ptr noundef %1, i32 noundef 12403, ptr noundef nonnull @.str.61) #14
  br label %if.end45

if.else36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %70 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17
  %tx_byte_count37 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17, i32 0, i32 1
  %71 = ptrtoint ptr %tx_byte_count37 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 268435456, ptr %tx_byte_count37, align 4
  %els_logo_pyld_dma = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1
  %72 = ptrtoint ptr %els_logo_pyld_dma to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %els_logo_pyld_dma, align 4
  %conv39 = zext i32 %73 to i64
  %tx_address40 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17, i32 0, i32 2
  %74 = tail call i64 @llvm.bswap.i64(i64 %conv39) #14
  %75 = ptrtoint ptr %tx_address40 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 8)
  store i64 %74, ptr %tx_address40, align 1
  %tx_len41 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17, i32 1
  %76 = ptrtoint ptr %tx_len41 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 268435456, ptr %tx_len41, align 4
  %77 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %70, align 4
  %rx_address43 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17, i32 1, i32 4
  %78 = ptrtoint ptr %rx_address43 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 0, ptr %rx_address43, align 4
  %rx_len44 = getelementptr inbounds %struct.els_entry_24xx, ptr %els_iocb, i32 0, i32 17, i32 1, i32 12
  %79 = ptrtoint ptr %rx_len44 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %rx_len44, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134348800, ptr noundef %1, i32 noundef 12406, ptr noundef nonnull @.str.62) #14
  br label %if.end45

if.end45:                                         ; preds = %if.else36, %if.then
  %.sink = phi i32 [ 267, %if.else36 ], [ 265, %if.then ]
  tail call void @ql_dump_buffer(i32 noundef 2, ptr noundef %1, i32 noundef %.sink, ptr noundef %els_iocb, i32 noundef 64) #14
  %80 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vha1, align 8
  %control_requests = getelementptr inbounds %struct.scsi_qla_host, ptr %81, i32 0, i32 58, i32 5
  %82 = ptrtoint ptr %control_requests to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %control_requests, align 8
  %inc = add i32 %83, 1
  store i32 %inc, ptr %control_requests, align 8
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla2x00_mb_iocb(ptr nocapture noundef readonly %sp, ptr nocapture noundef writeonly %mbx) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mbx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 57, ptr %mbx, align 4
  %handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %1 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %handle, align 8
  %handle1 = getelementptr inbounds %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 4
  %3 = ptrtoint ptr %handle1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %handle1, align 4
  %out_mb = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %out_mb to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %out_mb, align 2
  %arrayidx3 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 0
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %arrayidx3, align 2
  %arrayidx.1 = getelementptr [28 x i16], ptr %out_mb, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.1, align 2
  %arrayidx3.1 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %arrayidx3.1, align 2
  %arrayidx.2 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 7
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.2, align 2
  %arrayidx3.2 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayidx3.2, align 2
  %arrayidx.3 = getelementptr [28 x i16], ptr %out_mb, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.3, align 2
  %arrayidx3.3 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx3.3, align 2
  %arrayidx.4 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.4, align 2
  %arrayidx3.4 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 4
  %18 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx3.4, align 2
  %arrayidx.5 = getelementptr [28 x i16], ptr %out_mb, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.5, align 2
  %arrayidx3.5 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 5
  %21 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %arrayidx3.5, align 2
  %arrayidx.6 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.6, align 2
  %arrayidx3.6 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 6
  %24 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %arrayidx3.6, align 2
  %arrayidx.7 = getelementptr [28 x i16], ptr %out_mb, i32 0, i32 7
  %25 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.7, align 2
  %arrayidx3.7 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 7
  %27 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %arrayidx3.7, align 2
  %arrayidx.8 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.8, align 2
  %arrayidx3.8 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 8
  %30 = ptrtoint ptr %arrayidx3.8 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %arrayidx3.8, align 2
  %arrayidx.9 = getelementptr [28 x i16], ptr %out_mb, i32 0, i32 9
  %31 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.9, align 2
  %arrayidx3.9 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 9
  %33 = ptrtoint ptr %arrayidx3.9 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayidx3.9, align 2
  %arrayidx.10 = getelementptr [28 x i16], ptr %out_mb, i32 0, i32 10
  %34 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.10, align 2
  %arrayidx3.10 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 10
  %36 = ptrtoint ptr %arrayidx3.10 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %arrayidx3.10, align 2
  %arrayidx.11 = getelementptr [28 x i16], ptr %out_mb, i32 0, i32 11
  %37 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.11, align 2
  %arrayidx3.11 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 11
  %39 = ptrtoint ptr %arrayidx3.11 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %arrayidx3.11, align 2
  %arrayidx.12 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.12, align 2
  %arrayidx3.12 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 12
  %42 = ptrtoint ptr %arrayidx3.12 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %arrayidx3.12, align 2
  %arrayidx.13 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.13, align 2
  %arrayidx3.13 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 13
  %45 = ptrtoint ptr %arrayidx3.13 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %arrayidx3.13, align 2
  %arrayidx.14 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 4
  %46 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.14, align 2
  %arrayidx3.14 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 14
  %48 = ptrtoint ptr %arrayidx3.14 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %arrayidx3.14, align 2
  %arrayidx.15 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 6
  %49 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.15, align 2
  %arrayidx3.15 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 15
  %51 = ptrtoint ptr %arrayidx3.15 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %arrayidx3.15, align 2
  %arrayidx.16 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 8
  %52 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.16, align 2
  %arrayidx3.16 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 16
  %54 = ptrtoint ptr %arrayidx3.16 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %arrayidx3.16, align 2
  %arrayidx.17 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 10
  %55 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx.17, align 2
  %arrayidx3.17 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 17
  %57 = ptrtoint ptr %arrayidx3.17 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %arrayidx3.17, align 2
  %arrayidx.18 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 12
  %58 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.18, align 2
  %arrayidx3.18 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 18
  %60 = ptrtoint ptr %arrayidx3.18 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %arrayidx3.18, align 2
  %arrayidx.19 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 14
  %61 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx.19, align 2
  %arrayidx3.19 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 19
  %63 = ptrtoint ptr %arrayidx3.19 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %arrayidx3.19, align 2
  %arrayidx.20 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 16
  %64 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.20, align 2
  %arrayidx3.20 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 20
  %66 = ptrtoint ptr %arrayidx3.20 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %arrayidx3.20, align 2
  %arrayidx.21 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 18
  %67 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx.21, align 2
  %arrayidx3.21 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 21
  %69 = ptrtoint ptr %arrayidx3.21 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %arrayidx3.21, align 2
  %arrayidx.22 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 20
  %70 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx.22, align 2
  %arrayidx3.22 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 22
  %72 = ptrtoint ptr %arrayidx3.22 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %arrayidx3.22, align 2
  %arrayidx.23 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 22
  %73 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx.23, align 2
  %arrayidx3.23 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 23
  %75 = ptrtoint ptr %arrayidx3.23 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %arrayidx3.23, align 2
  %arrayidx.24 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 24
  %76 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx.24, align 2
  %arrayidx3.24 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 24
  %78 = ptrtoint ptr %arrayidx3.24 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %arrayidx3.24, align 2
  %arrayidx.25 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 26
  %79 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx.25, align 2
  %arrayidx3.25 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 25
  %81 = ptrtoint ptr %arrayidx3.25 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %arrayidx3.25, align 2
  %arrayidx.26 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 28
  %82 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx.26, align 2
  %arrayidx3.26 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 26
  %84 = ptrtoint ptr %arrayidx3.26 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %arrayidx3.26, align 2
  %arrayidx.27 = getelementptr %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 30
  %85 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx.27, align 2
  %arrayidx3.27 = getelementptr %struct.mbx_24xx_entry, ptr %mbx, i32 0, i32 5, i32 27
  %87 = ptrtoint ptr %arrayidx3.27 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %arrayidx3.27, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @qla25xx_ctrlvp_iocb(ptr nocapture noundef readonly %sp, ptr nocapture noundef %vce) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vce to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 48, ptr %vce, align 4
  %handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %1 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %handle, align 8
  %handle1 = getelementptr inbounds %struct.vp_ctrl_entry_24xx, ptr %vce, i32 0, i32 4
  %3 = ptrtoint ptr %handle1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %handle1, align 4
  %entry_count = getelementptr inbounds %struct.vp_ctrl_entry_24xx, ptr %vce, i32 0, i32 1
  %4 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %entry_count, align 1
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %u, align 8
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %command = getelementptr inbounds %struct.vp_ctrl_entry_24xx, ptr %vce, i32 0, i32 7
  %8 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %command, align 4
  %vp_count = getelementptr inbounds %struct.vp_ctrl_entry_24xx, ptr %vce, i32 0, i32 8
  %9 = ptrtoint ptr %vp_count to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 256, ptr %vp_count, align 2
  %vp_index = getelementptr inbounds %struct.anon.100, ptr %u, i32 0, i32 1
  %10 = ptrtoint ptr %vp_index to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vp_index, align 2
  %conv = zext i16 %11 to i32
  %sub = add nsw i32 %conv, -1
  %div = sdiv i32 %sub, 8
  %and = and i32 %sub, 7
  %shl = shl nuw nsw i32 1, %and
  %arrayidx = getelementptr %struct.vp_ctrl_entry_24xx, ptr %vce, i32 0, i32 9, i32 %div
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = trunc i32 %shl to i8
  %conv11 = or i8 %13, %14
  store i8 %conv11, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @qla24xx_prlo_iocb(ptr nocapture noundef readonly %sp, ptr nocapture noundef writeonly %logio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %logio to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 82, ptr %logio, align 4
  %control_flags = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 7
  %1 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 6400, ptr %control_flags, align 4
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %2 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcport, align 4
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %loop_id, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %nport_handle = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 6
  %7 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %nport_handle, align 2
  %8 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcport, align 4
  %d_id = getelementptr inbounds %struct.fc_port, ptr %9, i32 0, i32 6
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %10 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %al_pa, align 2
  %port_id = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 10
  %12 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %port_id, align 4
  %13 = load ptr, ptr %fcport, align 4
  %d_id3 = getelementptr inbounds %struct.fc_port, ptr %13, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id3, i32 0, i32 1
  %14 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %area, align 1
  %arrayidx5 = getelementptr %struct.logio_entry_24xx, ptr %logio, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx5, align 1
  %17 = load ptr, ptr %fcport, align 4
  %d_id7 = getelementptr inbounds %struct.fc_port, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %d_id7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %d_id7, align 8
  %arrayidx9 = getelementptr %struct.logio_entry_24xx, ptr %logio, i32 0, i32 10, i32 2
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx9, align 2
  %21 = load ptr, ptr %fcport, align 4
  %vha = getelementptr inbounds %struct.fc_port, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vha, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %23, i32 0, i32 46
  %24 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vp_idx, align 8
  %conv = trunc i16 %25 to i8
  %vp_index = getelementptr inbounds %struct.logio_entry_24xx, ptr %logio, i32 0, i32 8
  %26 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %vp_index, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla24xx_sa_update_iocb(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla24xx_sa_replace_iocb(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_start_bidir(ptr noundef %sp, ptr noundef %vha, i32 noundef %tot_dsds) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %rsp_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %rsp_q_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsp_q_map, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %req1 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 54
  %6 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req1, align 8
  %marker_needed = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 18
  %8 = ptrtoint ptr %marker_needed to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %marker_needed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not = icmp eq i8 %9, 0
  br i1 %cmp.not, label %entry.do.body8_crit_edge, label %if.then

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body8

if.then:                                          ; preds = %entry
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 34
  %10 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_qpair, align 4
  %qp_lock_ptr.i = getelementptr inbounds %struct.qla_qpair, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qp_lock_ptr.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #14
  %req1.i = getelementptr inbounds %struct.qla_qpair, ptr %11, i32 0, i32 12
  %14 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req1.i, align 4
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i, align 4
  %call2.i183 = tail call ptr @__qla2x00_alloc_iocbs(ptr noundef %11, ptr noundef null) #14
  %cmp.i184 = icmp eq ptr %call2.i183, null
  br i1 %cmp.i184, label %__qla2x00_marker.exit, label %if.end

__qla2x00_marker.exit:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %21, i32 noundef 12326, ptr noundef nonnull @.str.32) #14
  %22 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qp_lock_ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %call2.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %call2.i183 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %call2.i183, align 4
  %modifier.i = getelementptr inbounds %struct.mrk_entry_t, ptr %call2.i183, i32 0, i32 6
  %25 = ptrtoint ptr %modifier.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %modifier.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !147
  tail call void @arm_heavy_mb() #14
  tail call void @qla2x00_start_iocbs(ptr noundef %vha, ptr noundef %15) #14
  %26 = ptrtoint ptr %qp_lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qp_lock_ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %call2.i) #14
  %28 = ptrtoint ptr %marker_needed to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %marker_needed, align 4
  br label %do.body8

do.body8:                                         ; preds = %if.end, %entry.do.body8_crit_edge
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 6
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #14
  %num_outstanding_cmds.i = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 18
  %29 = ptrtoint ptr %num_outstanding_cmds.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_outstanding_cmds.i, align 4
  %conv.i = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %30)
  %cmp17.i = icmp ugt i16 %30, 1
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %do.body8.queuing_error_crit_edge

do.body8.queuing_error_crit_edge:                 ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  br label %queuing_error

for.body.lr.ph.i:                                 ; preds = %do.body8
  %current_outstanding_cmd.i = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 17
  %31 = ptrtoint ptr %current_outstanding_cmd.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %current_outstanding_cmd.i, align 4
  %outstanding_cmds.i = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 16
  %33 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %outstanding_cmds.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc8.i = add nuw nsw i32 %index.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.queuing_error_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.queuing_error_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %queuing_error

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %handle.019.i = phi i32 [ %32, %for.body.lr.ph.i ], [ %spec.store.select.i, %for.cond.i.for.body.i_crit_edge ]
  %index.018.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc8.i, %for.cond.i.for.body.i_crit_edge ]
  %inc.i = add i32 %handle.019.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp4.i = icmp eq i32 %inc.i, %conv.i
  %spec.store.select.i = select i1 %cmp4.i, i32 1, i32 %inc.i
  %arrayidx.i = getelementptr ptr, ptr %34, i32 %spec.store.select.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %qla2xxx_get_next_handle.exit, label %for.cond.i

qla2xxx_get_next_handle.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp16 = icmp eq i32 %spec.store.select.i, 0
  br i1 %cmp16, label %qla2xxx_get_next_handle.exit.queuing_error_crit_edge, label %if.end19

qla2xxx_get_next_handle.exit.queuing_error_crit_edge: ; preds = %qla2xxx_get_next_handle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %queuing_error

if.end19:                                         ; preds = %qla2xxx_get_next_handle.exit
  %conv20 = trunc i32 %tot_dsds to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv20)
  %cmp.i = icmp ugt i16 %conv20, 1
  br i1 %cmp.i, label %if.then.i, label %if.end19.qla24xx_calc_iocbs.exit_crit_edge

if.end19.qla24xx_calc_iocbs.exit_crit_edge:       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla24xx_calc_iocbs.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = add i16 %conv20, -1
  %div12.i = udiv i16 %sub.i, 5
  %37 = mul i16 %div12.i, 5
  %rem34.i.decomposed = sub i16 %sub.i, %37
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem34.i.decomposed)
  %tobool.not.i174 = icmp eq i16 %rem34.i.decomposed, 0
  %spec.select.v.i = select i1 %tobool.not.i174, i16 1, i16 2
  %spec.select.i = add nuw nsw i16 %spec.select.v.i, %div12.i
  br label %qla24xx_calc_iocbs.exit

qla24xx_calc_iocbs.exit:                          ; preds = %if.then.i, %if.end19.qla24xx_calc_iocbs.exit_crit_edge
  %iocbs.0.i = phi i16 [ 1, %if.end19.qla24xx_calc_iocbs.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  %cnt22 = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 8
  %38 = ptrtoint ptr %cnt22 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %cnt22, align 4
  %conv23 = zext i16 %39 to i32
  %conv24 = zext i16 %iocbs.0.i to i32
  %add = add nuw nsw i32 %conv24, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv23)
  %cmp25 = icmp ugt i32 %add, %conv23
  br i1 %cmp25, label %if.then27, label %qla24xx_calc_iocbs.exit.if.end75_crit_edge

qla24xx_calc_iocbs.exit.if.end75_crit_edge:       ; preds = %qla24xx_calc_iocbs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.then27:                                        ; preds = %qla24xx_calc_iocbs.exit
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %40 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %isp_type, align 8
  %42 = and i32 %41, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  %out_ptr = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 7
  %44 = ptrtoint ptr %out_ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %out_ptr, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %45, align 2
  br label %if.end54

if.else:                                          ; preds = %if.then27
  %req_q_out = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 4
  %48 = ptrtoint ptr %req_q_out to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %req_q_out, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #14, !srcloc !155
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #14
  %conv50 = trunc i32 %51 to i16
  %call51 = tail call zeroext i1 @qla2x00_check_reg16_for_disconnect(ptr noundef %vha, i16 noundef zeroext %conv50) #14
  br i1 %call51, label %if.else.queuing_error_crit_edge, label %if.else.if.end54_crit_edge

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.else.queuing_error_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %queuing_error

if.end54:                                         ; preds = %if.else.if.end54_crit_edge, %if.then48
  %cnt.0 = phi i16 [ %47, %if.then48 ], [ %conv50, %if.else.if.end54_crit_edge ]
  %ring_index = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 5
  %52 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ring_index, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %cnt.0, i16 %53)
  %cmp57 = icmp ugt i16 %cnt.0, %53
  br i1 %cmp57, label %if.then59, label %if.else65

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i16 %cnt.0, %53
  br label %if.end75.sink.split

if.else65:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %length = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 9
  %54 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %length, align 2
  %sub70.neg = sub i16 %cnt.0, %53
  %sub71 = add i16 %sub70.neg, %55
  br label %if.end75.sink.split

if.end75.sink.split:                              ; preds = %if.else65, %if.then59
  %sub.sink = phi i16 [ %sub, %if.then59 ], [ %sub71, %if.else65 ]
  %56 = ptrtoint ptr %cnt22 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %sub.sink, ptr %cnt22, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end75.sink.split, %qla24xx_calc_iocbs.exit.if.end75_crit_edge
  %57 = ptrtoint ptr %cnt22 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %cnt22, align 4
  %conv77 = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv77)
  %cmp80 = icmp ugt i32 %add, %conv77
  br i1 %cmp80, label %if.end75.queuing_error_crit_edge, label %if.end83

if.end75.queuing_error_crit_edge:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %queuing_error

if.end83:                                         ; preds = %if.end75
  %ring_ptr = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 2
  %59 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ring_ptr, align 4
  %id = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 12
  %61 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %id, align 4
  %conv.i175 = zext i16 %62 to i32
  %shl.i = shl nuw i32 %conv.i175, 16
  %conv1.i = and i32 %spec.store.select.i, 65535
  %or.i = or i32 %shl.i, %conv1.i
  %handle86 = getelementptr inbounds %struct.cmd_bidir, ptr %60, i32 0, i32 4
  %63 = ptrtoint ptr %handle86 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or.i, ptr %handle86, align 4
  %add.ptr = getelementptr i32, ptr %60, i32 2
  %64 = call ptr @memset(ptr %add.ptr, i32 0, i32 56)
  %self_login_loop_id = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 15
  %65 = ptrtoint ptr %self_login_loop_id to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %self_login_loop_id, align 2
  %67 = tail call i16 @llvm.bswap.i16(i16 %66)
  %68 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %add.ptr, align 4
  %d_id = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 17
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %69 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %al_pa, align 2
  %port_id = getelementptr inbounds %struct.cmd_bidir, ptr %60, i32 0, i32 16
  %71 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %port_id, align 4
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 1
  %72 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %area, align 1
  %arrayidx90 = getelementptr %struct.cmd_bidir, ptr %60, i32 0, i32 16, i32 1
  %74 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx90, align 1
  %75 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %d_id, align 8
  %arrayidx93 = getelementptr %struct.cmd_bidir, ptr %60, i32 0, i32 16, i32 2
  %77 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx93, align 2
  %u.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %78 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %u.i, align 8
  %80 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 1962934272, ptr %60, align 1
  %request_payload.i = getelementptr inbounds %struct.bsg_job, ptr %79, i32 0, i32 7
  %sg_cnt.i = getelementptr inbounds %struct.bsg_job, ptr %79, i32 0, i32 7, i32 1
  %81 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sg_cnt.i, align 4
  %conv.i176 = trunc i32 %82 to i16
  %83 = tail call i16 @llvm.bswap.i16(i16 %conv.i176) #14
  %wr_dseg_count.i = getelementptr inbounds %struct.cmd_bidir, ptr %60, i32 0, i32 7
  %84 = ptrtoint ptr %wr_dseg_count.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %wr_dseg_count.i, align 4
  %sg_cnt1.i = getelementptr inbounds %struct.bsg_job, ptr %79, i32 0, i32 8, i32 1
  %85 = ptrtoint ptr %sg_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sg_cnt1.i, align 4
  %conv2.i = trunc i32 %86 to i16
  %87 = tail call i16 @llvm.bswap.i16(i16 %conv2.i) #14
  %rd_dseg_count.i = getelementptr inbounds %struct.cmd_bidir, ptr %60, i32 0, i32 8
  %88 = ptrtoint ptr %rd_dseg_count.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %rd_dseg_count.i, align 2
  %control_flags.i = getelementptr inbounds %struct.cmd_bidir, ptr %60, i32 0, i32 10
  %89 = ptrtoint ptr %control_flags.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 2816, ptr %control_flags.i, align 4
  %90 = ptrtoint ptr %request_payload.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %request_payload.i, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #14
  %wr_byte_count.i = getelementptr inbounds %struct.cmd_bidir, ptr %60, i32 0, i32 15
  %93 = ptrtoint ptr %wr_byte_count.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %wr_byte_count.i, align 4
  %rd_byte_count.i = getelementptr inbounds %struct.cmd_bidir, ptr %60, i32 0, i32 14
  %94 = ptrtoint ptr %rd_byte_count.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %92, ptr %rd_byte_count.i, align 4
  %call.i = tail call i32 @qla2x00_get_async_timeout(ptr noundef %vha) #14
  %95 = trunc i32 %call.i to i16
  %conv4.i = add i16 %95, 2
  %96 = tail call i16 @llvm.bswap.i16(i16 %conv4.i) #14
  %timeout.i = getelementptr inbounds %struct.cmd_bidir, ptr %60, i32 0, i32 6
  %97 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %timeout.i, align 2
  %conv5.i = zext i32 %91 to i64
  %bidi_stats.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 59
  %transfer_bytes.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 59, i32 1
  %98 = ptrtoint ptr %transfer_bytes.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %transfer_bytes.i, align 8
  %add6.i = add i64 %99, %conv5.i
  store i64 %add6.i, ptr %transfer_bytes.i, align 8
  %100 = ptrtoint ptr %bidi_stats.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %bidi_stats.i, align 8
  %inc.i177 = add i64 %101, 1
  store i64 %inc.i177, ptr %bidi_stats.i, align 8
  %output_bytes.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 58, i32 2
  %102 = ptrtoint ptr %output_bytes.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %output_bytes.i, align 8
  %add9.i = add i64 %103, %conv5.i
  store i64 %add9.i, ptr %output_bytes.i, align 8
  %output_requests.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 58, i32 4
  %104 = ptrtoint ptr %output_requests.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %output_requests.i, align 8
  %inc11.i = add i64 %105, 1
  store i64 %inc11.i, ptr %output_requests.i, align 8
  %fcp_dsd.i = getelementptr inbounds %struct.cmd_bidir, ptr %60, i32 0, i32 18
  %106 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sg_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp30.i = icmp sgt i32 %107, 0
  br i1 %cmp30.i, label %for.body.lr.ph.i178, label %if.end83.for.end.i_crit_edge

if.end83.for.end.i_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i178:                              ; preds = %if.end83
  %sg_list.i = getelementptr inbounds %struct.bsg_job, ptr %79, i32 0, i32 7, i32 2
  %108 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sg_list.i, align 4
  br label %for.body.i180

for.body.i180:                                    ; preds = %if.end.i.for.body.i180_crit_edge, %for.body.lr.ph.i178
  %entry_count.035.i = phi i32 [ 1, %for.body.lr.ph.i178 ], [ %entry_count.1.i, %if.end.i.for.body.i180_crit_edge ]
  %index.034.i = phi i32 [ 0, %for.body.lr.ph.i178 ], [ %inc21.i, %if.end.i.for.body.i180_crit_edge ]
  %sg.033.i = phi ptr [ %109, %for.body.lr.ph.i178 ], [ %call22.i, %if.end.i.for.body.i180_crit_edge ]
  %avail_dsds.032.i = phi i16 [ 1, %for.body.lr.ph.i178 ], [ %dec.i, %if.end.i.for.body.i180_crit_edge ]
  %cur_dsd.031.i = phi ptr [ %fcp_dsd.i, %for.body.lr.ph.i178 ], [ %incdec.ptr.i2.i, %if.end.i.for.body.i180_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %avail_dsds.032.i)
  %cmp17.i179 = icmp eq i16 %avail_dsds.032.i, 0
  br i1 %cmp17.i179, label %if.then.i181, label %for.body.i180.if.end.i_crit_edge

for.body.i180.if.end.i_crit_edge:                 ; preds = %for.body.i180
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i181:                                     ; preds = %for.body.i180
  %110 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %req1, align 8
  %ring_index.i.i = getelementptr inbounds %struct.req_que, ptr %111, i32 0, i32 5
  %112 = ptrtoint ptr %ring_index.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %ring_index.i.i, align 4
  %inc.i.i = add i16 %113, 1
  store i16 %inc.i.i, ptr %ring_index.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.req_que, ptr %111, i32 0, i32 9
  %114 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %length.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i, i16 %115)
  %cmp.i.i = icmp eq i16 %inc.i.i, %115
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #16
  %116 = ptrtoint ptr %ring_index.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %ring_index.i.i, align 4
  %ring.i.i = getelementptr inbounds %struct.req_que, ptr %111, i32 0, i32 1
  %117 = ptrtoint ptr %ring.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ring.i.i, align 4
  %ring_ptr.i.i = getelementptr inbounds %struct.req_que, ptr %111, i32 0, i32 2
  %119 = ptrtoint ptr %ring_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %ring_ptr.i.i, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit.i

if.else.i.i:                                      ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #16
  %ring_ptr5.i.i = getelementptr inbounds %struct.req_que, ptr %111, i32 0, i32 2
  %120 = ptrtoint ptr %ring_ptr5.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ring_ptr5.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.cmd_a64_entry_t, ptr %121, i32 1
  store ptr %incdec.ptr.i.i, ptr %ring_ptr5.i.i, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit.i

qla2x00_prep_cont_type1_iocb.exit.i:              ; preds = %if.else.i.i, %if.then.i.i
  %ring_ptr6.i.i = getelementptr inbounds %struct.req_que, ptr %111, i32 0, i32 2
  %122 = ptrtoint ptr %ring_ptr6.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ring_ptr6.i.i, align 4
  %124 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hw, align 4
  %isp_type.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %125, i32 0, i32 54
  %126 = ptrtoint ptr %isp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %isp_type.i.i, align 8
  %and7.i.i = and i32 %127, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool.not.i.i = icmp eq i32 %and7.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 167772160, i32 50331648
  %128 = ptrtoint ptr %123 to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 %cond.i.i, ptr %123, align 1
  %dsd.i = getelementptr inbounds %struct.cont_a64_entry_t, ptr %123, i32 0, i32 4
  %inc20.i = add i32 %entry_count.035.i, 1
  br label %if.end.i

if.end.i:                                         ; preds = %qla2x00_prep_cont_type1_iocb.exit.i, %for.body.i180.if.end.i_crit_edge
  %cur_dsd.1.i = phi ptr [ %dsd.i, %qla2x00_prep_cont_type1_iocb.exit.i ], [ %cur_dsd.031.i, %for.body.i180.if.end.i_crit_edge ]
  %avail_dsds.1.i = phi i16 [ 5, %qla2x00_prep_cont_type1_iocb.exit.i ], [ %avail_dsds.032.i, %for.body.i180.if.end.i_crit_edge ]
  %entry_count.1.i = phi i32 [ %inc20.i, %qla2x00_prep_cont_type1_iocb.exit.i ], [ %entry_count.035.i, %for.body.i180.if.end.i_crit_edge ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.033.i, i32 0, i32 3
  %129 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dma_address.i.i, align 4
  %conv.i.i = zext i32 %130 to i64
  %131 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i) #14
  %132 = ptrtoint ptr %cur_dsd.1.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 8)
  store i64 %131, ptr %cur_dsd.1.i, align 1
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.033.i, i32 0, i32 4
  %133 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dma_length.i.i, align 4
  %length.i1.i = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.1.i, i32 0, i32 1
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #14
  %136 = ptrtoint ptr %length.i1.i to i32
  call void @__asan_storeN_noabort(i32 %136, i32 4)
  store i32 %135, ptr %length.i1.i, align 1
  %incdec.ptr.i2.i = getelementptr %struct.dsd64, ptr %cur_dsd.1.i, i32 1
  %dec.i = add i16 %avail_dsds.1.i, -1
  %inc21.i = add nuw nsw i32 %index.034.i, 1
  %call22.i = tail call ptr @sg_next(ptr noundef %sg.033.i) #14
  %137 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %sg_cnt.i, align 4
  %cmp.i182 = icmp slt i32 %inc21.i, %138
  br i1 %cmp.i182, label %if.end.i.for.body.i180_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end.i.for.body.i180_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i180

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %if.end83.for.end.i_crit_edge
  %cur_dsd.0.lcssa.i = phi ptr [ %fcp_dsd.i, %if.end83.for.end.i_crit_edge ], [ %incdec.ptr.i2.i, %if.end.i.for.end.i_crit_edge ]
  %avail_dsds.0.lcssa.i = phi i16 [ 1, %if.end83.for.end.i_crit_edge ], [ %dec.i, %if.end.i.for.end.i_crit_edge ]
  %entry_count.0.lcssa.i = phi i32 [ 1, %if.end83.for.end.i_crit_edge ], [ %entry_count.1.i, %if.end.i.for.end.i_crit_edge ]
  %139 = ptrtoint ptr %sg_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %sg_cnt1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp2838.i = icmp sgt i32 %140, 0
  br i1 %cmp2838.i, label %for.body30.lr.ph.i, label %for.end.i.qla25xx_build_bidir_iocb.exit_crit_edge

for.end.i.qla25xx_build_bidir_iocb.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla25xx_build_bidir_iocb.exit

for.body30.lr.ph.i:                               ; preds = %for.end.i
  %sg_list24.i = getelementptr inbounds %struct.bsg_job, ptr %79, i32 0, i32 8, i32 2
  %141 = ptrtoint ptr %sg_list24.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %sg_list24.i, align 4
  br label %for.body30.i

for.body30.i:                                     ; preds = %if.end41.i.for.body30.i_crit_edge, %for.body30.lr.ph.i
  %entry_count.243.i = phi i32 [ %entry_count.0.lcssa.i, %for.body30.lr.ph.i ], [ %entry_count.3.i, %if.end41.i.for.body30.i_crit_edge ]
  %index.142.i = phi i32 [ 0, %for.body30.lr.ph.i ], [ %inc44.i, %if.end41.i.for.body30.i_crit_edge ]
  %sg.141.i = phi ptr [ %142, %for.body30.lr.ph.i ], [ %call45.i, %if.end41.i.for.body30.i_crit_edge ]
  %avail_dsds.240.i = phi i16 [ %avail_dsds.0.lcssa.i, %for.body30.lr.ph.i ], [ %dec42.i, %if.end41.i.for.body30.i_crit_edge ]
  %cur_dsd.239.i = phi ptr [ %cur_dsd.0.lcssa.i, %for.body30.lr.ph.i ], [ %incdec.ptr.i24.i, %if.end41.i.for.body30.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %avail_dsds.240.i)
  %cmp33.i = icmp eq i16 %avail_dsds.240.i, 0
  br i1 %cmp33.i, label %if.then35.i, label %for.body30.i.if.end41.i_crit_edge

for.body30.i.if.end41.i_crit_edge:                ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.i

if.then35.i:                                      ; preds = %for.body30.i
  %143 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %req1, align 8
  %ring_index.i3.i = getelementptr inbounds %struct.req_que, ptr %144, i32 0, i32 5
  %145 = ptrtoint ptr %ring_index.i3.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %ring_index.i3.i, align 4
  %inc.i4.i = add i16 %146, 1
  store i16 %inc.i4.i, ptr %ring_index.i3.i, align 4
  %length.i5.i = getelementptr inbounds %struct.req_que, ptr %144, i32 0, i32 9
  %147 = ptrtoint ptr %length.i5.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %length.i5.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i4.i, i16 %148)
  %cmp.i6.i = icmp eq i16 %inc.i4.i, %148
  br i1 %cmp.i6.i, label %if.then.i9.i, label %if.else.i12.i

if.then.i9.i:                                     ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #16
  %149 = ptrtoint ptr %ring_index.i3.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 0, ptr %ring_index.i3.i, align 4
  %ring.i7.i = getelementptr inbounds %struct.req_que, ptr %144, i32 0, i32 1
  %150 = ptrtoint ptr %ring.i7.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ring.i7.i, align 4
  %ring_ptr.i8.i = getelementptr inbounds %struct.req_que, ptr %144, i32 0, i32 2
  %152 = ptrtoint ptr %ring_ptr.i8.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %151, ptr %ring_ptr.i8.i, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit19.i

if.else.i12.i:                                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #16
  %ring_ptr5.i10.i = getelementptr inbounds %struct.req_que, ptr %144, i32 0, i32 2
  %153 = ptrtoint ptr %ring_ptr5.i10.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ring_ptr5.i10.i, align 4
  %incdec.ptr.i11.i = getelementptr %struct.cmd_a64_entry_t, ptr %154, i32 1
  store ptr %incdec.ptr.i11.i, ptr %ring_ptr5.i10.i, align 4
  br label %qla2x00_prep_cont_type1_iocb.exit19.i

qla2x00_prep_cont_type1_iocb.exit19.i:            ; preds = %if.else.i12.i, %if.then.i9.i
  %ring_ptr6.i13.i = getelementptr inbounds %struct.req_que, ptr %144, i32 0, i32 2
  %155 = ptrtoint ptr %ring_ptr6.i13.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ring_ptr6.i13.i, align 4
  %157 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hw, align 4
  %isp_type.i15.i = getelementptr inbounds %struct.qla_hw_data, ptr %158, i32 0, i32 54
  %159 = ptrtoint ptr %isp_type.i15.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %isp_type.i15.i, align 8
  %and7.i16.i = and i32 %160, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and7.i16.i, 0
  %cond.i18.i = select i1 %tobool.not.i17.i, i32 167772160, i32 50331648
  %161 = ptrtoint ptr %156 to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 %cond.i18.i, ptr %156, align 1
  %dsd38.i = getelementptr inbounds %struct.cont_a64_entry_t, ptr %156, i32 0, i32 4
  %inc40.i = add i32 %entry_count.243.i, 1
  br label %if.end41.i

if.end41.i:                                       ; preds = %qla2x00_prep_cont_type1_iocb.exit19.i, %for.body30.i.if.end41.i_crit_edge
  %cur_dsd.3.i = phi ptr [ %dsd38.i, %qla2x00_prep_cont_type1_iocb.exit19.i ], [ %cur_dsd.239.i, %for.body30.i.if.end41.i_crit_edge ]
  %avail_dsds.3.i = phi i16 [ 5, %qla2x00_prep_cont_type1_iocb.exit19.i ], [ %avail_dsds.240.i, %for.body30.i.if.end41.i_crit_edge ]
  %entry_count.3.i = phi i32 [ %inc40.i, %qla2x00_prep_cont_type1_iocb.exit19.i ], [ %entry_count.243.i, %for.body30.i.if.end41.i_crit_edge ]
  %dma_address.i20.i = getelementptr inbounds %struct.scatterlist, ptr %sg.141.i, i32 0, i32 3
  %162 = ptrtoint ptr %dma_address.i20.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %dma_address.i20.i, align 4
  %conv.i21.i = zext i32 %163 to i64
  %164 = tail call i64 @llvm.bswap.i64(i64 %conv.i21.i) #14
  %165 = ptrtoint ptr %cur_dsd.3.i to i32
  call void @__asan_storeN_noabort(i32 %165, i32 8)
  store i64 %164, ptr %cur_dsd.3.i, align 1
  %dma_length.i22.i = getelementptr inbounds %struct.scatterlist, ptr %sg.141.i, i32 0, i32 4
  %166 = ptrtoint ptr %dma_length.i22.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %dma_length.i22.i, align 4
  %length.i23.i = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.3.i, i32 0, i32 1
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #14
  %169 = ptrtoint ptr %length.i23.i to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 %168, ptr %length.i23.i, align 1
  %incdec.ptr.i24.i = getelementptr %struct.dsd64, ptr %cur_dsd.3.i, i32 1
  %dec42.i = add i16 %avail_dsds.3.i, -1
  %inc44.i = add nuw nsw i32 %index.142.i, 1
  %call45.i = tail call ptr @sg_next(ptr noundef %sg.141.i) #14
  %170 = ptrtoint ptr %sg_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %sg_cnt1.i, align 4
  %cmp28.i = icmp slt i32 %inc44.i, %171
  br i1 %cmp28.i, label %if.end41.i.for.body30.i_crit_edge, label %if.end41.i.qla25xx_build_bidir_iocb.exit_crit_edge

if.end41.i.qla25xx_build_bidir_iocb.exit_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qla25xx_build_bidir_iocb.exit

if.end41.i.for.body30.i_crit_edge:                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body30.i

qla25xx_build_bidir_iocb.exit:                    ; preds = %if.end41.i.qla25xx_build_bidir_iocb.exit_crit_edge, %for.end.i.qla25xx_build_bidir_iocb.exit_crit_edge
  %entry_count.2.lcssa.i = phi i32 [ %entry_count.0.lcssa.i, %for.end.i.qla25xx_build_bidir_iocb.exit_crit_edge ], [ %entry_count.3.i, %if.end41.i.qla25xx_build_bidir_iocb.exit_crit_edge ]
  %conv47.i = trunc i32 %entry_count.2.lcssa.i to i8
  %entry_count48.i = getelementptr inbounds %struct.cmd_bidir, ptr %60, i32 0, i32 1
  %172 = ptrtoint ptr %entry_count48.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv47.i, ptr %entry_count48.i, align 1
  %id94 = getelementptr inbounds %struct.rsp_que, ptr %5, i32 0, i32 11
  %173 = ptrtoint ptr %id94 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %id94, align 2
  %conv95 = trunc i16 %174 to i8
  %entry_status = getelementptr inbounds %struct.cmd_bidir, ptr %60, i32 0, i32 3
  %175 = ptrtoint ptr %entry_status to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %conv95, ptr %entry_status, align 1
  %176 = ptrtoint ptr %current_outstanding_cmd.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %spec.store.select.i, ptr %current_outstanding_cmd.i, align 4
  %177 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %outstanding_cmds.i, align 4
  %arrayidx96 = getelementptr ptr, ptr %178, i32 %spec.store.select.i
  %179 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %sp, ptr %arrayidx96, align 4
  %handle97 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %180 = ptrtoint ptr %handle97 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %spec.store.select.i, ptr %handle97, align 8
  %181 = ptrtoint ptr %cnt22 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %cnt22, align 4
  %sub101 = sub i16 %182, %iocbs.0.i
  store i16 %sub101, ptr %cnt22, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !188
  tail call void @arm_heavy_mb() #14
  tail call void @qla2x00_start_iocbs(ptr noundef %vha, ptr noundef %7)
  br label %queuing_error

queuing_error:                                    ; preds = %qla25xx_build_bidir_iocb.exit, %if.end75.queuing_error_crit_edge, %if.else.queuing_error_crit_edge, %qla2xxx_get_next_handle.exit.queuing_error_crit_edge, %for.cond.i.queuing_error_crit_edge, %do.body8.queuing_error_crit_edge
  %rval.0 = phi i32 [ 0, %qla25xx_build_bidir_iocb.exit ], [ 0, %if.else.queuing_error_crit_edge ], [ 2, %qla2xxx_get_next_handle.exit.queuing_error_crit_edge ], [ 2, %if.end75.queuing_error_crit_edge ], [ 2, %do.body8.queuing_error_crit_edge ], [ 2, %for.cond.i.queuing_error_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call12) #14
  br label %cleanup

cleanup:                                          ; preds = %queuing_error, %__qla2x00_marker.exit
  %retval.0 = phi i32 [ %rval.0, %queuing_error ], [ 11, %__qla2x00_marker.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_async_abort_cmd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_rel_done_warning(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_rel_free_warning(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla_handle_els_plogi_done(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qlt_find_sess_invalidate_other(ptr noundef, i64 noundef, [1 x i32], i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_clear_loop_id(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlt_schedule_sess_for_deletion(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_post_gnl_work(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_wake_dpc(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla2x00_alloc_work(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_post_work(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla_nvme_abort_set_option(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla24xx_prep_ms_iocb(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_get_async_timeout(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 1051, i32 5}
!2 = !{ptr @__func__.qla24xx_walk_and_build_prot_sglist, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 1052, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 1064, i32 6}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 1074, i32 9}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 1083, i32 10}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 1114, i32 8}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 1130, i32 11}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 1142, i32 11}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 1183, i32 7}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 1204, i32 9}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 1228, i32 10}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 1266, i32 7}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 1282, i32 10}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2328, i32 8}
!28 = !{ptr @qla2x00_init_timer.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2565, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2650, i32 42}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2659, i32 4}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2669, i32 33}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2673, i32 13}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2702, i32 51}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2714, i32 6}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2994, i32 9}
!45 = !{ptr @__func__.qla24xx_els_dcmd2_iocb, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2994, i32 42}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 3027, i32 33}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 3043, i32 51}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 3054, i32 7}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 3342, i32 8}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 3375, i32 8}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 3390, i32 9}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 3400, i32 9}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 3427, i32 8}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 3436, i32 8}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 3451, i32 9}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 3799, i32 7}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 520, i32 7}
!71 = !{ptr @init_completion.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../include/linux/completion.h", i32 87, i32 2}
!73 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2599, i32 6}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2607, i32 7}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2619, i32 7}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2630, i32 6}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qla2xxx/qla_inline.h", i32 123, i32 8}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2677, i32 2}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2678, i32 2}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2679, i32 2}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2680, i32 2}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2681, i32 2}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2682, i32 2}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2683, i32 2}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2684, i32 2}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2685, i32 2}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2686, i32 2}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2687, i32 2}
!106 = !{ptr @port_dstate_str, !107, !"port_dstate_str", i1 false, i1 false}
!107 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2676, i32 27}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2800, i32 6}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2806, i32 6}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2807, i32 29}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2807, i32 44}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2849, i32 6}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2885, i32 10}
!120 = !{ptr @__func__.qla2x00_els_dcmd2_sp_done, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2886, i32 10}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2891, i32 10}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2912, i32 9}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2925, i32 10}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2934, i32 9}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2948, i32 8}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2766, i32 7}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 2781, i32 10}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/qla2xxx/qla_iocb.c", i32 3712, i32 7}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{i64 2156902910}
!148 = !{!"branch_weights", i32 1, i32 2000}
!149 = !{i64 5231941}
!150 = !{i64 2156897890}
!151 = !{i64 2156290551}
!152 = !{i64 5231741}
!153 = !{i64 2156291087}
!154 = !{i64 5232361}
!155 = !{i64 5232779}
!156 = !{i64 2156907841, i64 2156908337, i64 2156907878, i64 2156907934, i64 2156907968, i64 2156907992, i64 2156908033, i64 2156908054, i64 2156908082, i64 2156908116}
!157 = !{i64 2156914064, i64 2156914560, i64 2156914101, i64 2156914157, i64 2156914191, i64 2156914215, i64 2156914256, i64 2156914277, i64 2156914305, i64 2156914339}
!158 = !{i64 2156916202, i64 2156916699, i64 2156916239, i64 2156916295, i64 2156916329, i64 2156916353, i64 2156916394, i64 2156916415, i64 2156916443, i64 2156916477}
!159 = !{!"branch_weights", i32 2000, i32 1}
!160 = !{i64 2154612878, i64 2154613370, i64 2154612915, i64 2154612971, i64 2154613005, i64 2154613029, i64 2154613070, i64 2154613091, i64 2154613119, i64 2154613153}
!161 = !{i64 2156923908, i64 2156924405, i64 2156923945, i64 2156924001, i64 2156924035, i64 2156924059, i64 2156924100, i64 2156924121, i64 2156924149, i64 2156924183}
!162 = !{i64 2156933345}
!163 = !{i64 2156935495}
!164 = !{!"auto-init"}
!165 = !{i32 0, i32 33}
!166 = !{i64 2156928039, i64 2156928536, i64 2156928076, i64 2156928132, i64 2156928166, i64 2156928190, i64 2156928231, i64 2156928252, i64 2156928280, i64 2156928314}
!167 = !{i64 2156937476}
!168 = !{i64 2156939724}
!169 = !{i64 2156288643}
!170 = !{i64 2156290139}
!171 = !{i64 5232164}
!172 = !{i64 2156288040}
!173 = !{i64 2156866181}
!174 = !{i64 2156866410}
!175 = !{i64 2156866252}
!176 = !{i64 2148462244, i64 2148462270, i64 2148462299, i64 2148462333, i64 2148462364, i64 2148462387}
!177 = !{i64 2156874550}
!178 = !{i64 2148464709, i64 2148464735, i64 2148464764, i64 2148464798, i64 2148464829, i64 2148464852}
!179 = !{i64 2156873653}
!180 = !{i64 2156974964}
!181 = !{i64 2148564067}
!182 = !{i64 945980, i64 946004, i64 946025, i64 946042, i64 946059}
!183 = !{i64 2148564293}
!184 = !{i64 2156963488}
!185 = !{i64 2156963646}
!186 = !{i64 2156963794}
!187 = !{i64 2156964310}
!188 = !{i64 2156977650}
