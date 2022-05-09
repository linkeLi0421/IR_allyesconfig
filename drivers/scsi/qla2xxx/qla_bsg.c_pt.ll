; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla2xxx/qla_bsg.c_pt.bc'
source_filename = "../drivers/scsi/qla2xxx/qla_bsg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.srb = type { i8, [3 x i8], %struct.iocb_resource, %struct.kref, ptr, %struct.wait_queue_head, ptr, ptr, i8, i32, i16, i16, ptr, i32, ptr, ptr, %struct.list_head, i32, i32, i32, i32, ptr, %union.anon.155, %struct.anon.168, ptr, ptr, ptr }
%struct.iocb_resource = type { i8, i8, i16 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.155 = type { %struct.srb_iocb }
%struct.srb_iocb = type { %union.anon.156, %struct.timer_list, ptr }
%union.anon.156 = type { %struct.anon.159, [112 x i8] }
%struct.anon.159 = type { i64, i32, i32, %struct.completion, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.168 = type { i8, %struct.anon.169, %struct.anon.170 }
%struct.anon.169 = type { i32, ptr, i32 }
%struct.anon.170 = type { i32, ptr, i32 }
%struct.bsg_job = type { ptr, %struct.kref, i32, ptr, ptr, i32, i32, %struct.bsg_buffer, %struct.bsg_buffer, i32, i32, ptr, ptr, ptr }
%struct.bsg_buffer = type { i32, i32, ptr }
%struct.fc_bsg_reply = type { i32, i32, %union.anon.171 }
%union.anon.171 = type { %struct.fc_bsg_ctels_reply }
%struct.fc_bsg_ctels_reply = type { i32, %struct.anon.172 }
%struct.anon.172 = type { i8, i8, i8, i8 }
%struct.scsi_qla_host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.work_struct, ptr, i32, [16 x i8], %struct.anon.128, %struct.atomic_t, i32, i32, i32, i32, i16, i16, %struct.fc_port, %union.port_id_t, i8, i16, i8, %struct.atomic_t, i8, i32, %struct.timer_list, [8 x i8], [8 x i8], [8 x i8], [8 x i8], ptr, %struct.completion, i16, i16, [6 x i8], %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i16, ptr, i32, %struct.atomic_t, i16, i16, ptr, %struct.scsi_qlt_host, ptr, i32, i32, %struct.fc_host_statistics, %struct.qla_statistics, %struct.bidi_statistics, %struct.atomic_t, %struct.qla8044_reset_template, i16, i16, i16, i16, i16, i16, ptr, %struct.purex_list, %struct.purex_item, %struct.name_list_extended, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, [8 x i8], [8 x i8], i16, [4 x i16], %struct.list_head, %struct.fab_scan, i8, i32, i64, i64, i64, i64, i64, i64, %struct.edif_dbell, %struct.pur_core }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.128 = type { i16, [2 x i8] }
%struct.fc_port = type { %struct.list_head, ptr, [3 x i8], i8, [8 x i8], [8 x i8], %union.port_id_t, i16, i16, %struct.completion, i32, i32, ptr, i8, i32, ptr, %struct.list_head, %struct.spinlock, %struct.kref, ptr, i32, %struct.list_head, %struct.work_struct, %struct.work_struct, i64, i32, [2 x ptr], i16, i16, i16, i8, [8 x i8], i16, i32, %struct.atomic_t, i32, i32, ptr, ptr, i32, i8, i8, i8, i32, i32, i16, ptr, i32, ptr, %struct.ct_sns_desc, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, [64 x i8], i8, i8, i16, i16, ptr, i64, i64, i64, %struct.anon.127 }
%struct.ct_sns_desc = type { ptr, i32 }
%struct.anon.127 = type { i16, i32, i32, i64, i64, i8, i8, i16, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock }
%union.port_id_t = type { i24 }
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
%struct.purex_item = type { %struct.list_head, ptr, ptr, %struct.atomic_t, i16, %struct.anon.154 }
%struct.anon.154 = type { [64 x i8] }
%struct.name_list_extended = type { ptr, i32, %struct.list_head, i32, i8 }
%struct.fab_scan = type { ptr, i32, i16, i32, %struct.delayed_work }
%struct.edif_dbell = type { i32, %struct.spinlock, %struct.list_head, %struct.completion }
%struct.pur_core = type { i32, %struct.spinlock, %struct.list_head }
%struct.fc_bsg_request = type <{ i32, %union.anon.173 }>
%union.anon.173 = type { %struct.fc_bsg_host_vendor, [8 x i8] }
%struct.fc_bsg_host_vendor = type { i64, [0 x i32] }
%struct.qla_mt_iocb_rqst_fx00 = type { i32, i16, i8, i8, i32, i32, i32, i32, i16, i16, i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.79 = type { ptr }
%struct.qla_hw_data = type { ptr, ptr, %struct.anon.129, i16, i16, [108 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i16, i8, ptr, ptr, ptr, [8 x i32], [8 x i32], [8 x i32], i8, i8, i8, i8, ptr, ptr, i16, i16, i8, i8, i8, %struct.atomic_t, i8, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i16, i16, ptr, i16, i16, ptr, i16, i8, i8, i16, i32, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i64, i8, i8, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, %struct.fc_els_flogi, ptr, [32 x i16], [32 x i32], [8 x i32], ptr, ptr, i32, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, i32, %struct.mutex, i16, i16, i16, i16, i16, [2 x i16], i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, [16 x i16], [4 x i8], [4 x i16], [3 x i8], [3 x i8], i32, [3 x i8], [3 x i8], [2 x %struct.fwdt], ptr, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, [8 x i16], i64, i64, %struct.mutex, i32, i16, [4 x i16], [17 x i8], [80 x i8], [17 x i8], ptr, i32, i32, i32, i32, %struct.mutex, [2 x i8], [2 x i8], [16 x i8], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.141, i8, i16, i8, i16, i16, ptr, %struct.list_head, [8 x i32], i16, i16, i16, i32, ptr, ptr, ptr, %struct.work_struct, %struct.qlfc_fw, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rwlock_t, i16, i32, ptr, %struct.qla82xx_legacy_intr_set, i16, i16, %struct.list_head, i8, i32, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mr_data_fx00, i32, [36 x i8], %struct.qlt_hw_data, i32, i32, i16, i16, ptr, %struct.anon.151, i64, i64, i64, i64, i64, %struct.atomic_t, i16, i8, %struct.atomic_t, i16, %struct.qla_hw_data_stat, i32, ptr, %struct.btree_head32, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.els_reject, i8 }
%struct.anon.129 = type { i56 }
%struct.fc_els_flogi = type <{ i8, [3 x i8], %struct.fc_els_csp, i64, i64, [4 x %struct.fc_els_cssp], [16 x i8] }>
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.137, i32 }
%union.anon.137 = type { %struct.anon.139 }
%struct.anon.139 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.fwdt = type { ptr, i32, i32 }
%struct.anon.141 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlfc_fw = type { ptr, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qla82xx_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.mr_data_fx00 = type { [64 x i8], [32 x i8], [16 x i8], [16 x i8], [16 x i8], [32 x i8], %struct.fc_port, i8, i8, i8, i32, i16, i8, i16, i32, i32, i8, i8, i8 }
%struct.qlt_hw_data = type { i8, i32, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr, i32, i16, i32, i32, i32, [2 x i8], [2 x i8], [8 x i8], ptr, ptr, ptr, %struct.list_head, i32, i32, i32, %struct.spinlock, i32, %struct.spinlock, i32, [60 x i8], %struct.spinlock, [84 x i8] }
%struct.anon.151 = type { %struct.anon.152, %struct.anon.153 }
%struct.anon.152 = type { %struct.list_head, i32 }
%struct.anon.153 = type { %struct.list_head, i32 }
%struct.qla_hw_data_stat = type { i32, i32 }
%struct.btree_head32 = type { %struct.btree_head }
%struct.btree_head = type { ptr, ptr, i32 }
%struct.els_reject = type { ptr, i32, i16 }
%struct.qla_qpair = type { %struct.spinlock, %struct.atomic_t, i32, ptr, ptr, i32, i8, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.qla_counters, %struct.list_head, %struct.list_head, i16, i32, i64, %struct.qla_tgt_counters, i16, [94 x i8], %struct.qla_fw_resources, i32, i32, i32, [108 x i8] }
%struct.qla_counters = type { i64, i64, i64, i64 }
%struct.qla_tgt_counters = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_fw_resources = type { i16, i16, i16, i16 }
%struct.qla_fcp_prio_cfg = type { [4 x i8], i16, i16, i16, i16, i16, i8, i8, [1023 x %struct.qla_fcp_prio_entry], [16 x i8] }
%struct.qla_fcp_prio_entry = type { i16, i8, i8, i32, i32, i16, i16, [8 x i8], [8 x i8] }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.fc_bsg_host_els = type { i8, [3 x i8] }
%struct.anon.2 = type { i8, i8, i8, i8 }
%struct.fc_bsg_host_ct = type { i8, [3 x i8], i32, i32, i32 }
%struct.ql_vnd_mng_host_port_resp = type { i32 }
%struct.ql_vnd_host_stats_resp = type <{ i32, %struct.ql_vnd_stats }>
%struct.ql_vnd_stats = type { i64, i64, [0 x %struct.ql_vnd_stat_entry] }
%struct.ql_vnd_stat_entry = type { i32, i32, i64 }
%struct.ql_vnd_mng_host_stats_resp = type { i32 }
%struct.qla_active_regions = type { i8, i8, i8, i8, i8, [32 x i8] }
%struct.active_regions = type { i8, %struct.anon.181 }
%struct.anon.181 = type { i8, i8, i8, i8 }
%struct.qla_bbcr_data = type <{ i8, i8, i8, i8, i8, i16, [9 x i8] }>
%struct.qla_flash_update_caps = type { i64, i32, [20 x i8] }
%struct.qla_serdes_reg_ex = type <{ i16, i32, i32 }>
%struct.qla_serdes_reg = type { i16, i16, i16 }
%struct.msg_echo_lb = type { i32, i32, i16, i16, i16, i32, i32 }
%struct.verify_chip_entry_84xx = type { i8, i8, i8, i8, i32, i16, i16, i16, [3 x i16], i32, i32, [3 x i32], i32, i32, i32, %struct.dsd64 }
%struct.dsd64 = type <{ i64, i32 }>
%struct.access_chip_84xx = type { i8, i8, i8, i8, i32, i16, i16, i16, [3 x i16], i32, i32, i32, [3 x i32], i32, i32, %struct.dsd64 }
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qla_image_version_list = type { i32, [0 x %struct.qla_image_version] }
%struct.qla_image_version = type { %struct.qla_field_address, %struct.qla_field_info }
%struct.qla_field_address = type { i16, i16, i16 }
%struct.qla_field_info = type { [36 x i8] }
%struct.qla_status_reg = type { %struct.qla_field_address, i8, [7 x i8] }
%struct.qla_i2c_access = type { i16, i16, i16, i16, [64 x i8] }
%struct.qla_dport_diag = type <{ i16, [16 x i32], [62 x i8] }>
%struct.ql_vnd_mng_host_stats_param = type { i32, i32 }
%struct.ql_vnd_tgt_stats_param = type { i32, i32 }
%struct.req_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i32, i16, i32, i32, ptr, i16, [64 x i8] }
%struct.qla_mbx_passthru = type { [2 x i16], [32 x i16], [32 x i16], [16 x i32] }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: sp hdl %x, result=%x bsg ptr %p\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.qla2x00_bsg_job_done = private unnamed_addr constant [21 x i8] c"qla2x00_bsg_job_done\00", align 1
@qla2x00_bsg_sp_free.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&sp->fcport->free_work)\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No FCP Priority config data.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HQOS\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid FCP Priority data header. bcode=0x%x.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No valid FCP Priority data entries.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Valid FCP priority data. num entries = %d.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"BSG: ISP abort active/needed -- cmd=%d.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Entered %s msgcode=0x%x. bsg ptr %px\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.qla24xx_bsg_request = private unnamed_addr constant [20 x i8] c"qla24xx_bsg_request\00", align 1
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported BSG request.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s done with return %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s CMD timeout. bsg ptr %p.\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.qla24xx_bsg_timeout = private unnamed_addr constant [20 x i8] c"qla24xx_bsg_timeout\00", align 1
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mbx abort_command failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mbx abort_command success.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SRB not found to abort.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"req_data_len invalid.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"req_data memory allocation failure.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FC_BSG_RPT_ELS\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FC_BSG_HST_ELS_NOLOGIN\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Host not online.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ELS passthru not supported for ISP23xx based adapters.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Multiple SG's are not supported for ELS requests, request_sg_cnt=%x reply_sg_cnt=%x.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to login port %06X for ELS passthru.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [124 x i8], [36 x i8] } { [124 x i8] c"dma mapping resulted in different sg counts, request_sg_cnt: %x dma_request_sg_cnt:%x reply_sg_cnt:%x dma_reply_sg_cnt:%x.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bsg_els_rpt\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bsg_els_hst\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"bsg rqst type: %s els type: %x - loop-id=%x portid=%-2x%02x%02x.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qla2x00_start_sp failed = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FC_BSG_HST_CT\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dma_map_sg return %d for request\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dma_map_sg return %d for reply\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"request_sg_cnt: %x dma_request_sg_cnt: %x reply_sg_cnt:%x dma_reply_sg_cnt: %x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Host is not online.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown loop id: %x.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to allocate fcport.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla2x00_get_sp failed.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bsg_ct\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"bsg rqst type: %s else type: %x - loop-id=%x portid=%02x%02x%02x.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qla2x00_start_sp failed=%d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s FC_BSG_HST_VENDOR cmd[0]=0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.qla2x00_process_vendor_specific = private unnamed_addr constant [32 x i8] c"qla2x00_process_vendor_specific\00", align 1
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dma_map_sg returned %d for request.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dma_map_sg returned %d for reply.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [127 x i8], [33 x i8] } { [127 x i8] c"dma mapping resulted in different sg counts, request_sg_cnt: %x dma_request_sg_cnt: %x reply_sg_cnt: %x dma_reply_sg_cnt: %x.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dma alloc failed for req_data.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dma alloc failed for rsp_data.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FC_BSG_HST_VENDOR_ECHO_DIAG\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BSG request type: %s.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Get port config failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Loopback operation already in progress.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"elreq.options=%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FC_BSG_HST_VENDOR_LOOPBACK\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MBX command error, Aborting ISP.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MPI reset failed.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Vendor request %s failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Vendor request %s completed.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"new_config[0]=%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set port config failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DCBX completion not received.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Bad status in IDC Completion AEN\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DCBX completion received.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set port config failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Port up completion not received.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Port up completion received.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Not 84xx, exiting.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Vendor request 84xx reset failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Vendor request 84xx reset completed.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"DMA mapping resulted in different sg counts, request_sg_cnt: %x dma_request_sg_cnt: %x.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA alloc failed for fw_buf.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DMA alloc failed for fw buffer.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Vendor request 84xx updatefw failed.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Vendor request 84xx updatefw completed.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"DMA mapping resulted in different sg counts, reply_sg_cnt: %x dma_reply_sg_cnt: %x.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA alloc failed for mgmt_b.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dma_map_sg returned %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Vendor request 84xx mgmt failed.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Vendor request 84xx mgmt completed.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iiDMA not supported.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid destination type.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to find port.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Port is not online.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Remote port not logged in flags = 0x%x.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"iiDMA cmd failed for %8phN -- %04x %x %04x %04x.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Unable to allocate memory for fcp prio config data (%x).\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"start %d > optrom_size %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"optrom_state %d.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"is_update=%d.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid start region 0x%x/0x%x.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Read: Unable to allocate memory for optrom retrieval (%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"This adapter is not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Host is not online\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cable is unplugged...\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Host is not connected to the switch\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Host operating mode is not P2p\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to login port %06X for bidirectional IOCB\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [127 x i8], [33 x i8] } { [127 x i8] c"Dma mapping resulted in different sg counts [request_sg_cnt: %x dma_request_sg_cnt: %x reply_sg_cnt: %x dma_reply_sg_cnt: %x]\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"req_data_len != rsp_data_len\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Alloc SRB structure failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FC_BSG_HST_FX_MGMT\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bsg_fx_mgmt\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bsg rqst type: %s fx_mgmt_type: %x id=%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown serdes cmd %x.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate memory for stats.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate memory for dport.\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.103 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(%lu): FW=%u BCFG=%u VPDNVR=%u NPIV01=%u NPIV02=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.qla2x00_get_flash_image_status = private unnamed_addr constant [31 x i8] c"qla2x00_get_flash_image_status\00", align 1
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid action.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"target %d not found.\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 4, i64 5, i64 11]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 36, i64 38]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 32, i64 1073741825, i64 2147483651, i64 2147483652, i64 2147483903]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 8, i64 250, i64 252]
@__sancov_gen_cov_switch_values.109 = internal global [32 x i64] [i64 30, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 30, i64 31, i64 35, i64 36, i64 37, i64 38, i64 43]
@__sancov_gen_cov_switch_values.110 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.114 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.119 = internal global [6 x i64] [i64 4, i64 16, i64 4, i64 5, i64 11, i64 26]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 16, i64 241, i64 242]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 3, i64 2, i64 4]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 3, i64 2, i64 4]
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 29, i32 6 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 78, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 103, i32 7 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 107, i32 20 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 110, i32 7 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 127, i32 7 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 132, i32 7 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2923, i32 7 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2936, i32 6 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2954, i32 36 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2959, i32 6 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2975, i32 35 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2996, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 3000, i32 10 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 3010, i32 35 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 3031, i32 36 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 3037, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 289, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 294, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 301, i32 36 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 309, i32 7 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 318, i32 7 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 333, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 385, i32 7 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 405, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 405, i32 20 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 411, i32 6 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 419, i32 7 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 466, i32 16 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 473, i32 7 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 482, i32 7 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 490, i32 7 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 499, i32 7 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 516, i32 7 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 529, i32 7 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 545, i32 7 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 551, i32 13 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 558, i32 6 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 567, i32 7 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2791, i32 35 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 767, i32 7 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 777, i32 7 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 785, i32 7 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 798, i32 7 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 807, i32 7 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 830, i32 10 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 832, i32 7 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 842, i32 9 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 849, i32 9 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 856, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 874, i32 11 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 884, i32 9 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 893, i32 11 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 933, i32 7 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 940, i32 7 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 674, i32 7 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 682, i32 7 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 703, i32 7 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 717, i32 8 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 722, i32 8 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 614, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 638, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 644, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 987, i32 36 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 997, i32 7 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1002, i32 7 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1045, i32 7 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1057, i32 7 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1068, i32 7 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1095, i32 7 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1100, i32 7 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1171, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1184, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1213, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1275, i32 7 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1281, i32 7 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1332, i32 36 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1339, i32 7 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1357, i32 7 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1363, i32 7 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1369, i32 7 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1382, i32 7 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 224, i32 9 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1421, i32 7 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1427, i32 7 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1432, i32 35 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1445, i32 8 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1466, i32 7 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1820, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1835, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1843, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1851, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1859, i32 7 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1875, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1911, i32 7 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1926, i32 7 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1934, i32 7 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1991, i32 16 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2064, i32 13 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2071, i32 6 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2129, i32 7 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2354, i32 7 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2398, i32 7 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2447, i32 6 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2509, i32 36 }
@___asan_gen_.441 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.442 = private constant [34 x i8] c"../drivers/scsi/qla2xxx/qla_bsg.c\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2702, i32 36 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @.str, ptr @qla2x00_bsg_sp_free.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla2x00_bsg_sp_free.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 127, i32 160, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 127, i32 160, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_bsg_job_done(ptr noundef %sp, i32 noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %reply = getelementptr inbounds %struct.bsg_job, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reply, align 4
  %vha = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %4 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vha, align 8
  %handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %5, i32 noundef 28681, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qla2x00_bsg_job_done, i32 noundef %7, i32 noundef %res, ptr noundef %1) #9
  %free = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %8 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free, align 8
  tail call void %9(ptr noundef %sp) #9
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %res, ptr %3, align 4
  %reply_payload_rcv_len = getelementptr inbounds %struct.fc_bsg_reply, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reply_payload_rcv_len, align 4
  tail call void @bsg_job_done(ptr noundef %1, i32 noundef %res, i32 noundef %12) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dbg(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bsg_job_done(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_bsg_sp_free(ptr noundef %sp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %u, align 8
  %type = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 11
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %7)
  %cmp = icmp eq i16 %7, 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %request = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request, align 4
  %arrayidx = getelementptr %struct.fc_bsg_request, ptr %9, i32 0, i32 1, i32 1, i32 4
  %flags = getelementptr inbounds %struct.qla_mt_iocb_rqst_fx00, ptr %arrayidx, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 2
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sg_cnt, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %16, i32 noundef %18, i32 noundef 1, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 2
  %21 = and i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool8.not = icmp eq i8 %21, 0
  br i1 %tobool8.not, label %if.end.if.end41_crit_edge, label %if.then9

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 128
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %sg_list12 = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 8, i32 2
  %24 = ptrtoint ptr %sg_list12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sg_list12, align 4
  %sg_cnt14 = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %sg_cnt14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sg_cnt14, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev11, ptr noundef %25, i32 noundef %27, i32 noundef 2, i32 noundef 0) #9
  br label %if.end41

if.else:                                          ; preds = %entry
  %remap = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 23
  %28 = ptrtoint ptr %remap to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %remap, align 8, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool16.not = icmp eq i8 %29, 0
  br i1 %tobool16.not, label %if.else27, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %purex_dma_pool = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 300
  %30 = ptrtoint ptr %purex_dma_pool to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %purex_dma_pool, align 4
  %rsp = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 23, i32 2
  %buf = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 23, i32 2, i32 1
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf, align 4
  %34 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rsp, align 8
  tail call void @dma_pool_free(ptr noundef %31, ptr noundef %33, i32 noundef %35) #9
  %36 = ptrtoint ptr %purex_dma_pool to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %purex_dma_pool, align 4
  %req = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 23, i32 1
  %buf23 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 23, i32 1, i32 1
  %38 = ptrtoint ptr %buf23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buf23, align 4
  %40 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %req, align 4
  tail call void @dma_pool_free(ptr noundef %37, ptr noundef %39, i32 noundef %41) #9
  br label %if.end41

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 128
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %sg_list31 = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 7, i32 2
  %44 = ptrtoint ptr %sg_list31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sg_list31, align 4
  %sg_cnt33 = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %sg_cnt33 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sg_cnt33, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev29, ptr noundef %45, i32 noundef %47, i32 noundef 1, i32 noundef 0) #9
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 128
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %sg_list37 = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 8, i32 2
  %50 = ptrtoint ptr %sg_list37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sg_list37, align 4
  %sg_cnt39 = getelementptr inbounds %struct.bsg_job, ptr %5, i32 0, i32 8, i32 1
  %52 = ptrtoint ptr %sg_cnt39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sg_cnt39, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev35, ptr noundef %51, i32 noundef %53, i32 noundef 2, i32 noundef 0) #9
  br label %if.end41

if.end41:                                         ; preds = %if.else27, %if.then17, %if.then9, %if.end.if.end41_crit_edge
  %54 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %type, align 2
  %56 = zext i16 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i16 %55, label %if.end41.if.end67_crit_edge [
    i16 5, label %if.end41.do.body_crit_edge
    i16 11, label %if.end41.do.body_crit_edge100
    i16 4, label %if.end41.do.body_crit_edge101
  ]

if.end41.do.body_crit_edge101:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end41.do.body_crit_edge100:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end41.do.body_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end41.if.end67_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

do.body:                                          ; preds = %if.end41.do.body_crit_edge, %if.end41.do.body_crit_edge100, %if.end41.do.body_crit_edge101
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %57 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fcport, align 4
  %free_work = getelementptr inbounds %struct.fc_port, ptr %58, i32 0, i32 22
  tail call void @__init_work(ptr noundef %free_work, i32 noundef 0) #9
  %59 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fcport, align 4
  %free_work57 = getelementptr inbounds %struct.fc_port, ptr %60, i32 0, i32 22
  %61 = ptrtoint ptr %free_work57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -64, ptr %free_work57, align 8
  %62 = load ptr, ptr %fcport, align 4
  %lockdep_map = getelementptr inbounds %struct.fc_port, ptr %62, i32 0, i32 22, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @qla2x00_bsg_sp_free.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %63 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fcport, align 4
  %entry62 = getelementptr inbounds %struct.fc_port, ptr %64, i32 0, i32 22, i32 1
  %65 = ptrtoint ptr %entry62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %entry62, ptr %entry62, align 4
  %prev.i = getelementptr inbounds %struct.fc_port, ptr %64, i32 0, i32 22, i32 1, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %entry62, ptr %prev.i, align 4
  %67 = load ptr, ptr %fcport, align 4
  %func = getelementptr inbounds %struct.fc_port, ptr %67, i32 0, i32 22, i32 2
  %68 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @qla2xxx_free_fcport_work, ptr %func, align 4
  %wq = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 235
  %69 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wq, align 16
  %71 = load ptr, ptr %fcport, align 4
  %free_work66 = getelementptr inbounds %struct.fc_port, ptr %71, i32 0, i32 22
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %70, ptr noundef %free_work66) #9
  br label %if.end67

if.end67:                                         ; preds = %do.body, %if.end41.if.end67_crit_edge
  %72 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vha, align 8
  %vref_count.i = getelementptr inbounds %struct.scsi_qla_host, ptr %73, i32 0, i32 60
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %vref_count.i, i32 1, i32 3, i32 1) #9
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count.i, ptr %vref_count.i, i32 1, ptr elementtype(i32) %vref_count.i) #9, !srcloc !233
  %75 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vha, align 8
  %vref_waitq.i = getelementptr inbounds %struct.scsi_qla_host, ptr %76, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %qpair.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 14
  %77 = ptrtoint ptr %qpair.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %qpair.i, align 8
  store ptr null, ptr %qpair.i, align 8
  %done.i.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 24
  %79 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @qla2xxx_rel_done_warning, ptr %done.i.i, align 4
  %free.i.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %80 = ptrtoint ptr %free.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @qla2xxx_rel_free_warning, ptr %free.i.i, align 8
  %srb_mempool.i.i = getelementptr inbounds %struct.qla_qpair, ptr %78, i32 0, i32 9
  %81 = ptrtoint ptr %srb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %srb_mempool.i.i, align 8
  tail call void @mempool_free(ptr noundef %sp, ptr noundef %82) #9
  %ref_count.i.i = getelementptr inbounds %struct.qla_qpair, ptr %78, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #9
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #9, !srcloc !233
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2xxx_free_fcport_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -192
  tail call void @qla2x00_free_fcport(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla2x00_rel_sp(ptr noundef %sp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %vha = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha, align 8
  %vref_count = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 60
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #9, !srcloc !233
  %3 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vha, align 8
  %vref_waitq = getelementptr inbounds %struct.scsi_qla_host, ptr %4, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
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
  tail call void @mempool_free(ptr noundef %sp, ptr noundef %10) #9
  %ref_count.i = getelementptr inbounds %struct.qla_qpair, ptr %6, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #9, !srcloc !233
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_fcp_prio_cfg_valid(ptr noundef %vha, ptr nocapture noundef readonly %pri_cfg, i8 noundef zeroext %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pri_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pri_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28753, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %pri_cfg, ptr noundef nonnull dereferenceable(4) @.str.3, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28754, ptr noundef nonnull @.str.4, i32 noundef %1) #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %flag)
  %cmp3.not = icmp eq i8 %flag, 1
  br i1 %cmp3.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %num_entries = getelementptr inbounds %struct.qla_fcp_prio_cfg, ptr %pri_cfg, i32 0, i32 4
  %2 = ptrtoint ptr %num_entries to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_entries, align 2
  %conv8 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp938.not = icmp eq i16 %3, 0
  br i1 %cmp938.not, label %if.end6.if.then18_crit_edge, label %for.body.preheader

if.end6.if.then18_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

for.body.preheader:                               ; preds = %if.end6
  %entry7 = getelementptr inbounds %struct.qla_fcp_prio_cfg, ptr %pri_cfg, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %pri_entry.041 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %entry7, %for.body.preheader ]
  %num_valid.040 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.039 = phi i32 [ %inc15, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %4 = ptrtoint ptr %pri_entry.041 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pri_entry.041, align 4
  %6 = lshr i16 %5, 1
  %.lobit = and i16 %6, 1
  %7 = zext i16 %.lobit to i32
  %spec.select = add i32 %num_valid.040, %7
  %incdec.ptr = getelementptr %struct.qla_fcp_prio_entry, ptr %pri_entry.041, i32 1
  %inc15 = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc15, %conv8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp16 = icmp eq i32 %spec.select, 0
  br i1 %cmp16, label %for.end.if.then18_crit_edge, label %if.else

for.end.if.then18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.then18:                                        ; preds = %for.end.if.then18_crit_edge, %if.end6.if.then18_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28755, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28756, ptr noundef nonnull @.str.6, i32 noundef %spec.select) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then18, %if.end2.cleanup_crit_edge, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then1 ], [ 1, %if.end2.cleanup_crit_edge ], [ 0, %if.then18 ], [ 1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_bsg_request(ptr noundef %bsg_job) local_unnamed_addr #0 align 64 {
entry:
  %nextlid.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %request = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 3
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request, align 4
  %reply = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %2 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reply, align 4
  %reply_payload_rcv_len = getelementptr inbounds %struct.fc_bsg_reply, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %reply_payload_rcv_len, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741825, i32 %6)
  %cmp = icmp eq i32 %6, 1073741825
  %7 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bsg_job, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @scsi_is_fc_rport(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.fc_bsg_to_rport.exit_crit_edge, label %if.then.i

if.then.fc_bsg_to_rport.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_rport.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bsg_job, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 -240
  br label %fc_bsg_to_rport.exit

fc_bsg_to_rport.exit:                             ; preds = %if.then.i, %if.then.fc_bsg_to_rport.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.then.fc_bsg_to_rport.exit_crit_edge ]
  %parent = getelementptr inbounds %struct.fc_rport, ptr %retval.0.i, i32 0, i32 16, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %fc_bsg_to_rport.exit
  %dev.addr.0.i = phi ptr [ %12, %fc_bsg_to_rport.exit ], [ %14, %while.body.i.while.cond.i_crit_edge ]
  %call.i62 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i64 = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i66 = tail call i32 @scsi_is_host_device(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  %15 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i67, label %if.end.i, label %if.else.while.cond.i.i_crit_edge

if.else.while.cond.i.i_crit_edge:                 ; preds = %if.else
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.else.while.cond.i.i_crit_edge
  %dev.addr.0.i.i = phi ptr [ %18, %while.body.i.i.while.cond.i.i_crit_edge ], [ %16, %if.else.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.if.end_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

while.body.i.i.if.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %if.end

if.end.i:                                         ; preds = %if.else
  %parent.i68 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %parent.i68 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i68, align 8
  br label %while.cond.i11.i

while.cond.i11.i:                                 ; preds = %while.body.i14.i.while.cond.i11.i_crit_edge, %if.end.i
  %dev.addr.0.i8.i = phi ptr [ %20, %if.end.i ], [ %22, %while.body.i14.i.while.cond.i11.i_crit_edge ]
  %call.i9.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool.not.i10.i, label %while.body.i14.i, label %while.end.i16.i

while.body.i14.i:                                 ; preds = %while.cond.i11.i
  %parent.i12.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i, i32 0, i32 1
  %21 = ptrtoint ptr %parent.i12.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i12.i, align 8
  %tobool1.not.i13.i = icmp eq ptr %22, null
  br i1 %tobool1.not.i13.i, label %while.body.i14.i.if.end_crit_edge, label %while.body.i14.i.while.cond.i11.i_crit_edge

while.body.i14.i.while.cond.i11.i_crit_edge:      ; preds = %while.body.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i

while.body.i14.i.if.end_crit_edge:                ; preds = %while.body.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.end.i16.i:                                  ; preds = %while.cond.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i = getelementptr i8, ptr %dev.addr.0.i8.i, i32 -584
  br label %if.end

if.end:                                           ; preds = %while.end.i16.i, %while.body.i14.i.if.end_crit_edge, %while.end.i.i, %while.body.i.i.if.end_crit_edge, %while.end.i, %while.body.i.if.end_crit_edge
  %retval.0.i65.pn = phi ptr [ %add.ptr.i64, %while.end.i ], [ %add.ptr.i.i, %while.end.i.i ], [ %add.ptr.i15.i, %while.end.i16.i ], [ null, %while.body.i.if.end_crit_edge ], [ null, %while.body.i14.i.if.end_crit_edge ], [ null, %while.body.i.i.if.end_crit_edge ]
  %vha.0 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i65.pn, i32 0, i32 53
  %vendor_cmd = getelementptr inbounds %struct.fc_bsg_request, ptr %1, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %vendor_cmd to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %vendor_cmd, align 1
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %24, label %if.end11 [
    i32 38, label %if.end.skip_chip_chk_crit_edge
    i32 36, label %if.end.skip_chip_chk_crit_edge211
  ]

if.end.skip_chip_chk_crit_edge211:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_chip_chk

if.end.skip_chip_chk_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_chip_chk

if.end11:                                         ; preds = %if.end
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha.0, i32 0, i32 52
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %27, i32 0, i32 2
  %28 = getelementptr inbounds i32, ptr %flags, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load = load volatile i32, ptr %28, align 4
  %30 = and i32 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7, ptr %3, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end11
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %27, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44, i32 8
  %34 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %38 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i71 = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i71, label %lor.lhs.false.i.i, label %if.end13.if.then16_crit_edge

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

lor.lhs.false.i.i:                                ; preds = %if.end13
  %39 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %41 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool4.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.if.then16_crit_edge

lor.lhs.false.i.i.if.then16_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %42 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %44 = and i32 %43, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool8.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.if.then16_crit_edge

lor.lhs.false5.i.i.if.then16_crit_edge:           ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i65.pn, i32 1, i32 5, i32 5, i32 2
  %45 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %47 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool12.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.if.then16_crit_edge

lor.lhs.false9.i.i.if.then16_crit_edge:           ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %48 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %50 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i72 = icmp eq i32 %50, 0
  br i1 %tobool.not.i72, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.if.then16_crit_edge

qla2x00_reset_active.exit.i.if.then16_crit_edge:  ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %51 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load.i = load volatile i32, ptr %28, align 4
  %52 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool15.not.not = icmp eq i32 %52, 0
  br i1 %tobool15.not.not, label %qla2x00_chip_is_down.exit.if.then16_crit_edge, label %if.end19

qla2x00_chip_is_down.exit.if.then16_crit_edge:    ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %qla2x00_chip_is_down.exit.if.then16_crit_edge, %qla2x00_reset_active.exit.i.if.then16_crit_edge, %lor.lhs.false9.i.i.if.then16_crit_edge, %lor.lhs.false5.i.i.if.then16_crit_edge, %lor.lhs.false.i.i.if.then16_crit_edge, %if.end13.if.then16_crit_edge
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %1, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha.0, i32 noundef 28831, ptr noundef nonnull @.str.7, i32 noundef %54) #9
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 458752, ptr %3, align 4
  br label %cleanup

if.end19:                                         ; preds = %qla2x00_chip_is_down.exit
  %pci_flags = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i65.pn, i32 1, i32 5, i32 5, i32 3
  %56 = ptrtoint ptr %pci_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %pci_flags, align 4
  %58 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool21.not = icmp eq i32 %58, 0
  br i1 %tobool21.not, label %if.end19.skip_chip_chk_crit_edge, label %if.then22

if.end19.skip_chip_chk_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_chip_chk

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 458752, ptr %3, align 4
  br label %cleanup

skip_chip_chk:                                    ; preds = %if.end19.skip_chip_chk_crit_edge, %if.end.skip_chip_chk_crit_edge, %if.end.skip_chip_chk_crit_edge211
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %1, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8421376, ptr noundef %vha.0, i32 noundef 28672, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.qla24xx_bsg_request, i32 noundef %61, ptr noundef %bsg_job) #9
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %1, align 1
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %63, label %sw.default [
    i32 1073741825, label %skip_chip_chk.sw.bb_crit_edge
    i32 -2147483645, label %skip_chip_chk.sw.bb_crit_edge212
    i32 -2147483644, label %sw.bb28
    i32 -2147483393, label %sw.bb30
  ]

skip_chip_chk.sw.bb_crit_edge212:                 ; preds = %skip_chip_chk
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

skip_chip_chk.sw.bb_crit_edge:                    ; preds = %skip_chip_chk
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %skip_chip_chk.sw.bb_crit_edge, %skip_chip_chk.sw.bb_crit_edge212
  %65 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %request, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nextlid.i) #9
  %67 = ptrtoint ptr %nextlid.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %nextlid.i, align 2
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %66, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741825, i32 %69)
  %cmp.i = icmp eq i32 %69, 1073741825
  %70 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bsg_job, align 4
  br i1 %cmp.i, label %if.then.i75, label %if.else.i

if.then.i75:                                      ; preds = %sw.bb
  %call.i.i73 = tail call i32 @scsi_is_fc_rport(ptr noundef %71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73)
  %tobool.not.i.i74 = icmp eq i32 %call.i.i73, 0
  br i1 %tobool.not.i.i74, label %if.then.i75.fc_bsg_to_rport.exit.i_crit_edge, label %if.then.i.i

if.then.i75.fc_bsg_to_rport.exit.i_crit_edge:     ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_rport.exit.i

if.then.i.i:                                      ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bsg_job, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %73, i32 -240
  br label %fc_bsg_to_rport.exit.i

fc_bsg_to_rport.exit.i:                           ; preds = %if.then.i.i, %if.then.i75.fc_bsg_to_rport.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i76, %if.then.i.i ], [ null, %if.then.i75.fc_bsg_to_rport.exit.i_crit_edge ]
  %dd_data.i = getelementptr inbounds %struct.fc_rport, ptr %retval.0.i.i, i32 0, i32 11
  %74 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dd_data.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %parent.i77 = getelementptr inbounds %struct.fc_rport, ptr %retval.0.i.i, i32 0, i32 16, i32 1
  %78 = ptrtoint ptr %parent.i77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %parent.i77, align 8
  br label %while.cond.i.i79

while.cond.i.i79:                                 ; preds = %while.body.i.i82.while.cond.i.i79_crit_edge, %fc_bsg_to_rport.exit.i
  %dev.addr.0.i.i78 = phi ptr [ %79, %fc_bsg_to_rport.exit.i ], [ %81, %while.body.i.i82.while.cond.i.i79_crit_edge ]
  %call.i251.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251.i)
  %tobool.not.i252.i = icmp eq i32 %call.i251.i, 0
  br i1 %tobool.not.i252.i, label %while.body.i.i82, label %while.end.i.i83

while.body.i.i82:                                 ; preds = %while.cond.i.i79
  %parent.i.i80 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i78, i32 0, i32 1
  %80 = ptrtoint ptr %parent.i.i80 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %parent.i.i80, align 8
  %tobool1.not.i.i81 = icmp eq ptr %81, null
  br i1 %tobool1.not.i.i81, label %while.body.i.i82.dev_to_shost.exit.i_crit_edge, label %while.body.i.i82.while.cond.i.i79_crit_edge

while.body.i.i82.while.cond.i.i79_crit_edge:      ; preds = %while.body.i.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i79

while.body.i.i82.dev_to_shost.exit.i_crit_edge:   ; preds = %while.body.i.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_to_shost.exit.i

while.end.i.i83:                                  ; preds = %while.cond.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i253.i = getelementptr i8, ptr %dev.addr.0.i.i78, i32 -584
  br label %dev_to_shost.exit.i

dev_to_shost.exit.i:                              ; preds = %while.end.i.i83, %while.body.i.i82.dev_to_shost.exit.i_crit_edge
  %retval.0.i254.i = phi ptr [ %add.ptr.i253.i, %while.end.i.i83 ], [ null, %while.body.i.i82.dev_to_shost.exit.i_crit_edge ]
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i254.i, i32 0, i32 53
  br label %if.end10.i

if.else.i:                                        ; preds = %sw.bb
  %call.i255.i = tail call i32 @scsi_is_host_device(ptr noundef %71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255.i)
  %tobool.not.i256.i = icmp eq i32 %call.i255.i, 0
  %82 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i256.i, label %if.end.i.i, label %if.else.i.while.cond.i.i.i_crit_edge

if.else.i.while.cond.i.i.i_crit_edge:             ; preds = %if.else.i
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %if.else.i.while.cond.i.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %85, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ %83, %if.else.i.while.cond.i.i.i_crit_edge ]
  %call.i.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i, label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %parent.i.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %parent.i.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %85, null
  br i1 %tobool1.not.i.i.i, label %while.body.i.i.i.fc_bsg_to_shost.exit.i_crit_edge, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i

while.body.i.i.i.fc_bsg_to_shost.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %dev.addr.0.i.i.i, i32 -584
  br label %fc_bsg_to_shost.exit.i

if.end.i.i:                                       ; preds = %if.else.i
  %parent.i257.i = getelementptr inbounds %struct.device, ptr %83, i32 0, i32 1
  %86 = ptrtoint ptr %parent.i257.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %parent.i257.i, align 8
  br label %while.cond.i11.i.i

while.cond.i11.i.i:                               ; preds = %while.body.i14.i.i.while.cond.i11.i.i_crit_edge, %if.end.i.i
  %dev.addr.0.i8.i.i = phi ptr [ %87, %if.end.i.i ], [ %89, %while.body.i14.i.i.while.cond.i11.i.i_crit_edge ]
  %call.i9.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i)
  %tobool.not.i10.i.i = icmp eq i32 %call.i9.i.i, 0
  br i1 %tobool.not.i10.i.i, label %while.body.i14.i.i, label %while.end.i16.i.i

while.body.i14.i.i:                               ; preds = %while.cond.i11.i.i
  %parent.i12.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %parent.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %parent.i12.i.i, align 8
  %tobool1.not.i13.i.i = icmp eq ptr %89, null
  br i1 %tobool1.not.i13.i.i, label %while.body.i14.i.i.fc_bsg_to_shost.exit.i_crit_edge, label %while.body.i14.i.i.while.cond.i11.i.i_crit_edge

while.body.i14.i.i.while.cond.i11.i.i_crit_edge:  ; preds = %while.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i

while.body.i14.i.i.fc_bsg_to_shost.exit.i_crit_edge: ; preds = %while.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i

while.end.i16.i.i:                                ; preds = %while.cond.i11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i = getelementptr i8, ptr %dev.addr.0.i8.i.i, i32 -584
  br label %fc_bsg_to_shost.exit.i

fc_bsg_to_shost.exit.i:                           ; preds = %while.end.i16.i.i, %while.body.i14.i.i.fc_bsg_to_shost.exit.i_crit_edge, %while.end.i.i.i, %while.body.i.i.i.fc_bsg_to_shost.exit.i_crit_edge
  %retval.0.i258.i = phi ptr [ %add.ptr.i.i.i, %while.end.i.i.i ], [ %add.ptr.i15.i.i, %while.end.i16.i.i ], [ null, %while.body.i14.i.i.fc_bsg_to_shost.exit.i_crit_edge ], [ null, %while.body.i.i.i.fc_bsg_to_shost.exit.i_crit_edge ]
  %hostdata.i259.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i258.i, i32 0, i32 53
  %rqst_data.i = getelementptr inbounds %struct.fc_bsg_request, ptr %66, i32 0, i32 1
  %90 = ptrtoint ptr %rqst_data.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %rqst_data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %91)
  %cmp6.i = icmp eq i8 %91, -112
  br i1 %cmp6.i, label %if.then8.i, label %fc_bsg_to_shost.exit.i.if.end10.i_crit_edge

fc_bsg_to_shost.exit.i.if.end10.i_crit_edge:      ; preds = %fc_bsg_to_shost.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then8.i:                                       ; preds = %fc_bsg_to_shost.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i = tail call i32 @qla_edif_process_els(ptr noundef %hostdata.i259.i, ptr noundef %bsg_job) #9
  br label %qla2x00_process_els.exit

if.end10.i:                                       ; preds = %fc_bsg_to_shost.exit.i.if.end10.i_crit_edge, %dev_to_shost.exit.i
  %fcport.0.i = phi ptr [ %77, %dev_to_shost.exit.i ], [ null, %fc_bsg_to_shost.exit.i.if.end10.i_crit_edge ]
  %vha.0.i = phi ptr [ %hostdata.i.i, %dev_to_shost.exit.i ], [ %hostdata.i259.i, %fc_bsg_to_shost.exit.i.if.end10.i_crit_edge ]
  %type.0.i = phi ptr [ @.str.17, %dev_to_shost.exit.i ], [ @.str.18, %fc_bsg_to_shost.exit.i.if.end10.i_crit_edge ]
  %ha.0.in.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha.0.i, i32 0, i32 52
  %92 = ptrtoint ptr %ha.0.in.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %ha.0.i = load ptr, ptr %ha.0.in.i, align 4
  %flags.i84 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha.0.i, i32 0, i32 8
  %93 = ptrtoint ptr %flags.i84 to i32
  call void @__asan_load4_noabort(i32 %93)
  %bf.load.i85 = load volatile i32, ptr %flags.i84, align 8
  %94 = and i32 %bf.load.i85, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i86 = icmp eq i32 %94, 0
  br i1 %tobool.not.i86, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha.0.i, i32 noundef 28677, ptr noundef nonnull @.str.19) #9
  br label %qla2x00_process_els.exit

if.end12.i:                                       ; preds = %if.end10.i
  %device_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha.0.i, i32 0, i32 55
  %95 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %device_type.i, align 4
  %and.i = and i32 %96, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end15.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha.0.i, i32 noundef 28673, ptr noundef nonnull @.str.20) #9
  br label %qla2x00_process_els.exit

if.end15.i:                                       ; preds = %if.end12.i
  %sg_cnt.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %97 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sg_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp16.i = icmp sgt i32 %98, 1
  br i1 %cmp16.i, label %if.end15.i.if.then21.i_crit_edge, label %lor.lhs.false.i

if.end15.i.if.then21.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %if.end15.i
  %sg_cnt18.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %99 = ptrtoint ptr %sg_cnt18.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sg_cnt18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp19.i = icmp sgt i32 %100, 1
  br i1 %cmp19.i, label %lor.lhs.false.i.if.then21.i_crit_edge, label %if.end26.i

lor.lhs.false.i.if.then21.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false.i.if.then21.i_crit_edge, %if.end15.i.if.then21.i_crit_edge
  %sg_cnt25.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %101 = ptrtoint ptr %sg_cnt25.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sg_cnt25.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha.0.i, i32 noundef 28674, ptr noundef nonnull @.str.21, i32 noundef %98, i32 noundef %102) #9
  br label %qla2x00_process_els.exit

if.end26.i:                                       ; preds = %lor.lhs.false.i
  %103 = ptrtoint ptr %66 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %66, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741825, i32 %104)
  %cmp28.i = icmp eq i32 %104, 1073741825
  br i1 %cmp28.i, label %if.then30.i, label %if.else37.i

if.then30.i:                                      ; preds = %if.end26.i
  %call31.i = call i32 @qla2x00_fabric_login(ptr noundef %vha.0.i, ptr noundef %fcport.0.i, ptr noundef nonnull %nextlid.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.then30.i.if.end59.i_crit_edge, label %if.then33.i

if.then30.i.if.end59.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

if.then33.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  %d_id.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0.i, i32 0, i32 6
  %105 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %bf.load34.i = load i32, ptr %d_id.i, align 8
  %bf.lshr35.i = lshr i32 %bf.load34.i, 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha.0.i, i32 noundef 28675, ptr noundef nonnull @.str.22, i32 noundef %bf.lshr35.i) #9
  br label %qla2x00_process_els.exit

if.else37.i:                                      ; preds = %if.end26.i
  %call38.i = tail call ptr @qla2x00_alloc_fcport(ptr noundef %vha.0.i, i32 noundef 3264) #9
  %tobool39.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not.i, label %if.else37.i.qla2x00_process_els.exit_crit_edge, label %if.end41.i

if.else37.i.qla2x00_process_els.exit_crit_edge:   ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_process_els.exit

if.end41.i:                                       ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #11
  %vha42.i = getelementptr inbounds %struct.fc_port, ptr %call38.i, i32 0, i32 1
  %106 = ptrtoint ptr %vha42.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %vha.0.i, ptr %vha42.i, align 8
  %rqst_data43.i = getelementptr inbounds %struct.fc_bsg_request, ptr %66, i32 0, i32 1
  %port_id.i = getelementptr inbounds %struct.fc_bsg_host_els, ptr %rqst_data43.i, i32 0, i32 1
  %107 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %port_id.i, align 1
  %d_id44.i = getelementptr inbounds %struct.fc_port, ptr %call38.i, i32 0, i32 6
  %al_pa.i = getelementptr inbounds %struct.anon.2, ptr %d_id44.i, i32 0, i32 2
  %109 = ptrtoint ptr %al_pa.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %al_pa.i, align 2
  %arrayidx47.i = getelementptr %struct.fc_bsg_host_els, ptr %rqst_data43.i, i32 0, i32 1, i32 1
  %110 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx47.i, align 1
  %area.i = getelementptr inbounds %struct.anon.2, ptr %d_id44.i, i32 0, i32 1
  %112 = ptrtoint ptr %area.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %area.i, align 1
  %arrayidx51.i = getelementptr %struct.fc_bsg_host_els, ptr %rqst_data43.i, i32 0, i32 1, i32 2
  %113 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx51.i, align 1
  %115 = ptrtoint ptr %d_id44.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %d_id44.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %108)
  %cmp56.i = icmp eq i8 %108, -3
  %conv58.i = select i1 %cmp56.i, i16 2045, i16 2046
  %loop_id.i = getelementptr inbounds %struct.fc_port, ptr %call38.i, i32 0, i32 7
  %116 = ptrtoint ptr %loop_id.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv58.i, ptr %loop_id.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.end41.i, %if.then30.i.if.end59.i_crit_edge
  %fcport.1.i = phi ptr [ %fcport.0.i, %if.then30.i.if.end59.i_crit_edge ], [ %call38.i, %if.end41.i ]
  %117 = ptrtoint ptr %ha.0.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ha.0.i, align 128
  %dev60.i = getelementptr inbounds %struct.pci_dev, ptr %118, i32 0, i32 44
  %sg_list.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %119 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sg_list.i, align 4
  %121 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sg_cnt.i, align 4
  %call64.i = call i32 @dma_map_sg_attrs(ptr noundef %dev60.i, ptr noundef %120, i32 noundef %122, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  %123 = ptrtoint ptr %ha.0.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ha.0.i, align 128
  %dev68.i = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 44
  br i1 %tobool65.not.i, label %if.then66.i, label %if.end73.i

if.then66.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %sg_list.i, align 4
  %127 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sg_cnt.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev68.i, ptr noundef %126, i32 noundef %128, i32 noundef 1, i32 noundef 0) #9
  br label %done_free_fcport.i

if.end73.i:                                       ; preds = %if.end59.i
  %sg_list77.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %129 = ptrtoint ptr %sg_list77.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sg_list77.i, align 4
  %131 = ptrtoint ptr %sg_cnt18.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %sg_cnt18.i, align 4
  %call80.i = call i32 @dma_map_sg_attrs(ptr noundef %dev68.i, ptr noundef %130, i32 noundef %132, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.then82.i, label %if.end89.i

if.then82.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  %133 = ptrtoint ptr %ha.0.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ha.0.i, align 128
  %dev84.i = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 44
  %135 = ptrtoint ptr %sg_list77.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sg_list77.i, align 4
  %137 = ptrtoint ptr %sg_cnt18.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %sg_cnt18.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev84.i, ptr noundef %136, i32 noundef %138, i32 noundef 2, i32 noundef 0) #9
  br label %done_free_fcport.i

if.end89.i:                                       ; preds = %if.end73.i
  %139 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %sg_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call64.i, i32 %140)
  %cmp92.not.i = icmp eq i32 %call64.i, %140
  br i1 %cmp92.not.i, label %lor.lhs.false94.i, label %if.end89.i.if.then99.i_crit_edge

if.end89.i.if.then99.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then99.i

lor.lhs.false94.i:                                ; preds = %if.end89.i
  %141 = ptrtoint ptr %sg_cnt18.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %sg_cnt18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call80.i, i32 %142)
  %cmp97.not.i = icmp eq i32 %call80.i, %142
  br i1 %cmp97.not.i, label %if.end104.i, label %lor.lhs.false94.i.if.then99.i_crit_edge

lor.lhs.false94.i.if.then99.i_crit_edge:          ; preds = %lor.lhs.false94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then99.i

if.then99.i:                                      ; preds = %lor.lhs.false94.i.if.then99.i_crit_edge, %if.end89.i.if.then99.i_crit_edge
  %143 = ptrtoint ptr %sg_cnt18.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %sg_cnt18.i, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha.0.i, i32 noundef 28680, ptr noundef nonnull @.str.23, i32 noundef %140, i32 noundef %call64.i, i32 noundef %144, i32 noundef %call80.i) #9
  br label %done_unmap_sg.i

if.end104.i:                                      ; preds = %lor.lhs.false94.i
  %call105.i = call fastcc ptr @qla2x00_get_sp(ptr noundef %vha.0.i, ptr noundef %fcport.1.i) #9
  %tobool106.not.i = icmp eq ptr %call105.i, null
  br i1 %tobool106.not.i, label %if.end104.i.done_unmap_sg.i_crit_edge, label %if.end108.i

if.end104.i.done_unmap_sg.i_crit_edge:            ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_unmap_sg.i

if.end108.i:                                      ; preds = %if.end104.i
  %145 = ptrtoint ptr %66 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %66, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741825, i32 %146)
  %cmp110.i = icmp eq i32 %146, 1073741825
  %conv113.i = select i1 %cmp110.i, i16 3, i16 4
  %type114.i = getelementptr inbounds %struct.srb, ptr %call105.i, i32 0, i32 11
  %147 = ptrtoint ptr %type114.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv113.i, ptr %type114.i, align 2
  %148 = ptrtoint ptr %66 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load i32, ptr %66, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741825, i32 %149)
  %cmp116.i = icmp eq i32 %149, 1073741825
  %cond118.i = select i1 %cmp116.i, ptr @.str.24, ptr @.str.25
  %name.i = getelementptr inbounds %struct.srb, ptr %call105.i, i32 0, i32 12
  %150 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %cond118.i, ptr %name.i, align 8
  %u.i = getelementptr inbounds %struct.srb, ptr %call105.i, i32 0, i32 22
  %151 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %bsg_job, ptr %u.i, align 8
  %free.i = getelementptr inbounds %struct.srb, ptr %call105.i, i32 0, i32 25
  %152 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @qla2x00_bsg_sp_free, ptr %free.i, align 8
  %done.i = getelementptr inbounds %struct.srb, ptr %call105.i, i32 0, i32 24
  %153 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @qla2x00_bsg_job_done, ptr %done.i, align 4
  %rqst_data119.i = getelementptr inbounds %struct.fc_bsg_request, ptr %66, i32 0, i32 1
  %154 = ptrtoint ptr %rqst_data119.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %rqst_data119.i, align 1
  %conv121.i = zext i8 %155 to i32
  %loop_id122.i = getelementptr inbounds %struct.fc_port, ptr %fcport.1.i, i32 0, i32 7
  %156 = ptrtoint ptr %loop_id122.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %loop_id122.i, align 4
  %conv123.i = zext i16 %157 to i32
  %d_id124.i = getelementptr inbounds %struct.fc_port, ptr %fcport.1.i, i32 0, i32 6
  %158 = ptrtoint ptr %d_id124.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %d_id124.i, align 8
  %conv126.i = zext i8 %159 to i32
  %area128.i = getelementptr inbounds %struct.anon.2, ptr %d_id124.i, i32 0, i32 1
  %160 = ptrtoint ptr %area128.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %area128.i, align 1
  %conv129.i = zext i8 %161 to i32
  %al_pa131.i = getelementptr inbounds %struct.anon.2, ptr %d_id124.i, i32 0, i32 2
  %162 = ptrtoint ptr %al_pa131.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %al_pa131.i, align 2
  %conv132.i = zext i8 %163 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha.0.i, i32 noundef 28682, ptr noundef nonnull @.str.26, ptr noundef nonnull %type.0.i, i32 noundef %conv121.i, i32 noundef %conv123.i, i32 noundef %conv126.i, i32 noundef %conv129.i, i32 noundef %conv132.i) #9
  %call133.i = call i32 @qla2x00_start_sp(ptr noundef nonnull %call105.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i)
  %cmp134.not.i = icmp eq i32 %call133.i, 0
  br i1 %cmp134.not.i, label %if.end108.i.qla2x00_process_els.exit_crit_edge, label %if.then136.i

if.end108.i.qla2x00_process_els.exit_crit_edge:   ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_process_els.exit

if.then136.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha.0.i, i32 noundef 28686, ptr noundef nonnull @.str.27, i32 noundef %call133.i) #9
  call fastcc void @qla2x00_rel_sp(ptr noundef nonnull %call105.i) #9
  br label %done_unmap_sg.i

done_unmap_sg.i:                                  ; preds = %if.then136.i, %if.end104.i.done_unmap_sg.i_crit_edge, %if.then99.i
  %rval.0.i = phi i32 [ -11, %if.then99.i ], [ -5, %if.then136.i ], [ -12, %if.end104.i.done_unmap_sg.i_crit_edge ]
  %164 = ptrtoint ptr %ha.0.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ha.0.i, align 128
  %dev139.i = getelementptr inbounds %struct.pci_dev, ptr %165, i32 0, i32 44
  %166 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %sg_list.i, align 4
  %168 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %sg_cnt.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev139.i, ptr noundef %167, i32 noundef %169, i32 noundef 1, i32 noundef 0) #9
  %170 = ptrtoint ptr %ha.0.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ha.0.i, align 128
  %dev145.i = getelementptr inbounds %struct.pci_dev, ptr %171, i32 0, i32 44
  %172 = ptrtoint ptr %sg_list77.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %sg_list77.i, align 4
  %174 = ptrtoint ptr %sg_cnt18.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %sg_cnt18.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev145.i, ptr noundef %173, i32 noundef %175, i32 noundef 2, i32 noundef 0) #9
  br label %done_free_fcport.i

done_free_fcport.i:                               ; preds = %done_unmap_sg.i, %if.then82.i, %if.then66.i
  %rval.1.i = phi i32 [ %rval.0.i, %done_unmap_sg.i ], [ -12, %if.then82.i ], [ -12, %if.then66.i ]
  %176 = ptrtoint ptr %66 to i32
  call void @__asan_loadN_noabort(i32 %176, i32 4)
  %177 = load i32, ptr %66, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741825, i32 %177)
  %cmp151.not.i = icmp eq i32 %177, 1073741825
  br i1 %cmp151.not.i, label %done_free_fcport.i.qla2x00_process_els.exit_crit_edge, label %if.then153.i

done_free_fcport.i.qla2x00_process_els.exit_crit_edge: ; preds = %done_free_fcport.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_process_els.exit

if.then153.i:                                     ; preds = %done_free_fcport.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @qla2x00_free_fcport(ptr noundef %fcport.1.i) #9
  br label %qla2x00_process_els.exit

qla2x00_process_els.exit:                         ; preds = %if.then153.i, %done_free_fcport.i.qla2x00_process_els.exit_crit_edge, %if.end108.i.qla2x00_process_els.exit_crit_edge, %if.else37.i.qla2x00_process_els.exit_crit_edge, %if.then33.i, %if.then21.i, %if.then14.i, %if.then11.i, %if.then8.i
  %retval.0.i87 = phi i32 [ %call9.i, %if.then8.i ], [ 0, %if.end108.i.qla2x00_process_els.exit_crit_edge ], [ -1, %if.then21.i ], [ -5, %if.then33.i ], [ %rval.1.i, %if.then153.i ], [ %rval.1.i, %done_free_fcport.i.qla2x00_process_els.exit_crit_edge ], [ -1, %if.then14.i ], [ -5, %if.then11.i ], [ -12, %if.else37.i.qla2x00_process_els.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nextlid.i) #9
  br label %sw.epilog

sw.bb28:                                          ; preds = %skip_chip_chk
  %178 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %request, align 4
  %180 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %bsg_job, align 4
  %call.i.i89 = tail call i32 @scsi_is_host_device(ptr noundef %181) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %tobool.not.i.i90 = icmp eq i32 %call.i.i89, 0
  %182 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i90, label %if.end.i.i101, label %sw.bb28.while.cond.i.i.i94_crit_edge

sw.bb28.while.cond.i.i.i94_crit_edge:             ; preds = %sw.bb28
  br label %while.cond.i.i.i94

while.cond.i.i.i94:                               ; preds = %while.body.i.i.i97.while.cond.i.i.i94_crit_edge, %sw.bb28.while.cond.i.i.i94_crit_edge
  %dev.addr.0.i.i.i91 = phi ptr [ %185, %while.body.i.i.i97.while.cond.i.i.i94_crit_edge ], [ %183, %sw.bb28.while.cond.i.i.i94_crit_edge ]
  %call.i.i.i92 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i91) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i92)
  %tobool.not.i.i.i93 = icmp eq i32 %call.i.i.i92, 0
  br i1 %tobool.not.i.i.i93, label %while.body.i.i.i97, label %while.end.i.i.i99

while.body.i.i.i97:                               ; preds = %while.cond.i.i.i94
  %parent.i.i.i95 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i91, i32 0, i32 1
  %184 = ptrtoint ptr %parent.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %parent.i.i.i95, align 8
  %tobool1.not.i.i.i96 = icmp eq ptr %185, null
  br i1 %tobool1.not.i.i.i96, label %while.body.i.i.i97.fc_bsg_to_shost.exit.i116_crit_edge, label %while.body.i.i.i97.while.cond.i.i.i94_crit_edge

while.body.i.i.i97.while.cond.i.i.i94_crit_edge:  ; preds = %while.body.i.i.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i94

while.body.i.i.i97.fc_bsg_to_shost.exit.i116_crit_edge: ; preds = %while.body.i.i.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i116

while.end.i.i.i99:                                ; preds = %while.cond.i.i.i94
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i98 = getelementptr i8, ptr %dev.addr.0.i.i.i91, i32 -584
  br label %fc_bsg_to_shost.exit.i116

if.end.i.i101:                                    ; preds = %sw.bb28
  %parent.i.i100 = getelementptr inbounds %struct.device, ptr %183, i32 0, i32 1
  %186 = ptrtoint ptr %parent.i.i100 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %parent.i.i100, align 8
  br label %while.cond.i11.i.i105

while.cond.i11.i.i105:                            ; preds = %while.body.i14.i.i108.while.cond.i11.i.i105_crit_edge, %if.end.i.i101
  %dev.addr.0.i8.i.i102 = phi ptr [ %187, %if.end.i.i101 ], [ %189, %while.body.i14.i.i108.while.cond.i11.i.i105_crit_edge ]
  %call.i9.i.i103 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i102) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i103)
  %tobool.not.i10.i.i104 = icmp eq i32 %call.i9.i.i103, 0
  br i1 %tobool.not.i10.i.i104, label %while.body.i14.i.i108, label %while.end.i16.i.i110

while.body.i14.i.i108:                            ; preds = %while.cond.i11.i.i105
  %parent.i12.i.i106 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i102, i32 0, i32 1
  %188 = ptrtoint ptr %parent.i12.i.i106 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %parent.i12.i.i106, align 8
  %tobool1.not.i13.i.i107 = icmp eq ptr %189, null
  br i1 %tobool1.not.i13.i.i107, label %while.body.i14.i.i108.fc_bsg_to_shost.exit.i116_crit_edge, label %while.body.i14.i.i108.while.cond.i11.i.i105_crit_edge

while.body.i14.i.i108.while.cond.i11.i.i105_crit_edge: ; preds = %while.body.i14.i.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i105

while.body.i14.i.i108.fc_bsg_to_shost.exit.i116_crit_edge: ; preds = %while.body.i14.i.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i116

while.end.i16.i.i110:                             ; preds = %while.cond.i11.i.i105
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i109 = getelementptr i8, ptr %dev.addr.0.i8.i.i102, i32 -584
  br label %fc_bsg_to_shost.exit.i116

fc_bsg_to_shost.exit.i116:                        ; preds = %while.end.i16.i.i110, %while.body.i14.i.i108.fc_bsg_to_shost.exit.i116_crit_edge, %while.end.i.i.i99, %while.body.i.i.i97.fc_bsg_to_shost.exit.i116_crit_edge
  %retval.0.i.i111 = phi ptr [ %add.ptr.i.i.i98, %while.end.i.i.i99 ], [ %add.ptr.i15.i.i109, %while.end.i16.i.i110 ], [ null, %while.body.i14.i.i108.fc_bsg_to_shost.exit.i116_crit_edge ], [ null, %while.body.i.i.i97.fc_bsg_to_shost.exit.i116_crit_edge ]
  %hostdata.i.i112 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i111, i32 0, i32 53
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i112, i32 0, i32 52
  %190 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hw.i, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %191, align 128
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %193, i32 0, i32 44
  %sg_list.i113 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %194 = ptrtoint ptr %sg_list.i113 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %sg_list.i113, align 4
  %sg_cnt.i114 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %196 = ptrtoint ptr %sg_cnt.i114 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %sg_cnt.i114, align 4
  %call3.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev.i, ptr noundef %195, i32 noundef %197, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i115 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i115, label %if.then.i117, label %if.end.i119

if.then.i117:                                     ; preds = %fc_bsg_to_shost.exit.i116
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i112, i32 noundef 28687, ptr noundef nonnull @.str.29, i32 noundef 0) #9
  br label %sw.epilog

if.end.i119:                                      ; preds = %fc_bsg_to_shost.exit.i116
  %198 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %191, align 128
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %199, i32 0, i32 44
  %sg_list6.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %200 = ptrtoint ptr %sg_list6.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %sg_list6.i, align 4
  %sg_cnt8.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %202 = ptrtoint ptr %sg_cnt8.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %sg_cnt8.i, align 4
  %call9.i118 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev5.i, ptr noundef %201, i32 noundef %203, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i118)
  %tobool10.not.i = icmp eq i32 %call9.i118, 0
  br i1 %tobool10.not.i, label %if.then11.i120, label %if.end12.i121

if.then11.i120:                                   ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i112, i32 noundef 28688, ptr noundef nonnull @.str.30, i32 noundef 0) #9
  br label %sw.epilog

if.end12.i121:                                    ; preds = %if.end.i119
  %204 = ptrtoint ptr %sg_cnt.i114 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %sg_cnt.i114, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %205)
  %cmp.not.i = icmp eq i32 %call3.i, %205
  br i1 %cmp.not.i, label %lor.lhs.false.i122, label %if.end12.i121.if.then18.i_crit_edge

if.end12.i121.if.then18.i_crit_edge:              ; preds = %if.end12.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

lor.lhs.false.i122:                               ; preds = %if.end12.i121
  %206 = ptrtoint ptr %sg_cnt8.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %sg_cnt8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i118, i32 %207)
  %cmp17.not.i = icmp eq i32 %call9.i118, %207
  br i1 %cmp17.not.i, label %if.end23.i, label %lor.lhs.false.i122.if.then18.i_crit_edge

lor.lhs.false.i122.if.then18.i_crit_edge:         ; preds = %lor.lhs.false.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

if.then18.i:                                      ; preds = %lor.lhs.false.i122.if.then18.i_crit_edge, %if.end12.i121.if.then18.i_crit_edge
  %208 = ptrtoint ptr %sg_cnt8.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %sg_cnt8.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i112, i32 noundef 28689, ptr noundef nonnull @.str.31, i32 noundef %205, i32 noundef %call3.i, i32 noundef %209, i32 noundef %call9.i118) #9
  br label %done_unmap_sg.i140

if.end23.i:                                       ; preds = %lor.lhs.false.i122
  %flags.i123 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i111, i32 1, i32 5, i32 5
  %210 = ptrtoint ptr %flags.i123 to i32
  call void @__asan_load4_noabort(i32 %210)
  %bf.load.i124 = load volatile i32, ptr %flags.i123, align 8
  %211 = and i32 %bf.load.i124, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool24.not.i = icmp eq i32 %211, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end26.i127

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i112, i32 noundef 28690, ptr noundef nonnull @.str.32) #9
  br label %done_unmap_sg.i140

if.end26.i127:                                    ; preds = %if.end23.i
  %rqst_data.i125 = getelementptr inbounds %struct.fc_bsg_request, ptr %179, i32 0, i32 1
  %preamble_word1.i = getelementptr inbounds %struct.fc_bsg_request, ptr %179, i32 0, i32 1, i32 1
  %212 = ptrtoint ptr %preamble_word1.i to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %213 = load i32, ptr %preamble_word1.i, align 1
  %shr.i126 = lshr i32 %213, 24
  %trunc.i = trunc i32 %shr.i126 to i8
  %214 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %trunc.i, label %sw.default.i [
    i8 -4, label %if.end26.i127.sw.epilog.i_crit_edge
    i8 -6, label %sw.bb28.i
  ]

if.end26.i127.sw.epilog.i_crit_edge:              ; preds = %if.end26.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %if.end26.i127
  call void @__sanitizer_cov_trace_pc() #11
  %mgmt_svr_loop_id.i = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i112, i32 0, i32 19
  %215 = ptrtoint ptr %mgmt_svr_loop_id.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %mgmt_svr_loop_id.i, align 2
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end26.i127
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i112, i32 noundef 28691, ptr noundef nonnull @.str.33, i32 noundef %shr.i126) #9
  br label %done_unmap_sg.i140

sw.epilog.i:                                      ; preds = %sw.bb28.i, %if.end26.i127.sw.epilog.i_crit_edge
  %loop_id.0.i = phi i16 [ %216, %sw.bb28.i ], [ 2044, %if.end26.i127.sw.epilog.i_crit_edge ]
  %call30.i = tail call ptr @qla2x00_alloc_fcport(ptr noundef %hostdata.i.i112, i32 noundef 3264) #9
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.then32.i, label %if.end33.i

if.then32.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i112, i32 noundef 28692, ptr noundef nonnull @.str.34) #9
  br label %done_unmap_sg.i140

if.end33.i:                                       ; preds = %sw.epilog.i
  %vha34.i = getelementptr inbounds %struct.fc_port, ptr %call30.i, i32 0, i32 1
  %217 = ptrtoint ptr %vha34.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %hostdata.i.i112, ptr %vha34.i, align 8
  %port_id.i128 = getelementptr inbounds %struct.fc_bsg_host_ct, ptr %rqst_data.i125, i32 0, i32 1
  %218 = ptrtoint ptr %port_id.i128 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %port_id.i128, align 1
  %d_id.i129 = getelementptr inbounds %struct.fc_port, ptr %call30.i, i32 0, i32 6
  %al_pa.i130 = getelementptr inbounds %struct.anon.2, ptr %d_id.i129, i32 0, i32 2
  %220 = ptrtoint ptr %al_pa.i130 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %al_pa.i130, align 2
  %arrayidx38.i = getelementptr %struct.fc_bsg_host_ct, ptr %rqst_data.i125, i32 0, i32 1, i32 1
  %221 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx38.i, align 1
  %area.i131 = getelementptr inbounds %struct.anon.2, ptr %d_id.i129, i32 0, i32 1
  %223 = ptrtoint ptr %area.i131 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %222, ptr %area.i131, align 1
  %arrayidx42.i = getelementptr %struct.fc_bsg_host_ct, ptr %rqst_data.i125, i32 0, i32 1, i32 2
  %224 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx42.i, align 1
  %226 = ptrtoint ptr %d_id.i129 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %d_id.i129, align 8
  %loop_id44.i = getelementptr inbounds %struct.fc_port, ptr %call30.i, i32 0, i32 7
  %227 = ptrtoint ptr %loop_id44.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %loop_id.0.i, ptr %loop_id44.i, align 4
  %call45.i = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %hostdata.i.i112, ptr noundef nonnull %call30.i) #9
  %tobool46.not.i = icmp eq ptr %call45.i, null
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end48.i

if.then47.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i112, i32 noundef 28693, ptr noundef nonnull @.str.35) #9
  br label %done_free_fcport.i138

if.end48.i:                                       ; preds = %if.end33.i
  %type49.i = getelementptr inbounds %struct.srb, ptr %call45.i, i32 0, i32 11
  %228 = ptrtoint ptr %type49.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 5, ptr %type49.i, align 2
  %name.i132 = getelementptr inbounds %struct.srb, ptr %call45.i, i32 0, i32 12
  %229 = ptrtoint ptr %name.i132 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr @.str.36, ptr %name.i132, align 8
  %add.i = add i32 %call9.i118, %call3.i
  %conv50.i = trunc i32 %add.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %conv50.i)
  %cmp.i.i = icmp ugt i16 %conv50.i, 2
  br i1 %cmp.i.i, label %if.then.i.i133, label %if.end48.i.qla24xx_calc_ct_iocbs.exit.i_crit_edge

if.end48.i.qla24xx_calc_ct_iocbs.exit.i_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla24xx_calc_ct_iocbs.exit.i

if.then.i.i133:                                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i16 %conv50.i, -2
  %sub.i.i.frozen = freeze i16 %sub.i.i
  %div1314.i.i = udiv i16 %sub.i.i.frozen, 5
  %230 = mul i16 %div1314.i.i, 5
  %rem1516.i.i.decomposed = sub i16 %sub.i.i.frozen, %230
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem1516.i.i.decomposed)
  %tobool.not.i161.i = icmp eq i16 %rem1516.i.i.decomposed, 0
  %spec.select.v.i.i = select i1 %tobool.not.i161.i, i16 1, i16 2
  %spec.select.i.i = add nuw nsw i16 %spec.select.v.i.i, %div1314.i.i
  %phi.cast.i = zext i16 %spec.select.i.i to i32
  br label %qla24xx_calc_ct_iocbs.exit.i

qla24xx_calc_ct_iocbs.exit.i:                     ; preds = %if.then.i.i133, %if.end48.i.qla24xx_calc_ct_iocbs.exit.i_crit_edge
  %iocbs.0.i.i = phi i32 [ 1, %if.end48.i.qla24xx_calc_ct_iocbs.exit.i_crit_edge ], [ %phi.cast.i, %if.then.i.i133 ]
  %iocbs.i = getelementptr inbounds %struct.srb, ptr %call45.i, i32 0, i32 13
  %231 = ptrtoint ptr %iocbs.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %iocbs.0.i.i, ptr %iocbs.i, align 4
  %u.i134 = getelementptr inbounds %struct.srb, ptr %call45.i, i32 0, i32 22
  %232 = ptrtoint ptr %u.i134 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %bsg_job, ptr %u.i134, align 8
  %free.i135 = getelementptr inbounds %struct.srb, ptr %call45.i, i32 0, i32 25
  %233 = ptrtoint ptr %free.i135 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr @qla2x00_bsg_sp_free, ptr %free.i135, align 8
  %done.i136 = getelementptr inbounds %struct.srb, ptr %call45.i, i32 0, i32 24
  %234 = ptrtoint ptr %done.i136 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr @qla2x00_bsg_job_done, ptr %done.i136, align 4
  %preamble_word2.i = getelementptr inbounds %struct.fc_bsg_request, ptr %179, i32 0, i32 1, i32 1, i32 4
  %235 = ptrtoint ptr %preamble_word2.i to i32
  call void @__asan_loadN_noabort(i32 %235, i32 4)
  %236 = load i32, ptr %preamble_word2.i, align 1
  %shr54.i = lshr i32 %236, 16
  %237 = ptrtoint ptr %loop_id44.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %loop_id44.i, align 4
  %conv56.i = zext i16 %238 to i32
  %239 = ptrtoint ptr %d_id.i129 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %d_id.i129, align 8
  %conv59.i = zext i8 %240 to i32
  %241 = ptrtoint ptr %area.i131 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %area.i131, align 1
  %conv62.i = zext i8 %242 to i32
  %243 = ptrtoint ptr %al_pa.i130 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %al_pa.i130, align 2
  %conv65.i = zext i8 %244 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i112, i32 noundef 28694, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.28, i32 noundef %shr54.i, i32 noundef %conv56.i, i32 noundef %conv59.i, i32 noundef %conv62.i, i32 noundef %conv65.i) #9
  %call66.i = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call45.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %cmp67.not.i = icmp eq i32 %call66.i, 0
  br i1 %cmp67.not.i, label %qla24xx_calc_ct_iocbs.exit.i.sw.epilog_crit_edge, label %if.then69.i

qla24xx_calc_ct_iocbs.exit.i.sw.epilog_crit_edge: ; preds = %qla24xx_calc_ct_iocbs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then69.i:                                      ; preds = %qla24xx_calc_ct_iocbs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i112, i32 noundef 28695, ptr noundef nonnull @.str.38, i32 noundef %call66.i) #9
  tail call fastcc void @qla2x00_rel_sp(ptr noundef nonnull %call45.i) #9
  br label %done_free_fcport.i138

done_free_fcport.i138:                            ; preds = %if.then69.i, %if.then47.i
  %rval.0.i137 = phi i32 [ -5, %if.then69.i ], [ -12, %if.then47.i ]
  tail call void @qla2x00_free_fcport(ptr noundef nonnull %call30.i) #9
  br label %done_unmap_sg.i140

done_unmap_sg.i140:                               ; preds = %done_free_fcport.i138, %if.then32.i, %sw.default.i, %if.then25.i, %if.then18.i
  %rval.1.i139 = phi i32 [ -11, %if.then18.i ], [ -22, %sw.default.i ], [ %rval.0.i137, %done_free_fcport.i138 ], [ -12, %if.then32.i ], [ -5, %if.then25.i ]
  %245 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %191, align 128
  %dev72.i = getelementptr inbounds %struct.pci_dev, ptr %246, i32 0, i32 44
  %247 = ptrtoint ptr %sg_list.i113 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %sg_list.i113, align 4
  %249 = ptrtoint ptr %sg_cnt.i114 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %sg_cnt.i114, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev72.i, ptr noundef %248, i32 noundef %250, i32 noundef 1, i32 noundef 0) #9
  %251 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %191, align 128
  %dev78.i = getelementptr inbounds %struct.pci_dev, ptr %252, i32 0, i32 44
  %253 = ptrtoint ptr %sg_list6.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %sg_list6.i, align 4
  %255 = ptrtoint ptr %sg_cnt8.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %sg_cnt8.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev78.i, ptr noundef %254, i32 noundef %256, i32 noundef 2, i32 noundef 0) #9
  br label %sw.epilog

sw.bb30:                                          ; preds = %skip_chip_chk
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call fastcc i32 @qla2x00_process_vendor_specific(ptr noundef %vha.0, ptr noundef %bsg_job)
  br label %sw.epilog

sw.default:                                       ; preds = %skip_chip_chk
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha.0, i32 noundef 28762, ptr noundef nonnull @.str.9) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb30, %done_unmap_sg.i140, %qla24xx_calc_ct_iocbs.exit.i.sw.epilog_crit_edge, %if.then11.i120, %if.then.i117, %qla2x00_process_els.exit
  %ret.0 = phi i32 [ -22, %sw.default ], [ %call31, %sw.bb30 ], [ %retval.0.i87, %qla2x00_process_els.exit ], [ 0, %qla24xx_calc_ct_iocbs.exit.i.sw.epilog_crit_edge ], [ %rval.1.i139, %done_unmap_sg.i140 ], [ -12, %if.then11.i120 ], [ -12, %if.then.i117 ]
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8421376, ptr noundef %vha.0, i32 noundef 28672, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.qla24xx_bsg_request, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then22, %if.then16, %if.then12
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -1, %if.then12 ], [ -16, %if.then16 ], [ -5, %if.then22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla2x00_process_vendor_specific(ptr noundef %vha, ptr noundef %bsg_job) unnamed_addr #0 align 64 {
entry:
  %rsp_data.i1233 = alloca %struct.ql_vnd_mng_host_port_resp, align 4
  %rsp_data.i1129 = alloca %struct.ql_vnd_host_stats_resp, align 4
  %rsp_data.i = alloca %struct.ql_vnd_mng_host_stats_resp, align 4
  %regions.i = alloca %struct.qla_active_regions, align 1
  %active_regions.i = alloca %struct.active_regions, align 1
  %stats_dma.i = alloca i32, align 4
  %bbcr.i = alloca %struct.qla_bbcr_data, align 1
  %loop_id.i913 = alloca i16, align 2
  %topo.i = alloca i16, align 2
  %sw_cap.i = alloca i16, align 2
  %domain.i = alloca i8, align 1
  %area.i914 = alloca i8, align 1
  %al_pa.i915 = alloca i8, align 1
  %cap.i865 = alloca %struct.qla_flash_update_caps, align 8
  %cap.i = alloca %struct.qla_flash_update_caps, align 8
  %sr.i780 = alloca %struct.qla_serdes_reg_ex, align 2
  %sr.i = alloca %struct.qla_serdes_reg, align 2
  %nextlid.i = alloca i16, align 2
  %bsg.i571 = alloca [256 x i8], align 2
  %sfp_dma.i572 = alloca i32, align 4
  %bsg.i525 = alloca [256 x i8], align 2
  %sfp_dma.i526 = alloca i32, align 4
  %bsg.i479 = alloca [256 x i8], align 2
  %sfp_dma.i480 = alloca i32, align 4
  %bsg.i434 = alloca [256 x i8], align 2
  %sfp_dma.i435 = alloca i32, align 4
  %bsg.i = alloca [256 x i8], align 4
  %sfp_dma.i = alloca i32, align 4
  %mb.i = alloca [32 x i16], align 2
  %mn_dma.i176 = alloca i32, align 4
  %mgmt_dma.i = alloca i32, align 4
  %mn_dma.i = alloca i32, align 4
  %fw_dma.i = alloca i32, align 4
  %elreq.i = alloca %struct.msg_echo_lb, align 4
  %response.i = alloca [32 x i16], align 2
  %config.i = alloca [4 x i16], align 8
  %new_config.i = alloca [4 x i16], align 8
  %req_data_dma.i = alloca i32, align 4
  %rsp_data_dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %request = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 3
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request, align 4
  %vendor_cmd = getelementptr inbounds %struct.fc_bsg_request, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %vendor_cmd to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %vendor_cmd, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1024, ptr noundef %vha, i32 noundef 37147, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.qla2x00_process_vendor_specific, i32 noundef %3) #9
  %4 = ptrtoint ptr %vendor_cmd to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %vendor_cmd, align 1
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb8
    i32 5, label %sw.bb10
    i32 6, label %sw.bb12
    i32 7, label %sw.bb14
    i32 8, label %sw.bb16
    i32 11, label %sw.bb18
    i32 12, label %sw.bb20
    i32 13, label %sw.bb22
    i32 16, label %sw.bb24
    i32 17, label %sw.bb26
    i32 10, label %sw.bb28
    i32 18, label %sw.bb30
    i32 19, label %sw.bb32
    i32 20, label %sw.bb34
    i32 21, label %sw.bb36
    i32 22, label %sw.bb38
    i32 23, label %sw.bb40
    i32 24, label %entry.sw.bb42_crit_edge
    i32 26, label %entry.sw.bb42_crit_edge1784
    i32 25, label %sw.bb44
    i32 31, label %sw.bb46
    i32 30, label %sw.bb48
    i32 35, label %sw.bb50
    i32 36, label %sw.bb52
    i32 37, label %sw.bb54
    i32 38, label %sw.bb56
    i32 43, label %sw.bb58
  ]

entry.sw.bb42_crit_edge1784:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42

entry.sw.bb42_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %request, align 4
  %reply.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %9 = ptrtoint ptr %reply.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reply.i, align 4
  %11 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bsg_job, align 4
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  %13 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.while.cond.i.i.i_crit_edge

sw.bb.while.cond.i.i.i_crit_edge:                 ; preds = %sw.bb
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %sw.bb.while.cond.i.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %16, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ %14, %sw.bb.while.cond.i.i.i_crit_edge ]
  %call.i.i363.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i363.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i363.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i, label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %parent.i.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i.i.i, label %while.body.i.i.i.fc_bsg_to_shost.exit.i_crit_edge, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i

while.body.i.i.i.fc_bsg_to_shost.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %dev.addr.0.i.i.i, i32 -584
  br label %fc_bsg_to_shost.exit.i

if.end.i.i:                                       ; preds = %sw.bb
  %parent.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i.i, align 8
  br label %while.cond.i11.i.i

while.cond.i11.i.i:                               ; preds = %while.body.i14.i.i.while.cond.i11.i.i_crit_edge, %if.end.i.i
  %dev.addr.0.i8.i.i = phi ptr [ %18, %if.end.i.i ], [ %20, %while.body.i14.i.i.while.cond.i11.i.i_crit_edge ]
  %call.i9.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i)
  %tobool.not.i10.i.i = icmp eq i32 %call.i9.i.i, 0
  br i1 %tobool.not.i10.i.i, label %while.body.i14.i.i, label %while.end.i16.i.i

while.body.i14.i.i:                               ; preds = %while.cond.i11.i.i
  %parent.i12.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %parent.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i12.i.i, align 8
  %tobool1.not.i13.i.i = icmp eq ptr %20, null
  br i1 %tobool1.not.i13.i.i, label %while.body.i14.i.i.fc_bsg_to_shost.exit.i_crit_edge, label %while.body.i14.i.i.while.cond.i11.i.i_crit_edge

while.body.i14.i.i.while.cond.i11.i.i_crit_edge:  ; preds = %while.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i

while.body.i14.i.i.fc_bsg_to_shost.exit.i_crit_edge: ; preds = %while.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i

while.end.i16.i.i:                                ; preds = %while.cond.i11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i = getelementptr i8, ptr %dev.addr.0.i8.i.i, i32 -584
  br label %fc_bsg_to_shost.exit.i

fc_bsg_to_shost.exit.i:                           ; preds = %while.end.i16.i.i, %while.body.i14.i.i.fc_bsg_to_shost.exit.i_crit_edge, %while.end.i.i.i, %while.body.i.i.i.fc_bsg_to_shost.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i.i, %while.end.i.i.i ], [ %add.ptr.i15.i.i, %while.end.i16.i.i ], [ null, %while.body.i14.i.i.fc_bsg_to_shost.exit.i_crit_edge ], [ null, %while.body.i.i.i.fc_bsg_to_shost.exit.i_crit_edge ]
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 53
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i, i32 0, i32 52
  %21 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %elreq.i) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i) #9
  %23 = call ptr @memset(ptr %response.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %config.i) #9
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 -1, ptr %config.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_config.i) #9
  %25 = ptrtoint ptr %new_config.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %new_config.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req_data_dma.i) #9
  %26 = ptrtoint ptr %req_data_dma.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %req_data_dma.i, align 4, !annotation !234
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp_data_dma.i) #9
  %27 = ptrtoint ptr %rsp_data_dma.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %rsp_data_dma.i, align 4, !annotation !234
  %flags.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 5, i32 5
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load.i = load volatile i32, ptr %flags.i, align 8
  %29 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %fc_bsg_to_shost.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i, i32 noundef 28697, ptr noundef nonnull @.str.32) #9
  br label %qla2x00_process_loopback.exit

if.end.i:                                         ; preds = %fc_bsg_to_shost.exit.i
  %30 = call ptr @memset(ptr %elreq.i, i32 0, i32 24)
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %22, align 128
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %request_payload.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7
  %sg_list.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %33 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sg_list.i, align 4
  %sg_cnt.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sg_cnt.i, align 4
  %call3.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev.i, ptr noundef %34, i32 noundef %36, i32 noundef 1, i32 noundef 0) #9
  %conv.i = trunc i32 %call3.i to i16
  %req_sg_cnt.i = getelementptr inbounds %struct.msg_echo_lb, ptr %elreq.i, i32 0, i32 2
  %37 = ptrtoint ptr %req_sg_cnt.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i, ptr %req_sg_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool5.not.i = icmp eq i16 %conv.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i, i32 noundef 28698, ptr noundef nonnull @.str.40, i32 noundef 0) #9
  br label %qla2x00_process_loopback.exit

if.end9.i:                                        ; preds = %if.end.i
  %38 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %22, align 128
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %sg_list12.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %40 = ptrtoint ptr %sg_list12.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sg_list12.i, align 4
  %sg_cnt14.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %42 = ptrtoint ptr %sg_cnt14.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sg_cnt14.i, align 4
  %call15.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev11.i, ptr noundef %41, i32 noundef %43, i32 noundef 2, i32 noundef 0) #9
  %conv16.i = trunc i32 %call15.i to i16
  %rsp_sg_cnt.i = getelementptr inbounds %struct.msg_echo_lb, ptr %elreq.i, i32 0, i32 3
  %44 = ptrtoint ptr %rsp_sg_cnt.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv16.i, ptr %rsp_sg_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv16.i)
  %tobool18.not.i = icmp eq i16 %conv16.i, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end22.i

if.then19.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i, i32 noundef 28699, ptr noundef nonnull @.str.41, i32 noundef 0) #9
  br label %done_unmap_req_sg.i

if.end22.i:                                       ; preds = %if.end9.i
  %45 = ptrtoint ptr %req_sg_cnt.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %req_sg_cnt.i, align 4
  %conv24.i = zext i16 %46 to i32
  %47 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sg_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %conv24.i)
  %cmp.not.i = icmp eq i32 %48, %conv24.i
  %conv29.i = and i32 %call15.i, 65535
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end22.i.if.then34.i_crit_edge

if.end22.i.if.then34.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i

lor.lhs.false.i:                                  ; preds = %if.end22.i
  %49 = ptrtoint ptr %sg_cnt14.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sg_cnt14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29.i, i32 %50)
  %cmp32.not.i = icmp eq i32 %conv29.i, %50
  br i1 %cmp32.not.i, label %if.end43.i, label %lor.lhs.false.i.if.then34.i_crit_edge

lor.lhs.false.i.if.then34.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i

if.then34.i:                                      ; preds = %lor.lhs.false.i.if.then34.i_crit_edge, %if.end22.i.if.then34.i_crit_edge
  %51 = ptrtoint ptr %sg_cnt14.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sg_cnt14.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i, i32 noundef 28700, ptr noundef nonnull @.str.42, i32 noundef %48, i32 noundef %conv24.i, i32 noundef %52, i32 noundef %conv29.i) #9
  br label %done_unmap_sg.i

if.end43.i:                                       ; preds = %lor.lhs.false.i
  %53 = ptrtoint ptr %request_payload.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %request_payload.i, align 4
  %55 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %22, align 128
  %dev46.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %call.i364.i = call ptr @dma_alloc_attrs(ptr noundef %dev46.i, i32 noundef %54, ptr noundef nonnull %req_data_dma.i, i32 noundef 3264, i32 noundef 0) #9
  %tobool48.not.i = icmp eq ptr %call.i364.i, null
  br i1 %tobool48.not.i, label %if.then49.i, label %if.end50.i

if.then49.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i, i32 noundef 28701, ptr noundef nonnull @.str.43) #9
  br label %done_unmap_sg.i

if.end50.i:                                       ; preds = %if.end43.i
  %57 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %22, align 128
  %dev52.i = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %call.i365.i = call ptr @dma_alloc_attrs(ptr noundef %dev52.i, i32 noundef %54, ptr noundef nonnull %rsp_data_dma.i, i32 noundef 3264, i32 noundef 0) #9
  %tobool54.not.i = icmp eq ptr %call.i365.i, null
  br i1 %tobool54.not.i, label %if.then55.i, label %if.end56.i

if.then55.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i, i32 noundef 28676, ptr noundef nonnull @.str.44) #9
  br label %done_free_dma_req.i

if.end56.i:                                       ; preds = %if.end50.i
  %59 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sg_list.i, align 4
  %61 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sg_cnt.i, align 4
  %call61.i = call i32 @sg_copy_to_buffer(ptr noundef %60, i32 noundef %62, ptr noundef nonnull %call.i364.i, i32 noundef %54) #9
  %63 = ptrtoint ptr %req_data_dma.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %req_data_dma.i, align 4
  %65 = ptrtoint ptr %elreq.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %elreq.i, align 4
  %66 = ptrtoint ptr %rsp_data_dma.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rsp_data_dma.i, align 4
  %rcv_dma.i = getelementptr inbounds %struct.msg_echo_lb, ptr %elreq.i, i32 0, i32 1
  %68 = ptrtoint ptr %rcv_dma.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %rcv_dma.i, align 4
  %transfer_size.i = getelementptr inbounds %struct.msg_echo_lb, ptr %elreq.i, i32 0, i32 5
  %69 = ptrtoint ptr %transfer_size.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %54, ptr %transfer_size.i, align 4
  %arrayidx.i = getelementptr %struct.fc_bsg_request, ptr %8, i32 0, i32 1, i32 1, i32 4
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %arrayidx.i, align 1
  %conv62.i = trunc i32 %71 to i16
  %options.i = getelementptr inbounds %struct.msg_echo_lb, ptr %elreq.i, i32 0, i32 4
  %72 = ptrtoint ptr %options.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv62.i, ptr %options.i, align 4
  %arrayidx65.i = getelementptr %struct.fc_bsg_request, ptr %8, i32 1
  %73 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %arrayidx65.i, align 1
  %iteration_count.i = getelementptr inbounds %struct.msg_echo_lb, ptr %elreq.i, i32 0, i32 6
  %75 = ptrtoint ptr %iteration_count.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %iteration_count.i, align 4
  %loop_state.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 5, i32 5, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %loop_state.i, i32 noundef 4) #9
  %76 = ptrtoint ptr %loop_state.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %loop_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %77)
  %cmp67.i = icmp eq i32 %77, 5
  br i1 %cmp67.i, label %land.lhs.true.i, label %if.end56.i.if.else.i_crit_edge

if.end56.i.if.else.i_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end56.i
  %current_topology.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 49
  %78 = ptrtoint ptr %current_topology.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %current_topology.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %79)
  %cmp70.i = icmp eq i8 %79, 8
  br i1 %cmp70.i, label %land.lhs.true72.i, label %land.lhs.true.i.lor.lhs.false77.i_crit_edge

land.lhs.true.i.lor.lhs.false77.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false77.i

land.lhs.true72.i:                                ; preds = %land.lhs.true.i
  %80 = ptrtoint ptr %options.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %options.i, align 4
  %82 = and i16 %81, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %cmp75.not.i = icmp eq i16 %82, 0
  br i1 %cmp75.not.i, label %land.lhs.true72.i.lor.lhs.false77.i_crit_edge, label %land.lhs.true72.i.if.then103.i_crit_edge

land.lhs.true72.i.if.then103.i_crit_edge:         ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then103.i

land.lhs.true72.i.lor.lhs.false77.i_crit_edge:    ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false77.i

lor.lhs.false77.i:                                ; preds = %land.lhs.true72.i.lor.lhs.false77.i_crit_edge, %land.lhs.true.i.lor.lhs.false77.i_crit_edge
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 54
  %83 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %isp_type.i, align 8
  %85 = and i32 %84, 335872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %lor.lhs.false77.i.if.else.i_crit_edge, label %land.lhs.true91.i

lor.lhs.false77.i.if.else.i_crit_edge:            ; preds = %lor.lhs.false77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true91.i:                                ; preds = %lor.lhs.false77.i
  %87 = ptrtoint ptr %call.i364.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %call.i364.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %88)
  %cmp93.i = icmp eq i32 %88, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %54)
  %cmp96.i = icmp eq i32 %54, 252
  %or.cond359.i = and i1 %cmp96.i, %cmp93.i
  br i1 %or.cond359.i, label %land.lhs.true98.i, label %land.lhs.true91.i.if.else.i_crit_edge

land.lhs.true91.i.if.else.i_crit_edge:            ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true98.i:                                ; preds = %land.lhs.true91.i
  %89 = ptrtoint ptr %options.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %options.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 242, i16 %90)
  %cmp101.i = icmp eq i16 %90, 242
  br i1 %cmp101.i, label %land.lhs.true98.i.if.then103.i_crit_edge, label %land.lhs.true98.i.if.else.i_crit_edge

land.lhs.true98.i.if.else.i_crit_edge:            ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true98.i.if.then103.i_crit_edge:         ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then103.i

if.then103.i:                                     ; preds = %land.lhs.true98.i.if.then103.i_crit_edge, %land.lhs.true72.i.if.then103.i_crit_edge
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i, i32 noundef 28702, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45) #9
  %call104.i = call i32 @qla2x00_echo_test(ptr noundef %hostdata.i.i, ptr noundef nonnull %elreq.i, ptr noundef nonnull %response.i) #9
  br label %if.end207.i

if.else.i:                                        ; preds = %land.lhs.true98.i.if.else.i_crit_edge, %land.lhs.true91.i.if.else.i_crit_edge, %lor.lhs.false77.i.if.else.i_crit_edge, %if.end56.i.if.else.i_crit_edge
  %isp_type105.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 54
  %91 = ptrtoint ptr %isp_type105.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %isp_type105.i, align 8
  %93 = and i32 %92, 335872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %if.else203.i, label %if.then119.i

if.then119.i:                                     ; preds = %if.else.i
  %95 = ptrtoint ptr %config.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 0, ptr %config.i, align 8
  %96 = ptrtoint ptr %new_config.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 0, ptr %new_config.i, align 8
  %call123.i = call i32 @qla81xx_get_port_config(ptr noundef %hostdata.i.i, ptr noundef nonnull %config.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i)
  %tobool124.not.i = icmp eq i32 %call123.i, 0
  br i1 %tobool124.not.i, label %if.end126.i, label %if.then125.i

if.then125.i:                                     ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i, i32 noundef 28703, ptr noundef nonnull @.str.47) #9
  br label %done_free_dma_rsp.i

if.end126.i:                                      ; preds = %if.then119.i
  %97 = ptrtoint ptr %config.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %config.i, align 8
  %99 = and i16 %98, 14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp130.not.i = icmp eq i16 %99, 0
  br i1 %cmp130.not.i, label %if.end133.i, label %if.then132.i

if.then132.i:                                     ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i, i32 noundef 28868, ptr noundef nonnull @.str.48) #9
  br label %done_free_dma_rsp.i

if.end133.i:                                      ; preds = %if.end126.i
  %100 = ptrtoint ptr %options.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %options.i, align 4
  %conv135.i = zext i16 %101 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i, i32 noundef 28864, ptr noundef nonnull @.str.49, i32 noundef %conv135.i) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 242, i16 %101)
  %cmp138.i = icmp eq i16 %101, 242
  br i1 %cmp138.i, label %if.then140.i, label %if.else159.i

if.then140.i:                                     ; preds = %if.end133.i
  %102 = ptrtoint ptr %isp_type105.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %isp_type105.i, align 8
  %104 = and i32 %103, 327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %if.else155.i, label %if.then150.i

if.then150.i:                                     ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #11
  %call154.i = call fastcc i32 @qla81xx_set_loopback_mode(ptr noundef %hostdata.i.i, ptr noundef nonnull %config.i, ptr noundef nonnull %new_config.i, i16 noundef zeroext 242) #9
  br label %if.end164.i

if.else155.i:                                     ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #11
  %call157.i = call fastcc i32 @qla81xx_reset_loopback_mode(ptr noundef %hostdata.i.i, ptr noundef nonnull %config.i, i32 noundef 1, i32 noundef 0) #9
  br label %if.end164.i

if.else159.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #11
  %call163.i = call fastcc i32 @qla81xx_set_loopback_mode(ptr noundef %hostdata.i.i, ptr noundef nonnull %config.i, ptr noundef nonnull %new_config.i, i16 noundef zeroext %101) #9
  br label %if.end164.i

if.end164.i:                                      ; preds = %if.else159.i, %if.else155.i, %if.then150.i
  %rval.0.i = phi i32 [ %call154.i, %if.then150.i ], [ %call157.i, %if.else155.i ], [ %call163.i, %if.else159.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.0.i)
  %tobool165.not.i = icmp eq i32 %rval.0.i, 0
  br i1 %tobool165.not.i, label %if.end167.i, label %if.end164.i.done_free_dma_rsp.i_crit_edge

if.end164.i.done_free_dma_rsp.i_crit_edge:        ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_free_dma_rsp.i

if.end167.i:                                      ; preds = %if.end164.i
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i, i32 noundef 28712, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.50) #9
  %call169.i = call i32 @qla2x00_loopback_test(ptr noundef %hostdata.i.i, ptr noundef nonnull %elreq.i, ptr noundef nonnull %response.i) #9
  %106 = ptrtoint ptr %response.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %response.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16389, i16 %107)
  %cmp172.i = icmp eq i16 %107, 16389
  br i1 %cmp172.i, label %land.lhs.true174.i, label %if.end167.i.if.end192.i_crit_edge

if.end167.i.if.end192.i_crit_edge:                ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192.i

land.lhs.true174.i:                               ; preds = %if.end167.i
  %arrayidx175.i = getelementptr inbounds [32 x i16], ptr %response.i, i32 0, i32 1
  %108 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx175.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %109)
  %cmp177.i = icmp eq i16 %109, 23
  br i1 %cmp177.i, label %if.then179.i, label %land.lhs.true174.i.if.end192.i_crit_edge

land.lhs.true174.i.if.end192.i_crit_edge:         ; preds = %land.lhs.true174.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192.i

if.then179.i:                                     ; preds = %land.lhs.true174.i
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i, i32 noundef 28713, ptr noundef nonnull @.str.51) #9
  %dpc_flags.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 5, i32 5, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags.i) #9
  call void @qla2xxx_wake_dpc(ptr noundef %hostdata.i.i) #9
  %call180.i = call i32 @qla2x00_wait_for_chip_reset(ptr noundef %hostdata.i.i) #9
  %110 = ptrtoint ptr %isp_type105.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %isp_type105.i, align 8
  %and183.i = and i32 %111, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183.i)
  %tobool184.not.i = icmp eq i32 %and183.i, 0
  br i1 %tobool184.not.i, label %if.then179.i.done_free_dma_rsp.i_crit_edge, label %if.then185.i

if.then179.i.done_free_dma_rsp.i_crit_edge:       ; preds = %if.then179.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_free_dma_rsp.i

if.then185.i:                                     ; preds = %if.then179.i
  %call186.i = call i32 @qla81xx_restart_mpi_firmware(ptr noundef %hostdata.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186.i)
  %cmp187.not.i = icmp eq i32 %call186.i, 0
  br i1 %cmp187.not.i, label %if.then185.i.done_free_dma_rsp.i_crit_edge, label %if.then189.i

if.then185.i.done_free_dma_rsp.i_crit_edge:       ; preds = %if.then185.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_free_dma_rsp.i

if.then189.i:                                     ; preds = %if.then185.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i, i32 noundef 28714, ptr noundef nonnull @.str.52) #9
  br label %done_free_dma_rsp.i

if.end192.i:                                      ; preds = %land.lhs.true174.i.if.end192.i_crit_edge, %if.end167.i.if.end192.i_crit_edge
  %112 = ptrtoint ptr %new_config.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %new_config.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool194.not.i = icmp eq i16 %113, 0
  br i1 %tobool194.not.i, label %if.end192.i.if.end207.i_crit_edge, label %if.then195.i

if.end192.i.if.end207.i_crit_edge:                ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207.i

if.then195.i:                                     ; preds = %if.end192.i
  %call197.i = call fastcc i32 @qla81xx_reset_loopback_mode(ptr noundef %hostdata.i.i, ptr noundef nonnull %new_config.i, i32 noundef 0, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197.i)
  %tobool198.not.i = icmp eq i32 %call197.i, 0
  br i1 %tobool198.not.i, label %if.then195.i.if.end207.i_crit_edge, label %if.then199.i

if.then195.i.if.end207.i_crit_edge:               ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207.i

if.then199.i:                                     ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @qla2xxx_dump_fw(ptr noundef %hostdata.i.i) #9
  %dpc_flags200.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 5, i32 5, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags200.i) #9
  br label %if.end207.i

if.else203.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i, i32 noundef 28715, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.50) #9
  %call205.i = call i32 @qla2x00_loopback_test(ptr noundef %hostdata.i.i, ptr noundef nonnull %elreq.i, ptr noundef nonnull %response.i) #9
  br label %if.end207.i

if.end207.i:                                      ; preds = %if.else203.i, %if.then199.i, %if.then195.i.if.end207.i_crit_edge, %if.end192.i.if.end207.i_crit_edge, %if.then103.i
  %rval.1.i = phi i32 [ %call104.i, %if.then103.i ], [ %call169.i, %if.end192.i.if.end207.i_crit_edge ], [ %call205.i, %if.else203.i ], [ %call169.i, %if.then199.i ], [ %call169.i, %if.then195.i.if.end207.i_crit_edge ]
  %command_sent.0.i = phi i8 [ 1, %if.then103.i ], [ 0, %if.end192.i.if.end207.i_crit_edge ], [ 0, %if.else203.i ], [ 0, %if.then199.i ], [ 0, %if.then195.i.if.end207.i_crit_edge ]
  %type.0.i = phi ptr [ @.str.45, %if.then103.i ], [ @.str.50, %if.end192.i.if.end207.i_crit_edge ], [ @.str.50, %if.else203.i ], [ @.str.50, %if.then199.i ], [ @.str.50, %if.then195.i.if.end207.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.1.i)
  %tobool208.not.i = icmp eq i32 %rval.1.i, 0
  br i1 %tobool208.not.i, label %if.else210.i, label %if.then209.i

if.then209.i:                                     ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i, i32 noundef 28716, ptr noundef nonnull @.str.53, ptr noundef nonnull %type.0.i) #9
  %114 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 458752, ptr %10, align 4
  %reply_payload_rcv_len.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %10, i32 0, i32 1
  %115 = ptrtoint ptr %reply_payload_rcv_len.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %reply_payload_rcv_len.i, align 4
  br label %if.end217.i

if.else210.i:                                     ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i, i32 noundef 28717, ptr noundef nonnull @.str.54, ptr noundef nonnull %type.0.i) #9
  %116 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %10, align 4
  %117 = ptrtoint ptr %sg_list12.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sg_list12.i, align 4
  %119 = ptrtoint ptr %sg_cnt14.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %sg_cnt14.i, align 4
  %call216.i = call i32 @sg_copy_from_buffer(ptr noundef %118, i32 noundef %120, ptr noundef nonnull %call.i365.i, i32 noundef %54) #9
  br label %if.end217.i

if.end217.i:                                      ; preds = %if.else210.i, %if.then209.i
  %reply_len.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %121 = ptrtoint ptr %reply_len.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 81, ptr %reply_len.i, align 4
  %122 = ptrtoint ptr %reply.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reply.i, align 4
  %add.ptr.i = getelementptr i8, ptr %123, i32 16
  %124 = call ptr @memcpy(ptr %add.ptr.i, ptr %response.i, i32 64)
  %add.ptr222.i = getelementptr i8, ptr %123, i32 80
  %125 = ptrtoint ptr %add.ptr222.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %command_sent.0.i, ptr %add.ptr222.i, align 1
  br label %done_free_dma_rsp.i

done_free_dma_rsp.i:                              ; preds = %if.end217.i, %if.then189.i, %if.then185.i.done_free_dma_rsp.i_crit_edge, %if.then179.i.done_free_dma_rsp.i_crit_edge, %if.end164.i.done_free_dma_rsp.i_crit_edge, %if.then132.i, %if.then125.i
  %rval.3.i = phi i32 [ 0, %if.end217.i ], [ -1, %if.then125.i ], [ -11, %if.then132.i ], [ -1, %if.end164.i.done_free_dma_rsp.i_crit_edge ], [ -5, %if.then185.i.done_free_dma_rsp.i_crit_edge ], [ -5, %if.then189.i ], [ -5, %if.then179.i.done_free_dma_rsp.i_crit_edge ]
  %126 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %22, align 128
  %dev224.i = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 44
  %128 = ptrtoint ptr %rsp_data_dma.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rsp_data_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev224.i, i32 noundef %54, ptr noundef nonnull %call.i365.i, i32 noundef %129, i32 noundef 0) #9
  br label %done_free_dma_req.i

done_free_dma_req.i:                              ; preds = %done_free_dma_rsp.i, %if.then55.i
  %rval.4.i = phi i32 [ %rval.3.i, %done_free_dma_rsp.i ], [ -12, %if.then55.i ]
  %130 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %22, align 128
  %dev226.i = getelementptr inbounds %struct.pci_dev, ptr %131, i32 0, i32 44
  %132 = ptrtoint ptr %req_data_dma.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %req_data_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev226.i, i32 noundef %54, ptr noundef nonnull %call.i364.i, i32 noundef %133, i32 noundef 0) #9
  br label %done_unmap_sg.i

done_unmap_sg.i:                                  ; preds = %done_free_dma_req.i, %if.then49.i, %if.then34.i
  %rval.5.i = phi i32 [ -11, %if.then34.i ], [ %rval.4.i, %done_free_dma_req.i ], [ -12, %if.then49.i ]
  %134 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %22, align 128
  %dev228.i = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 44
  %136 = ptrtoint ptr %sg_list12.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sg_list12.i, align 4
  %138 = ptrtoint ptr %sg_cnt14.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %sg_cnt14.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev228.i, ptr noundef %137, i32 noundef %139, i32 noundef 2, i32 noundef 0) #9
  br label %done_unmap_req_sg.i

done_unmap_req_sg.i:                              ; preds = %done_unmap_sg.i, %if.then19.i
  %rval.6.i = phi i32 [ %rval.5.i, %done_unmap_sg.i ], [ -12, %if.then19.i ]
  %140 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %22, align 128
  %dev234.i = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 44
  %142 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sg_list.i, align 4
  %144 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sg_cnt.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev234.i, ptr noundef %143, i32 noundef %145, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.6.i)
  %tobool239.not.i = icmp eq i32 %rval.6.i, 0
  br i1 %tobool239.not.i, label %if.then240.i, label %done_unmap_req_sg.i.qla2x00_process_loopback.exit_crit_edge

done_unmap_req_sg.i.qla2x00_process_loopback.exit_crit_edge: ; preds = %done_unmap_req_sg.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_process_loopback.exit

if.then240.i:                                     ; preds = %done_unmap_req_sg.i
  call void @__sanitizer_cov_trace_pc() #11
  %146 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %10, align 4
  %reply_payload_rcv_len242.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %10, i32 0, i32 1
  %148 = ptrtoint ptr %reply_payload_rcv_len242.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %reply_payload_rcv_len242.i, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %147, i32 noundef %149) #9
  br label %qla2x00_process_loopback.exit

qla2x00_process_loopback.exit:                    ; preds = %if.then240.i, %done_unmap_req_sg.i.qla2x00_process_loopback.exit_crit_edge, %if.then6.i, %if.then.i
  %retval.0.i = phi i32 [ -12, %if.then6.i ], [ -5, %if.then.i ], [ 0, %if.then240.i ], [ %rval.6.i, %done_unmap_req_sg.i.qla2x00_process_loopback.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp_data_dma.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req_data_dma.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_config.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %config.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %elreq.i) #9
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %150 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %request, align 4
  %152 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bsg_job, align 4
  %call.i.i91 = tail call i32 @scsi_is_host_device(ptr noundef %153) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i91)
  %tobool.not.i.i92 = icmp eq i32 %call.i.i91, 0
  %154 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i92, label %if.end.i.i103, label %sw.bb4.while.cond.i.i.i96_crit_edge

sw.bb4.while.cond.i.i.i96_crit_edge:              ; preds = %sw.bb4
  br label %while.cond.i.i.i96

while.cond.i.i.i96:                               ; preds = %while.body.i.i.i99.while.cond.i.i.i96_crit_edge, %sw.bb4.while.cond.i.i.i96_crit_edge
  %dev.addr.0.i.i.i93 = phi ptr [ %157, %while.body.i.i.i99.while.cond.i.i.i96_crit_edge ], [ %155, %sw.bb4.while.cond.i.i.i96_crit_edge ]
  %call.i.i.i94 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i93) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i94)
  %tobool.not.i.i.i95 = icmp eq i32 %call.i.i.i94, 0
  br i1 %tobool.not.i.i.i95, label %while.body.i.i.i99, label %while.end.i.i.i101

while.body.i.i.i99:                               ; preds = %while.cond.i.i.i96
  %parent.i.i.i97 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i93, i32 0, i32 1
  %156 = ptrtoint ptr %parent.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %parent.i.i.i97, align 8
  %tobool1.not.i.i.i98 = icmp eq ptr %157, null
  br i1 %tobool1.not.i.i.i98, label %while.body.i.i.i99.fc_bsg_to_shost.exit.i119_crit_edge, label %while.body.i.i.i99.while.cond.i.i.i96_crit_edge

while.body.i.i.i99.while.cond.i.i.i96_crit_edge:  ; preds = %while.body.i.i.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i96

while.body.i.i.i99.fc_bsg_to_shost.exit.i119_crit_edge: ; preds = %while.body.i.i.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i119

while.end.i.i.i101:                               ; preds = %while.cond.i.i.i96
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i100 = getelementptr i8, ptr %dev.addr.0.i.i.i93, i32 -584
  br label %fc_bsg_to_shost.exit.i119

if.end.i.i103:                                    ; preds = %sw.bb4
  %parent.i.i102 = getelementptr inbounds %struct.device, ptr %155, i32 0, i32 1
  %158 = ptrtoint ptr %parent.i.i102 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %parent.i.i102, align 8
  br label %while.cond.i11.i.i107

while.cond.i11.i.i107:                            ; preds = %while.body.i14.i.i110.while.cond.i11.i.i107_crit_edge, %if.end.i.i103
  %dev.addr.0.i8.i.i104 = phi ptr [ %159, %if.end.i.i103 ], [ %161, %while.body.i14.i.i110.while.cond.i11.i.i107_crit_edge ]
  %call.i9.i.i105 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i104) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i105)
  %tobool.not.i10.i.i106 = icmp eq i32 %call.i9.i.i105, 0
  br i1 %tobool.not.i10.i.i106, label %while.body.i14.i.i110, label %while.end.i16.i.i112

while.body.i14.i.i110:                            ; preds = %while.cond.i11.i.i107
  %parent.i12.i.i108 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i104, i32 0, i32 1
  %160 = ptrtoint ptr %parent.i12.i.i108 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %parent.i12.i.i108, align 8
  %tobool1.not.i13.i.i109 = icmp eq ptr %161, null
  br i1 %tobool1.not.i13.i.i109, label %while.body.i14.i.i110.fc_bsg_to_shost.exit.i119_crit_edge, label %while.body.i14.i.i110.while.cond.i11.i.i107_crit_edge

while.body.i14.i.i110.while.cond.i11.i.i107_crit_edge: ; preds = %while.body.i14.i.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i107

while.body.i14.i.i110.fc_bsg_to_shost.exit.i119_crit_edge: ; preds = %while.body.i14.i.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i119

while.end.i16.i.i112:                             ; preds = %while.cond.i11.i.i107
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i111 = getelementptr i8, ptr %dev.addr.0.i8.i.i104, i32 -584
  br label %fc_bsg_to_shost.exit.i119

fc_bsg_to_shost.exit.i119:                        ; preds = %while.end.i16.i.i112, %while.body.i14.i.i110.fc_bsg_to_shost.exit.i119_crit_edge, %while.end.i.i.i101, %while.body.i.i.i99.fc_bsg_to_shost.exit.i119_crit_edge
  %retval.0.i.i113 = phi ptr [ %add.ptr.i.i.i100, %while.end.i.i.i101 ], [ %add.ptr.i15.i.i111, %while.end.i16.i.i112 ], [ null, %while.body.i14.i.i110.fc_bsg_to_shost.exit.i119_crit_edge ], [ null, %while.body.i.i.i99.fc_bsg_to_shost.exit.i119_crit_edge ]
  %reply.i114 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %162 = ptrtoint ptr %reply.i114 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %reply.i114, align 4
  %hostdata.i.i115 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i113, i32 0, i32 53
  %hw.i116 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i115, i32 0, i32 52
  %164 = ptrtoint ptr %hw.i116 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hw.i116, align 4
  %isp_type.i117 = getelementptr inbounds %struct.qla_hw_data, ptr %165, i32 0, i32 54
  %166 = ptrtoint ptr %isp_type.i117 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %isp_type.i117, align 8
  %and2.i = and i32 %167, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i118 = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i118, label %if.then.i120, label %if.end.i123

if.then.i120:                                     ; preds = %fc_bsg_to_shost.exit.i119
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i115, i32 noundef 28719, ptr noundef nonnull @.str.63) #9
  br label %cleanup

if.end.i123:                                      ; preds = %fc_bsg_to_shost.exit.i119
  %arrayidx.i121 = getelementptr %struct.fc_bsg_request, ptr %151, i32 0, i32 1, i32 1, i32 4
  %168 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %arrayidx.i121, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %169)
  %cmp.i = icmp eq i32 %169, 4
  %conv3.i = zext i1 %cmp.i to i16
  %call4.i = tail call i32 @qla84xx_reset_chip(ptr noundef %hostdata.i.i115, i16 noundef zeroext %conv3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i122 = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i122, label %if.else.i126, label %if.then6.i124

if.then6.i124:                                    ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i115, i32 noundef 28720, ptr noundef nonnull @.str.64) #9
  br label %cleanup

if.else.i126:                                     ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i115, i32 noundef 28721, ptr noundef nonnull @.str.65) #9
  %170 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %163, align 4
  %reply_payload_rcv_len.i125 = getelementptr inbounds %struct.fc_bsg_reply, ptr %163, i32 0, i32 1
  %171 = ptrtoint ptr %reply_payload_rcv_len.i125 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %reply_payload_rcv_len.i125, align 4
  tail call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %172) #9
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %173 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %request, align 4
  %reply.i129 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %175 = ptrtoint ptr %reply.i129 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %reply.i129, align 4
  %177 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %bsg_job, align 4
  %call.i.i130 = tail call i32 @scsi_is_host_device(ptr noundef %178) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i130)
  %tobool.not.i.i131 = icmp eq i32 %call.i.i130, 0
  %179 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i131, label %if.end.i.i142, label %sw.bb6.while.cond.i.i.i135_crit_edge

sw.bb6.while.cond.i.i.i135_crit_edge:             ; preds = %sw.bb6
  br label %while.cond.i.i.i135

while.cond.i.i.i135:                              ; preds = %while.body.i.i.i138.while.cond.i.i.i135_crit_edge, %sw.bb6.while.cond.i.i.i135_crit_edge
  %dev.addr.0.i.i.i132 = phi ptr [ %182, %while.body.i.i.i138.while.cond.i.i.i135_crit_edge ], [ %180, %sw.bb6.while.cond.i.i.i135_crit_edge ]
  %call.i.i.i133 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i132) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i133)
  %tobool.not.i.i.i134 = icmp eq i32 %call.i.i.i133, 0
  br i1 %tobool.not.i.i.i134, label %while.body.i.i.i138, label %while.end.i.i.i140

while.body.i.i.i138:                              ; preds = %while.cond.i.i.i135
  %parent.i.i.i136 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i132, i32 0, i32 1
  %181 = ptrtoint ptr %parent.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %parent.i.i.i136, align 8
  %tobool1.not.i.i.i137 = icmp eq ptr %182, null
  br i1 %tobool1.not.i.i.i137, label %while.body.i.i.i138.fc_bsg_to_shost.exit.i158_crit_edge, label %while.body.i.i.i138.while.cond.i.i.i135_crit_edge

while.body.i.i.i138.while.cond.i.i.i135_crit_edge: ; preds = %while.body.i.i.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i135

while.body.i.i.i138.fc_bsg_to_shost.exit.i158_crit_edge: ; preds = %while.body.i.i.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i158

while.end.i.i.i140:                               ; preds = %while.cond.i.i.i135
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i139 = getelementptr i8, ptr %dev.addr.0.i.i.i132, i32 -584
  br label %fc_bsg_to_shost.exit.i158

if.end.i.i142:                                    ; preds = %sw.bb6
  %parent.i.i141 = getelementptr inbounds %struct.device, ptr %180, i32 0, i32 1
  %183 = ptrtoint ptr %parent.i.i141 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %parent.i.i141, align 8
  br label %while.cond.i11.i.i146

while.cond.i11.i.i146:                            ; preds = %while.body.i14.i.i149.while.cond.i11.i.i146_crit_edge, %if.end.i.i142
  %dev.addr.0.i8.i.i143 = phi ptr [ %184, %if.end.i.i142 ], [ %186, %while.body.i14.i.i149.while.cond.i11.i.i146_crit_edge ]
  %call.i9.i.i144 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i143) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i144)
  %tobool.not.i10.i.i145 = icmp eq i32 %call.i9.i.i144, 0
  br i1 %tobool.not.i10.i.i145, label %while.body.i14.i.i149, label %while.end.i16.i.i151

while.body.i14.i.i149:                            ; preds = %while.cond.i11.i.i146
  %parent.i12.i.i147 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i143, i32 0, i32 1
  %185 = ptrtoint ptr %parent.i12.i.i147 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %parent.i12.i.i147, align 8
  %tobool1.not.i13.i.i148 = icmp eq ptr %186, null
  br i1 %tobool1.not.i13.i.i148, label %while.body.i14.i.i149.fc_bsg_to_shost.exit.i158_crit_edge, label %while.body.i14.i.i149.while.cond.i11.i.i146_crit_edge

while.body.i14.i.i149.while.cond.i11.i.i146_crit_edge: ; preds = %while.body.i14.i.i149
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i146

while.body.i14.i.i149.fc_bsg_to_shost.exit.i158_crit_edge: ; preds = %while.body.i14.i.i149
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i158

while.end.i16.i.i151:                             ; preds = %while.cond.i11.i.i146
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i150 = getelementptr i8, ptr %dev.addr.0.i8.i.i143, i32 -584
  br label %fc_bsg_to_shost.exit.i158

fc_bsg_to_shost.exit.i158:                        ; preds = %while.end.i16.i.i151, %while.body.i14.i.i149.fc_bsg_to_shost.exit.i158_crit_edge, %while.end.i.i.i140, %while.body.i.i.i138.fc_bsg_to_shost.exit.i158_crit_edge
  %retval.0.i.i152 = phi ptr [ %add.ptr.i.i.i139, %while.end.i.i.i140 ], [ %add.ptr.i15.i.i150, %while.end.i16.i.i151 ], [ null, %while.body.i14.i.i149.fc_bsg_to_shost.exit.i158_crit_edge ], [ null, %while.body.i.i.i138.fc_bsg_to_shost.exit.i158_crit_edge ]
  %hostdata.i.i153 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i152, i32 0, i32 53
  %hw.i154 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i153, i32 0, i32 52
  %187 = ptrtoint ptr %hw.i154 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %hw.i154, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mn_dma.i) #9
  %189 = ptrtoint ptr %mn_dma.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 -1, ptr %mn_dma.i, align 4, !annotation !234
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_dma.i) #9
  %190 = ptrtoint ptr %fw_dma.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 -1, ptr %fw_dma.i, align 4, !annotation !234
  %isp_type.i155 = getelementptr inbounds %struct.qla_hw_data, ptr %188, i32 0, i32 54
  %191 = ptrtoint ptr %isp_type.i155 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %isp_type.i155, align 8
  %and2.i156 = and i32 %192, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i156)
  %tobool.not.i157 = icmp eq i32 %and2.i156, 0
  br i1 %tobool.not.i157, label %if.then.i159, label %if.end.i163

if.then.i159:                                     ; preds = %fc_bsg_to_shost.exit.i158
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i153, i32 noundef 28722, ptr noundef nonnull @.str.63) #9
  br label %qla84xx_updatefw.exit

if.end.i163:                                      ; preds = %fc_bsg_to_shost.exit.i158
  %193 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %188, align 128
  %dev.i160 = getelementptr inbounds %struct.pci_dev, ptr %194, i32 0, i32 44
  %request_payload.i161 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7
  %sg_list.i162 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %195 = ptrtoint ptr %sg_list.i162 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %sg_list.i162, align 4
  %sg_cnt4.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %197 = ptrtoint ptr %sg_cnt4.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %sg_cnt4.i, align 4
  %call5.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev.i160, ptr noundef %196, i32 noundef %198, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i153, i32 noundef 28723, ptr noundef nonnull @.str.40, i32 noundef 0) #9
  br label %qla84xx_updatefw.exit

if.end8.i:                                        ; preds = %if.end.i163
  %199 = ptrtoint ptr %sg_cnt4.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %sg_cnt4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %200)
  %cmp.not.i164 = icmp eq i32 %call5.i, %200
  br i1 %cmp.not.i164, label %if.end14.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i153, i32 noundef 28724, ptr noundef nonnull @.str.66, i32 noundef %200, i32 noundef %call5.i) #9
  br label %done_unmap_sg.i173

if.end14.i:                                       ; preds = %if.end8.i
  %201 = ptrtoint ptr %request_payload.i161 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %request_payload.i161, align 4
  %203 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %188, align 128
  %dev17.i = getelementptr inbounds %struct.pci_dev, ptr %204, i32 0, i32 44
  %call.i125.i = call ptr @dma_alloc_attrs(ptr noundef %dev17.i, i32 noundef %202, ptr noundef nonnull %fw_dma.i, i32 noundef 3264, i32 noundef 0) #9
  %tobool19.not.i = icmp eq ptr %call.i125.i, null
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end21.i

if.then20.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i153, i32 noundef 28725, ptr noundef nonnull @.str.67) #9
  br label %done_unmap_sg.i173

if.end21.i:                                       ; preds = %if.end14.i
  %205 = ptrtoint ptr %sg_list.i162 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %sg_list.i162, align 4
  %207 = ptrtoint ptr %sg_cnt4.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %sg_cnt4.i, align 4
  %call26.i = call i32 @sg_copy_to_buffer(ptr noundef %206, i32 noundef %208, ptr noundef nonnull %call.i125.i, i32 noundef %202) #9
  %s_dma_pool.i = getelementptr inbounds %struct.qla_hw_data, ptr %188, i32 0, i32 96
  %209 = ptrtoint ptr %s_dma_pool.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %s_dma_pool.i, align 4
  %call.i126.i = call ptr @dma_pool_alloc(ptr noundef %210, i32 noundef 3520, ptr noundef nonnull %mn_dma.i) #9
  %tobool28.not.i = icmp eq ptr %call.i126.i, null
  br i1 %tobool28.not.i, label %if.then29.i, label %if.end30.i

if.then29.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i153, i32 noundef 28726, ptr noundef nonnull @.str.68) #9
  br label %done_free_fw_buf.i

if.end30.i:                                       ; preds = %if.end21.i
  %arrayidx.i165 = getelementptr %struct.fc_bsg_request, ptr %174, i32 0, i32 1, i32 1, i32 4
  %211 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %212 = load i32, ptr %arrayidx.i165, align 1
  %add.ptr.i166 = getelementptr i32, ptr %call.i125.i, i32 2
  %213 = ptrtoint ptr %add.ptr.i166 to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %214 = load i32, ptr %add.ptr.i166, align 1
  %215 = ptrtoint ptr %call.i126.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 27, ptr %call.i126.i, align 4
  %entry_count.i = getelementptr inbounds %struct.verify_chip_entry_84xx, ptr %call.i126.i, i32 0, i32 1
  %216 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 1, ptr %entry_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %212)
  %cmp32.i = icmp eq i32 %212, 6
  %spec.select.i = select i1 %cmp32.i, i16 16394, i16 16386
  %217 = call i16 @llvm.bswap.i16(i16 %spec.select.i) #9
  %options36.i = getelementptr inbounds %struct.verify_chip_entry_84xx, ptr %call.i126.i, i32 0, i32 5
  %218 = ptrtoint ptr %options36.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %217, ptr %options36.i, align 4
  %fw_ver37.i = getelementptr inbounds %struct.verify_chip_entry_84xx, ptr %call.i126.i, i32 0, i32 9
  %219 = ptrtoint ptr %fw_ver37.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %214, ptr %fw_ver37.i, align 4
  %220 = call i32 @llvm.bswap.i32(i32 %202) #9
  %fw_size.i = getelementptr inbounds %struct.verify_chip_entry_84xx, ptr %call.i126.i, i32 0, i32 12
  %221 = ptrtoint ptr %fw_size.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %fw_size.i, align 4
  %fw_seq_size.i = getelementptr inbounds %struct.verify_chip_entry_84xx, ptr %call.i126.i, i32 0, i32 13
  %222 = ptrtoint ptr %fw_seq_size.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %220, ptr %fw_seq_size.i, align 4
  %223 = ptrtoint ptr %fw_dma.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %fw_dma.i, align 4
  %conv38.i = zext i32 %224 to i64
  %dsd.i = getelementptr inbounds %struct.verify_chip_entry_84xx, ptr %call.i126.i, i32 0, i32 15
  %225 = call i64 @llvm.bswap.i64(i64 %conv38.i) #9
  %226 = ptrtoint ptr %dsd.i to i32
  call void @__asan_storeN_noabort(i32 %226, i32 8)
  store i64 %225, ptr %dsd.i, align 1
  %length.i = getelementptr inbounds %struct.verify_chip_entry_84xx, ptr %call.i126.i, i32 0, i32 15, i32 1
  %227 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %220, ptr %length.i, align 4
  %data_seg_cnt.i = getelementptr inbounds %struct.verify_chip_entry_84xx, ptr %call.i126.i, i32 0, i32 7
  %228 = ptrtoint ptr %data_seg_cnt.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 256, ptr %data_seg_cnt.i, align 4
  %229 = ptrtoint ptr %mn_dma.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %mn_dma.i, align 4
  %call40.i = call i32 @qla2x00_issue_iocb_timeout(ptr noundef %hostdata.i.i153, ptr noundef nonnull %call.i126.i, i32 noundef %230, i32 noundef 0, i32 noundef 120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.else.i168, label %if.then42.i

if.then42.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i153, i32 noundef 28727, ptr noundef nonnull @.str.69) #9
  br label %if.end43.i170

if.else.i168:                                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i153, i32 noundef 28728, ptr noundef nonnull @.str.70) #9
  %reply_len.i167 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %231 = ptrtoint ptr %reply_len.i167 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 16, ptr %reply_len.i167, align 4
  %232 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 0, ptr %176, align 4
  br label %if.end43.i170

if.end43.i170:                                    ; preds = %if.else.i168, %if.then42.i
  %rval.0.i169 = phi i32 [ 458752, %if.then42.i ], [ 0, %if.else.i168 ]
  %233 = ptrtoint ptr %s_dma_pool.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %s_dma_pool.i, align 4
  %235 = ptrtoint ptr %mn_dma.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %mn_dma.i, align 4
  call void @dma_pool_free(ptr noundef %234, ptr noundef nonnull %call.i126.i, i32 noundef %236) #9
  br label %done_free_fw_buf.i

done_free_fw_buf.i:                               ; preds = %if.end43.i170, %if.then29.i
  %rval.1.i171 = phi i32 [ %rval.0.i169, %if.end43.i170 ], [ -12, %if.then29.i ]
  %237 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %188, align 128
  %dev46.i172 = getelementptr inbounds %struct.pci_dev, ptr %238, i32 0, i32 44
  %239 = ptrtoint ptr %fw_dma.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %fw_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev46.i172, i32 noundef %202, ptr noundef nonnull %call.i125.i, i32 noundef %240, i32 noundef 0) #9
  br label %done_unmap_sg.i173

done_unmap_sg.i173:                               ; preds = %done_free_fw_buf.i, %if.then20.i, %if.then11.i
  %rval.2.i = phi i32 [ -11, %if.then11.i ], [ %rval.1.i171, %done_free_fw_buf.i ], [ -12, %if.then20.i ]
  %241 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %188, align 128
  %dev48.i = getelementptr inbounds %struct.pci_dev, ptr %242, i32 0, i32 44
  %243 = ptrtoint ptr %sg_list.i162 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %sg_list.i162, align 4
  %245 = ptrtoint ptr %sg_cnt4.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %sg_cnt4.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev48.i, ptr noundef %244, i32 noundef %246, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.2.i)
  %tobool53.not.i = icmp eq i32 %rval.2.i, 0
  br i1 %tobool53.not.i, label %if.then54.i, label %done_unmap_sg.i173.qla84xx_updatefw.exit_crit_edge

done_unmap_sg.i173.qla84xx_updatefw.exit_crit_edge: ; preds = %done_unmap_sg.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla84xx_updatefw.exit

if.then54.i:                                      ; preds = %done_unmap_sg.i173
  call void @__sanitizer_cov_trace_pc() #11
  %247 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %176, align 4
  %reply_payload_rcv_len.i174 = getelementptr inbounds %struct.fc_bsg_reply, ptr %176, i32 0, i32 1
  %249 = ptrtoint ptr %reply_payload_rcv_len.i174 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %reply_payload_rcv_len.i174, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %248, i32 noundef %250) #9
  br label %qla84xx_updatefw.exit

qla84xx_updatefw.exit:                            ; preds = %if.then54.i, %done_unmap_sg.i173.qla84xx_updatefw.exit_crit_edge, %if.then7.i, %if.then.i159
  %retval.0.i175 = phi i32 [ -12, %if.then7.i ], [ -22, %if.then.i159 ], [ 0, %if.then54.i ], [ %rval.2.i, %done_unmap_sg.i173.qla84xx_updatefw.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_dma.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mn_dma.i) #9
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %251 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %request, align 4
  %reply.i178 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %253 = ptrtoint ptr %reply.i178 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %reply.i178, align 4
  %255 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %bsg_job, align 4
  %call.i.i179 = tail call i32 @scsi_is_host_device(ptr noundef %256) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i179)
  %tobool.not.i.i180 = icmp eq i32 %call.i.i179, 0
  %257 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i180, label %if.end.i.i191, label %sw.bb8.while.cond.i.i.i184_crit_edge

sw.bb8.while.cond.i.i.i184_crit_edge:             ; preds = %sw.bb8
  br label %while.cond.i.i.i184

while.cond.i.i.i184:                              ; preds = %while.body.i.i.i187.while.cond.i.i.i184_crit_edge, %sw.bb8.while.cond.i.i.i184_crit_edge
  %dev.addr.0.i.i.i181 = phi ptr [ %260, %while.body.i.i.i187.while.cond.i.i.i184_crit_edge ], [ %258, %sw.bb8.while.cond.i.i.i184_crit_edge ]
  %call.i.i.i182 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i181) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i182)
  %tobool.not.i.i.i183 = icmp eq i32 %call.i.i.i182, 0
  br i1 %tobool.not.i.i.i183, label %while.body.i.i.i187, label %while.end.i.i.i189

while.body.i.i.i187:                              ; preds = %while.cond.i.i.i184
  %parent.i.i.i185 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i181, i32 0, i32 1
  %259 = ptrtoint ptr %parent.i.i.i185 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %parent.i.i.i185, align 8
  %tobool1.not.i.i.i186 = icmp eq ptr %260, null
  br i1 %tobool1.not.i.i.i186, label %while.body.i.i.i187.fc_bsg_to_shost.exit.i207_crit_edge, label %while.body.i.i.i187.while.cond.i.i.i184_crit_edge

while.body.i.i.i187.while.cond.i.i.i184_crit_edge: ; preds = %while.body.i.i.i187
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i184

while.body.i.i.i187.fc_bsg_to_shost.exit.i207_crit_edge: ; preds = %while.body.i.i.i187
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i207

while.end.i.i.i189:                               ; preds = %while.cond.i.i.i184
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i188 = getelementptr i8, ptr %dev.addr.0.i.i.i181, i32 -584
  br label %fc_bsg_to_shost.exit.i207

if.end.i.i191:                                    ; preds = %sw.bb8
  %parent.i.i190 = getelementptr inbounds %struct.device, ptr %258, i32 0, i32 1
  %261 = ptrtoint ptr %parent.i.i190 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %parent.i.i190, align 8
  br label %while.cond.i11.i.i195

while.cond.i11.i.i195:                            ; preds = %while.body.i14.i.i198.while.cond.i11.i.i195_crit_edge, %if.end.i.i191
  %dev.addr.0.i8.i.i192 = phi ptr [ %262, %if.end.i.i191 ], [ %264, %while.body.i14.i.i198.while.cond.i11.i.i195_crit_edge ]
  %call.i9.i.i193 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i192) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i193)
  %tobool.not.i10.i.i194 = icmp eq i32 %call.i9.i.i193, 0
  br i1 %tobool.not.i10.i.i194, label %while.body.i14.i.i198, label %while.end.i16.i.i200

while.body.i14.i.i198:                            ; preds = %while.cond.i11.i.i195
  %parent.i12.i.i196 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i192, i32 0, i32 1
  %263 = ptrtoint ptr %parent.i12.i.i196 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %parent.i12.i.i196, align 8
  %tobool1.not.i13.i.i197 = icmp eq ptr %264, null
  br i1 %tobool1.not.i13.i.i197, label %while.body.i14.i.i198.fc_bsg_to_shost.exit.i207_crit_edge, label %while.body.i14.i.i198.while.cond.i11.i.i195_crit_edge

while.body.i14.i.i198.while.cond.i11.i.i195_crit_edge: ; preds = %while.body.i14.i.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i195

while.body.i14.i.i198.fc_bsg_to_shost.exit.i207_crit_edge: ; preds = %while.body.i14.i.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i207

while.end.i16.i.i200:                             ; preds = %while.cond.i11.i.i195
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i199 = getelementptr i8, ptr %dev.addr.0.i8.i.i192, i32 -584
  br label %fc_bsg_to_shost.exit.i207

fc_bsg_to_shost.exit.i207:                        ; preds = %while.end.i16.i.i200, %while.body.i14.i.i198.fc_bsg_to_shost.exit.i207_crit_edge, %while.end.i.i.i189, %while.body.i.i.i187.fc_bsg_to_shost.exit.i207_crit_edge
  %retval.0.i.i201 = phi ptr [ %add.ptr.i.i.i188, %while.end.i.i.i189 ], [ %add.ptr.i15.i.i199, %while.end.i16.i.i200 ], [ null, %while.body.i14.i.i198.fc_bsg_to_shost.exit.i207_crit_edge ], [ null, %while.body.i.i.i187.fc_bsg_to_shost.exit.i207_crit_edge ]
  %hostdata.i.i202 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i201, i32 0, i32 53
  %hw.i203 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i202, i32 0, i32 52
  %265 = ptrtoint ptr %hw.i203 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %hw.i203, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mn_dma.i176) #9
  %267 = ptrtoint ptr %mn_dma.i176 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 -1, ptr %mn_dma.i176, align 4, !annotation !234
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mgmt_dma.i) #9
  %268 = ptrtoint ptr %mgmt_dma.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 -1, ptr %mgmt_dma.i, align 4, !annotation !234
  %isp_type.i204 = getelementptr inbounds %struct.qla_hw_data, ptr %266, i32 0, i32 54
  %269 = ptrtoint ptr %isp_type.i204 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %isp_type.i204, align 8
  %and2.i205 = and i32 %270, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i205)
  %tobool.not.i206 = icmp eq i32 %and2.i205, 0
  br i1 %tobool.not.i206, label %if.then.i208, label %if.end.i210

if.then.i208:                                     ; preds = %fc_bsg_to_shost.exit.i207
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i202, i32 noundef 28730, ptr noundef nonnull @.str.63) #9
  br label %qla84xx_mgmt_cmd.exit

if.end.i210:                                      ; preds = %fc_bsg_to_shost.exit.i207
  %s_dma_pool.i209 = getelementptr inbounds %struct.qla_hw_data, ptr %266, i32 0, i32 96
  %271 = ptrtoint ptr %s_dma_pool.i209 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %s_dma_pool.i209, align 4
  %call.i280.i = call ptr @dma_pool_alloc(ptr noundef %272, i32 noundef 3520, ptr noundef nonnull %mn_dma.i176) #9
  %tobool4.not.i = icmp eq ptr %call.i280.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i202, i32 noundef 28732, ptr noundef nonnull @.str.68) #9
  br label %qla84xx_mgmt_cmd.exit

if.end6.i:                                        ; preds = %if.end.i210
  %273 = ptrtoint ptr %call.i280.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 43, ptr %call.i280.i, align 4
  %entry_count.i211 = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 1
  %274 = ptrtoint ptr %entry_count.i211 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 1, ptr %entry_count.i211, align 1
  %add.ptr.i212 = getelementptr i8, ptr %252, i32 20
  %275 = ptrtoint ptr %add.ptr.i212 to i32
  call void @__asan_loadN_noabort(i32 %275, i32 2)
  %276 = load i16, ptr %add.ptr.i212, align 1
  %277 = zext i16 %276 to i64
  call void @__sanitizer_cov_trace_switch(i64 %277, ptr @__sancov_gen_cov_switch_values.110)
  switch i16 %276, label %if.end6.i.exit_mgmt.i_crit_edge [
    i16 0, label %if.end6.i.sw.bb.i_crit_edge
    i16 3, label %if.end6.i.sw.bb.i_crit_edge1785
    i16 1, label %sw.bb50.i
    i16 2, label %sw.bb87.i
  ]

if.end6.i.sw.bb.i_crit_edge1785:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end6.i.sw.bb.i_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end6.i.exit_mgmt.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_mgmt.i

sw.bb.i:                                          ; preds = %if.end6.i.sw.bb.i_crit_edge, %if.end6.i.sw.bb.i_crit_edge1785
  %278 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %266, align 128
  %dev.i213 = getelementptr inbounds %struct.pci_dev, ptr %279, i32 0, i32 44
  %reply_payload.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8
  %sg_list.i214 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %280 = ptrtoint ptr %sg_list.i214 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %sg_list.i214, align 4
  %sg_cnt8.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %282 = ptrtoint ptr %sg_cnt8.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %sg_cnt8.i, align 4
  %call9.i = call i32 @dma_map_sg_attrs(ptr noundef %dev.i213, ptr noundef %281, i32 noundef %283, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i215, label %if.end12.i

if.then11.i215:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i202, i32 noundef 28733, ptr noundef nonnull @.str.41, i32 noundef 0) #9
  br label %exit_mgmt.i

if.end12.i:                                       ; preds = %sw.bb.i
  %284 = ptrtoint ptr %sg_cnt8.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %sg_cnt8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %285)
  %cmp.not.i216 = icmp eq i32 %call9.i, %285
  br i1 %cmp.not.i216, label %if.end19.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i202, i32 noundef 28734, ptr noundef nonnull @.str.71, i32 noundef %285, i32 noundef %call9.i) #9
  br label %if.then153.i

if.end19.i:                                       ; preds = %if.end12.i
  %286 = ptrtoint ptr %reply_payload.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %reply_payload.i, align 4
  %288 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %266, align 128
  %dev22.i = getelementptr inbounds %struct.pci_dev, ptr %289, i32 0, i32 44
  %call.i281.i = call ptr @dma_alloc_attrs(ptr noundef %dev22.i, i32 noundef %287, ptr noundef nonnull %mgmt_dma.i, i32 noundef 3264, i32 noundef 0) #9
  %tobool24.not.i = icmp eq ptr %call.i281.i, null
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end26.i

if.then25.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i202, i32 noundef 28735, ptr noundef nonnull @.str.72) #9
  br label %if.then153.i

if.end26.i:                                       ; preds = %if.end19.i
  %290 = ptrtoint ptr %add.ptr.i212 to i32
  call void @__asan_loadN_noabort(i32 %290, i32 2)
  %291 = load i16, ptr %add.ptr.i212, align 1
  %292 = zext i16 %291 to i64
  call void @__sanitizer_cov_trace_switch(i64 %292, ptr @__sancov_gen_cov_switch_values.111)
  switch i16 %291, label %if.end26.i.sw.epilog.i_crit_edge [
    i16 0, label %if.then32.i
    i16 3, label %if.then39.i
  ]

if.end26.i.sw.epilog.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then32.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %options.i217 = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 5
  %293 = ptrtoint ptr %options.i217 to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 0, ptr %options.i217, align 4
  %mgmtp.i = getelementptr i8, ptr %252, i32 24
  %294 = ptrtoint ptr %mgmtp.i to i32
  call void @__asan_loadN_noabort(i32 %294, i32 4)
  %295 = load i32, ptr %mgmtp.i, align 1
  %296 = call i32 @llvm.bswap.i32(i32 %295) #9
  %parameter1.i = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 9
  %297 = ptrtoint ptr %parameter1.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %296, ptr %parameter1.i, align 4
  br label %sw.epilogthread-pre-split.i

if.then39.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %options40.i = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 5
  %298 = ptrtoint ptr %options40.i to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 768, ptr %options40.i, align 4
  %mgmtp42.i = getelementptr i8, ptr %252, i32 24
  %299 = ptrtoint ptr %mgmtp42.i to i32
  call void @__asan_loadN_noabort(i32 %299, i32 4)
  %300 = load i32, ptr %mgmtp42.i, align 1
  %301 = call i32 @llvm.bswap.i32(i32 %300) #9
  %parameter144.i = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 9
  %302 = ptrtoint ptr %parameter144.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %301, ptr %parameter144.i, align 4
  %context.i = getelementptr i8, ptr %252, i32 28
  %303 = ptrtoint ptr %context.i to i32
  call void @__asan_loadN_noabort(i32 %303, i32 4)
  %304 = load i32, ptr %context.i, align 1
  %305 = call i32 @llvm.bswap.i32(i32 %304) #9
  %parameter2.i = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 10
  %306 = ptrtoint ptr %parameter2.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %parameter2.i, align 4
  br label %sw.epilogthread-pre-split.i

sw.bb50.i:                                        ; preds = %if.end6.i
  %307 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %266, align 128
  %dev52.i218 = getelementptr inbounds %struct.pci_dev, ptr %308, i32 0, i32 44
  %request_payload.i219 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7
  %sg_list53.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %309 = ptrtoint ptr %sg_list53.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %sg_list53.i, align 4
  %sg_cnt55.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %311 = ptrtoint ptr %sg_cnt55.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %sg_cnt55.i, align 4
  %call56.i = call i32 @dma_map_sg_attrs(ptr noundef %dev52.i218, ptr noundef %310, i32 noundef %312, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.then58.i, label %if.end59.i

if.then58.i:                                      ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i202, i32 noundef 28736, ptr noundef nonnull @.str.73, i32 noundef 0) #9
  br label %exit_mgmt.i

if.end59.i:                                       ; preds = %sw.bb50.i
  %313 = ptrtoint ptr %sg_cnt55.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %sg_cnt55.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call56.i, i32 %314)
  %cmp62.not.i = icmp eq i32 %call56.i, %314
  br i1 %cmp62.not.i, label %if.end67.i, label %if.then64.i

if.then64.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i202, i32 noundef 28737, ptr noundef nonnull @.str.66, i32 noundef %314, i32 noundef %call56.i) #9
  br label %if.then143.i

if.end67.i:                                       ; preds = %if.end59.i
  %315 = ptrtoint ptr %request_payload.i219 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %request_payload.i219, align 4
  %317 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %266, align 128
  %dev71.i = getelementptr inbounds %struct.pci_dev, ptr %318, i32 0, i32 44
  %call.i282.i = call ptr @dma_alloc_attrs(ptr noundef %dev71.i, i32 noundef %316, ptr noundef nonnull %mgmt_dma.i, i32 noundef 3264, i32 noundef 0) #9
  %tobool73.not.i = icmp eq ptr %call.i282.i, null
  br i1 %tobool73.not.i, label %if.then74.i, label %if.end75.i

if.then74.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i202, i32 noundef 28738, ptr noundef nonnull @.str.72) #9
  br label %if.then143.i

if.end75.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  %319 = ptrtoint ptr %sg_list53.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %sg_list53.i, align 4
  %321 = ptrtoint ptr %sg_cnt55.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %sg_cnt55.i, align 4
  %call80.i = call i32 @sg_copy_to_buffer(ptr noundef %320, i32 noundef %322, ptr noundef nonnull %call.i282.i, i32 noundef %316) #9
  %options81.i = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 5
  %323 = ptrtoint ptr %options81.i to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 256, ptr %options81.i, align 4
  %mgmtp83.i = getelementptr i8, ptr %252, i32 24
  %324 = ptrtoint ptr %mgmtp83.i to i32
  call void @__asan_loadN_noabort(i32 %324, i32 4)
  %325 = load i32, ptr %mgmtp83.i, align 1
  %326 = call i32 @llvm.bswap.i32(i32 %325) #9
  %parameter186.i = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 9
  %327 = ptrtoint ptr %parameter186.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %326, ptr %parameter186.i, align 4
  br label %sw.epilogthread-pre-split.i

sw.bb87.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %options88.i = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 5
  %328 = ptrtoint ptr %options88.i to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 512, ptr %options88.i, align 4
  %mgmtp90.i = getelementptr i8, ptr %252, i32 24
  %329 = ptrtoint ptr %mgmtp90.i to i32
  call void @__asan_loadN_noabort(i32 %329, i32 4)
  %330 = load i32, ptr %mgmtp90.i, align 1
  %331 = call i32 @llvm.bswap.i32(i32 %330) #9
  %parameter192.i = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 9
  %332 = ptrtoint ptr %parameter192.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %331, ptr %parameter192.i, align 4
  %param0.i = getelementptr i8, ptr %252, i32 28
  %333 = ptrtoint ptr %param0.i to i32
  call void @__asan_loadN_noabort(i32 %333, i32 4)
  %334 = load i32, ptr %param0.i, align 1
  %335 = call i32 @llvm.bswap.i32(i32 %334) #9
  %parameter296.i = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 10
  %336 = ptrtoint ptr %parameter296.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %335, ptr %parameter296.i, align 4
  %param1.i = getelementptr i8, ptr %252, i32 32
  %337 = ptrtoint ptr %param1.i to i32
  call void @__asan_loadN_noabort(i32 %337, i32 4)
  %338 = load i32, ptr %param1.i, align 1
  %339 = call i32 @llvm.bswap.i32(i32 %338) #9
  %parameter3.i = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 11
  %340 = ptrtoint ptr %parameter3.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %339, ptr %parameter3.i, align 4
  br label %sw.epilogthread-pre-split.i

sw.epilogthread-pre-split.i:                      ; preds = %sw.bb87.i, %if.end75.i, %if.then39.i, %if.then32.i
  %mgmt_b.0.ph.i = phi ptr [ %call.i281.i, %if.then39.i ], [ %call.i281.i, %if.then32.i ], [ %call.i282.i, %if.end75.i ], [ null, %sw.bb87.i ]
  %data_len.0.ph.i = phi i32 [ %287, %if.then39.i ], [ %287, %if.then32.i ], [ %316, %if.end75.i ], [ 0, %sw.bb87.i ]
  %dma_direction.0.ph.i = phi i32 [ 2, %if.then39.i ], [ 2, %if.then32.i ], [ 1, %if.end75.i ], [ 3, %sw.bb87.i ]
  %341 = ptrtoint ptr %add.ptr.i212 to i32
  call void @__asan_loadN_noabort(i32 %341, i32 2)
  %.pr.i = load i16, ptr %add.ptr.i212, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilogthread-pre-split.i, %if.end26.i.sw.epilog.i_crit_edge
  %342 = phi i16 [ %.pr.i, %sw.epilogthread-pre-split.i ], [ %291, %if.end26.i.sw.epilog.i_crit_edge ]
  %mgmt_b.0.i = phi ptr [ %mgmt_b.0.ph.i, %sw.epilogthread-pre-split.i ], [ %call.i281.i, %if.end26.i.sw.epilog.i_crit_edge ]
  %data_len.0.i = phi i32 [ %data_len.0.ph.i, %sw.epilogthread-pre-split.i ], [ %287, %if.end26.i.sw.epilog.i_crit_edge ]
  %dma_direction.0.i = phi i32 [ %dma_direction.0.ph.i, %sw.epilogthread-pre-split.i ], [ 2, %if.end26.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %342)
  %cmp103.not.i = icmp eq i16 %342, 2
  br i1 %cmp103.not.i, label %sw.epilog.i.if.end111.i_crit_edge, label %if.then105.i

sw.epilog.i.if.end111.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111.i

if.then105.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %len.i = getelementptr i8, ptr %252, i32 36
  %343 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %343, i32 4)
  %344 = load i32, ptr %len.i, align 1
  %345 = call i32 @llvm.bswap.i32(i32 %344) #9
  %total_byte_cnt.i = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 13
  %346 = ptrtoint ptr %total_byte_cnt.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %345, ptr %total_byte_cnt.i, align 4
  %dseg_count.i = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 7
  %347 = ptrtoint ptr %dseg_count.i to i32
  call void @__asan_store2_noabort(i32 %347)
  store i16 256, ptr %dseg_count.i, align 4
  %348 = ptrtoint ptr %mgmt_dma.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %mgmt_dma.i, align 4
  %conv107.i = zext i32 %349 to i64
  %dsd.i220 = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 15
  %350 = call i64 @llvm.bswap.i64(i64 %conv107.i) #9
  %351 = ptrtoint ptr %dsd.i220 to i32
  call void @__asan_storeN_noabort(i32 %351, i32 8)
  store i64 %350, ptr %dsd.i220, align 1
  %352 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %352, i32 4)
  %353 = load i32, ptr %len.i, align 1
  %354 = call i32 @llvm.bswap.i32(i32 %353) #9
  %length.i221 = getelementptr inbounds %struct.access_chip_84xx, ptr %call.i280.i, i32 0, i32 15, i32 1
  %355 = ptrtoint ptr %length.i221 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %354, ptr %length.i221, align 4
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then105.i, %sw.epilog.i.if.end111.i_crit_edge
  %356 = ptrtoint ptr %mn_dma.i176 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %mn_dma.i176, align 4
  %call112.i = call i32 @qla2x00_issue_iocb(ptr noundef %hostdata.i.i202, ptr noundef nonnull %call.i280.i, i32 noundef %357, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool113.not.i = icmp eq i32 %call112.i, 0
  br i1 %tobool113.not.i, label %if.else115.i, label %if.then114.i

if.then114.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i202, i32 noundef 28739, ptr noundef nonnull @.str.74) #9
  br label %done_unmap_sg.i225

if.else115.i:                                     ; preds = %if.end111.i
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i202, i32 noundef 28740, ptr noundef nonnull @.str.75) #9
  %reply_len.i222 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %358 = ptrtoint ptr %reply_len.i222 to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 16, ptr %reply_len.i222, align 4
  %359 = ptrtoint ptr %254 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 0, ptr %254, align 4
  %360 = ptrtoint ptr %add.ptr.i212 to i32
  call void @__asan_loadN_noabort(i32 %360, i32 2)
  %361 = load i16, ptr %add.ptr.i212, align 1
  %362 = zext i16 %361 to i64
  call void @__sanitizer_cov_trace_switch(i64 %362, ptr @__sancov_gen_cov_switch_values.112)
  switch i16 %361, label %if.else115.i.done_unmap_sg.i225_crit_edge [
    i16 0, label %if.else115.i.if.then126.i_crit_edge
    i16 3, label %if.else115.i.if.then126.i_crit_edge1786
  ]

if.else115.i.if.then126.i_crit_edge1786:          ; preds = %if.else115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126.i

if.else115.i.if.then126.i_crit_edge:              ; preds = %if.else115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126.i

if.else115.i.done_unmap_sg.i225_crit_edge:        ; preds = %if.else115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_unmap_sg.i225

if.then126.i:                                     ; preds = %if.else115.i.if.then126.i_crit_edge, %if.else115.i.if.then126.i_crit_edge1786
  %reply_payload127.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8
  %363 = ptrtoint ptr %reply_payload127.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %reply_payload127.i, align 4
  %reply_payload_rcv_len.i223 = getelementptr inbounds %struct.fc_bsg_reply, ptr %254, i32 0, i32 1
  %365 = ptrtoint ptr %reply_payload_rcv_len.i223 to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %364, ptr %reply_payload_rcv_len.i223, align 4
  %sg_list130.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %366 = ptrtoint ptr %sg_list130.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %sg_list130.i, align 4
  %sg_cnt132.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %368 = ptrtoint ptr %sg_cnt132.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %sg_cnt132.i, align 4
  %call133.i = call i32 @sg_copy_from_buffer(ptr noundef %367, i32 noundef %369, ptr noundef %mgmt_b.0.i, i32 noundef %data_len.0.i) #9
  br label %done_unmap_sg.i225

done_unmap_sg.i225:                               ; preds = %if.then126.i, %if.else115.i.done_unmap_sg.i225_crit_edge, %if.then114.i
  %rval.0.i224 = phi i32 [ 458752, %if.then114.i ], [ 0, %if.then126.i ], [ 0, %if.else115.i.done_unmap_sg.i225_crit_edge ]
  %tobool136.not.i = icmp eq ptr %mgmt_b.0.i, null
  br i1 %tobool136.not.i, label %done_unmap_sg.i225.if.end140.i_crit_edge, label %if.then137.i

done_unmap_sg.i225.if.end140.i_crit_edge:         ; preds = %done_unmap_sg.i225
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.i

if.then137.i:                                     ; preds = %done_unmap_sg.i225
  call void @__sanitizer_cov_trace_pc() #11
  %370 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %266, align 128
  %dev139.i = getelementptr inbounds %struct.pci_dev, ptr %371, i32 0, i32 44
  %372 = ptrtoint ptr %mgmt_dma.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %mgmt_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev139.i, i32 noundef %data_len.0.i, ptr noundef nonnull %mgmt_b.0.i, i32 noundef %373, i32 noundef 0) #9
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.then137.i, %done_unmap_sg.i225.if.end140.i_crit_edge
  %374 = zext i32 %dma_direction.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %374, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %dma_direction.0.i, label %if.end140.i.exit_mgmt.i_crit_edge [
    i32 1, label %if.end140.i.if.then143.i_crit_edge
    i32 2, label %if.end140.i.if.then153.i_crit_edge
  ]

if.end140.i.if.then153.i_crit_edge:               ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then153.i

if.end140.i.if.then143.i_crit_edge:               ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then143.i

if.end140.i.exit_mgmt.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_mgmt.i

if.then143.i:                                     ; preds = %if.end140.i.if.then143.i_crit_edge, %if.then74.i, %if.then64.i
  %rval.0288292.i = phi i32 [ %rval.0.i224, %if.end140.i.if.then143.i_crit_edge ], [ -11, %if.then64.i ], [ -12, %if.then74.i ]
  %375 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %266, align 128
  %dev145.i = getelementptr inbounds %struct.pci_dev, ptr %376, i32 0, i32 44
  %sg_list147.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %377 = ptrtoint ptr %sg_list147.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %sg_list147.i, align 4
  %sg_cnt149.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %379 = ptrtoint ptr %sg_cnt149.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %sg_cnt149.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev145.i, ptr noundef %378, i32 noundef %380, i32 noundef 1, i32 noundef 0) #9
  br label %exit_mgmt.i

if.then153.i:                                     ; preds = %if.end140.i.if.then153.i_crit_edge, %if.then25.i, %if.then16.i
  %rval.0288298.i = phi i32 [ %rval.0.i224, %if.end140.i.if.then153.i_crit_edge ], [ -11, %if.then16.i ], [ -12, %if.then25.i ]
  %381 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %266, align 128
  %dev155.i = getelementptr inbounds %struct.pci_dev, ptr %382, i32 0, i32 44
  %sg_list157.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %383 = ptrtoint ptr %sg_list157.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %sg_list157.i, align 4
  %sg_cnt159.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %385 = ptrtoint ptr %sg_cnt159.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %sg_cnt159.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev155.i, ptr noundef %384, i32 noundef %386, i32 noundef 2, i32 noundef 0) #9
  br label %exit_mgmt.i

exit_mgmt.i:                                      ; preds = %if.then153.i, %if.then143.i, %if.end140.i.exit_mgmt.i_crit_edge, %if.then58.i, %if.then11.i215, %if.end6.i.exit_mgmt.i_crit_edge
  %rval.1.i226 = phi i32 [ %rval.0288292.i, %if.then143.i ], [ %rval.0288298.i, %if.then153.i ], [ -12, %if.then58.i ], [ -12, %if.then11.i215 ], [ -5, %if.end6.i.exit_mgmt.i_crit_edge ], [ %rval.0.i224, %if.end140.i.exit_mgmt.i_crit_edge ]
  %387 = ptrtoint ptr %s_dma_pool.i209 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %s_dma_pool.i209, align 4
  %389 = ptrtoint ptr %mn_dma.i176 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %mn_dma.i176, align 4
  call void @dma_pool_free(ptr noundef %388, ptr noundef nonnull %call.i280.i, i32 noundef %390) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.1.i226)
  %tobool163.not.i = icmp eq i32 %rval.1.i226, 0
  br i1 %tobool163.not.i, label %if.then164.i, label %exit_mgmt.i.qla84xx_mgmt_cmd.exit_crit_edge

exit_mgmt.i.qla84xx_mgmt_cmd.exit_crit_edge:      ; preds = %exit_mgmt.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla84xx_mgmt_cmd.exit

if.then164.i:                                     ; preds = %exit_mgmt.i
  call void @__sanitizer_cov_trace_pc() #11
  %391 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %254, align 4
  %reply_payload_rcv_len166.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %254, i32 0, i32 1
  %393 = ptrtoint ptr %reply_payload_rcv_len166.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %reply_payload_rcv_len166.i, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %392, i32 noundef %394) #9
  br label %qla84xx_mgmt_cmd.exit

qla84xx_mgmt_cmd.exit:                            ; preds = %if.then164.i, %exit_mgmt.i.qla84xx_mgmt_cmd.exit_crit_edge, %if.then5.i, %if.then.i208
  %retval.0.i227 = phi i32 [ -12, %if.then5.i ], [ -22, %if.then.i208 ], [ 0, %if.then164.i ], [ %rval.1.i226, %exit_mgmt.i.qla84xx_mgmt_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mgmt_dma.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mn_dma.i176) #9
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %395 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %request, align 4
  %reply.i229 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %397 = ptrtoint ptr %reply.i229 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %reply.i229, align 4
  %399 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %bsg_job, align 4
  %call.i.i230 = tail call i32 @scsi_is_host_device(ptr noundef %400) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i230)
  %tobool.not.i.i231 = icmp eq i32 %call.i.i230, 0
  %401 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i231, label %if.end.i.i241, label %sw.bb10.while.cond.i.i.i234_crit_edge

sw.bb10.while.cond.i.i.i234_crit_edge:            ; preds = %sw.bb10
  br label %while.cond.i.i.i234

while.cond.i.i.i234:                              ; preds = %while.body.i.i.i237.while.cond.i.i.i234_crit_edge, %sw.bb10.while.cond.i.i.i234_crit_edge
  %dev.addr.0.i.i.i232 = phi ptr [ %404, %while.body.i.i.i237.while.cond.i.i.i234_crit_edge ], [ %402, %sw.bb10.while.cond.i.i.i234_crit_edge ]
  %call.i.i106.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i232) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i106.i)
  %tobool.not.i.i.i233 = icmp eq i32 %call.i.i106.i, 0
  br i1 %tobool.not.i.i.i233, label %while.body.i.i.i237, label %while.end.i.i.i239

while.body.i.i.i237:                              ; preds = %while.cond.i.i.i234
  %parent.i.i.i235 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i232, i32 0, i32 1
  %403 = ptrtoint ptr %parent.i.i.i235 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %parent.i.i.i235, align 8
  %tobool1.not.i.i.i236 = icmp eq ptr %404, null
  br i1 %tobool1.not.i.i.i236, label %while.body.i.i.i237.fc_bsg_to_shost.exit.i255_crit_edge, label %while.body.i.i.i237.while.cond.i.i.i234_crit_edge

while.body.i.i.i237.while.cond.i.i.i234_crit_edge: ; preds = %while.body.i.i.i237
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i234

while.body.i.i.i237.fc_bsg_to_shost.exit.i255_crit_edge: ; preds = %while.body.i.i.i237
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i255

while.end.i.i.i239:                               ; preds = %while.cond.i.i.i234
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i238 = getelementptr i8, ptr %dev.addr.0.i.i.i232, i32 -584
  br label %fc_bsg_to_shost.exit.i255

if.end.i.i241:                                    ; preds = %sw.bb10
  %parent.i.i240 = getelementptr inbounds %struct.device, ptr %402, i32 0, i32 1
  %405 = ptrtoint ptr %parent.i.i240 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %parent.i.i240, align 8
  br label %while.cond.i11.i.i245

while.cond.i11.i.i245:                            ; preds = %while.body.i14.i.i248.while.cond.i11.i.i245_crit_edge, %if.end.i.i241
  %dev.addr.0.i8.i.i242 = phi ptr [ %406, %if.end.i.i241 ], [ %408, %while.body.i14.i.i248.while.cond.i11.i.i245_crit_edge ]
  %call.i9.i.i243 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i242) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i243)
  %tobool.not.i10.i.i244 = icmp eq i32 %call.i9.i.i243, 0
  br i1 %tobool.not.i10.i.i244, label %while.body.i14.i.i248, label %while.end.i16.i.i250

while.body.i14.i.i248:                            ; preds = %while.cond.i11.i.i245
  %parent.i12.i.i246 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i242, i32 0, i32 1
  %407 = ptrtoint ptr %parent.i12.i.i246 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %parent.i12.i.i246, align 8
  %tobool1.not.i13.i.i247 = icmp eq ptr %408, null
  br i1 %tobool1.not.i13.i.i247, label %while.body.i14.i.i248.fc_bsg_to_shost.exit.i255_crit_edge, label %while.body.i14.i.i248.while.cond.i11.i.i245_crit_edge

while.body.i14.i.i248.while.cond.i11.i.i245_crit_edge: ; preds = %while.body.i14.i.i248
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i245

while.body.i14.i.i248.fc_bsg_to_shost.exit.i255_crit_edge: ; preds = %while.body.i14.i.i248
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i255

while.end.i16.i.i250:                             ; preds = %while.cond.i11.i.i245
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i249 = getelementptr i8, ptr %dev.addr.0.i8.i.i242, i32 -584
  br label %fc_bsg_to_shost.exit.i255

fc_bsg_to_shost.exit.i255:                        ; preds = %while.end.i16.i.i250, %while.body.i14.i.i248.fc_bsg_to_shost.exit.i255_crit_edge, %while.end.i.i.i239, %while.body.i.i.i237.fc_bsg_to_shost.exit.i255_crit_edge
  %retval.0.i.i251 = phi ptr [ %add.ptr.i.i.i238, %while.end.i.i.i239 ], [ %add.ptr.i15.i.i249, %while.end.i16.i.i250 ], [ null, %while.body.i14.i.i248.fc_bsg_to_shost.exit.i255_crit_edge ], [ null, %while.body.i.i.i237.fc_bsg_to_shost.exit.i255_crit_edge ]
  %hostdata.i.i252 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i251, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mb.i) #9
  %409 = call ptr @memset(ptr %mb.i, i32 255, i32 64)
  %hw.i253 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i252, i32 0, i32 52
  %410 = ptrtoint ptr %hw.i253 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %hw.i253, align 4
  %device_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %411, i32 0, i32 55
  %412 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %device_type.i, align 4
  %and.i = and i32 %413, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i254 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i254, label %if.then.i256, label %if.end.i259

if.then.i256:                                     ; preds = %fc_bsg_to_shost.exit.i255
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i.i252, i32 noundef 28742, ptr noundef nonnull @.str.76) #9
  br label %qla24xx_iidma.exit

if.end.i259:                                      ; preds = %fc_bsg_to_shost.exit.i255
  %add.ptr.i257 = getelementptr i8, ptr %396, i32 20
  %dest_type.i = getelementptr i8, ptr %396, i32 28
  %414 = ptrtoint ptr %dest_type.i to i32
  call void @__asan_loadN_noabort(i32 %414, i32 2)
  %415 = load i16, ptr %dest_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %415)
  %cmp.not.i258 = icmp eq i16 %415, 2
  br i1 %cmp.not.i258, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i252, i32 noundef 28744, ptr noundef nonnull @.str.77) #9
  br label %qla24xx_iidma.exit

if.end4.i:                                        ; preds = %if.end.i259
  %vp_fcports.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i251, i32 1, i32 1
  %416 = ptrtoint ptr %vp_fcports.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %fcport.0112.i = load ptr, ptr %vp_fcports.i, align 8
  %cmp7.not113.i = icmp eq ptr %fcport.0112.i, %vp_fcports.i
  br i1 %cmp7.not113.i, label %if.end4.i.if.then25.critedge.i_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  br label %for.body.i

if.end4.i.if.then25.critedge.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25.critedge.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4.i.for.body.i_crit_edge
  %fcport.0114.i = phi ptr [ %fcport.0.i, %for.inc.i.for.body.i_crit_edge ], [ %fcport.0112.i, %if.end4.i.for.body.i_crit_edge ]
  %port_type.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0114.i, i32 0, i32 33
  %417 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %port_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %418)
  %cmp9.not.i = icmp eq i32 %418, 4
  br i1 %cmp9.not.i, label %if.end12.i260, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end12.i260:                                    ; preds = %for.body.i
  %port_name.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0114.i, i32 0, i32 5
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %add.ptr.i257, ptr noundef dereferenceable(8) %port_name.i, i32 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool16.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool16.not.i, label %if.end26.i262, label %if.end12.i260.for.inc.i_crit_edge

if.end12.i260.for.inc.i_crit_edge:                ; preds = %if.end12.i260
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i260.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %419 = ptrtoint ptr %fcport.0114.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %fcport.0.i = load ptr, ptr %fcport.0114.i, align 8
  %cmp7.not.i = icmp eq ptr %fcport.0.i, %vp_fcports.i
  br i1 %cmp7.not.i, label %for.inc.i.if.then25.critedge.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.then25.critedge.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25.critedge.i

if.then25.critedge.i:                             ; preds = %for.inc.i.if.then25.critedge.i_crit_edge, %if.end4.i.if.then25.critedge.i_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i252, i32 noundef 28745, ptr noundef nonnull @.str.78) #9
  br label %qla24xx_iidma.exit

if.end26.i262:                                    ; preds = %if.end12.i260
  %state.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0114.i, i32 0, i32 34
  %call.i.i.i261 = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #9
  %420 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %421)
  %cmp28.not.i = icmp eq i32 %421, 4
  br i1 %cmp28.not.i, label %if.end31.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.end26.i262
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i252, i32 noundef 28746, ptr noundef nonnull @.str.79) #9
  br label %qla24xx_iidma.exit

if.end31.i:                                       ; preds = %if.end26.i262
  %flags.i263 = getelementptr inbounds %struct.fc_port, ptr %fcport.0114.i, i32 0, i32 35
  %422 = ptrtoint ptr %flags.i263 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %flags.i263, align 8
  %and32.i = and i32 %423, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end36.i, label %if.then34.i264

if.then34.i264:                                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i252, i32 noundef 28747, ptr noundef nonnull @.str.80, i32 noundef %423) #9
  br label %qla24xx_iidma.exit

if.end36.i:                                       ; preds = %if.end31.i
  %mode.i = getelementptr i8, ptr %396, i32 36
  %424 = ptrtoint ptr %mode.i to i32
  call void @__asan_loadN_noabort(i32 %424, i32 2)
  %425 = load i16, ptr %mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %425)
  %tobool37.not.i = icmp eq i16 %425, 0
  %loop_id41.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0114.i, i32 0, i32 7
  %426 = ptrtoint ptr %loop_id41.i to i32
  call void @__asan_load2_noabort(i32 %426)
  %427 = load i16, ptr %loop_id41.i, align 4
  %speed42.i = getelementptr i8, ptr %396, i32 38
  br i1 %tobool37.not.i, label %if.else.i266, label %if.then38.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %428 = ptrtoint ptr %speed42.i to i32
  call void @__asan_loadN_noabort(i32 %428, i32 2)
  %429 = load i16, ptr %speed42.i, align 1
  %call40.i265 = call i32 @qla2x00_set_idma_speed(ptr noundef %hostdata.i.i252, i16 noundef zeroext %427, i16 noundef zeroext %429, ptr noundef nonnull %mb.i) #9
  br label %if.end45.i

if.else.i266:                                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %call44.i = call i32 @qla2x00_get_idma_speed(ptr noundef %hostdata.i.i252, i16 noundef zeroext %427, ptr noundef %speed42.i, ptr noundef nonnull %mb.i) #9
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else.i266, %if.then38.i
  %rval.0.i267 = phi i32 [ %call40.i265, %if.then38.i ], [ %call44.i, %if.else.i266 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.0.i267)
  %tobool46.not.i = icmp eq i32 %rval.0.i267, 0
  br i1 %tobool46.not.i, label %if.else54.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %fp_speed.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0114.i, i32 0, i32 32
  %430 = ptrtoint ptr %fp_speed.i to i32
  call void @__asan_load2_noabort(i32 %430)
  %431 = load i16, ptr %fp_speed.i, align 4
  %conv50.i = zext i16 %431 to i32
  %432 = ptrtoint ptr %mb.i to i32
  call void @__asan_load2_noabort(i32 %432)
  %433 = load i16, ptr %mb.i, align 2
  %conv51.i = zext i16 %433 to i32
  %arrayidx52.i = getelementptr inbounds [32 x i16], ptr %mb.i, i32 0, i32 1
  %434 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load2_noabort(i32 %434)
  %435 = load i16, ptr %arrayidx52.i, align 2
  %conv53.i = zext i16 %435 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i252, i32 noundef 28748, ptr noundef nonnull @.str.81, ptr noundef %port_name.i, i32 noundef %rval.0.i267, i32 noundef %conv50.i, i32 noundef %conv51.i, i32 noundef %conv53.i) #9
  br label %qla24xx_iidma.exit

if.else54.i:                                      ; preds = %if.end45.i
  %436 = ptrtoint ptr %mode.i to i32
  call void @__asan_loadN_noabort(i32 %436, i32 2)
  %437 = load i16, ptr %mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %437)
  %tobool56.not.i = icmp eq i16 %437, 0
  br i1 %tobool56.not.i, label %if.then57.i, label %if.else54.i.if.end59.i270_crit_edge

if.else54.i.if.end59.i270_crit_edge:              ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i270

if.then57.i:                                      ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #11
  %reply_len.i268 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %438 = ptrtoint ptr %reply_len.i268 to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 36, ptr %reply_len.i268, align 4
  %add.ptr58.i = getelementptr i8, ptr %398, i32 16
  %439 = call ptr @memcpy(ptr %add.ptr58.i, ptr %add.ptr.i257, i32 20)
  br label %if.end59.i270

if.end59.i270:                                    ; preds = %if.then57.i, %if.else54.i.if.end59.i270_crit_edge
  %440 = ptrtoint ptr %398 to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 0, ptr %398, align 4
  %reply_payload_rcv_len.i269 = getelementptr inbounds %struct.fc_bsg_reply, ptr %398, i32 0, i32 1
  %441 = ptrtoint ptr %reply_payload_rcv_len.i269 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %reply_payload_rcv_len.i269, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %442) #9
  br label %qla24xx_iidma.exit

qla24xx_iidma.exit:                               ; preds = %if.end59.i270, %if.then47.i, %if.then34.i264, %if.then30.i, %if.then25.critedge.i, %if.then3.i, %if.then.i256
  %retval.0.i271 = phi i32 [ -22, %if.then3.i ], [ -22, %if.then30.i ], [ -22, %if.then34.i264 ], [ -22, %if.then25.critedge.i ], [ -22, %if.then.i256 ], [ 458752, %if.then47.i ], [ 0, %if.end59.i270 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mb.i) #9
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %443 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %bsg_job, align 4
  %call.i.i272 = tail call i32 @scsi_is_host_device(ptr noundef %444) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i272)
  %tobool.not.i.i273 = icmp eq i32 %call.i.i272, 0
  %445 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i273, label %if.end.i.i284, label %sw.bb12.while.cond.i.i.i277_crit_edge

sw.bb12.while.cond.i.i.i277_crit_edge:            ; preds = %sw.bb12
  br label %while.cond.i.i.i277

while.cond.i.i.i277:                              ; preds = %while.body.i.i.i280.while.cond.i.i.i277_crit_edge, %sw.bb12.while.cond.i.i.i277_crit_edge
  %dev.addr.0.i.i.i274 = phi ptr [ %448, %while.body.i.i.i280.while.cond.i.i.i277_crit_edge ], [ %446, %sw.bb12.while.cond.i.i.i277_crit_edge ]
  %call.i.i.i275 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i274) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i275)
  %tobool.not.i.i.i276 = icmp eq i32 %call.i.i.i275, 0
  br i1 %tobool.not.i.i.i276, label %while.body.i.i.i280, label %while.end.i.i.i282

while.body.i.i.i280:                              ; preds = %while.cond.i.i.i277
  %parent.i.i.i278 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i274, i32 0, i32 1
  %447 = ptrtoint ptr %parent.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %parent.i.i.i278, align 8
  %tobool1.not.i.i.i279 = icmp eq ptr %448, null
  br i1 %tobool1.not.i.i.i279, label %while.body.i.i.i280.fc_bsg_to_shost.exit.i299_crit_edge, label %while.body.i.i.i280.while.cond.i.i.i277_crit_edge

while.body.i.i.i280.while.cond.i.i.i277_crit_edge: ; preds = %while.body.i.i.i280
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i277

while.body.i.i.i280.fc_bsg_to_shost.exit.i299_crit_edge: ; preds = %while.body.i.i.i280
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i299

while.end.i.i.i282:                               ; preds = %while.cond.i.i.i277
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i281 = getelementptr i8, ptr %dev.addr.0.i.i.i274, i32 -584
  br label %fc_bsg_to_shost.exit.i299

if.end.i.i284:                                    ; preds = %sw.bb12
  %parent.i.i283 = getelementptr inbounds %struct.device, ptr %446, i32 0, i32 1
  %449 = ptrtoint ptr %parent.i.i283 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %parent.i.i283, align 8
  br label %while.cond.i11.i.i288

while.cond.i11.i.i288:                            ; preds = %while.body.i14.i.i291.while.cond.i11.i.i288_crit_edge, %if.end.i.i284
  %dev.addr.0.i8.i.i285 = phi ptr [ %450, %if.end.i.i284 ], [ %452, %while.body.i14.i.i291.while.cond.i11.i.i288_crit_edge ]
  %call.i9.i.i286 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i285) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i286)
  %tobool.not.i10.i.i287 = icmp eq i32 %call.i9.i.i286, 0
  br i1 %tobool.not.i10.i.i287, label %while.body.i14.i.i291, label %while.end.i16.i.i293

while.body.i14.i.i291:                            ; preds = %while.cond.i11.i.i288
  %parent.i12.i.i289 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i285, i32 0, i32 1
  %451 = ptrtoint ptr %parent.i12.i.i289 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %parent.i12.i.i289, align 8
  %tobool1.not.i13.i.i290 = icmp eq ptr %452, null
  br i1 %tobool1.not.i13.i.i290, label %while.body.i14.i.i291.fc_bsg_to_shost.exit.i299_crit_edge, label %while.body.i14.i.i291.while.cond.i11.i.i288_crit_edge

while.body.i14.i.i291.while.cond.i11.i.i288_crit_edge: ; preds = %while.body.i14.i.i291
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i288

while.body.i14.i.i291.fc_bsg_to_shost.exit.i299_crit_edge: ; preds = %while.body.i14.i.i291
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i299

while.end.i16.i.i293:                             ; preds = %while.cond.i11.i.i288
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i292 = getelementptr i8, ptr %dev.addr.0.i8.i.i285, i32 -584
  br label %fc_bsg_to_shost.exit.i299

fc_bsg_to_shost.exit.i299:                        ; preds = %while.end.i16.i.i293, %while.body.i14.i.i291.fc_bsg_to_shost.exit.i299_crit_edge, %while.end.i.i.i282, %while.body.i.i.i280.fc_bsg_to_shost.exit.i299_crit_edge
  %retval.0.i.i294 = phi ptr [ %add.ptr.i.i.i281, %while.end.i.i.i282 ], [ %add.ptr.i15.i.i292, %while.end.i16.i.i293 ], [ null, %while.body.i14.i.i291.fc_bsg_to_shost.exit.i299_crit_edge ], [ null, %while.body.i.i.i280.fc_bsg_to_shost.exit.i299_crit_edge ]
  %reply.i295 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %453 = ptrtoint ptr %reply.i295 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %reply.i295, align 4
  %hostdata.i.i296 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i294, i32 0, i32 53
  %hw.i297 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i296, i32 0, i32 52
  %455 = ptrtoint ptr %hw.i297 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %hw.i297, align 4
  %isp_type.i298 = getelementptr inbounds %struct.qla_hw_data, ptr %456, i32 0, i32 54
  %457 = ptrtoint ptr %isp_type.i298 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %isp_type.i298, align 8
  %459 = and i32 %458, 286592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %459)
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %fc_bsg_to_shost.exit.i299.cleanup_crit_edge, label %if.end.i304

fc_bsg_to_shost.exit.i299.cleanup_crit_edge:      ; preds = %fc_bsg_to_shost.exit.i299
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i304:                                      ; preds = %fc_bsg_to_shost.exit.i299
  %461 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %request, align 4
  %arrayidx.i301 = getelementptr %struct.fc_bsg_request, ptr %462, i32 0, i32 1, i32 1, i32 4
  %463 = ptrtoint ptr %arrayidx.i301 to i32
  call void @__asan_loadN_noabort(i32 %463, i32 4)
  %464 = load i32, ptr %arrayidx.i301, align 1
  %fcp_prio_cfg.i = getelementptr inbounds %struct.qla_hw_data, ptr %456, i32 0, i32 238
  %465 = ptrtoint ptr %fcp_prio_cfg.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %fcp_prio_cfg.i, align 4
  %tobool37.not.i302 = icmp ne ptr %466, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %464)
  %cmp.not.i303 = icmp eq i32 %464, 3
  %or.cond211.i = select i1 %tobool37.not.i302, i1 true, i1 %cmp.not.i303
  br i1 %or.cond211.i, label %if.end39.i, label %if.end.i304.cleanup_crit_edge

if.end.i304.cleanup_crit_edge:                    ; preds = %if.end.i304
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.i:                                       ; preds = %if.end.i304
  %467 = zext i32 %464 to i64
  call void @__sanitizer_cov_trace_switch(i64 %467, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %464, label %if.end39.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i307
    i32 1, label %sw.bb51.i
    i32 2, label %sw.bb75.i
    i32 3, label %sw.bb88.i
  ]

if.end39.i.cleanup_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i307:                                       ; preds = %if.end39.i
  %flags.i305 = getelementptr inbounds %struct.qla_hw_data, ptr %456, i32 0, i32 2
  %468 = ptrtoint ptr %flags.i305 to i32
  call void @__asan_load4_noabort(i32 %468)
  %bf.load.i306 = load volatile i32, ptr %flags.i305, align 8
  %469 = and i32 %bf.load.i306, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %469)
  %tobool40.not.i = icmp eq i32 %469, 0
  br i1 %tobool40.not.i, label %if.else.i308, label %if.then41.i

if.then41.i:                                      ; preds = %sw.bb.i307
  call void @__sanitizer_cov_trace_pc() #11
  %470 = ptrtoint ptr %flags.i305 to i32
  call void @__asan_load4_noabort(i32 %470)
  %bf.load43.i = load volatile i32, ptr %flags.i305, align 8
  %bf.clear44.i = and i32 %bf.load43.i, -2049
  store volatile i32 %bf.clear44.i, ptr %flags.i305, align 8
  %attributes.i = getelementptr inbounds %struct.qla_fcp_prio_cfg, ptr %466, i32 0, i32 6
  %471 = ptrtoint ptr %attributes.i to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %attributes.i, align 2
  %473 = and i8 %472, -2
  store i8 %473, ptr %attributes.i, align 2
  %call48.i = tail call i32 @qla24xx_update_all_fcp_prio(ptr noundef %hostdata.i.i296) #9
  %474 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 0, ptr %454, align 4
  br label %if.then141.i

if.else.i308:                                     ; preds = %sw.bb.i307
  call void @__sanitizer_cov_trace_pc() #11
  %475 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 458752, ptr %454, align 4
  br label %cleanup

sw.bb51.i:                                        ; preds = %if.end39.i
  %flags52.i = getelementptr inbounds %struct.qla_hw_data, ptr %456, i32 0, i32 2
  %476 = ptrtoint ptr %flags52.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %bf.load53.i = load volatile i32, ptr %flags52.i, align 8
  %477 = and i32 %bf.load53.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %477)
  %tobool56.not.i309 = icmp eq i32 %477, 0
  br i1 %tobool56.not.i309, label %if.then57.i310, label %sw.bb51.i.if.then141.i_crit_edge

sw.bb51.i.if.then141.i_crit_edge:                 ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then141.i

if.then57.i310:                                   ; preds = %sw.bb51.i
  %tobool59.not.i = icmp eq ptr %466, null
  br i1 %tobool59.not.i, label %if.else71.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.then57.i310
  call void @__sanitizer_cov_trace_pc() #11
  %478 = ptrtoint ptr %flags52.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %bf.load62.i = load volatile i32, ptr %flags52.i, align 8
  %bf.set64.i = or i32 %bf.load62.i, 2048
  store volatile i32 %bf.set64.i, ptr %flags52.i, align 8
  %attributes66.i = getelementptr inbounds %struct.qla_fcp_prio_cfg, ptr %466, i32 0, i32 6
  %479 = ptrtoint ptr %attributes66.i to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %attributes66.i, align 2
  %481 = or i8 %480, 1
  store i8 %481, ptr %attributes66.i, align 2
  %call69.i = tail call i32 @qla24xx_update_all_fcp_prio(ptr noundef %hostdata.i.i296) #9
  %482 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 0, ptr %454, align 4
  br label %if.then141.i

if.else71.i:                                      ; preds = %if.then57.i310
  call void @__sanitizer_cov_trace_pc() #11
  %483 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 458752, ptr %454, align 4
  br label %cleanup

sw.bb75.i:                                        ; preds = %if.end39.i
  %reply_payload.i311 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8
  %484 = ptrtoint ptr %reply_payload.i311 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %reply_payload.i311, align 4
  %486 = add i32 %485, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %486)
  %487 = icmp ult i32 %486, -32768
  br i1 %487, label %if.then80.i, label %if.end82.i

if.then80.i:                                      ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #11
  %488 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 458752, ptr %454, align 4
  br label %cleanup

if.end82.i:                                       ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #11
  %489 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 0, ptr %454, align 4
  %sg_list.i312 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %490 = ptrtoint ptr %sg_list.i312 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %sg_list.i312, align 4
  %sg_cnt.i313 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %492 = ptrtoint ptr %sg_cnt.i313 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %sg_cnt.i313, align 4
  %494 = ptrtoint ptr %fcp_prio_cfg.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %fcp_prio_cfg.i, align 4
  %call87.i = tail call i32 @sg_copy_from_buffer(ptr noundef %491, i32 noundef %493, ptr noundef %495, i32 noundef %485) #9
  %reply_payload_rcv_len.i314 = getelementptr inbounds %struct.fc_bsg_reply, ptr %454, i32 0, i32 1
  %496 = ptrtoint ptr %reply_payload_rcv_len.i314 to i32
  call void @__asan_store4_noabort(i32 %496)
  store i32 %call87.i, ptr %reply_payload_rcv_len.i314, align 4
  br label %if.then141.i

sw.bb88.i:                                        ; preds = %if.end39.i
  %request_payload.i315 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7
  %497 = ptrtoint ptr %request_payload.i315 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %request_payload.i315, align 4
  %499 = add i32 %498, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %499)
  %500 = icmp ult i32 %499, -32768
  br i1 %500, label %if.then94.i, label %if.end96.i

if.then94.i:                                      ; preds = %sw.bb88.i
  call void @__sanitizer_cov_trace_pc() #11
  %501 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 458752, ptr %454, align 4
  br label %cleanup

if.end96.i:                                       ; preds = %sw.bb88.i
  %tobool98.not.i = icmp eq ptr %466, null
  br i1 %tobool98.not.i, label %if.then99.i, label %if.end96.i.if.end107.i_crit_edge

if.end96.i.if.end107.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107.i

if.then99.i:                                      ; preds = %if.end96.i
  %call100.i = tail call noalias ptr @vmalloc(i32 noundef 32768) #14
  %502 = ptrtoint ptr %fcp_prio_cfg.i to i32
  call void @__asan_store4_noabort(i32 %502)
  store ptr %call100.i, ptr %fcp_prio_cfg.i, align 4
  %tobool103.not.i = icmp eq ptr %call100.i, null
  br i1 %tobool103.not.i, label %if.then104.i, label %if.then99.i.if.end107.i_crit_edge

if.then99.i.if.end107.i_crit_edge:                ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107.i

if.then104.i:                                     ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i296, i32 noundef 28752, ptr noundef nonnull @.str.82, i32 noundef 32768) #9
  %503 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 458752, ptr %454, align 4
  br label %cleanup

if.end107.i:                                      ; preds = %if.then99.i.if.end107.i_crit_edge, %if.end96.i.if.end107.i_crit_edge
  %504 = ptrtoint ptr %fcp_prio_cfg.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %fcp_prio_cfg.i, align 4
  %506 = call ptr @memset(ptr %505, i32 0, i32 32768)
  %sg_list110.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %507 = ptrtoint ptr %sg_list110.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %sg_list110.i, align 4
  %sg_cnt112.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %509 = ptrtoint ptr %sg_cnt112.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %sg_cnt112.i, align 4
  %511 = load ptr, ptr %fcp_prio_cfg.i, align 4
  %call114.i = tail call i32 @sg_copy_to_buffer(ptr noundef %508, i32 noundef %510, ptr noundef %511, i32 noundef 32768) #9
  %512 = ptrtoint ptr %fcp_prio_cfg.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %fcp_prio_cfg.i, align 4
  %call116.i = tail call i32 @qla24xx_fcp_prio_cfg_valid(ptr noundef %hostdata.i.i296, ptr noundef %513, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i)
  %tobool117.not.i = icmp eq i32 %call116.i, 0
  br i1 %tobool117.not.i, label %if.then118.i, label %if.end122.i

if.then118.i:                                     ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #11
  %514 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 458752, ptr %454, align 4
  %515 = ptrtoint ptr %fcp_prio_cfg.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %fcp_prio_cfg.i, align 4
  tail call void @vfree(ptr noundef %516) #9
  %517 = ptrtoint ptr %fcp_prio_cfg.i to i32
  call void @__asan_store4_noabort(i32 %517)
  store ptr null, ptr %fcp_prio_cfg.i, align 4
  br label %cleanup

if.end122.i:                                      ; preds = %if.end107.i
  %flags123.i = getelementptr inbounds %struct.qla_hw_data, ptr %456, i32 0, i32 2
  %518 = ptrtoint ptr %flags123.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %bf.load124.i = load volatile i32, ptr %flags123.i, align 8
  %bf.clear125.i = and i32 %bf.load124.i, -2049
  store volatile i32 %bf.clear125.i, ptr %flags123.i, align 8
  %519 = ptrtoint ptr %fcp_prio_cfg.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %fcp_prio_cfg.i, align 4
  %attributes128.i = getelementptr inbounds %struct.qla_fcp_prio_cfg, ptr %520, i32 0, i32 6
  %521 = ptrtoint ptr %attributes128.i to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %attributes128.i, align 2
  %523 = and i8 %522, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %523)
  %tobool131.not.i = icmp eq i8 %523, 0
  br i1 %tobool131.not.i, label %if.end122.i.if.end137.i_crit_edge, label %if.then132.i316

if.end122.i.if.end137.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137.i

if.then132.i316:                                  ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #11
  %524 = ptrtoint ptr %flags123.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %bf.load134.i = load volatile i32, ptr %flags123.i, align 8
  %bf.set136.i = or i32 %bf.load134.i, 2048
  store volatile i32 %bf.set136.i, ptr %flags123.i, align 8
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.then132.i316, %if.end122.i.if.end137.i_crit_edge
  %call138.i = tail call i32 @qla24xx_update_all_fcp_prio(ptr noundef %hostdata.i.i296) #9
  %525 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %525)
  store i32 0, ptr %454, align 4
  br label %if.then141.i

if.then141.i:                                     ; preds = %if.end137.i, %if.end82.i, %if.then60.i, %sw.bb51.i.if.then141.i_crit_edge, %if.then41.i
  %526 = ptrtoint ptr %454 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %454, align 4
  %reply_payload_rcv_len143.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %454, i32 0, i32 1
  %528 = ptrtoint ptr %reply_payload_rcv_len143.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %reply_payload_rcv_len143.i, align 4
  tail call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %527, i32 noundef %529) #9
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %reply.i317 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %530 = ptrtoint ptr %reply.i317 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %reply.i317, align 4
  %532 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %bsg_job, align 4
  %call.i.i318 = tail call i32 @scsi_is_host_device(ptr noundef %533) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i318)
  %tobool.not.i.i319 = icmp eq i32 %call.i.i318, 0
  %534 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i319, label %if.end.i.i330, label %sw.bb14.while.cond.i.i.i323_crit_edge

sw.bb14.while.cond.i.i.i323_crit_edge:            ; preds = %sw.bb14
  br label %while.cond.i.i.i323

while.cond.i.i.i323:                              ; preds = %while.body.i.i.i326.while.cond.i.i.i323_crit_edge, %sw.bb14.while.cond.i.i.i323_crit_edge
  %dev.addr.0.i.i.i320 = phi ptr [ %537, %while.body.i.i.i326.while.cond.i.i.i323_crit_edge ], [ %535, %sw.bb14.while.cond.i.i.i323_crit_edge ]
  %call.i.i.i321 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i320) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i321)
  %tobool.not.i.i.i322 = icmp eq i32 %call.i.i.i321, 0
  br i1 %tobool.not.i.i.i322, label %while.body.i.i.i326, label %while.end.i.i.i328

while.body.i.i.i326:                              ; preds = %while.cond.i.i.i323
  %parent.i.i.i324 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i320, i32 0, i32 1
  %536 = ptrtoint ptr %parent.i.i.i324 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %parent.i.i.i324, align 8
  %tobool1.not.i.i.i325 = icmp eq ptr %537, null
  br i1 %tobool1.not.i.i.i325, label %while.body.i.i.i326.fc_bsg_to_shost.exit.i346_crit_edge, label %while.body.i.i.i326.while.cond.i.i.i323_crit_edge

while.body.i.i.i326.while.cond.i.i.i323_crit_edge: ; preds = %while.body.i.i.i326
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i323

while.body.i.i.i326.fc_bsg_to_shost.exit.i346_crit_edge: ; preds = %while.body.i.i.i326
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i346

while.end.i.i.i328:                               ; preds = %while.cond.i.i.i323
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i327 = getelementptr i8, ptr %dev.addr.0.i.i.i320, i32 -584
  br label %fc_bsg_to_shost.exit.i346

if.end.i.i330:                                    ; preds = %sw.bb14
  %parent.i.i329 = getelementptr inbounds %struct.device, ptr %535, i32 0, i32 1
  %538 = ptrtoint ptr %parent.i.i329 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %parent.i.i329, align 8
  br label %while.cond.i11.i.i334

while.cond.i11.i.i334:                            ; preds = %while.body.i14.i.i337.while.cond.i11.i.i334_crit_edge, %if.end.i.i330
  %dev.addr.0.i8.i.i331 = phi ptr [ %539, %if.end.i.i330 ], [ %541, %while.body.i14.i.i337.while.cond.i11.i.i334_crit_edge ]
  %call.i9.i.i332 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i331) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i332)
  %tobool.not.i10.i.i333 = icmp eq i32 %call.i9.i.i332, 0
  br i1 %tobool.not.i10.i.i333, label %while.body.i14.i.i337, label %while.end.i16.i.i339

while.body.i14.i.i337:                            ; preds = %while.cond.i11.i.i334
  %parent.i12.i.i335 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i331, i32 0, i32 1
  %540 = ptrtoint ptr %parent.i12.i.i335 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %parent.i12.i.i335, align 8
  %tobool1.not.i13.i.i336 = icmp eq ptr %541, null
  br i1 %tobool1.not.i13.i.i336, label %while.body.i14.i.i337.fc_bsg_to_shost.exit.i346_crit_edge, label %while.body.i14.i.i337.while.cond.i11.i.i334_crit_edge

while.body.i14.i.i337.while.cond.i11.i.i334_crit_edge: ; preds = %while.body.i14.i.i337
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i334

while.body.i14.i.i337.fc_bsg_to_shost.exit.i346_crit_edge: ; preds = %while.body.i14.i.i337
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i346

while.end.i16.i.i339:                             ; preds = %while.cond.i11.i.i334
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i338 = getelementptr i8, ptr %dev.addr.0.i8.i.i331, i32 -584
  br label %fc_bsg_to_shost.exit.i346

fc_bsg_to_shost.exit.i346:                        ; preds = %while.end.i16.i.i339, %while.body.i14.i.i337.fc_bsg_to_shost.exit.i346_crit_edge, %while.end.i.i.i328, %while.body.i.i.i326.fc_bsg_to_shost.exit.i346_crit_edge
  %retval.0.i.i340 = phi ptr [ %add.ptr.i.i.i327, %while.end.i.i.i328 ], [ %add.ptr.i15.i.i338, %while.end.i16.i.i339 ], [ null, %while.body.i14.i.i337.fc_bsg_to_shost.exit.i346_crit_edge ], [ null, %while.body.i.i.i326.fc_bsg_to_shost.exit.i346_crit_edge ]
  %hostdata.i.i341 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i340, i32 0, i32 53
  %hw.i342 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i341, i32 0, i32 52
  %542 = ptrtoint ptr %hw.i342 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %hw.i342, align 4
  %flags.i343 = getelementptr inbounds %struct.qla_hw_data, ptr %543, i32 0, i32 2
  %544 = ptrtoint ptr %flags.i343 to i32
  call void @__asan_load4_noabort(i32 %544)
  %bf.load.i344 = load volatile i32, ptr %flags.i343, align 8
  %545 = and i32 %bf.load.i344, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %545)
  %tobool.not.i345 = icmp eq i32 %545, 0
  br i1 %tobool.not.i345, label %if.end.i347, label %fc_bsg_to_shost.exit.i346.cleanup_crit_edge

fc_bsg_to_shost.exit.i346.cleanup_crit_edge:      ; preds = %fc_bsg_to_shost.exit.i346
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i347:                                      ; preds = %fc_bsg_to_shost.exit.i346
  %optrom_mutex.i = getelementptr inbounds %struct.qla_hw_data, ptr %543, i32 0, i32 203
  tail call void @mutex_lock_nested(ptr noundef %optrom_mutex.i, i32 noundef 0) #9
  %call2.i = tail call fastcc i32 @qla2x00_optrom_setup(ptr noundef %bsg_job, ptr noundef %hostdata.i.i341, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end6.i351, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i347
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %optrom_mutex.i) #9
  br label %cleanup

if.end6.i351:                                     ; preds = %if.end.i347
  call void @__sanitizer_cov_trace_pc() #11
  %isp_ops.i = getelementptr inbounds %struct.qla_hw_data, ptr %543, i32 0, i32 234
  %546 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %isp_ops.i, align 4
  %read_optrom.i = getelementptr inbounds %struct.isp_operations, ptr %547, i32 0, i32 29
  %548 = ptrtoint ptr %read_optrom.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %read_optrom.i, align 4
  %optrom_buffer.i = getelementptr inbounds %struct.qla_hw_data, ptr %543, i32 0, i32 198
  %550 = ptrtoint ptr %optrom_buffer.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %optrom_buffer.i, align 4
  %optrom_region_start.i = getelementptr inbounds %struct.qla_hw_data, ptr %543, i32 0, i32 201
  %552 = ptrtoint ptr %optrom_region_start.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %optrom_region_start.i, align 16
  %optrom_region_size.i = getelementptr inbounds %struct.qla_hw_data, ptr %543, i32 0, i32 202
  %554 = ptrtoint ptr %optrom_region_size.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %optrom_region_size.i, align 4
  %call7.i = tail call ptr %549(ptr noundef %hostdata.i.i341, ptr noundef %551, i32 noundef %553, i32 noundef %555) #9
  %sg_list.i348 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %556 = ptrtoint ptr %sg_list.i348 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %sg_list.i348, align 4
  %sg_cnt.i349 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %558 = ptrtoint ptr %sg_cnt.i349 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %sg_cnt.i349, align 4
  %560 = ptrtoint ptr %optrom_buffer.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %optrom_buffer.i, align 4
  %562 = ptrtoint ptr %optrom_region_size.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %optrom_region_size.i, align 4
  %call11.i = tail call i32 @sg_copy_from_buffer(ptr noundef %557, i32 noundef %559, ptr noundef %561, i32 noundef %563) #9
  %564 = ptrtoint ptr %optrom_region_size.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %optrom_region_size.i, align 4
  %reply_payload_rcv_len.i350 = getelementptr inbounds %struct.fc_bsg_reply, ptr %531, i32 0, i32 1
  %566 = ptrtoint ptr %reply_payload_rcv_len.i350 to i32
  call void @__asan_store4_noabort(i32 %566)
  store i32 %565, ptr %reply_payload_rcv_len.i350, align 4
  %567 = ptrtoint ptr %531 to i32
  call void @__asan_store4_noabort(i32 %567)
  store i32 0, ptr %531, align 4
  %568 = ptrtoint ptr %optrom_buffer.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %optrom_buffer.i, align 4
  tail call void @vfree(ptr noundef %569) #9
  %570 = ptrtoint ptr %optrom_buffer.i to i32
  call void @__asan_store4_noabort(i32 %570)
  store ptr null, ptr %optrom_buffer.i, align 4
  %optrom_state.i = getelementptr inbounds %struct.qla_hw_data, ptr %543, i32 0, i32 200
  %571 = ptrtoint ptr %optrom_state.i to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 0, ptr %optrom_state.i, align 4
  tail call void @mutex_unlock(ptr noundef %optrom_mutex.i) #9
  %572 = ptrtoint ptr %531 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %531, align 4
  %574 = ptrtoint ptr %reply_payload_rcv_len.i350 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %reply_payload_rcv_len.i350, align 4
  tail call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %573, i32 noundef %575) #9
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %reply.i353 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %576 = ptrtoint ptr %reply.i353 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %reply.i353, align 4
  %578 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %bsg_job, align 4
  %call.i.i354 = tail call i32 @scsi_is_host_device(ptr noundef %579) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i354)
  %tobool.not.i.i355 = icmp eq i32 %call.i.i354, 0
  %580 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i355, label %if.end.i.i366, label %sw.bb16.while.cond.i.i.i359_crit_edge

sw.bb16.while.cond.i.i.i359_crit_edge:            ; preds = %sw.bb16
  br label %while.cond.i.i.i359

while.cond.i.i.i359:                              ; preds = %while.body.i.i.i362.while.cond.i.i.i359_crit_edge, %sw.bb16.while.cond.i.i.i359_crit_edge
  %dev.addr.0.i.i.i356 = phi ptr [ %583, %while.body.i.i.i362.while.cond.i.i.i359_crit_edge ], [ %581, %sw.bb16.while.cond.i.i.i359_crit_edge ]
  %call.i.i.i357 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i356) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i357)
  %tobool.not.i.i.i358 = icmp eq i32 %call.i.i.i357, 0
  br i1 %tobool.not.i.i.i358, label %while.body.i.i.i362, label %while.end.i.i.i364

while.body.i.i.i362:                              ; preds = %while.cond.i.i.i359
  %parent.i.i.i360 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i356, i32 0, i32 1
  %582 = ptrtoint ptr %parent.i.i.i360 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %parent.i.i.i360, align 8
  %tobool1.not.i.i.i361 = icmp eq ptr %583, null
  br i1 %tobool1.not.i.i.i361, label %while.body.i.i.i362.fc_bsg_to_shost.exit.i382_crit_edge, label %while.body.i.i.i362.while.cond.i.i.i359_crit_edge

while.body.i.i.i362.while.cond.i.i.i359_crit_edge: ; preds = %while.body.i.i.i362
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i359

while.body.i.i.i362.fc_bsg_to_shost.exit.i382_crit_edge: ; preds = %while.body.i.i.i362
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i382

while.end.i.i.i364:                               ; preds = %while.cond.i.i.i359
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i363 = getelementptr i8, ptr %dev.addr.0.i.i.i356, i32 -584
  br label %fc_bsg_to_shost.exit.i382

if.end.i.i366:                                    ; preds = %sw.bb16
  %parent.i.i365 = getelementptr inbounds %struct.device, ptr %581, i32 0, i32 1
  %584 = ptrtoint ptr %parent.i.i365 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %parent.i.i365, align 8
  br label %while.cond.i11.i.i370

while.cond.i11.i.i370:                            ; preds = %while.body.i14.i.i373.while.cond.i11.i.i370_crit_edge, %if.end.i.i366
  %dev.addr.0.i8.i.i367 = phi ptr [ %585, %if.end.i.i366 ], [ %587, %while.body.i14.i.i373.while.cond.i11.i.i370_crit_edge ]
  %call.i9.i.i368 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i367) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i368)
  %tobool.not.i10.i.i369 = icmp eq i32 %call.i9.i.i368, 0
  br i1 %tobool.not.i10.i.i369, label %while.body.i14.i.i373, label %while.end.i16.i.i375

while.body.i14.i.i373:                            ; preds = %while.cond.i11.i.i370
  %parent.i12.i.i371 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i367, i32 0, i32 1
  %586 = ptrtoint ptr %parent.i12.i.i371 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %parent.i12.i.i371, align 8
  %tobool1.not.i13.i.i372 = icmp eq ptr %587, null
  br i1 %tobool1.not.i13.i.i372, label %while.body.i14.i.i373.fc_bsg_to_shost.exit.i382_crit_edge, label %while.body.i14.i.i373.while.cond.i11.i.i370_crit_edge

while.body.i14.i.i373.while.cond.i11.i.i370_crit_edge: ; preds = %while.body.i14.i.i373
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i370

while.body.i14.i.i373.fc_bsg_to_shost.exit.i382_crit_edge: ; preds = %while.body.i14.i.i373
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i382

while.end.i16.i.i375:                             ; preds = %while.cond.i11.i.i370
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i374 = getelementptr i8, ptr %dev.addr.0.i8.i.i367, i32 -584
  br label %fc_bsg_to_shost.exit.i382

fc_bsg_to_shost.exit.i382:                        ; preds = %while.end.i16.i.i375, %while.body.i14.i.i373.fc_bsg_to_shost.exit.i382_crit_edge, %while.end.i.i.i364, %while.body.i.i.i362.fc_bsg_to_shost.exit.i382_crit_edge
  %retval.0.i.i376 = phi ptr [ %add.ptr.i.i.i363, %while.end.i.i.i364 ], [ %add.ptr.i15.i.i374, %while.end.i16.i.i375 ], [ null, %while.body.i14.i.i373.fc_bsg_to_shost.exit.i382_crit_edge ], [ null, %while.body.i.i.i362.fc_bsg_to_shost.exit.i382_crit_edge ]
  %hostdata.i.i377 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i376, i32 0, i32 53
  %hw.i378 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i377, i32 0, i32 52
  %588 = ptrtoint ptr %hw.i378 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %hw.i378, align 4
  %optrom_mutex.i379 = getelementptr inbounds %struct.qla_hw_data, ptr %589, i32 0, i32 203
  tail call void @mutex_lock_nested(ptr noundef %optrom_mutex.i379, i32 noundef 0) #9
  %call2.i380 = tail call fastcc i32 @qla2x00_optrom_setup(ptr noundef %bsg_job, ptr noundef %hostdata.i.i377, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i380)
  %tobool.not.i381 = icmp eq i32 %call2.i380, 0
  br i1 %tobool.not.i381, label %if.end.i395, label %if.then.i383

if.then.i383:                                     ; preds = %fc_bsg_to_shost.exit.i382
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %optrom_mutex.i379) #9
  br label %cleanup

if.end.i395:                                      ; preds = %fc_bsg_to_shost.exit.i382
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i384 = getelementptr inbounds %struct.qla_hw_data, ptr %589, i32 0, i32 2
  %590 = ptrtoint ptr %flags.i384 to i32
  call void @__asan_load4_noabort(i32 %590)
  %bf.load.i385 = load volatile i32, ptr %flags.i384, align 8
  %bf.set.i = or i32 %bf.load.i385, 32
  store volatile i32 %bf.set.i, ptr %flags.i384, align 8
  %sg_list.i386 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %591 = ptrtoint ptr %sg_list.i386 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %sg_list.i386, align 4
  %sg_cnt.i387 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %593 = ptrtoint ptr %sg_cnt.i387 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %sg_cnt.i387, align 4
  %optrom_buffer.i388 = getelementptr inbounds %struct.qla_hw_data, ptr %589, i32 0, i32 198
  %595 = ptrtoint ptr %optrom_buffer.i388 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %optrom_buffer.i388, align 4
  %optrom_region_size.i389 = getelementptr inbounds %struct.qla_hw_data, ptr %589, i32 0, i32 202
  %597 = ptrtoint ptr %optrom_region_size.i389 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %optrom_region_size.i389, align 4
  %call5.i390 = tail call i32 @sg_copy_to_buffer(ptr noundef %592, i32 noundef %594, ptr noundef %596, i32 noundef %598) #9
  %isp_ops.i391 = getelementptr inbounds %struct.qla_hw_data, ptr %589, i32 0, i32 234
  %599 = ptrtoint ptr %isp_ops.i391 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %isp_ops.i391, align 4
  %write_optrom.i = getelementptr inbounds %struct.isp_operations, ptr %600, i32 0, i32 30
  %601 = ptrtoint ptr %write_optrom.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %write_optrom.i, align 4
  %603 = ptrtoint ptr %optrom_buffer.i388 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %optrom_buffer.i388, align 4
  %optrom_region_start.i392 = getelementptr inbounds %struct.qla_hw_data, ptr %589, i32 0, i32 201
  %605 = ptrtoint ptr %optrom_region_start.i392 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %optrom_region_start.i392, align 16
  %607 = ptrtoint ptr %optrom_region_size.i389 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load i32, ptr %optrom_region_size.i389, align 4
  %call8.i = tail call i32 %602(ptr noundef %hostdata.i.i377, ptr noundef %604, i32 noundef %606, i32 noundef %608) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  %..i = select i1 %tobool9.not.i, i32 0, i32 -22
  %609 = ptrtoint ptr %577 to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 %..i, ptr %577, align 4
  %610 = ptrtoint ptr %optrom_buffer.i388 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %optrom_buffer.i388, align 4
  tail call void @vfree(ptr noundef %611) #9
  %612 = ptrtoint ptr %optrom_buffer.i388 to i32
  call void @__asan_store4_noabort(i32 %612)
  store ptr null, ptr %optrom_buffer.i388, align 4
  %optrom_state.i393 = getelementptr inbounds %struct.qla_hw_data, ptr %589, i32 0, i32 200
  %613 = ptrtoint ptr %optrom_state.i393 to i32
  call void @__asan_store4_noabort(i32 %613)
  store i32 0, ptr %optrom_state.i393, align 4
  tail call void @mutex_unlock(ptr noundef %optrom_mutex.i379) #9
  %614 = ptrtoint ptr %577 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %577, align 4
  %reply_payload_rcv_len.i394 = getelementptr inbounds %struct.fc_bsg_reply, ptr %577, i32 0, i32 1
  %616 = ptrtoint ptr %reply_payload_rcv_len.i394 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load i32, ptr %reply_payload_rcv_len.i394, align 4
  tail call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %615, i32 noundef %617) #9
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %reply.i397 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %618 = ptrtoint ptr %reply.i397 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %reply.i397, align 4
  %620 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %bsg_job, align 4
  %call.i.i398 = tail call i32 @scsi_is_host_device(ptr noundef %621) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i398)
  %tobool.not.i.i399 = icmp eq i32 %call.i.i398, 0
  %622 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i399, label %if.end.i.i410, label %sw.bb18.while.cond.i.i.i403_crit_edge

sw.bb18.while.cond.i.i.i403_crit_edge:            ; preds = %sw.bb18
  br label %while.cond.i.i.i403

while.cond.i.i.i403:                              ; preds = %while.body.i.i.i406.while.cond.i.i.i403_crit_edge, %sw.bb18.while.cond.i.i.i403_crit_edge
  %dev.addr.0.i.i.i400 = phi ptr [ %625, %while.body.i.i.i406.while.cond.i.i.i403_crit_edge ], [ %623, %sw.bb18.while.cond.i.i.i403_crit_edge ]
  %call.i.i.i401 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i400) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i401)
  %tobool.not.i.i.i402 = icmp eq i32 %call.i.i.i401, 0
  br i1 %tobool.not.i.i.i402, label %while.body.i.i.i406, label %while.end.i.i.i408

while.body.i.i.i406:                              ; preds = %while.cond.i.i.i403
  %parent.i.i.i404 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i400, i32 0, i32 1
  %624 = ptrtoint ptr %parent.i.i.i404 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %parent.i.i.i404, align 8
  %tobool1.not.i.i.i405 = icmp eq ptr %625, null
  br i1 %tobool1.not.i.i.i405, label %while.body.i.i.i406.fc_bsg_to_shost.exit.i426_crit_edge, label %while.body.i.i.i406.while.cond.i.i.i403_crit_edge

while.body.i.i.i406.while.cond.i.i.i403_crit_edge: ; preds = %while.body.i.i.i406
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i403

while.body.i.i.i406.fc_bsg_to_shost.exit.i426_crit_edge: ; preds = %while.body.i.i.i406
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i426

while.end.i.i.i408:                               ; preds = %while.cond.i.i.i403
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i407 = getelementptr i8, ptr %dev.addr.0.i.i.i400, i32 -584
  br label %fc_bsg_to_shost.exit.i426

if.end.i.i410:                                    ; preds = %sw.bb18
  %parent.i.i409 = getelementptr inbounds %struct.device, ptr %623, i32 0, i32 1
  %626 = ptrtoint ptr %parent.i.i409 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %parent.i.i409, align 8
  br label %while.cond.i11.i.i414

while.cond.i11.i.i414:                            ; preds = %while.body.i14.i.i417.while.cond.i11.i.i414_crit_edge, %if.end.i.i410
  %dev.addr.0.i8.i.i411 = phi ptr [ %627, %if.end.i.i410 ], [ %629, %while.body.i14.i.i417.while.cond.i11.i.i414_crit_edge ]
  %call.i9.i.i412 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i411) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i412)
  %tobool.not.i10.i.i413 = icmp eq i32 %call.i9.i.i412, 0
  br i1 %tobool.not.i10.i.i413, label %while.body.i14.i.i417, label %while.end.i16.i.i419

while.body.i14.i.i417:                            ; preds = %while.cond.i11.i.i414
  %parent.i12.i.i415 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i411, i32 0, i32 1
  %628 = ptrtoint ptr %parent.i12.i.i415 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %parent.i12.i.i415, align 8
  %tobool1.not.i13.i.i416 = icmp eq ptr %629, null
  br i1 %tobool1.not.i13.i.i416, label %while.body.i14.i.i417.fc_bsg_to_shost.exit.i426_crit_edge, label %while.body.i14.i.i417.while.cond.i11.i.i414_crit_edge

while.body.i14.i.i417.while.cond.i11.i.i414_crit_edge: ; preds = %while.body.i14.i.i417
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i414

while.body.i14.i.i417.fc_bsg_to_shost.exit.i426_crit_edge: ; preds = %while.body.i14.i.i417
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i426

while.end.i16.i.i419:                             ; preds = %while.cond.i11.i.i414
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i418 = getelementptr i8, ptr %dev.addr.0.i8.i.i411, i32 -584
  br label %fc_bsg_to_shost.exit.i426

fc_bsg_to_shost.exit.i426:                        ; preds = %while.end.i16.i.i419, %while.body.i14.i.i417.fc_bsg_to_shost.exit.i426_crit_edge, %while.end.i.i.i408, %while.body.i.i.i406.fc_bsg_to_shost.exit.i426_crit_edge
  %retval.0.i.i420 = phi ptr [ %add.ptr.i.i.i407, %while.end.i.i.i408 ], [ %add.ptr.i15.i.i418, %while.end.i16.i.i419 ], [ null, %while.body.i14.i.i417.fc_bsg_to_shost.exit.i426_crit_edge ], [ null, %while.body.i.i.i406.fc_bsg_to_shost.exit.i426_crit_edge ]
  %hostdata.i.i421 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i420, i32 0, i32 53
  %hw.i422 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i421, i32 0, i32 52
  %630 = ptrtoint ptr %hw.i422 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %hw.i422, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %bsg.i) #9
  %632 = call ptr @memset(ptr %bsg.i, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sfp_dma.i) #9
  %633 = ptrtoint ptr %sfp_dma.i to i32
  call void @__asan_store4_noabort(i32 %633)
  store i32 -1, ptr %sfp_dma.i, align 4, !annotation !234
  %s_dma_pool.i423 = getelementptr inbounds %struct.qla_hw_data, ptr %631, i32 0, i32 96
  %634 = ptrtoint ptr %s_dma_pool.i423 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %s_dma_pool.i423, align 4
  %call2.i424 = call ptr @dma_pool_alloc(ptr noundef %635, i32 noundef 3264, ptr noundef nonnull %sfp_dma.i) #9
  %tobool.not.i425 = icmp eq ptr %call2.i424, null
  br i1 %tobool.not.i425, label %if.then.i427, label %if.end.i431

if.then.i427:                                     ; preds = %fc_bsg_to_shost.exit.i426
  call void @__sanitizer_cov_trace_pc() #11
  %reply_data.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %619, i32 0, i32 2
  %636 = ptrtoint ptr %reply_data.i to i32
  call void @__asan_store4_noabort(i32 %636)
  store i32 17, ptr %reply_data.i, align 4
  br label %qla2x00_update_fru_versions.exit

if.end.i431:                                      ; preds = %fc_bsg_to_shost.exit.i426
  %sg_list.i428 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %637 = ptrtoint ptr %sg_list.i428 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %sg_list.i428, align 4
  %sg_cnt.i429 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %639 = ptrtoint ptr %sg_cnt.i429 to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load i32, ptr %sg_cnt.i429, align 4
  %call4.i430 = call i32 @sg_copy_to_buffer(ptr noundef %638, i32 noundef %640, ptr noundef nonnull %bsg.i, i32 noundef 256) #9
  %641 = ptrtoint ptr %bsg.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load i32, ptr %bsg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %642)
  %tobool7.not5.i = icmp eq i32 %642, 0
  br i1 %tobool7.not5.i, label %if.end.i431.dealloc.i_crit_edge, label %while.body.preheader.i

if.end.i431.dealloc.i_crit_edge:                  ; preds = %if.end.i431
  call void @__sanitizer_cov_trace_pc() #11
  br label %dealloc.i

while.body.preheader.i:                           ; preds = %if.end.i431
  %version.i = getelementptr inbounds %struct.qla_image_version_list, ptr %bsg.i, i32 0, i32 1
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %dec7.i = add i32 %dec7.in.i, -1
  %incdec.ptr.i = getelementptr %struct.qla_image_version, ptr %image.06.i, i32 1
  %tobool7.not.i = icmp eq i32 %dec7.i, 0
  br i1 %tobool7.not.i, label %while.cond.i.dealloc.i_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond.i.dealloc.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dealloc.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.body.preheader.i
  %dec7.in.i = phi i32 [ %dec7.i, %while.cond.i.while.body.i_crit_edge ], [ %642, %while.body.preheader.i ]
  %image.06.i = phi ptr [ %incdec.ptr.i, %while.cond.i.while.body.i_crit_edge ], [ %version.i, %while.body.preheader.i ]
  %field_info.i = getelementptr inbounds %struct.qla_image_version, ptr %image.06.i, i32 0, i32 1
  %643 = call ptr @memcpy(ptr %call2.i424, ptr %field_info.i, i32 36)
  %644 = ptrtoint ptr %sfp_dma.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %sfp_dma.i, align 4
  %device.i = getelementptr inbounds %struct.qla_field_address, ptr %image.06.i, i32 0, i32 1
  %646 = ptrtoint ptr %device.i to i32
  call void @__asan_loadN_noabort(i32 %646, i32 2)
  %647 = load i16, ptr %device.i, align 1
  %648 = ptrtoint ptr %image.06.i to i32
  call void @__asan_loadN_noabort(i32 %648, i32 2)
  %649 = load i16, ptr %image.06.i, align 1
  %option.i = getelementptr inbounds %struct.qla_field_address, ptr %image.06.i, i32 0, i32 2
  %650 = ptrtoint ptr %option.i to i32
  call void @__asan_loadN_noabort(i32 %650, i32 2)
  %651 = load i16, ptr %option.i, align 1
  %call10.i = call i32 @qla2x00_write_sfp(ptr noundef %hostdata.i.i421, i32 noundef %645, ptr noundef nonnull %call2.i424, i16 noundef zeroext %647, i16 noundef zeroext %649, i16 noundef zeroext 36, i16 noundef zeroext %651) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %while.cond.i, label %while.body.i.dealloc.i_crit_edge

while.body.i.dealloc.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dealloc.i

dealloc.i:                                        ; preds = %while.body.i.dealloc.i_crit_edge, %while.cond.i.dealloc.i_crit_edge, %if.end.i431.dealloc.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.end.i431.dealloc.i_crit_edge ], [ 0, %while.cond.i.dealloc.i_crit_edge ], [ 11, %while.body.i.dealloc.i_crit_edge ]
  %reply_data17.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %619, i32 0, i32 2
  %652 = ptrtoint ptr %reply_data17.i to i32
  call void @__asan_store4_noabort(i32 %652)
  store i32 %.sink.i, ptr %reply_data17.i, align 4
  %653 = ptrtoint ptr %s_dma_pool.i423 to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %s_dma_pool.i423, align 4
  %655 = ptrtoint ptr %sfp_dma.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %sfp_dma.i, align 4
  call void @dma_pool_free(ptr noundef %654, ptr noundef nonnull %call2.i424, i32 noundef %656) #9
  br label %qla2x00_update_fru_versions.exit

qla2x00_update_fru_versions.exit:                 ; preds = %dealloc.i, %if.then.i427
  %reply_len.i432 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %657 = ptrtoint ptr %reply_len.i432 to i32
  call void @__asan_store4_noabort(i32 %657)
  store i32 16, ptr %reply_len.i432, align 4
  %658 = ptrtoint ptr %619 to i32
  call void @__asan_store4_noabort(i32 %658)
  store i32 0, ptr %619, align 4
  %reply_payload_rcv_len.i433 = getelementptr inbounds %struct.fc_bsg_reply, ptr %619, i32 0, i32 1
  %659 = ptrtoint ptr %reply_payload_rcv_len.i433 to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %reply_payload_rcv_len.i433, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %660) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sfp_dma.i) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %bsg.i) #9
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  %reply.i436 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %661 = ptrtoint ptr %reply.i436 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %reply.i436, align 4
  %663 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %bsg_job, align 4
  %call.i.i437 = tail call i32 @scsi_is_host_device(ptr noundef %664) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i437)
  %tobool.not.i.i438 = icmp eq i32 %call.i.i437, 0
  %665 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i438, label %if.end.i.i449, label %sw.bb20.while.cond.i.i.i442_crit_edge

sw.bb20.while.cond.i.i.i442_crit_edge:            ; preds = %sw.bb20
  br label %while.cond.i.i.i442

while.cond.i.i.i442:                              ; preds = %while.body.i.i.i445.while.cond.i.i.i442_crit_edge, %sw.bb20.while.cond.i.i.i442_crit_edge
  %dev.addr.0.i.i.i439 = phi ptr [ %668, %while.body.i.i.i445.while.cond.i.i.i442_crit_edge ], [ %666, %sw.bb20.while.cond.i.i.i442_crit_edge ]
  %call.i.i.i440 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i439) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i440)
  %tobool.not.i.i.i441 = icmp eq i32 %call.i.i.i440, 0
  br i1 %tobool.not.i.i.i441, label %while.body.i.i.i445, label %while.end.i.i.i447

while.body.i.i.i445:                              ; preds = %while.cond.i.i.i442
  %parent.i.i.i443 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i439, i32 0, i32 1
  %667 = ptrtoint ptr %parent.i.i.i443 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %parent.i.i.i443, align 8
  %tobool1.not.i.i.i444 = icmp eq ptr %668, null
  br i1 %tobool1.not.i.i.i444, label %while.body.i.i.i445.fc_bsg_to_shost.exit.i465_crit_edge, label %while.body.i.i.i445.while.cond.i.i.i442_crit_edge

while.body.i.i.i445.while.cond.i.i.i442_crit_edge: ; preds = %while.body.i.i.i445
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i442

while.body.i.i.i445.fc_bsg_to_shost.exit.i465_crit_edge: ; preds = %while.body.i.i.i445
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i465

while.end.i.i.i447:                               ; preds = %while.cond.i.i.i442
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i446 = getelementptr i8, ptr %dev.addr.0.i.i.i439, i32 -584
  br label %fc_bsg_to_shost.exit.i465

if.end.i.i449:                                    ; preds = %sw.bb20
  %parent.i.i448 = getelementptr inbounds %struct.device, ptr %666, i32 0, i32 1
  %669 = ptrtoint ptr %parent.i.i448 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %parent.i.i448, align 8
  br label %while.cond.i11.i.i453

while.cond.i11.i.i453:                            ; preds = %while.body.i14.i.i456.while.cond.i11.i.i453_crit_edge, %if.end.i.i449
  %dev.addr.0.i8.i.i450 = phi ptr [ %670, %if.end.i.i449 ], [ %672, %while.body.i14.i.i456.while.cond.i11.i.i453_crit_edge ]
  %call.i9.i.i451 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i450) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i451)
  %tobool.not.i10.i.i452 = icmp eq i32 %call.i9.i.i451, 0
  br i1 %tobool.not.i10.i.i452, label %while.body.i14.i.i456, label %while.end.i16.i.i458

while.body.i14.i.i456:                            ; preds = %while.cond.i11.i.i453
  %parent.i12.i.i454 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i450, i32 0, i32 1
  %671 = ptrtoint ptr %parent.i12.i.i454 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %parent.i12.i.i454, align 8
  %tobool1.not.i13.i.i455 = icmp eq ptr %672, null
  br i1 %tobool1.not.i13.i.i455, label %while.body.i14.i.i456.fc_bsg_to_shost.exit.i465_crit_edge, label %while.body.i14.i.i456.while.cond.i11.i.i453_crit_edge

while.body.i14.i.i456.while.cond.i11.i.i453_crit_edge: ; preds = %while.body.i14.i.i456
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i453

while.body.i14.i.i456.fc_bsg_to_shost.exit.i465_crit_edge: ; preds = %while.body.i14.i.i456
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i465

while.end.i16.i.i458:                             ; preds = %while.cond.i11.i.i453
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i457 = getelementptr i8, ptr %dev.addr.0.i8.i.i450, i32 -584
  br label %fc_bsg_to_shost.exit.i465

fc_bsg_to_shost.exit.i465:                        ; preds = %while.end.i16.i.i458, %while.body.i14.i.i456.fc_bsg_to_shost.exit.i465_crit_edge, %while.end.i.i.i447, %while.body.i.i.i445.fc_bsg_to_shost.exit.i465_crit_edge
  %retval.0.i.i459 = phi ptr [ %add.ptr.i.i.i446, %while.end.i.i.i447 ], [ %add.ptr.i15.i.i457, %while.end.i16.i.i458 ], [ null, %while.body.i14.i.i456.fc_bsg_to_shost.exit.i465_crit_edge ], [ null, %while.body.i.i.i445.fc_bsg_to_shost.exit.i465_crit_edge ]
  %hostdata.i.i460 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i459, i32 0, i32 53
  %hw.i461 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i460, i32 0, i32 52
  %673 = ptrtoint ptr %hw.i461 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %hw.i461, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %bsg.i434) #9
  %675 = call ptr @memset(ptr %bsg.i434, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sfp_dma.i435) #9
  %676 = ptrtoint ptr %sfp_dma.i435 to i32
  call void @__asan_store4_noabort(i32 %676)
  store i32 -1, ptr %sfp_dma.i435, align 4, !annotation !234
  %s_dma_pool.i462 = getelementptr inbounds %struct.qla_hw_data, ptr %674, i32 0, i32 96
  %677 = ptrtoint ptr %s_dma_pool.i462 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %s_dma_pool.i462, align 4
  %call2.i463 = call ptr @dma_pool_alloc(ptr noundef %678, i32 noundef 3264, ptr noundef nonnull %sfp_dma.i435) #9
  %tobool.not.i464 = icmp eq ptr %call2.i463, null
  br i1 %tobool.not.i464, label %if.then.i467, label %if.end.i474

if.then.i467:                                     ; preds = %fc_bsg_to_shost.exit.i465
  call void @__sanitizer_cov_trace_pc() #11
  %reply_data.i466 = getelementptr inbounds %struct.fc_bsg_reply, ptr %662, i32 0, i32 2
  %679 = ptrtoint ptr %reply_data.i466 to i32
  call void @__asan_store4_noabort(i32 %679)
  store i32 17, ptr %reply_data.i466, align 4
  br label %qla2x00_read_fru_status.exit

if.end.i474:                                      ; preds = %fc_bsg_to_shost.exit.i465
  %sg_list.i468 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %680 = ptrtoint ptr %sg_list.i468 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %sg_list.i468, align 4
  %sg_cnt.i469 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %682 = ptrtoint ptr %sg_cnt.i469 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %sg_cnt.i469, align 4
  %call4.i470 = call i32 @sg_copy_to_buffer(ptr noundef %681, i32 noundef %683, ptr noundef nonnull %bsg.i434, i32 noundef 14) #9
  %684 = ptrtoint ptr %sfp_dma.i435 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %sfp_dma.i435, align 4
  %device.i471 = getelementptr inbounds %struct.qla_field_address, ptr %bsg.i434, i32 0, i32 1
  %686 = ptrtoint ptr %device.i471 to i32
  call void @__asan_load2_noabort(i32 %686)
  %687 = load i16, ptr %device.i471, align 2
  %688 = ptrtoint ptr %bsg.i434 to i32
  call void @__asan_load2_noabort(i32 %688)
  %689 = load i16, ptr %bsg.i434, align 2
  %option.i472 = getelementptr inbounds %struct.qla_field_address, ptr %bsg.i434, i32 0, i32 2
  %690 = ptrtoint ptr %option.i472 to i32
  call void @__asan_load2_noabort(i32 %690)
  %691 = load i16, ptr %option.i472, align 2
  %call7.i473 = call i32 @qla2x00_read_sfp(ptr noundef %hostdata.i.i460, i32 noundef %685, ptr noundef nonnull %call2.i463, i16 noundef zeroext %687, i16 noundef zeroext %689, i16 noundef zeroext 1, i16 noundef zeroext %691) #9
  %692 = ptrtoint ptr %call2.i463 to i32
  call void @__asan_load1_noabort(i32 %692)
  %693 = load i8, ptr %call2.i463, align 1
  %status_reg.i = getelementptr inbounds %struct.qla_status_reg, ptr %bsg.i434, i32 0, i32 1
  %694 = ptrtoint ptr %status_reg.i to i32
  call void @__asan_store1_noabort(i32 %694)
  store i8 %693, ptr %status_reg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i473)
  %tobool8.not.i = icmp eq i32 %call7.i473, 0
  br i1 %tobool8.not.i, label %if.end13.i, label %if.end.i474.dealloc.i476_crit_edge

if.end.i474.dealloc.i476_crit_edge:               ; preds = %if.end.i474
  call void @__sanitizer_cov_trace_pc() #11
  br label %dealloc.i476

if.end13.i:                                       ; preds = %if.end.i474
  call void @__sanitizer_cov_trace_pc() #11
  %sg_list14.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %695 = ptrtoint ptr %sg_list14.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %sg_list14.i, align 4
  %sg_cnt16.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %697 = ptrtoint ptr %sg_cnt16.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load i32, ptr %sg_cnt16.i, align 4
  %call17.i = call i32 @sg_copy_from_buffer(ptr noundef %696, i32 noundef %698, ptr noundef nonnull %bsg.i434, i32 noundef 14) #9
  br label %dealloc.i476

dealloc.i476:                                     ; preds = %if.end13.i, %if.end.i474.dealloc.i476_crit_edge
  %.sink.i475 = phi i32 [ 0, %if.end13.i ], [ 11, %if.end.i474.dealloc.i476_crit_edge ]
  %699 = getelementptr inbounds %struct.fc_bsg_reply, ptr %662, i32 0, i32 2
  %700 = ptrtoint ptr %699 to i32
  call void @__asan_store4_noabort(i32 %700)
  store i32 %.sink.i475, ptr %699, align 4
  %701 = ptrtoint ptr %s_dma_pool.i462 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %s_dma_pool.i462, align 4
  %703 = ptrtoint ptr %sfp_dma.i435 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load i32, ptr %sfp_dma.i435, align 4
  call void @dma_pool_free(ptr noundef %702, ptr noundef nonnull %call2.i463, i32 noundef %704) #9
  br label %qla2x00_read_fru_status.exit

qla2x00_read_fru_status.exit:                     ; preds = %dealloc.i476, %if.then.i467
  %reply_len.i477 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %705 = ptrtoint ptr %reply_len.i477 to i32
  call void @__asan_store4_noabort(i32 %705)
  store i32 16, ptr %reply_len.i477, align 4
  %reply_payload_rcv_len.i478 = getelementptr inbounds %struct.fc_bsg_reply, ptr %662, i32 0, i32 1
  %706 = ptrtoint ptr %reply_payload_rcv_len.i478 to i32
  call void @__asan_store4_noabort(i32 %706)
  store i32 14, ptr %reply_payload_rcv_len.i478, align 4
  %707 = ptrtoint ptr %662 to i32
  call void @__asan_store4_noabort(i32 %707)
  store i32 0, ptr %662, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef 14) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sfp_dma.i435) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %bsg.i434) #9
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %reply.i481 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %708 = ptrtoint ptr %reply.i481 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %reply.i481, align 4
  %710 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %bsg_job, align 4
  %call.i.i482 = tail call i32 @scsi_is_host_device(ptr noundef %711) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i482)
  %tobool.not.i.i483 = icmp eq i32 %call.i.i482, 0
  %712 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i483, label %if.end.i.i494, label %sw.bb22.while.cond.i.i.i487_crit_edge

sw.bb22.while.cond.i.i.i487_crit_edge:            ; preds = %sw.bb22
  br label %while.cond.i.i.i487

while.cond.i.i.i487:                              ; preds = %while.body.i.i.i490.while.cond.i.i.i487_crit_edge, %sw.bb22.while.cond.i.i.i487_crit_edge
  %dev.addr.0.i.i.i484 = phi ptr [ %715, %while.body.i.i.i490.while.cond.i.i.i487_crit_edge ], [ %713, %sw.bb22.while.cond.i.i.i487_crit_edge ]
  %call.i.i.i485 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i484) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i485)
  %tobool.not.i.i.i486 = icmp eq i32 %call.i.i.i485, 0
  br i1 %tobool.not.i.i.i486, label %while.body.i.i.i490, label %while.end.i.i.i492

while.body.i.i.i490:                              ; preds = %while.cond.i.i.i487
  %parent.i.i.i488 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i484, i32 0, i32 1
  %714 = ptrtoint ptr %parent.i.i.i488 to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %parent.i.i.i488, align 8
  %tobool1.not.i.i.i489 = icmp eq ptr %715, null
  br i1 %tobool1.not.i.i.i489, label %while.body.i.i.i490.fc_bsg_to_shost.exit.i510_crit_edge, label %while.body.i.i.i490.while.cond.i.i.i487_crit_edge

while.body.i.i.i490.while.cond.i.i.i487_crit_edge: ; preds = %while.body.i.i.i490
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i487

while.body.i.i.i490.fc_bsg_to_shost.exit.i510_crit_edge: ; preds = %while.body.i.i.i490
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i510

while.end.i.i.i492:                               ; preds = %while.cond.i.i.i487
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i491 = getelementptr i8, ptr %dev.addr.0.i.i.i484, i32 -584
  br label %fc_bsg_to_shost.exit.i510

if.end.i.i494:                                    ; preds = %sw.bb22
  %parent.i.i493 = getelementptr inbounds %struct.device, ptr %713, i32 0, i32 1
  %716 = ptrtoint ptr %parent.i.i493 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %parent.i.i493, align 8
  br label %while.cond.i11.i.i498

while.cond.i11.i.i498:                            ; preds = %while.body.i14.i.i501.while.cond.i11.i.i498_crit_edge, %if.end.i.i494
  %dev.addr.0.i8.i.i495 = phi ptr [ %717, %if.end.i.i494 ], [ %719, %while.body.i14.i.i501.while.cond.i11.i.i498_crit_edge ]
  %call.i9.i.i496 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i495) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i496)
  %tobool.not.i10.i.i497 = icmp eq i32 %call.i9.i.i496, 0
  br i1 %tobool.not.i10.i.i497, label %while.body.i14.i.i501, label %while.end.i16.i.i503

while.body.i14.i.i501:                            ; preds = %while.cond.i11.i.i498
  %parent.i12.i.i499 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i495, i32 0, i32 1
  %718 = ptrtoint ptr %parent.i12.i.i499 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %parent.i12.i.i499, align 8
  %tobool1.not.i13.i.i500 = icmp eq ptr %719, null
  br i1 %tobool1.not.i13.i.i500, label %while.body.i14.i.i501.fc_bsg_to_shost.exit.i510_crit_edge, label %while.body.i14.i.i501.while.cond.i11.i.i498_crit_edge

while.body.i14.i.i501.while.cond.i11.i.i498_crit_edge: ; preds = %while.body.i14.i.i501
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i498

while.body.i14.i.i501.fc_bsg_to_shost.exit.i510_crit_edge: ; preds = %while.body.i14.i.i501
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i510

while.end.i16.i.i503:                             ; preds = %while.cond.i11.i.i498
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i502 = getelementptr i8, ptr %dev.addr.0.i8.i.i495, i32 -584
  br label %fc_bsg_to_shost.exit.i510

fc_bsg_to_shost.exit.i510:                        ; preds = %while.end.i16.i.i503, %while.body.i14.i.i501.fc_bsg_to_shost.exit.i510_crit_edge, %while.end.i.i.i492, %while.body.i.i.i490.fc_bsg_to_shost.exit.i510_crit_edge
  %retval.0.i.i504 = phi ptr [ %add.ptr.i.i.i491, %while.end.i.i.i492 ], [ %add.ptr.i15.i.i502, %while.end.i16.i.i503 ], [ null, %while.body.i14.i.i501.fc_bsg_to_shost.exit.i510_crit_edge ], [ null, %while.body.i.i.i490.fc_bsg_to_shost.exit.i510_crit_edge ]
  %hostdata.i.i505 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i504, i32 0, i32 53
  %hw.i506 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i505, i32 0, i32 52
  %720 = ptrtoint ptr %hw.i506 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %hw.i506, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %bsg.i479) #9
  %722 = call ptr @memset(ptr %bsg.i479, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sfp_dma.i480) #9
  %723 = ptrtoint ptr %sfp_dma.i480 to i32
  call void @__asan_store4_noabort(i32 %723)
  store i32 -1, ptr %sfp_dma.i480, align 4, !annotation !234
  %s_dma_pool.i507 = getelementptr inbounds %struct.qla_hw_data, ptr %721, i32 0, i32 96
  %724 = ptrtoint ptr %s_dma_pool.i507 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %s_dma_pool.i507, align 4
  %call2.i508 = call ptr @dma_pool_alloc(ptr noundef %725, i32 noundef 3264, ptr noundef nonnull %sfp_dma.i480) #9
  %tobool.not.i509 = icmp eq ptr %call2.i508, null
  br i1 %tobool.not.i509, label %if.then.i512, label %if.end.i522

if.then.i512:                                     ; preds = %fc_bsg_to_shost.exit.i510
  call void @__sanitizer_cov_trace_pc() #11
  %reply_data.i511 = getelementptr inbounds %struct.fc_bsg_reply, ptr %709, i32 0, i32 2
  %726 = ptrtoint ptr %reply_data.i511 to i32
  call void @__asan_store4_noabort(i32 %726)
  store i32 17, ptr %reply_data.i511, align 4
  br label %qla2x00_write_fru_status.exit

if.end.i522:                                      ; preds = %fc_bsg_to_shost.exit.i510
  call void @__sanitizer_cov_trace_pc() #11
  %sg_list.i513 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %727 = ptrtoint ptr %sg_list.i513 to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %sg_list.i513, align 4
  %sg_cnt.i514 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %729 = ptrtoint ptr %sg_cnt.i514 to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load i32, ptr %sg_cnt.i514, align 4
  %call4.i515 = call i32 @sg_copy_to_buffer(ptr noundef %728, i32 noundef %730, ptr noundef nonnull %bsg.i479, i32 noundef 14) #9
  %status_reg.i516 = getelementptr inbounds %struct.qla_status_reg, ptr %bsg.i479, i32 0, i32 1
  %731 = ptrtoint ptr %status_reg.i516 to i32
  call void @__asan_load1_noabort(i32 %731)
  %732 = load i8, ptr %status_reg.i516, align 2
  %733 = ptrtoint ptr %call2.i508 to i32
  call void @__asan_store1_noabort(i32 %733)
  store i8 %732, ptr %call2.i508, align 1
  %734 = ptrtoint ptr %sfp_dma.i480 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load i32, ptr %sfp_dma.i480, align 4
  %device.i517 = getelementptr inbounds %struct.qla_field_address, ptr %bsg.i479, i32 0, i32 1
  %736 = ptrtoint ptr %device.i517 to i32
  call void @__asan_load2_noabort(i32 %736)
  %737 = load i16, ptr %device.i517, align 2
  %738 = ptrtoint ptr %bsg.i479 to i32
  call void @__asan_load2_noabort(i32 %738)
  %739 = load i16, ptr %bsg.i479, align 2
  %option.i518 = getelementptr inbounds %struct.qla_field_address, ptr %bsg.i479, i32 0, i32 2
  %740 = ptrtoint ptr %option.i518 to i32
  call void @__asan_load2_noabort(i32 %740)
  %741 = load i16, ptr %option.i518, align 2
  %call7.i519 = call i32 @qla2x00_write_sfp(ptr noundef %hostdata.i.i505, i32 noundef %735, ptr noundef nonnull %call2.i508, i16 noundef zeroext %737, i16 noundef zeroext %739, i16 noundef zeroext 1, i16 noundef zeroext %741) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i519)
  %tobool8.not.i520 = icmp eq i32 %call7.i519, 0
  %spec.select.i521 = select i1 %tobool8.not.i520, i32 0, i32 11
  %742 = getelementptr inbounds %struct.fc_bsg_reply, ptr %709, i32 0, i32 2
  %743 = ptrtoint ptr %742 to i32
  call void @__asan_store4_noabort(i32 %743)
  store i32 %spec.select.i521, ptr %742, align 4
  %744 = ptrtoint ptr %s_dma_pool.i507 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %s_dma_pool.i507, align 4
  %746 = ptrtoint ptr %sfp_dma.i480 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load i32, ptr %sfp_dma.i480, align 4
  call void @dma_pool_free(ptr noundef %745, ptr noundef nonnull %call2.i508, i32 noundef %747) #9
  br label %qla2x00_write_fru_status.exit

qla2x00_write_fru_status.exit:                    ; preds = %if.end.i522, %if.then.i512
  %reply_len.i523 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %748 = ptrtoint ptr %reply_len.i523 to i32
  call void @__asan_store4_noabort(i32 %748)
  store i32 16, ptr %reply_len.i523, align 4
  %749 = ptrtoint ptr %709 to i32
  call void @__asan_store4_noabort(i32 %749)
  store i32 0, ptr %709, align 4
  %reply_payload_rcv_len.i524 = getelementptr inbounds %struct.fc_bsg_reply, ptr %709, i32 0, i32 1
  %750 = ptrtoint ptr %reply_payload_rcv_len.i524 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load i32, ptr %reply_payload_rcv_len.i524, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %751) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sfp_dma.i480) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %bsg.i479) #9
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %reply.i527 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %752 = ptrtoint ptr %reply.i527 to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %reply.i527, align 4
  %754 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %bsg_job, align 4
  %call.i.i528 = tail call i32 @scsi_is_host_device(ptr noundef %755) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i528)
  %tobool.not.i.i529 = icmp eq i32 %call.i.i528, 0
  %756 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i529, label %if.end.i.i540, label %sw.bb24.while.cond.i.i.i533_crit_edge

sw.bb24.while.cond.i.i.i533_crit_edge:            ; preds = %sw.bb24
  br label %while.cond.i.i.i533

while.cond.i.i.i533:                              ; preds = %while.body.i.i.i536.while.cond.i.i.i533_crit_edge, %sw.bb24.while.cond.i.i.i533_crit_edge
  %dev.addr.0.i.i.i530 = phi ptr [ %759, %while.body.i.i.i536.while.cond.i.i.i533_crit_edge ], [ %757, %sw.bb24.while.cond.i.i.i533_crit_edge ]
  %call.i.i.i531 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i530) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i531)
  %tobool.not.i.i.i532 = icmp eq i32 %call.i.i.i531, 0
  br i1 %tobool.not.i.i.i532, label %while.body.i.i.i536, label %while.end.i.i.i538

while.body.i.i.i536:                              ; preds = %while.cond.i.i.i533
  %parent.i.i.i534 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i530, i32 0, i32 1
  %758 = ptrtoint ptr %parent.i.i.i534 to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %parent.i.i.i534, align 8
  %tobool1.not.i.i.i535 = icmp eq ptr %759, null
  br i1 %tobool1.not.i.i.i535, label %while.body.i.i.i536.fc_bsg_to_shost.exit.i556_crit_edge, label %while.body.i.i.i536.while.cond.i.i.i533_crit_edge

while.body.i.i.i536.while.cond.i.i.i533_crit_edge: ; preds = %while.body.i.i.i536
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i533

while.body.i.i.i536.fc_bsg_to_shost.exit.i556_crit_edge: ; preds = %while.body.i.i.i536
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i556

while.end.i.i.i538:                               ; preds = %while.cond.i.i.i533
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i537 = getelementptr i8, ptr %dev.addr.0.i.i.i530, i32 -584
  br label %fc_bsg_to_shost.exit.i556

if.end.i.i540:                                    ; preds = %sw.bb24
  %parent.i.i539 = getelementptr inbounds %struct.device, ptr %757, i32 0, i32 1
  %760 = ptrtoint ptr %parent.i.i539 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %parent.i.i539, align 8
  br label %while.cond.i11.i.i544

while.cond.i11.i.i544:                            ; preds = %while.body.i14.i.i547.while.cond.i11.i.i544_crit_edge, %if.end.i.i540
  %dev.addr.0.i8.i.i541 = phi ptr [ %761, %if.end.i.i540 ], [ %763, %while.body.i14.i.i547.while.cond.i11.i.i544_crit_edge ]
  %call.i9.i.i542 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i541) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i542)
  %tobool.not.i10.i.i543 = icmp eq i32 %call.i9.i.i542, 0
  br i1 %tobool.not.i10.i.i543, label %while.body.i14.i.i547, label %while.end.i16.i.i549

while.body.i14.i.i547:                            ; preds = %while.cond.i11.i.i544
  %parent.i12.i.i545 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i541, i32 0, i32 1
  %762 = ptrtoint ptr %parent.i12.i.i545 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %parent.i12.i.i545, align 8
  %tobool1.not.i13.i.i546 = icmp eq ptr %763, null
  br i1 %tobool1.not.i13.i.i546, label %while.body.i14.i.i547.fc_bsg_to_shost.exit.i556_crit_edge, label %while.body.i14.i.i547.while.cond.i11.i.i544_crit_edge

while.body.i14.i.i547.while.cond.i11.i.i544_crit_edge: ; preds = %while.body.i14.i.i547
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i544

while.body.i14.i.i547.fc_bsg_to_shost.exit.i556_crit_edge: ; preds = %while.body.i14.i.i547
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i556

while.end.i16.i.i549:                             ; preds = %while.cond.i11.i.i544
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i548 = getelementptr i8, ptr %dev.addr.0.i8.i.i541, i32 -584
  br label %fc_bsg_to_shost.exit.i556

fc_bsg_to_shost.exit.i556:                        ; preds = %while.end.i16.i.i549, %while.body.i14.i.i547.fc_bsg_to_shost.exit.i556_crit_edge, %while.end.i.i.i538, %while.body.i.i.i536.fc_bsg_to_shost.exit.i556_crit_edge
  %retval.0.i.i550 = phi ptr [ %add.ptr.i.i.i537, %while.end.i.i.i538 ], [ %add.ptr.i15.i.i548, %while.end.i16.i.i549 ], [ null, %while.body.i14.i.i547.fc_bsg_to_shost.exit.i556_crit_edge ], [ null, %while.body.i.i.i536.fc_bsg_to_shost.exit.i556_crit_edge ]
  %hostdata.i.i551 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i550, i32 0, i32 53
  %hw.i552 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i551, i32 0, i32 52
  %764 = ptrtoint ptr %hw.i552 to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %hw.i552, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %bsg.i525) #9
  %766 = call ptr @memset(ptr %bsg.i525, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sfp_dma.i526) #9
  %767 = ptrtoint ptr %sfp_dma.i526 to i32
  call void @__asan_store4_noabort(i32 %767)
  store i32 -1, ptr %sfp_dma.i526, align 4, !annotation !234
  %s_dma_pool.i553 = getelementptr inbounds %struct.qla_hw_data, ptr %765, i32 0, i32 96
  %768 = ptrtoint ptr %s_dma_pool.i553 to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %s_dma_pool.i553, align 4
  %call2.i554 = call ptr @dma_pool_alloc(ptr noundef %769, i32 noundef 3264, ptr noundef nonnull %sfp_dma.i526) #9
  %tobool.not.i555 = icmp eq ptr %call2.i554, null
  br i1 %tobool.not.i555, label %if.then.i558, label %if.end.i568

if.then.i558:                                     ; preds = %fc_bsg_to_shost.exit.i556
  call void @__sanitizer_cov_trace_pc() #11
  %reply_data.i557 = getelementptr inbounds %struct.fc_bsg_reply, ptr %753, i32 0, i32 2
  %770 = ptrtoint ptr %reply_data.i557 to i32
  call void @__asan_store4_noabort(i32 %770)
  store i32 17, ptr %reply_data.i557, align 4
  br label %qla2x00_write_i2c.exit

if.end.i568:                                      ; preds = %fc_bsg_to_shost.exit.i556
  call void @__sanitizer_cov_trace_pc() #11
  %sg_list.i559 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %771 = ptrtoint ptr %sg_list.i559 to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %sg_list.i559, align 4
  %sg_cnt.i560 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %773 = ptrtoint ptr %sg_cnt.i560 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %sg_cnt.i560, align 4
  %call4.i561 = call i32 @sg_copy_to_buffer(ptr noundef %772, i32 noundef %774, ptr noundef nonnull %bsg.i525, i32 noundef 72) #9
  %buffer.i = getelementptr inbounds %struct.qla_i2c_access, ptr %bsg.i525, i32 0, i32 4
  %length.i562 = getelementptr inbounds %struct.qla_i2c_access, ptr %bsg.i525, i32 0, i32 3
  %775 = ptrtoint ptr %length.i562 to i32
  call void @__asan_load2_noabort(i32 %775)
  %776 = load i16, ptr %length.i562, align 2
  %conv.i563 = zext i16 %776 to i32
  %777 = call ptr @memcpy(ptr %call2.i554, ptr %buffer.i, i32 %conv.i563)
  %778 = ptrtoint ptr %sfp_dma.i526 to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load i32, ptr %sfp_dma.i526, align 4
  %780 = ptrtoint ptr %bsg.i525 to i32
  call void @__asan_load2_noabort(i32 %780)
  %781 = load i16, ptr %bsg.i525, align 2
  %offset.i = getelementptr inbounds %struct.qla_i2c_access, ptr %bsg.i525, i32 0, i32 1
  %782 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %782)
  %783 = load i16, ptr %offset.i, align 2
  %784 = load i16, ptr %length.i562, align 2
  %option.i564 = getelementptr inbounds %struct.qla_i2c_access, ptr %bsg.i525, i32 0, i32 2
  %785 = ptrtoint ptr %option.i564 to i32
  call void @__asan_load2_noabort(i32 %785)
  %786 = load i16, ptr %option.i564, align 2
  %call7.i565 = call i32 @qla2x00_write_sfp(ptr noundef %hostdata.i.i551, i32 noundef %779, ptr noundef nonnull %call2.i554, i16 noundef zeroext %781, i16 noundef zeroext %783, i16 noundef zeroext %784, i16 noundef zeroext %786) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i565)
  %tobool8.not.i566 = icmp eq i32 %call7.i565, 0
  %spec.select.i567 = select i1 %tobool8.not.i566, i32 0, i32 11
  %787 = getelementptr inbounds %struct.fc_bsg_reply, ptr %753, i32 0, i32 2
  %788 = ptrtoint ptr %787 to i32
  call void @__asan_store4_noabort(i32 %788)
  store i32 %spec.select.i567, ptr %787, align 4
  %789 = ptrtoint ptr %s_dma_pool.i553 to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %s_dma_pool.i553, align 4
  %791 = ptrtoint ptr %sfp_dma.i526 to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load i32, ptr %sfp_dma.i526, align 4
  call void @dma_pool_free(ptr noundef %790, ptr noundef nonnull %call2.i554, i32 noundef %792) #9
  br label %qla2x00_write_i2c.exit

qla2x00_write_i2c.exit:                           ; preds = %if.end.i568, %if.then.i558
  %reply_len.i569 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %793 = ptrtoint ptr %reply_len.i569 to i32
  call void @__asan_store4_noabort(i32 %793)
  store i32 16, ptr %reply_len.i569, align 4
  %794 = ptrtoint ptr %753 to i32
  call void @__asan_store4_noabort(i32 %794)
  store i32 0, ptr %753, align 4
  %reply_payload_rcv_len.i570 = getelementptr inbounds %struct.fc_bsg_reply, ptr %753, i32 0, i32 1
  %795 = ptrtoint ptr %reply_payload_rcv_len.i570 to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load i32, ptr %reply_payload_rcv_len.i570, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %796) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sfp_dma.i526) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %bsg.i525) #9
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  %reply.i573 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %797 = ptrtoint ptr %reply.i573 to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %reply.i573, align 4
  %799 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load ptr, ptr %bsg_job, align 4
  %call.i.i574 = tail call i32 @scsi_is_host_device(ptr noundef %800) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i574)
  %tobool.not.i.i575 = icmp eq i32 %call.i.i574, 0
  %801 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i575, label %if.end.i.i586, label %sw.bb26.while.cond.i.i.i579_crit_edge

sw.bb26.while.cond.i.i.i579_crit_edge:            ; preds = %sw.bb26
  br label %while.cond.i.i.i579

while.cond.i.i.i579:                              ; preds = %while.body.i.i.i582.while.cond.i.i.i579_crit_edge, %sw.bb26.while.cond.i.i.i579_crit_edge
  %dev.addr.0.i.i.i576 = phi ptr [ %804, %while.body.i.i.i582.while.cond.i.i.i579_crit_edge ], [ %802, %sw.bb26.while.cond.i.i.i579_crit_edge ]
  %call.i.i.i577 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i576) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i577)
  %tobool.not.i.i.i578 = icmp eq i32 %call.i.i.i577, 0
  br i1 %tobool.not.i.i.i578, label %while.body.i.i.i582, label %while.end.i.i.i584

while.body.i.i.i582:                              ; preds = %while.cond.i.i.i579
  %parent.i.i.i580 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i576, i32 0, i32 1
  %803 = ptrtoint ptr %parent.i.i.i580 to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load ptr, ptr %parent.i.i.i580, align 8
  %tobool1.not.i.i.i581 = icmp eq ptr %804, null
  br i1 %tobool1.not.i.i.i581, label %while.body.i.i.i582.fc_bsg_to_shost.exit.i602_crit_edge, label %while.body.i.i.i582.while.cond.i.i.i579_crit_edge

while.body.i.i.i582.while.cond.i.i.i579_crit_edge: ; preds = %while.body.i.i.i582
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i579

while.body.i.i.i582.fc_bsg_to_shost.exit.i602_crit_edge: ; preds = %while.body.i.i.i582
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i602

while.end.i.i.i584:                               ; preds = %while.cond.i.i.i579
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i583 = getelementptr i8, ptr %dev.addr.0.i.i.i576, i32 -584
  br label %fc_bsg_to_shost.exit.i602

if.end.i.i586:                                    ; preds = %sw.bb26
  %parent.i.i585 = getelementptr inbounds %struct.device, ptr %802, i32 0, i32 1
  %805 = ptrtoint ptr %parent.i.i585 to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %parent.i.i585, align 8
  br label %while.cond.i11.i.i590

while.cond.i11.i.i590:                            ; preds = %while.body.i14.i.i593.while.cond.i11.i.i590_crit_edge, %if.end.i.i586
  %dev.addr.0.i8.i.i587 = phi ptr [ %806, %if.end.i.i586 ], [ %808, %while.body.i14.i.i593.while.cond.i11.i.i590_crit_edge ]
  %call.i9.i.i588 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i587) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i588)
  %tobool.not.i10.i.i589 = icmp eq i32 %call.i9.i.i588, 0
  br i1 %tobool.not.i10.i.i589, label %while.body.i14.i.i593, label %while.end.i16.i.i595

while.body.i14.i.i593:                            ; preds = %while.cond.i11.i.i590
  %parent.i12.i.i591 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i587, i32 0, i32 1
  %807 = ptrtoint ptr %parent.i12.i.i591 to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %parent.i12.i.i591, align 8
  %tobool1.not.i13.i.i592 = icmp eq ptr %808, null
  br i1 %tobool1.not.i13.i.i592, label %while.body.i14.i.i593.fc_bsg_to_shost.exit.i602_crit_edge, label %while.body.i14.i.i593.while.cond.i11.i.i590_crit_edge

while.body.i14.i.i593.while.cond.i11.i.i590_crit_edge: ; preds = %while.body.i14.i.i593
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i590

while.body.i14.i.i593.fc_bsg_to_shost.exit.i602_crit_edge: ; preds = %while.body.i14.i.i593
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i602

while.end.i16.i.i595:                             ; preds = %while.cond.i11.i.i590
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i594 = getelementptr i8, ptr %dev.addr.0.i8.i.i587, i32 -584
  br label %fc_bsg_to_shost.exit.i602

fc_bsg_to_shost.exit.i602:                        ; preds = %while.end.i16.i.i595, %while.body.i14.i.i593.fc_bsg_to_shost.exit.i602_crit_edge, %while.end.i.i.i584, %while.body.i.i.i582.fc_bsg_to_shost.exit.i602_crit_edge
  %retval.0.i.i596 = phi ptr [ %add.ptr.i.i.i583, %while.end.i.i.i584 ], [ %add.ptr.i15.i.i594, %while.end.i16.i.i595 ], [ null, %while.body.i14.i.i593.fc_bsg_to_shost.exit.i602_crit_edge ], [ null, %while.body.i.i.i582.fc_bsg_to_shost.exit.i602_crit_edge ]
  %hostdata.i.i597 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i596, i32 0, i32 53
  %hw.i598 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i597, i32 0, i32 52
  %809 = ptrtoint ptr %hw.i598 to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %hw.i598, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %bsg.i571) #9
  %811 = call ptr @memset(ptr %bsg.i571, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sfp_dma.i572) #9
  %812 = ptrtoint ptr %sfp_dma.i572 to i32
  call void @__asan_store4_noabort(i32 %812)
  store i32 -1, ptr %sfp_dma.i572, align 4, !annotation !234
  %s_dma_pool.i599 = getelementptr inbounds %struct.qla_hw_data, ptr %810, i32 0, i32 96
  %813 = ptrtoint ptr %s_dma_pool.i599 to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %s_dma_pool.i599, align 4
  %call2.i600 = call ptr @dma_pool_alloc(ptr noundef %814, i32 noundef 3264, ptr noundef nonnull %sfp_dma.i572) #9
  %tobool.not.i601 = icmp eq ptr %call2.i600, null
  br i1 %tobool.not.i601, label %if.then.i604, label %if.end.i613

if.then.i604:                                     ; preds = %fc_bsg_to_shost.exit.i602
  call void @__sanitizer_cov_trace_pc() #11
  %reply_data.i603 = getelementptr inbounds %struct.fc_bsg_reply, ptr %798, i32 0, i32 2
  %815 = ptrtoint ptr %reply_data.i603 to i32
  call void @__asan_store4_noabort(i32 %815)
  store i32 17, ptr %reply_data.i603, align 4
  br label %qla2x00_read_i2c.exit

if.end.i613:                                      ; preds = %fc_bsg_to_shost.exit.i602
  %sg_list.i605 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %816 = ptrtoint ptr %sg_list.i605 to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %sg_list.i605, align 4
  %sg_cnt.i606 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %818 = ptrtoint ptr %sg_cnt.i606 to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load i32, ptr %sg_cnt.i606, align 4
  %call4.i607 = call i32 @sg_copy_to_buffer(ptr noundef %817, i32 noundef %819, ptr noundef nonnull %bsg.i571, i32 noundef 72) #9
  %820 = ptrtoint ptr %sfp_dma.i572 to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load i32, ptr %sfp_dma.i572, align 4
  %822 = ptrtoint ptr %bsg.i571 to i32
  call void @__asan_load2_noabort(i32 %822)
  %823 = load i16, ptr %bsg.i571, align 2
  %offset.i608 = getelementptr inbounds %struct.qla_i2c_access, ptr %bsg.i571, i32 0, i32 1
  %824 = ptrtoint ptr %offset.i608 to i32
  call void @__asan_load2_noabort(i32 %824)
  %825 = load i16, ptr %offset.i608, align 2
  %length.i609 = getelementptr inbounds %struct.qla_i2c_access, ptr %bsg.i571, i32 0, i32 3
  %826 = ptrtoint ptr %length.i609 to i32
  call void @__asan_load2_noabort(i32 %826)
  %827 = load i16, ptr %length.i609, align 2
  %option.i610 = getelementptr inbounds %struct.qla_i2c_access, ptr %bsg.i571, i32 0, i32 2
  %828 = ptrtoint ptr %option.i610 to i32
  call void @__asan_load2_noabort(i32 %828)
  %829 = load i16, ptr %option.i610, align 2
  %call5.i611 = call i32 @qla2x00_read_sfp(ptr noundef %hostdata.i.i597, i32 noundef %821, ptr noundef nonnull %call2.i600, i16 noundef zeroext %823, i16 noundef zeroext %825, i16 noundef zeroext %827, i16 noundef zeroext %829) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i611)
  %tobool6.not.i612 = icmp eq i32 %call5.i611, 0
  br i1 %tobool6.not.i612, label %if.end11.i, label %if.end.i613.dealloc.i620_crit_edge

if.end.i613.dealloc.i620_crit_edge:               ; preds = %if.end.i613
  call void @__sanitizer_cov_trace_pc() #11
  br label %dealloc.i620

if.end11.i:                                       ; preds = %if.end.i613
  call void @__sanitizer_cov_trace_pc() #11
  %buffer.i614 = getelementptr inbounds %struct.qla_i2c_access, ptr %bsg.i571, i32 0, i32 4
  %830 = ptrtoint ptr %length.i609 to i32
  call void @__asan_load2_noabort(i32 %830)
  %831 = load i16, ptr %length.i609, align 2
  %conv.i615 = zext i16 %831 to i32
  %832 = call ptr @memcpy(ptr %buffer.i614, ptr %call2.i600, i32 %conv.i615)
  %sg_list14.i616 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %833 = ptrtoint ptr %sg_list14.i616 to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %sg_list14.i616, align 4
  %sg_cnt16.i617 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %835 = ptrtoint ptr %sg_cnt16.i617 to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load i32, ptr %sg_cnt16.i617, align 4
  %call17.i618 = call i32 @sg_copy_from_buffer(ptr noundef %834, i32 noundef %836, ptr noundef nonnull %bsg.i571, i32 noundef 72) #9
  br label %dealloc.i620

dealloc.i620:                                     ; preds = %if.end11.i, %if.end.i613.dealloc.i620_crit_edge
  %.sink.i619 = phi i32 [ 0, %if.end11.i ], [ 11, %if.end.i613.dealloc.i620_crit_edge ]
  %837 = getelementptr inbounds %struct.fc_bsg_reply, ptr %798, i32 0, i32 2
  %838 = ptrtoint ptr %837 to i32
  call void @__asan_store4_noabort(i32 %838)
  store i32 %.sink.i619, ptr %837, align 4
  %839 = ptrtoint ptr %s_dma_pool.i599 to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %s_dma_pool.i599, align 4
  %841 = ptrtoint ptr %sfp_dma.i572 to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load i32, ptr %sfp_dma.i572, align 4
  call void @dma_pool_free(ptr noundef %840, ptr noundef nonnull %call2.i600, i32 noundef %842) #9
  br label %qla2x00_read_i2c.exit

qla2x00_read_i2c.exit:                            ; preds = %dealloc.i620, %if.then.i604
  %reply_len.i621 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %843 = ptrtoint ptr %reply_len.i621 to i32
  call void @__asan_store4_noabort(i32 %843)
  store i32 16, ptr %reply_len.i621, align 4
  %reply_payload_rcv_len.i622 = getelementptr inbounds %struct.fc_bsg_reply, ptr %798, i32 0, i32 1
  %844 = ptrtoint ptr %reply_payload_rcv_len.i622 to i32
  call void @__asan_store4_noabort(i32 %844)
  store i32 72, ptr %reply_payload_rcv_len.i622, align 4
  %845 = ptrtoint ptr %798 to i32
  call void @__asan_store4_noabort(i32 %845)
  store i32 0, ptr %798, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef 72) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sfp_dma.i572) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %bsg.i571) #9
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  %reply.i623 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %846 = ptrtoint ptr %reply.i623 to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %reply.i623, align 4
  %848 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %bsg_job, align 4
  %call.i.i624 = tail call i32 @scsi_is_host_device(ptr noundef %849) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i624)
  %tobool.not.i.i625 = icmp eq i32 %call.i.i624, 0
  %850 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i625, label %if.end.i.i636, label %sw.bb28.while.cond.i.i.i629_crit_edge

sw.bb28.while.cond.i.i.i629_crit_edge:            ; preds = %sw.bb28
  br label %while.cond.i.i.i629

while.cond.i.i.i629:                              ; preds = %while.body.i.i.i632.while.cond.i.i.i629_crit_edge, %sw.bb28.while.cond.i.i.i629_crit_edge
  %dev.addr.0.i.i.i626 = phi ptr [ %853, %while.body.i.i.i632.while.cond.i.i.i629_crit_edge ], [ %851, %sw.bb28.while.cond.i.i.i629_crit_edge ]
  %call.i.i.i627 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i626) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i627)
  %tobool.not.i.i.i628 = icmp eq i32 %call.i.i.i627, 0
  br i1 %tobool.not.i.i.i628, label %while.body.i.i.i632, label %while.end.i.i.i634

while.body.i.i.i632:                              ; preds = %while.cond.i.i.i629
  %parent.i.i.i630 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i626, i32 0, i32 1
  %852 = ptrtoint ptr %parent.i.i.i630 to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %parent.i.i.i630, align 8
  %tobool1.not.i.i.i631 = icmp eq ptr %853, null
  br i1 %tobool1.not.i.i.i631, label %while.body.i.i.i632.fc_bsg_to_shost.exit.i650_crit_edge, label %while.body.i.i.i632.while.cond.i.i.i629_crit_edge

while.body.i.i.i632.while.cond.i.i.i629_crit_edge: ; preds = %while.body.i.i.i632
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i629

while.body.i.i.i632.fc_bsg_to_shost.exit.i650_crit_edge: ; preds = %while.body.i.i.i632
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i650

while.end.i.i.i634:                               ; preds = %while.cond.i.i.i629
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i633 = getelementptr i8, ptr %dev.addr.0.i.i.i626, i32 -584
  br label %fc_bsg_to_shost.exit.i650

if.end.i.i636:                                    ; preds = %sw.bb28
  %parent.i.i635 = getelementptr inbounds %struct.device, ptr %851, i32 0, i32 1
  %854 = ptrtoint ptr %parent.i.i635 to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %parent.i.i635, align 8
  br label %while.cond.i11.i.i640

while.cond.i11.i.i640:                            ; preds = %while.body.i14.i.i643.while.cond.i11.i.i640_crit_edge, %if.end.i.i636
  %dev.addr.0.i8.i.i637 = phi ptr [ %855, %if.end.i.i636 ], [ %857, %while.body.i14.i.i643.while.cond.i11.i.i640_crit_edge ]
  %call.i9.i.i638 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i637) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i638)
  %tobool.not.i10.i.i639 = icmp eq i32 %call.i9.i.i638, 0
  br i1 %tobool.not.i10.i.i639, label %while.body.i14.i.i643, label %while.end.i16.i.i645

while.body.i14.i.i643:                            ; preds = %while.cond.i11.i.i640
  %parent.i12.i.i641 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i637, i32 0, i32 1
  %856 = ptrtoint ptr %parent.i12.i.i641 to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %parent.i12.i.i641, align 8
  %tobool1.not.i13.i.i642 = icmp eq ptr %857, null
  br i1 %tobool1.not.i13.i.i642, label %while.body.i14.i.i643.fc_bsg_to_shost.exit.i650_crit_edge, label %while.body.i14.i.i643.while.cond.i11.i.i640_crit_edge

while.body.i14.i.i643.while.cond.i11.i.i640_crit_edge: ; preds = %while.body.i14.i.i643
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i640

while.body.i14.i.i643.fc_bsg_to_shost.exit.i650_crit_edge: ; preds = %while.body.i14.i.i643
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i650

while.end.i16.i.i645:                             ; preds = %while.cond.i11.i.i640
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i644 = getelementptr i8, ptr %dev.addr.0.i8.i.i637, i32 -584
  br label %fc_bsg_to_shost.exit.i650

fc_bsg_to_shost.exit.i650:                        ; preds = %while.end.i16.i.i645, %while.body.i14.i.i643.fc_bsg_to_shost.exit.i650_crit_edge, %while.end.i.i.i634, %while.body.i.i.i632.fc_bsg_to_shost.exit.i650_crit_edge
  %retval.0.i.i646 = phi ptr [ %add.ptr.i.i.i633, %while.end.i.i.i634 ], [ %add.ptr.i15.i.i644, %while.end.i16.i.i645 ], [ null, %while.body.i14.i.i643.fc_bsg_to_shost.exit.i650_crit_edge ], [ null, %while.body.i.i.i632.fc_bsg_to_shost.exit.i650_crit_edge ]
  %hostdata.i.i647 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i646, i32 0, i32 53
  %hw.i648 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i647, i32 0, i32 52
  %858 = ptrtoint ptr %hw.i648 to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %hw.i648, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nextlid.i) #9
  %860 = ptrtoint ptr %nextlid.i to i32
  call void @__asan_store2_noabort(i32 %860)
  store i16 0, ptr %nextlid.i, align 2
  %isp_type.i649 = getelementptr inbounds %struct.qla_hw_data, ptr %859, i32 0, i32 54
  %861 = ptrtoint ptr %isp_type.i649 to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load i32, ptr %isp_type.i649, align 8
  %863 = and i32 %862, 45647872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %863)
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %if.then.i651, label %if.end.i654

if.then.i651:                                     ; preds = %fc_bsg_to_shost.exit.i650
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i647, i32 noundef 28832, ptr noundef nonnull @.str.88) #9
  br label %done161.i

if.end.i654:                                      ; preds = %fc_bsg_to_shost.exit.i650
  %dpc_flags.i652 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i646, i32 1, i32 5, i32 5, i32 2
  %865 = ptrtoint ptr %dpc_flags.i652 to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load volatile i32, ptr %dpc_flags.i652, align 4
  %867 = and i32 %866, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %867)
  %tobool33.not.i653 = icmp eq i32 %867, 0
  br i1 %tobool33.not.i653, label %lor.lhs.false34.i, label %if.end.i654.done161.i_crit_edge

if.end.i654.done161.i_crit_edge:                  ; preds = %if.end.i654
  call void @__sanitizer_cov_trace_pc() #11
  br label %done161.i

lor.lhs.false34.i:                                ; preds = %if.end.i654
  %868 = ptrtoint ptr %dpc_flags.i652 to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load volatile i32, ptr %dpc_flags.i652, align 4
  %870 = and i32 %869, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %870)
  %tobool37.not.i655 = icmp eq i32 %870, 0
  br i1 %tobool37.not.i655, label %lor.lhs.false38.i, label %lor.lhs.false34.i.done161.i_crit_edge

lor.lhs.false34.i.done161.i_crit_edge:            ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done161.i

lor.lhs.false38.i:                                ; preds = %lor.lhs.false34.i
  %871 = ptrtoint ptr %dpc_flags.i652 to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load volatile i32, ptr %dpc_flags.i652, align 4
  %873 = and i32 %872, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %873)
  %tobool41.not.i656 = icmp eq i32 %873, 0
  br i1 %tobool41.not.i656, label %if.end43.i659, label %lor.lhs.false38.i.done161.i_crit_edge

lor.lhs.false38.i.done161.i_crit_edge:            ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done161.i

if.end43.i659:                                    ; preds = %lor.lhs.false38.i
  %flags.i657 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i646, i32 1, i32 5, i32 5
  %874 = ptrtoint ptr %flags.i657 to i32
  call void @__asan_load4_noabort(i32 %874)
  %bf.load.i658 = load volatile i32, ptr %flags.i657, align 8
  %875 = and i32 %bf.load.i658, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %875)
  %tobool44.not.i = icmp eq i32 %875, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end46.i

if.then45.i:                                      ; preds = %if.end43.i659
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i647, i32 noundef 28833, ptr noundef nonnull @.str.89) #9
  br label %done161.i

if.end46.i:                                       ; preds = %if.end43.i659
  %device_flags.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i646, i32 1, i32 5, i32 5, i32 6
  %876 = ptrtoint ptr %device_flags.i to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load i32, ptr %device_flags.i, align 4
  %and47.i = and i32 %877, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i660 = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i660, label %if.end50.i664, label %if.then49.i661

if.then49.i661:                                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i647, i32 noundef 28834, ptr noundef nonnull @.str.90) #9
  br label %done161.i

if.end50.i664:                                    ; preds = %if.end46.i
  %current_topology.i662 = getelementptr inbounds %struct.qla_hw_data, ptr %859, i32 0, i32 49
  %878 = ptrtoint ptr %current_topology.i662 to i32
  call void @__asan_load1_noabort(i32 %878)
  %879 = load i8, ptr %current_topology.i662, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %879)
  %cmp.not.i663 = icmp eq i8 %879, 8
  br i1 %cmp.not.i663, label %if.end53.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.end50.i664
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i647, i32 noundef 28835, ptr noundef nonnull @.str.91) #9
  br label %done161.i

if.end53.i:                                       ; preds = %if.end50.i664
  %operating_mode.i = getelementptr inbounds %struct.qla_hw_data, ptr %859, i32 0, i32 51
  %880 = ptrtoint ptr %operating_mode.i to i32
  call void @__asan_load1_noabort(i32 %880)
  %881 = load i8, ptr %operating_mode.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %881)
  %cmp55.not.i = icmp eq i8 %881, 1
  br i1 %cmp55.not.i, label %if.end58.i, label %if.then57.i665

if.then57.i665:                                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i647, i32 noundef 28836, ptr noundef nonnull @.str.92) #9
  br label %done161.i

if.end58.i:                                       ; preds = %if.end53.i
  %selflogin_lock.i = getelementptr inbounds %struct.qla_hw_data, ptr %859, i32 0, i32 134
  tail call void @mutex_lock_nested(ptr noundef %selflogin_lock.i, i32 noundef 0) #9
  %self_login_loop_id.i = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i647, i32 0, i32 15
  %882 = ptrtoint ptr %self_login_loop_id.i to i32
  call void @__asan_load2_noabort(i32 %882)
  %883 = load i16, ptr %self_login_loop_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %883)
  %cmp60.i = icmp eq i16 %883, 0
  br i1 %cmp60.i, label %if.then62.i, label %if.end58.i.if.end90.i_crit_edge

if.end58.i.if.end90.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i

if.then62.i:                                      ; preds = %if.end58.i
  %bidir_fcport.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i646, i32 1, i32 6, i32 1
  %vha63.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i646, i32 1, i32 7, i32 1
  %884 = ptrtoint ptr %vha63.i to i32
  call void @__asan_store4_noabort(i32 %884)
  store ptr %hostdata.i.i647, ptr %vha63.i, align 8
  %d_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i646, i32 1, i32 49, i32 10, i32 4
  %al_pa.i = getelementptr inbounds %struct.anon.2, ptr %d_id.i, i32 0, i32 2
  %885 = ptrtoint ptr %al_pa.i to i32
  call void @__asan_load1_noabort(i32 %885)
  %886 = load i8, ptr %al_pa.i, align 2
  %d_id65.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i646, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %al_pa66.i = getelementptr inbounds %struct.anon.2, ptr %d_id65.i, i32 0, i32 2
  %887 = ptrtoint ptr %al_pa66.i to i32
  call void @__asan_store1_noabort(i32 %887)
  store i8 %886, ptr %al_pa66.i, align 2
  %area.i = getelementptr inbounds %struct.anon.2, ptr %d_id.i, i32 0, i32 1
  %888 = ptrtoint ptr %area.i to i32
  call void @__asan_load1_noabort(i32 %888)
  %889 = load i8, ptr %area.i, align 1
  %area70.i = getelementptr inbounds %struct.anon.2, ptr %d_id65.i, i32 0, i32 1
  %890 = ptrtoint ptr %area70.i to i32
  call void @__asan_store1_noabort(i32 %890)
  store i8 %889, ptr %area70.i, align 1
  %891 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load1_noabort(i32 %891)
  %892 = load i8, ptr %d_id.i, align 8
  %893 = ptrtoint ptr %d_id65.i to i32
  call void @__asan_store1_noabort(i32 %893)
  store i8 %892, ptr %d_id65.i, align 8
  %loop_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i646, i32 1, i32 5, i32 5, i32 7
  %894 = ptrtoint ptr %loop_id.i to i32
  call void @__asan_load2_noabort(i32 %894)
  %895 = load i16, ptr %loop_id.i, align 8
  %loop_id76.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i646, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4
  %896 = ptrtoint ptr %loop_id76.i to i32
  call void @__asan_store2_noabort(i32 %896)
  store i16 %895, ptr %loop_id76.i, align 4
  %call78.i = call i32 @qla2x00_fabric_login(ptr noundef %hostdata.i.i647, ptr noundef %bidir_fcport.i, ptr noundef nonnull %nextlid.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %if.end86.i, label %if.then80.i666

if.then80.i666:                                   ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  %897 = ptrtoint ptr %d_id65.i to i32
  call void @__asan_load4_noabort(i32 %897)
  %bf.load83.i = load i32, ptr %d_id65.i, align 8
  %bf.lshr84.i = lshr i32 %bf.load83.i, 8
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i647, i32 noundef 28839, ptr noundef nonnull @.str.93, i32 noundef %bf.lshr84.i) #9
  call void @mutex_unlock(ptr noundef %selflogin_lock.i) #9
  br label %done161.i

if.end86.i:                                       ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  %898 = ptrtoint ptr %nextlid.i to i32
  call void @__asan_load2_noabort(i32 %898)
  %899 = load i16, ptr %nextlid.i, align 2
  %sub.i = add i16 %899, -1
  %900 = ptrtoint ptr %self_login_loop_id.i to i32
  call void @__asan_store2_noabort(i32 %900)
  store i16 %sub.i, ptr %self_login_loop_id.i, align 2
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.end86.i, %if.end58.i.if.end90.i_crit_edge
  call void @mutex_unlock(ptr noundef %selflogin_lock.i) #9
  %901 = ptrtoint ptr %self_login_loop_id.i to i32
  call void @__asan_load2_noabort(i32 %901)
  %902 = load i16, ptr %self_login_loop_id.i, align 2
  %bidir_fcport93.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i646, i32 1, i32 6, i32 1
  %loop_id94.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i646, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4
  %903 = ptrtoint ptr %loop_id94.i to i32
  call void @__asan_store2_noabort(i32 %903)
  store i16 %902, ptr %loop_id94.i, align 4
  %904 = ptrtoint ptr %859 to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %859, align 128
  %dev.i667 = getelementptr inbounds %struct.pci_dev, ptr %905, i32 0, i32 44
  %request_payload.i668 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7
  %sg_list.i669 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %906 = ptrtoint ptr %sg_list.i669 to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load ptr, ptr %sg_list.i669, align 4
  %sg_cnt.i670 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %908 = ptrtoint ptr %sg_cnt.i670 to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load i32, ptr %sg_cnt.i670, align 4
  %call96.i = call i32 @dma_map_sg_attrs(ptr noundef %dev.i667, ptr noundef %907, i32 noundef %909, i32 noundef 1, i32 noundef 0) #9
  %conv97.i = trunc i32 %call96.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv97.i)
  %tobool98.not.i671 = icmp eq i16 %conv97.i, 0
  br i1 %tobool98.not.i671, label %if.end90.i.done161.i_crit_edge, label %if.end100.i

if.end90.i.done161.i_crit_edge:                   ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done161.i

if.end100.i:                                      ; preds = %if.end90.i
  %910 = ptrtoint ptr %859 to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %859, align 128
  %dev102.i = getelementptr inbounds %struct.pci_dev, ptr %911, i32 0, i32 44
  %reply_payload.i672 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8
  %sg_list103.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %912 = ptrtoint ptr %sg_list103.i to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load ptr, ptr %sg_list103.i, align 4
  %sg_cnt105.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %914 = ptrtoint ptr %sg_cnt105.i to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load i32, ptr %sg_cnt105.i, align 4
  %call106.i = call i32 @dma_map_sg_attrs(ptr noundef %dev102.i, ptr noundef %913, i32 noundef %915, i32 noundef 2, i32 noundef 0) #9
  %conv107.i673 = trunc i32 %call106.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv107.i673)
  %tobool108.not.i = icmp eq i16 %conv107.i673, 0
  br i1 %tobool108.not.i, label %if.end100.i.done_unmap_req_sg.i679_crit_edge, label %if.end110.i

if.end100.i.done_unmap_req_sg.i679_crit_edge:     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_unmap_req_sg.i679

if.end110.i:                                      ; preds = %if.end100.i
  %conv111.i = and i32 %call96.i, 65535
  %916 = ptrtoint ptr %sg_cnt.i670 to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load i32, ptr %sg_cnt.i670, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv111.i, i32 %917)
  %cmp114.not.i = icmp eq i32 %conv111.i, %917
  %conv117.i = and i32 %call106.i, 65535
  br i1 %cmp114.not.i, label %lor.lhs.false116.i, label %if.end110.i.if.then122.i_crit_edge

if.end110.i.if.then122.i_crit_edge:               ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then122.i

lor.lhs.false116.i:                               ; preds = %if.end110.i
  %918 = ptrtoint ptr %sg_cnt105.i to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load i32, ptr %sg_cnt105.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv117.i, i32 %919)
  %cmp120.not.i = icmp eq i32 %conv117.i, %919
  br i1 %cmp120.not.i, label %if.end129.i, label %lor.lhs.false116.i.if.then122.i_crit_edge

lor.lhs.false116.i.if.then122.i_crit_edge:        ; preds = %lor.lhs.false116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then122.i

if.then122.i:                                     ; preds = %lor.lhs.false116.i.if.then122.i_crit_edge, %if.end110.i.if.then122.i_crit_edge
  %920 = ptrtoint ptr %sg_cnt105.i to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load i32, ptr %sg_cnt105.i, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i647, i32 noundef 28841, ptr noundef nonnull @.str.94, i32 noundef %917, i32 noundef %conv111.i, i32 noundef %921, i32 noundef %conv117.i) #9
  br label %done_unmap_sg.i677

if.end129.i:                                      ; preds = %lor.lhs.false116.i
  %922 = ptrtoint ptr %request_payload.i668 to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load i32, ptr %request_payload.i668, align 4
  %924 = ptrtoint ptr %reply_payload.i672 to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load i32, ptr %reply_payload.i672, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %923, i32 %925)
  %cmp133.not.i = icmp eq i32 %923, %925
  br i1 %cmp133.not.i, label %if.end136.i, label %if.then135.i

if.then135.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i647, i32 noundef 28842, ptr noundef nonnull @.str.95) #9
  br label %done_unmap_sg.i677

if.end136.i:                                      ; preds = %if.end129.i
  %call138.i674 = call fastcc ptr @qla2x00_get_sp(ptr noundef %hostdata.i.i647, ptr noundef %bidir_fcport93.i) #9
  %tobool139.not.i = icmp eq ptr %call138.i674, null
  br i1 %tobool139.not.i, label %if.then140.i675, label %if.end141.i

if.then140.i675:                                  ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i647, i32 noundef 28844, ptr noundef nonnull @.str.96) #9
  br label %done_unmap_sg.i677

if.end141.i:                                      ; preds = %if.end136.i
  %u.i = getelementptr inbounds %struct.srb, ptr %call138.i674, i32 0, i32 22
  %926 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %926)
  store ptr %bsg_job, ptr %u.i, align 8
  %free.i = getelementptr inbounds %struct.srb, ptr %call138.i674, i32 0, i32 25
  %927 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %927)
  store ptr @qla2x00_bsg_sp_free, ptr %free.i, align 8
  %type.i = getelementptr inbounds %struct.srb, ptr %call138.i674, i32 0, i32 11
  %928 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %928)
  store i16 9, ptr %type.i, align 2
  %done.i = getelementptr inbounds %struct.srb, ptr %call138.i674, i32 0, i32 24
  %929 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %929)
  store ptr @qla2x00_bsg_job_done, ptr %done.i, align 4
  %add.i = add nuw nsw i32 %conv117.i, %conv111.i
  %call144.i = call i32 @qla2x00_start_bidir(ptr noundef nonnull %call138.i674, ptr noundef %hostdata.i.i647, i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144.i)
  %cmp145.not.i = icmp eq i32 %call144.i, 0
  br i1 %cmp145.not.i, label %if.end141.i.qla24xx_process_bidir_cmd.exit_crit_edge, label %done_free_srb.i

if.end141.i.qla24xx_process_bidir_cmd.exit_crit_edge: ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla24xx_process_bidir_cmd.exit

done_free_srb.i:                                  ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #11
  %srb_mempool.i = getelementptr inbounds %struct.qla_hw_data, ptr %859, i32 0, i32 1
  %930 = ptrtoint ptr %srb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load ptr, ptr %srb_mempool.i, align 4
  call void @mempool_free(ptr noundef nonnull %call138.i674, ptr noundef %931) #9
  br label %done_unmap_sg.i677

done_unmap_sg.i677:                               ; preds = %done_free_srb.i, %if.then140.i675, %if.then135.i, %if.then122.i
  %rval.0.i676 = phi i32 [ 17, %if.then122.i ], [ 2, %if.then135.i ], [ %call144.i, %done_free_srb.i ], [ 17, %if.then140.i675 ]
  %932 = ptrtoint ptr %859 to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load ptr, ptr %859, align 128
  %dev150.i = getelementptr inbounds %struct.pci_dev, ptr %933, i32 0, i32 44
  %934 = ptrtoint ptr %sg_list103.i to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load ptr, ptr %sg_list103.i, align 4
  %936 = ptrtoint ptr %sg_cnt105.i to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load i32, ptr %sg_cnt105.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev150.i, ptr noundef %935, i32 noundef %937, i32 noundef 2, i32 noundef 0) #9
  br label %done_unmap_req_sg.i679

done_unmap_req_sg.i679:                           ; preds = %done_unmap_sg.i677, %if.end100.i.done_unmap_req_sg.i679_crit_edge
  %rval.1.i678 = phi i32 [ %rval.0.i676, %done_unmap_sg.i677 ], [ 17, %if.end100.i.done_unmap_req_sg.i679_crit_edge ]
  %938 = ptrtoint ptr %859 to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load ptr, ptr %859, align 128
  %dev156.i = getelementptr inbounds %struct.pci_dev, ptr %939, i32 0, i32 44
  %940 = ptrtoint ptr %sg_list.i669 to i32
  call void @__asan_load4_noabort(i32 %940)
  %941 = load ptr, ptr %sg_list.i669, align 4
  %942 = ptrtoint ptr %sg_cnt.i670 to i32
  call void @__asan_load4_noabort(i32 %942)
  %943 = load i32, ptr %sg_cnt.i670, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev156.i, ptr noundef %941, i32 noundef %943, i32 noundef 1, i32 noundef 0) #9
  br label %done161.i

done161.i:                                        ; preds = %done_unmap_req_sg.i679, %if.end90.i.done161.i_crit_edge, %if.then80.i666, %if.then57.i665, %if.then52.i, %if.then49.i661, %if.then45.i, %lor.lhs.false38.i.done161.i_crit_edge, %lor.lhs.false34.i.done161.i_crit_edge, %if.end.i654.done161.i_crit_edge, %if.then.i651
  %rval.2.i680 = phi i32 [ 28, %if.then49.i661 ], [ 28, %if.then52.i ], [ 28, %if.then57.i665 ], [ 11, %if.then80.i666 ], [ %rval.1.i678, %done_unmap_req_sg.i679 ], [ 22, %if.then45.i ], [ 27, %if.then.i651 ], [ 2, %lor.lhs.false38.i.done161.i_crit_edge ], [ 2, %lor.lhs.false34.i.done161.i_crit_edge ], [ 2, %if.end.i654.done161.i_crit_edge ], [ 17, %if.end90.i.done161.i_crit_edge ]
  %reply_data.i681 = getelementptr inbounds %struct.fc_bsg_reply, ptr %847, i32 0, i32 2
  %944 = ptrtoint ptr %reply_data.i681 to i32
  call void @__asan_store4_noabort(i32 %944)
  store i32 %rval.2.i680, ptr %reply_data.i681, align 4
  %reply_len.i682 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %945 = ptrtoint ptr %reply_len.i682 to i32
  call void @__asan_store4_noabort(i32 %945)
  store i32 16, ptr %reply_len.i682, align 4
  %reply_payload_rcv_len.i683 = getelementptr inbounds %struct.fc_bsg_reply, ptr %847, i32 0, i32 1
  %946 = ptrtoint ptr %reply_payload_rcv_len.i683 to i32
  call void @__asan_store4_noabort(i32 %946)
  store i32 0, ptr %reply_payload_rcv_len.i683, align 4
  %947 = ptrtoint ptr %847 to i32
  call void @__asan_store4_noabort(i32 %947)
  store i32 0, ptr %847, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef 0) #9
  br label %qla24xx_process_bidir_cmd.exit

qla24xx_process_bidir_cmd.exit:                   ; preds = %done161.i, %if.end141.i.qla24xx_process_bidir_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nextlid.i) #9
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  %948 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %948)
  %949 = load ptr, ptr %request, align 4
  %950 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %950)
  %951 = load ptr, ptr %bsg_job, align 4
  %call.i.i685 = tail call i32 @scsi_is_host_device(ptr noundef %951) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i685)
  %tobool.not.i.i686 = icmp eq i32 %call.i.i685, 0
  %952 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %952)
  %953 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i686, label %if.end.i.i697, label %sw.bb30.while.cond.i.i.i690_crit_edge

sw.bb30.while.cond.i.i.i690_crit_edge:            ; preds = %sw.bb30
  br label %while.cond.i.i.i690

while.cond.i.i.i690:                              ; preds = %while.body.i.i.i693.while.cond.i.i.i690_crit_edge, %sw.bb30.while.cond.i.i.i690_crit_edge
  %dev.addr.0.i.i.i687 = phi ptr [ %955, %while.body.i.i.i693.while.cond.i.i.i690_crit_edge ], [ %953, %sw.bb30.while.cond.i.i.i690_crit_edge ]
  %call.i.i.i688 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i687) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i688)
  %tobool.not.i.i.i689 = icmp eq i32 %call.i.i.i688, 0
  br i1 %tobool.not.i.i.i689, label %while.body.i.i.i693, label %while.end.i.i.i695

while.body.i.i.i693:                              ; preds = %while.cond.i.i.i690
  %parent.i.i.i691 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i687, i32 0, i32 1
  %954 = ptrtoint ptr %parent.i.i.i691 to i32
  call void @__asan_load4_noabort(i32 %954)
  %955 = load ptr, ptr %parent.i.i.i691, align 8
  %tobool1.not.i.i.i692 = icmp eq ptr %955, null
  br i1 %tobool1.not.i.i.i692, label %while.body.i.i.i693.fc_bsg_to_shost.exit.i714_crit_edge, label %while.body.i.i.i693.while.cond.i.i.i690_crit_edge

while.body.i.i.i693.while.cond.i.i.i690_crit_edge: ; preds = %while.body.i.i.i693
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i690

while.body.i.i.i693.fc_bsg_to_shost.exit.i714_crit_edge: ; preds = %while.body.i.i.i693
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i714

while.end.i.i.i695:                               ; preds = %while.cond.i.i.i690
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i694 = getelementptr i8, ptr %dev.addr.0.i.i.i687, i32 -584
  br label %fc_bsg_to_shost.exit.i714

if.end.i.i697:                                    ; preds = %sw.bb30
  %parent.i.i696 = getelementptr inbounds %struct.device, ptr %953, i32 0, i32 1
  %956 = ptrtoint ptr %parent.i.i696 to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load ptr, ptr %parent.i.i696, align 8
  br label %while.cond.i11.i.i701

while.cond.i11.i.i701:                            ; preds = %while.body.i14.i.i704.while.cond.i11.i.i701_crit_edge, %if.end.i.i697
  %dev.addr.0.i8.i.i698 = phi ptr [ %957, %if.end.i.i697 ], [ %959, %while.body.i14.i.i704.while.cond.i11.i.i701_crit_edge ]
  %call.i9.i.i699 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i698) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i699)
  %tobool.not.i10.i.i700 = icmp eq i32 %call.i9.i.i699, 0
  br i1 %tobool.not.i10.i.i700, label %while.body.i14.i.i704, label %while.end.i16.i.i706

while.body.i14.i.i704:                            ; preds = %while.cond.i11.i.i701
  %parent.i12.i.i702 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i698, i32 0, i32 1
  %958 = ptrtoint ptr %parent.i12.i.i702 to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load ptr, ptr %parent.i12.i.i702, align 8
  %tobool1.not.i13.i.i703 = icmp eq ptr %959, null
  br i1 %tobool1.not.i13.i.i703, label %while.body.i14.i.i704.fc_bsg_to_shost.exit.i714_crit_edge, label %while.body.i14.i.i704.while.cond.i11.i.i701_crit_edge

while.body.i14.i.i704.while.cond.i11.i.i701_crit_edge: ; preds = %while.body.i14.i.i704
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i701

while.body.i14.i.i704.fc_bsg_to_shost.exit.i714_crit_edge: ; preds = %while.body.i14.i.i704
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i714

while.end.i16.i.i706:                             ; preds = %while.cond.i11.i.i701
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i705 = getelementptr i8, ptr %dev.addr.0.i8.i.i698, i32 -584
  br label %fc_bsg_to_shost.exit.i714

fc_bsg_to_shost.exit.i714:                        ; preds = %while.end.i16.i.i706, %while.body.i14.i.i704.fc_bsg_to_shost.exit.i714_crit_edge, %while.end.i.i.i695, %while.body.i.i.i693.fc_bsg_to_shost.exit.i714_crit_edge
  %retval.0.i.i707 = phi ptr [ %add.ptr.i.i.i694, %while.end.i.i.i695 ], [ %add.ptr.i15.i.i705, %while.end.i16.i.i706 ], [ null, %while.body.i14.i.i704.fc_bsg_to_shost.exit.i714_crit_edge ], [ null, %while.body.i.i.i693.fc_bsg_to_shost.exit.i714_crit_edge ]
  %hostdata.i.i708 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i707, i32 0, i32 53
  %hw.i709 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i708, i32 0, i32 52
  %960 = ptrtoint ptr %hw.i709 to i32
  call void @__asan_load4_noabort(i32 %960)
  %961 = load ptr, ptr %hw.i709, align 4
  %arrayidx.i710 = getelementptr %struct.fc_bsg_request, ptr %949, i32 0, i32 1, i32 1, i32 4
  tail call void @ql_dump_buffer(i32 noundef 8421376, ptr noundef %hostdata.i.i708, i32 noundef 28879, ptr noundef %arrayidx.i710, i32 noundef 32) #9
  %flags.i711 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i707, i32 1, i32 5, i32 5
  %962 = ptrtoint ptr %flags.i711 to i32
  call void @__asan_load4_noabort(i32 %962)
  %bf.load.i712 = load volatile i32, ptr %flags.i711, align 8
  %963 = and i32 %bf.load.i712, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %963)
  %tobool.not.i713 = icmp eq i32 %963, 0
  br i1 %tobool.not.i713, label %if.then.i715, label %if.end.i717

if.then.i715:                                     ; preds = %fc_bsg_to_shost.exit.i714
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i708, i32 noundef 28880, ptr noundef nonnull @.str.32) #9
  br label %cleanup

if.end.i717:                                      ; preds = %fc_bsg_to_shost.exit.i714
  %flags2.i = getelementptr inbounds %struct.qla_mt_iocb_rqst_fx00, ptr %arrayidx.i710, i32 0, i32 2
  %964 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load1_noabort(i32 %964)
  %965 = load i8, ptr %flags2.i, align 2
  %966 = and i8 %965, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %966)
  %tobool3.not.i716 = icmp eq i8 %966, 0
  br i1 %tobool3.not.i716, label %if.end.i717.if.end10.i_crit_edge, label %if.then4.i722

if.end.i717.if.end10.i_crit_edge:                 ; preds = %if.end.i717
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then4.i722:                                    ; preds = %if.end.i717
  %967 = ptrtoint ptr %961 to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %961, align 128
  %dev.i718 = getelementptr inbounds %struct.pci_dev, ptr %968, i32 0, i32 44
  %sg_list.i719 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %969 = ptrtoint ptr %sg_list.i719 to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load ptr, ptr %sg_list.i719, align 4
  %sg_cnt.i720 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %971 = ptrtoint ptr %sg_cnt.i720 to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load i32, ptr %sg_cnt.i720, align 4
  %call6.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev.i718, ptr noundef %970, i32 noundef %972, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i721 = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i721, label %if.then8.i, label %if.then4.i722.if.end10.i_crit_edge

if.then4.i722.if.end10.i_crit_edge:               ; preds = %if.then4.i722
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.then4.i722
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i708, i32 noundef 28871, ptr noundef nonnull @.str.29, i32 noundef 0) #9
  br label %cleanup

if.end10.i:                                       ; preds = %if.then4.i722.if.end10.i_crit_edge, %if.end.i717.if.end10.i_crit_edge
  %req_sg_cnt.0.i = phi i32 [ %call6.i, %if.then4.i722.if.end10.i_crit_edge ], [ 0, %if.end.i717.if.end10.i_crit_edge ]
  %973 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load1_noabort(i32 %973)
  %974 = load i8, ptr %flags2.i, align 2
  %975 = and i8 %974, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %975)
  %tobool14.not.i = icmp eq i8 %975, 0
  br i1 %tobool14.not.i, label %if.end10.i.if.end25.i_crit_edge, label %if.then15.i

if.end10.i.if.end25.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then15.i:                                      ; preds = %if.end10.i
  %976 = ptrtoint ptr %961 to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load ptr, ptr %961, align 128
  %dev17.i723 = getelementptr inbounds %struct.pci_dev, ptr %977, i32 0, i32 44
  %sg_list18.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %978 = ptrtoint ptr %sg_list18.i to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load ptr, ptr %sg_list18.i, align 4
  %sg_cnt20.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %980 = ptrtoint ptr %sg_cnt20.i to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load i32, ptr %sg_cnt20.i, align 4
  %call21.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev17.i723, ptr noundef %979, i32 noundef %981, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.then15.i.if.end25.i_crit_edge

if.then15.i.if.end25.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i708, i32 noundef 28872, ptr noundef nonnull @.str.30, i32 noundef 0) #9
  br label %done_unmap_req_sg.i738

if.end25.i:                                       ; preds = %if.then15.i.if.end25.i_crit_edge, %if.end10.i.if.end25.i_crit_edge
  %rsp_sg_cnt.0.i = phi i32 [ %call21.i, %if.then15.i.if.end25.i_crit_edge ], [ 0, %if.end10.i.if.end25.i_crit_edge ]
  %sg_cnt27.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %982 = ptrtoint ptr %sg_cnt27.i to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load i32, ptr %sg_cnt27.i, align 4
  %sg_cnt29.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %984 = ptrtoint ptr %sg_cnt29.i to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load i32, ptr %sg_cnt29.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i708, i32 noundef 28873, ptr noundef nonnull @.str.31, i32 noundef %983, i32 noundef %req_sg_cnt.0.i, i32 noundef %985, i32 noundef %rsp_sg_cnt.0.i) #9
  %call30.i = tail call ptr @qla2x00_alloc_fcport(ptr noundef %hostdata.i.i708, i32 noundef 3264) #9
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.then32.i724, label %if.end33.i

if.then32.i724:                                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i708, i32 noundef 28874, ptr noundef nonnull @.str.34) #9
  br label %done_unmap_rsp_sg.i

if.end33.i:                                       ; preds = %if.end25.i
  %call34.i = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %hostdata.i.i708, ptr noundef nonnull %call30.i) #9
  %tobool35.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool35.not.i, label %if.then36.i, label %if.end37.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i708, i32 noundef 28875, ptr noundef nonnull @.str.35) #9
  br label %done_free_fcport.i

if.end37.i:                                       ; preds = %if.end33.i
  %vha38.i = getelementptr inbounds %struct.fc_port, ptr %call30.i, i32 0, i32 1
  %986 = ptrtoint ptr %vha38.i to i32
  call void @__asan_store4_noabort(i32 %986)
  store ptr %hostdata.i.i708, ptr %vha38.i, align 8
  %dataword.i = getelementptr %struct.fc_bsg_request, ptr %949, i32 1, i32 1
  %987 = ptrtoint ptr %dataword.i to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load i32, ptr %dataword.i, align 4
  %989 = tail call i32 @llvm.bswap.i32(i32 %988) #9
  %conv39.i = trunc i32 %989 to i16
  %loop_id.i725 = getelementptr inbounds %struct.fc_port, ptr %call30.i, i32 0, i32 7
  %990 = ptrtoint ptr %loop_id.i725 to i32
  call void @__asan_store2_noabort(i32 %990)
  store i16 %conv39.i, ptr %loop_id.i725, align 4
  %type40.i = getelementptr inbounds %struct.srb, ptr %call34.i, i32 0, i32 11
  %991 = ptrtoint ptr %type40.i to i32
  call void @__asan_store2_noabort(i32 %991)
  store i16 11, ptr %type40.i, align 2
  %name.i = getelementptr inbounds %struct.srb, ptr %call34.i, i32 0, i32 12
  %992 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %992)
  store ptr @.str.98, ptr %name.i, align 8
  %add.i726 = add i32 %rsp_sg_cnt.0.i, %req_sg_cnt.0.i
  %conv41.i = trunc i32 %add.i726 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %conv41.i)
  %cmp.i.i = icmp ugt i16 %conv41.i, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end37.i.qla24xx_calc_ct_iocbs.exit.i_crit_edge

if.end37.i.qla24xx_calc_ct_iocbs.exit.i_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla24xx_calc_ct_iocbs.exit.i

if.then.i.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i16 %conv41.i, -2
  %sub.i.i.frozen = freeze i16 %sub.i.i
  %div1314.i.i = udiv i16 %sub.i.i.frozen, 5
  %993 = mul i16 %div1314.i.i, 5
  %rem1516.i.i.decomposed = sub i16 %sub.i.i.frozen, %993
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem1516.i.i.decomposed)
  %tobool.not.i143.i = icmp eq i16 %rem1516.i.i.decomposed, 0
  %spec.select.v.i.i = select i1 %tobool.not.i143.i, i16 1, i16 2
  %spec.select.i.i = add nuw nsw i16 %spec.select.v.i.i, %div1314.i.i
  %phi.cast.i = zext i16 %spec.select.i.i to i32
  br label %qla24xx_calc_ct_iocbs.exit.i

qla24xx_calc_ct_iocbs.exit.i:                     ; preds = %if.then.i.i, %if.end37.i.qla24xx_calc_ct_iocbs.exit.i_crit_edge
  %iocbs.0.i.i = phi i32 [ 1, %if.end37.i.qla24xx_calc_ct_iocbs.exit.i_crit_edge ], [ %phi.cast.i, %if.then.i.i ]
  %iocbs.i = getelementptr inbounds %struct.srb, ptr %call34.i, i32 0, i32 13
  %994 = ptrtoint ptr %iocbs.i to i32
  call void @__asan_store4_noabort(i32 %994)
  store i32 %iocbs.0.i.i, ptr %iocbs.i, align 4
  %u.i727 = getelementptr inbounds %struct.srb, ptr %call34.i, i32 0, i32 22
  %995 = ptrtoint ptr %u.i727 to i32
  call void @__asan_store4_noabort(i32 %995)
  store ptr %bsg_job, ptr %u.i727, align 8
  %free.i728 = getelementptr inbounds %struct.srb, ptr %call34.i, i32 0, i32 25
  %996 = ptrtoint ptr %free.i728 to i32
  call void @__asan_store4_noabort(i32 %996)
  store ptr @qla2x00_bsg_sp_free, ptr %free.i728, align 8
  %done.i729 = getelementptr inbounds %struct.srb, ptr %call34.i, i32 0, i32 24
  %997 = ptrtoint ptr %done.i729 to i32
  call void @__asan_store4_noabort(i32 %997)
  store ptr @qla2x00_bsg_job_done, ptr %done.i729, align 4
  %func_type.i = getelementptr %struct.fc_bsg_request, ptr %949, i32 1
  %998 = ptrtoint ptr %func_type.i to i32
  call void @__asan_load2_noabort(i32 %998)
  %999 = load i16, ptr %func_type.i, align 4
  %conv44.i = zext i16 %999 to i32
  %1000 = ptrtoint ptr %loop_id.i725 to i32
  call void @__asan_load2_noabort(i32 %1000)
  %1001 = load i16, ptr %loop_id.i725, align 4
  %conv46.i = zext i16 %1001 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i708, i32 noundef 28876, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.97, i32 noundef %conv44.i, i32 noundef %conv46.i) #9
  %call47.i = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call34.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp.not.i730 = icmp eq i32 %call47.i, 0
  br i1 %cmp.not.i730, label %qla24xx_calc_ct_iocbs.exit.i.cleanup_crit_edge, label %if.then49.i732

qla24xx_calc_ct_iocbs.exit.i.cleanup_crit_edge:   ; preds = %qla24xx_calc_ct_iocbs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then49.i732:                                   ; preds = %qla24xx_calc_ct_iocbs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i708, i32 noundef 28877, ptr noundef nonnull @.str.38, i32 noundef %call47.i) #9
  %srb_mempool.i731 = getelementptr inbounds %struct.qla_hw_data, ptr %961, i32 0, i32 1
  %1002 = ptrtoint ptr %srb_mempool.i731 to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load ptr, ptr %srb_mempool.i731, align 4
  tail call void @mempool_free(ptr noundef nonnull %call34.i, ptr noundef %1003) #9
  br label %done_free_fcport.i

done_free_fcport.i:                               ; preds = %if.then49.i732, %if.then36.i
  %rval.0.i733 = phi i32 [ -5, %if.then49.i732 ], [ -12, %if.then36.i ]
  tail call void @qla2x00_free_fcport(ptr noundef nonnull %call30.i) #9
  br label %done_unmap_rsp_sg.i

done_unmap_rsp_sg.i:                              ; preds = %done_free_fcport.i, %if.then32.i724
  %rval.1.i734 = phi i32 [ %rval.0.i733, %done_free_fcport.i ], [ -12, %if.then32.i724 ]
  %1004 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load1_noabort(i32 %1004)
  %1005 = load i8, ptr %flags2.i, align 2
  %1006 = and i8 %1005, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1006)
  %tobool54.not.i735 = icmp eq i8 %1006, 0
  br i1 %tobool54.not.i735, label %done_unmap_rsp_sg.i.done_unmap_req_sg.i738_crit_edge, label %if.then55.i736

done_unmap_rsp_sg.i.done_unmap_req_sg.i738_crit_edge: ; preds = %done_unmap_rsp_sg.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_unmap_req_sg.i738

if.then55.i736:                                   ; preds = %done_unmap_rsp_sg.i
  call void @__sanitizer_cov_trace_pc() #11
  %1007 = ptrtoint ptr %961 to i32
  call void @__asan_load4_noabort(i32 %1007)
  %1008 = load ptr, ptr %961, align 128
  %dev57.i = getelementptr inbounds %struct.pci_dev, ptr %1008, i32 0, i32 44
  %sg_list59.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %1009 = ptrtoint ptr %sg_list59.i to i32
  call void @__asan_load4_noabort(i32 %1009)
  %1010 = load ptr, ptr %sg_list59.i, align 4
  %1011 = ptrtoint ptr %sg_cnt29.i to i32
  call void @__asan_load4_noabort(i32 %1011)
  %1012 = load i32, ptr %sg_cnt29.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev57.i, ptr noundef %1010, i32 noundef %1012, i32 noundef 2, i32 noundef 0) #9
  br label %done_unmap_req_sg.i738

done_unmap_req_sg.i738:                           ; preds = %if.then55.i736, %done_unmap_rsp_sg.i.done_unmap_req_sg.i738_crit_edge, %if.then23.i
  %rval.2.i737 = phi i32 [ %rval.1.i734, %if.then55.i736 ], [ %rval.1.i734, %done_unmap_rsp_sg.i.done_unmap_req_sg.i738_crit_edge ], [ -12, %if.then23.i ]
  %1013 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load1_noabort(i32 %1013)
  %1014 = load i8, ptr %flags2.i, align 2
  %1015 = and i8 %1014, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1015)
  %tobool66.not.i = icmp eq i8 %1015, 0
  br i1 %tobool66.not.i, label %done_unmap_req_sg.i738.cleanup_crit_edge, label %if.then67.i

done_unmap_req_sg.i738.cleanup_crit_edge:         ; preds = %done_unmap_req_sg.i738
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then67.i:                                      ; preds = %done_unmap_req_sg.i738
  call void @__sanitizer_cov_trace_pc() #11
  %1016 = ptrtoint ptr %961 to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %961, align 128
  %dev69.i = getelementptr inbounds %struct.pci_dev, ptr %1017, i32 0, i32 44
  %sg_list71.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %1018 = ptrtoint ptr %sg_list71.i to i32
  call void @__asan_load4_noabort(i32 %1018)
  %1019 = load ptr, ptr %sg_list71.i, align 4
  %sg_cnt73.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %1020 = ptrtoint ptr %sg_cnt73.i to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load i32, ptr %sg_cnt73.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev69.i, ptr noundef %1019, i32 noundef %1021, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %reply.i740 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %1022 = ptrtoint ptr %reply.i740 to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load ptr, ptr %reply.i740, align 4
  %1024 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load ptr, ptr %bsg_job, align 4
  %call.i.i741 = tail call i32 @scsi_is_host_device(ptr noundef %1025) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i741)
  %tobool.not.i.i742 = icmp eq i32 %call.i.i741, 0
  %1026 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i742, label %if.end.i.i753, label %sw.bb32.while.cond.i.i.i746_crit_edge

sw.bb32.while.cond.i.i.i746_crit_edge:            ; preds = %sw.bb32
  br label %while.cond.i.i.i746

while.cond.i.i.i746:                              ; preds = %while.body.i.i.i749.while.cond.i.i.i746_crit_edge, %sw.bb32.while.cond.i.i.i746_crit_edge
  %dev.addr.0.i.i.i743 = phi ptr [ %1029, %while.body.i.i.i749.while.cond.i.i.i746_crit_edge ], [ %1027, %sw.bb32.while.cond.i.i.i746_crit_edge ]
  %call.i.i.i744 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i743) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i744)
  %tobool.not.i.i.i745 = icmp eq i32 %call.i.i.i744, 0
  br i1 %tobool.not.i.i.i745, label %while.body.i.i.i749, label %while.end.i.i.i751

while.body.i.i.i749:                              ; preds = %while.cond.i.i.i746
  %parent.i.i.i747 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i743, i32 0, i32 1
  %1028 = ptrtoint ptr %parent.i.i.i747 to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load ptr, ptr %parent.i.i.i747, align 8
  %tobool1.not.i.i.i748 = icmp eq ptr %1029, null
  br i1 %tobool1.not.i.i.i748, label %while.body.i.i.i749.fc_bsg_to_shost.exit.i768_crit_edge, label %while.body.i.i.i749.while.cond.i.i.i746_crit_edge

while.body.i.i.i749.while.cond.i.i.i746_crit_edge: ; preds = %while.body.i.i.i749
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i746

while.body.i.i.i749.fc_bsg_to_shost.exit.i768_crit_edge: ; preds = %while.body.i.i.i749
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i768

while.end.i.i.i751:                               ; preds = %while.cond.i.i.i746
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i750 = getelementptr i8, ptr %dev.addr.0.i.i.i743, i32 -584
  br label %fc_bsg_to_shost.exit.i768

if.end.i.i753:                                    ; preds = %sw.bb32
  %parent.i.i752 = getelementptr inbounds %struct.device, ptr %1027, i32 0, i32 1
  %1030 = ptrtoint ptr %parent.i.i752 to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load ptr, ptr %parent.i.i752, align 8
  br label %while.cond.i11.i.i757

while.cond.i11.i.i757:                            ; preds = %while.body.i14.i.i760.while.cond.i11.i.i757_crit_edge, %if.end.i.i753
  %dev.addr.0.i8.i.i754 = phi ptr [ %1031, %if.end.i.i753 ], [ %1033, %while.body.i14.i.i760.while.cond.i11.i.i757_crit_edge ]
  %call.i9.i.i755 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i754) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i755)
  %tobool.not.i10.i.i756 = icmp eq i32 %call.i9.i.i755, 0
  br i1 %tobool.not.i10.i.i756, label %while.body.i14.i.i760, label %while.end.i16.i.i762

while.body.i14.i.i760:                            ; preds = %while.cond.i11.i.i757
  %parent.i12.i.i758 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i754, i32 0, i32 1
  %1032 = ptrtoint ptr %parent.i12.i.i758 to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load ptr, ptr %parent.i12.i.i758, align 8
  %tobool1.not.i13.i.i759 = icmp eq ptr %1033, null
  br i1 %tobool1.not.i13.i.i759, label %while.body.i14.i.i760.fc_bsg_to_shost.exit.i768_crit_edge, label %while.body.i14.i.i760.while.cond.i11.i.i757_crit_edge

while.body.i14.i.i760.while.cond.i11.i.i757_crit_edge: ; preds = %while.body.i14.i.i760
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i757

while.body.i14.i.i760.fc_bsg_to_shost.exit.i768_crit_edge: ; preds = %while.body.i14.i.i760
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i768

while.end.i16.i.i762:                             ; preds = %while.cond.i11.i.i757
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i761 = getelementptr i8, ptr %dev.addr.0.i8.i.i754, i32 -584
  br label %fc_bsg_to_shost.exit.i768

fc_bsg_to_shost.exit.i768:                        ; preds = %while.end.i16.i.i762, %while.body.i14.i.i760.fc_bsg_to_shost.exit.i768_crit_edge, %while.end.i.i.i751, %while.body.i.i.i749.fc_bsg_to_shost.exit.i768_crit_edge
  %retval.0.i.i763 = phi ptr [ %add.ptr.i.i.i750, %while.end.i.i.i751 ], [ %add.ptr.i15.i.i761, %while.end.i16.i.i762 ], [ null, %while.body.i14.i.i760.fc_bsg_to_shost.exit.i768_crit_edge ], [ null, %while.body.i.i.i749.fc_bsg_to_shost.exit.i768_crit_edge ]
  %hostdata.i.i764 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i763, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %sr.i) #9
  %1034 = getelementptr inbounds %struct.qla_serdes_reg, ptr %sr.i, i32 0, i32 1
  %1035 = getelementptr inbounds %struct.qla_serdes_reg, ptr %sr.i, i32 0, i32 2
  %1036 = call ptr @memset(ptr %sr.i, i32 0, i32 6)
  %sg_list.i765 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %1037 = ptrtoint ptr %sg_list.i765 to i32
  call void @__asan_load4_noabort(i32 %1037)
  %1038 = load ptr, ptr %sg_list.i765, align 4
  %sg_cnt.i766 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %1039 = ptrtoint ptr %sg_cnt.i766 to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load i32, ptr %sg_cnt.i766, align 4
  %call3.i767 = call i32 @sg_copy_to_buffer(ptr noundef %1038, i32 noundef %1040, ptr noundef nonnull %sr.i, i32 noundef 6) #9
  %1041 = ptrtoint ptr %sr.i to i32
  call void @__asan_load2_noabort(i32 %1041)
  %1042 = load i16, ptr %sr.i, align 2
  %1043 = zext i16 %1042 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1043, ptr @__sancov_gen_cov_switch_values.115)
  switch i16 %1042, label %sw.epilog.thread.i [
    i16 2, label %sw.bb.i770
    i16 1, label %sw.bb5.i
  ]

sw.bb.i770:                                       ; preds = %fc_bsg_to_shost.exit.i768
  call void @__sanitizer_cov_trace_pc() #11
  %1044 = ptrtoint ptr %1034 to i32
  call void @__asan_load2_noabort(i32 %1044)
  %1045 = load i16, ptr %1034, align 2
  %1046 = ptrtoint ptr %1035 to i32
  call void @__asan_load2_noabort(i32 %1046)
  %1047 = load i16, ptr %1035, align 2
  %call4.i769 = call i32 @qla2x00_write_serdes_word(ptr noundef %hostdata.i.i764, i16 noundef zeroext %1045, i16 noundef zeroext %1047) #9
  br label %sw.epilog.i777

sw.bb5.i:                                         ; preds = %fc_bsg_to_shost.exit.i768
  call void @__sanitizer_cov_trace_pc() #11
  %1048 = ptrtoint ptr %1034 to i32
  call void @__asan_load2_noabort(i32 %1048)
  %1049 = load i16, ptr %1034, align 2
  %call8.i771 = call i32 @qla2x00_read_serdes_word(ptr noundef %hostdata.i.i764, i16 noundef zeroext %1049, ptr noundef %1035) #9
  %sg_list9.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %1050 = ptrtoint ptr %sg_list9.i to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load ptr, ptr %sg_list9.i, align 4
  %sg_cnt11.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %1052 = ptrtoint ptr %sg_cnt11.i to i32
  call void @__asan_load4_noabort(i32 %1052)
  %1053 = load i32, ptr %sg_cnt11.i, align 4
  %call12.i = call i32 @sg_copy_from_buffer(ptr noundef %1051, i32 noundef %1053, ptr noundef nonnull %sr.i, i32 noundef 6) #9
  br label %sw.epilog.i777

sw.epilog.thread.i:                               ; preds = %fc_bsg_to_shost.exit.i768
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i772 = zext i16 %1042 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i764, i32 noundef 28812, ptr noundef nonnull @.str.100, i32 noundef %conv.i772) #9
  br label %qla26xx_serdes_op.exit

sw.epilog.i777:                                   ; preds = %sw.bb5.i, %sw.bb.i770
  %.sink.i773 = phi i32 [ 6, %sw.bb5.i ], [ 0, %sw.bb.i770 ]
  %rval.0.i774 = phi i32 [ %call8.i771, %sw.bb5.i ], [ %call4.i769, %sw.bb.i770 ]
  %reply_payload_rcv_len13.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %1023, i32 0, i32 1
  %1054 = ptrtoint ptr %reply_payload_rcv_len13.i to i32
  call void @__asan_store4_noabort(i32 %1054)
  store i32 %.sink.i773, ptr %reply_payload_rcv_len13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.0.i774)
  %tobool.not.i775 = icmp eq i32 %rval.0.i774, 0
  %spec.select.i776 = select i1 %tobool.not.i775, i32 0, i32 11
  br label %qla26xx_serdes_op.exit

qla26xx_serdes_op.exit:                           ; preds = %sw.epilog.i777, %sw.epilog.thread.i
  %1055 = phi i32 [ 11, %sw.epilog.thread.i ], [ %spec.select.i776, %sw.epilog.i777 ]
  %reply_data.i778 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1023, i32 0, i32 2
  %1056 = ptrtoint ptr %reply_data.i778 to i32
  call void @__asan_store4_noabort(i32 %1056)
  store i32 %1055, ptr %reply_data.i778, align 4
  %reply_len.i779 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %1057 = ptrtoint ptr %reply_len.i779 to i32
  call void @__asan_store4_noabort(i32 %1057)
  store i32 16, ptr %reply_len.i779, align 4
  %1058 = ptrtoint ptr %1023 to i32
  call void @__asan_store4_noabort(i32 %1058)
  store i32 0, ptr %1023, align 4
  %reply_payload_rcv_len17.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %1023, i32 0, i32 1
  %1059 = ptrtoint ptr %reply_payload_rcv_len17.i to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load i32, ptr %reply_payload_rcv_len17.i, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %1060) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %sr.i) #9
  br label %cleanup

sw.bb34:                                          ; preds = %entry
  %reply.i781 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %1061 = ptrtoint ptr %reply.i781 to i32
  call void @__asan_load4_noabort(i32 %1061)
  %1062 = load ptr, ptr %reply.i781, align 4
  %1063 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1063)
  %1064 = load ptr, ptr %bsg_job, align 4
  %call.i.i782 = tail call i32 @scsi_is_host_device(ptr noundef %1064) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i782)
  %tobool.not.i.i783 = icmp eq i32 %call.i.i782, 0
  %1065 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1065)
  %1066 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i783, label %if.end.i.i794, label %sw.bb34.while.cond.i.i.i787_crit_edge

sw.bb34.while.cond.i.i.i787_crit_edge:            ; preds = %sw.bb34
  br label %while.cond.i.i.i787

while.cond.i.i.i787:                              ; preds = %while.body.i.i.i790.while.cond.i.i.i787_crit_edge, %sw.bb34.while.cond.i.i.i787_crit_edge
  %dev.addr.0.i.i.i784 = phi ptr [ %1068, %while.body.i.i.i790.while.cond.i.i.i787_crit_edge ], [ %1066, %sw.bb34.while.cond.i.i.i787_crit_edge ]
  %call.i.i.i785 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i784) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i785)
  %tobool.not.i.i.i786 = icmp eq i32 %call.i.i.i785, 0
  br i1 %tobool.not.i.i.i786, label %while.body.i.i.i790, label %while.end.i.i.i792

while.body.i.i.i790:                              ; preds = %while.cond.i.i.i787
  %parent.i.i.i788 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i784, i32 0, i32 1
  %1067 = ptrtoint ptr %parent.i.i.i788 to i32
  call void @__asan_load4_noabort(i32 %1067)
  %1068 = load ptr, ptr %parent.i.i.i788, align 8
  %tobool1.not.i.i.i789 = icmp eq ptr %1068, null
  br i1 %tobool1.not.i.i.i789, label %while.body.i.i.i790.fc_bsg_to_shost.exit.i809_crit_edge, label %while.body.i.i.i790.while.cond.i.i.i787_crit_edge

while.body.i.i.i790.while.cond.i.i.i787_crit_edge: ; preds = %while.body.i.i.i790
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i787

while.body.i.i.i790.fc_bsg_to_shost.exit.i809_crit_edge: ; preds = %while.body.i.i.i790
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i809

while.end.i.i.i792:                               ; preds = %while.cond.i.i.i787
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i791 = getelementptr i8, ptr %dev.addr.0.i.i.i784, i32 -584
  br label %fc_bsg_to_shost.exit.i809

if.end.i.i794:                                    ; preds = %sw.bb34
  %parent.i.i793 = getelementptr inbounds %struct.device, ptr %1066, i32 0, i32 1
  %1069 = ptrtoint ptr %parent.i.i793 to i32
  call void @__asan_load4_noabort(i32 %1069)
  %1070 = load ptr, ptr %parent.i.i793, align 8
  br label %while.cond.i11.i.i798

while.cond.i11.i.i798:                            ; preds = %while.body.i14.i.i801.while.cond.i11.i.i798_crit_edge, %if.end.i.i794
  %dev.addr.0.i8.i.i795 = phi ptr [ %1070, %if.end.i.i794 ], [ %1072, %while.body.i14.i.i801.while.cond.i11.i.i798_crit_edge ]
  %call.i9.i.i796 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i795) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i796)
  %tobool.not.i10.i.i797 = icmp eq i32 %call.i9.i.i796, 0
  br i1 %tobool.not.i10.i.i797, label %while.body.i14.i.i801, label %while.end.i16.i.i803

while.body.i14.i.i801:                            ; preds = %while.cond.i11.i.i798
  %parent.i12.i.i799 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i795, i32 0, i32 1
  %1071 = ptrtoint ptr %parent.i12.i.i799 to i32
  call void @__asan_load4_noabort(i32 %1071)
  %1072 = load ptr, ptr %parent.i12.i.i799, align 8
  %tobool1.not.i13.i.i800 = icmp eq ptr %1072, null
  br i1 %tobool1.not.i13.i.i800, label %while.body.i14.i.i801.fc_bsg_to_shost.exit.i809_crit_edge, label %while.body.i14.i.i801.while.cond.i11.i.i798_crit_edge

while.body.i14.i.i801.while.cond.i11.i.i798_crit_edge: ; preds = %while.body.i14.i.i801
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i798

while.body.i14.i.i801.fc_bsg_to_shost.exit.i809_crit_edge: ; preds = %while.body.i14.i.i801
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i809

while.end.i16.i.i803:                             ; preds = %while.cond.i11.i.i798
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i802 = getelementptr i8, ptr %dev.addr.0.i8.i.i795, i32 -584
  br label %fc_bsg_to_shost.exit.i809

fc_bsg_to_shost.exit.i809:                        ; preds = %while.end.i16.i.i803, %while.body.i14.i.i801.fc_bsg_to_shost.exit.i809_crit_edge, %while.end.i.i.i792, %while.body.i.i.i790.fc_bsg_to_shost.exit.i809_crit_edge
  %retval.0.i.i804 = phi ptr [ %add.ptr.i.i.i791, %while.end.i.i.i792 ], [ %add.ptr.i15.i.i802, %while.end.i16.i.i803 ], [ null, %while.body.i14.i.i801.fc_bsg_to_shost.exit.i809_crit_edge ], [ null, %while.body.i.i.i790.fc_bsg_to_shost.exit.i809_crit_edge ]
  %hostdata.i.i805 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i804, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %sr.i780) #9
  %1073 = getelementptr inbounds %struct.qla_serdes_reg_ex, ptr %sr.i780, i32 0, i32 1
  %1074 = getelementptr inbounds %struct.qla_serdes_reg_ex, ptr %sr.i780, i32 0, i32 2
  %1075 = call ptr @memset(ptr %sr.i780, i32 0, i32 10)
  %sg_list.i806 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %1076 = ptrtoint ptr %sg_list.i806 to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load ptr, ptr %sg_list.i806, align 4
  %sg_cnt.i807 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %1078 = ptrtoint ptr %sg_cnt.i807 to i32
  call void @__asan_load4_noabort(i32 %1078)
  %1079 = load i32, ptr %sg_cnt.i807, align 4
  %call3.i808 = call i32 @sg_copy_to_buffer(ptr noundef %1077, i32 noundef %1079, ptr noundef nonnull %sr.i780, i32 noundef 10) #9
  %1080 = ptrtoint ptr %sr.i780 to i32
  call void @__asan_load2_noabort(i32 %1080)
  %1081 = load i16, ptr %sr.i780, align 2
  %1082 = zext i16 %1081 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1082, ptr @__sancov_gen_cov_switch_values.116)
  switch i16 %1081, label %sw.epilog.thread.i818 [
    i16 2, label %sw.bb.i811
    i16 1, label %sw.bb5.i816
  ]

sw.bb.i811:                                       ; preds = %fc_bsg_to_shost.exit.i809
  call void @__sanitizer_cov_trace_pc() #11
  %1083 = ptrtoint ptr %1073 to i32
  call void @__asan_loadN_noabort(i32 %1083, i32 4)
  %1084 = load i32, ptr %1073, align 2
  %1085 = ptrtoint ptr %1074 to i32
  call void @__asan_loadN_noabort(i32 %1085, i32 4)
  %1086 = load i32, ptr %1074, align 2
  %call4.i810 = call i32 @qla8044_write_serdes_word(ptr noundef %hostdata.i.i805, i32 noundef %1084, i32 noundef %1086) #9
  br label %sw.epilog.i824

sw.bb5.i816:                                      ; preds = %fc_bsg_to_shost.exit.i809
  call void @__sanitizer_cov_trace_pc() #11
  %1087 = ptrtoint ptr %1073 to i32
  call void @__asan_loadN_noabort(i32 %1087, i32 4)
  %1088 = load i32, ptr %1073, align 2
  %call8.i812 = call i32 @qla8044_read_serdes_word(ptr noundef %hostdata.i.i805, i32 noundef %1088, ptr noundef %1074) #9
  %sg_list9.i813 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %1089 = ptrtoint ptr %sg_list9.i813 to i32
  call void @__asan_load4_noabort(i32 %1089)
  %1090 = load ptr, ptr %sg_list9.i813, align 4
  %sg_cnt11.i814 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %1091 = ptrtoint ptr %sg_cnt11.i814 to i32
  call void @__asan_load4_noabort(i32 %1091)
  %1092 = load i32, ptr %sg_cnt11.i814, align 4
  %call12.i815 = call i32 @sg_copy_from_buffer(ptr noundef %1090, i32 noundef %1092, ptr noundef nonnull %sr.i780, i32 noundef 10) #9
  br label %sw.epilog.i824

sw.epilog.thread.i818:                            ; preds = %fc_bsg_to_shost.exit.i809
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i817 = zext i16 %1081 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i805, i32 noundef 28704, ptr noundef nonnull @.str.100, i32 noundef %conv.i817) #9
  br label %qla8044_serdes_op.exit

sw.epilog.i824:                                   ; preds = %sw.bb5.i816, %sw.bb.i811
  %.sink.i819 = phi i32 [ 10, %sw.bb5.i816 ], [ 0, %sw.bb.i811 ]
  %rval.0.i820 = phi i32 [ %call8.i812, %sw.bb5.i816 ], [ %call4.i810, %sw.bb.i811 ]
  %reply_payload_rcv_len13.i821 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1062, i32 0, i32 1
  %1093 = ptrtoint ptr %reply_payload_rcv_len13.i821 to i32
  call void @__asan_store4_noabort(i32 %1093)
  store i32 %.sink.i819, ptr %reply_payload_rcv_len13.i821, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.0.i820)
  %tobool.not.i822 = icmp eq i32 %rval.0.i820, 0
  %spec.select.i823 = select i1 %tobool.not.i822, i32 0, i32 11
  br label %qla8044_serdes_op.exit

qla8044_serdes_op.exit:                           ; preds = %sw.epilog.i824, %sw.epilog.thread.i818
  %1094 = phi i32 [ 11, %sw.epilog.thread.i818 ], [ %spec.select.i823, %sw.epilog.i824 ]
  %reply_data.i825 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1062, i32 0, i32 2
  %1095 = ptrtoint ptr %reply_data.i825 to i32
  call void @__asan_store4_noabort(i32 %1095)
  store i32 %1094, ptr %reply_data.i825, align 4
  %reply_len.i826 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %1096 = ptrtoint ptr %reply_len.i826 to i32
  call void @__asan_store4_noabort(i32 %1096)
  store i32 16, ptr %reply_len.i826, align 4
  %1097 = ptrtoint ptr %1062 to i32
  call void @__asan_store4_noabort(i32 %1097)
  store i32 0, ptr %1062, align 4
  %reply_payload_rcv_len17.i827 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1062, i32 0, i32 1
  %1098 = ptrtoint ptr %reply_payload_rcv_len17.i827 to i32
  call void @__asan_load4_noabort(i32 %1098)
  %1099 = load i32, ptr %reply_payload_rcv_len17.i827, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %1099) #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %sr.i780) #9
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  %reply.i828 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %1100 = ptrtoint ptr %reply.i828 to i32
  call void @__asan_load4_noabort(i32 %1100)
  %1101 = load ptr, ptr %reply.i828, align 4
  %1102 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1102)
  %1103 = load ptr, ptr %bsg_job, align 4
  %call.i.i829 = tail call i32 @scsi_is_host_device(ptr noundef %1103) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i829)
  %tobool.not.i.i830 = icmp eq i32 %call.i.i829, 0
  %1104 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1104)
  %1105 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i830, label %if.end.i.i841, label %sw.bb36.while.cond.i.i.i834_crit_edge

sw.bb36.while.cond.i.i.i834_crit_edge:            ; preds = %sw.bb36
  br label %while.cond.i.i.i834

while.cond.i.i.i834:                              ; preds = %while.body.i.i.i837.while.cond.i.i.i834_crit_edge, %sw.bb36.while.cond.i.i.i834_crit_edge
  %dev.addr.0.i.i.i831 = phi ptr [ %1107, %while.body.i.i.i837.while.cond.i.i.i834_crit_edge ], [ %1105, %sw.bb36.while.cond.i.i.i834_crit_edge ]
  %call.i.i.i832 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i831) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i832)
  %tobool.not.i.i.i833 = icmp eq i32 %call.i.i.i832, 0
  br i1 %tobool.not.i.i.i833, label %while.body.i.i.i837, label %while.end.i.i.i839

while.body.i.i.i837:                              ; preds = %while.cond.i.i.i834
  %parent.i.i.i835 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i831, i32 0, i32 1
  %1106 = ptrtoint ptr %parent.i.i.i835 to i32
  call void @__asan_load4_noabort(i32 %1106)
  %1107 = load ptr, ptr %parent.i.i.i835, align 8
  %tobool1.not.i.i.i836 = icmp eq ptr %1107, null
  br i1 %tobool1.not.i.i.i836, label %while.body.i.i.i837.fc_bsg_to_shost.exit.i855_crit_edge, label %while.body.i.i.i837.while.cond.i.i.i834_crit_edge

while.body.i.i.i837.while.cond.i.i.i834_crit_edge: ; preds = %while.body.i.i.i837
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i834

while.body.i.i.i837.fc_bsg_to_shost.exit.i855_crit_edge: ; preds = %while.body.i.i.i837
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i855

while.end.i.i.i839:                               ; preds = %while.cond.i.i.i834
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i838 = getelementptr i8, ptr %dev.addr.0.i.i.i831, i32 -584
  br label %fc_bsg_to_shost.exit.i855

if.end.i.i841:                                    ; preds = %sw.bb36
  %parent.i.i840 = getelementptr inbounds %struct.device, ptr %1105, i32 0, i32 1
  %1108 = ptrtoint ptr %parent.i.i840 to i32
  call void @__asan_load4_noabort(i32 %1108)
  %1109 = load ptr, ptr %parent.i.i840, align 8
  br label %while.cond.i11.i.i845

while.cond.i11.i.i845:                            ; preds = %while.body.i14.i.i848.while.cond.i11.i.i845_crit_edge, %if.end.i.i841
  %dev.addr.0.i8.i.i842 = phi ptr [ %1109, %if.end.i.i841 ], [ %1111, %while.body.i14.i.i848.while.cond.i11.i.i845_crit_edge ]
  %call.i9.i.i843 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i842) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i843)
  %tobool.not.i10.i.i844 = icmp eq i32 %call.i9.i.i843, 0
  br i1 %tobool.not.i10.i.i844, label %while.body.i14.i.i848, label %while.end.i16.i.i850

while.body.i14.i.i848:                            ; preds = %while.cond.i11.i.i845
  %parent.i12.i.i846 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i842, i32 0, i32 1
  %1110 = ptrtoint ptr %parent.i12.i.i846 to i32
  call void @__asan_load4_noabort(i32 %1110)
  %1111 = load ptr, ptr %parent.i12.i.i846, align 8
  %tobool1.not.i13.i.i847 = icmp eq ptr %1111, null
  br i1 %tobool1.not.i13.i.i847, label %while.body.i14.i.i848.fc_bsg_to_shost.exit.i855_crit_edge, label %while.body.i14.i.i848.while.cond.i11.i.i845_crit_edge

while.body.i14.i.i848.while.cond.i11.i.i845_crit_edge: ; preds = %while.body.i14.i.i848
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i845

while.body.i14.i.i848.fc_bsg_to_shost.exit.i855_crit_edge: ; preds = %while.body.i14.i.i848
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i855

while.end.i16.i.i850:                             ; preds = %while.cond.i11.i.i845
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i849 = getelementptr i8, ptr %dev.addr.0.i8.i.i842, i32 -584
  br label %fc_bsg_to_shost.exit.i855

fc_bsg_to_shost.exit.i855:                        ; preds = %while.end.i16.i.i850, %while.body.i14.i.i848.fc_bsg_to_shost.exit.i855_crit_edge, %while.end.i.i.i839, %while.body.i.i.i837.fc_bsg_to_shost.exit.i855_crit_edge
  %retval.0.i.i851 = phi ptr [ %add.ptr.i.i.i838, %while.end.i.i.i839 ], [ %add.ptr.i15.i.i849, %while.end.i16.i.i850 ], [ null, %while.body.i14.i.i848.fc_bsg_to_shost.exit.i855_crit_edge ], [ null, %while.body.i.i.i837.fc_bsg_to_shost.exit.i855_crit_edge ]
  %hostdata.i.i852 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i851, i32 0, i32 53
  %hw.i853 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i852, i32 0, i32 52
  %1112 = ptrtoint ptr %hw.i853 to i32
  call void @__asan_load4_noabort(i32 %1112)
  %1113 = load ptr, ptr %hw.i853, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cap.i) #9
  %isp_type.i854 = getelementptr inbounds %struct.qla_hw_data, ptr %1113, i32 0, i32 54
  %1114 = ptrtoint ptr %isp_type.i854 to i32
  call void @__asan_load4_noabort(i32 %1114)
  %1115 = load i32, ptr %isp_type.i854, align 8
  %1116 = and i32 %1115, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1116)
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %fc_bsg_to_shost.exit.i855.qla27xx_get_flash_upd_cap.exit_crit_edge, label %if.end.i863

fc_bsg_to_shost.exit.i855.qla27xx_get_flash_upd_cap.exit_crit_edge: ; preds = %fc_bsg_to_shost.exit.i855
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla27xx_get_flash_upd_cap.exit

if.end.i863:                                      ; preds = %fc_bsg_to_shost.exit.i855
  call void @__sanitizer_cov_trace_pc() #11
  %1118 = getelementptr inbounds i8, ptr %cap.i, i32 8
  %1119 = call ptr @memset(ptr %1118, i32 0, i32 24)
  %fw_attributes_ext.i = getelementptr inbounds %struct.qla_hw_data, ptr %1113, i32 0, i32 140
  %arrayidx.i856 = getelementptr %struct.qla_hw_data, ptr %1113, i32 0, i32 140, i32 1
  %1120 = ptrtoint ptr %arrayidx.i856 to i32
  call void @__asan_load2_noabort(i32 %1120)
  %1121 = load i16, ptr %arrayidx.i856, align 2
  %conv.i857 = zext i16 %1121 to i64
  %shl.i = shl nuw i64 %conv.i857, 48
  %1122 = ptrtoint ptr %fw_attributes_ext.i to i32
  call void @__asan_load2_noabort(i32 %1122)
  %1123 = load i16, ptr %fw_attributes_ext.i, align 2
  %conv23.i = zext i16 %1123 to i64
  %shl24.i = shl nuw nsw i64 %conv23.i, 32
  %or.i = or i64 %shl24.i, %shl.i
  %fw_attributes_h.i = getelementptr inbounds %struct.qla_hw_data, ptr %1113, i32 0, i32 139
  %1124 = ptrtoint ptr %fw_attributes_h.i to i32
  call void @__asan_load2_noabort(i32 %1124)
  %1125 = load i16, ptr %fw_attributes_h.i, align 4
  %conv25.i = zext i16 %1125 to i64
  %shl26.i = shl nuw nsw i64 %conv25.i, 16
  %or27.i = or i64 %or.i, %shl26.i
  %fw_attributes.i = getelementptr inbounds %struct.qla_hw_data, ptr %1113, i32 0, i32 138
  %1126 = ptrtoint ptr %fw_attributes.i to i32
  call void @__asan_load2_noabort(i32 %1126)
  %1127 = load i16, ptr %fw_attributes.i, align 2
  %conv28.i = zext i16 %1127 to i64
  %or29.i = or i64 %or27.i, %conv28.i
  %1128 = ptrtoint ptr %cap.i to i32
  call void @__asan_store8_noabort(i32 %1128)
  store i64 %or29.i, ptr %cap.i, align 8
  %sg_list.i858 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %1129 = ptrtoint ptr %sg_list.i858 to i32
  call void @__asan_load4_noabort(i32 %1129)
  %1130 = load ptr, ptr %sg_list.i858, align 4
  %sg_cnt.i859 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %1131 = ptrtoint ptr %sg_cnt.i859 to i32
  call void @__asan_load4_noabort(i32 %1131)
  %1132 = load i32, ptr %sg_cnt.i859, align 4
  %call31.i = call i32 @sg_copy_from_buffer(ptr noundef %1130, i32 noundef %1132, ptr noundef nonnull %cap.i, i32 noundef 32) #9
  %reply_payload_rcv_len.i860 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1101, i32 0, i32 1
  %1133 = ptrtoint ptr %reply_payload_rcv_len.i860 to i32
  call void @__asan_store4_noabort(i32 %1133)
  store i32 32, ptr %reply_payload_rcv_len.i860, align 4
  %reply_data.i861 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1101, i32 0, i32 2
  %1134 = ptrtoint ptr %reply_data.i861 to i32
  call void @__asan_store4_noabort(i32 %1134)
  store i32 0, ptr %reply_data.i861, align 4
  %reply_len.i862 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %1135 = ptrtoint ptr %reply_len.i862 to i32
  call void @__asan_store4_noabort(i32 %1135)
  store i32 16, ptr %reply_len.i862, align 4
  %1136 = ptrtoint ptr %1101 to i32
  call void @__asan_store4_noabort(i32 %1136)
  store i32 0, ptr %1101, align 4
  %1137 = load i32, ptr %reply_payload_rcv_len.i860, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %1137) #9
  br label %qla27xx_get_flash_upd_cap.exit

qla27xx_get_flash_upd_cap.exit:                   ; preds = %if.end.i863, %fc_bsg_to_shost.exit.i855.qla27xx_get_flash_upd_cap.exit_crit_edge
  %retval.0.i864 = phi i32 [ 0, %if.end.i863 ], [ -1, %fc_bsg_to_shost.exit.i855.qla27xx_get_flash_upd_cap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cap.i) #9
  br label %cleanup

sw.bb38:                                          ; preds = %entry
  %reply.i866 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %1138 = ptrtoint ptr %reply.i866 to i32
  call void @__asan_load4_noabort(i32 %1138)
  %1139 = load ptr, ptr %reply.i866, align 4
  %1140 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load ptr, ptr %bsg_job, align 4
  %call.i.i867 = tail call i32 @scsi_is_host_device(ptr noundef %1141) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i867)
  %tobool.not.i.i868 = icmp eq i32 %call.i.i867, 0
  %1142 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i868, label %if.end.i.i879, label %sw.bb38.while.cond.i.i.i872_crit_edge

sw.bb38.while.cond.i.i.i872_crit_edge:            ; preds = %sw.bb38
  br label %while.cond.i.i.i872

while.cond.i.i.i872:                              ; preds = %while.body.i.i.i875.while.cond.i.i.i872_crit_edge, %sw.bb38.while.cond.i.i.i872_crit_edge
  %dev.addr.0.i.i.i869 = phi ptr [ %1145, %while.body.i.i.i875.while.cond.i.i.i872_crit_edge ], [ %1143, %sw.bb38.while.cond.i.i.i872_crit_edge ]
  %call.i.i.i870 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i869) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i870)
  %tobool.not.i.i.i871 = icmp eq i32 %call.i.i.i870, 0
  br i1 %tobool.not.i.i.i871, label %while.body.i.i.i875, label %while.end.i.i.i877

while.body.i.i.i875:                              ; preds = %while.cond.i.i.i872
  %parent.i.i.i873 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i869, i32 0, i32 1
  %1144 = ptrtoint ptr %parent.i.i.i873 to i32
  call void @__asan_load4_noabort(i32 %1144)
  %1145 = load ptr, ptr %parent.i.i.i873, align 8
  %tobool1.not.i.i.i874 = icmp eq ptr %1145, null
  br i1 %tobool1.not.i.i.i874, label %while.body.i.i.i875.fc_bsg_to_shost.exit.i893_crit_edge, label %while.body.i.i.i875.while.cond.i.i.i872_crit_edge

while.body.i.i.i875.while.cond.i.i.i872_crit_edge: ; preds = %while.body.i.i.i875
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i872

while.body.i.i.i875.fc_bsg_to_shost.exit.i893_crit_edge: ; preds = %while.body.i.i.i875
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i893

while.end.i.i.i877:                               ; preds = %while.cond.i.i.i872
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i876 = getelementptr i8, ptr %dev.addr.0.i.i.i869, i32 -584
  br label %fc_bsg_to_shost.exit.i893

if.end.i.i879:                                    ; preds = %sw.bb38
  %parent.i.i878 = getelementptr inbounds %struct.device, ptr %1143, i32 0, i32 1
  %1146 = ptrtoint ptr %parent.i.i878 to i32
  call void @__asan_load4_noabort(i32 %1146)
  %1147 = load ptr, ptr %parent.i.i878, align 8
  br label %while.cond.i11.i.i883

while.cond.i11.i.i883:                            ; preds = %while.body.i14.i.i886.while.cond.i11.i.i883_crit_edge, %if.end.i.i879
  %dev.addr.0.i8.i.i880 = phi ptr [ %1147, %if.end.i.i879 ], [ %1149, %while.body.i14.i.i886.while.cond.i11.i.i883_crit_edge ]
  %call.i9.i.i881 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i880) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i881)
  %tobool.not.i10.i.i882 = icmp eq i32 %call.i9.i.i881, 0
  br i1 %tobool.not.i10.i.i882, label %while.body.i14.i.i886, label %while.end.i16.i.i888

while.body.i14.i.i886:                            ; preds = %while.cond.i11.i.i883
  %parent.i12.i.i884 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i880, i32 0, i32 1
  %1148 = ptrtoint ptr %parent.i12.i.i884 to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load ptr, ptr %parent.i12.i.i884, align 8
  %tobool1.not.i13.i.i885 = icmp eq ptr %1149, null
  br i1 %tobool1.not.i13.i.i885, label %while.body.i14.i.i886.fc_bsg_to_shost.exit.i893_crit_edge, label %while.body.i14.i.i886.while.cond.i11.i.i883_crit_edge

while.body.i14.i.i886.while.cond.i11.i.i883_crit_edge: ; preds = %while.body.i14.i.i886
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i883

while.body.i14.i.i886.fc_bsg_to_shost.exit.i893_crit_edge: ; preds = %while.body.i14.i.i886
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i893

while.end.i16.i.i888:                             ; preds = %while.cond.i11.i.i883
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i887 = getelementptr i8, ptr %dev.addr.0.i8.i.i880, i32 -584
  br label %fc_bsg_to_shost.exit.i893

fc_bsg_to_shost.exit.i893:                        ; preds = %while.end.i16.i.i888, %while.body.i14.i.i886.fc_bsg_to_shost.exit.i893_crit_edge, %while.end.i.i.i877, %while.body.i.i.i875.fc_bsg_to_shost.exit.i893_crit_edge
  %retval.0.i.i889 = phi ptr [ %add.ptr.i.i.i876, %while.end.i.i.i877 ], [ %add.ptr.i15.i.i887, %while.end.i16.i.i888 ], [ null, %while.body.i14.i.i886.fc_bsg_to_shost.exit.i893_crit_edge ], [ null, %while.body.i.i.i875.fc_bsg_to_shost.exit.i893_crit_edge ]
  %hostdata.i.i890 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i889, i32 0, i32 53
  %hw.i891 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i890, i32 0, i32 52
  %1150 = ptrtoint ptr %hw.i891 to i32
  call void @__asan_load4_noabort(i32 %1150)
  %1151 = load ptr, ptr %hw.i891, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cap.i865) #9
  %1152 = getelementptr inbounds %struct.qla_flash_update_caps, ptr %cap.i865, i32 0, i32 1
  %isp_type.i892 = getelementptr inbounds %struct.qla_hw_data, ptr %1151, i32 0, i32 54
  %1153 = ptrtoint ptr %isp_type.i892 to i32
  call void @__asan_load4_noabort(i32 %1153)
  %1154 = load i32, ptr %isp_type.i892, align 8
  %1155 = and i32 %1154, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1155)
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %fc_bsg_to_shost.exit.i893.qla27xx_set_flash_upd_cap.exit_crit_edge, label %if.end.i907

fc_bsg_to_shost.exit.i893.qla27xx_set_flash_upd_cap.exit_crit_edge: ; preds = %fc_bsg_to_shost.exit.i893
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla27xx_set_flash_upd_cap.exit

if.end.i907:                                      ; preds = %fc_bsg_to_shost.exit.i893
  %1157 = call ptr @memset(ptr %cap.i865, i32 0, i32 32)
  %sg_list.i894 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %1158 = ptrtoint ptr %sg_list.i894 to i32
  call void @__asan_load4_noabort(i32 %1158)
  %1159 = load ptr, ptr %sg_list.i894, align 4
  %sg_cnt.i895 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %1160 = ptrtoint ptr %sg_cnt.i895 to i32
  call void @__asan_load4_noabort(i32 %1160)
  %1161 = load i32, ptr %sg_cnt.i895, align 4
  %call22.i = call i32 @sg_copy_to_buffer(ptr noundef %1159, i32 noundef %1161, ptr noundef nonnull %cap.i865, i32 noundef 32) #9
  %fw_attributes_ext.i896 = getelementptr inbounds %struct.qla_hw_data, ptr %1151, i32 0, i32 140
  %arrayidx.i897 = getelementptr %struct.qla_hw_data, ptr %1151, i32 0, i32 140, i32 1
  %1162 = ptrtoint ptr %arrayidx.i897 to i32
  call void @__asan_load2_noabort(i32 %1162)
  %1163 = load i16, ptr %arrayidx.i897, align 2
  %conv.i898 = zext i16 %1163 to i64
  %shl.i899 = shl nuw i64 %conv.i898, 48
  %1164 = ptrtoint ptr %fw_attributes_ext.i896 to i32
  call void @__asan_load2_noabort(i32 %1164)
  %1165 = load i16, ptr %fw_attributes_ext.i896, align 2
  %conv25.i900 = zext i16 %1165 to i64
  %shl26.i901 = shl nuw nsw i64 %conv25.i900, 32
  %or.i902 = or i64 %shl26.i901, %shl.i899
  %fw_attributes_h.i903 = getelementptr inbounds %struct.qla_hw_data, ptr %1151, i32 0, i32 139
  %1166 = ptrtoint ptr %fw_attributes_h.i903 to i32
  call void @__asan_load2_noabort(i32 %1166)
  %1167 = load i16, ptr %fw_attributes_h.i903, align 4
  %conv27.i = zext i16 %1167 to i64
  %shl28.i = shl nuw nsw i64 %conv27.i, 16
  %or29.i904 = or i64 %or.i902, %shl28.i
  %fw_attributes.i905 = getelementptr inbounds %struct.qla_hw_data, ptr %1151, i32 0, i32 138
  %1168 = ptrtoint ptr %fw_attributes.i905 to i32
  call void @__asan_load2_noabort(i32 %1168)
  %1169 = load i16, ptr %fw_attributes.i905, align 2
  %conv30.i = zext i16 %1169 to i64
  %or31.i = or i64 %or29.i904, %conv30.i
  %1170 = ptrtoint ptr %cap.i865 to i32
  call void @__asan_load8_noabort(i32 %1170)
  %1171 = load i64, ptr %cap.i865, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %or31.i, i64 %1171)
  %cmp.not.i906 = icmp eq i64 %or31.i, %1171
  br i1 %cmp.not.i906, label %if.end35.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.end.i907
  call void @__sanitizer_cov_trace_pc() #11
  %reply_data.i908 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1139, i32 0, i32 2
  %1172 = ptrtoint ptr %reply_data.i908 to i32
  call void @__asan_store4_noabort(i32 %1172)
  store i32 6, ptr %reply_data.i908, align 4
  br label %qla27xx_set_flash_upd_cap.exit

if.end35.i:                                       ; preds = %if.end.i907
  %1173 = ptrtoint ptr %1152 to i32
  call void @__asan_load4_noabort(i32 %1173)
  %1174 = load i32, ptr %1152, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %1174)
  %cmp36.i = icmp ult i32 %1174, 300
  br i1 %cmp36.i, label %if.then38.i909, label %if.end42.i

if.then38.i909:                                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %reply_data39.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %1139, i32 0, i32 2
  %1175 = ptrtoint ptr %reply_data39.i to i32
  call void @__asan_store4_noabort(i32 %1175)
  store i32 6, ptr %reply_data39.i, align 4
  br label %qla27xx_set_flash_upd_cap.exit

if.end42.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %reply_payload_rcv_len.i910 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1139, i32 0, i32 1
  %1176 = ptrtoint ptr %reply_payload_rcv_len.i910 to i32
  call void @__asan_store4_noabort(i32 %1176)
  store i32 0, ptr %reply_payload_rcv_len.i910, align 4
  %reply_data43.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %1139, i32 0, i32 2
  %1177 = ptrtoint ptr %reply_data43.i to i32
  call void @__asan_store4_noabort(i32 %1177)
  store i32 0, ptr %reply_data43.i, align 4
  %reply_len.i911 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %1178 = ptrtoint ptr %reply_len.i911 to i32
  call void @__asan_store4_noabort(i32 %1178)
  store i32 16, ptr %reply_len.i911, align 4
  %1179 = ptrtoint ptr %1139 to i32
  call void @__asan_store4_noabort(i32 %1179)
  store i32 0, ptr %1139, align 4
  %1180 = load i32, ptr %reply_payload_rcv_len.i910, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %1180) #9
  br label %qla27xx_set_flash_upd_cap.exit

qla27xx_set_flash_upd_cap.exit:                   ; preds = %if.end42.i, %if.then38.i909, %if.then33.i, %fc_bsg_to_shost.exit.i893.qla27xx_set_flash_upd_cap.exit_crit_edge
  %retval.0.i912 = phi i32 [ -22, %if.then33.i ], [ -22, %if.then38.i909 ], [ 0, %if.end42.i ], [ -1, %fc_bsg_to_shost.exit.i893.qla27xx_set_flash_upd_cap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cap.i865) #9
  br label %cleanup

sw.bb40:                                          ; preds = %entry
  %reply.i916 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %1181 = ptrtoint ptr %reply.i916 to i32
  call void @__asan_load4_noabort(i32 %1181)
  %1182 = load ptr, ptr %reply.i916, align 4
  %1183 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1183)
  %1184 = load ptr, ptr %bsg_job, align 4
  %call.i.i917 = tail call i32 @scsi_is_host_device(ptr noundef %1184) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i917)
  %tobool.not.i.i918 = icmp eq i32 %call.i.i917, 0
  %1185 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1185)
  %1186 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i918, label %if.end.i.i929, label %sw.bb40.while.cond.i.i.i922_crit_edge

sw.bb40.while.cond.i.i.i922_crit_edge:            ; preds = %sw.bb40
  br label %while.cond.i.i.i922

while.cond.i.i.i922:                              ; preds = %while.body.i.i.i925.while.cond.i.i.i922_crit_edge, %sw.bb40.while.cond.i.i.i922_crit_edge
  %dev.addr.0.i.i.i919 = phi ptr [ %1188, %while.body.i.i.i925.while.cond.i.i.i922_crit_edge ], [ %1186, %sw.bb40.while.cond.i.i.i922_crit_edge ]
  %call.i.i.i920 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i919) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i920)
  %tobool.not.i.i.i921 = icmp eq i32 %call.i.i.i920, 0
  br i1 %tobool.not.i.i.i921, label %while.body.i.i.i925, label %while.end.i.i.i927

while.body.i.i.i925:                              ; preds = %while.cond.i.i.i922
  %parent.i.i.i923 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i919, i32 0, i32 1
  %1187 = ptrtoint ptr %parent.i.i.i923 to i32
  call void @__asan_load4_noabort(i32 %1187)
  %1188 = load ptr, ptr %parent.i.i.i923, align 8
  %tobool1.not.i.i.i924 = icmp eq ptr %1188, null
  br i1 %tobool1.not.i.i.i924, label %while.body.i.i.i925.fc_bsg_to_shost.exit.i943_crit_edge, label %while.body.i.i.i925.while.cond.i.i.i922_crit_edge

while.body.i.i.i925.while.cond.i.i.i922_crit_edge: ; preds = %while.body.i.i.i925
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i922

while.body.i.i.i925.fc_bsg_to_shost.exit.i943_crit_edge: ; preds = %while.body.i.i.i925
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i943

while.end.i.i.i927:                               ; preds = %while.cond.i.i.i922
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i926 = getelementptr i8, ptr %dev.addr.0.i.i.i919, i32 -584
  br label %fc_bsg_to_shost.exit.i943

if.end.i.i929:                                    ; preds = %sw.bb40
  %parent.i.i928 = getelementptr inbounds %struct.device, ptr %1186, i32 0, i32 1
  %1189 = ptrtoint ptr %parent.i.i928 to i32
  call void @__asan_load4_noabort(i32 %1189)
  %1190 = load ptr, ptr %parent.i.i928, align 8
  br label %while.cond.i11.i.i933

while.cond.i11.i.i933:                            ; preds = %while.body.i14.i.i936.while.cond.i11.i.i933_crit_edge, %if.end.i.i929
  %dev.addr.0.i8.i.i930 = phi ptr [ %1190, %if.end.i.i929 ], [ %1192, %while.body.i14.i.i936.while.cond.i11.i.i933_crit_edge ]
  %call.i9.i.i931 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i930) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i931)
  %tobool.not.i10.i.i932 = icmp eq i32 %call.i9.i.i931, 0
  br i1 %tobool.not.i10.i.i932, label %while.body.i14.i.i936, label %while.end.i16.i.i938

while.body.i14.i.i936:                            ; preds = %while.cond.i11.i.i933
  %parent.i12.i.i934 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i930, i32 0, i32 1
  %1191 = ptrtoint ptr %parent.i12.i.i934 to i32
  call void @__asan_load4_noabort(i32 %1191)
  %1192 = load ptr, ptr %parent.i12.i.i934, align 8
  %tobool1.not.i13.i.i935 = icmp eq ptr %1192, null
  br i1 %tobool1.not.i13.i.i935, label %while.body.i14.i.i936.fc_bsg_to_shost.exit.i943_crit_edge, label %while.body.i14.i.i936.while.cond.i11.i.i933_crit_edge

while.body.i14.i.i936.while.cond.i11.i.i933_crit_edge: ; preds = %while.body.i14.i.i936
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i933

while.body.i14.i.i936.fc_bsg_to_shost.exit.i943_crit_edge: ; preds = %while.body.i14.i.i936
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i943

while.end.i16.i.i938:                             ; preds = %while.cond.i11.i.i933
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i937 = getelementptr i8, ptr %dev.addr.0.i8.i.i930, i32 -584
  br label %fc_bsg_to_shost.exit.i943

fc_bsg_to_shost.exit.i943:                        ; preds = %while.end.i16.i.i938, %while.body.i14.i.i936.fc_bsg_to_shost.exit.i943_crit_edge, %while.end.i.i.i927, %while.body.i.i.i925.fc_bsg_to_shost.exit.i943_crit_edge
  %retval.0.i.i939 = phi ptr [ %add.ptr.i.i.i926, %while.end.i.i.i927 ], [ %add.ptr.i15.i.i937, %while.end.i16.i.i938 ], [ null, %while.body.i14.i.i936.fc_bsg_to_shost.exit.i943_crit_edge ], [ null, %while.body.i.i.i925.fc_bsg_to_shost.exit.i943_crit_edge ]
  %hostdata.i.i940 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i939, i32 0, i32 53
  %hw.i941 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i940, i32 0, i32 52
  %1193 = ptrtoint ptr %hw.i941 to i32
  call void @__asan_load4_noabort(i32 %1193)
  %1194 = load ptr, ptr %hw.i941, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bbcr.i) #9
  %1195 = getelementptr inbounds %struct.qla_bbcr_data, ptr %bbcr.i, i32 0, i32 1
  %1196 = getelementptr inbounds %struct.qla_bbcr_data, ptr %bbcr.i, i32 0, i32 2
  %1197 = getelementptr inbounds %struct.qla_bbcr_data, ptr %bbcr.i, i32 0, i32 3
  %1198 = getelementptr inbounds %struct.qla_bbcr_data, ptr %bbcr.i, i32 0, i32 4
  %1199 = getelementptr inbounds %struct.qla_bbcr_data, ptr %bbcr.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %loop_id.i913) #9
  %1200 = ptrtoint ptr %loop_id.i913 to i32
  call void @__asan_store2_noabort(i32 %1200)
  store i16 -1, ptr %loop_id.i913, align 2, !annotation !234
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %topo.i) #9
  %1201 = ptrtoint ptr %topo.i to i32
  call void @__asan_store2_noabort(i32 %1201)
  store i16 -1, ptr %topo.i, align 2, !annotation !234
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sw_cap.i) #9
  %1202 = ptrtoint ptr %sw_cap.i to i32
  call void @__asan_store2_noabort(i32 %1202)
  store i16 -1, ptr %sw_cap.i, align 2, !annotation !234
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %domain.i) #9
  %1203 = ptrtoint ptr %domain.i to i32
  call void @__asan_store1_noabort(i32 %1203)
  store i8 -1, ptr %domain.i, align 1, !annotation !234
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %area.i914) #9
  %1204 = ptrtoint ptr %area.i914 to i32
  call void @__asan_store1_noabort(i32 %1204)
  store i8 -1, ptr %area.i914, align 1, !annotation !234
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %al_pa.i915) #9
  %1205 = ptrtoint ptr %al_pa.i915 to i32
  call void @__asan_store1_noabort(i32 %1205)
  store i8 -1, ptr %al_pa.i915, align 1, !annotation !234
  %isp_type.i942 = getelementptr inbounds %struct.qla_hw_data, ptr %1194, i32 0, i32 54
  %1206 = ptrtoint ptr %isp_type.i942 to i32
  call void @__asan_load4_noabort(i32 %1206)
  %1207 = load i32, ptr %isp_type.i942, align 8
  %1208 = and i32 %1207, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1208)
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %fc_bsg_to_shost.exit.i943.qla27xx_get_bbcr_data.exit_crit_edge, label %if.end.i947

fc_bsg_to_shost.exit.i943.qla27xx_get_bbcr_data.exit_crit_edge: ; preds = %fc_bsg_to_shost.exit.i943
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla27xx_get_bbcr_data.exit

if.end.i947:                                      ; preds = %fc_bsg_to_shost.exit.i943
  %1210 = call ptr @memset(ptr %1195, i32 0, i32 15)
  %flags.i944 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i939, i32 1, i32 5, i32 5
  %1211 = ptrtoint ptr %flags.i944 to i32
  call void @__asan_load4_noabort(i32 %1211)
  %bf.load.i945 = load volatile i32, ptr %flags.i944, align 8
  %1212 = and i32 %bf.load.i945, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1212)
  %tobool21.not.i = icmp eq i32 %1212, 0
  %not.tobool21.not.i = xor i1 %tobool21.not.i, true
  %..i946 = zext i1 %not.tobool21.not.i to i8
  %1213 = ptrtoint ptr %bbcr.i to i32
  call void @__asan_store1_noabort(i32 %1213)
  store i8 %..i946, ptr %bbcr.i, align 1
  br i1 %tobool21.not.i, label %if.end.i947.done.i955_crit_edge, label %if.then27.i

if.end.i947.done.i955_crit_edge:                  ; preds = %if.end.i947
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i955

if.then27.i:                                      ; preds = %if.end.i947
  %call28.i = call i32 @qla2x00_get_adapter_id(ptr noundef %hostdata.i.i940, ptr noundef nonnull %loop_id.i913, ptr noundef nonnull %al_pa.i915, ptr noundef nonnull %area.i914, ptr noundef nonnull %domain.i, ptr noundef nonnull %topo.i, ptr noundef nonnull %sw_cap.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.not.i = icmp eq i32 %call28.i, 0
  br i1 %cmp29.not.i, label %if.end34.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  %1214 = ptrtoint ptr %bbcr.i to i32
  call void @__asan_store1_noabort(i32 %1214)
  store i8 2, ptr %bbcr.i, align 1
  %1215 = ptrtoint ptr %1195 to i32
  call void @__asan_store1_noabort(i32 %1215)
  store i8 0, ptr %1195, align 1
  %1216 = ptrtoint ptr %loop_id.i913 to i32
  call void @__asan_load2_noabort(i32 %1216)
  %1217 = load i16, ptr %loop_id.i913, align 2
  %1218 = ptrtoint ptr %1199 to i32
  call void @__asan_storeN_noabort(i32 %1218, i32 2)
  store i16 %1217, ptr %1199, align 1
  br label %done.i955

if.end34.i:                                       ; preds = %if.then27.i
  %bbcr35.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i939, i32 1, i32 50, i32 12, i32 5, i32 1, i32 1
  %1219 = ptrtoint ptr %bbcr35.i to i32
  call void @__asan_load2_noabort(i32 %1219)
  %1220 = load i16, ptr %bbcr35.i, align 8
  %1221 = and i16 %1220, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1221)
  %tobool39.not.i = icmp eq i16 %1221, 0
  br i1 %tobool39.not.i, label %if.else42.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %1222 = ptrtoint ptr %1195 to i32
  call void @__asan_store1_noabort(i32 %1222)
  store i8 0, ptr %1195, align 1
  %1223 = ptrtoint ptr %1198 to i32
  call void @__asan_store1_noabort(i32 %1223)
  store i8 4, ptr %1198, align 1
  br label %if.end49.i

if.else42.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %1224 = ptrtoint ptr %1195 to i32
  call void @__asan_store1_noabort(i32 %1224)
  store i8 1, ptr %1195, align 1
  %1225 = lshr i16 %1220, 8
  %1226 = trunc i16 %1225 to i8
  %conv48.i = and i8 %1226, 15
  %1227 = ptrtoint ptr %1197 to i32
  call void @__asan_store1_noabort(i32 %1227)
  store i8 %conv48.i, ptr %1197, align 1
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else42.i, %if.then40.i
  %1228 = ptrtoint ptr %bbcr35.i to i32
  call void @__asan_load2_noabort(i32 %1228)
  %1229 = load i16, ptr %bbcr35.i, align 8
  %1230 = trunc i16 %1229 to i8
  %conv53.i948 = and i8 %1230, 15
  %1231 = ptrtoint ptr %1196 to i32
  call void @__asan_store1_noabort(i32 %1231)
  store i8 %conv53.i948, ptr %1196, align 1
  br label %done.i955

done.i955:                                        ; preds = %if.end49.i, %if.then31.i, %if.end.i947.done.i955_crit_edge
  %sg_list.i949 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %1232 = ptrtoint ptr %sg_list.i949 to i32
  call void @__asan_load4_noabort(i32 %1232)
  %1233 = load ptr, ptr %sg_list.i949, align 4
  %sg_cnt.i950 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %1234 = ptrtoint ptr %sg_cnt.i950 to i32
  call void @__asan_load4_noabort(i32 %1234)
  %1235 = load i32, ptr %sg_cnt.i950, align 4
  %call56.i951 = call i32 @sg_copy_from_buffer(ptr noundef %1233, i32 noundef %1235, ptr noundef nonnull %bbcr.i, i32 noundef 16) #9
  %reply_payload_rcv_len.i952 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1182, i32 0, i32 1
  %1236 = ptrtoint ptr %reply_payload_rcv_len.i952 to i32
  call void @__asan_store4_noabort(i32 %1236)
  store i32 16, ptr %reply_payload_rcv_len.i952, align 4
  %reply_data.i953 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1182, i32 0, i32 2
  %1237 = ptrtoint ptr %reply_data.i953 to i32
  call void @__asan_store4_noabort(i32 %1237)
  store i32 0, ptr %reply_data.i953, align 4
  %reply_len.i954 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %1238 = ptrtoint ptr %reply_len.i954 to i32
  call void @__asan_store4_noabort(i32 %1238)
  store i32 16, ptr %reply_len.i954, align 4
  %1239 = ptrtoint ptr %1182 to i32
  call void @__asan_store4_noabort(i32 %1239)
  store i32 0, ptr %1182, align 4
  %1240 = load i32, ptr %reply_payload_rcv_len.i952, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %1240) #9
  br label %qla27xx_get_bbcr_data.exit

qla27xx_get_bbcr_data.exit:                       ; preds = %done.i955, %fc_bsg_to_shost.exit.i943.qla27xx_get_bbcr_data.exit_crit_edge
  %retval.0.i956 = phi i32 [ 0, %done.i955 ], [ -1, %fc_bsg_to_shost.exit.i943.qla27xx_get_bbcr_data.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %al_pa.i915) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %area.i914) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %domain.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sw_cap.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %topo.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %loop_id.i913) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bbcr.i) #9
  br label %cleanup

sw.bb42:                                          ; preds = %entry.sw.bb42_crit_edge, %entry.sw.bb42_crit_edge1784
  %1241 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %1241)
  %1242 = load ptr, ptr %request, align 4
  %reply.i958 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %1243 = ptrtoint ptr %reply.i958 to i32
  call void @__asan_load4_noabort(i32 %1243)
  %1244 = load ptr, ptr %reply.i958, align 4
  %1245 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1245)
  %1246 = load ptr, ptr %bsg_job, align 4
  %call.i.i959 = tail call i32 @scsi_is_host_device(ptr noundef %1246) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i959)
  %tobool.not.i.i960 = icmp eq i32 %call.i.i959, 0
  %1247 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1247)
  %1248 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i960, label %if.end.i.i971, label %sw.bb42.while.cond.i.i.i964_crit_edge

sw.bb42.while.cond.i.i.i964_crit_edge:            ; preds = %sw.bb42
  br label %while.cond.i.i.i964

while.cond.i.i.i964:                              ; preds = %while.body.i.i.i967.while.cond.i.i.i964_crit_edge, %sw.bb42.while.cond.i.i.i964_crit_edge
  %dev.addr.0.i.i.i961 = phi ptr [ %1250, %while.body.i.i.i967.while.cond.i.i.i964_crit_edge ], [ %1248, %sw.bb42.while.cond.i.i.i964_crit_edge ]
  %call.i.i.i962 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i961) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i962)
  %tobool.not.i.i.i963 = icmp eq i32 %call.i.i.i962, 0
  br i1 %tobool.not.i.i.i963, label %while.body.i.i.i967, label %while.end.i.i.i969

while.body.i.i.i967:                              ; preds = %while.cond.i.i.i964
  %parent.i.i.i965 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i961, i32 0, i32 1
  %1249 = ptrtoint ptr %parent.i.i.i965 to i32
  call void @__asan_load4_noabort(i32 %1249)
  %1250 = load ptr, ptr %parent.i.i.i965, align 8
  %tobool1.not.i.i.i966 = icmp eq ptr %1250, null
  br i1 %tobool1.not.i.i.i966, label %while.body.i.i.i967.fc_bsg_to_shost.exit.i985_crit_edge, label %while.body.i.i.i967.while.cond.i.i.i964_crit_edge

while.body.i.i.i967.while.cond.i.i.i964_crit_edge: ; preds = %while.body.i.i.i967
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i964

while.body.i.i.i967.fc_bsg_to_shost.exit.i985_crit_edge: ; preds = %while.body.i.i.i967
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i985

while.end.i.i.i969:                               ; preds = %while.cond.i.i.i964
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i968 = getelementptr i8, ptr %dev.addr.0.i.i.i961, i32 -584
  br label %fc_bsg_to_shost.exit.i985

if.end.i.i971:                                    ; preds = %sw.bb42
  %parent.i.i970 = getelementptr inbounds %struct.device, ptr %1248, i32 0, i32 1
  %1251 = ptrtoint ptr %parent.i.i970 to i32
  call void @__asan_load4_noabort(i32 %1251)
  %1252 = load ptr, ptr %parent.i.i970, align 8
  br label %while.cond.i11.i.i975

while.cond.i11.i.i975:                            ; preds = %while.body.i14.i.i978.while.cond.i11.i.i975_crit_edge, %if.end.i.i971
  %dev.addr.0.i8.i.i972 = phi ptr [ %1252, %if.end.i.i971 ], [ %1254, %while.body.i14.i.i978.while.cond.i11.i.i975_crit_edge ]
  %call.i9.i.i973 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i972) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i973)
  %tobool.not.i10.i.i974 = icmp eq i32 %call.i9.i.i973, 0
  br i1 %tobool.not.i10.i.i974, label %while.body.i14.i.i978, label %while.end.i16.i.i980

while.body.i14.i.i978:                            ; preds = %while.cond.i11.i.i975
  %parent.i12.i.i976 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i972, i32 0, i32 1
  %1253 = ptrtoint ptr %parent.i12.i.i976 to i32
  call void @__asan_load4_noabort(i32 %1253)
  %1254 = load ptr, ptr %parent.i12.i.i976, align 8
  %tobool1.not.i13.i.i977 = icmp eq ptr %1254, null
  br i1 %tobool1.not.i13.i.i977, label %while.body.i14.i.i978.fc_bsg_to_shost.exit.i985_crit_edge, label %while.body.i14.i.i978.while.cond.i11.i.i975_crit_edge

while.body.i14.i.i978.while.cond.i11.i.i975_crit_edge: ; preds = %while.body.i14.i.i978
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i975

while.body.i14.i.i978.fc_bsg_to_shost.exit.i985_crit_edge: ; preds = %while.body.i14.i.i978
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i985

while.end.i16.i.i980:                             ; preds = %while.cond.i11.i.i975
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i979 = getelementptr i8, ptr %dev.addr.0.i8.i.i972, i32 -584
  br label %fc_bsg_to_shost.exit.i985

fc_bsg_to_shost.exit.i985:                        ; preds = %while.end.i16.i.i980, %while.body.i14.i.i978.fc_bsg_to_shost.exit.i985_crit_edge, %while.end.i.i.i969, %while.body.i.i.i967.fc_bsg_to_shost.exit.i985_crit_edge
  %retval.0.i.i981 = phi ptr [ %add.ptr.i.i.i968, %while.end.i.i.i969 ], [ %add.ptr.i15.i.i979, %while.end.i16.i.i980 ], [ null, %while.body.i14.i.i978.fc_bsg_to_shost.exit.i985_crit_edge ], [ null, %while.body.i.i.i967.fc_bsg_to_shost.exit.i985_crit_edge ]
  %hostdata.i.i982 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i981, i32 0, i32 53
  %hw.i983 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i982, i32 0, i32 52
  %1255 = ptrtoint ptr %hw.i983 to i32
  call void @__asan_load4_noabort(i32 %1255)
  %1256 = load ptr, ptr %hw.i983, align 4
  %1257 = ptrtoint ptr %1256 to i32
  call void @__asan_load4_noabort(i32 %1257)
  %1258 = load ptr, ptr %1256, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %1258, i32 0, i32 44, i32 8
  %1259 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1259)
  %1260 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stats_dma.i) #9
  %1261 = ptrtoint ptr %stats_dma.i to i32
  call void @__asan_store4_noabort(i32 %1261)
  store i32 -1, ptr %stats_dma.i, align 4, !annotation !234
  %vendor_cmd.i = getelementptr inbounds %struct.fc_bsg_request, ptr %1242, i32 0, i32 1, i32 1
  %1262 = ptrtoint ptr %vendor_cmd.i to i32
  call void @__asan_load4_noabort(i32 %1262)
  %1263 = load i32, ptr %vendor_cmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %1263)
  %cmp.i984 = icmp eq i32 %1263, 26
  br i1 %cmp.i984, label %cond.true.i, label %fc_bsg_to_shost.exit.i985.cond.end.i_crit_edge

fc_bsg_to_shost.exit.i985.cond.end.i_crit_edge:   ; preds = %fc_bsg_to_shost.exit.i985
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %fc_bsg_to_shost.exit.i985
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.i = getelementptr %struct.fc_bsg_request, ptr %1242, i32 0, i32 1, i32 1, i32 4
  %1264 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %1264)
  %1265 = load i32, ptr %arrayidx3.i, align 4
  %phi.cast.i986 = trunc i32 %1265 to i16
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %fc_bsg_to_shost.exit.i985.cond.end.i_crit_edge
  %cond.i = phi i16 [ %phi.cast.i986, %cond.true.i ], [ 0, %fc_bsg_to_shost.exit.i985.cond.end.i_crit_edge ]
  %dpc_flags.i987 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i981, i32 1, i32 5, i32 5, i32 2
  %1266 = ptrtoint ptr %dpc_flags.i987 to i32
  call void @__asan_load4_noabort(i32 %1266)
  %1267 = load volatile i32, ptr %dpc_flags.i987, align 4
  %1268 = and i32 %1267, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1268)
  %tobool.not.i988 = icmp eq i32 %1268, 0
  br i1 %tobool.not.i988, label %if.end.i989, label %cond.end.i.qla2x00_get_priv_stats.exit_crit_edge

cond.end.i.qla2x00_get_priv_stats.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_get_priv_stats.exit

if.end.i989:                                      ; preds = %cond.end.i
  %1269 = ptrtoint ptr %1256 to i32
  call void @__asan_load4_noabort(i32 %1269)
  %1270 = load ptr, ptr %1256, align 128
  %error_state.i.i = getelementptr inbounds %struct.pci_dev, ptr %1270, i32 0, i32 43
  %1271 = ptrtoint ptr %error_state.i.i to i32
  call void @__asan_load4_noabort(i32 %1271)
  %1272 = load i32, ptr %error_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1272)
  %cmp.i.not.i = icmp eq i32 %1272, 1
  br i1 %cmp.i.not.i, label %if.end11.i990, label %if.end.i989.qla2x00_get_priv_stats.exit_crit_edge, !prof !235

if.end.i989.qla2x00_get_priv_stats.exit_crit_edge: ; preds = %if.end.i989
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_get_priv_stats.exit

if.end11.i990:                                    ; preds = %if.end.i989
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %1270, i32 0, i32 44, i32 8
  %1273 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1273)
  %1274 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %1274, i32 0, i32 11
  %1275 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1275)
  %1276 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %1277 = and i32 %1276, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1277)
  %tobool.not.i72.i = icmp eq i32 %1277, 0
  br i1 %tobool.not.i72.i, label %lor.lhs.false.i.i, label %if.end11.i990.qla2x00_get_priv_stats.exit_crit_edge

if.end11.i990.qla2x00_get_priv_stats.exit_crit_edge: ; preds = %if.end11.i990
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_get_priv_stats.exit

lor.lhs.false.i.i:                                ; preds = %if.end11.i990
  %1278 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1278)
  %1279 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %1280 = and i32 %1279, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1280)
  %tobool4.not.i.i = icmp eq i32 %1280, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.qla2x00_get_priv_stats.exit_crit_edge

lor.lhs.false.i.i.qla2x00_get_priv_stats.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_get_priv_stats.exit

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %1281 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1281)
  %1282 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %1283 = and i32 %1282, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1283)
  %tobool8.not.i.i = icmp eq i32 %1283, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.qla2x00_get_priv_stats.exit_crit_edge

lor.lhs.false5.i.i.qla2x00_get_priv_stats.exit_crit_edge: ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_get_priv_stats.exit

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %1284 = ptrtoint ptr %dpc_flags.i987 to i32
  call void @__asan_load4_noabort(i32 %1284)
  %1285 = load volatile i32, ptr %dpc_flags.i987, align 4
  %1286 = and i32 %1285, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1286)
  %tobool12.not.i.i = icmp eq i32 %1286, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.qla2x00_get_priv_stats.exit_crit_edge

lor.lhs.false9.i.i.qla2x00_get_priv_stats.exit_crit_edge: ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_get_priv_stats.exit

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %1287 = ptrtoint ptr %dpc_flags.i987 to i32
  call void @__asan_load4_noabort(i32 %1287)
  %1288 = load volatile i32, ptr %dpc_flags.i987, align 4
  %1289 = and i32 %1288, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1289)
  %tobool13.not.i = icmp eq i32 %1289, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %qla2x00_reset_active.exit.i.qla2x00_get_priv_stats.exit_crit_edge

qla2x00_reset_active.exit.i.qla2x00_get_priv_stats.exit_crit_edge: ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_get_priv_stats.exit

if.end15.i:                                       ; preds = %qla2x00_reset_active.exit.i
  %device_type.i991 = getelementptr inbounds %struct.qla_hw_data, ptr %1256, i32 0, i32 55
  %1290 = ptrtoint ptr %device_type.i991 to i32
  call void @__asan_load4_noabort(i32 %1290)
  %1291 = load i32, ptr %device_type.i991, align 4
  %and.i992 = and i32 %1291, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i992)
  %tobool16.not.i993 = icmp eq i32 %and.i992, 0
  br i1 %tobool16.not.i993, label %if.end15.i.qla2x00_get_priv_stats.exit_crit_edge, label %if.end18.i

if.end15.i.qla2x00_get_priv_stats.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_get_priv_stats.exit

if.end18.i:                                       ; preds = %if.end15.i
  %dev.i994 = getelementptr inbounds %struct.pci_dev, ptr %1270, i32 0, i32 44
  %call.i73.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i994, i32 noundef 512, ptr noundef nonnull %stats_dma.i, i32 noundef 3264, i32 noundef 0) #9
  %tobool21.not.i995 = icmp eq ptr %call.i73.i, null
  br i1 %tobool21.not.i995, label %if.then22.i, label %if.end23.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i982, i32 noundef 28898, ptr noundef nonnull @.str.101) #9
  br label %qla2x00_get_priv_stats.exit

if.end23.i:                                       ; preds = %if.end18.i
  %1292 = ptrtoint ptr %stats_dma.i to i32
  call void @__asan_load4_noabort(i32 %1292)
  %1293 = load i32, ptr %stats_dma.i, align 4
  %call24.i = call i32 @qla24xx_get_isp_stats(ptr noundef %1260, ptr noundef nonnull %call.i73.i, i32 noundef %1293, i16 noundef zeroext %cond.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp eq i32 %call24.i, 0
  br i1 %cmp25.i, label %if.then27.i998, label %if.end23.i.if.end30.i1002_crit_edge

if.end23.i.if.end30.i1002_crit_edge:              ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i1002

if.then27.i998:                                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ql_dump_buffer(i32 noundef 8421376, ptr noundef %hostdata.i.i982, i32 noundef 28901, ptr noundef nonnull %call.i73.i, i32 noundef 512) #9
  %sg_list.i996 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %1294 = ptrtoint ptr %sg_list.i996 to i32
  call void @__asan_load4_noabort(i32 %1294)
  %1295 = load ptr, ptr %sg_list.i996, align 4
  %sg_cnt.i997 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %1296 = ptrtoint ptr %sg_cnt.i997 to i32
  call void @__asan_load4_noabort(i32 %1296)
  %1297 = load i32, ptr %sg_cnt.i997, align 4
  %call29.i = call i32 @sg_copy_from_buffer(ptr noundef %1295, i32 noundef %1297, ptr noundef nonnull %call.i73.i, i32 noundef 512) #9
  br label %if.end30.i1002

if.end30.i1002:                                   ; preds = %if.then27.i998, %if.end23.i.if.end30.i1002_crit_edge
  %cond32.i = phi i32 [ 0, %if.then27.i998 ], [ 11, %if.end23.i.if.end30.i1002_crit_edge ]
  %reply_payload_rcv_len.i999 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1244, i32 0, i32 1
  %1298 = ptrtoint ptr %reply_payload_rcv_len.i999 to i32
  call void @__asan_store4_noabort(i32 %1298)
  store i32 512, ptr %reply_payload_rcv_len.i999, align 4
  %reply_data.i1000 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1244, i32 0, i32 2
  %1299 = ptrtoint ptr %reply_data.i1000 to i32
  call void @__asan_store4_noabort(i32 %1299)
  store i32 %cond32.i, ptr %reply_data.i1000, align 4
  %reply_len.i1001 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %1300 = ptrtoint ptr %reply_len.i1001 to i32
  call void @__asan_store4_noabort(i32 %1300)
  store i32 16, ptr %reply_len.i1001, align 4
  %1301 = ptrtoint ptr %1244 to i32
  call void @__asan_store4_noabort(i32 %1301)
  store i32 0, ptr %1244, align 4
  %1302 = load i32, ptr %reply_payload_rcv_len.i999, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %1302) #9
  %1303 = ptrtoint ptr %1256 to i32
  call void @__asan_load4_noabort(i32 %1303)
  %1304 = load ptr, ptr %1256, align 128
  %dev37.i = getelementptr inbounds %struct.pci_dev, ptr %1304, i32 0, i32 44
  %1305 = ptrtoint ptr %stats_dma.i to i32
  call void @__asan_load4_noabort(i32 %1305)
  %1306 = load i32, ptr %stats_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev37.i, i32 noundef 512, ptr noundef nonnull %call.i73.i, i32 noundef %1306, i32 noundef 0) #9
  br label %qla2x00_get_priv_stats.exit

qla2x00_get_priv_stats.exit:                      ; preds = %if.end30.i1002, %if.then22.i, %if.end15.i.qla2x00_get_priv_stats.exit_crit_edge, %qla2x00_reset_active.exit.i.qla2x00_get_priv_stats.exit_crit_edge, %lor.lhs.false9.i.i.qla2x00_get_priv_stats.exit_crit_edge, %lor.lhs.false5.i.i.qla2x00_get_priv_stats.exit_crit_edge, %lor.lhs.false.i.i.qla2x00_get_priv_stats.exit_crit_edge, %if.end11.i990.qla2x00_get_priv_stats.exit_crit_edge, %if.end.i989.qla2x00_get_priv_stats.exit_crit_edge, %cond.end.i.qla2x00_get_priv_stats.exit_crit_edge
  %retval.0.i1003 = phi i32 [ 0, %if.end30.i1002 ], [ -12, %if.then22.i ], [ -19, %cond.end.i.qla2x00_get_priv_stats.exit_crit_edge ], [ -19, %if.end.i989.qla2x00_get_priv_stats.exit_crit_edge ], [ -16, %qla2x00_reset_active.exit.i.qla2x00_get_priv_stats.exit_crit_edge ], [ -1, %if.end15.i.qla2x00_get_priv_stats.exit_crit_edge ], [ -16, %lor.lhs.false9.i.i.qla2x00_get_priv_stats.exit_crit_edge ], [ -16, %lor.lhs.false5.i.i.qla2x00_get_priv_stats.exit_crit_edge ], [ -16, %lor.lhs.false.i.i.qla2x00_get_priv_stats.exit_crit_edge ], [ -16, %if.end11.i990.qla2x00_get_priv_stats.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stats_dma.i) #9
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  %reply.i1004 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %1307 = ptrtoint ptr %reply.i1004 to i32
  call void @__asan_load4_noabort(i32 %1307)
  %1308 = load ptr, ptr %reply.i1004, align 4
  %1309 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1309)
  %1310 = load ptr, ptr %bsg_job, align 4
  %call.i.i1005 = tail call i32 @scsi_is_host_device(ptr noundef %1310) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1005)
  %tobool.not.i.i1006 = icmp eq i32 %call.i.i1005, 0
  %1311 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1311)
  %1312 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i1006, label %if.end.i.i1017, label %sw.bb44.while.cond.i.i.i1010_crit_edge

sw.bb44.while.cond.i.i.i1010_crit_edge:           ; preds = %sw.bb44
  br label %while.cond.i.i.i1010

while.cond.i.i.i1010:                             ; preds = %while.body.i.i.i1013.while.cond.i.i.i1010_crit_edge, %sw.bb44.while.cond.i.i.i1010_crit_edge
  %dev.addr.0.i.i.i1007 = phi ptr [ %1314, %while.body.i.i.i1013.while.cond.i.i.i1010_crit_edge ], [ %1312, %sw.bb44.while.cond.i.i.i1010_crit_edge ]
  %call.i.i.i1008 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i1007) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i1008)
  %tobool.not.i.i.i1009 = icmp eq i32 %call.i.i.i1008, 0
  br i1 %tobool.not.i.i.i1009, label %while.body.i.i.i1013, label %while.end.i.i.i1015

while.body.i.i.i1013:                             ; preds = %while.cond.i.i.i1010
  %parent.i.i.i1011 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i1007, i32 0, i32 1
  %1313 = ptrtoint ptr %parent.i.i.i1011 to i32
  call void @__asan_load4_noabort(i32 %1313)
  %1314 = load ptr, ptr %parent.i.i.i1011, align 8
  %tobool1.not.i.i.i1012 = icmp eq ptr %1314, null
  br i1 %tobool1.not.i.i.i1012, label %while.body.i.i.i1013.fc_bsg_to_shost.exit.i1031_crit_edge, label %while.body.i.i.i1013.while.cond.i.i.i1010_crit_edge

while.body.i.i.i1013.while.cond.i.i.i1010_crit_edge: ; preds = %while.body.i.i.i1013
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i1010

while.body.i.i.i1013.fc_bsg_to_shost.exit.i1031_crit_edge: ; preds = %while.body.i.i.i1013
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i1031

while.end.i.i.i1015:                              ; preds = %while.cond.i.i.i1010
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i1014 = getelementptr i8, ptr %dev.addr.0.i.i.i1007, i32 -584
  br label %fc_bsg_to_shost.exit.i1031

if.end.i.i1017:                                   ; preds = %sw.bb44
  %parent.i.i1016 = getelementptr inbounds %struct.device, ptr %1312, i32 0, i32 1
  %1315 = ptrtoint ptr %parent.i.i1016 to i32
  call void @__asan_load4_noabort(i32 %1315)
  %1316 = load ptr, ptr %parent.i.i1016, align 8
  br label %while.cond.i11.i.i1021

while.cond.i11.i.i1021:                           ; preds = %while.body.i14.i.i1024.while.cond.i11.i.i1021_crit_edge, %if.end.i.i1017
  %dev.addr.0.i8.i.i1018 = phi ptr [ %1316, %if.end.i.i1017 ], [ %1318, %while.body.i14.i.i1024.while.cond.i11.i.i1021_crit_edge ]
  %call.i9.i.i1019 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i1018) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i1019)
  %tobool.not.i10.i.i1020 = icmp eq i32 %call.i9.i.i1019, 0
  br i1 %tobool.not.i10.i.i1020, label %while.body.i14.i.i1024, label %while.end.i16.i.i1026

while.body.i14.i.i1024:                           ; preds = %while.cond.i11.i.i1021
  %parent.i12.i.i1022 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i1018, i32 0, i32 1
  %1317 = ptrtoint ptr %parent.i12.i.i1022 to i32
  call void @__asan_load4_noabort(i32 %1317)
  %1318 = load ptr, ptr %parent.i12.i.i1022, align 8
  %tobool1.not.i13.i.i1023 = icmp eq ptr %1318, null
  br i1 %tobool1.not.i13.i.i1023, label %while.body.i14.i.i1024.fc_bsg_to_shost.exit.i1031_crit_edge, label %while.body.i14.i.i1024.while.cond.i11.i.i1021_crit_edge

while.body.i14.i.i1024.while.cond.i11.i.i1021_crit_edge: ; preds = %while.body.i14.i.i1024
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i1021

while.body.i14.i.i1024.fc_bsg_to_shost.exit.i1031_crit_edge: ; preds = %while.body.i14.i.i1024
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i1031

while.end.i16.i.i1026:                            ; preds = %while.cond.i11.i.i1021
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i1025 = getelementptr i8, ptr %dev.addr.0.i8.i.i1018, i32 -584
  br label %fc_bsg_to_shost.exit.i1031

fc_bsg_to_shost.exit.i1031:                       ; preds = %while.end.i16.i.i1026, %while.body.i14.i.i1024.fc_bsg_to_shost.exit.i1031_crit_edge, %while.end.i.i.i1015, %while.body.i.i.i1013.fc_bsg_to_shost.exit.i1031_crit_edge
  %retval.0.i.i1027 = phi ptr [ %add.ptr.i.i.i1014, %while.end.i.i.i1015 ], [ %add.ptr.i15.i.i1025, %while.end.i16.i.i1026 ], [ null, %while.body.i14.i.i1024.fc_bsg_to_shost.exit.i1031_crit_edge ], [ null, %while.body.i.i.i1013.fc_bsg_to_shost.exit.i1031_crit_edge ]
  %hostdata.i.i1028 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i1027, i32 0, i32 53
  %hw.i1029 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i1028, i32 0, i32 52
  %1319 = ptrtoint ptr %hw.i1029 to i32
  call void @__asan_load4_noabort(i32 %1319)
  %1320 = load ptr, ptr %hw.i1029, align 4
  %isp_type.i1030 = getelementptr inbounds %struct.qla_hw_data, ptr %1320, i32 0, i32 54
  %1321 = ptrtoint ptr %isp_type.i1030 to i32
  call void @__asan_load4_noabort(i32 %1321)
  %1322 = load i32, ptr %isp_type.i1030, align 8
  %1323 = and i32 %1322, 45711360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1323)
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %fc_bsg_to_shost.exit.i1031.cleanup_crit_edge, label %if.end.i1032

fc_bsg_to_shost.exit.i1031.cleanup_crit_edge:     ; preds = %fc_bsg_to_shost.exit.i1031
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i1032:                                     ; preds = %fc_bsg_to_shost.exit.i1031
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1325 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1325, i32 noundef 3264, i32 noundef 128) #15
  %tobool38.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool38.not.i, label %if.then39.i1033, label %if.end40.i

if.then39.i1033:                                  ; preds = %if.end.i1032
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i1028, i32 noundef 28891, ptr noundef nonnull @.str.102) #9
  br label %cleanup

if.end40.i:                                       ; preds = %if.end.i1032
  %sg_list.i1034 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %1326 = ptrtoint ptr %sg_list.i1034 to i32
  call void @__asan_load4_noabort(i32 %1326)
  %1327 = load ptr, ptr %sg_list.i1034, align 4
  %sg_cnt.i1035 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %1328 = ptrtoint ptr %sg_cnt.i1035 to i32
  call void @__asan_load4_noabort(i32 %1328)
  %1329 = load i32, ptr %sg_cnt.i1035, align 4
  %call42.i = tail call i32 @sg_copy_to_buffer(ptr noundef %1327, i32 noundef %1329, ptr noundef nonnull %call7.i.i, i32 noundef 128) #9
  %buf.i = getelementptr inbounds %struct.qla_dport_diag, ptr %call7.i.i, i32 0, i32 1
  %1330 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %1330)
  %1331 = load i16, ptr %call7.i.i, align 8
  %conv.i1036 = zext i16 %1331 to i32
  %call43.i = tail call i32 @qla26xx_dport_diagnostics(ptr noundef %hostdata.i.i1028, ptr noundef %buf.i, i32 noundef 64, i32 noundef %conv.i1036) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp.i1037 = icmp eq i32 %call43.i, 0
  br i1 %cmp.i1037, label %if.then45.i1038, label %if.end40.i.if.end50.i1043_crit_edge

if.end40.i.if.end50.i1043_crit_edge:              ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i1043

if.then45.i1038:                                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %sg_list46.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %1332 = ptrtoint ptr %sg_list46.i to i32
  call void @__asan_load4_noabort(i32 %1332)
  %1333 = load ptr, ptr %sg_list46.i, align 4
  %sg_cnt48.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %1334 = ptrtoint ptr %sg_cnt48.i to i32
  call void @__asan_load4_noabort(i32 %1334)
  %1335 = load i32, ptr %sg_cnt48.i, align 4
  %call49.i = tail call i32 @sg_copy_from_buffer(ptr noundef %1333, i32 noundef %1335, ptr noundef nonnull %call7.i.i, i32 noundef 128) #9
  br label %if.end50.i1043

if.end50.i1043:                                   ; preds = %if.then45.i1038, %if.end40.i.if.end50.i1043_crit_edge
  %cond.i1039 = phi i32 [ 0, %if.then45.i1038 ], [ 11, %if.end40.i.if.end50.i1043_crit_edge ]
  %reply_payload_rcv_len.i1040 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1308, i32 0, i32 1
  %1336 = ptrtoint ptr %reply_payload_rcv_len.i1040 to i32
  call void @__asan_store4_noabort(i32 %1336)
  store i32 128, ptr %reply_payload_rcv_len.i1040, align 4
  %reply_data.i1041 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1308, i32 0, i32 2
  %1337 = ptrtoint ptr %reply_data.i1041 to i32
  call void @__asan_store4_noabort(i32 %1337)
  store i32 %cond.i1039, ptr %reply_data.i1041, align 4
  %reply_len.i1042 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %1338 = ptrtoint ptr %reply_len.i1042 to i32
  call void @__asan_store4_noabort(i32 %1338)
  store i32 16, ptr %reply_len.i1042, align 4
  %1339 = ptrtoint ptr %1308 to i32
  call void @__asan_store4_noabort(i32 %1339)
  store i32 0, ptr %1308, align 4
  %1340 = load i32, ptr %reply_payload_rcv_len.i1040, align 4
  tail call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %1340) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call47 = tail call i32 @qla_edif_app_mgmt(ptr noundef %bsg_job) #9
  br label %cleanup

sw.bb48:                                          ; preds = %entry
  %1341 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1341)
  %1342 = load ptr, ptr %bsg_job, align 4
  %call.i.i1045 = tail call i32 @scsi_is_host_device(ptr noundef %1342) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1045)
  %tobool.not.i.i1046 = icmp eq i32 %call.i.i1045, 0
  %1343 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1343)
  %1344 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i1046, label %if.end.i.i1057, label %sw.bb48.while.cond.i.i.i1050_crit_edge

sw.bb48.while.cond.i.i.i1050_crit_edge:           ; preds = %sw.bb48
  br label %while.cond.i.i.i1050

while.cond.i.i.i1050:                             ; preds = %while.body.i.i.i1053.while.cond.i.i.i1050_crit_edge, %sw.bb48.while.cond.i.i.i1050_crit_edge
  %dev.addr.0.i.i.i1047 = phi ptr [ %1346, %while.body.i.i.i1053.while.cond.i.i.i1050_crit_edge ], [ %1344, %sw.bb48.while.cond.i.i.i1050_crit_edge ]
  %call.i.i.i1048 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i1047) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i1048)
  %tobool.not.i.i.i1049 = icmp eq i32 %call.i.i.i1048, 0
  br i1 %tobool.not.i.i.i1049, label %while.body.i.i.i1053, label %while.end.i.i.i1055

while.body.i.i.i1053:                             ; preds = %while.cond.i.i.i1050
  %parent.i.i.i1051 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i1047, i32 0, i32 1
  %1345 = ptrtoint ptr %parent.i.i.i1051 to i32
  call void @__asan_load4_noabort(i32 %1345)
  %1346 = load ptr, ptr %parent.i.i.i1051, align 8
  %tobool1.not.i.i.i1052 = icmp eq ptr %1346, null
  br i1 %tobool1.not.i.i.i1052, label %while.body.i.i.i1053.fc_bsg_to_shost.exit.i1072_crit_edge, label %while.body.i.i.i1053.while.cond.i.i.i1050_crit_edge

while.body.i.i.i1053.while.cond.i.i.i1050_crit_edge: ; preds = %while.body.i.i.i1053
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i1050

while.body.i.i.i1053.fc_bsg_to_shost.exit.i1072_crit_edge: ; preds = %while.body.i.i.i1053
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i1072

while.end.i.i.i1055:                              ; preds = %while.cond.i.i.i1050
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i1054 = getelementptr i8, ptr %dev.addr.0.i.i.i1047, i32 -584
  br label %fc_bsg_to_shost.exit.i1072

if.end.i.i1057:                                   ; preds = %sw.bb48
  %parent.i.i1056 = getelementptr inbounds %struct.device, ptr %1344, i32 0, i32 1
  %1347 = ptrtoint ptr %parent.i.i1056 to i32
  call void @__asan_load4_noabort(i32 %1347)
  %1348 = load ptr, ptr %parent.i.i1056, align 8
  br label %while.cond.i11.i.i1061

while.cond.i11.i.i1061:                           ; preds = %while.body.i14.i.i1064.while.cond.i11.i.i1061_crit_edge, %if.end.i.i1057
  %dev.addr.0.i8.i.i1058 = phi ptr [ %1348, %if.end.i.i1057 ], [ %1350, %while.body.i14.i.i1064.while.cond.i11.i.i1061_crit_edge ]
  %call.i9.i.i1059 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i1058) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i1059)
  %tobool.not.i10.i.i1060 = icmp eq i32 %call.i9.i.i1059, 0
  br i1 %tobool.not.i10.i.i1060, label %while.body.i14.i.i1064, label %while.end.i16.i.i1066

while.body.i14.i.i1064:                           ; preds = %while.cond.i11.i.i1061
  %parent.i12.i.i1062 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i1058, i32 0, i32 1
  %1349 = ptrtoint ptr %parent.i12.i.i1062 to i32
  call void @__asan_load4_noabort(i32 %1349)
  %1350 = load ptr, ptr %parent.i12.i.i1062, align 8
  %tobool1.not.i13.i.i1063 = icmp eq ptr %1350, null
  br i1 %tobool1.not.i13.i.i1063, label %while.body.i14.i.i1064.fc_bsg_to_shost.exit.i1072_crit_edge, label %while.body.i14.i.i1064.while.cond.i11.i.i1061_crit_edge

while.body.i14.i.i1064.while.cond.i11.i.i1061_crit_edge: ; preds = %while.body.i14.i.i1064
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i1061

while.body.i14.i.i1064.fc_bsg_to_shost.exit.i1072_crit_edge: ; preds = %while.body.i14.i.i1064
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i1072

while.end.i16.i.i1066:                            ; preds = %while.cond.i11.i.i1061
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i1065 = getelementptr i8, ptr %dev.addr.0.i8.i.i1058, i32 -584
  br label %fc_bsg_to_shost.exit.i1072

fc_bsg_to_shost.exit.i1072:                       ; preds = %while.end.i16.i.i1066, %while.body.i14.i.i1064.fc_bsg_to_shost.exit.i1072_crit_edge, %while.end.i.i.i1055, %while.body.i.i.i1053.fc_bsg_to_shost.exit.i1072_crit_edge
  %retval.0.i.i1067 = phi ptr [ %add.ptr.i.i.i1054, %while.end.i.i.i1055 ], [ %add.ptr.i15.i.i1065, %while.end.i16.i.i1066 ], [ null, %while.body.i14.i.i1064.fc_bsg_to_shost.exit.i1072_crit_edge ], [ null, %while.body.i.i.i1053.fc_bsg_to_shost.exit.i1072_crit_edge ]
  %hostdata.i.i1068 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i1067, i32 0, i32 53
  %reply.i1069 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %1351 = ptrtoint ptr %reply.i1069 to i32
  call void @__asan_load4_noabort(i32 %1351)
  %1352 = load ptr, ptr %reply.i1069, align 4
  %hw.i1070 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i.i1068, i32 0, i32 52
  %1353 = ptrtoint ptr %hw.i1070 to i32
  call void @__asan_load4_noabort(i32 %1353)
  %1354 = load ptr, ptr %hw.i1070, align 4
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %regions.i) #9
  %1355 = getelementptr inbounds i8, ptr %regions.i, i32 1
  %1356 = call ptr @memset(ptr %1355, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %active_regions.i) #9
  %1357 = call ptr @memset(ptr %active_regions.i, i32 0, i32 5)
  call void @qla27xx_get_active_image(ptr noundef %hostdata.i.i1068, ptr noundef nonnull %active_regions.i) #9
  %1358 = ptrtoint ptr %active_regions.i to i32
  call void @__asan_load1_noabort(i32 %1358)
  %1359 = load i8, ptr %active_regions.i, align 1
  %1360 = ptrtoint ptr %regions.i to i32
  call void @__asan_store1_noabort(i32 %1360)
  store i8 %1359, ptr %regions.i, align 1
  %isp_type.i1071 = getelementptr inbounds %struct.qla_hw_data, ptr %1354, i32 0, i32 54
  %1361 = ptrtoint ptr %isp_type.i1071 to i32
  call void @__asan_load4_noabort(i32 %1361)
  %1362 = load i32, ptr %isp_type.i1071, align 8
  %1363 = and i32 %1362, 41943040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1363)
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %fc_bsg_to_shost.exit.i1072.qla2x00_get_flash_image_status.exit_crit_edge, label %if.then.i1073

fc_bsg_to_shost.exit.i1072.qla2x00_get_flash_image_status.exit_crit_edge: ; preds = %fc_bsg_to_shost.exit.i1072
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_get_flash_image_status.exit

if.then.i1073:                                    ; preds = %fc_bsg_to_shost.exit.i1072
  call void @__sanitizer_cov_trace_pc() #11
  call void @qla28xx_get_aux_images(ptr noundef %hostdata.i.i1068, ptr noundef nonnull %active_regions.i) #9
  %aux.i = getelementptr inbounds %struct.active_regions, ptr %active_regions.i, i32 0, i32 1
  %1365 = ptrtoint ptr %aux.i to i32
  call void @__asan_load1_noabort(i32 %1365)
  %1366 = load i8, ptr %aux.i, align 1
  %1367 = ptrtoint ptr %1355 to i32
  call void @__asan_store1_noabort(i32 %1367)
  store i8 %1366, ptr %1355, align 1
  %vpd_nvram.i = getelementptr inbounds %struct.active_regions, ptr %active_regions.i, i32 0, i32 1, i32 1
  %1368 = ptrtoint ptr %vpd_nvram.i to i32
  call void @__asan_load1_noabort(i32 %1368)
  %1369 = load i8, ptr %vpd_nvram.i, align 1
  %vpd_nvram9.i = getelementptr inbounds %struct.qla_active_regions, ptr %regions.i, i32 0, i32 2
  %1370 = ptrtoint ptr %vpd_nvram9.i to i32
  call void @__asan_store1_noabort(i32 %1370)
  store i8 %1369, ptr %vpd_nvram9.i, align 1
  %npiv_config_0_1.i = getelementptr inbounds %struct.active_regions, ptr %active_regions.i, i32 0, i32 1, i32 2
  %1371 = ptrtoint ptr %npiv_config_0_1.i to i32
  call void @__asan_load1_noabort(i32 %1371)
  %1372 = load i8, ptr %npiv_config_0_1.i, align 1
  %npiv_config_0_111.i = getelementptr inbounds %struct.qla_active_regions, ptr %regions.i, i32 0, i32 3
  %1373 = ptrtoint ptr %npiv_config_0_111.i to i32
  call void @__asan_store1_noabort(i32 %1373)
  store i8 %1372, ptr %npiv_config_0_111.i, align 1
  %npiv_config_2_3.i = getelementptr inbounds %struct.active_regions, ptr %active_regions.i, i32 0, i32 1, i32 3
  %1374 = ptrtoint ptr %npiv_config_2_3.i to i32
  call void @__asan_load1_noabort(i32 %1374)
  %1375 = load i8, ptr %npiv_config_2_3.i, align 1
  %npiv_config_2_313.i = getelementptr inbounds %struct.qla_active_regions, ptr %regions.i, i32 0, i32 4
  %1376 = ptrtoint ptr %npiv_config_2_313.i to i32
  call void @__asan_store1_noabort(i32 %1376)
  store i8 %1375, ptr %npiv_config_2_313.i, align 1
  br label %qla2x00_get_flash_image_status.exit

qla2x00_get_flash_image_status.exit:              ; preds = %if.then.i1073, %fc_bsg_to_shost.exit.i1072.qla2x00_get_flash_image_status.exit_crit_edge
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i1067, i32 1, i32 5, i32 1, i32 4, i32 7
  %1377 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %1377)
  %1378 = load i32, ptr %host_no.i, align 4
  %1379 = ptrtoint ptr %regions.i to i32
  call void @__asan_load1_noabort(i32 %1379)
  %1380 = load i8, ptr %regions.i, align 1
  %conv.i1074 = zext i8 %1380 to i32
  %1381 = ptrtoint ptr %1355 to i32
  call void @__asan_load1_noabort(i32 %1381)
  %1382 = load i8, ptr %1355, align 1
  %conv16.i1075 = zext i8 %1382 to i32
  %vpd_nvram17.i = getelementptr inbounds %struct.qla_active_regions, ptr %regions.i, i32 0, i32 2
  %1383 = ptrtoint ptr %vpd_nvram17.i to i32
  call void @__asan_load1_noabort(i32 %1383)
  %1384 = load i8, ptr %vpd_nvram17.i, align 1
  %conv18.i = zext i8 %1384 to i32
  %npiv_config_0_119.i = getelementptr inbounds %struct.qla_active_regions, ptr %regions.i, i32 0, i32 3
  %1385 = ptrtoint ptr %npiv_config_0_119.i to i32
  call void @__asan_load1_noabort(i32 %1385)
  %1386 = load i8, ptr %npiv_config_0_119.i, align 1
  %conv20.i = zext i8 %1386 to i32
  %npiv_config_2_321.i = getelementptr inbounds %struct.qla_active_regions, ptr %regions.i, i32 0, i32 4
  %1387 = ptrtoint ptr %npiv_config_2_321.i to i32
  call void @__asan_load1_noabort(i32 %1387)
  %1388 = load i8, ptr %npiv_config_2_321.i, align 1
  %conv22.i = zext i8 %1388 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i.i1068, i32 noundef 28897, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.qla2x00_get_flash_image_status, i32 noundef %1378, i32 noundef %conv.i1074, i32 noundef %conv16.i1075, i32 noundef %conv18.i, i32 noundef %conv20.i, i32 noundef %conv22.i) #9
  %sg_list.i1076 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %1389 = ptrtoint ptr %sg_list.i1076 to i32
  call void @__asan_load4_noabort(i32 %1389)
  %1390 = load ptr, ptr %sg_list.i1076, align 4
  %sg_cnt.i1077 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %1391 = ptrtoint ptr %sg_cnt.i1077 to i32
  call void @__asan_load4_noabort(i32 %1391)
  %1392 = load i32, ptr %sg_cnt.i1077, align 4
  %call24.i1078 = call i32 @sg_copy_from_buffer(ptr noundef %1390, i32 noundef %1392, ptr noundef nonnull %regions.i, i32 noundef 37) #9
  %reply_data.i1079 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1352, i32 0, i32 2
  %1393 = ptrtoint ptr %reply_data.i1079 to i32
  call void @__asan_store4_noabort(i32 %1393)
  store i32 0, ptr %reply_data.i1079, align 4
  %reply_payload_rcv_len.i1080 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1352, i32 0, i32 1
  %1394 = ptrtoint ptr %reply_payload_rcv_len.i1080 to i32
  call void @__asan_store4_noabort(i32 %1394)
  store i32 37, ptr %reply_payload_rcv_len.i1080, align 4
  %1395 = ptrtoint ptr %1352 to i32
  call void @__asan_store4_noabort(i32 %1395)
  store i32 0, ptr %1352, align 4
  %reply_len.i1081 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %1396 = ptrtoint ptr %reply_len.i1081 to i32
  call void @__asan_store4_noabort(i32 %1396)
  store i32 16, ptr %reply_len.i1081, align 4
  %1397 = load i32, ptr %1352, align 4
  %1398 = load i32, ptr %reply_payload_rcv_len.i1080, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %1397, i32 noundef %1398) #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %active_regions.i) #9
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %regions.i) #9
  br label %cleanup

sw.bb50:                                          ; preds = %entry
  %1399 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1399)
  %1400 = load ptr, ptr %bsg_job, align 4
  %call.i.i1083 = tail call i32 @scsi_is_host_device(ptr noundef %1400) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1083)
  %tobool.not.i.i1084 = icmp eq i32 %call.i.i1083, 0
  %1401 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1401)
  %1402 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i1084, label %if.end.i.i1095, label %sw.bb50.while.cond.i.i.i1088_crit_edge

sw.bb50.while.cond.i.i.i1088_crit_edge:           ; preds = %sw.bb50
  br label %while.cond.i.i.i1088

while.cond.i.i.i1088:                             ; preds = %while.body.i.i.i1091.while.cond.i.i.i1088_crit_edge, %sw.bb50.while.cond.i.i.i1088_crit_edge
  %dev.addr.0.i.i.i1085 = phi ptr [ %1404, %while.body.i.i.i1091.while.cond.i.i.i1088_crit_edge ], [ %1402, %sw.bb50.while.cond.i.i.i1088_crit_edge ]
  %call.i.i.i1086 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i1085) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i1086)
  %tobool.not.i.i.i1087 = icmp eq i32 %call.i.i.i1086, 0
  br i1 %tobool.not.i.i.i1087, label %while.body.i.i.i1091, label %while.end.i.i.i1093

while.body.i.i.i1091:                             ; preds = %while.cond.i.i.i1088
  %parent.i.i.i1089 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i1085, i32 0, i32 1
  %1403 = ptrtoint ptr %parent.i.i.i1089 to i32
  call void @__asan_load4_noabort(i32 %1403)
  %1404 = load ptr, ptr %parent.i.i.i1089, align 8
  %tobool1.not.i.i.i1090 = icmp eq ptr %1404, null
  br i1 %tobool1.not.i.i.i1090, label %while.body.i.i.i1091.fc_bsg_to_shost.exit.i1111_crit_edge, label %while.body.i.i.i1091.while.cond.i.i.i1088_crit_edge

while.body.i.i.i1091.while.cond.i.i.i1088_crit_edge: ; preds = %while.body.i.i.i1091
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i1088

while.body.i.i.i1091.fc_bsg_to_shost.exit.i1111_crit_edge: ; preds = %while.body.i.i.i1091
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i1111

while.end.i.i.i1093:                              ; preds = %while.cond.i.i.i1088
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i1092 = getelementptr i8, ptr %dev.addr.0.i.i.i1085, i32 -584
  br label %fc_bsg_to_shost.exit.i1111

if.end.i.i1095:                                   ; preds = %sw.bb50
  %parent.i.i1094 = getelementptr inbounds %struct.device, ptr %1402, i32 0, i32 1
  %1405 = ptrtoint ptr %parent.i.i1094 to i32
  call void @__asan_load4_noabort(i32 %1405)
  %1406 = load ptr, ptr %parent.i.i1094, align 8
  br label %while.cond.i11.i.i1099

while.cond.i11.i.i1099:                           ; preds = %while.body.i14.i.i1102.while.cond.i11.i.i1099_crit_edge, %if.end.i.i1095
  %dev.addr.0.i8.i.i1096 = phi ptr [ %1406, %if.end.i.i1095 ], [ %1408, %while.body.i14.i.i1102.while.cond.i11.i.i1099_crit_edge ]
  %call.i9.i.i1097 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i1096) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i1097)
  %tobool.not.i10.i.i1098 = icmp eq i32 %call.i9.i.i1097, 0
  br i1 %tobool.not.i10.i.i1098, label %while.body.i14.i.i1102, label %while.end.i16.i.i1104

while.body.i14.i.i1102:                           ; preds = %while.cond.i11.i.i1099
  %parent.i12.i.i1100 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i1096, i32 0, i32 1
  %1407 = ptrtoint ptr %parent.i12.i.i1100 to i32
  call void @__asan_load4_noabort(i32 %1407)
  %1408 = load ptr, ptr %parent.i12.i.i1100, align 8
  %tobool1.not.i13.i.i1101 = icmp eq ptr %1408, null
  br i1 %tobool1.not.i13.i.i1101, label %while.body.i14.i.i1102.fc_bsg_to_shost.exit.i1111_crit_edge, label %while.body.i14.i.i1102.while.cond.i11.i.i1099_crit_edge

while.body.i14.i.i1102.while.cond.i11.i.i1099_crit_edge: ; preds = %while.body.i14.i.i1102
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i1099

while.body.i14.i.i1102.fc_bsg_to_shost.exit.i1111_crit_edge: ; preds = %while.body.i14.i.i1102
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i1111

while.end.i16.i.i1104:                            ; preds = %while.cond.i11.i.i1099
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i1103 = getelementptr i8, ptr %dev.addr.0.i8.i.i1096, i32 -584
  br label %fc_bsg_to_shost.exit.i1111

fc_bsg_to_shost.exit.i1111:                       ; preds = %while.end.i16.i.i1104, %while.body.i14.i.i1102.fc_bsg_to_shost.exit.i1111_crit_edge, %while.end.i.i.i1093, %while.body.i.i.i1091.fc_bsg_to_shost.exit.i1111_crit_edge
  %retval.0.i.i1105 = phi ptr [ %add.ptr.i.i.i1092, %while.end.i.i.i1093 ], [ %add.ptr.i15.i.i1103, %while.end.i16.i.i1104 ], [ null, %while.body.i14.i.i1102.fc_bsg_to_shost.exit.i1111_crit_edge ], [ null, %while.body.i.i.i1091.fc_bsg_to_shost.exit.i1111_crit_edge ]
  %hostdata.i.i1106 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i1105, i32 0, i32 53
  %reply.i1107 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %1409 = ptrtoint ptr %reply.i1107 to i32
  call void @__asan_load4_noabort(i32 %1409)
  %1410 = load ptr, ptr %reply.i1107, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp_data.i) #9
  %flags.i1108 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i1105, i32 1, i32 5, i32 5
  %1411 = ptrtoint ptr %flags.i1108 to i32
  call void @__asan_load4_noabort(i32 %1411)
  %bf.load.i1109 = load volatile i32, ptr %flags.i1108, align 8
  %1412 = and i32 %bf.load.i1109, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1412)
  %tobool.not.i1110 = icmp eq i32 %1412, 0
  br i1 %tobool.not.i1110, label %if.then.i1112, label %if.end.i1115

if.then.i1112:                                    ; preds = %fc_bsg_to_shost.exit.i1111
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i1106, i32 noundef 0, ptr noundef nonnull @.str.32) #9
  br label %qla2x00_manage_host_stats.exit

if.end.i1115:                                     ; preds = %fc_bsg_to_shost.exit.i1111
  %request_payload.i1113 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7
  %1413 = ptrtoint ptr %request_payload.i1113 to i32
  call void @__asan_load4_noabort(i32 %1413)
  %1414 = load i32, ptr %request_payload.i1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1414)
  %cmp.not.i1114 = icmp eq i32 %1414, 8
  br i1 %cmp.not.i1114, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i1115
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i1106, i32 noundef 0, ptr noundef nonnull @.str.15) #9
  br label %qla2x00_manage_host_stats.exit

if.end3.i:                                        ; preds = %if.end.i1115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1415 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1415, i32 noundef 3520, i32 noundef 8) #15
  %tobool5.not.i1116 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i1116, label %if.then6.i1117, label %if.end7.i

if.then6.i1117:                                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i1106, i32 noundef 0, ptr noundef nonnull @.str.16) #9
  br label %qla2x00_manage_host_stats.exit

if.end7.i:                                        ; preds = %if.end3.i
  %sg_list.i1118 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %1416 = ptrtoint ptr %sg_list.i1118 to i32
  call void @__asan_load4_noabort(i32 %1416)
  %1417 = load ptr, ptr %sg_list.i1118, align 4
  %sg_cnt.i1119 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %1418 = ptrtoint ptr %sg_cnt.i1119 to i32
  call void @__asan_load4_noabort(i32 %1418)
  %1419 = load i32, ptr %sg_cnt.i1119, align 4
  %call10.i1120 = tail call i32 @sg_copy_to_buffer(ptr noundef %1417, i32 noundef %1419, ptr noundef nonnull %call7.i.i.i, i32 noundef 8) #9
  %action.i = getelementptr inbounds %struct.ql_vnd_mng_host_stats_param, ptr %call7.i.i.i, i32 0, i32 1
  %1420 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %1420)
  %1421 = load i32, ptr %action.i, align 4
  %1422 = zext i32 %1421 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1422, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %1421, label %sw.default.i [
    i32 0, label %sw.bb.i1122
    i32 1, label %sw.bb12.i
    i32 2, label %sw.bb16.i
  ]

sw.bb.i1122:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %host.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i1105, i32 1, i32 5, i32 1, i32 4, i32 6
  %1423 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %1423)
  %1424 = load ptr, ptr %host.i, align 8
  %1425 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1425)
  %1426 = load i32, ptr %call7.i.i.i, align 8
  %call11.i1121 = tail call i32 @qla2xxx_stop_stats(ptr noundef %1424, i32 noundef %1426) #9
  br label %sw.epilog.i1127

sw.bb12.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %host13.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i1105, i32 1, i32 5, i32 1, i32 4, i32 6
  %1427 = ptrtoint ptr %host13.i to i32
  call void @__asan_load4_noabort(i32 %1427)
  %1428 = load ptr, ptr %host13.i, align 8
  %1429 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1429)
  %1430 = load i32, ptr %call7.i.i.i, align 8
  %call15.i1123 = tail call i32 @qla2xxx_start_stats(ptr noundef %1428, i32 noundef %1430) #9
  br label %sw.epilog.i1127

sw.bb16.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %host17.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i1105, i32 1, i32 5, i32 1, i32 4, i32 6
  %1431 = ptrtoint ptr %host17.i to i32
  call void @__asan_load4_noabort(i32 %1431)
  %1432 = load ptr, ptr %host17.i, align 8
  %1433 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1433)
  %1434 = load i32, ptr %call7.i.i.i, align 8
  %call19.i = tail call i32 @qla2xxx_reset_stats(ptr noundef %1432, i32 noundef %1434) #9
  br label %sw.epilog.i1127

sw.default.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i1106, i32 noundef 0, ptr noundef nonnull @.str.104) #9
  br label %sw.epilog.i1127

sw.epilog.i1127:                                  ; preds = %sw.default.i, %sw.bb16.i, %sw.bb12.i, %sw.bb.i1122
  %ret.0.i = phi i32 [ -5, %sw.default.i ], [ %call19.i, %sw.bb16.i ], [ %call15.i1123, %sw.bb12.i ], [ %call11.i1121, %sw.bb.i1122 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  %1435 = ptrtoint ptr %rsp_data.i to i32
  call void @__asan_store4_noabort(i32 %1435)
  store i32 %ret.0.i, ptr %rsp_data.i, align 4
  %reply_payload.i1124 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8
  %1436 = ptrtoint ptr %reply_payload.i1124 to i32
  call void @__asan_store4_noabort(i32 %1436)
  store i32 4, ptr %reply_payload.i1124, align 4
  %reply_data.i1125 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1410, i32 0, i32 2
  %1437 = ptrtoint ptr %reply_data.i1125 to i32
  call void @__asan_store4_noabort(i32 %1437)
  store i32 0, ptr %reply_data.i1125, align 4
  %sg_list22.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %1438 = ptrtoint ptr %sg_list22.i to i32
  call void @__asan_load4_noabort(i32 %1438)
  %1439 = load ptr, ptr %sg_list22.i, align 4
  %sg_cnt24.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %1440 = ptrtoint ptr %sg_cnt24.i to i32
  call void @__asan_load4_noabort(i32 %1440)
  %1441 = load i32, ptr %sg_cnt24.i, align 4
  %call25.i = call i32 @sg_copy_from_buffer(ptr noundef %1439, i32 noundef %1441, ptr noundef nonnull %rsp_data.i, i32 noundef 4) #9
  %reply_payload_rcv_len.i1126 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1410, i32 0, i32 1
  %1442 = ptrtoint ptr %reply_payload_rcv_len.i1126 to i32
  call void @__asan_store4_noabort(i32 %1442)
  store i32 %call25.i, ptr %reply_payload_rcv_len.i1126, align 4
  %1443 = ptrtoint ptr %1410 to i32
  call void @__asan_store4_noabort(i32 %1443)
  store i32 0, ptr %1410, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %call25.i) #9
  br label %qla2x00_manage_host_stats.exit

qla2x00_manage_host_stats.exit:                   ; preds = %sw.epilog.i1127, %if.then6.i1117, %if.then2.i, %if.then.i1112
  %retval.0.i1128 = phi i32 [ -5, %if.then2.i ], [ %ret.0.i, %sw.epilog.i1127 ], [ -12, %if.then6.i1117 ], [ -5, %if.then.i1112 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp_data.i) #9
  br label %cleanup

sw.bb52:                                          ; preds = %entry
  %1444 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1444)
  %1445 = load ptr, ptr %bsg_job, align 4
  %call.i.i1130 = tail call i32 @scsi_is_host_device(ptr noundef %1445) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1130)
  %tobool.not.i.i1131 = icmp eq i32 %call.i.i1130, 0
  %1446 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1446)
  %1447 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i1131, label %if.end.i.i1142, label %sw.bb52.while.cond.i.i.i1135_crit_edge

sw.bb52.while.cond.i.i.i1135_crit_edge:           ; preds = %sw.bb52
  br label %while.cond.i.i.i1135

while.cond.i.i.i1135:                             ; preds = %while.body.i.i.i1138.while.cond.i.i.i1135_crit_edge, %sw.bb52.while.cond.i.i.i1135_crit_edge
  %dev.addr.0.i.i.i1132 = phi ptr [ %1449, %while.body.i.i.i1138.while.cond.i.i.i1135_crit_edge ], [ %1447, %sw.bb52.while.cond.i.i.i1135_crit_edge ]
  %call.i.i.i1133 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i1132) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i1133)
  %tobool.not.i.i.i1134 = icmp eq i32 %call.i.i.i1133, 0
  br i1 %tobool.not.i.i.i1134, label %while.body.i.i.i1138, label %while.end.i.i.i1140

while.body.i.i.i1138:                             ; preds = %while.cond.i.i.i1135
  %parent.i.i.i1136 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i1132, i32 0, i32 1
  %1448 = ptrtoint ptr %parent.i.i.i1136 to i32
  call void @__asan_load4_noabort(i32 %1448)
  %1449 = load ptr, ptr %parent.i.i.i1136, align 8
  %tobool1.not.i.i.i1137 = icmp eq ptr %1449, null
  br i1 %tobool1.not.i.i.i1137, label %while.body.i.i.i1138.fc_bsg_to_shost.exit.i1157_crit_edge, label %while.body.i.i.i1138.while.cond.i.i.i1135_crit_edge

while.body.i.i.i1138.while.cond.i.i.i1135_crit_edge: ; preds = %while.body.i.i.i1138
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i1135

while.body.i.i.i1138.fc_bsg_to_shost.exit.i1157_crit_edge: ; preds = %while.body.i.i.i1138
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i1157

while.end.i.i.i1140:                              ; preds = %while.cond.i.i.i1135
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i1139 = getelementptr i8, ptr %dev.addr.0.i.i.i1132, i32 -584
  br label %fc_bsg_to_shost.exit.i1157

if.end.i.i1142:                                   ; preds = %sw.bb52
  %parent.i.i1141 = getelementptr inbounds %struct.device, ptr %1447, i32 0, i32 1
  %1450 = ptrtoint ptr %parent.i.i1141 to i32
  call void @__asan_load4_noabort(i32 %1450)
  %1451 = load ptr, ptr %parent.i.i1141, align 8
  br label %while.cond.i11.i.i1146

while.cond.i11.i.i1146:                           ; preds = %while.body.i14.i.i1149.while.cond.i11.i.i1146_crit_edge, %if.end.i.i1142
  %dev.addr.0.i8.i.i1143 = phi ptr [ %1451, %if.end.i.i1142 ], [ %1453, %while.body.i14.i.i1149.while.cond.i11.i.i1146_crit_edge ]
  %call.i9.i.i1144 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i1143) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i1144)
  %tobool.not.i10.i.i1145 = icmp eq i32 %call.i9.i.i1144, 0
  br i1 %tobool.not.i10.i.i1145, label %while.body.i14.i.i1149, label %while.end.i16.i.i1151

while.body.i14.i.i1149:                           ; preds = %while.cond.i11.i.i1146
  %parent.i12.i.i1147 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i1143, i32 0, i32 1
  %1452 = ptrtoint ptr %parent.i12.i.i1147 to i32
  call void @__asan_load4_noabort(i32 %1452)
  %1453 = load ptr, ptr %parent.i12.i.i1147, align 8
  %tobool1.not.i13.i.i1148 = icmp eq ptr %1453, null
  br i1 %tobool1.not.i13.i.i1148, label %while.body.i14.i.i1149.fc_bsg_to_shost.exit.i1157_crit_edge, label %while.body.i14.i.i1149.while.cond.i11.i.i1146_crit_edge

while.body.i14.i.i1149.while.cond.i11.i.i1146_crit_edge: ; preds = %while.body.i14.i.i1149
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i1146

while.body.i14.i.i1149.fc_bsg_to_shost.exit.i1157_crit_edge: ; preds = %while.body.i14.i.i1149
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i1157

while.end.i16.i.i1151:                            ; preds = %while.cond.i11.i.i1146
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i1150 = getelementptr i8, ptr %dev.addr.0.i8.i.i1143, i32 -584
  br label %fc_bsg_to_shost.exit.i1157

fc_bsg_to_shost.exit.i1157:                       ; preds = %while.end.i16.i.i1151, %while.body.i14.i.i1149.fc_bsg_to_shost.exit.i1157_crit_edge, %while.end.i.i.i1140, %while.body.i.i.i1138.fc_bsg_to_shost.exit.i1157_crit_edge
  %retval.0.i.i1152 = phi ptr [ %add.ptr.i.i.i1139, %while.end.i.i.i1140 ], [ %add.ptr.i15.i.i1150, %while.end.i16.i.i1151 ], [ null, %while.body.i14.i.i1149.fc_bsg_to_shost.exit.i1157_crit_edge ], [ null, %while.body.i.i.i1138.fc_bsg_to_shost.exit.i1157_crit_edge ]
  %hostdata.i.i1153 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i1152, i32 0, i32 53
  %reply.i1154 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %1454 = ptrtoint ptr %reply.i1154 to i32
  call void @__asan_load4_noabort(i32 %1454)
  %1455 = load ptr, ptr %reply.i1154, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rsp_data.i1129) #9
  %request_payload.i1155 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7
  %1456 = call ptr @memset(ptr %rsp_data.i1129, i32 255, i32 20)
  %1457 = ptrtoint ptr %request_payload.i1155 to i32
  call void @__asan_load4_noabort(i32 %1457)
  %1458 = load i32, ptr %request_payload.i1155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1458)
  %cmp.not.i1156 = icmp eq i32 %1458, 4
  br i1 %cmp.not.i1156, label %if.end.i1161, label %if.then.i1158

if.then.i1158:                                    ; preds = %fc_bsg_to_shost.exit.i1157
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i1153, i32 noundef 0, ptr noundef nonnull @.str.15) #9
  br label %qla2x00_get_host_stats.exit

if.end.i1161:                                     ; preds = %fc_bsg_to_shost.exit.i1157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1459 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i1159 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1459, i32 noundef 3520, i32 noundef 4) #15
  %tobool.not.i1160 = icmp eq ptr %call7.i.i.i1159, null
  br i1 %tobool.not.i1160, label %if.then3.i1162, label %if.end4.i1167

if.then3.i1162:                                   ; preds = %if.end.i1161
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i1153, i32 noundef 0, ptr noundef nonnull @.str.16) #9
  br label %qla2x00_get_host_stats.exit

if.end4.i1167:                                    ; preds = %if.end.i1161
  %sg_list.i1163 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %1460 = ptrtoint ptr %sg_list.i1163 to i32
  call void @__asan_load4_noabort(i32 %1460)
  %1461 = load ptr, ptr %sg_list.i1163, align 4
  %sg_cnt.i1164 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %1462 = ptrtoint ptr %sg_cnt.i1164 to i32
  call void @__asan_load4_noabort(i32 %1462)
  %1463 = load i32, ptr %sg_cnt.i1164, align 4
  %call7.i1165 = tail call i32 @sg_copy_to_buffer(ptr noundef %1461, i32 noundef %1463, ptr noundef nonnull %call7.i.i.i1159, i32 noundef 4) #9
  %1464 = ptrtoint ptr %call7.i.i.i1159 to i32
  call void @__asan_load4_noabort(i32 %1464)
  %1465 = load i32, ptr %call7.i.i.i1159, align 8
  %1466 = and i32 %1465, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1466)
  %tobool8.not.i1166 = icmp eq i32 %1466, 0
  br i1 %tobool8.not.i1166, label %if.end4.i1167.if.end12.i1171_crit_edge, label %if.then9.i

if.end4.i1167.if.end12.i1171_crit_edge:           ; preds = %if.end4.i1167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i1171

if.then9.i:                                       ; preds = %if.end4.i1167
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i1168 = tail call i64 @qla2x00_get_num_tgts(ptr noundef %hostdata.i.i1153) #9
  %and11.i = and i32 %1465, -131073
  br label %if.end12.i1171

if.end12.i1171:                                   ; preds = %if.then9.i, %if.end4.i1167.if.end12.i1171_crit_edge
  %tgt_num.0.i = phi i64 [ %call10.i1168, %if.then9.i ], [ 0, %if.end4.i1167.if.end12.i1171_crit_edge ]
  %tmp_stat_type.0.off0.i = phi i32 [ %and11.i, %if.then9.i ], [ %1465, %if.end4.i1167.if.end12.i1171_crit_edge ]
  %call14.i = tail call i64 @qla2x00_count_set_bits(i32 noundef %tmp_stat_type.0.off0.i) #9
  %add.i1169 = add i64 %call14.i, %tgt_num.0.i
  %mul.i = shl i64 %add.i1169, 4
  %add15.i = add i64 %mul.i, 20
  %reply_payload.i1170 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8
  %1467 = ptrtoint ptr %reply_payload.i1170 to i32
  call void @__asan_load4_noabort(i32 %1467)
  %1468 = load i32, ptr %reply_payload.i1170, align 4
  %conv17.i = zext i32 %1468 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add15.i, i64 %conv17.i)
  %cmp18.i = icmp ugt i64 %add15.i, %conv17.i
  br i1 %cmp18.i, label %if.then20.i1174, label %if.end30.i1175

if.then20.i1174:                                  ; preds = %if.end12.i1171
  call void @__sanitizer_cov_trace_pc() #11
  %1469 = ptrtoint ptr %rsp_data.i1129 to i32
  call void @__asan_store4_noabort(i32 %1469)
  store i32 16, ptr %rsp_data.i1129, align 4
  %reply_data.i1172 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1455, i32 0, i32 2
  %1470 = ptrtoint ptr %reply_data.i1172 to i32
  call void @__asan_store4_noabort(i32 %1470)
  store i32 16, ptr %reply_data.i1172, align 4
  %1471 = ptrtoint ptr %reply_payload.i1170 to i32
  call void @__asan_store4_noabort(i32 %1471)
  store i32 4, ptr %reply_payload.i1170, align 4
  %sg_list24.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %1472 = ptrtoint ptr %sg_list24.i to i32
  call void @__asan_load4_noabort(i32 %1472)
  %1473 = load ptr, ptr %sg_list24.i, align 4
  %sg_cnt26.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %1474 = ptrtoint ptr %sg_cnt26.i to i32
  call void @__asan_load4_noabort(i32 %1474)
  %1475 = load i32, ptr %sg_cnt26.i, align 4
  %call27.i = call i32 @sg_copy_from_buffer(ptr noundef %1473, i32 noundef %1475, ptr noundef nonnull %rsp_data.i1129, i32 noundef 4) #9
  %reply_payload_rcv_len.i1173 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1455, i32 0, i32 1
  %1476 = ptrtoint ptr %reply_payload_rcv_len.i1173 to i32
  call void @__asan_store4_noabort(i32 %1476)
  store i32 %call27.i, ptr %reply_payload_rcv_len.i1173, align 4
  %1477 = ptrtoint ptr %1455 to i32
  call void @__asan_store4_noabort(i32 %1477)
  store i32 0, ptr %1455, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %call27.i) #9
  br label %host_stat_out.i

if.end30.i1175:                                   ; preds = %if.end12.i1171
  %conv31.i = trunc i64 %add15.i to i32
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv31.i, i32 noundef 3520) #14
  %tobool33.not.i1176 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool33.not.i1176, label %if.end30.i1175.host_stat_out.i_crit_edge, label %if.end35.i1177

if.end30.i1175.host_stat_out.i_crit_edge:         ; preds = %if.end30.i1175
  call void @__sanitizer_cov_trace_pc() #11
  br label %host_stat_out.i

if.end35.i1177:                                   ; preds = %if.end30.i1175
  %1478 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1478)
  %1479 = load ptr, ptr %bsg_job, align 4
  %call.i103.i = tail call i32 @scsi_is_host_device(ptr noundef %1479) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %tobool.not.i104.i = icmp eq i32 %call.i103.i, 0
  %1480 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1480)
  %1481 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i104.i, label %if.end.i115.i, label %if.end35.i1177.while.cond.i.i108.i_crit_edge

if.end35.i1177.while.cond.i.i108.i_crit_edge:     ; preds = %if.end35.i1177
  br label %while.cond.i.i108.i

while.cond.i.i108.i:                              ; preds = %while.body.i.i111.i.while.cond.i.i108.i_crit_edge, %if.end35.i1177.while.cond.i.i108.i_crit_edge
  %dev.addr.0.i.i105.i = phi ptr [ %1483, %while.body.i.i111.i.while.cond.i.i108.i_crit_edge ], [ %1481, %if.end35.i1177.while.cond.i.i108.i_crit_edge ]
  %call.i.i106.i1178 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i105.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i106.i1178)
  %tobool.not.i.i107.i = icmp eq i32 %call.i.i106.i1178, 0
  br i1 %tobool.not.i.i107.i, label %while.body.i.i111.i, label %while.end.i.i113.i

while.body.i.i111.i:                              ; preds = %while.cond.i.i108.i
  %parent.i.i109.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i105.i, i32 0, i32 1
  %1482 = ptrtoint ptr %parent.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %1482)
  %1483 = load ptr, ptr %parent.i.i109.i, align 8
  %tobool1.not.i.i110.i = icmp eq ptr %1483, null
  br i1 %tobool1.not.i.i110.i, label %while.body.i.i111.i.fc_bsg_to_shost.exit126.i_crit_edge, label %while.body.i.i111.i.while.cond.i.i108.i_crit_edge

while.body.i.i111.i.while.cond.i.i108.i_crit_edge: ; preds = %while.body.i.i111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i108.i

while.body.i.i111.i.fc_bsg_to_shost.exit126.i_crit_edge: ; preds = %while.body.i.i111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit126.i

while.end.i.i113.i:                               ; preds = %while.cond.i.i108.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i112.i = getelementptr i8, ptr %dev.addr.0.i.i105.i, i32 -584
  br label %fc_bsg_to_shost.exit126.i

if.end.i115.i:                                    ; preds = %if.end35.i1177
  %parent.i114.i = getelementptr inbounds %struct.device, ptr %1481, i32 0, i32 1
  %1484 = ptrtoint ptr %parent.i114.i to i32
  call void @__asan_load4_noabort(i32 %1484)
  %1485 = load ptr, ptr %parent.i114.i, align 8
  br label %while.cond.i11.i119.i

while.cond.i11.i119.i:                            ; preds = %while.body.i14.i122.i.while.cond.i11.i119.i_crit_edge, %if.end.i115.i
  %dev.addr.0.i8.i116.i = phi ptr [ %1485, %if.end.i115.i ], [ %1487, %while.body.i14.i122.i.while.cond.i11.i119.i_crit_edge ]
  %call.i9.i117.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i116.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i117.i)
  %tobool.not.i10.i118.i = icmp eq i32 %call.i9.i117.i, 0
  br i1 %tobool.not.i10.i118.i, label %while.body.i14.i122.i, label %while.end.i16.i124.i

while.body.i14.i122.i:                            ; preds = %while.cond.i11.i119.i
  %parent.i12.i120.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i116.i, i32 0, i32 1
  %1486 = ptrtoint ptr %parent.i12.i120.i to i32
  call void @__asan_load4_noabort(i32 %1486)
  %1487 = load ptr, ptr %parent.i12.i120.i, align 8
  %tobool1.not.i13.i121.i = icmp eq ptr %1487, null
  br i1 %tobool1.not.i13.i121.i, label %while.body.i14.i122.i.fc_bsg_to_shost.exit126.i_crit_edge, label %while.body.i14.i122.i.while.cond.i11.i119.i_crit_edge

while.body.i14.i122.i.while.cond.i11.i119.i_crit_edge: ; preds = %while.body.i14.i122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i119.i

while.body.i14.i122.i.fc_bsg_to_shost.exit126.i_crit_edge: ; preds = %while.body.i14.i122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit126.i

while.end.i16.i124.i:                             ; preds = %while.cond.i11.i119.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i123.i = getelementptr i8, ptr %dev.addr.0.i8.i116.i, i32 -584
  br label %fc_bsg_to_shost.exit126.i

fc_bsg_to_shost.exit126.i:                        ; preds = %while.end.i16.i124.i, %while.body.i14.i122.i.fc_bsg_to_shost.exit126.i_crit_edge, %while.end.i.i113.i, %while.body.i.i111.i.fc_bsg_to_shost.exit126.i_crit_edge
  %retval.0.i125.i = phi ptr [ %add.ptr.i.i112.i, %while.end.i.i113.i ], [ %add.ptr.i15.i123.i, %while.end.i16.i124.i ], [ null, %while.body.i14.i122.i.fc_bsg_to_shost.exit126.i_crit_edge ], [ null, %while.body.i.i111.i.fc_bsg_to_shost.exit126.i_crit_edge ]
  %1488 = ptrtoint ptr %call7.i.i.i1159 to i32
  call void @__asan_load4_noabort(i32 %1488)
  %1489 = load i32, ptr %call7.i.i.i1159, align 8
  %call38.i = tail call i32 @qla2xxx_get_ini_stats(ptr noundef %retval.0.i125.i, i32 noundef %1489, ptr noundef nonnull %call9.i.i.i, i64 noundef %add15.i) #9
  %1490 = ptrtoint ptr %rsp_data.i1129 to i32
  call void @__asan_store4_noabort(i32 %1490)
  store i32 0, ptr %rsp_data.i1129, align 4
  %reply_data40.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %1455, i32 0, i32 2
  %1491 = ptrtoint ptr %reply_data40.i to i32
  call void @__asan_store4_noabort(i32 %1491)
  store i32 0, ptr %reply_data40.i, align 4
  %sg_list44.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %1492 = ptrtoint ptr %sg_list44.i to i32
  call void @__asan_load4_noabort(i32 %1492)
  %1493 = load ptr, ptr %sg_list44.i, align 4
  %sg_cnt46.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %1494 = ptrtoint ptr %sg_cnt46.i to i32
  call void @__asan_load4_noabort(i32 %1494)
  %1495 = load i32, ptr %sg_cnt46.i, align 4
  %call48.i1179 = tail call i32 @sg_copy_from_buffer(ptr noundef %1493, i32 noundef %1495, ptr noundef nonnull %call9.i.i.i, i32 noundef %conv31.i) #9
  %reply_payload_rcv_len49.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %1455, i32 0, i32 1
  %1496 = ptrtoint ptr %reply_payload_rcv_len49.i to i32
  call void @__asan_store4_noabort(i32 %1496)
  store i32 %call48.i1179, ptr %reply_payload_rcv_len49.i, align 4
  %1497 = ptrtoint ptr %1455 to i32
  call void @__asan_store4_noabort(i32 %1497)
  store i32 0, ptr %1455, align 4
  tail call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %call48.i1179) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %host_stat_out.i

host_stat_out.i:                                  ; preds = %fc_bsg_to_shost.exit126.i, %if.end30.i1175.host_stat_out.i_crit_edge, %if.then20.i1174
  %ret.0.i1180 = phi i32 [ 0, %if.then20.i1174 ], [ %call38.i, %fc_bsg_to_shost.exit126.i ], [ -12, %if.end30.i1175.host_stat_out.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i1159) #9
  br label %qla2x00_get_host_stats.exit

qla2x00_get_host_stats.exit:                      ; preds = %host_stat_out.i, %if.then3.i1162, %if.then.i1158
  %retval.0.i1181 = phi i32 [ -5, %if.then.i1158 ], [ %ret.0.i1180, %host_stat_out.i ], [ -12, %if.then3.i1162 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rsp_data.i1129) #9
  br label %cleanup

sw.bb54:                                          ; preds = %entry
  %1498 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1498)
  %1499 = load ptr, ptr %bsg_job, align 4
  %call.i.i1182 = tail call i32 @scsi_is_host_device(ptr noundef %1499) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1182)
  %tobool.not.i.i1183 = icmp eq i32 %call.i.i1182, 0
  %1500 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1500)
  %1501 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i1183, label %if.end.i.i1194, label %sw.bb54.while.cond.i.i.i1187_crit_edge

sw.bb54.while.cond.i.i.i1187_crit_edge:           ; preds = %sw.bb54
  br label %while.cond.i.i.i1187

while.cond.i.i.i1187:                             ; preds = %while.body.i.i.i1190.while.cond.i.i.i1187_crit_edge, %sw.bb54.while.cond.i.i.i1187_crit_edge
  %dev.addr.0.i.i.i1184 = phi ptr [ %1503, %while.body.i.i.i1190.while.cond.i.i.i1187_crit_edge ], [ %1501, %sw.bb54.while.cond.i.i.i1187_crit_edge ]
  %call.i.i.i1185 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i1184) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i1185)
  %tobool.not.i.i.i1186 = icmp eq i32 %call.i.i.i1185, 0
  br i1 %tobool.not.i.i.i1186, label %while.body.i.i.i1190, label %while.end.i.i.i1192

while.body.i.i.i1190:                             ; preds = %while.cond.i.i.i1187
  %parent.i.i.i1188 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i1184, i32 0, i32 1
  %1502 = ptrtoint ptr %parent.i.i.i1188 to i32
  call void @__asan_load4_noabort(i32 %1502)
  %1503 = load ptr, ptr %parent.i.i.i1188, align 8
  %tobool1.not.i.i.i1189 = icmp eq ptr %1503, null
  br i1 %tobool1.not.i.i.i1189, label %while.body.i.i.i1190.fc_bsg_to_shost.exit.i1210_crit_edge, label %while.body.i.i.i1190.while.cond.i.i.i1187_crit_edge

while.body.i.i.i1190.while.cond.i.i.i1187_crit_edge: ; preds = %while.body.i.i.i1190
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i1187

while.body.i.i.i1190.fc_bsg_to_shost.exit.i1210_crit_edge: ; preds = %while.body.i.i.i1190
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i1210

while.end.i.i.i1192:                              ; preds = %while.cond.i.i.i1187
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i1191 = getelementptr i8, ptr %dev.addr.0.i.i.i1184, i32 -584
  br label %fc_bsg_to_shost.exit.i1210

if.end.i.i1194:                                   ; preds = %sw.bb54
  %parent.i.i1193 = getelementptr inbounds %struct.device, ptr %1501, i32 0, i32 1
  %1504 = ptrtoint ptr %parent.i.i1193 to i32
  call void @__asan_load4_noabort(i32 %1504)
  %1505 = load ptr, ptr %parent.i.i1193, align 8
  br label %while.cond.i11.i.i1198

while.cond.i11.i.i1198:                           ; preds = %while.body.i14.i.i1201.while.cond.i11.i.i1198_crit_edge, %if.end.i.i1194
  %dev.addr.0.i8.i.i1195 = phi ptr [ %1505, %if.end.i.i1194 ], [ %1507, %while.body.i14.i.i1201.while.cond.i11.i.i1198_crit_edge ]
  %call.i9.i.i1196 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i1195) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i1196)
  %tobool.not.i10.i.i1197 = icmp eq i32 %call.i9.i.i1196, 0
  br i1 %tobool.not.i10.i.i1197, label %while.body.i14.i.i1201, label %while.end.i16.i.i1203

while.body.i14.i.i1201:                           ; preds = %while.cond.i11.i.i1198
  %parent.i12.i.i1199 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i1195, i32 0, i32 1
  %1506 = ptrtoint ptr %parent.i12.i.i1199 to i32
  call void @__asan_load4_noabort(i32 %1506)
  %1507 = load ptr, ptr %parent.i12.i.i1199, align 8
  %tobool1.not.i13.i.i1200 = icmp eq ptr %1507, null
  br i1 %tobool1.not.i13.i.i1200, label %while.body.i14.i.i1201.fc_bsg_to_shost.exit.i1210_crit_edge, label %while.body.i14.i.i1201.while.cond.i11.i.i1198_crit_edge

while.body.i14.i.i1201.while.cond.i11.i.i1198_crit_edge: ; preds = %while.body.i14.i.i1201
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i1198

while.body.i14.i.i1201.fc_bsg_to_shost.exit.i1210_crit_edge: ; preds = %while.body.i14.i.i1201
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i1210

while.end.i16.i.i1203:                            ; preds = %while.cond.i11.i.i1198
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i1202 = getelementptr i8, ptr %dev.addr.0.i8.i.i1195, i32 -584
  br label %fc_bsg_to_shost.exit.i1210

fc_bsg_to_shost.exit.i1210:                       ; preds = %while.end.i16.i.i1203, %while.body.i14.i.i1201.fc_bsg_to_shost.exit.i1210_crit_edge, %while.end.i.i.i1192, %while.body.i.i.i1190.fc_bsg_to_shost.exit.i1210_crit_edge
  %retval.0.i.i1204 = phi ptr [ %add.ptr.i.i.i1191, %while.end.i.i.i1192 ], [ %add.ptr.i15.i.i1202, %while.end.i16.i.i1203 ], [ null, %while.body.i14.i.i1201.fc_bsg_to_shost.exit.i1210_crit_edge ], [ null, %while.body.i.i.i1190.fc_bsg_to_shost.exit.i1210_crit_edge ]
  %hostdata.i.i1205 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i1204, i32 0, i32 53
  %reply.i1206 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %1508 = ptrtoint ptr %reply.i1206 to i32
  call void @__asan_load4_noabort(i32 %1508)
  %1509 = load ptr, ptr %reply.i1206, align 4
  %flags.i1207 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i1204, i32 1, i32 5, i32 5
  %1510 = ptrtoint ptr %flags.i1207 to i32
  call void @__asan_load4_noabort(i32 %1510)
  %bf.load.i1208 = load volatile i32, ptr %flags.i1207, align 8
  %1511 = and i32 %bf.load.i1208, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1511)
  %tobool.not.i1209 = icmp eq i32 %1511, 0
  br i1 %tobool.not.i1209, label %if.then.i1211, label %if.end.i1214

if.then.i1211:                                    ; preds = %fc_bsg_to_shost.exit.i1210
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i1205, i32 noundef 0, ptr noundef nonnull @.str.32) #9
  br label %cleanup

if.end.i1214:                                     ; preds = %fc_bsg_to_shost.exit.i1210
  %request_payload.i1212 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7
  %1512 = ptrtoint ptr %request_payload.i1212 to i32
  call void @__asan_load4_noabort(i32 %1512)
  %1513 = load i32, ptr %request_payload.i1212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1513)
  %cmp.not.i1213 = icmp eq i32 %1513, 16
  br i1 %cmp.not.i1213, label %if.end3.i1218, label %if.then2.i1215

if.then2.i1215:                                   ; preds = %if.end.i1214
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i1205, i32 noundef 0, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end3.i1218:                                    ; preds = %if.end.i1214
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1514 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i1216 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1514, i32 noundef 3520, i32 noundef 8) #15
  %tobool5.not.i1217 = icmp eq ptr %call7.i.i.i1216, null
  br i1 %tobool5.not.i1217, label %if.then6.i1219, label %if.end7.i1223

if.then6.i1219:                                   ; preds = %if.end3.i1218
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i1205, i32 noundef 0, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end7.i1223:                                    ; preds = %if.end3.i1218
  %sg_list.i1220 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %1515 = ptrtoint ptr %sg_list.i1220 to i32
  call void @__asan_load4_noabort(i32 %1515)
  %1516 = load ptr, ptr %sg_list.i1220, align 4
  %sg_cnt.i1221 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %1517 = ptrtoint ptr %sg_cnt.i1221 to i32
  call void @__asan_load4_noabort(i32 %1517)
  %1518 = load i32, ptr %sg_cnt.i1221, align 4
  %call10.i1222 = tail call i32 @sg_copy_to_buffer(ptr noundef %1516, i32 noundef %1518, ptr noundef nonnull %call7.i.i.i1216, i32 noundef 16) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1519 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i103.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1519, i32 noundef 3520, i32 noundef 36) #15
  %tobool12.not.i = icmp eq ptr %call7.i.i103.i, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end14.i1225

if.then13.i:                                      ; preds = %if.end7.i1223
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i1216) #9
  br label %cleanup

if.end14.i1225:                                   ; preds = %if.end7.i1223
  %reply_payload.i1224 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8
  %1520 = ptrtoint ptr %reply_payload.i1224 to i32
  call void @__asan_load4_noabort(i32 %1520)
  %1521 = load i32, ptr %reply_payload.i1224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %1521)
  %cmp17.i = icmp ult i32 %1521, 36
  br i1 %cmp17.i, label %if.then19.i1227, label %if.end29.i

if.then19.i1227:                                  ; preds = %if.end14.i1225
  call void @__sanitizer_cov_trace_pc() #11
  %1522 = ptrtoint ptr %call7.i.i103.i to i32
  call void @__asan_store4_noabort(i32 %1522)
  store i32 16, ptr %call7.i.i103.i, align 8
  %reply_data.i1226 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1509, i32 0, i32 2
  %1523 = ptrtoint ptr %reply_data.i1226 to i32
  call void @__asan_store4_noabort(i32 %1523)
  store i32 16, ptr %reply_data.i1226, align 4
  %1524 = ptrtoint ptr %reply_payload.i1224 to i32
  call void @__asan_store4_noabort(i32 %1524)
  store i32 4, ptr %reply_payload.i1224, align 4
  br label %tgt_stat_out.i

if.end29.i:                                       ; preds = %if.end14.i1225
  %1525 = ptrtoint ptr %call7.i.i.i1216 to i32
  call void @__asan_load4_noabort(i32 %1525)
  %1526 = load i32, ptr %call7.i.i.i1216, align 8
  %vp_fcports.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i1204, i32 1, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end29.i
  %fcport.0.in.i.i = phi ptr [ %vp_fcports.i.i, %if.end29.i ], [ %fcport.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %1527 = ptrtoint ptr %fcport.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %1527)
  %fcport.0.i.i = load ptr, ptr %fcport.0.in.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %fcport.0.i.i, %vp_fcports.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.then32.i1229_crit_edge, label %for.body.i.i

for.cond.i.i.if.then32.i1229_crit_edge:           ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32.i1229

for.body.i.i:                                     ; preds = %for.cond.i.i
  %rport.i.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0.i.i, i32 0, i32 37
  %1528 = ptrtoint ptr %rport.i.i to i32
  call void @__asan_load4_noabort(i32 %1528)
  %1529 = load ptr, ptr %rport.i.i, align 8
  %number.i.i = getelementptr inbounds %struct.fc_rport, ptr %1529, i32 0, i32 13
  %1530 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %1530)
  %1531 = load i32, ptr %number.i.i, align 4
  %cmp2.i.i = icmp eq i32 %1531, %1526
  br i1 %cmp2.i.i, label %qla2xxx_find_rport.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

qla2xxx_find_rport.exit.i:                        ; preds = %for.body.i.i
  %tobool31.not.i1228 = icmp eq ptr %1529, null
  br i1 %tobool31.not.i1228, label %qla2xxx_find_rport.exit.i.if.then32.i1229_crit_edge, label %if.end35.i1230

qla2xxx_find_rport.exit.i.if.then32.i1229_crit_edge: ; preds = %qla2xxx_find_rport.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32.i1229

if.then32.i1229:                                  ; preds = %qla2xxx_find_rport.exit.i.if.then32.i1229_crit_edge, %for.cond.i.i.if.then32.i1229_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i1205, i32 noundef 0, ptr noundef nonnull @.str.105, i32 noundef %1526) #9
  %1532 = ptrtoint ptr %call7.i.i103.i to i32
  call void @__asan_store4_noabort(i32 %1532)
  store i32 6, ptr %call7.i.i103.i, align 8
  br label %tgt_stat_out.i

if.end35.i1230:                                   ; preds = %qla2xxx_find_rport.exit.i
  %1533 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1533)
  %1534 = load ptr, ptr %bsg_job, align 4
  %call.i105.i = tail call i32 @scsi_is_host_device(ptr noundef %1534) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105.i)
  %tobool.not.i106.i = icmp eq i32 %call.i105.i, 0
  %1535 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1535)
  %1536 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i106.i, label %if.end.i117.i, label %if.end35.i1230.while.cond.i.i110.i_crit_edge

if.end35.i1230.while.cond.i.i110.i_crit_edge:     ; preds = %if.end35.i1230
  br label %while.cond.i.i110.i

while.cond.i.i110.i:                              ; preds = %while.body.i.i113.i.while.cond.i.i110.i_crit_edge, %if.end35.i1230.while.cond.i.i110.i_crit_edge
  %dev.addr.0.i.i107.i = phi ptr [ %1538, %while.body.i.i113.i.while.cond.i.i110.i_crit_edge ], [ %1536, %if.end35.i1230.while.cond.i.i110.i_crit_edge ]
  %call.i.i108.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i107.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i108.i)
  %tobool.not.i.i109.i = icmp eq i32 %call.i.i108.i, 0
  br i1 %tobool.not.i.i109.i, label %while.body.i.i113.i, label %while.end.i.i115.i

while.body.i.i113.i:                              ; preds = %while.cond.i.i110.i
  %parent.i.i111.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i107.i, i32 0, i32 1
  %1537 = ptrtoint ptr %parent.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %1537)
  %1538 = load ptr, ptr %parent.i.i111.i, align 8
  %tobool1.not.i.i112.i = icmp eq ptr %1538, null
  br i1 %tobool1.not.i.i112.i, label %while.body.i.i113.i.fc_bsg_to_shost.exit128.i_crit_edge, label %while.body.i.i113.i.while.cond.i.i110.i_crit_edge

while.body.i.i113.i.while.cond.i.i110.i_crit_edge: ; preds = %while.body.i.i113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i110.i

while.body.i.i113.i.fc_bsg_to_shost.exit128.i_crit_edge: ; preds = %while.body.i.i113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit128.i

while.end.i.i115.i:                               ; preds = %while.cond.i.i110.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i114.i = getelementptr i8, ptr %dev.addr.0.i.i107.i, i32 -584
  br label %fc_bsg_to_shost.exit128.i

if.end.i117.i:                                    ; preds = %if.end35.i1230
  %parent.i116.i = getelementptr inbounds %struct.device, ptr %1536, i32 0, i32 1
  %1539 = ptrtoint ptr %parent.i116.i to i32
  call void @__asan_load4_noabort(i32 %1539)
  %1540 = load ptr, ptr %parent.i116.i, align 8
  br label %while.cond.i11.i121.i

while.cond.i11.i121.i:                            ; preds = %while.body.i14.i124.i.while.cond.i11.i121.i_crit_edge, %if.end.i117.i
  %dev.addr.0.i8.i118.i = phi ptr [ %1540, %if.end.i117.i ], [ %1542, %while.body.i14.i124.i.while.cond.i11.i121.i_crit_edge ]
  %call.i9.i119.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i118.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i119.i)
  %tobool.not.i10.i120.i = icmp eq i32 %call.i9.i119.i, 0
  br i1 %tobool.not.i10.i120.i, label %while.body.i14.i124.i, label %while.end.i16.i126.i

while.body.i14.i124.i:                            ; preds = %while.cond.i11.i121.i
  %parent.i12.i122.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i118.i, i32 0, i32 1
  %1541 = ptrtoint ptr %parent.i12.i122.i to i32
  call void @__asan_load4_noabort(i32 %1541)
  %1542 = load ptr, ptr %parent.i12.i122.i, align 8
  %tobool1.not.i13.i123.i = icmp eq ptr %1542, null
  br i1 %tobool1.not.i13.i123.i, label %while.body.i14.i124.i.fc_bsg_to_shost.exit128.i_crit_edge, label %while.body.i14.i124.i.while.cond.i11.i121.i_crit_edge

while.body.i14.i124.i.while.cond.i11.i121.i_crit_edge: ; preds = %while.body.i14.i124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i121.i

while.body.i14.i124.i.fc_bsg_to_shost.exit128.i_crit_edge: ; preds = %while.body.i14.i124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit128.i

while.end.i16.i126.i:                             ; preds = %while.cond.i11.i121.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i125.i = getelementptr i8, ptr %dev.addr.0.i8.i118.i, i32 -584
  br label %fc_bsg_to_shost.exit128.i

fc_bsg_to_shost.exit128.i:                        ; preds = %while.end.i16.i126.i, %while.body.i14.i124.i.fc_bsg_to_shost.exit128.i_crit_edge, %while.end.i.i115.i, %while.body.i.i113.i.fc_bsg_to_shost.exit128.i_crit_edge
  %retval.0.i127.i = phi ptr [ %add.ptr.i.i114.i, %while.end.i.i115.i ], [ %add.ptr.i15.i125.i, %while.end.i16.i126.i ], [ null, %while.body.i14.i124.i.fc_bsg_to_shost.exit128.i_crit_edge ], [ null, %while.body.i.i113.i.fc_bsg_to_shost.exit128.i_crit_edge ]
  %stat_type.i = getelementptr inbounds %struct.ql_vnd_tgt_stats_param, ptr %call7.i.i.i1216, i32 0, i32 1
  %1543 = ptrtoint ptr %stat_type.i to i32
  call void @__asan_load4_noabort(i32 %1543)
  %1544 = load i32, ptr %stat_type.i, align 4
  %call37.i = tail call i32 @qla2xxx_get_tgt_stats(ptr noundef %retval.0.i127.i, i32 noundef %1544, ptr noundef nonnull %1529, ptr noundef nonnull %call7.i.i103.i, i64 noundef 36) #9
  %reply_data38.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %1509, i32 0, i32 2
  %1545 = ptrtoint ptr %reply_data38.i to i32
  call void @__asan_store4_noabort(i32 %1545)
  store i32 0, ptr %reply_data38.i, align 4
  br label %tgt_stat_out.i

tgt_stat_out.i:                                   ; preds = %fc_bsg_to_shost.exit128.i, %if.then32.i1229, %if.then19.i1227
  %.sink151.i = phi i32 [ 20, %if.then19.i1227 ], [ 36, %fc_bsg_to_shost.exit128.i ], [ 36, %if.then32.i1229 ]
  %ret.1.i = phi i32 [ 0, %if.then19.i1227 ], [ %call37.i, %fc_bsg_to_shost.exit128.i ], [ 6, %if.then32.i1229 ]
  %sg_list43.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %1546 = ptrtoint ptr %sg_list43.i to i32
  call void @__asan_load4_noabort(i32 %1546)
  %1547 = load ptr, ptr %sg_list43.i, align 4
  %sg_cnt45.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %1548 = ptrtoint ptr %sg_cnt45.i to i32
  call void @__asan_load4_noabort(i32 %1548)
  %1549 = load i32, ptr %sg_cnt45.i, align 4
  %call47.i1231 = tail call i32 @sg_copy_from_buffer(ptr noundef %1547, i32 noundef %1549, ptr noundef nonnull %call7.i.i103.i, i32 noundef %.sink151.i) #9
  %reply_payload_rcv_len48.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %1509, i32 0, i32 1
  %1550 = ptrtoint ptr %reply_payload_rcv_len48.i to i32
  call void @__asan_store4_noabort(i32 %1550)
  store i32 %call47.i1231, ptr %reply_payload_rcv_len48.i, align 4
  %1551 = ptrtoint ptr %1509 to i32
  call void @__asan_store4_noabort(i32 %1551)
  store i32 0, ptr %1509, align 4
  tail call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %call47.i1231) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i103.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i1216) #9
  br label %cleanup

sw.bb56:                                          ; preds = %entry
  %1552 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1552)
  %1553 = load ptr, ptr %bsg_job, align 4
  %call.i.i1234 = tail call i32 @scsi_is_host_device(ptr noundef %1553) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1234)
  %tobool.not.i.i1235 = icmp eq i32 %call.i.i1234, 0
  %1554 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %1554)
  %1555 = load ptr, ptr %bsg_job, align 4
  br i1 %tobool.not.i.i1235, label %if.end.i.i1246, label %sw.bb56.while.cond.i.i.i1239_crit_edge

sw.bb56.while.cond.i.i.i1239_crit_edge:           ; preds = %sw.bb56
  br label %while.cond.i.i.i1239

while.cond.i.i.i1239:                             ; preds = %while.body.i.i.i1242.while.cond.i.i.i1239_crit_edge, %sw.bb56.while.cond.i.i.i1239_crit_edge
  %dev.addr.0.i.i.i1236 = phi ptr [ %1557, %while.body.i.i.i1242.while.cond.i.i.i1239_crit_edge ], [ %1555, %sw.bb56.while.cond.i.i.i1239_crit_edge ]
  %call.i.i.i1237 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i1236) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i1237)
  %tobool.not.i.i.i1238 = icmp eq i32 %call.i.i.i1237, 0
  br i1 %tobool.not.i.i.i1238, label %while.body.i.i.i1242, label %while.end.i.i.i1244

while.body.i.i.i1242:                             ; preds = %while.cond.i.i.i1239
  %parent.i.i.i1240 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i1236, i32 0, i32 1
  %1556 = ptrtoint ptr %parent.i.i.i1240 to i32
  call void @__asan_load4_noabort(i32 %1556)
  %1557 = load ptr, ptr %parent.i.i.i1240, align 8
  %tobool1.not.i.i.i1241 = icmp eq ptr %1557, null
  br i1 %tobool1.not.i.i.i1241, label %while.body.i.i.i1242.fc_bsg_to_shost.exit.i1261_crit_edge, label %while.body.i.i.i1242.while.cond.i.i.i1239_crit_edge

while.body.i.i.i1242.while.cond.i.i.i1239_crit_edge: ; preds = %while.body.i.i.i1242
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i1239

while.body.i.i.i1242.fc_bsg_to_shost.exit.i1261_crit_edge: ; preds = %while.body.i.i.i1242
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i1261

while.end.i.i.i1244:                              ; preds = %while.cond.i.i.i1239
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i1243 = getelementptr i8, ptr %dev.addr.0.i.i.i1236, i32 -584
  br label %fc_bsg_to_shost.exit.i1261

if.end.i.i1246:                                   ; preds = %sw.bb56
  %parent.i.i1245 = getelementptr inbounds %struct.device, ptr %1555, i32 0, i32 1
  %1558 = ptrtoint ptr %parent.i.i1245 to i32
  call void @__asan_load4_noabort(i32 %1558)
  %1559 = load ptr, ptr %parent.i.i1245, align 8
  br label %while.cond.i11.i.i1250

while.cond.i11.i.i1250:                           ; preds = %while.body.i14.i.i1253.while.cond.i11.i.i1250_crit_edge, %if.end.i.i1246
  %dev.addr.0.i8.i.i1247 = phi ptr [ %1559, %if.end.i.i1246 ], [ %1561, %while.body.i14.i.i1253.while.cond.i11.i.i1250_crit_edge ]
  %call.i9.i.i1248 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i1247) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i1248)
  %tobool.not.i10.i.i1249 = icmp eq i32 %call.i9.i.i1248, 0
  br i1 %tobool.not.i10.i.i1249, label %while.body.i14.i.i1253, label %while.end.i16.i.i1255

while.body.i14.i.i1253:                           ; preds = %while.cond.i11.i.i1250
  %parent.i12.i.i1251 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i1247, i32 0, i32 1
  %1560 = ptrtoint ptr %parent.i12.i.i1251 to i32
  call void @__asan_load4_noabort(i32 %1560)
  %1561 = load ptr, ptr %parent.i12.i.i1251, align 8
  %tobool1.not.i13.i.i1252 = icmp eq ptr %1561, null
  br i1 %tobool1.not.i13.i.i1252, label %while.body.i14.i.i1253.fc_bsg_to_shost.exit.i1261_crit_edge, label %while.body.i14.i.i1253.while.cond.i11.i.i1250_crit_edge

while.body.i14.i.i1253.while.cond.i11.i.i1250_crit_edge: ; preds = %while.body.i14.i.i1253
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i.i1250

while.body.i14.i.i1253.fc_bsg_to_shost.exit.i1261_crit_edge: ; preds = %while.body.i14.i.i1253
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit.i1261

while.end.i16.i.i1255:                            ; preds = %while.cond.i11.i.i1250
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i.i1254 = getelementptr i8, ptr %dev.addr.0.i8.i.i1247, i32 -584
  br label %fc_bsg_to_shost.exit.i1261

fc_bsg_to_shost.exit.i1261:                       ; preds = %while.end.i16.i.i1255, %while.body.i14.i.i1253.fc_bsg_to_shost.exit.i1261_crit_edge, %while.end.i.i.i1244, %while.body.i.i.i1242.fc_bsg_to_shost.exit.i1261_crit_edge
  %retval.0.i.i1256 = phi ptr [ %add.ptr.i.i.i1243, %while.end.i.i.i1244 ], [ %add.ptr.i15.i.i1254, %while.end.i16.i.i1255 ], [ null, %while.body.i14.i.i1253.fc_bsg_to_shost.exit.i1261_crit_edge ], [ null, %while.body.i.i.i1242.fc_bsg_to_shost.exit.i1261_crit_edge ]
  %hostdata.i.i1257 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i1256, i32 0, i32 53
  %reply.i1258 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %1562 = ptrtoint ptr %reply.i1258 to i32
  call void @__asan_load4_noabort(i32 %1562)
  %1563 = load ptr, ptr %reply.i1258, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp_data.i1233) #9
  %request_payload.i1259 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7
  %1564 = ptrtoint ptr %request_payload.i1259 to i32
  call void @__asan_load4_noabort(i32 %1564)
  %1565 = load i32, ptr %request_payload.i1259, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1565)
  %cmp.not.i1260 = icmp eq i32 %1565, 4
  br i1 %cmp.not.i1260, label %if.end.i1265, label %if.then.i1262

if.then.i1262:                                    ; preds = %fc_bsg_to_shost.exit.i1261
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i1257, i32 noundef 0, ptr noundef nonnull @.str.15) #9
  br label %qla2x00_manage_host_port.exit

if.end.i1265:                                     ; preds = %fc_bsg_to_shost.exit.i1261
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1566 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i1263 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1566, i32 noundef 3520, i32 noundef 4) #15
  %tobool.not.i1264 = icmp eq ptr %call7.i.i.i1263, null
  br i1 %tobool.not.i1264, label %if.then3.i1266, label %if.end4.i1270

if.then3.i1266:                                   ; preds = %if.end.i1265
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i1257, i32 noundef 0, ptr noundef nonnull @.str.16) #9
  br label %qla2x00_manage_host_port.exit

if.end4.i1270:                                    ; preds = %if.end.i1265
  %sg_list.i1267 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %1567 = ptrtoint ptr %sg_list.i1267 to i32
  call void @__asan_load4_noabort(i32 %1567)
  %1568 = load ptr, ptr %sg_list.i1267, align 4
  %sg_cnt.i1268 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %1569 = ptrtoint ptr %sg_cnt.i1268 to i32
  call void @__asan_load4_noabort(i32 %1569)
  %1570 = load i32, ptr %sg_cnt.i1268, align 4
  %call7.i1269 = tail call i32 @sg_copy_to_buffer(ptr noundef %1568, i32 noundef %1570, ptr noundef nonnull %call7.i.i.i1263, i32 noundef 4) #9
  %1571 = ptrtoint ptr %call7.i.i.i1263 to i32
  call void @__asan_load4_noabort(i32 %1571)
  %1572 = load i32, ptr %call7.i.i.i1263, align 8
  %1573 = zext i32 %1572 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1573, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %1572, label %sw.default.i1275 [
    i32 0, label %sw.bb.i1273
    i32 1, label %sw.bb9.i
  ]

sw.bb.i1273:                                      ; preds = %if.end4.i1270
  call void @__sanitizer_cov_trace_pc() #11
  %host.i1271 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i1256, i32 1, i32 5, i32 1, i32 4, i32 6
  %1574 = ptrtoint ptr %host.i1271 to i32
  call void @__asan_load4_noabort(i32 %1574)
  %1575 = load ptr, ptr %host.i1271, align 8
  %call8.i1272 = tail call i32 @qla2xxx_enable_port(ptr noundef %1575) #9
  br label %sw.epilog.i1283

sw.bb9.i:                                         ; preds = %if.end4.i1270
  call void @__sanitizer_cov_trace_pc() #11
  %host10.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i1256, i32 1, i32 5, i32 1, i32 4, i32 6
  %1576 = ptrtoint ptr %host10.i to i32
  call void @__asan_load4_noabort(i32 %1576)
  %1577 = load ptr, ptr %host10.i, align 8
  %call11.i1274 = tail call i32 @qla2xxx_disable_port(ptr noundef %1577) #9
  br label %sw.epilog.i1283

sw.default.i1275:                                 ; preds = %if.end4.i1270
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i.i1257, i32 noundef 0, ptr noundef nonnull @.str.104) #9
  br label %sw.epilog.i1283

sw.epilog.i1283:                                  ; preds = %sw.default.i1275, %sw.bb9.i, %sw.bb.i1273
  %ret.0.i1276 = phi i32 [ -5, %sw.default.i1275 ], [ %call11.i1274, %sw.bb9.i ], [ %call8.i1272, %sw.bb.i1273 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i1263) #9
  %1578 = ptrtoint ptr %rsp_data.i1233 to i32
  call void @__asan_store4_noabort(i32 %1578)
  store i32 %ret.0.i1276, ptr %rsp_data.i1233, align 4
  %reply_data.i1277 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1563, i32 0, i32 2
  %1579 = ptrtoint ptr %reply_data.i1277 to i32
  call void @__asan_store4_noabort(i32 %1579)
  store i32 0, ptr %reply_data.i1277, align 4
  %reply_payload.i1278 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8
  %1580 = ptrtoint ptr %reply_payload.i1278 to i32
  call void @__asan_store4_noabort(i32 %1580)
  store i32 4, ptr %reply_payload.i1278, align 4
  %sg_list14.i1279 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %1581 = ptrtoint ptr %sg_list14.i1279 to i32
  call void @__asan_load4_noabort(i32 %1581)
  %1582 = load ptr, ptr %sg_list14.i1279, align 4
  %sg_cnt16.i1280 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %1583 = ptrtoint ptr %sg_cnt16.i1280 to i32
  call void @__asan_load4_noabort(i32 %1583)
  %1584 = load i32, ptr %sg_cnt16.i1280, align 4
  %call17.i1281 = call i32 @sg_copy_from_buffer(ptr noundef %1582, i32 noundef %1584, ptr noundef nonnull %rsp_data.i1233, i32 noundef 4) #9
  %reply_payload_rcv_len.i1282 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1563, i32 0, i32 1
  %1585 = ptrtoint ptr %reply_payload_rcv_len.i1282 to i32
  call void @__asan_store4_noabort(i32 %1585)
  store i32 %call17.i1281, ptr %reply_payload_rcv_len.i1282, align 4
  %1586 = ptrtoint ptr %1563 to i32
  call void @__asan_store4_noabort(i32 %1586)
  store i32 0, ptr %1563, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %call17.i1281) #9
  br label %qla2x00_manage_host_port.exit

qla2x00_manage_host_port.exit:                    ; preds = %sw.epilog.i1283, %if.then3.i1266, %if.then.i1262
  %retval.0.i1284 = phi i32 [ -5, %if.then.i1262 ], [ %ret.0.i1276, %sw.epilog.i1283 ], [ -12, %if.then3.i1266 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp_data.i1233) #9
  br label %cleanup

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = tail call i32 @qla2x00_mailbox_passthru(ptr noundef %bsg_job)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb58, %qla2x00_manage_host_port.exit, %tgt_stat_out.i, %if.then13.i, %if.then6.i1219, %if.then2.i1215, %if.then.i1211, %qla2x00_get_host_stats.exit, %qla2x00_manage_host_stats.exit, %qla2x00_get_flash_image_status.exit, %sw.bb46, %if.end50.i1043, %if.then39.i1033, %fc_bsg_to_shost.exit.i1031.cleanup_crit_edge, %qla2x00_get_priv_stats.exit, %qla27xx_get_bbcr_data.exit, %qla27xx_set_flash_upd_cap.exit, %qla27xx_get_flash_upd_cap.exit, %qla8044_serdes_op.exit, %qla26xx_serdes_op.exit, %if.then67.i, %done_unmap_req_sg.i738.cleanup_crit_edge, %qla24xx_calc_ct_iocbs.exit.i.cleanup_crit_edge, %if.then8.i, %if.then.i715, %qla24xx_process_bidir_cmd.exit, %qla2x00_read_i2c.exit, %qla2x00_write_i2c.exit, %qla2x00_write_fru_status.exit, %qla2x00_read_fru_status.exit, %qla2x00_update_fru_versions.exit, %if.end.i395, %if.then.i383, %if.end6.i351, %if.then4.i, %fc_bsg_to_shost.exit.i346.cleanup_crit_edge, %if.then141.i, %if.then118.i, %if.then104.i, %if.then94.i, %if.then80.i, %if.else71.i, %if.else.i308, %if.end39.i.cleanup_crit_edge, %if.end.i304.cleanup_crit_edge, %fc_bsg_to_shost.exit.i299.cleanup_crit_edge, %qla24xx_iidma.exit, %qla84xx_mgmt_cmd.exit, %qla84xx_updatefw.exit, %if.else.i126, %if.then6.i124, %if.then.i120, %qla2x00_process_loopback.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call59, %sw.bb58 ], [ %retval.0.i1284, %qla2x00_manage_host_port.exit ], [ %retval.0.i1181, %qla2x00_get_host_stats.exit ], [ %retval.0.i1128, %qla2x00_manage_host_stats.exit ], [ 0, %qla2x00_get_flash_image_status.exit ], [ %call47, %sw.bb46 ], [ %retval.0.i1003, %qla2x00_get_priv_stats.exit ], [ %retval.0.i956, %qla27xx_get_bbcr_data.exit ], [ %retval.0.i912, %qla27xx_set_flash_upd_cap.exit ], [ %retval.0.i864, %qla27xx_get_flash_upd_cap.exit ], [ 0, %qla8044_serdes_op.exit ], [ 0, %qla26xx_serdes_op.exit ], [ 0, %qla24xx_process_bidir_cmd.exit ], [ 0, %qla2x00_read_i2c.exit ], [ 0, %qla2x00_write_i2c.exit ], [ 0, %qla2x00_write_fru_status.exit ], [ 0, %qla2x00_read_fru_status.exit ], [ 0, %qla2x00_update_fru_versions.exit ], [ %retval.0.i271, %qla24xx_iidma.exit ], [ %retval.0.i227, %qla84xx_mgmt_cmd.exit ], [ %retval.0.i175, %qla84xx_updatefw.exit ], [ %retval.0.i, %qla2x00_process_loopback.exit ], [ -38, %entry.cleanup_crit_edge ], [ -22, %if.then.i120 ], [ 458752, %if.then6.i124 ], [ 0, %if.else.i126 ], [ 0, %if.then141.i ], [ -22, %if.end39.i.cleanup_crit_edge ], [ -22, %if.end.i304.cleanup_crit_edge ], [ -22, %fc_bsg_to_shost.exit.i299.cleanup_crit_edge ], [ -22, %if.else.i308 ], [ -22, %if.else71.i ], [ -22, %if.then80.i ], [ -22, %if.then94.i ], [ -12, %if.then104.i ], [ -22, %if.then118.i ], [ %call2.i, %if.then4.i ], [ 0, %if.end6.i351 ], [ -16, %fc_bsg_to_shost.exit.i346.cleanup_crit_edge ], [ %call2.i380, %if.then.i383 ], [ %..i, %if.end.i395 ], [ 0, %qla24xx_calc_ct_iocbs.exit.i.cleanup_crit_edge ], [ %rval.2.i737, %if.then67.i ], [ %rval.2.i737, %done_unmap_req_sg.i738.cleanup_crit_edge ], [ -12, %if.then8.i ], [ -5, %if.then.i715 ], [ 0, %if.end50.i1043 ], [ -12, %if.then39.i1033 ], [ -1, %fc_bsg_to_shost.exit.i1031.cleanup_crit_edge ], [ -5, %if.then2.i1215 ], [ %ret.1.i, %tgt_stat_out.i ], [ -12, %if.then13.i ], [ -12, %if.then6.i1219 ], [ -5, %if.then.i1211 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_bsg_timeout(ptr noundef %bsg_job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reply = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %0 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply, align 4
  %2 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsg_job, align 4
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %3) #9
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
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

while.body.i.i.fc_bsg_to_shost.exit_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
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
  %call.i9.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i

while.body.i14.i.fc_bsg_to_shost.exit_crit_edge:  ; preds = %while.body.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit

while.end.i16.i:                                  ; preds = %while.cond.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i = getelementptr i8, ptr %dev.addr.0.i8.i, i32 -584
  br label %fc_bsg_to_shost.exit

fc_bsg_to_shost.exit:                             ; preds = %while.end.i16.i, %while.body.i14.i.fc_bsg_to_shost.exit_crit_edge, %while.end.i.i, %while.body.i.i.fc_bsg_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ %add.ptr.i15.i, %while.end.i16.i ], [ null, %while.body.i14.i.fc_bsg_to_shost.exit_crit_edge ], [ null, %while.body.i.i.fc_bsg_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28811, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.qla24xx_bsg_timeout, ptr noundef %bsg_job) #9
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %13, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #9
  %max_req_queues = getelementptr inbounds %struct.qla_hw_data, ptr %13, i32 0, i32 30
  %14 = ptrtoint ptr %max_req_queues to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %max_req_queues, align 8
  %conv7 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp8116.not = icmp eq i8 %15, 0
  br i1 %cmp8116.not, label %fc_bsg_to_shost.exit.for.end63_crit_edge, label %for.body.lr.ph

fc_bsg_to_shost.exit.for.end63_crit_edge:         ; preds = %fc_bsg_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end63

for.body.lr.ph:                                   ; preds = %fc_bsg_to_shost.exit
  %req_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %13, i32 0, i32 24
  %16 = ptrtoint ptr %req_q_map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req_q_map, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc61.for.body_crit_edge, %for.body.lr.ph
  %que.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %inc62, %for.inc61.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %17, i32 %que.0117
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %for.body.for.inc61_crit_edge, label %for.cond10.preheader

for.body.for.inc61_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc61

for.cond10.preheader:                             ; preds = %for.body
  %num_outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %num_outstanding_cmds to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_outstanding_cmds, align 4
  %conv11 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp12113 = icmp ugt i16 %21, 1
  br i1 %cmp12113, label %for.body14.lr.ph, label %for.cond10.preheader.for.inc61_crit_edge

for.cond10.preheader.for.inc61_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc61

for.body14.lr.ph:                                 ; preds = %for.cond10.preheader
  %outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %19, i32 0, i32 16
  %22 = ptrtoint ptr %outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %outstanding_cmds, align 4
  br label %for.body14

for.body14:                                       ; preds = %for.inc.for.body14_crit_edge, %for.body14.lr.ph
  %cnt.0114 = phi i32 [ 1, %for.body14.lr.ph ], [ %inc, %for.inc.for.body14_crit_edge ]
  %arrayidx15 = getelementptr ptr, ptr %23, i32 %cnt.0114
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %25, null
  br i1 %tobool16.not, label %for.body14.for.inc_crit_edge, label %land.lhs.true

for.body14.for.inc_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body14
  %type = getelementptr inbounds %struct.srb, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %type, align 2
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.119)
  switch i16 %27, label %land.lhs.true.for.inc_crit_edge [
    i16 5, label %land.lhs.true.land.lhs.true34_crit_edge
    i16 4, label %land.lhs.true.land.lhs.true34_crit_edge148
    i16 26, label %land.lhs.true.land.lhs.true34_crit_edge149
    i16 11, label %land.lhs.true.land.lhs.true34_crit_edge150
  ]

land.lhs.true.land.lhs.true34_crit_edge150:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true34

land.lhs.true.land.lhs.true34_crit_edge149:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true34

land.lhs.true.land.lhs.true34_crit_edge148:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true34

land.lhs.true.land.lhs.true34_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true34

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true34:                                  ; preds = %land.lhs.true.land.lhs.true34_crit_edge, %land.lhs.true.land.lhs.true34_crit_edge148, %land.lhs.true.land.lhs.true34_crit_edge149, %land.lhs.true.land.lhs.true34_crit_edge150
  %u = getelementptr inbounds %struct.srb, ptr %25, i32 0, i32 22
  %29 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %u, align 8
  %cmp35 = icmp eq ptr %30, %bsg_job
  br i1 %cmp35, label %if.then37, label %land.lhs.true34.for.inc_crit_edge

land.lhs.true34.for.inc_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then37:                                        ; preds = %land.lhs.true34
  %arrayidx15.le = getelementptr ptr, ptr %23, i32 %cnt.0114
  %31 = ptrtoint ptr %arrayidx15.le to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx15.le, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call4) #9
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %13, i32 0, i32 234
  %32 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %isp_ops, align 4
  %abort_command = getelementptr inbounds %struct.isp_operations, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %abort_command to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %abort_command, align 4
  %call41 = tail call i32 %35(ptr noundef nonnull %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28809, ptr noundef nonnull @.str.12) #9
  br label %do.body47

if.else:                                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i, i32 noundef 28810, ptr noundef nonnull @.str.13) #9
  br label %do.body47

do.body47:                                        ; preds = %if.else, %if.then43
  %storemerge = phi i32 [ 0, %if.else ], [ -5, %if.then43 ]
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %storemerge, ptr %1, align 4
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call55) #9
  %free = getelementptr inbounds %struct.srb, ptr %25, i32 0, i32 25
  %37 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %free, align 8
  tail call void %38(ptr noundef nonnull %25) #9
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true34.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body14.for.inc_crit_edge
  %inc = add nuw nsw i32 %cnt.0114, 1
  %exitcond.not = icmp eq i32 %inc, %conv11
  br i1 %exitcond.not, label %for.inc.for.inc61_crit_edge, label %for.inc.for.body14_crit_edge

for.inc.for.body14_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

for.inc.for.inc61_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc61

for.inc61:                                        ; preds = %for.inc.for.inc61_crit_edge, %for.cond10.preheader.for.inc61_crit_edge, %for.body.for.inc61_crit_edge
  %inc62 = add nuw nsw i32 %que.0117, 1
  %exitcond124.not = icmp eq i32 %inc62, %conv7
  br i1 %exitcond124.not, label %for.inc61.for.end63_crit_edge, label %for.inc61.for.body_crit_edge

for.inc61.for.body_crit_edge:                     ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc61.for.end63_crit_edge:                    ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end63

for.end63:                                        ; preds = %for.inc61.for.end63_crit_edge, %fc_bsg_to_shost.exit.for.end63_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call4) #9
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28811, ptr noundef nonnull @.str.14) #9
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -6, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end63, %do.body47
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_mailbox_passthru(ptr noundef %bsg_job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reply = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %0 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply, align 4
  %2 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsg_job, align 4
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %3) #9
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
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

while.body.i.i.fc_bsg_to_shost.exit_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
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
  %call.i9.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i11.i

while.body.i14.i.fc_bsg_to_shost.exit_crit_edge:  ; preds = %while.body.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_bsg_to_shost.exit

while.end.i16.i:                                  ; preds = %while.cond.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i15.i = getelementptr i8, ptr %dev.addr.0.i8.i, i32 -584
  br label %fc_bsg_to_shost.exit

fc_bsg_to_shost.exit:                             ; preds = %while.end.i16.i, %while.body.i14.i.fc_bsg_to_shost.exit_crit_edge, %while.end.i.i, %while.body.i.i.fc_bsg_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ %add.ptr.i15.i, %while.end.i16.i ], [ null, %while.body.i14.i.fc_bsg_to_shost.exit_crit_edge ], [ null, %while.body.i.i.fc_bsg_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %request_payload = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7
  %12 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %request_payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 196, i32 %13)
  %cmp.not = icmp eq i32 %13, 196
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %fc_bsg_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 61603, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end:                                           ; preds = %fc_bsg_to_shost.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 196) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 61604, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sg_cnt, align 4
  %call7 = tail call i32 @sg_copy_to_buffer(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %call7.i.i, i32 noundef 196) #9
  %mbx_in = getelementptr inbounds %struct.qla_mbx_passthru, ptr %call7.i.i, i32 0, i32 1
  %mbx_out = getelementptr inbounds %struct.qla_mbx_passthru, ptr %call7.i.i, i32 0, i32 2
  %call9 = tail call i32 @qla_mailbox_passthru(ptr noundef %hostdata.i, ptr noundef %mbx_in, ptr noundef %mbx_out) #9
  %sg_list10 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %sg_list10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sg_list10, align 4
  %sg_cnt12 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %sg_cnt12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sg_cnt12, align 4
  %call13 = tail call i32 @sg_copy_from_buffer(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %call7.i.i, i32 noundef 196) #9
  %reply_payload_rcv_len = getelementptr inbounds %struct.fc_bsg_reply, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 196, ptr %reply_payload_rcv_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp14 = icmp ne i32 %call9, 0
  %spec.select = zext i1 %cmp14 to i32
  %24 = getelementptr inbounds %struct.fc_bsg_reply, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select, ptr %24, align 4
  %reply_len = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %26 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %reply_len, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %1, align 4
  %28 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reply_payload_rcv_len, align 4
  tail call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 0, i32 noundef %29) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ %call9, %if.end4 ], [ -12, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla_mailbox_passthru(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_free_fcport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_rel_done_warning(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_rel_free_warning(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_fc_rport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla_edif_process_els(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_fabric_login(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla2x00_alloc_fcport(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef %fcport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %vref_count = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 60
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #9, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !237
  tail call void @arm_heavy_mb() #9
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load volatile i32, ptr %flags, align 8
  %2 = and i32 %bf.load, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #9, !srcloc !233
  %vref_waitq = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
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
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #9, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !238
  tail call void @arm_heavy_mb() #9
  %delete_in_progress.i = getelementptr inbounds %struct.qla_qpair, ptr %7, i32 0, i32 6
  %9 = ptrtoint ptr %delete_in_progress.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %delete_in_progress.i, align 64
  %10 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #9, !srcloc !233
  br label %do.body16.critedge

if.end9.i:                                        ; preds = %if.end9
  %srb_mempool.i = getelementptr inbounds %struct.qla_qpair, ptr %7, i32 0, i32 9
  %12 = ptrtoint ptr %srb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srb_mempool.i, align 8
  %call.i = tail call noalias ptr @mempool_alloc(ptr noundef %13, i32 noundef 3264) #9
  %tobool10.not.i = icmp eq ptr %call.i, null
  br i1 %tobool10.not.i, label %if.else12.i, label %if.end12

if.else12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #9, !srcloc !233
  br label %do.body16.critedge

if.end12:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
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
  %call.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #9, !srcloc !233
  %vref_waitq18 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq18, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body16.critedge, %if.end12, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %call.i, %if.end12 ], [ null, %do.body16.critedge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_start_sp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla_edif_app_mgmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_echo_test(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla81xx_get_port_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla81xx_set_loopback_mode(ptr noundef %vha, ptr nocapture noundef readonly %config, ptr noundef %new_config, i16 noundef zeroext %mode) unnamed_addr #3 align 64 {
entry:
  %new_config.i = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 335872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %entry.done_set_internal_crit_edge, label %if.end

entry.done_set_internal_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_set_internal

if.end:                                           ; preds = %entry
  %6 = zext i16 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.120)
  switch i16 %mode, label %if.end.if.end26_crit_edge [
    i16 241, label %if.end.if.end26.sink.split_crit_edge
    i16 242, label %if.then19
  ]

if.end.if.end26.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.sink.split

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.then19, %if.end.if.end26.sink.split_crit_edge
  %.sink109 = phi i16 [ 8, %if.then19 ], [ 4, %if.end.if.end26.sink.split_crit_edge ]
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %config, align 2
  %9 = or i16 %8, %.sink109
  %10 = ptrtoint ptr %new_config to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %new_config, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.end.if.end26_crit_edge
  %11 = ptrtoint ptr %new_config to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %new_config, align 2
  %13 = and i16 %12, 14
  %and29 = zext i16 %13 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28862, ptr noundef nonnull @.str.55, i32 noundef %and29) #9
  %arrayidx30 = getelementptr i16, ptr %new_config, i32 1
  %arrayidx31 = getelementptr i16, ptr %config, i32 1
  %14 = call ptr @memcpy(ptr %arrayidx30, ptr %arrayidx31, i32 6)
  %notify_dcbx_comp = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 132
  %15 = ptrtoint ptr %notify_dcbx_comp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %notify_dcbx_comp, align 16
  %call = tail call i32 @qla81xx_set_port_config(ptr noundef %vha, ptr noundef %new_config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp32.not = icmp eq i32 %call, 0
  br i1 %cmp32.not, label %while.cond.preheader, label %if.then34

while.cond.preheader:                             ; preds = %if.end26
  %dcbx_comp = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 130
  %call37101 = tail call i32 @wait_for_completion_timeout(ptr noundef %dcbx_comp, i32 noundef 2000) #9
  %idc_extend_tmo = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 270
  %16 = ptrtoint ptr %idc_extend_tmo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idc_extend_tmo, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool38.not102 = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37101)
  %tobool39.not103 = icmp eq i32 %call37101, 0
  %or.cond95104 = select i1 %tobool38.not102, i1 %tobool39.not103, i1 false
  br i1 %or.cond95104, label %while.cond.preheader.if.end42_crit_edge, label %while.cond.preheader.if.then40_crit_edge

while.cond.preheader.if.then40_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

while.cond.preheader.if.end42_crit_edge:          ; preds = %while.cond.preheader
  br label %if.end42

if.then34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28705, ptr noundef nonnull @.str.56) #9
  %18 = ptrtoint ptr %notify_dcbx_comp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %notify_dcbx_comp, align 16
  br label %done_set_internal

if.then40:                                        ; preds = %if.end42.if.then40_crit_edge, %while.cond.preheader.if.then40_crit_edge
  %tobool39.not.lcssa = phi i1 [ %tobool39.not103, %while.cond.preheader.if.then40_crit_edge ], [ %tobool39.not, %if.end42.if.then40_crit_edge ]
  %19 = ptrtoint ptr %idc_extend_tmo to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %idc_extend_tmo, align 64
  br i1 %tobool39.not.lcssa, label %if.then46, label %if.else51

if.end42:                                         ; preds = %if.end42.if.end42_crit_edge, %while.cond.preheader.if.end42_crit_edge
  %20 = phi i32 [ %23, %if.end42.if.end42_crit_edge ], [ %17, %while.cond.preheader.if.end42_crit_edge ]
  %mul = mul i32 %20, 100
  %21 = ptrtoint ptr %idc_extend_tmo to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %idc_extend_tmo, align 64
  %call37 = tail call i32 @wait_for_completion_timeout(ptr noundef %dcbx_comp, i32 noundef %mul) #9
  %22 = ptrtoint ptr %idc_extend_tmo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idc_extend_tmo, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool38.not = icmp ne i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool39.not = icmp eq i32 %call37, 0
  %or.cond95 = select i1 %tobool38.not, i1 %tobool39.not, i1 false
  br i1 %or.cond95, label %if.end42.if.end42_crit_edge, label %if.end42.if.then40_crit_edge

if.end42.if.then40_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.end42.if.end42_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then46:                                        ; preds = %if.then40
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28706, ptr noundef nonnull @.str.57) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_config.i) #9
  %24 = getelementptr inbounds [4 x i16], ptr %new_config.i, i32 0, i32 1
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %26, i32 0, i32 54
  %27 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %isp_type.i, align 8
  %29 = and i32 %28, 335872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %if.then46.qla81xx_reset_loopback_mode.exit.thread_crit_edge, label %if.end.i

if.then46.qla81xx_reset_loopback_mode.exit.thread_crit_edge: ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla81xx_reset_loopback_mode.exit.thread

if.end.i:                                         ; preds = %if.then46
  %31 = ptrtoint ptr %new_config to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %new_config, align 2
  %33 = lshr i16 %32, 1
  %trunc.i = trunc i16 %33 to i3
  %34 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.121)
  switch i3 %trunc.i, label %if.end.i.qla81xx_reset_loopback_mode.exit.thread_crit_edge [
    i3 2, label %if.end.i.if.then19.i_crit_edge
    i3 -4, label %if.end.i.if.then19.i_crit_edge113
  ]

if.end.i.if.then19.i_crit_edge113:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19.i

if.end.i.if.then19.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19.i

if.end.i.qla81xx_reset_loopback_mode.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla81xx_reset_loopback_mode.exit.thread

if.then19.i:                                      ; preds = %if.end.i.if.then19.i_crit_edge, %if.end.i.if.then19.i_crit_edge113
  %35 = and i16 %32, -15
  %36 = ptrtoint ptr %new_config.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %new_config.i, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28863, ptr noundef nonnull @.str.55, i32 noundef 0) #9
  %37 = call ptr @memcpy(ptr %24, ptr %arrayidx30, i32 6)
  %notify_dcbx_comp.i = getelementptr inbounds %struct.qla_hw_data, ptr %26, i32 0, i32 132
  %38 = ptrtoint ptr %notify_dcbx_comp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %notify_dcbx_comp.i, align 16
  %notify_lb_portup_comp.i = getelementptr inbounds %struct.qla_hw_data, ptr %26, i32 0, i32 133
  %39 = ptrtoint ptr %notify_lb_portup_comp.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %notify_lb_portup_comp.i, align 4
  %call.i = call i32 @qla81xx_set_port_config(ptr noundef %vha, ptr noundef nonnull %new_config.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp31.not.i, label %qla81xx_reset_loopback_mode.exit.thread98, label %if.then49

qla81xx_reset_loopback_mode.exit.thread98:        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28711, ptr noundef nonnull @.str.59) #9
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28870, ptr noundef nonnull @.str.62) #9
  %40 = ptrtoint ptr %notify_dcbx_comp.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %notify_dcbx_comp.i, align 16
  %41 = ptrtoint ptr %notify_lb_portup_comp.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %notify_lb_portup_comp.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_config.i) #9
  br label %if.end59

qla81xx_reset_loopback_mode.exit.thread:          ; preds = %if.end.i.qla81xx_reset_loopback_mode.exit.thread_crit_edge, %if.then46.qla81xx_reset_loopback_mode.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_config.i) #9
  br label %if.end59

if.then49:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28709, ptr noundef nonnull @.str.60) #9
  %42 = ptrtoint ptr %notify_dcbx_comp.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %notify_dcbx_comp.i, align 16
  %43 = ptrtoint ptr %notify_lb_portup_comp.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %notify_lb_portup_comp.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_config.i) #9
  call void @qla2xxx_dump_fw(ptr noundef %vha) #9
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags) #9
  br label %if.end59

if.else51:                                        ; preds = %if.then40
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load = load volatile i32, ptr %flags, align 8
  %45 = and i32 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool52.not = icmp eq i32 %45, 0
  br i1 %tobool52.not, label %if.else57, label %if.then53

if.then53:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28867, ptr noundef nonnull @.str.58) #9
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load55 = load volatile i32, ptr %flags, align 8
  %bf.clear56 = and i32 %bf.load55, -9
  store volatile i32 %bf.clear56, ptr %flags, align 8
  br label %if.end59

if.else57:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28707, ptr noundef nonnull @.str.59) #9
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then53, %if.then49, %qla81xx_reset_loopback_mode.exit.thread, %qla81xx_reset_loopback_mode.exit.thread98
  %rval.0 = phi i32 [ -22, %if.then53 ], [ 0, %if.else57 ], [ -22, %if.then49 ], [ -22, %qla81xx_reset_loopback_mode.exit.thread ], [ -22, %qla81xx_reset_loopback_mode.exit.thread98 ]
  %47 = ptrtoint ptr %notify_dcbx_comp to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %notify_dcbx_comp, align 16
  %48 = ptrtoint ptr %idc_extend_tmo to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %idc_extend_tmo, align 64
  br label %done_set_internal

done_set_internal:                                ; preds = %if.end59, %if.then34, %entry.done_set_internal_crit_edge
  %rval.1 = phi i32 [ -22, %if.then34 ], [ %rval.0, %if.end59 ], [ 0, %entry.done_set_internal_crit_edge ]
  ret i32 %rval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla81xx_reset_loopback_mode(ptr noundef %vha, ptr nocapture noundef readonly %config, i32 noundef %wait, i32 noundef %wait2) unnamed_addr #3 align 64 {
entry:
  %new_config = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_config) #9
  %0 = getelementptr inbounds [4 x i16], ptr %new_config, i32 0, i32 1
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 54
  %3 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %isp_type, align 8
  %5 = and i32 %4, 335872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %entry.done_reset_internal_crit_edge, label %if.end

entry.done_reset_internal_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_reset_internal

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %config, align 2
  %9 = lshr i16 %8, 1
  %trunc = trunc i16 %9 to i3
  %10 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.122)
  switch i3 %trunc, label %if.end.done_reset_internal_crit_edge [
    i3 2, label %if.end.if.then19_crit_edge
    i3 -4, label %if.end.if.then19_crit_edge82
  ]

if.end.if.then19_crit_edge82:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.end.done_reset_internal_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_reset_internal

if.then19:                                        ; preds = %if.end.if.then19_crit_edge, %if.end.if.then19_crit_edge82
  %11 = and i16 %8, -15
  %12 = ptrtoint ptr %new_config to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %new_config, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28863, ptr noundef nonnull @.str.55, i32 noundef 0) #9
  %arrayidx29 = getelementptr i16, ptr %config, i32 1
  %13 = call ptr @memcpy(ptr %0, ptr %arrayidx29, i32 6)
  %notify_dcbx_comp = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 132
  %14 = ptrtoint ptr %notify_dcbx_comp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %wait, ptr %notify_dcbx_comp, align 16
  %notify_lb_portup_comp = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 133
  %15 = ptrtoint ptr %notify_lb_portup_comp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %wait2, ptr %notify_lb_portup_comp, align 4
  %call = call i32 @qla81xx_set_port_config(ptr noundef %vha, ptr noundef nonnull %new_config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp31.not = icmp eq i32 %call, 0
  br i1 %cmp31.not, label %if.end36, label %if.then33

if.then33:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28709, ptr noundef nonnull @.str.60) #9
  %16 = ptrtoint ptr %notify_dcbx_comp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %notify_dcbx_comp, align 16
  br label %done_reset_internal.sink.split

if.end36:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool37.not = icmp eq i32 %wait, 0
  br i1 %tobool37.not, label %if.end36.if.else_crit_edge, label %land.lhs.true38

if.end36.if.else_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true38:                                  ; preds = %if.end36
  %dcbx_comp = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 130
  %call39 = call i32 @wait_for_completion_timeout(ptr noundef %dcbx_comp, i32 noundef 2000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %land.lhs.true38.if.else_crit_edge

land.lhs.true38.if.else_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then41:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28710, ptr noundef nonnull @.str.57) #9
  %17 = ptrtoint ptr %notify_dcbx_comp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %notify_dcbx_comp, align 16
  br label %done_reset_internal.sink.split

if.else:                                          ; preds = %land.lhs.true38.if.else_crit_edge, %if.end36.if.else_crit_edge
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28711, ptr noundef nonnull @.str.59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait2)
  %tobool45.not = icmp eq i32 %wait2, 0
  br i1 %tobool45.not, label %if.else.if.else51_crit_edge, label %land.lhs.true46

if.else.if.else51_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else51

land.lhs.true46:                                  ; preds = %if.else
  %lb_portup_comp = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 131
  %call47 = call i32 @wait_for_completion_timeout(ptr noundef %lb_portup_comp, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %land.lhs.true46.if.else51_crit_edge

land.lhs.true46.if.else51_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else51

if.then49:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28869, ptr noundef nonnull @.str.61) #9
  br label %done_reset_internal.sink.split

if.else51:                                        ; preds = %land.lhs.true46.if.else51_crit_edge, %if.else.if.else51_crit_edge
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28870, ptr noundef nonnull @.str.62) #9
  %18 = ptrtoint ptr %notify_dcbx_comp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %notify_dcbx_comp, align 16
  br label %done_reset_internal.sink.split

done_reset_internal.sink.split:                   ; preds = %if.else51, %if.then49, %if.then41, %if.then33
  %rval.0.ph = phi i32 [ -22, %if.then41 ], [ -22, %if.then49 ], [ 0, %if.else51 ], [ -22, %if.then33 ]
  %19 = ptrtoint ptr %notify_lb_portup_comp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %notify_lb_portup_comp, align 4
  br label %done_reset_internal

done_reset_internal:                              ; preds = %done_reset_internal.sink.split, %if.end.done_reset_internal_crit_edge, %entry.done_reset_internal_crit_edge
  %rval.0 = phi i32 [ 0, %entry.done_reset_internal_crit_edge ], [ 0, %if.end.done_reset_internal_crit_edge ], [ %rval.0.ph, %done_reset_internal.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_config) #9
  ret i32 %rval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_loopback_test(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_wake_dpc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_wait_for_chip_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla81xx_restart_mpi_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_dump_fw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla81xx_set_port_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla84xx_reset_chip(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_issue_iocb_timeout(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_issue_iocb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_set_idma_speed(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_get_idma_speed(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_update_all_fcp_prio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla2x00_optrom_setup(ptr nocapture noundef readonly %bsg_job, ptr noundef %vha, i8 noundef zeroext %is_update) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 1
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !235

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %request = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 3
  %6 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request, align 4
  %arrayidx = getelementptr %struct.fc_bsg_request, ptr %7, i32 0, i32 1, i32 1, i32 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx, align 1
  %optrom_size = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 199
  %10 = ptrtoint ptr %optrom_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %optrom_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp ugt i32 %9, %11
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28757, ptr noundef nonnull @.str.83, i32 noundef %9, i32 noundef %11) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %optrom_state = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 200
  %12 = ptrtoint ptr %optrom_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %optrom_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6.not = icmp eq i32 %13, 0
  br i1 %cmp6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 28758, ptr noundef nonnull @.str.84, i32 noundef %13) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %optrom_region_start = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 201
  %14 = ptrtoint ptr %optrom_region_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %optrom_region_start, align 16
  %conv = zext i8 %is_update to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28759, ptr noundef nonnull @.str.85, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_update)
  %tobool10.not = icmp eq i8 %is_update, 0
  br i1 %tobool10.not, label %if.else118, label %if.then11

if.then11:                                        ; preds = %if.end9
  %15 = ptrtoint ptr %optrom_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %optrom_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %16)
  %cmp13 = icmp eq i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp15 = icmp eq i32 %9, 0
  %or.cond = select i1 %cmp13, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.then11.if.end108_crit_edge, label %if.else

if.then11.if.end108_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.else:                                          ; preds = %if.then11
  %flt_region_boot = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 220, i32 2
  %17 = ptrtoint ptr %flt_region_boot to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flt_region_boot, align 4
  %mul = shl i32 %18, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mul)
  %cmp18 = icmp eq i32 %9, %mul
  br i1 %cmp18, label %if.else.if.end108_crit_edge, label %lor.lhs.false

if.else.if.end108_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

lor.lhs.false:                                    ; preds = %if.else
  %flt_region_fw = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 220, i32 4
  %19 = ptrtoint ptr %flt_region_fw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flt_region_fw, align 4
  %mul20 = shl i32 %20, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mul20)
  %cmp21 = icmp eq i32 %9, %mul20
  br i1 %cmp21, label %lor.lhs.false.if.end108_crit_edge, label %if.else24

lor.lhs.false.if.end108_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.else24:                                        ; preds = %lor.lhs.false
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %21 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %isp_type, align 8
  %23 = and i32 %22, 46006144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %if.then107, label %if.else24.if.end108_crit_edge

if.else24.if.end108_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then107:                                       ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  %request_payload = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7
  %25 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %request_payload, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28760, ptr noundef nonnull @.str.86, i32 noundef %9, i32 noundef %26) #9
  br label %cleanup

if.end108:                                        ; preds = %if.else24.if.end108_crit_edge, %lor.lhs.false.if.end108_crit_edge, %if.else.if.end108_crit_edge, %if.then11.if.end108_crit_edge
  %request_payload109 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7
  %27 = ptrtoint ptr %request_payload109 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %request_payload109, align 4
  %add = add i32 %28, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp112 = icmp ugt i32 %add, %16
  %sub = sub i32 %16, %9
  %cond = select i1 %cmp112, i32 %sub, i32 %28
  br label %if.end134

if.else118:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %reply_payload = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8
  %29 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reply_payload, align 4
  %add120 = add i32 %30, %9
  %31 = ptrtoint ptr %optrom_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %optrom_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add120, i32 %32)
  %cmp122 = icmp ugt i32 %add120, %32
  %sub126 = sub i32 %32, %9
  %cond131 = select i1 %cmp122, i32 %sub126, i32 %30
  br label %if.end134

if.end134:                                        ; preds = %if.else118, %if.end108
  %cond131.sink = phi i32 [ %cond131, %if.else118 ], [ %cond, %if.end108 ]
  %storemerge = phi i32 [ 1, %if.else118 ], [ 2, %if.end108 ]
  %optrom_region_size132 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 202
  %33 = ptrtoint ptr %optrom_region_size132 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond131.sink, ptr %optrom_region_size132, align 4
  %34 = ptrtoint ptr %optrom_state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge, ptr %optrom_state, align 4
  %call136 = tail call noalias ptr @vzalloc(i32 noundef %cond131.sink) #14
  %optrom_buffer = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 198
  %35 = ptrtoint ptr %optrom_buffer to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call136, ptr %optrom_buffer, align 4
  %tobool138.not = icmp eq ptr %call136, null
  br i1 %tobool138.not, label %if.then139, label %if.end134.cleanup_crit_edge

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then139:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  %optrom_region_size135 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 202
  %36 = ptrtoint ptr %optrom_region_size135 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %optrom_region_size135, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28761, ptr noundef nonnull @.str.87, i32 noundef %37) #9
  %38 = ptrtoint ptr %optrom_state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %optrom_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then139, %if.end134.cleanup_crit_edge, %if.then107, %if.then7, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ -16, %if.then7 ], [ -12, %if.then139 ], [ -22, %if.then107 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end134.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_write_sfp(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_read_sfp(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_start_bidir(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dump_buffer(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_write_serdes_word(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_read_serdes_word(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla8044_write_serdes_word(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla8044_read_serdes_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_get_adapter_id(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_get_isp_stats(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla26xx_dport_diagnostics(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla27xx_get_active_image(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla28xx_get_aux_images(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2xxx_stop_stats(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2xxx_start_stats(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2xxx_reset_stats(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @qla2x00_get_num_tgts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @qla2x00_count_set_bits(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2xxx_get_ini_stats(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2xxx_get_tgt_stats(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2xxx_enable_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2xxx_disable_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221}
!llvm.module.flags = !{!223, !224, !225, !226, !227, !228, !229, !230}
!llvm.ident = !{!231}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 29, i32 6}
!2 = !{ptr @__func__.qla2x00_bsg_job_done, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 30, i32 6}
!4 = !{ptr @qla2x00_bsg_sp_free.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 78, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 103, i32 7}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 107, i32 20}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 110, i32 7}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 127, i32 7}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 132, i32 7}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2923, i32 7}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2936, i32 6}
!21 = !{ptr @__func__.qla24xx_bsg_request, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2937, i32 6}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2954, i32 36}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2959, i32 6}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2975, i32 35}
!29 = !{ptr @__func__.qla24xx_bsg_timeout, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2976, i32 6}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2996, i32 10}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 3000, i32 10}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 3010, i32 35}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 3031, i32 36}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 3037, i32 10}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 289, i32 10}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 294, i32 10}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 301, i32 36}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 309, i32 7}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 318, i32 7}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 333, i32 8}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 385, i32 7}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 405, i32 4}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 405, i32 20}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 411, i32 6}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 419, i32 7}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 466, i32 16}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 473, i32 7}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 482, i32 7}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 490, i32 7}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 499, i32 7}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 516, i32 7}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 529, i32 7}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 545, i32 7}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 551, i32 13}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 558, i32 6}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 567, i32 7}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2791, i32 35}
!87 = !{ptr @__func__.qla2x00_process_vendor_specific, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2792, i32 6}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 767, i32 7}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 777, i32 7}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 785, i32 7}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 798, i32 7}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 807, i32 7}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 830, i32 10}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 832, i32 7}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 842, i32 9}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 849, i32 9}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 856, i32 8}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 874, i32 11}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 884, i32 9}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 893, i32 11}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 933, i32 7}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 940, i32 7}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 674, i32 7}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 682, i32 7}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 703, i32 7}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 717, i32 8}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 722, i32 8}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 614, i32 8}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 638, i32 8}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 644, i32 8}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 987, i32 36}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 997, i32 7}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1002, i32 7}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1045, i32 7}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1057, i32 7}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1068, i32 7}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1095, i32 7}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1100, i32 7}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1171, i32 8}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1184, i32 8}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1213, i32 8}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1275, i32 7}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1281, i32 7}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1332, i32 36}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1339, i32 7}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1357, i32 7}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1363, i32 7}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1369, i32 7}
!171 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1382, i32 7}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 224, i32 9}
!175 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1421, i32 7}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1427, i32 7}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1432, i32 35}
!181 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1445, i32 8}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1466, i32 7}
!185 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1820, i32 4}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1835, i32 4}
!189 = !{ptr @.str.90, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1843, i32 4}
!191 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1851, i32 4}
!193 = !{ptr @.str.92, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1859, i32 7}
!195 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1875, i32 8}
!197 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1911, i32 7}
!199 = !{ptr @.str.95, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1926, i32 7}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1934, i32 7}
!203 = !{ptr @.str.97, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 1991, i32 16}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2064, i32 13}
!207 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2071, i32 6}
!209 = !{ptr @.str.100, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2129, i32 7}
!211 = !{ptr @.str.101, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2354, i32 7}
!213 = !{ptr @.str.102, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2398, i32 7}
!215 = !{ptr @.str.103, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2447, i32 6}
!217 = !{ptr @__func__.qla2x00_get_flash_image_status, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2448, i32 6}
!219 = !{ptr @.str.104, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2509, i32 36}
!221 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/qla2xxx/qla_bsg.c", i32 2702, i32 36}
!223 = !{i32 1, !"wchar_size", i32 2}
!224 = !{i32 1, !"min_enum_size", i32 4}
!225 = !{i32 8, !"branch-target-enforcement", i32 0}
!226 = !{i32 8, !"sign-return-address", i32 0}
!227 = !{i32 8, !"sign-return-address-all", i32 0}
!228 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!229 = !{i32 7, !"uwtable", i32 1}
!230 = !{i32 7, !"frame-pointer", i32 2}
!231 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!232 = !{i8 0, i8 2}
!233 = !{i64 2148438855, i64 2148438881, i64 2148438910, i64 2148438944, i64 2148438975, i64 2148438998}
!234 = !{!"auto-init"}
!235 = !{!"branch_weights", i32 2000, i32 1}
!236 = !{i64 2148436390, i64 2148436416, i64 2148436445, i64 2148436479, i64 2148436510, i64 2148436533}
!237 = !{i64 2156848696}
!238 = !{i64 2156847799}
