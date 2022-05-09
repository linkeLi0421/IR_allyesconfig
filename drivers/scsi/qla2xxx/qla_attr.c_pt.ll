; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla2xxx/qla_attr.c_pt.bc'
source_filename = "../drivers/scsi/qla2xxx/qla_attr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sysfs_entry = type { ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.anon.172 = type { i16, ptr }
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
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
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
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.anon.80 = type { i8, i8, i8, i8 }
%struct.fc_host_attrs = type { i64, i64, i64, i32, [32 x i8], i32, i32, i16, i32, i32, i32, i32, [64 x i8], [64 x i8], [256 x i8], [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [8 x i8], [256 x i8], i32, i32, i32, [32 x i8], i32, i64, [256 x i8], [256 x i8], i32, %struct.fc_fpin_stats, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i16, [20 x i8], ptr, [20 x i8], ptr, ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.81, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.81 = type { ptr }
%struct.qla_qpair = type { %struct.spinlock, %struct.atomic_t, i32, ptr, ptr, i32, i8, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.qla_counters, %struct.list_head, %struct.list_head, i16, i32, i64, %struct.qla_tgt_counters, i16, [94 x i8], %struct.qla_fw_resources, i32, i32, i32, [108 x i8] }
%struct.qla_counters = type { i64, i64, i64, i64 }
%struct.qla_tgt_counters = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_fw_resources = type { i16, i16, i16, i16 }
%struct.link_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, [11 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [70 x i32] }
%struct.fc_vport = type { i32, i32, i64, i64, i32, i32, i32, [64 x i8], ptr, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.work_struct }
%struct.qla_npiv_entry = type { i16, i16, i8, i8, i16, [8 x i8], [8 x i8] }
%struct.active_regions = type { i8, %struct.anon.171 }
%struct.anon.171 = type { i8, i8, i8, i8 }
%struct.qla_chip_state_84xx = type { %struct.list_head, %struct.kref, ptr, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32 }

@bin_file_entries = internal constant { [11 x %struct.sysfs_entry], [60 x i8] } { [11 x %struct.sysfs_entry] [%struct.sysfs_entry { ptr @.str.2, ptr @sysfs_fw_dump_attr, i32 0 }, %struct.sysfs_entry { ptr @.str.3, ptr @sysfs_nvram_attr, i32 0 }, %struct.sysfs_entry { ptr @.str.4, ptr @sysfs_optrom_attr, i32 0 }, %struct.sysfs_entry { ptr @.str.5, ptr @sysfs_optrom_ctl_attr, i32 0 }, %struct.sysfs_entry { ptr @.str.6, ptr @sysfs_vpd_attr, i32 1 }, %struct.sysfs_entry { ptr @.str.7, ptr @sysfs_sfp_attr, i32 1 }, %struct.sysfs_entry { ptr @.str.8, ptr @sysfs_reset_attr, i32 0 }, %struct.sysfs_entry { ptr @.str.9, ptr @sysfs_issue_logo_attr, i32 0 }, %struct.sysfs_entry { ptr @.str.10, ptr @sysfs_xgmac_stats_attr, i32 3 }, %struct.sysfs_entry { ptr @.str.11, ptr @sysfs_dcbx_tlv_attr, i32 3 }, %struct.sysfs_entry zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unable to create sysfs %s binary attribute (%d).\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Successfully created sysfs %s binary attribute.\0A\00", [47 x i8] zeroinitializer }, align 32
@qla2x00_host_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @qla_host_attr_is_visible, ptr null, ptr @qla2x00_host_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@qla2x00_host_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @qla2x00_host_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@qla2xxx_transport_functions = dso_local global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 } { ptr null, ptr @qla2x00_set_rport_loss_tmo, ptr @qla2x00_get_starget_node_name, ptr @qla2x00_get_starget_port_name, ptr @qla2x00_get_starget_port_id, ptr @qla2x00_get_host_port_id, ptr @qla2x00_get_host_port_type, ptr @qla2x00_get_host_port_state, ptr null, ptr @qla2x00_get_host_speed, ptr @qla2x00_get_host_fabric_name, ptr @qla2x00_get_host_symbolic_name, ptr @qla2x00_set_host_system_hostname, ptr @qla2x00_get_fc_host_stats, ptr @qla2x00_reset_host_stats, ptr @qla2x00_issue_lip, ptr @qla2x00_dev_loss_tmo_callbk, ptr @qla2x00_terminate_rport_io, ptr null, ptr @qla24xx_vport_create, ptr @qla24xx_vport_disable, ptr @qla24xx_vport_delete, ptr @qla24xx_bsg_request, ptr @qla24xx_bsg_timeout, i32 4, i32 0, i32 0, i8 127, i8 80, i8 7, i8 120 }, [48 x i8] zeroinitializer }, align 32
@qla2xxx_transport_vport_functions = dso_local global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 } { ptr null, ptr @qla2x00_set_rport_loss_tmo, ptr @qla2x00_get_starget_node_name, ptr @qla2x00_get_starget_port_name, ptr @qla2x00_get_starget_port_id, ptr @qla2x00_get_host_port_id, ptr @qla2x00_get_host_port_type, ptr @qla2x00_get_host_port_state, ptr null, ptr @qla2x00_get_host_speed, ptr @qla2x00_get_host_fabric_name, ptr @qla2x00_get_host_symbolic_name, ptr @qla2x00_set_host_system_hostname, ptr @qla2x00_get_fc_host_stats, ptr @qla2x00_reset_host_stats, ptr @qla2x00_issue_lip, ptr @qla2x00_dev_loss_tmo_callbk, ptr @qla2x00_terminate_rport_io, ptr null, ptr null, ptr null, ptr null, ptr @qla24xx_bsg_request, ptr @qla24xx_bsg_timeout, i32 4, i32 0, i32 0, i8 127, i8 64, i8 7, i8 120 }, [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw_dump\00", [24 x i8] zeroinitializer }, align 32
@sysfs_fw_dump_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.2, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qla2x00_sysfs_read_fw_dump, ptr @qla2x00_sysfs_write_fw_dump, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvram\00", [26 x i8] zeroinitializer }, align 32
@sysfs_nvram_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.3, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 512, ptr null, ptr null, ptr @qla2x00_sysfs_read_nvram, ptr @qla2x00_sysfs_write_nvram, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"optrom\00", [25 x i8] zeroinitializer }, align 32
@sysfs_optrom_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.4, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qla2x00_sysfs_read_optrom, ptr @qla2x00_sysfs_write_optrom, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"optrom_ctl\00", [21 x i8] zeroinitializer }, align 32
@sysfs_optrom_ctl_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.5, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr null, ptr @qla2x00_sysfs_write_optrom_ctl, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpd\00", [28 x i8] zeroinitializer }, align 32
@sysfs_vpd_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.6, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qla2x00_sysfs_read_vpd, ptr @qla2x00_sysfs_write_vpd, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfp\00", [28 x i8] zeroinitializer }, align 32
@sysfs_sfp_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.7, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 512, ptr null, ptr null, ptr @qla2x00_sysfs_read_sfp, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@sysfs_reset_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.8, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr null, ptr @qla2x00_sysfs_write_reset, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"issue_logo\00", [21 x i8] zeroinitializer }, align 32
@sysfs_issue_logo_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.9, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr null, ptr @qla2x00_issue_logo, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xgmac_stats\00", [20 x i8] zeroinitializer }, align 32
@sysfs_xgmac_stats_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.10, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qla2x00_sysfs_read_xgmac_stats, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dcbx_tlv\00", [23 x i8] zeroinitializer }, align 32
@sysfs_dcbx_tlv_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.11, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qla2x00_sysfs_read_dcbx_tlv, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Firmware dump cleared on (%ld).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Raw firmware dump ready for read on (%ld).\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MiniDump supported with this firmware.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MiniDump not supported with this firmware.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MCTP dump cleared on (%ld).\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Raw mctp dump ready for read on (%ld).\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MPI firmware dump cleared on (%ld).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Raw MPI firmware dump ready for read on (%ld).\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Issuing MPI firmware dump on host#%ld.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"HBA not online, failing NVRAM update.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Setting ISP_ABORT_NEEDED\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d:%x:%x\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Freeing flash region allocation -- 0x%x bytes.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Unable to allocate memory for optrom retrieval (%x).\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Reading flash region -- 0x%x/0x%x.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid start region 0x%x/0x%x.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unable to allocate memory for optrom update (%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Staging flash region write -- 0x%x/0x%x.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"HBA not online, failing flash update.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Writing flash region -- 0x%x/0x%x.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HBA not online, failing VPD update.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unable to allocate memory for VPD information update.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Issuing ISP reset.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Port is isolated, returning.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Issuing MPI reset.\0A\00", [44 x i8] zeroinitializer }, align 32
@qla2x00_sysfs_write_reset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/qla2xxx/qla_attr.c\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MPI reset failed.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FCoE ctx reset not supported.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Issuing FCoE ctx reset.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Disabling Reset by IDC control\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enabling Reset by IDC control\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Updating cache versions without reset \00", [57 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"portid=%02x%02x%02x done\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@__func__.qla2x00_issue_logo = private unnamed_addr constant [19 x i8] c"qla2x00_issue_logo\00", align 1
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to allocate memory for XGMAC read-data.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to read XGMAC data (%x).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unable to allocate memory for DCBX TLV read-data.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to read DCBX TLV (%x).\0A\00", [33 x i8] zeroinitializer }, align 32
@qla2x00_host_attrs = internal global { [48 x ptr], [32 x i8] } { [48 x ptr] [ptr @dev_attr_driver_version, ptr @dev_attr_fw_version, ptr @dev_attr_serial_num, ptr @dev_attr_isp_name, ptr @dev_attr_isp_id, ptr @dev_attr_model_name, ptr @dev_attr_model_desc, ptr @dev_attr_pci_info, ptr @dev_attr_link_state, ptr @dev_attr_zio, ptr @dev_attr_zio_timer, ptr @dev_attr_beacon, ptr @dev_attr_beacon_config, ptr @dev_attr_optrom_bios_version, ptr @dev_attr_optrom_efi_version, ptr @dev_attr_optrom_fcode_version, ptr @dev_attr_optrom_fw_version, ptr @dev_attr_84xx_fw_version, ptr @dev_attr_total_isp_aborts, ptr @dev_attr_serdes_version, ptr @dev_attr_mpi_version, ptr @dev_attr_phy_version, ptr @dev_attr_flash_block_size, ptr @dev_attr_vlan_id, ptr @dev_attr_vn_port_mac_address, ptr @dev_attr_fabric_param, ptr @dev_attr_fw_state, ptr @dev_attr_optrom_gold_fw_version, ptr @dev_attr_thermal_temp, ptr @dev_attr_diag_requests, ptr @dev_attr_diag_megabytes, ptr @dev_attr_fw_dump_size, ptr @dev_attr_allow_cna_fw_dump, ptr @dev_attr_pep_version, ptr @dev_attr_min_supported_speed, ptr @dev_attr_max_supported_speed, ptr @dev_attr_zio_threshold, ptr @dev_attr_dif_bundle_statistics, ptr @dev_attr_port_speed, ptr @dev_attr_port_no, ptr @dev_attr_fw_attr, ptr @dev_attr_dport_diagnostics, ptr @dev_attr_edif_doorbell, ptr @dev_attr_mpi_pause, ptr @dev_attr_qlini_mode, ptr @dev_attr_ql2xiniexchg, ptr @dev_attr_ql2xexchoffld, ptr null], [32 x i8] zeroinitializer }, align 32
@ql2x_ini_mode = external dso_local local_unnamed_addr global i32, align 4
@dev_attr_qlini_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qlini_mode_show, ptr @qlini_mode_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ql2xiniexchg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ql2xiniexchg_show, ptr @ql2xiniexchg_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ql2xexchoffld = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ql2xexchoffld_show, ptr @ql2xexchoffld_store }, [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qlini_mode\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Supported options: enabled | disabled | dual | exclusive\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Current selection: \00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exclusive\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Mode change accepted. From %s to %s, Tgt exchg %d|%d. ini exchg %d|%d\0A\00", [57 x i8] zeroinitializer }, align 32
@mode_to_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Mode is set. No action taken. From %s to %s, Tgt exchg %d|%d. ini exchg %d|%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Target Mode is active. Unable to change Mode.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Mode unchange. No action taken. %d|%d pct %d|%d.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ql2xiniexchg\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"target exchange: new %d : current: %d\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"Please (re)set operating mode via \22/sys/class/scsi_host/host%ld/qlini_mode\22 to load new setting.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ql2xexchoffld\00", [18 x i8] zeroinitializer }, align 32
@dev_attr_driver_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_driver_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_fw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_serial_num = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_serial_num_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_isp_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_isp_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_isp_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_isp_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_model_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_model_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_model_desc = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_model_desc_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pci_info = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_pci_info_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_link_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_link_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_zio = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_zio_show, ptr @qla2x00_zio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_zio_timer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_zio_timer_show, ptr @qla2x00_zio_timer_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_beacon = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_beacon_show, ptr @qla2x00_beacon_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_beacon_config = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_beacon_config_show, ptr @qla2x00_beacon_config_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_optrom_bios_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_optrom_bios_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_optrom_efi_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_optrom_efi_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_optrom_fcode_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_optrom_fcode_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_optrom_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_optrom_fw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_84xx_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla24xx_84xx_fw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_total_isp_aborts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_total_isp_aborts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_serdes_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_serdes_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mpi_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_mpi_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_phy_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_phy_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_flash_block_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_flash_block_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vlan_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_vlan_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vn_port_mac_address = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_vn_port_mac_address_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fabric_param = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_fabric_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_fw_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_optrom_gold_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_optrom_gold_fw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_thermal_temp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_thermal_temp_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_diag_requests = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_diag_requests_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_diag_megabytes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_diag_megabytes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_dump_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_fw_dump_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_allow_cna_fw_dump = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_allow_cna_fw_dump_show, ptr @qla2x00_allow_cna_fw_dump_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pep_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_pep_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_min_supported_speed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_min_supported_speed_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_supported_speed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_max_supported_speed_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_zio_threshold = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.147, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla_zio_threshold_show, ptr @qla_zio_threshold_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dif_bundle_statistics = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.149, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_dif_bundle_statistics_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_port_speed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.151, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_port_speed_show, ptr @qla2x00_port_speed_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_port_no = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.164, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_port_no_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.165, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_fw_attr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dport_diagnostics = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.167, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla2x00_dport_diagnostics_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_edif_doorbell = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.168, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @edif_doorbell_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mpi_pause = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.169, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @qla2x00_mpi_pause_store }, [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"driver_version\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@qla2x00_version_str = external dso_local global [0 x i8], align 1
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"serial_num\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SN\00", [29 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%c%05d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"isp_name\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ISP%04X\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"isp_id\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%04x %04x %04x %04x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"model_name\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"model_desc\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci_info\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link_state\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Link Down\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown Link State\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Link Up - \00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Loop\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FL_Port\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"N_Port to N_Port\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"F_Port\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"zio\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Mode 6\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Disabled\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zio_timer\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d us\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"beacon\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Enabled\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Abort ISP active -- ignoring beacon request.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"beacon_config\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%#04hx %#04hx %#04hx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%hx %hx %hx %hx\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"optrom_bios_version\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%02d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"optrom_efi_version\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"optrom_fcode_version\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"optrom_fw_version\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%d.%02d.%02d %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"84xx_fw_version\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"total_isp_aborts\00", [47 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"serdes_version\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d.%02d.%02d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mpi_version\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d.%02d.%02d (%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"phy_version\00", [20 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flash_block_size\00", [47 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vlan_id\00", [24 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vn_port_mac_address\00", [44 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pMR\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fabric_param\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw_state\00", [23 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ISP reset active.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"optrom_gold_fw_version\00", [41 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d.%02d.%02d (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"thermal_temp\00", [19 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCI EEH busy.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"diag_requests\00", [18 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"diag_megabytes\00", [17 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fw_dump_size\00", [19 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"allow_cna_fw_dump\00", [46 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pep_version\00", [20 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"min_supported_speed\00", [44 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"64Gps\00", [26 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32Gps\00", [26 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"16Gps\00", [26 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8Gps\00", [27 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4Gps\00", [27 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_supported_speed\00", [44 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zio_threshold\00", [18 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d exchanges\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dif_bundle_statistics\00", [42 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"cross=%llu read=%llu write=%llu kalloc=%llu dma_alloc=%llu unusable=%u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port_speed\00", [21 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to get port speed rval:%zd\0A\00", [61 x i8] zeroinitializer }, align 32
@port_speed_str = internal constant { [6 x %struct.anon.172], [48 x i8] } { [6 x %struct.anon.172] [%struct.anon.172 { i16 3, ptr @.str.154 }, %struct.anon.172 { i16 4, ptr @.str.155 }, %struct.anon.172 { i16 5, ptr @.str.156 }, %struct.anon.172 { i16 6, ptr @.str.157 }, %struct.anon.172 { i16 7, ptr @.str.158 }, %struct.anon.172 { i16 19, ptr @.str.159 }], [48 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"16\00", [29 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"64\00", [29 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"10\00", [29 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Speed setting not supported \0A\00", [34 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Setting will be affected after a loss of sync\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unrecognized speed setting:%lx. Setting Autoneg\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Setting speed to %lx Gbps \0A\00", [36 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"port_no\00", [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw_attr\00", [24 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llx\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dport_diagnostics\00", [46 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edif_doorbell\00", [18 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpi_pause\00", [22 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Pausing MPI...\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unable to pause MPI.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate memory for stats.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Resetting ISP statistics failed: rval = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s %d schedule session deletion\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.qla2x00_terminate_rport_io = private unnamed_addr constant [27 x i8] c"qla2x00_terminate_rport_io\00", align 1
@.str.175 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Vport sanity check failed, status %x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Vport create host failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VP entry id %d assigned.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Vport loop state is not UP.\0A\00", [35 x i8] zeroinitializer }, align 32
@ql2xenabledif = external dso_local local_unnamed_addr global i32, align 4
@.str.179 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Registered for DIF/DIX type 1 and 3 protection.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"scsi_add_host failure for VP[%d].\0A\00", [61 x i8] zeroinitializer }, align 32
@ql2xmqsupport = external dso_local local_unnamed_addr global i32, align 4
@.str.181 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Can't create qpair for VP[%d]\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Queue pair: %d Qos: %d) created for VP[%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Queue Pair: %d Qos: %d) created for VP[%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Timer for the VP[%d] has stopped\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Queue Pair delete failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VP[%d] deleted.\0A\00", [47 x i8] zeroinitializer }, align 32
@switch.table.qla2x00_get_host_port_type = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 5, i32 6, i32 0, i32 4, i32 0, i32 0, i32 0, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.qla2x00_get_host_speed = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 1, i32 2, i32 0, i32 8, i32 16, i32 32, i32 64, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4], [48 x i8] zeroinitializer }, align 32
@switch.table.qlini_mode_show = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [16 x i8] zeroinitializer }, align 32
@switch.table.qla2x00_min_supported_speed_show = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.143, ptr @.str.142, ptr @.str.141, ptr @.str.140, ptr @.str.139], [44 x i8] zeroinitializer }, align 32
@switch.table.qla2x00_port_speed_store = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 2, i16 3, i16 4, i16 2, i16 5, i16 2, i16 2, i16 2, i16 6], [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.187 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 39]
@__sancov_gen_cov_switch_values.188 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.189 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.190 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.191 = internal global [8 x i64] [i64 6, i64 32, i64 131676, i64 131677, i64 131678, i64 131679, i64 131680, i64 131681]
@__sancov_gen_cov_switch_values.192 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.193 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.194 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.195 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.196 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.197 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 6]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.200 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.202 = internal global [8 x i64] [i64 6, i64 16, i64 3, i64 4, i64 5, i64 6, i64 7, i64 19]
@__sancov_gen_cov_switch_values.203 = internal global [6 x i64] [i64 4, i64 32, i64 40, i64 80, i64 160, i64 320]
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"bin_file_entries\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1003, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1036, i32 8 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1040, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant [24 x i8] c"qla2x00_host_attr_group\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2546, i32 37 }
@___asan_gen_.216 = private unnamed_addr constant [20 x i8] c"qla2x00_host_groups\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2551, i32 31 }
@___asan_gen_.219 = private unnamed_addr constant [28 x i8] c"qla2xxx_transport_functions\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 3233, i32 29 }
@___asan_gen_.222 = private unnamed_addr constant [34 x i8] c"qla2xxx_transport_vport_functions\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 3281, i32 29 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1004, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant [19 x i8] c"sysfs_fw_dump_attr\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 171, i32 29 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1005, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"sysfs_nvram_attr\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 285, i32 29 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1006, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant [18 x i8] c"sysfs_optrom_attr\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 347, i32 29 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1007, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant [22 x i8] c"sysfs_optrom_ctl_attr\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 532, i32 29 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1008, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant [15 x i8] c"sysfs_vpd_attr\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 645, i32 29 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1009, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant [15 x i8] c"sysfs_sfp_attr\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 682, i32 29 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1010, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"sysfs_reset_attr\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 826, i32 29 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1011, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant [22 x i8] c"sysfs_issue_logo_attr\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 869, i32 29 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1012, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant [23 x i8] c"sysfs_xgmac_stats_attr\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 932, i32 29 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1013, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant [20 x i8] c"sysfs_dcbx_tlv_attr\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 990, i32 29 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 79, i32 7 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 93, i32 8 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 117, i32 9 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 120, i32 9 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 131, i32 7 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 139, i32 8 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 147, i32 10 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 155, i32 11 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 162, i32 11 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 259, i32 7 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 276, i32 6 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 376, i32 18 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 398, i32 7 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 417, i32 8 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 433, i32 7 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 476, i32 8 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 488, i32 8 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 497, i32 7 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 509, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 515, i32 7 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 610, i32 7 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 634, i32 7 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 711, i32 7 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 715, i32 11 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 746, i32 7 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 762, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 769, i32 9 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 777, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 782, i32 7 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 791, i32 7 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 802, i32 7 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 811, i32 7 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 860, i32 35 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 863, i32 35 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 908, i32 7 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 922, i32 7 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 967, i32 7 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 981, i32 7 }
@___asan_gen_.399 = private unnamed_addr constant [19 x i8] c"qla2x00_host_attrs\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2484, i32 26 }
@___asan_gen_.402 = private unnamed_addr constant [20 x i8] c"dev_attr_qlini_mode\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [22 x i8] c"dev_attr_ql2xiniexchg\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [23 x i8] c"dev_attr_ql2xexchoffld\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2473, i32 8 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1943, i32 6 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1946, i32 45 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1951, i32 7 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1955, i32 7 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1959, i32 7 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1963, i32 7 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1966, i32 45 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2215, i32 7 }
@___asan_gen_.438 = private unnamed_addr constant [12 x i8] c"mode_to_str\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1971, i32 14 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2231, i32 7 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2242, i32 7 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2248, i32 7 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2475, i32 8 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2329, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2333, i32 6 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2346, i32 18 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2474, i32 8 }
@___asan_gen_.465 = private unnamed_addr constant [24 x i8] c"dev_attr_driver_version\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [20 x i8] c"dev_attr_fw_version\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [20 x i8] c"dev_attr_serial_num\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [18 x i8] c"dev_attr_isp_name\00", align 1
@___asan_gen_.477 = private unnamed_addr constant [16 x i8] c"dev_attr_isp_id\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [20 x i8] c"dev_attr_model_name\00", align 1
@___asan_gen_.483 = private unnamed_addr constant [20 x i8] c"dev_attr_model_desc\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [18 x i8] c"dev_attr_pci_info\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [20 x i8] c"dev_attr_link_state\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [13 x i8] c"dev_attr_zio\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [19 x i8] c"dev_attr_zio_timer\00", align 1
@___asan_gen_.498 = private unnamed_addr constant [16 x i8] c"dev_attr_beacon\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [23 x i8] c"dev_attr_beacon_config\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [29 x i8] c"dev_attr_optrom_bios_version\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [28 x i8] c"dev_attr_optrom_efi_version\00", align 1
@___asan_gen_.510 = private unnamed_addr constant [30 x i8] c"dev_attr_optrom_fcode_version\00", align 1
@___asan_gen_.513 = private unnamed_addr constant [27 x i8] c"dev_attr_optrom_fw_version\00", align 1
@___asan_gen_.516 = private unnamed_addr constant [25 x i8] c"dev_attr_84xx_fw_version\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [26 x i8] c"dev_attr_total_isp_aborts\00", align 1
@___asan_gen_.522 = private unnamed_addr constant [24 x i8] c"dev_attr_serdes_version\00", align 1
@___asan_gen_.525 = private unnamed_addr constant [21 x i8] c"dev_attr_mpi_version\00", align 1
@___asan_gen_.528 = private unnamed_addr constant [21 x i8] c"dev_attr_phy_version\00", align 1
@___asan_gen_.531 = private unnamed_addr constant [26 x i8] c"dev_attr_flash_block_size\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [17 x i8] c"dev_attr_vlan_id\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [29 x i8] c"dev_attr_vn_port_mac_address\00", align 1
@___asan_gen_.540 = private unnamed_addr constant [22 x i8] c"dev_attr_fabric_param\00", align 1
@___asan_gen_.543 = private unnamed_addr constant [18 x i8] c"dev_attr_fw_state\00", align 1
@___asan_gen_.546 = private unnamed_addr constant [32 x i8] c"dev_attr_optrom_gold_fw_version\00", align 1
@___asan_gen_.549 = private unnamed_addr constant [22 x i8] c"dev_attr_thermal_temp\00", align 1
@___asan_gen_.552 = private unnamed_addr constant [23 x i8] c"dev_attr_diag_requests\00", align 1
@___asan_gen_.555 = private unnamed_addr constant [24 x i8] c"dev_attr_diag_megabytes\00", align 1
@___asan_gen_.558 = private unnamed_addr constant [22 x i8] c"dev_attr_fw_dump_size\00", align 1
@___asan_gen_.561 = private unnamed_addr constant [27 x i8] c"dev_attr_allow_cna_fw_dump\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [21 x i8] c"dev_attr_pep_version\00", align 1
@___asan_gen_.567 = private unnamed_addr constant [29 x i8] c"dev_attr_min_supported_speed\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [29 x i8] c"dev_attr_max_supported_speed\00", align 1
@___asan_gen_.573 = private unnamed_addr constant [23 x i8] c"dev_attr_zio_threshold\00", align 1
@___asan_gen_.576 = private unnamed_addr constant [31 x i8] c"dev_attr_dif_bundle_statistics\00", align 1
@___asan_gen_.579 = private unnamed_addr constant [20 x i8] c"dev_attr_port_speed\00", align 1
@___asan_gen_.582 = private unnamed_addr constant [17 x i8] c"dev_attr_port_no\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [17 x i8] c"dev_attr_fw_attr\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [27 x i8] c"dev_attr_dport_diagnostics\00", align 1
@___asan_gen_.591 = private unnamed_addr constant [23 x i8] c"dev_attr_edif_doorbell\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [19 x i8] c"dev_attr_mpi_pause\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2418, i32 8 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1077, i32 35 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2419, i32 8 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2420, i32 8 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1104, i32 30 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1109, i32 35 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2421, i32 8 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1119, i32 35 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2422, i32 8 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1133, i32 35 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2423, i32 8 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2424, i32 8 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2425, i32 8 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2426, i32 8 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1179, i32 35 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1182, i32 35 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1184, i32 35 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1188, i32 47 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1191, i32 47 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1195, i32 8 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1198, i32 47 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2427, i32 8 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1217, i32 46 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1220, i32 46 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2428, i32 8 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1260, i32 35 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2430, i32 8 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1318, i32 46 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1343, i32 7 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2432, i32 8 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1374, i32 35 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1392, i32 18 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2434, i32 8 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1440, i32 35 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2436, i32 8 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2438, i32 8 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2440, i32 8 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1473, i32 35 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2444, i32 8 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1520, i32 37 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2446, i32 8 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1500, i32 35 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2448, i32 8 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1537, i32 35 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2449, i32 8 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1553, i32 35 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2450, i32 8 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2451, i32 8 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1579, i32 35 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2453, i32 8 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2454, i32 8 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1603, i32 35 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2456, i32 8 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2457, i32 8 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1663, i32 7 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1678, i32 35 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2442, i32 8 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1489, i32 35 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2458, i32 8 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1632, i32 36 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2459, i32 8 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1691, i32 35 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2460, i32 8 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2461, i32 8 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2462, i32 8 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1735, i32 36 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1735, i32 45 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2465, i32 8 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2466, i32 8 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1781, i32 37 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1782, i32 37 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1783, i32 37 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1784, i32 37 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1785, i32 37 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1786, i32 37 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1786, i32 49 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2468, i32 8 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2470, i32 8 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1288, i32 35 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2476, i32 8 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2366, i32 6 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2478, i32 8 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1891, i32 16 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1896, i32 7 }
@___asan_gen_.849 = private unnamed_addr constant [15 x i8] c"port_speed_str\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1874, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1875, i32 20 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1876, i32 20 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1877, i32 21 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1878, i32 21 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1879, i32 21 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1880, i32 21 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1817, i32 7 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1828, i32 7 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1853, i32 7 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1862, i32 6 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2480, i32 8 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2481, i32 8 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2382, i32 35 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2415, i32 8 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2482, i32 8 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1932, i32 8 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1920, i32 35 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 1925, i32 36 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2830, i32 7 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2946, i32 11 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 2773, i32 12 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 3034, i32 7 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 3040, i32 36 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 3051, i32 6 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 3062, i32 7 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 3074, i32 8 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 3099, i32 7 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 3132, i32 8 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 3136, i32 8 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 3139, i32 8 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 3192, i32 7 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 3212, i32 8 }
@___asan_gen_.948 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.949 = private constant [35 x i8] c"../drivers/scsi/qla2xxx/qla_attr.c\00", align 1
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.949, i32 3215, i32 35 }
@___asan_gen_.951 = private unnamed_addr constant [40 x i8] c"switch.table.qla2x00_get_host_port_type\00", align 1
@___asan_gen_.952 = private unnamed_addr constant [36 x i8] c"switch.table.qla2x00_get_host_speed\00", align 1
@___asan_gen_.953 = private unnamed_addr constant [29 x i8] c"switch.table.qlini_mode_show\00", align 1
@___asan_gen_.954 = private unnamed_addr constant [46 x i8] c"switch.table.qla2x00_min_supported_speed_show\00", align 1
@___asan_gen_.955 = private unnamed_addr constant [38 x i8] c"switch.table.qla2x00_port_speed_store\00", align 1
@llvm.compiler.used = appending global [254 x ptr] [ptr @bin_file_entries, ptr @.str, ptr @.str.1, ptr @qla2x00_host_attr_group, ptr @qla2x00_host_groups, ptr @qla2xxx_transport_functions, ptr @qla2xxx_transport_vport_functions, ptr @.str.2, ptr @sysfs_fw_dump_attr, ptr @.str.3, ptr @sysfs_nvram_attr, ptr @.str.4, ptr @sysfs_optrom_attr, ptr @.str.5, ptr @sysfs_optrom_ctl_attr, ptr @.str.6, ptr @sysfs_vpd_attr, ptr @.str.7, ptr @sysfs_sfp_attr, ptr @.str.8, ptr @sysfs_reset_attr, ptr @.str.9, ptr @sysfs_issue_logo_attr, ptr @.str.10, ptr @sysfs_xgmac_stats_attr, ptr @.str.11, ptr @sysfs_dcbx_tlv_attr, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @qla2x00_host_attrs, ptr @dev_attr_qlini_mode, ptr @dev_attr_ql2xiniexchg, ptr @dev_attr_ql2xexchoffld, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @mode_to_str, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @dev_attr_driver_version, ptr @dev_attr_fw_version, ptr @dev_attr_serial_num, ptr @dev_attr_isp_name, ptr @dev_attr_isp_id, ptr @dev_attr_model_name, ptr @dev_attr_model_desc, ptr @dev_attr_pci_info, ptr @dev_attr_link_state, ptr @dev_attr_zio, ptr @dev_attr_zio_timer, ptr @dev_attr_beacon, ptr @dev_attr_beacon_config, ptr @dev_attr_optrom_bios_version, ptr @dev_attr_optrom_efi_version, ptr @dev_attr_optrom_fcode_version, ptr @dev_attr_optrom_fw_version, ptr @dev_attr_84xx_fw_version, ptr @dev_attr_total_isp_aborts, ptr @dev_attr_serdes_version, ptr @dev_attr_mpi_version, ptr @dev_attr_phy_version, ptr @dev_attr_flash_block_size, ptr @dev_attr_vlan_id, ptr @dev_attr_vn_port_mac_address, ptr @dev_attr_fabric_param, ptr @dev_attr_fw_state, ptr @dev_attr_optrom_gold_fw_version, ptr @dev_attr_thermal_temp, ptr @dev_attr_diag_requests, ptr @dev_attr_diag_megabytes, ptr @dev_attr_fw_dump_size, ptr @dev_attr_allow_cna_fw_dump, ptr @dev_attr_pep_version, ptr @dev_attr_min_supported_speed, ptr @dev_attr_max_supported_speed, ptr @dev_attr_zio_threshold, ptr @dev_attr_dif_bundle_statistics, ptr @dev_attr_port_speed, ptr @dev_attr_port_no, ptr @dev_attr_fw_attr, ptr @dev_attr_dport_diagnostics, ptr @dev_attr_edif_doorbell, ptr @dev_attr_mpi_pause, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @port_speed_str, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @switch.table.qla2x00_get_host_port_type, ptr @switch.table.qla2x00_get_host_speed, ptr @switch.table.qlini_mode_show, ptr @switch.table.qla2x00_min_supported_speed_show, ptr @switch.table.qla2x00_port_speed_store], section "llvm.metadata"
@0 = internal global [254 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_file_entries to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla2x00_host_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla2x00_host_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla2xxx_transport_functions to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla2xxx_transport_vport_functions to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_fw_dump_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_nvram_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_optrom_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_optrom_ctl_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_vpd_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_sfp_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_reset_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_issue_logo_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_xgmac_stats_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_dcbx_tlv_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla2x00_host_attrs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_qlini_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ql2xiniexchg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ql2xexchoffld to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_to_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_driver_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serial_num to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_isp_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_isp_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_model_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_model_desc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pci_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_link_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_zio to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_zio_timer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_beacon to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_beacon_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_optrom_bios_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_optrom_efi_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_optrom_fcode_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_optrom_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_84xx_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_total_isp_aborts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serdes_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mpi_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_phy_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_flash_block_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vlan_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vn_port_mac_address to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fabric_param to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_optrom_gold_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_thermal_temp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_diag_requests to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_diag_megabytes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_dump_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_allow_cna_fw_dump to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pep_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_min_supported_speed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_supported_speed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_zio_threshold to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dif_bundle_statistics to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_port_speed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_port_no to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dport_diagnostics to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_edif_doorbell to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mpi_pause to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_speed_str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qla2x00_get_host_port_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qla2x00_get_host_speed to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qlini_mode_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qla2x00_min_supported_speed_show to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qla2x00_port_speed_store to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_alloc_sysfs_attr(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %iter.064 = phi ptr [ @bin_file_entries, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.sysfs_entry, ptr %iter.064, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %for.body.if.end38_crit_edge, label %land.lhs.true

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.lhs.true:                                    ; preds = %for.body
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 55
  %6 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device_type, align 4
  %and = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.for.inc_crit_edge, label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true
  %8 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.if.end38_crit_edge [
    i32 2, label %land.lhs.true5
    i32 3, label %land.lhs.true14
  ]

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.lhs.true5:                                   ; preds = %if.end
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %10, i32 0, i32 54
  %11 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %isp_type, align 8
  %and8 = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true5.for.inc_crit_edge, label %land.lhs.true5.if.end38_crit_edge

land.lhs.true5.if.end38_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true14:                                  ; preds = %if.end
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %isp_type16 = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 54
  %15 = ptrtoint ptr %isp_type16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %isp_type16, align 8
  %17 = and i32 %16, 352256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %land.lhs.true14.for.inc_crit_edge, label %land.lhs.true14.if.end38_crit_edge

land.lhs.true14.if.end38_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end38:                                         ; preds = %land.lhs.true14.if.end38_crit_edge, %land.lhs.true5.if.end38_crit_edge, %if.end.if.end38_crit_edge, %for.body.if.end38_crit_edge
  %attr = getelementptr inbounds %struct.sysfs_entry, ptr %iter.064, i32 0, i32 1
  %19 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %attr, align 4
  %call = tail call i32 @sysfs_create_bin_file(ptr noundef %shost_gendev, ptr noundef %20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool39.not = icmp eq i32 %call, 0
  %21 = ptrtoint ptr %iter.064 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iter.064, align 4
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 243, ptr noundef nonnull @.str, ptr noundef %22, i32 noundef %call) #13
  br label %for.inc

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 244, ptr noundef nonnull @.str.1, ptr noundef %22) #13
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then40, %land.lhs.true14.for.inc_crit_edge, %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.sysfs_entry, ptr %iter.064, i32 1
  %23 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dbg(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_free_sysfs_attr(ptr noundef %vha, i1 noundef zeroext %stop_beacon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %isp_type37 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %iter.098 = phi ptr [ @bin_file_entries, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.sysfs_entry, ptr %iter.098, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %for.body.if.end62_crit_edge, label %land.lhs.true

for.body.if.end62_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

land.lhs.true:                                    ; preds = %for.body
  %6 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device_type, align 4
  %and = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.for.inc_crit_edge, label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true
  %8 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %5, label %if.end.if.end62_crit_edge [
    i32 2, label %land.lhs.true5
    i32 3, label %land.lhs.true13
    i32 39, label %land.lhs.true36
  ]

if.end.if.end62_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

land.lhs.true5:                                   ; preds = %if.end
  %9 = ptrtoint ptr %isp_type37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %isp_type37, align 8
  %and7 = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %land.lhs.true5.for.inc_crit_edge, label %land.lhs.true5.if.end62_crit_edge

land.lhs.true5.if.end62_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true13:                                  ; preds = %if.end
  %11 = ptrtoint ptr %isp_type37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %isp_type37, align 8
  %13 = and i32 %12, 352256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %land.lhs.true13.for.inc_crit_edge, label %land.lhs.true13.if.end62_crit_edge

land.lhs.true13.if.end62_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true36:                                  ; preds = %if.end
  %15 = ptrtoint ptr %isp_type37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %isp_type37, align 8
  %17 = and i32 %16, 3670016
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %16, 41943040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  %or.cond = or i1 %18, %20
  br i1 %or.cond, label %land.lhs.true36.for.inc_crit_edge, label %land.lhs.true36.if.end62_crit_edge

land.lhs.true36.if.end62_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

land.lhs.true36.for.inc_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end62:                                         ; preds = %land.lhs.true36.if.end62_crit_edge, %land.lhs.true13.if.end62_crit_edge, %land.lhs.true5.if.end62_crit_edge, %if.end.if.end62_crit_edge, %for.body.if.end62_crit_edge
  %attr = getelementptr inbounds %struct.sysfs_entry, ptr %iter.098, i32 0, i32 1
  %21 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %attr, align 4
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_gendev, ptr noundef %22) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end62, %land.lhs.true36.for.inc_crit_edge, %land.lhs.true13.for.inc_crit_edge, %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.sysfs_entry, ptr %iter.098, i32 1
  %23 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %stop_beacon, label %land.lhs.true64, label %for.end.if.end68_crit_edge

for.end.if.end68_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

land.lhs.true64:                                  ; preds = %for.end
  %beacon_blink_led = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 222
  %25 = ptrtoint ptr %beacon_blink_led to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %beacon_blink_led, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %26)
  %cmp65 = icmp eq i16 %26, 1
  br i1 %cmp65, label %if.then67, label %land.lhs.true64.if.end68_crit_edge

land.lhs.true64.if.end68_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

if.then67:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #15
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 234
  %27 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %isp_ops, align 4
  %beacon_off = getelementptr inbounds %struct.isp_operations, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %beacon_off to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %beacon_off, align 4
  %call = tail call i32 %30(ptr noundef %vha) #13
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %land.lhs.true64.if.end68_crit_edge, %for.end.if.end68_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_set_rport_loss_tmo(ptr nocapture noundef %rport, i32 noundef %timeout) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %rport, i32 0, i32 11
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not = icmp eq i32 %timeout, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %timeout
  %dev_loss_tmo = getelementptr inbounds %struct.fc_rport, ptr %rport, i32 0, i32 2
  %4 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %dev_loss_tmo, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %nvme_remote_port = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 46
  %5 = ptrtoint ptr %nvme_remote_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nvme_remote_port, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @nvme_fc_set_remoteport_devloss(ptr noundef nonnull %6, i32 noundef %spec.select) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_get_starget_node_name(ptr nocapture noundef %starget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %vp_fcports = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 1
  %4 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %4)
  %fcport.022 = load ptr, ptr %vp_fcports, align 8
  %cmp.not23 = icmp eq ptr %fcport.022, %vp_fcports
  br i1 %cmp.not23, label %dev_to_shost.exit.for.end_crit_edge, label %for.body.lr.ph

dev_to_shost.exit.for.end_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %dev_to_shost.exit
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fcport.024 = phi ptr [ %fcport.022, %for.body.lr.ph ], [ %fcport.0, %for.inc.for.body_crit_edge ]
  %rport = getelementptr inbounds %struct.fc_port, ptr %fcport.024, i32 0, i32 37
  %5 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rport, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  %scsi_target_id = getelementptr inbounds %struct.fc_rport, ptr %6, i32 0, i32 9
  %9 = ptrtoint ptr %scsi_target_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scsi_target_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp4 = icmp eq i32 %8, %10
  br i1 %cmp4, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %node_name5 = getelementptr inbounds %struct.fc_port, ptr %fcport.024, i32 0, i32 4
  %11 = ptrtoint ptr %node_name5 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %node_name5, align 1
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %fcport.024 to i32
  call void @__asan_load4_noabort(i32 %13)
  %fcport.0 = load ptr, ptr %fcport.024, align 8
  %cmp.not = icmp eq ptr %fcport.0, %vp_fcports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %dev_to_shost.exit.for.end_crit_edge
  %node_name.0 = phi i64 [ %12, %if.then ], [ 0, %dev_to_shost.exit.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %starget_data = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %14 = ptrtoint ptr %starget_data to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %node_name.0, ptr %starget_data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_get_starget_port_name(ptr nocapture noundef %starget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %vp_fcports = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 1
  %4 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %4)
  %fcport.022 = load ptr, ptr %vp_fcports, align 8
  %cmp.not23 = icmp eq ptr %fcport.022, %vp_fcports
  br i1 %cmp.not23, label %dev_to_shost.exit.for.end_crit_edge, label %for.body.lr.ph

dev_to_shost.exit.for.end_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %dev_to_shost.exit
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fcport.024 = phi ptr [ %fcport.022, %for.body.lr.ph ], [ %fcport.0, %for.inc.for.body_crit_edge ]
  %rport = getelementptr inbounds %struct.fc_port, ptr %fcport.024, i32 0, i32 37
  %5 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rport, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  %scsi_target_id = getelementptr inbounds %struct.fc_rport, ptr %6, i32 0, i32 9
  %9 = ptrtoint ptr %scsi_target_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scsi_target_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp4 = icmp eq i32 %8, %10
  br i1 %cmp4, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %port_name5 = getelementptr inbounds %struct.fc_port, ptr %fcport.024, i32 0, i32 5
  %11 = ptrtoint ptr %port_name5 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %port_name5, align 1
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %fcport.024 to i32
  call void @__asan_load4_noabort(i32 %13)
  %fcport.0 = load ptr, ptr %fcport.024, align 8
  %cmp.not = icmp eq ptr %fcport.0, %vp_fcports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %dev_to_shost.exit.for.end_crit_edge
  %port_name.0 = phi i64 [ %12, %if.then ], [ 0, %dev_to_shost.exit.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %port_name12 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1
  %14 = ptrtoint ptr %port_name12 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %port_name.0, ptr %port_name12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_get_starget_port_id(ptr nocapture noundef %starget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %vp_fcports = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 1
  %4 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %4)
  %fcport.028 = load ptr, ptr %vp_fcports, align 8
  %cmp.not29 = icmp eq ptr %fcport.028, %vp_fcports
  br i1 %cmp.not29, label %dev_to_shost.exit.for.end_crit_edge, label %for.body.lr.ph

dev_to_shost.exit.for.end_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %dev_to_shost.exit
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fcport.030 = phi ptr [ %fcport.028, %for.body.lr.ph ], [ %fcport.0, %for.inc.for.body_crit_edge ]
  %rport = getelementptr inbounds %struct.fc_port, ptr %fcport.030, i32 0, i32 37
  %5 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rport, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  %scsi_target_id = getelementptr inbounds %struct.fc_rport, ptr %6, i32 0, i32 9
  %9 = ptrtoint ptr %scsi_target_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scsi_target_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp4 = icmp eq i32 %8, %10
  br i1 %cmp4, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %d_id = getelementptr inbounds %struct.fc_port, ptr %fcport.030, i32 0, i32 6
  %11 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %d_id, align 8
  %conv = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 1
  %13 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %area, align 1
  %conv6 = zext i8 %14 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl7, %shl
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %15 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %al_pa, align 2
  %conv9 = zext i8 %16 to i32
  %or10 = or i32 %or, %conv9
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %fcport.030 to i32
  call void @__asan_load4_noabort(i32 %17)
  %fcport.0 = load ptr, ptr %fcport.030, align 8
  %cmp.not = icmp eq ptr %fcport.0, %vp_fcports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %dev_to_shost.exit.for.end_crit_edge
  %port_id.0 = phi i32 [ %or10, %if.then ], [ -1, %dev_to_shost.exit.for.end_crit_edge ], [ -1, %for.inc.for.end_crit_edge ]
  %port_id16 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %18 = ptrtoint ptr %port_id16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %port_id.0, ptr %port_id16, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qla2x00_get_host_port_id(ptr nocapture noundef readonly %shost) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_id = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 10, i32 4
  %0 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %d_id, align 8
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 1
  %2 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %area, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl3, %shl
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %4 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %al_pa, align 2
  %conv5 = zext i8 %5 to i32
  %or6 = or i32 %or, %conv5
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %6 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost_data, align 8
  %port_id = getelementptr inbounds %struct.fc_host_attrs, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or6, ptr %port_id, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qla2x00_get_host_port_type(ptr nocapture noundef readonly %shost) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vp_idx = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 12, i32 22
  %0 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vp_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %current_topology = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 49
  %4 = ptrtoint ptr %current_topology to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %current_topology, align 2
  %switch.tableidx = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %6 = icmp ult i8 %switch.tableidx, 8
  br i1 %6, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.qla2x00_get_host_port_type, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %port_type.0.sink = phi i32 [ 7, %entry.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.end.cleanup_crit_edge ]
  %shost_data5 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %9 = ptrtoint ptr %shost_data5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shost_data5, align 8
  %port_type6 = getelementptr inbounds %struct.fc_host_attrs, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %port_type6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %port_type.0.sink, ptr %port_type6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_get_host_port_state(ptr nocapture noundef readonly %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load volatile i32, ptr %flags, align 8
  %7 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %8 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost_data, align 8
  %port_state = getelementptr inbounds %struct.fc_host_attrs, ptr %9, i32 0, i32 24
  %10 = ptrtoint ptr %port_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %port_state, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %loop_state = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_state, i32 noundef 4) #13
  %11 = ptrtoint ptr %loop_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %loop_state, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %12, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb5
    i32 6, label %sw.bb14
    i32 5, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %shost_data3 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %14 = ptrtoint ptr %shost_data3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost_data3, align 8
  %port_state4 = getelementptr inbounds %struct.fc_host_attrs, ptr %15, i32 0, i32 24
  %16 = ptrtoint ptr %port_state4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %port_state4, align 8
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 11
  %17 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dpc_flags, align 4
  %19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not = icmp eq i32 %19, 0
  %shost_data11 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %20 = ptrtoint ptr %shost_data11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shost_data11, align 8
  %port_state12 = getelementptr inbounds %struct.fc_host_attrs, ptr %21, i32 0, i32 24
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %port_state12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 6, ptr %port_state12, align 8
  br label %cleanup

if.else:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %port_state12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 7, ptr %port_state12, align 8
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %shost_data15 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %24 = ptrtoint ptr %shost_data15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %shost_data15, align 8
  %port_state16 = getelementptr inbounds %struct.fc_host_attrs, ptr %25, i32 0, i32 24
  %26 = ptrtoint ptr %port_state16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 7, ptr %port_state16, align 8
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %shost_data18 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %27 = ptrtoint ptr %shost_data18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shost_data18, align 8
  %port_state19 = getelementptr inbounds %struct.fc_host_attrs, ptr %28, i32 0, i32 24
  %29 = ptrtoint ptr %port_state19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %port_state19, align 8
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %shost_data20 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %30 = ptrtoint ptr %shost_data20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shost_data20, align 8
  %port_state21 = getelementptr inbounds %struct.fc_host_attrs, ptr %31, i32 0, i32 24
  %32 = ptrtoint ptr %port_state21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %port_state21, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb17, %sw.bb14, %if.else, %if.then8, %sw.bb, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_get_host_speed(ptr noundef %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %and1 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qlafx00_get_host_speed(ptr noundef %shost) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_data_rate = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 47
  %4 = ptrtoint ptr %link_data_rate to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %link_data_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %5)
  %6 = icmp ult i16 %5, 20
  br i1 %6, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = sext i16 %5 to i32
  %switch.gep = getelementptr inbounds [20 x i32], ptr @switch.table.qla2x00_get_host_speed, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %speed.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.sw.epilog_crit_edge ]
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %9 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shost_data, align 8
  %speed10 = getelementptr inbounds %struct.fc_host_attrs, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %speed10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %speed.0, ptr %speed10, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qla2x00_get_host_fabric_name(ptr nocapture noundef readonly %shost) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device_flags = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 6
  %0 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fabric_node_name = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 3
  %2 = ptrtoint ptr %fabric_node_name to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %fabric_node_name, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fabric_name.0 = phi i64 [ %3, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %4 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost_data, align 8
  %fabric_name3 = getelementptr inbounds %struct.fc_host_attrs, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %fabric_name3 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %fabric_name.0, ptr %fabric_name3, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_get_host_symbolic_name(ptr noundef %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %0 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost_data, align 8
  %symbolic_name = getelementptr inbounds %struct.fc_host_attrs, ptr %1, i32 0, i32 28
  %call1 = tail call i32 @qla2x00_get_sym_node_name(ptr noundef %hostdata.i, ptr noundef %symbolic_name, i32 noundef 256) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_set_host_system_hostname(ptr noundef %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpc_flags = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 2
  tail call void @_set_bit(i32 noundef 12, ptr noundef %dpc_flags) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla2x00_get_fc_host_stats(ptr noundef %shost) #0 align 64 {
entry:
  %stats_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stats_dma) #13
  %6 = ptrtoint ptr %stats_dma to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %stats_dma, align 4, !annotation !473
  %fc_host_stat = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %fc_host_stat, i32 255, i32 248)
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %8 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %isp_type, align 8
  %and3 = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end:                                           ; preds = %entry
  %dpc_flags = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 2
  %10 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dpc_flags, align 4
  %12 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end7:                                          ; preds = %if.end
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 128
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 43
  %15 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i.not = icmp eq i32 %16, 1
  br i1 %cmp.i.not, label %if.end14, label %if.end7.done_crit_edge, !prof !474

if.end7.done_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end14:                                         ; preds = %if.end7
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end14.done_crit_edge

if.end14.done_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

lor.lhs.false.i.i:                                ; preds = %if.end14
  %22 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.done_crit_edge

lor.lhs.false.i.i.done_crit_edge:                 ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %25 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %27 = and i32 %26, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool8.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.done_crit_edge

lor.lhs.false5.i.i.done_crit_edge:                ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %28 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %dpc_flags, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool12.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.done_crit_edge

lor.lhs.false9.i.i.done_crit_edge:                ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %31 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %dpc_flags, align 4
  %33 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.done_crit_edge

qla2x00_reset_active.exit.i.done_crit_edge:       ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %34 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load.i = load volatile i32, ptr %34, align 4
  %36 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool16.not.not = icmp eq i32 %36, 0
  br i1 %tobool16.not.not, label %qla2x00_chip_is_down.exit.done_crit_edge, label %if.end18

qla2x00_chip_is_down.exit.done_crit_edge:         ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end18:                                         ; preds = %qla2x00_chip_is_down.exit
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 512, ptr noundef nonnull %stats_dma, i32 noundef 3264, i32 noundef 0) #13
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28797, ptr noundef nonnull @.str.172) #13
  br label %done

if.end23:                                         ; preds = %if.end18
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 55
  %37 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %device_type, align 4
  %and24 = and i32 %38, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %stats_dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stats_dma, align 4
  %call27 = call i32 @qla24xx_get_isp_stats(ptr noundef %5, ptr noundef nonnull %call.i, i32 noundef %40, i16 noundef zeroext 0) #13
  br label %if.end33

if.else:                                          ; preds = %if.end23
  %loop_state = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %loop_state, i32 noundef 4) #13
  %41 = ptrtoint ptr %loop_state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %loop_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %42)
  %cmp = icmp eq i32 %42, 5
  br i1 %cmp, label %land.lhs.true, label %if.else.done_free_crit_edge

if.else.done_free_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %done_free

land.lhs.true:                                    ; preds = %if.else
  %dpc_active = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 92
  %43 = ptrtoint ptr %dpc_active to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dpc_active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool29.not = icmp eq i8 %44, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true.done_free_crit_edge

land.lhs.true.done_free_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %done_free

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %loop_id = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 14
  %45 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %loop_id, align 8
  %47 = ptrtoint ptr %stats_dma to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stats_dma, align 4
  %call31 = call i32 @qla2x00_get_link_status(ptr noundef %5, i16 noundef zeroext %46, ptr noundef nonnull %call.i, i32 noundef %48) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.then26
  %rval.0 = phi i32 [ %call27, %if.then26 ], [ %call31, %if.then30 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.0)
  %cmp34.not = icmp eq i32 %rval.0, 0
  br i1 %cmp34.not, label %for.cond.preheader, label %if.end33.done_free_crit_edge

if.end33.done_free_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %done_free

for.cond.preheader:                               ; preds = %if.end33
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw, align 4
  %max_qpairs = getelementptr inbounds %struct.qla_hw_data, ptr %50, i32 0, i32 32
  %51 = ptrtoint ptr %max_qpairs to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %max_qpairs, align 2
  %conv = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp38545.not = icmp eq i8 %52, 0
  br i1 %cmp38545.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %queue_pair_map = getelementptr inbounds %struct.qla_hw_data, ptr %50, i32 0, i32 26
  %53 = ptrtoint ptr %queue_pair_map to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %queue_pair_map, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %or.0550 = phi i64 [ 0, %for.body.lr.ph ], [ %or.1, %for.inc.for.body_crit_edge ]
  %ir.0549 = phi i64 [ 0, %for.body.lr.ph ], [ %ir.1, %for.inc.for.body_crit_edge ]
  %ob.0548 = phi i64 [ 0, %for.body.lr.ph ], [ %ob.1, %for.inc.for.body_crit_edge ]
  %ib.0547 = phi i64 [ 0, %for.body.lr.ph ], [ %ib.1, %for.inc.for.body_crit_edge ]
  %i.0546 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %54, i32 %i.0546
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 4
  %tobool41.not = icmp eq ptr %56, null
  br i1 %tobool41.not, label %for.body.for.inc_crit_edge, label %if.end43

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end43:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %counters = getelementptr inbounds %struct.qla_qpair, ptr %56, i32 0, i32 18
  %input_requests = getelementptr inbounds %struct.qla_qpair, ptr %56, i32 0, i32 18, i32 1
  %57 = ptrtoint ptr %input_requests to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %input_requests, align 8
  %add = add i64 %58, %ir.0549
  %output_requests = getelementptr inbounds %struct.qla_qpair, ptr %56, i32 0, i32 18, i32 3
  %59 = ptrtoint ptr %output_requests to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %output_requests, align 8
  %add45 = add i64 %60, %or.0550
  %61 = ptrtoint ptr %counters to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %counters, align 8
  %add47 = add i64 %62, %ib.0547
  %output_bytes = getelementptr inbounds %struct.qla_qpair, ptr %56, i32 0, i32 18, i32 2
  %63 = ptrtoint ptr %output_bytes to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %output_bytes, align 8
  %add49 = add i64 %64, %ob.0548
  br label %for.inc

for.inc:                                          ; preds = %if.end43, %for.body.for.inc_crit_edge
  %ib.1 = phi i64 [ %add47, %if.end43 ], [ %ib.0547, %for.body.for.inc_crit_edge ]
  %ob.1 = phi i64 [ %add49, %if.end43 ], [ %ob.0548, %for.body.for.inc_crit_edge ]
  %ir.1 = phi i64 [ %add, %if.end43 ], [ %ir.0549, %for.body.for.inc_crit_edge ]
  %or.1 = phi i64 [ %add45, %if.end43 ], [ %or.0550, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0546, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ib.0.lcssa = phi i64 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %ib.1, %for.inc.for.end_crit_edge ]
  %ob.0.lcssa = phi i64 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %ob.1, %for.inc.for.end_crit_edge ]
  %ir.0.lcssa = phi i64 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %ir.1, %for.inc.for.end_crit_edge ]
  %or.0.lcssa = phi i64 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %or.1, %for.inc.for.end_crit_edge ]
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 34
  %65 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base_qpair, align 4
  %counters50 = getelementptr inbounds %struct.qla_qpair, ptr %66, i32 0, i32 18
  %input_requests51 = getelementptr inbounds %struct.qla_qpair, ptr %66, i32 0, i32 18, i32 1
  %67 = ptrtoint ptr %input_requests51 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %input_requests51, align 8
  %add52 = add i64 %68, %ir.0.lcssa
  %output_requests55 = getelementptr inbounds %struct.qla_qpair, ptr %66, i32 0, i32 18, i32 3
  %69 = ptrtoint ptr %output_requests55 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %output_requests55, align 8
  %add56 = add i64 %70, %or.0.lcssa
  %71 = ptrtoint ptr %counters50 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %counters50, align 8
  %add60 = add i64 %72, %ib.0.lcssa
  %output_bytes63 = getelementptr inbounds %struct.qla_qpair, ptr %66, i32 0, i32 18, i32 2
  %73 = ptrtoint ptr %output_bytes63 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %output_bytes63, align 8
  %add64 = add i64 %74, %ob.0.lcssa
  %input_requests65 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 10, i32 1, i32 4
  %75 = ptrtoint ptr %input_requests65 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %input_requests65, align 8
  %add66 = add i64 %add52, %76
  %output_requests68 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 10, i32 1, i32 4, i32 1, i32 1
  %77 = ptrtoint ptr %output_requests68 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %output_requests68, align 8
  %add69 = add i64 %add56, %78
  %input_bytes71 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 10, i32 1
  %79 = ptrtoint ptr %input_bytes71 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %input_bytes71, align 8
  %add72 = add i64 %add60, %80
  %output_bytes74 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 10, i32 1, i32 2
  %81 = ptrtoint ptr %output_bytes74 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %output_bytes74, align 8
  %add75 = add i64 %add64, %82
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %call.i, align 8
  %85 = call i32 @llvm.bswap.i32(i32 %84)
  %conv76 = zext i32 %85 to i64
  %link_failure_count = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 7, i32 1, i32 0, i32 1
  %86 = ptrtoint ptr %link_failure_count to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv76, ptr %link_failure_count, align 8
  %loss_sync_cnt = getelementptr inbounds %struct.link_statistics, ptr %call.i, i32 0, i32 1
  %87 = ptrtoint ptr %loss_sync_cnt to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %loss_sync_cnt, align 4
  %89 = call i32 @llvm.bswap.i32(i32 %88)
  %conv77 = zext i32 %89 to i64
  %loss_of_sync_count = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 7, i32 1, i32 2
  %90 = ptrtoint ptr %loss_of_sync_count to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv77, ptr %loss_of_sync_count, align 8
  %loss_sig_cnt = getelementptr inbounds %struct.link_statistics, ptr %call.i, i32 0, i32 2
  %91 = ptrtoint ptr %loss_sig_cnt to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %loss_sig_cnt, align 8
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  %conv78 = zext i32 %93 to i64
  %loss_of_signal_count = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 7, i32 1, i32 4
  %94 = ptrtoint ptr %loss_of_signal_count to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv78, ptr %loss_of_signal_count, align 8
  %prim_seq_err_cnt = getelementptr inbounds %struct.link_statistics, ptr %call.i, i32 0, i32 3
  %95 = ptrtoint ptr %prim_seq_err_cnt to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %prim_seq_err_cnt, align 4
  %97 = call i32 @llvm.bswap.i32(i32 %96)
  %conv79 = zext i32 %97 to i64
  %prim_seq_protocol_err_count = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %98 = ptrtoint ptr %prim_seq_protocol_err_count to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %conv79, ptr %prim_seq_protocol_err_count, align 8
  %inval_xmit_word_cnt = getelementptr inbounds %struct.link_statistics, ptr %call.i, i32 0, i32 4
  %99 = ptrtoint ptr %inval_xmit_word_cnt to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %inval_xmit_word_cnt, align 8
  %101 = call i32 @llvm.bswap.i32(i32 %100)
  %conv80 = zext i32 %101 to i64
  %invalid_tx_word_count = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 7, i32 1, i32 4, i32 3
  %102 = ptrtoint ptr %invalid_tx_word_count to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv80, ptr %invalid_tx_word_count, align 8
  %inval_crc_cnt = getelementptr inbounds %struct.link_statistics, ptr %call.i, i32 0, i32 5
  %103 = ptrtoint ptr %inval_crc_cnt to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %inval_crc_cnt, align 4
  %105 = call i32 @llvm.bswap.i32(i32 %104)
  %conv81 = zext i32 %105 to i64
  %invalid_crc_count = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 7, i32 1, i32 4, i32 7
  %106 = ptrtoint ptr %invalid_crc_count to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %conv81, ptr %invalid_crc_count, align 8
  %107 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %device_type, align 4
  %and83 = and i32 %108, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %for.end.if.end135_crit_edge, label %if.then85

for.end.if.end135_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

if.then85:                                        ; preds = %for.end
  %lip_cnt = getelementptr inbounds %struct.link_statistics, ptr %call.i, i32 0, i32 6
  %109 = ptrtoint ptr %lip_cnt to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %lip_cnt, align 8
  %111 = call i32 @llvm.bswap.i32(i32 %110)
  %conv86 = zext i32 %111 to i64
  %lip_count = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 7, i32 0, i32 3
  %112 = ptrtoint ptr %lip_count to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %conv86, ptr %lip_count, align 8
  %tx_frames = getelementptr inbounds %struct.link_statistics, ptr %call.i, i32 0, i32 19
  %113 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tx_frames, align 4
  %115 = call i32 @llvm.bswap.i32(i32 %114)
  %conv87 = zext i32 %115 to i64
  %tx_frames88 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 3
  %116 = ptrtoint ptr %tx_frames88 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %conv87, ptr %tx_frames88, align 8
  %rx_frames = getelementptr inbounds %struct.link_statistics, ptr %call.i, i32 0, i32 20
  %117 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rx_frames, align 8
  %119 = call i32 @llvm.bswap.i32(i32 %118)
  %conv89 = zext i32 %119 to i64
  %rx_frames90 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 7
  %120 = ptrtoint ptr %rx_frames90 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %conv89, ptr %rx_frames90, align 8
  %discarded_frames = getelementptr inbounds %struct.link_statistics, ptr %call.i, i32 0, i32 21
  %121 = ptrtoint ptr %discarded_frames to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %discarded_frames, align 4
  %123 = call i32 @llvm.bswap.i32(i32 %122)
  %conv91 = zext i32 %123 to i64
  %dumped_frames = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 7, i32 0, i32 3, i32 7
  %124 = ptrtoint ptr %dumped_frames to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %conv91, ptr %dumped_frames, align 8
  %nos_rcvd = getelementptr inbounds %struct.link_statistics, ptr %call.i, i32 0, i32 24
  %125 = ptrtoint ptr %nos_rcvd to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %nos_rcvd, align 8
  %127 = call i32 @llvm.bswap.i32(i32 %126)
  %conv92 = zext i32 %127 to i64
  %nos_count = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %128 = ptrtoint ptr %nos_count to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %conv92, ptr %nos_count, align 8
  %dropped_frames = getelementptr inbounds %struct.link_statistics, ptr %call.i, i32 0, i32 22
  %129 = ptrtoint ptr %dropped_frames to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dropped_frames, align 8
  %131 = call i32 @llvm.bswap.i32(i32 %130)
  %132 = ptrtoint ptr %discarded_frames to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %discarded_frames, align 4
  %134 = call i32 @llvm.bswap.i32(i32 %133)
  %add94 = add i32 %134, %131
  %conv95 = zext i32 %add94 to i64
  %error_frames = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 7, i32 0, i32 3, i32 3
  %135 = ptrtoint ptr %error_frames to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %conv95, ptr %error_frames, align 8
  %136 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %isp_type, align 8
  %138 = and i32 %137, 45711360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %if.else130, label %if.then129

if.then129:                                       ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #15
  %fpm_recv_word_cnt = getelementptr inbounds %struct.link_statistics, ptr %call.i, i32 0, i32 35
  %140 = ptrtoint ptr %fpm_recv_word_cnt to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %fpm_recv_word_cnt, align 8
  %142 = call i64 @llvm.bswap.i64(i64 %141)
  %rx_words = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 7, i32 0, i32 1, i32 1
  %143 = ptrtoint ptr %rx_words to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %142, ptr %rx_words, align 8
  %fpm_xmit_word_cnt = getelementptr inbounds %struct.link_statistics, ptr %call.i, i32 0, i32 37
  %144 = ptrtoint ptr %fpm_xmit_word_cnt to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %fpm_xmit_word_cnt, align 8
  %146 = call i64 @llvm.bswap.i64(i64 %145)
  br label %if.end135.sink.split

if.else130:                                       ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #15
  %shr = lshr i64 %add72, 2
  %rx_words131 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 7, i32 0, i32 1, i32 1
  %147 = ptrtoint ptr %rx_words131 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %shr, ptr %rx_words131, align 8
  %shr132 = lshr i64 %add75, 2
  br label %if.end135.sink.split

if.end135.sink.split:                             ; preds = %if.else130, %if.then129
  %.sink = phi i64 [ %146, %if.then129 ], [ %shr132, %if.else130 ]
  %tx_words = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 5
  %148 = ptrtoint ptr %tx_words to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %.sink, ptr %tx_words, align 8
  br label %if.end135

if.end135:                                        ; preds = %if.end135.sink.split, %for.end.if.end135_crit_edge
  %control_requests = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 10, i32 1, i32 4, i32 3
  %149 = ptrtoint ptr %control_requests to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %control_requests, align 8
  %conv137 = zext i32 %150 to i64
  %fcp_control_requests = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 3
  %151 = ptrtoint ptr %fcp_control_requests to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %conv137, ptr %fcp_control_requests, align 8
  %fcp_input_requests = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 7, i32 3
  %152 = ptrtoint ptr %fcp_input_requests to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %add66, ptr %fcp_input_requests, align 8
  %fcp_output_requests = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 1
  %153 = ptrtoint ptr %fcp_output_requests to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %add69, ptr %fcp_output_requests, align 8
  %shr138 = lshr i64 %add72, 20
  %fcp_input_megabytes = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 5
  %154 = ptrtoint ptr %fcp_input_megabytes to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %shr138, ptr %fcp_input_megabytes, align 8
  %shr139 = lshr i64 %add75, 20
  %fcp_output_megabytes = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 7
  %155 = ptrtoint ptr %fcp_output_megabytes to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %shr139, ptr %fcp_output_megabytes, align 8
  %call140 = call i64 @get_jiffies_64() #13
  %jiffies_at_last_reset = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 10, i32 1, i32 4, i32 7
  %156 = ptrtoint ptr %jiffies_at_last_reset to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %jiffies_at_last_reset, align 8
  %sub = sub i64 %call140, %157
  %158 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %sub, i32 0) #16, !srcloc !475
  %asmresult.i = extractvalue { i64, i32 } %158, 0
  %asmresult4.i = extractvalue { i64, i32 } %158, 1
  %159 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %sub, i64 %asmresult.i, i32 %asmresult4.i) #16, !srcloc !476
  %asmresult10.i = extractvalue { i64, i32 } %159, 0
  %div317536 = lshr i64 %asmresult10.i, 6
  %160 = ptrtoint ptr %fc_host_stat to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %div317536, ptr %fc_host_stat, align 8
  br label %done_free

done_free:                                        ; preds = %if.end135, %if.end33.done_free_crit_edge, %land.lhs.true.done_free_crit_edge, %if.else.done_free_crit_edge
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %1, align 128
  %dev351 = getelementptr inbounds %struct.pci_dev, ptr %162, i32 0, i32 44
  %163 = ptrtoint ptr %stats_dma to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %stats_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev351, i32 noundef 512, ptr noundef nonnull %call.i, i32 noundef %164, i32 noundef 0) #13
  br label %done

done:                                             ; preds = %done_free, %if.then22, %qla2x00_chip_is_down.exit.done_crit_edge, %qla2x00_reset_active.exit.i.done_crit_edge, %lor.lhs.false9.i.i.done_crit_edge, %lor.lhs.false5.i.i.done_crit_edge, %lor.lhs.false.i.i.done_crit_edge, %if.end14.done_crit_edge, %if.end7.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stats_dma) #13
  ret ptr %fc_host_stat
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_reset_host_stats(ptr noundef %shost) #0 align 64 {
entry:
  %stats_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stats_dma) #13
  %6 = ptrtoint ptr %stats_dma to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %stats_dma, align 4, !annotation !473
  %fc_host_stat = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 0, i32 1, i32 1
  %max_qpairs49 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 32
  %7 = call ptr @memset(ptr %fc_host_stat, i32 0, i32 368)
  %8 = ptrtoint ptr %max_qpairs49 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_qpairs49, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp51.not = icmp eq i8 %9, 0
  br i1 %cmp51.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %10 = phi ptr [ %17, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %i.052 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %queue_pair_map = getelementptr inbounds %struct.qla_hw_data, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %queue_pair_map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue_pair_map, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 %i.052
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %counters = getelementptr inbounds %struct.qla_qpair, ptr %14, i32 0, i32 18
  %15 = call ptr @memset(ptr %counters, i32 0, i32 32)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.052, 1
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %max_qpairs = getelementptr inbounds %struct.qla_hw_data, ptr %17, i32 0, i32 32
  %18 = ptrtoint ptr %max_qpairs to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %max_qpairs, align 2
  %conv = zext i8 %19 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 34
  %20 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_qpair, align 4
  %counters5 = getelementptr inbounds %struct.qla_qpair, ptr %21, i32 0, i32 18
  %22 = call ptr @memset(ptr %counters5, i32 0, i32 32)
  %call6 = tail call i64 @get_jiffies_64() #13
  %jiffies_at_last_reset = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 10, i32 1, i32 4, i32 7
  %23 = ptrtoint ptr %jiffies_at_last_reset to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call6, ptr %jiffies_at_last_reset, align 8
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 55
  %24 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %device_type, align 4
  %and = and i32 %25, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %for.end.cleanup23_crit_edge, label %if.then9

for.end.cleanup23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup23

if.then9:                                         ; preds = %for.end
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 512, ptr noundef nonnull %stats_dma, i32 noundef 3264, i32 noundef 0) #13
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28887, ptr noundef nonnull @.str.172) #13
  br label %cleanup23

if.end14:                                         ; preds = %if.then9
  %28 = ptrtoint ptr %stats_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stats_dma, align 4
  %call15 = call i32 @qla24xx_get_isp_stats(ptr noundef %5, ptr noundef nonnull %call.i, i32 noundef %29, i16 noundef zeroext 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end14.if.end19_crit_edge, label %if.then18

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28894, ptr noundef nonnull @.str.173, i32 noundef %call15) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 128
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %stats_dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stats_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev21, i32 noundef 512, ptr noundef nonnull %call.i, i32 noundef %33, i32 noundef 0) #13
  br label %cleanup23

cleanup23:                                        ; preds = %if.end19, %if.then13, %for.end.cleanup23_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stats_dma) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_issue_lip(ptr noundef %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %and1 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %4 = getelementptr inbounds i32, ptr %flags, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load volatile i32, ptr %4, align 4
  %6 = and i32 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 @qla2x00_loop_reset(ptr noundef %hostdata.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_dev_loss_tmo_callbk(ptr nocapture noundef readonly %rport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.fc_rport, ptr %rport, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %rport, i32 0, i32 11
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %dev_to_shost.exit.cleanup_crit_edge, label %if.end

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  tail call void @qla2x00_set_fcport_state(ptr noundef nonnull %7, i32 noundef 2) #13
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 4
  %8 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #13
  %drport = getelementptr inbounds %struct.fc_port, ptr %7, i32 0, i32 38
  %10 = ptrtoint ptr %drport to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %drport, align 4
  %rport6 = getelementptr inbounds %struct.fc_port, ptr %7, i32 0, i32 37
  %11 = ptrtoint ptr %rport6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rport6, align 8
  %12 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dd_data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %13, align 4
  %15 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %call3) #13
  %vha = getelementptr inbounds %struct.fc_port, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vha, align 8
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %dpc_flags, align 4
  %21 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not = icmp eq i32 %21, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %18, i32 0, i32 52
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 128
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 43
  %26 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i.not = icmp eq i32 %27, 1
  br i1 %cmp.i.not, label %if.end12.cleanup_crit_edge, label %if.then18, !prof !474

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qla2x00_abort_all_cmds(ptr noundef %18, i32 noundef 65536) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_terminate_rport_io(ptr nocapture noundef readonly %rport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %rport, i32 0, i32 11
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %vha = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vha, align 8
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dpc_flags, align 4
  %8 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %dpc_flags, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 52
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 43
  %16 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i.not = icmp eq i32 %17, 1
  br i1 %cmp.i.not, label %if.end17, label %if.then15, !prof !474

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qla2x00_abort_all_cmds(ptr noundef %5, i32 noundef 65536) #13
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %loop_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %19)
  %cmp.not = icmp eq i16 %19, 4096
  br i1 %cmp.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %13, i32 0, i32 55
  %20 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %device_type, align 4
  %and = and i32 %21, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then19
  %logout_on_delete = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %logout_on_delete to i32
  call void @__asan_loadN_noabort(i32 %22, i32 3)
  %bf.load = load i24, ptr %logout_on_delete, align 4
  %bf.set = or i24 %bf.load, 262144
  store i24 %bf.set, ptr %logout_on_delete, align 4
  %e_dbell = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 90
  %23 = ptrtoint ptr %e_dbell to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %e_dbell, align 8
  %and31 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then28.if.then35_crit_edge, label %land.lhs.true

if.then28.if.then35_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35

land.lhs.true:                                    ; preds = %if.then28
  %disc_state = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 50
  %25 = ptrtoint ptr %disc_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %disc_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %26)
  %cmp33 = icmp eq i32 %26, 10
  br i1 %cmp33, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then35_crit_edge

land.lhs.true.if.then35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then35:                                        ; preds = %land.lhs.true.if.then35_crit_edge, %if.then28.if.then35_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %5, i32 noundef 37150, ptr noundef nonnull @.str.174, ptr noundef nonnull @__func__.qla2x00_terminate_rport_io, i32 noundef 2774) #13
  tail call void @qlt_schedule_sess_for_deletion(ptr noundef nonnull %3) #13
  br label %cleanup

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %call39 = tail call i32 @qla2x00_port_logout(ptr noundef %5, ptr noundef nonnull %3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then35, %land.lhs.true.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then15, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla24xx_vport_create(ptr noundef %fc_vport, i1 noundef zeroext %disable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shost = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 9
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %req_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %req_q_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req_q_map, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call1 = tail call i32 @qla24xx_vport_create_req_sanity_check(ptr noundef %fc_vport) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef null, i32 noundef 28798, ptr noundef nonnull @.str.175, i32 noundef %call1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @qla24xx_create_vhost(ptr noundef %fc_vport) #13
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef null, i32 noundef 28799, ptr noundef nonnull @.str.176) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %vp_state = getelementptr inbounds %struct.scsi_qla_host, ptr %call2, i32 0, i32 49
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vp_state, i32 noundef 4) #13
  br i1 %disable, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %vp_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %vp_state, align 4
  %9 = ptrtoint ptr %fc_vport to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fc_vport, align 8
  %vport_last_state.i = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 1
  %11 = ptrtoint ptr %vport_last_state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %vport_last_state.i, align 4
  store i32 2, ptr %fc_vport, align 8
  br label %if.end8

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %vp_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 2, ptr %vp_state, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %call2, i32 0, i32 46
  %13 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vp_idx, align 8
  %conv = zext i16 %14 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef nonnull %call2, i32 noundef 28800, ptr noundef nonnull @.str.177, i32 noundef %conv) #13
  %loop_state = getelementptr inbounds %struct.scsi_qla_host, ptr %call2, i32 0, i32 9
  %call.i.i261 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_state, i32 noundef 4) #13
  %15 = ptrtoint ptr %loop_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 2, ptr %loop_state, align 4
  %vp_err_state = getelementptr inbounds %struct.scsi_qla_host, ptr %call2, i32 0, i32 50
  %16 = ptrtoint ptr %vp_err_state to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %vp_err_state, align 8
  %vp_prev_err_state = getelementptr inbounds %struct.scsi_qla_host, ptr %call2, i32 0, i32 51
  %17 = ptrtoint ptr %vp_prev_err_state to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %vp_prev_err_state, align 2
  %loop_state9 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 5, i32 1
  %call.i.i262 = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_state9, i32 noundef 4) #13
  %18 = ptrtoint ptr %loop_state9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %loop_state9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp11 = icmp eq i32 %19, 2
  br i1 %cmp11, label %if.end8.if.then17_crit_edge, label %lor.lhs.false

if.end8.if.then17_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end8
  %call.i.i263 = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_state9, i32 noundef 4) #13
  %20 = ptrtoint ptr %loop_state9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %loop_state9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp15 = icmp eq i32 %21, 6
  br i1 %cmp15, label %lor.lhs.false.if.then17_crit_edge, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end8.if.then17_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef nonnull %call2, i32 noundef 28801, ptr noundef nonnull @.str.178) #13
  %call.i.i264 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_state, i32 noundef 4) #13
  %22 = ptrtoint ptr %loop_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 6, ptr %loop_state, align 4
  br i1 %disable, label %if.then17.if.end22_crit_edge, label %if.then20

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %fc_vport to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fc_vport, align 8
  %vport_last_state.i265 = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 1
  %25 = ptrtoint ptr %vport_last_state.i265 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %vport_last_state.i265, align 4
  store i32 3, ptr %fc_vport, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then17.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %26 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %device_type, align 4
  %and = and i32 %27, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end22.if.end76_crit_edge, label %land.lhs.true

if.end22.if.end76_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

land.lhs.true:                                    ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xenabledif to i32))
  %28 = load i32, ptr @ql2xenabledif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool24.not = icmp eq i32 %28, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end76_crit_edge, label %if.then25

land.lhs.true.if.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

if.then25:                                        ; preds = %land.lhs.true
  %fw_attributes = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 138
  %29 = ptrtoint ptr %fw_attributes to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %fw_attributes, align 2
  %31 = and i16 %30, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool28.not = icmp eq i16 %31, 0
  %flags71 = getelementptr inbounds %struct.scsi_qla_host, ptr %call2, i32 0, i32 8
  %32 = ptrtoint ptr %flags71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load72 = load volatile i32, ptr %flags71, align 8
  br i1 %tobool28.not, label %if.else70, label %if.then29

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set = or i32 %bf.load72, 67108864
  %33 = ptrtoint ptr %flags71 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %bf.set, ptr %flags71, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef nonnull %call2, i32 noundef 28802, ptr noundef nonnull @.str.179) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xenabledif to i32))
  %34 = load i32, ptr @ql2xenabledif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp30 = icmp eq i32 %34, 1
  %spec.select = select i1 %cmp30, i32 127, i32 119
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %call2, i32 0, i32 5
  %35 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host, align 8
  %prot_capabilities.i = getelementptr inbounds %struct.Scsi_Host, ptr %36, i32 0, i32 41
  %37 = ptrtoint ptr %prot_capabilities.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select, ptr %prot_capabilities.i, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %38 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %isp_type, align 8
  %40 = and i32 %39, 3768320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %41 = icmp eq i32 %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp63 = icmp sgt i32 %34, 1
  %spec.select259 = select i1 %cmp63, i8 3, i8 1
  %guard.0 = select i1 %41, i8 1, i8 %spec.select259
  %42 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host, align 8
  %prot_guard_type.i = getelementptr inbounds %struct.Scsi_Host, ptr %43, i32 0, i32 42
  %44 = ptrtoint ptr %prot_guard_type.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %guard.0, ptr %prot_guard_type.i, align 8
  br label %if.end76

if.else70:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear73 = and i32 %bf.load72, -67108865
  %45 = ptrtoint ptr %flags71 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %bf.clear73, ptr %flags71, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.else70, %if.then29, %land.lhs.true.if.end76_crit_edge, %if.end22.if.end76_crit_edge
  %host77 = getelementptr inbounds %struct.scsi_qla_host, ptr %call2, i32 0, i32 5
  %46 = ptrtoint ptr %host77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host77, align 8
  %dev = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 14
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 128
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %call79 = tail call i32 @scsi_add_host_with_dma(ptr noundef %47, ptr noundef %dev, ptr noundef %dev78) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end84, label %if.then81

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vp_idx, align 8
  %conv83 = zext i16 %51 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef nonnull %call2, i32 noundef 28803, ptr noundef nonnull @.str.180, i32 noundef %conv83) #13
  %call163 = tail call i32 @qla24xx_disable_vp(ptr noundef nonnull %call2) #13
  tail call void @qla24xx_deallocate_vp_id(ptr noundef nonnull %call2) #13
  %52 = ptrtoint ptr %host77 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %host77, align 8
  tail call void @scsi_host_put(ptr noundef %53) #13
  br label %cleanup

if.end84:                                         ; preds = %if.end76
  %port_down_retry_count = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 69
  %54 = ptrtoint ptr %port_down_retry_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port_down_retry_count, align 4
  %56 = ptrtoint ptr %host77 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %host77, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %57, i32 0, i32 51
  %58 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %shost_data, align 8
  %dev_loss_tmo = getelementptr inbounds %struct.fc_host_attrs, ptr %59, i32 0, i32 30
  %60 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %55, ptr %dev_loss_tmo, align 8
  %node_name = getelementptr inbounds %struct.scsi_qla_host, ptr %call2, i32 0, i32 25
  %61 = ptrtoint ptr %node_name to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %node_name, align 1
  %63 = load ptr, ptr %host77, align 8
  %shost_data88 = getelementptr inbounds %struct.Scsi_Host, ptr %63, i32 0, i32 51
  %64 = ptrtoint ptr %shost_data88 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %shost_data88, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %62, ptr %65, align 8
  %port_name = getelementptr inbounds %struct.scsi_qla_host, ptr %call2, i32 0, i32 26
  %67 = ptrtoint ptr %port_name to i32
  call void @__asan_loadN_noabort(i32 %67, i32 8)
  %68 = load i64, ptr %port_name, align 1
  %69 = load ptr, ptr %host77, align 8
  %shost_data93 = getelementptr inbounds %struct.Scsi_Host, ptr %69, i32 0, i32 51
  %70 = ptrtoint ptr %shost_data93 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %shost_data93, align 8
  %port_name94 = getelementptr inbounds %struct.fc_host_attrs, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %port_name94 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %68, ptr %port_name94, align 8
  %host95 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 1, i32 4, i32 6
  %73 = ptrtoint ptr %host95 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %host95, align 8
  %shost_data96 = getelementptr inbounds %struct.Scsi_Host, ptr %74, i32 0, i32 51
  %75 = ptrtoint ptr %shost_data96 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %shost_data96, align 8
  %supported_classes = getelementptr inbounds %struct.fc_host_attrs, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %supported_classes to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %supported_classes, align 8
  %79 = load ptr, ptr %host77, align 8
  %shost_data98 = getelementptr inbounds %struct.Scsi_Host, ptr %79, i32 0, i32 51
  %80 = ptrtoint ptr %shost_data98 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %shost_data98, align 8
  %supported_classes99 = getelementptr inbounds %struct.fc_host_attrs, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %supported_classes99 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %78, ptr %supported_classes99, align 8
  %83 = load ptr, ptr %host95, align 8
  %shost_data101 = getelementptr inbounds %struct.Scsi_Host, ptr %83, i32 0, i32 51
  %84 = ptrtoint ptr %shost_data101 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %shost_data101, align 8
  %supported_speeds = getelementptr inbounds %struct.fc_host_attrs, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %supported_speeds to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %supported_speeds, align 4
  %88 = load ptr, ptr %host77, align 8
  %shost_data103 = getelementptr inbounds %struct.Scsi_Host, ptr %88, i32 0, i32 51
  %89 = ptrtoint ptr %shost_data103 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %shost_data103, align 8
  %supported_speeds104 = getelementptr inbounds %struct.fc_host_attrs, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %supported_speeds104 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %87, ptr %supported_speeds104, align 4
  tail call void @qlt_vport_create(ptr noundef nonnull %call2, ptr noundef %3) #13
  %dd_data.i = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %92 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dd_data.i, align 4
  br i1 %disable, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @qla24xx_disable_vp(ptr noundef %93) #13
  br label %qla24xx_vport_disable.exit

if.else.i:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @qla24xx_enable_vp(ptr noundef %93) #13
  br label %qla24xx_vport_disable.exit

qla24xx_vport_disable.exit:                       ; preds = %if.else.i, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xmqsupport to i32))
  %94 = load i32, ptr @ql2xmqsupport, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool107.not = icmp eq i32 %94, 0
  br i1 %tobool107.not, label %qla24xx_vport_disable.exit.vport_queue_crit_edge, label %lor.lhs.false108

qla24xx_vport_disable.exit.vport_queue_crit_edge: ; preds = %qla24xx_vport_disable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %vport_queue

lor.lhs.false108:                                 ; preds = %qla24xx_vport_disable.exit
  %npiv_info = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 35
  %95 = ptrtoint ptr %npiv_info to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %npiv_info, align 32
  %tobool109.not = icmp eq ptr %96, null
  br i1 %tobool109.not, label %lor.lhs.false108.vport_queue_crit_edge, label %for.cond.preheader

lor.lhs.false108.vport_queue_crit_edge:           ; preds = %lor.lhs.false108
  call void @__sanitizer_cov_trace_pc() #15
  br label %vport_queue

for.cond.preheader:                               ; preds = %lor.lhs.false108
  %nvram_npiv_size = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 36
  %97 = ptrtoint ptr %nvram_npiv_size to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %nvram_npiv_size, align 4
  %conv112 = zext i16 %98 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %cmp113269.not = icmp eq i16 %98, 0
  br i1 %cmp113269.not, label %for.cond.preheader.vport_queue_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.vport_queue_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %vport_queue

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %cnt.0270 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %port_name117 = getelementptr %struct.qla_npiv_entry, ptr %96, i32 %cnt.0270, i32 5
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %port_name117, ptr noundef dereferenceable(8) %port_name, i32 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp122 = icmp eq i32 %bcmp, 0
  br i1 %cmp122, label %land.lhs.true124, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true124:                                 ; preds = %for.body
  %node_name127 = getelementptr %struct.qla_npiv_entry, ptr %96, i32 %cnt.0270, i32 6
  %bcmp255 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %node_name127, ptr noundef dereferenceable(8) %node_name, i32 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp255)
  %cmp132 = icmp eq i32 %bcmp255, 0
  br i1 %cmp132, label %for.end, label %land.lhs.true124.for.inc_crit_edge

land.lhs.true124.for.inc_crit_edge:               ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true124.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %cnt.0270, 1
  %exitcond.not = icmp eq i32 %inc, %conv112
  br i1 %exitcond.not, label %for.inc.vport_queue_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.vport_queue_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %vport_queue

for.end:                                          ; preds = %land.lhs.true124
  %q_qos = getelementptr %struct.qla_npiv_entry, ptr %96, i32 %cnt.0270, i32 2
  %99 = ptrtoint ptr %q_qos to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %q_qos, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool138.not = icmp eq i8 %100, 0
  br i1 %tobool138.not, label %for.end.vport_queue_crit_edge, label %if.then139

for.end.vport_queue_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %vport_queue

if.then139:                                       ; preds = %for.end
  %conv140 = zext i8 %100 to i32
  %101 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %vp_idx, align 8
  %conv142 = zext i16 %102 to i32
  %call143 = tail call ptr @qla2xxx_create_qpair(ptr noundef %call2, i32 noundef %conv140, i32 noundef %conv142, i1 noundef zeroext true) #13
  %tobool144.not = icmp eq ptr %call143, null
  br i1 %tobool144.not, label %if.then145, label %if.else148

if.then145:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %vp_idx, align 8
  %conv147 = zext i16 %104 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %call2, i32 noundef 28804, ptr noundef nonnull @.str.181, i32 noundef %conv147) #13
  br label %vport_queue

if.else148:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #15
  %id = getelementptr inbounds %struct.qla_qpair, ptr %call143, i32 0, i32 7
  %105 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %id, align 2
  %conv149 = zext i16 %106 to i32
  %107 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %vp_idx, align 8
  %conv152 = zext i16 %108 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1048576, ptr noundef %call2, i32 noundef 49153, ptr noundef nonnull @.str.182, i32 noundef %conv149, i32 noundef %conv140, i32 noundef %conv152) #13
  %109 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %id, align 2
  %conv154 = zext i16 %110 to i32
  %111 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %vp_idx, align 8
  %conv157 = zext i16 %112 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %call2, i32 noundef 28805, ptr noundef nonnull @.str.183, i32 noundef %conv154, i32 noundef %conv140, i32 noundef %conv157) #13
  %req158 = getelementptr inbounds %struct.qla_qpair, ptr %call143, i32 0, i32 12
  %113 = ptrtoint ptr %req158 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %req158, align 4
  %qpair159 = getelementptr inbounds %struct.scsi_qla_host, ptr %call2, i32 0, i32 47
  %115 = ptrtoint ptr %qpair159 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call143, ptr %qpair159, align 4
  br label %vport_queue

vport_queue:                                      ; preds = %if.else148, %if.then145, %for.end.vport_queue_crit_edge, %for.inc.vport_queue_crit_edge, %for.cond.preheader.vport_queue_crit_edge, %lor.lhs.false108.vport_queue_crit_edge, %qla24xx_vport_disable.exit.vport_queue_crit_edge
  %req.0 = phi ptr [ %114, %if.else148 ], [ %7, %if.then145 ], [ %7, %for.end.vport_queue_crit_edge ], [ %7, %lor.lhs.false108.vport_queue_crit_edge ], [ %7, %qla24xx_vport_disable.exit.vport_queue_crit_edge ], [ %7, %for.cond.preheader.vport_queue_crit_edge ], [ %7, %for.inc.vport_queue_crit_edge ]
  %req162 = getelementptr inbounds %struct.scsi_qla_host, ptr %call2, i32 0, i32 54
  %116 = ptrtoint ptr %req162 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %req.0, ptr %req162, align 8
  br label %cleanup

cleanup:                                          ; preds = %vport_queue, %if.then81, %if.then3, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 9, %if.then3 ], [ 9, %if.then81 ], [ 0, %vport_queue ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla24xx_vport_disable(ptr nocapture noundef readonly %fc_vport, i1 noundef zeroext %disable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  br i1 %disable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @qla24xx_disable_vp(ptr noundef %1) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @qla24xx_enable_vp(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla24xx_vport_delete(ptr nocapture noundef readonly %fc_vport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vp_idx, align 8
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 34, ptr noundef %dpc_flags) #13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dpc_flags, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %9 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %dpc_flags, align 4
  %11 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %while.end, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  tail call void @msleep(i32 noundef 1000) #13
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  %call5 = tail call i32 @qla24xx_disable_vp(ptr noundef %1) #13
  tail call void @qla2x00_wait_for_sess_deletion(ptr noundef %1) #13
  tail call void @qla_nvme_delete(ptr noundef %1) #13
  tail call void @qla_enode_stop(ptr noundef %1) #13
  tail call void @qla_edb_stop(ptr noundef %1) #13
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load, 33554432
  store volatile i32 %bf.set, ptr %flags, align 8
  %call6 = tail call i32 @qlt_remove_target(ptr noundef %3, ptr noundef %1) #13
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host, align 8
  tail call void @fc_remove_host(ptr noundef %14) #13
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 8
  tail call void @scsi_remove_host(ptr noundef %16) #13
  tail call void @qla24xx_deallocate_vp_id(ptr noundef %1) #13
  %timer_active = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 23
  %17 = ptrtoint ptr %timer_active to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timer_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not = icmp eq i32 %18, 0
  br i1 %tobool8.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qla2x00_vp_stop_timer(ptr noundef %1) #13
  %19 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vp_idx, align 8
  %conv = zext i16 %20 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %1, i32 noundef 28806, ptr noundef nonnull @.str.184, i32 noundef %conv) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  tail call void @qla2x00_free_fcports(ptr noundef %1) #13
  %vport_lock = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 125
  tail call void @mutex_lock_nested(ptr noundef %vport_lock, i32 noundef 0) #13
  %cur_vport_count = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 232
  %21 = ptrtoint ptr %cur_vport_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur_vport_count, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %cur_vport_count, align 4
  %23 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vp_idx, align 8
  %conv11 = zext i16 %24 to i32
  %vp_idx_map = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 228
  tail call void @_clear_bit(i32 noundef %conv11, ptr noundef %vp_idx_map) #13
  tail call void @mutex_unlock(ptr noundef %vport_lock) #13
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %gnl = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 71
  %size = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 71, i32 3
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  %29 = ptrtoint ptr %gnl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gnl, align 4
  %ldma = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 71, i32 1
  %31 = ptrtoint ptr %ldma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ldma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %28, ptr noundef %30, i32 noundef %32, i32 noundef 0) #13
  %33 = ptrtoint ptr %gnl to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %gnl, align 4
  %scan = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 81
  %34 = ptrtoint ptr %scan to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %scan, align 4
  tail call void @vfree(ptr noundef %35) #13
  %qpair = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 47
  %36 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qpair, align 4
  %tobool18.not = icmp eq ptr %37, null
  br i1 %tobool18.not, label %if.end.if.end32_crit_edge, label %land.lhs.true

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end
  %vp_idx20 = getelementptr inbounds %struct.qla_qpair, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %vp_idx20 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vp_idx20, align 4
  %40 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vp_idx, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %41)
  %cmp = icmp eq i16 %39, %41
  br i1 %cmp, label %if.then25, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then25:                                        ; preds = %land.lhs.true
  %call27 = tail call i32 @qla2xxx_delete_qpair(ptr noundef %1, ptr noundef nonnull %37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.then25.if.end32_crit_edge, label %if.then30

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then30:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %1, i32 noundef 28807, ptr noundef nonnull @.str.185) #13
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then25.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %conv33 = zext i16 %5 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %1, i32 noundef 28808, ptr noundef nonnull @.str.186, i32 noundef %conv33) #13
  %42 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host, align 8
  tail call void @scsi_host_put(ptr noundef %43) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_bsg_request(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_bsg_timeout(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_init_host_attr(ptr nocapture noundef readonly %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %port_down_retry_count = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 69
  %2 = ptrtoint ptr %port_down_retry_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_down_retry_count, align 4
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 51
  %6 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost_data, align 8
  %dev_loss_tmo = getelementptr inbounds %struct.fc_host_attrs, ptr %7, i32 0, i32 30
  %8 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %dev_loss_tmo, align 8
  %node_name = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 25
  %9 = ptrtoint ptr %node_name to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %node_name, align 1
  %11 = load ptr, ptr %host, align 8
  %shost_data2 = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 51
  %12 = ptrtoint ptr %shost_data2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shost_data2, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %10, ptr %13, align 8
  %port_name = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 26
  %15 = ptrtoint ptr %port_name to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %port_name, align 1
  %17 = load ptr, ptr %host, align 8
  %shost_data7 = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 0, i32 51
  %18 = ptrtoint ptr %shost_data7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shost_data7, align 8
  %port_name8 = getelementptr inbounds %struct.fc_host_attrs, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %port_name8 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %16, ptr %port_name8, align 8
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 34
  %21 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_qpair, align 4
  %enable_class_2 = getelementptr inbounds %struct.qla_qpair, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %enable_class_2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %enable_class_2, align 64
  %24 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  %cond = select i1 %tobool.not, i32 8, i32 12
  %25 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host, align 8
  %shost_data10 = getelementptr inbounds %struct.Scsi_Host, ptr %26, i32 0, i32 51
  %27 = ptrtoint ptr %shost_data10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shost_data10, align 8
  %supported_classes = getelementptr inbounds %struct.fc_host_attrs, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %supported_classes to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %supported_classes, align 8
  %max_npiv_vports = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 231
  %30 = ptrtoint ptr %max_npiv_vports to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %max_npiv_vports, align 64
  %32 = load ptr, ptr %host, align 8
  %shost_data12 = getelementptr inbounds %struct.Scsi_Host, ptr %32, i32 0, i32 51
  %33 = ptrtoint ptr %shost_data12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %shost_data12, align 8
  %max_npiv_vports13 = getelementptr inbounds %struct.fc_host_attrs, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %max_npiv_vports13 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %31, ptr %max_npiv_vports13, align 4
  %cur_vport_count = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 232
  %36 = ptrtoint ptr %cur_vport_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cur_vport_count, align 4
  %conv = trunc i32 %37 to i16
  %38 = load ptr, ptr %host, align 8
  %shost_data15 = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 51
  %39 = ptrtoint ptr %shost_data15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %shost_data15, align 8
  %npiv_vports_inuse = getelementptr inbounds %struct.fc_host_attrs, ptr %40, i32 0, i32 39
  %41 = ptrtoint ptr %npiv_vports_inuse to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv, ptr %npiv_vports_inuse, align 8
  %call16 = tail call i32 @qla25xx_fdmi_port_speed_capability(ptr noundef %1) #13
  %42 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host, align 8
  %shost_data18 = getelementptr inbounds %struct.Scsi_Host, ptr %43, i32 0, i32 51
  %44 = ptrtoint ptr %shost_data18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %shost_data18, align 8
  %supported_speeds = getelementptr inbounds %struct.fc_host_attrs, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %supported_speeds to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call16, ptr %supported_speeds, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla25xx_fdmi_port_speed_capability(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_sysfs_read_fw_dump(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  %off.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %off, ptr %off.addr, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %2, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %fw_dump_reading = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 169
  %5 = ptrtoint ptr %fw_dump_reading to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_dump_reading, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %dev_to_shost.exit.if.end_crit_edge

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false:                                    ; preds = %dev_to_shost.exit
  %mctp_dump_reading = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 179
  %7 = ptrtoint ptr %mctp_dump_reading to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mctp_dump_reading, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %mpi_fw_dump_reading = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 172
  %9 = ptrtoint ptr %mpi_fw_dump_reading to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %mpi_fw_dump_reading, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false3.if.end_crit_edge

lor.lhs.false3.if.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %dev_to_shost.exit.if.end_crit_edge
  %optrom_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 203
  tail call void @mutex_lock_nested(ptr noundef %optrom_mutex, i32 noundef 0) #13
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 54
  %10 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %isp_type, align 8
  %12 = and i32 %11, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.else21, label %if.then12

if.then12:                                        ; preds = %if.end
  %14 = ptrtoint ptr %off.addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %off.addr, align 8
  %md_template_size = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 263
  %16 = ptrtoint ptr %md_template_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %md_template_size, align 4
  %conv = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %conv)
  %cmp = icmp slt i64 %15, %conv
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %md_tmplt_hdr = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 264
  %18 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %md_tmplt_hdr, align 8
  %call16 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr, ptr noundef %19, i32 noundef %17) #13
  br label %if.end49

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i64 %15, %conv
  %20 = ptrtoint ptr %off.addr to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %sub, ptr %off.addr, align 8
  %md_dump = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 266
  %21 = ptrtoint ptr %md_dump to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %md_dump, align 16
  %md_dump_size = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 267
  %23 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %md_dump_size, align 4
  %call19 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr, ptr noundef %22, i32 noundef %24) #13
  br label %if.end49

if.else21:                                        ; preds = %if.end
  %mctp_dumped = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 178
  %25 = ptrtoint ptr %mctp_dumped to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mctp_dumped, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool22.not = icmp eq i32 %26, 0
  br i1 %tobool22.not, label %if.else21.if.else27_crit_edge, label %land.lhs.true

if.else21.if.else27_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else27

land.lhs.true:                                    ; preds = %if.else21
  %mctp_dump_reading23 = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 179
  %27 = ptrtoint ptr %mctp_dump_reading23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mctp_dump_reading23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool24.not = icmp eq i32 %28, 0
  br i1 %tobool24.not, label %land.lhs.true.if.else27_crit_edge, label %if.then25

land.lhs.true.if.else27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else27

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %mctp_dump = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 177
  %29 = ptrtoint ptr %mctp_dump to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mctp_dump, align 4
  %call26 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr, ptr noundef %30, i32 noundef 548964) #13
  br label %if.end49

if.else27:                                        ; preds = %land.lhs.true.if.else27_crit_edge, %if.else21.if.else27_crit_edge
  %mpi_fw_dumped = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 172
  %31 = ptrtoint ptr %mpi_fw_dumped to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load28 = load i8, ptr %mpi_fw_dumped, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load28)
  %.not = icmp ugt i8 %bf.load28, -65
  br i1 %.not, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #15
  %mpi_fw_dump = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 170
  %32 = ptrtoint ptr %mpi_fw_dump to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mpi_fw_dump, align 32
  %mpi_fw_dump_len = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 171
  %34 = ptrtoint ptr %mpi_fw_dump_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mpi_fw_dump_len, align 4
  %call39 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr, ptr noundef %33, i32 noundef %35) #13
  br label %if.end49

if.else40:                                        ; preds = %if.else27
  %36 = ptrtoint ptr %fw_dump_reading to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fw_dump_reading, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool42.not = icmp eq i32 %37, 0
  br i1 %tobool42.not, label %if.else40.if.end49_crit_edge, label %if.then43

if.else40.if.end49_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then43:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #15
  %fw_dump = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 164
  %38 = ptrtoint ptr %fw_dump to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fw_dump, align 8
  %fw_dump_len = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 165
  %40 = ptrtoint ptr %fw_dump_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fw_dump_len, align 4
  %call44 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr, ptr noundef %39, i32 noundef %41) #13
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %if.else40.if.end49_crit_edge, %if.then38, %if.then25, %if.else, %if.then14
  %rval.0 = phi i32 [ %call16, %if.then14 ], [ %call19, %if.else ], [ %call26, %if.then25 ], [ %call39, %if.then38 ], [ %call44, %if.then43 ], [ 0, %if.else40.if.end49_crit_edge ]
  call void @mutex_unlock(ptr noundef %optrom_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %lor.lhs.false3.cleanup_crit_edge
  %retval.0 = phi i32 [ %rval.0, %if.end49 ], [ 0, %lor.lhs.false3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_sysfs_write_fw_dump(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  br i1 %cmp.not, label %if.end, label %dev_to_shost.exit.cleanup_crit_edge

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %call2 = tail call i32 @simple_strtol(ptr noundef %buf, ptr noundef null, i32 noundef 10) #13
  %4 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %call2, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb23
    i32 3, label %sw.bb24
    i32 4, label %sw.bb41
    i32 5, label %sw.bb57
    i32 6, label %sw.bb69
    i32 7, label %sw.bb75
    i32 8, label %sw.bb85
    i32 9, label %sw.bb95
    i32 10, label %sw.bb115
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %fw_dump_reading = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 169
  %5 = ptrtoint ptr %fw_dump_reading to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_dump_reading, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 1, i32 4, i32 7
  %7 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %host_no, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28765, ptr noundef nonnull @.str.12, i32 noundef %8) #13
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %9 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %isp_type, align 8
  %11 = and i32 %10, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.end4.if.end12_crit_edge, label %if.then11

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qla82xx_md_free(ptr noundef %hostdata.i) #13
  tail call void @qla82xx_md_prep(ptr noundef %hostdata.i) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end4.if.end12_crit_edge
  %13 = ptrtoint ptr %fw_dump_reading to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %fw_dump_reading, align 4
  %fw_dumped = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 167
  %14 = ptrtoint ptr %fw_dumped to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %fw_dumped, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  %fw_dumped15 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 167
  %15 = ptrtoint ptr %fw_dumped15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fw_dumped15, align 4, !range !477
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool16.not = icmp eq i8 %16, 0
  br i1 %tobool16.not, label %sw.bb14.cleanup_crit_edge, label %land.lhs.true

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb14
  %fw_dump_reading17 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 169
  %17 = ptrtoint ptr %fw_dump_reading17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fw_dump_reading17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool18.not = icmp eq i32 %18, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %fw_dump_reading17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %fw_dump_reading17, align 4
  %host_no21 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 1, i32 4, i32 7
  %20 = ptrtoint ptr %host_no21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %host_no21, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28766, ptr noundef nonnull @.str.13, i32 noundef %21) #13
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qla2x00_alloc_fw_dump(ptr noundef %hostdata.i) #13
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  %isp_type25 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %22 = ptrtoint ptr %isp_type25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %isp_type25, align 8
  %and27 = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #15
  %call30 = tail call i32 @qla82xx_idc_lock(ptr noundef %3) #13
  tail call void @qla82xx_set_reset_owner(ptr noundef %hostdata.i) #13
  tail call void @qla82xx_idc_unlock(ptr noundef %3) #13
  br label %cleanup

if.else:                                          ; preds = %sw.bb24
  %and33 = and i32 %23, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else37, label %if.then35

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call36 = tail call i32 @qla8044_idc_lock(ptr noundef %3) #13
  tail call void @qla82xx_set_reset_owner(ptr noundef %hostdata.i) #13
  tail call void @qla8044_idc_unlock(ptr noundef %3) #13
  br label %cleanup

if.else37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call38 = tail call i32 @qla2x00_system_error(ptr noundef %hostdata.i) #13
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  %isp_type42 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %24 = ptrtoint ptr %isp_type42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %isp_type42, align 8
  %26 = and i32 %25, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %sw.bb41.cleanup_crit_edge, label %if.then51

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then51:                                        ; preds = %sw.bb41
  %md_tmplt_hdr = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 264
  %28 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %md_tmplt_hdr, align 8
  %tobool52.not = icmp eq ptr %29, null
  br i1 %tobool52.not, label %if.else54, label %if.then53

if.then53:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i, i32 noundef 28763, ptr noundef nonnull @.str.14) #13
  br label %cleanup

if.else54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i, i32 noundef 28829, ptr noundef nonnull @.str.15) #13
  br label %cleanup

sw.bb57:                                          ; preds = %if.end
  %isp_type58 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %30 = ptrtoint ptr %isp_type58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %isp_type58, align 8
  %32 = and i32 %31, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %sw.bb57.cleanup_crit_edge, label %if.then67

sw.bb57.cleanup_crit_edge:                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then67:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #15
  %dpc_flags = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags) #13
  br label %cleanup

sw.bb69:                                          ; preds = %if.end
  %mctp_dump_reading = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 179
  %34 = ptrtoint ptr %mctp_dump_reading to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mctp_dump_reading, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool70.not = icmp eq i32 %35, 0
  br i1 %tobool70.not, label %sw.bb69.cleanup_crit_edge, label %if.end72

sw.bb69.cleanup_crit_edge:                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end72:                                         ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #15
  %host_no73 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 1, i32 4, i32 7
  %36 = ptrtoint ptr %host_no73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %host_no73, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28865, ptr noundef nonnull @.str.16, i32 noundef %37) #13
  %38 = ptrtoint ptr %mctp_dump_reading to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %mctp_dump_reading, align 4
  %mctp_dumped = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 178
  %39 = ptrtoint ptr %mctp_dumped to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %mctp_dumped, align 64
  br label %cleanup

sw.bb75:                                          ; preds = %if.end
  %mctp_dumped76 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 178
  %40 = ptrtoint ptr %mctp_dumped76 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mctp_dumped76, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool77.not = icmp eq i32 %41, 0
  br i1 %tobool77.not, label %sw.bb75.cleanup_crit_edge, label %land.lhs.true78

sw.bb75.cleanup_crit_edge:                        ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true78:                                  ; preds = %sw.bb75
  %mctp_dump_reading79 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 179
  %42 = ptrtoint ptr %mctp_dump_reading79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mctp_dump_reading79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool80.not = icmp eq i32 %43, 0
  br i1 %tobool80.not, label %if.then81, label %land.lhs.true78.cleanup_crit_edge

land.lhs.true78.cleanup_crit_edge:                ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then81:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %mctp_dump_reading79 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %mctp_dump_reading79, align 4
  %host_no83 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 1, i32 4, i32 7
  %45 = ptrtoint ptr %host_no83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %host_no83, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28866, ptr noundef nonnull @.str.17, i32 noundef %46) #13
  br label %cleanup

sw.bb85:                                          ; preds = %if.end
  %mpi_fw_dump_reading = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 172
  %47 = ptrtoint ptr %mpi_fw_dump_reading to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load = load i8, ptr %mpi_fw_dump_reading, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool86.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool86.not, label %sw.bb85.cleanup_crit_edge, label %if.end88

sw.bb85.cleanup_crit_edge:                        ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end88:                                         ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #15
  %host_no89 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 1, i32 4, i32 7
  %48 = ptrtoint ptr %host_no89 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %host_no89, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28903, ptr noundef nonnull @.str.18, i32 noundef %49) #13
  %50 = ptrtoint ptr %mpi_fw_dump_reading to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load91 = load i8, ptr %mpi_fw_dump_reading, align 8
  %bf.clear93 = and i8 %bf.load91, 63
  store i8 %bf.clear93, ptr %mpi_fw_dump_reading, align 8
  br label %cleanup

sw.bb95:                                          ; preds = %if.end
  %mpi_fw_dumped96 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 172
  %51 = ptrtoint ptr %mpi_fw_dumped96 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load97 = load i8, ptr %mpi_fw_dumped96, align 8
  %52 = and i8 %bf.load97, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %52)
  %53 = icmp eq i8 %52, 64
  br i1 %53, label %if.then108, label %sw.bb95.cleanup_crit_edge

sw.bb95.cleanup_crit_edge:                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then108:                                       ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set112 = or i8 %bf.load97, -128
  %54 = ptrtoint ptr %mpi_fw_dumped96 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %bf.set112, ptr %mpi_fw_dumped96, align 8
  %host_no113 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 1, i32 4, i32 7
  %55 = ptrtoint ptr %host_no113 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %host_no113, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28904, ptr noundef nonnull @.str.19, i32 noundef %56) #13
  br label %cleanup

sw.bb115:                                         ; preds = %if.end
  %isp_type116 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %57 = ptrtoint ptr %isp_type116 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %isp_type116, align 8
  %59 = and i32 %58, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %sw.bb115.cleanup_crit_edge, label %if.then140

sw.bb115.cleanup_crit_edge:                       ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then140:                                       ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #15
  %host_no141 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 1, i32 4, i32 7
  %61 = ptrtoint ptr %host_no141 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %host_no141, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28905, ptr noundef nonnull @.str.20, i32 noundef %62) #13
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 234
  %63 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %isp_ops, align 4
  %mpi_fw_dump = getelementptr inbounds %struct.isp_operations, ptr %64, i32 0, i32 25
  %65 = ptrtoint ptr %mpi_fw_dump to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mpi_fw_dump, align 4
  tail call void %66(ptr noundef %hostdata.i, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then140, %sw.bb115.cleanup_crit_edge, %if.then108, %sw.bb95.cleanup_crit_edge, %if.end88, %sw.bb85.cleanup_crit_edge, %if.then81, %land.lhs.true78.cleanup_crit_edge, %sw.bb75.cleanup_crit_edge, %if.end72, %sw.bb69.cleanup_crit_edge, %if.then67, %sw.bb57.cleanup_crit_edge, %if.else54, %if.then53, %sw.bb41.cleanup_crit_edge, %if.else37, %if.then35, %if.then29, %sw.bb23, %if.then19, %land.lhs.true.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %if.end12, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_to_shost.exit.cleanup_crit_edge ], [ %count, %sw.bb115.cleanup_crit_edge ], [ %count, %sw.bb57.cleanup_crit_edge ], [ %count, %sw.bb41.cleanup_crit_edge ], [ %count, %if.then140 ], [ %count, %sw.bb95.cleanup_crit_edge ], [ %count, %if.then108 ], [ %count, %sw.bb85.cleanup_crit_edge ], [ %count, %sw.bb75.cleanup_crit_edge ], [ %count, %land.lhs.true78.cleanup_crit_edge ], [ %count, %if.then81 ], [ %count, %sw.bb69.cleanup_crit_edge ], [ %count, %if.then67 ], [ %count, %if.else54 ], [ %count, %if.then53 ], [ %count, %if.then29 ], [ %count, %if.else37 ], [ %count, %if.then35 ], [ %count, %sw.bb14.cleanup_crit_edge ], [ %count, %land.lhs.true.cleanup_crit_edge ], [ %count, %if.then19 ], [ %count, %sw.bb.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %if.end88 ], [ %count, %if.end72 ], [ %count, %sw.bb23 ], [ %count, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla82xx_md_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla82xx_md_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_alloc_fw_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla82xx_idc_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla82xx_set_reset_owner(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla82xx_idc_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla8044_idc_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla8044_idc_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_system_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_sysfs_read_nvram(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  %off.addr = alloca i64, align 8
  %active_regions = alloca %struct.active_regions, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %off, ptr %off.addr, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %2, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %active_regions) #13
  %5 = call ptr @memset(ptr %active_regions, i32 0, i32 5)
  %call2 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call2, label %if.end, label %dev_to_shost.exit.cleanup_crit_edge

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %optrom_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 203
  tail call void @mutex_lock_nested(ptr noundef %optrom_mutex, i32 noundef 0) #13
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

lor.lhs.false.i.i:                                ; preds = %if.end
  %15 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.if.then4_crit_edge

lor.lhs.false.i.i.if.then4_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %18 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %20 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.if.then4_crit_edge

lor.lhs.false5.i.i.if.then4_crit_edge:            ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 2
  %21 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.if.then4_crit_edge

lor.lhs.false9.i.i.if.then4_crit_edge:            ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %24 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %26 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i100 = icmp eq i32 %26, 0
  br i1 %tobool.not.i100, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.if.then4_crit_edge

qla2x00_reset_active.exit.i.if.then4_crit_edge:   ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %7, i32 0, i32 2
  %27 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load.i = load volatile i32, ptr %27, align 4
  %29 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.not = icmp eq i32 %29, 0
  br i1 %tobool.not.not, label %qla2x00_chip_is_down.exit.if.then4_crit_edge, label %if.end6

qla2x00_chip_is_down.exit.if.then4_crit_edge:     ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then4:                                         ; preds = %qla2x00_chip_is_down.exit.if.then4_crit_edge, %qla2x00_reset_active.exit.i.if.then4_crit_edge, %lor.lhs.false9.i.i.if.then4_crit_edge, %lor.lhs.false5.i.i.if.then4_crit_edge, %lor.lhs.false.i.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @mutex_unlock(ptr noundef %optrom_mutex) #13
  br label %cleanup

if.end6:                                          ; preds = %qla2x00_chip_is_down.exit
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 54
  %30 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %isp_type, align 8
  %32 = and i32 %31, 45719552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %optrom_mutex) #13
  br label %skip

if.end45:                                         ; preds = %if.end6
  %flt_region_nvram = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 220, i32 10
  %34 = ptrtoint ptr %flt_region_nvram to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flt_region_nvram, align 4
  %36 = and i32 %31, 41943040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %if.end45.if.end59_crit_edge, label %if.then55

if.end45.if.end59_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then55:                                        ; preds = %if.end45
  call void @qla28xx_get_aux_images(ptr noundef %hostdata.i, ptr noundef nonnull %active_regions) #13
  %vpd_nvram = getelementptr inbounds %struct.active_regions, ptr %active_regions, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %vpd_nvram to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %vpd_nvram, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp = icmp eq i8 %39, 2
  br i1 %cmp, label %if.then57, label %if.then55.if.end59_crit_edge

if.then55.if.end59_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then57:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  %flt_region_nvram_sec = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 220, i32 11
  %40 = ptrtoint ptr %flt_region_nvram_sec to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flt_region_nvram_sec, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then55.if.end59_crit_edge, %if.end45.if.end59_crit_edge
  %faddr.0 = phi i32 [ %41, %if.then57 ], [ %35, %if.then55.if.end59_crit_edge ], [ %35, %if.end45.if.end59_crit_edge ]
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 234
  %42 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %isp_ops, align 4
  %read_optrom = getelementptr inbounds %struct.isp_operations, ptr %43, i32 0, i32 29
  %44 = ptrtoint ptr %read_optrom to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_optrom, align 4
  %nvram = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 61
  %46 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nvram, align 8
  %shl = shl i32 %faddr.0, 2
  %nvram_size = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 59
  %48 = ptrtoint ptr %nvram_size to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %nvram_size, align 4
  %conv60 = zext i16 %49 to i32
  %call61 = call ptr %45(ptr noundef %hostdata.i, ptr noundef %47, i32 noundef %shl, i32 noundef %conv60) #13
  call void @mutex_unlock(ptr noundef %optrom_mutex) #13
  br label %skip

skip:                                             ; preds = %if.end59, %if.then43
  %nvram63 = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 61
  %50 = ptrtoint ptr %nvram63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nvram63, align 8
  %nvram_size64 = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 59
  %52 = ptrtoint ptr %nvram_size64 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %nvram_size64, align 4
  %conv65 = zext i16 %53 to i32
  %call66 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr, ptr noundef %51, i32 noundef %conv65) #13
  br label %cleanup

cleanup:                                          ; preds = %skip, %if.then4, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then4 ], [ %call66, %skip ], [ 0, %dev_to_shost.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %active_regions) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_sysfs_write_nvram(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %call2 = tail call zeroext i1 @capable(i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp.not, %call2
  br i1 %or.cond, label %lor.lhs.false3, label %dev_to_shost.exit.cleanup_crit_edge

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false3:                                   ; preds = %dev_to_shost.exit
  %nvram_size = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 59
  %4 = ptrtoint ptr %nvram_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nvram_size, align 4
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %count)
  %cmp4.not = icmp eq i32 %conv, %count
  br i1 %cmp4.not, label %lor.lhs.false6, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 234
  %6 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %isp_ops, align 4
  %write_nvram = getelementptr inbounds %struct.isp_operations, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %write_nvram to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_nvram, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %10 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device_type, align 4
  %and = and i32 %11, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %for.cond15.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %shr = lshr i32 %count, 2
  %sub = add nsw i32 %shr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1095.not = icmp eq i32 %sub, 0
  br i1 %cmp1095.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond15.preheader:                             ; preds = %if.end
  %sub17 = add i32 %count, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17)
  %cmp18100.not = icmp eq i32 %sub17, 0
  br i1 %cmp18100.not, label %for.cond15.preheader.for.end28_crit_edge, label %for.cond15.preheader.for.body20_crit_edge

for.cond15.preheader.for.body20_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body20

for.cond15.preheader.for.end28_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end28

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %chksum.098 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %iter.097 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %buf, %for.cond.preheader.for.body_crit_edge ]
  %cnt.096 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %12 = ptrtoint ptr %iter.097 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iter.097, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %add = add i32 %14, %chksum.098
  %inc = add i16 %cnt.096, 1
  %incdec.ptr = getelementptr i32, ptr %iter.097, i32 1
  %conv9 = zext i16 %inc to i32
  %cmp10 = icmp ugt i32 %sub, %conv9
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %iter.0.lcssa = phi ptr [ %buf, %for.cond.preheader.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %chksum.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %add12 = sub i32 0, %chksum.0.lcssa
  %15 = tail call i32 @llvm.bswap.i32(i32 %add12)
  %16 = ptrtoint ptr %iter.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %iter.0.lcssa, align 4
  br label %if.end33

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.cond15.preheader.for.body20_crit_edge
  %chksum14.0103 = phi i32 [ %phi.cast, %for.body20.for.body20_crit_edge ], [ 0, %for.cond15.preheader.for.body20_crit_edge ]
  %iter13.0102 = phi ptr [ %incdec.ptr21, %for.body20.for.body20_crit_edge ], [ %buf, %for.cond15.preheader.for.body20_crit_edge ]
  %cnt.1101 = phi i16 [ %inc27, %for.body20.for.body20_crit_edge ], [ 0, %for.cond15.preheader.for.body20_crit_edge ]
  %incdec.ptr21 = getelementptr i8, ptr %iter13.0102, i32 1
  %17 = ptrtoint ptr %iter13.0102 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iter13.0102, align 1
  %conv22 = zext i8 %18 to i32
  %add24 = add nuw nsw i32 %chksum14.0103, %conv22
  %inc27 = add i16 %cnt.1101, 1
  %phi.cast = and i32 %add24, 255
  %conv16 = zext i16 %inc27 to i32
  %cmp18 = icmp ugt i32 %sub17, %conv16
  br i1 %cmp18, label %for.body20.for.body20_crit_edge, label %for.end28.loopexit

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body20

for.end28.loopexit:                               ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast107 = trunc i32 %add24 to i8
  br label %for.end28

for.end28:                                        ; preds = %for.end28.loopexit, %for.cond15.preheader.for.end28_crit_edge
  %iter13.0.lcssa = phi ptr [ %buf, %for.cond15.preheader.for.end28_crit_edge ], [ %incdec.ptr21, %for.end28.loopexit ]
  %chksum14.0.lcssa = phi i8 [ 0, %for.cond15.preheader.for.end28_crit_edge ], [ %phi.cast107, %for.end28.loopexit ]
  %conv32 = sub i8 0, %chksum14.0.lcssa
  %19 = ptrtoint ptr %iter13.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv32, ptr %iter13.0.lcssa, align 1
  br label %if.end33

if.end33:                                         ; preds = %for.end28, %for.end
  %call34 = tail call i32 @qla2x00_wait_for_hba_online(ptr noundef %hostdata.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28767, ptr noundef nonnull @.str.21) #13
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %optrom_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 203
  tail call void @mutex_lock_nested(ptr noundef %optrom_mutex, i32 noundef 0) #13
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end38.if.then41_crit_edge

if.end38.if.then41_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

lor.lhs.false.i.i:                                ; preds = %if.end38
  %29 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool4.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.if.then41_crit_edge

lor.lhs.false.i.i.if.then41_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %32 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %34 = and i32 %33, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool8.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.if.then41_crit_edge

lor.lhs.false5.i.i.if.then41_crit_edge:           ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 2
  %35 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %37 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool12.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.if.then41_crit_edge

lor.lhs.false9.i.i.if.then41_crit_edge:           ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %38 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %40 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i92 = icmp eq i32 %40, 0
  br i1 %tobool.not.i92, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.if.then41_crit_edge

qla2x00_reset_active.exit.i.if.then41_crit_edge:  ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %21, i32 0, i32 2
  %41 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load.i = load volatile i32, ptr %41, align 4
  %43 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool40.not.not = icmp eq i32 %43, 0
  br i1 %tobool40.not.not, label %qla2x00_chip_is_down.exit.if.then41_crit_edge, label %if.end43

qla2x00_chip_is_down.exit.if.then41_crit_edge:    ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

if.then41:                                        ; preds = %qla2x00_chip_is_down.exit.if.then41_crit_edge, %qla2x00_reset_active.exit.i.if.then41_crit_edge, %lor.lhs.false9.i.i.if.then41_crit_edge, %lor.lhs.false5.i.i.if.then41_crit_edge, %lor.lhs.false.i.i.if.then41_crit_edge, %if.end38.if.then41_crit_edge
  tail call void @mutex_unlock(ptr noundef %optrom_mutex) #13
  br label %cleanup

if.end43:                                         ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %isp_ops, align 4
  %write_nvram45 = getelementptr inbounds %struct.isp_operations, ptr %45, i32 0, i32 23
  %46 = ptrtoint ptr %write_nvram45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_nvram45, align 4
  %nvram_base = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 60
  %48 = ptrtoint ptr %nvram_base to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %nvram_base, align 2
  %conv46 = zext i16 %49 to i32
  %call47 = tail call i32 %47(ptr noundef %hostdata.i, ptr noundef %buf, i32 noundef %conv46, i32 noundef %count) #13
  %50 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %isp_ops, align 4
  %read_nvram = getelementptr inbounds %struct.isp_operations, ptr %51, i32 0, i32 22
  %52 = ptrtoint ptr %read_nvram to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read_nvram, align 4
  %nvram = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 61
  %54 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nvram, align 8
  %56 = ptrtoint ptr %nvram_base to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %nvram_base, align 2
  %conv50 = zext i16 %57 to i32
  %call51 = tail call ptr %53(ptr noundef %hostdata.i, ptr noundef %55, i32 noundef %conv50, i32 noundef %count) #13
  tail call void @mutex_unlock(ptr noundef %optrom_mutex) #13
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i, i32 noundef 28768, ptr noundef nonnull @.str.22) #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags10.i.i) #13
  tail call void @qla2xxx_wake_dpc(ptr noundef %hostdata.i) #13
  %call53 = tail call i32 @qla2x00_wait_for_chip_reset(ptr noundef %hostdata.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then41, %if.then37, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then37 ], [ -11, %if.then41 ], [ %count, %if.end43 ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %dev_to_shost.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla28xx_get_aux_images(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_wait_for_hba_online(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_wake_dpc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_wait_for_chip_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_sysfs_read_optrom(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  %off.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %off, ptr %off.addr, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %2, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %optrom_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 203
  tail call void @mutex_lock_nested(ptr noundef %optrom_mutex, i32 noundef 0) #13
  %optrom_state = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 200
  %5 = ptrtoint ptr %optrom_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %optrom_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end, label %dev_to_shost.exit.out_crit_edge

dev_to_shost.exit.out_crit_edge:                  ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  %optrom_buffer = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 198
  %7 = ptrtoint ptr %optrom_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %optrom_buffer, align 4
  %optrom_region_size = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 202
  %9 = ptrtoint ptr %optrom_region_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %optrom_region_size, align 4
  %call2 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr, ptr noundef %8, i32 noundef %10) #13
  br label %out

out:                                              ; preds = %if.end, %dev_to_shost.exit.out_crit_edge
  %rval.0 = phi i32 [ 0, %dev_to_shost.exit.out_crit_edge ], [ %call2, %if.end ]
  call void @mutex_unlock(ptr noundef %optrom_mutex) #13
  ret i32 %rval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_sysfs_write_optrom(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %optrom_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 203
  tail call void @mutex_lock_nested(ptr noundef %optrom_mutex, i32 noundef 0) #13
  %optrom_state = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 200
  %4 = ptrtoint ptr %optrom_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %optrom_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %dev_to_shost.exit.cleanup_crit_edge

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %optrom_region_size = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 202
  %6 = ptrtoint ptr %optrom_region_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %optrom_region_size, align 4
  %conv = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %off)
  %cmp3 = icmp slt i64 %conv, %off
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv8 = zext i32 %count to i64
  %add = add i64 %conv8, %off
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp11 = icmp sgt i64 %add, %conv
  %8 = trunc i64 %off to i32
  %conv16 = sub i32 %7, %8
  %count.addr.0 = select i1 %cmp11, i32 %conv16, i32 %count
  %optrom_buffer = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 198
  %9 = ptrtoint ptr %optrom_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %optrom_buffer, align 4
  %arrayidx = getelementptr i8, ptr %10, i32 %8
  %11 = call ptr @memcpy(ptr %arrayidx, ptr %buf, i32 %count.addr.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %if.end7 ], [ -22, %dev_to_shost.exit.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %optrom_mutex) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_sysfs_write_optrom_ctl(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  %start = alloca i32, align 4
  %size = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #13
  %4 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %start, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #13
  %optrom_size = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 199
  %5 = ptrtoint ptr %optrom_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %optrom_size, align 8
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !473
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %tobool.not = icmp eq i64 %off, 0
  br i1 %tobool.not, label %if.end, label %dev_to_shost.exit.cleanup_crit_edge

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 128
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 43
  %11 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i.not = icmp eq i32 %12, 1
  br i1 %cmp.i.not, label %if.end7, label %if.end.cleanup_crit_edge, !prof !474

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.23, ptr noundef nonnull %val, ptr noundef nonnull %start, ptr noundef nonnull %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp = icmp slt i32 %call8, 1
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start, align 4
  %15 = ptrtoint ptr %optrom_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %optrom_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp12 = icmp ult i32 %16, %14
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %sub = sub i32 %16, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub)
  %cmp16 = icmp ugt i32 %18, %sub
  br i1 %cmp16, label %if.then17, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %size, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %optrom_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 203
  call void @mutex_lock_nested(ptr noundef %optrom_mutex, i32 noundef 0) #13
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end20.cleanup.sink.split_crit_edge

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

lor.lhs.false.i.i:                                ; preds = %if.end20
  %29 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool4.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.cleanup.sink.split_crit_edge

lor.lhs.false.i.i.cleanup.sink.split_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %32 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %34 = and i32 %33, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool8.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.cleanup.sink.split_crit_edge

lor.lhs.false5.i.i.cleanup.sink.split_crit_edge:  ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 2
  %35 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %37 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool12.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.cleanup.sink.split_crit_edge

lor.lhs.false9.i.i.cleanup.sink.split_crit_edge:  ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %38 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %40 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i216 = icmp eq i32 %40, 0
  br i1 %tobool.not.i216, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.cleanup.sink.split_crit_edge

qla2x00_reset_active.exit.i.cleanup.sink.split_crit_edge: ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %21, i32 0, i32 2
  %41 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load.i = load volatile i32, ptr %41, align 4
  %43 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool22.not.not = icmp eq i32 %43, 0
  br i1 %tobool22.not.not, label %qla2x00_chip_is_down.exit.cleanup.sink.split_crit_edge, label %if.end25

qla2x00_chip_is_down.exit.cleanup.sink.split_crit_edge: ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end25:                                         ; preds = %qla2x00_chip_is_down.exit
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %45, label %if.end25.cleanup.sink.split_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb33
    i32 2, label %sw.bb59
    i32 3, label %sw.bb115
  ]

if.end25.cleanup.sink.split_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end25
  %optrom_state = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 200
  %47 = ptrtoint ptr %optrom_state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %optrom_state, align 4
  %.off = add i32 %48, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end30, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end30:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %optrom_state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %optrom_state, align 4
  %optrom_region_size = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 202
  %50 = ptrtoint ptr %optrom_region_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %optrom_region_size, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i, i32 noundef 28769, ptr noundef nonnull @.str.24, i32 noundef %51) #13
  %optrom_buffer = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 198
  %52 = ptrtoint ptr %optrom_buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %optrom_buffer, align 4
  call void @vfree(ptr noundef %53) #13
  %54 = ptrtoint ptr %optrom_buffer to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %optrom_buffer, align 4
  br label %cleanup.sink.split

sw.bb33:                                          ; preds = %if.end25
  %optrom_state34 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 200
  %55 = ptrtoint ptr %optrom_state34 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %optrom_state34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp35.not = icmp eq i32 %56, 0
  br i1 %cmp35.not, label %if.end37, label %sw.bb33.cleanup.sink.split_crit_edge

sw.bb33.cleanup.sink.split_crit_edge:             ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end37:                                         ; preds = %sw.bb33
  %57 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %start, align 4
  %optrom_region_start = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 201
  %59 = ptrtoint ptr %optrom_region_start to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %optrom_region_start, align 16
  %60 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size, align 4
  %optrom_region_size38 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 202
  %62 = ptrtoint ptr %optrom_region_size38 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %optrom_region_size38, align 4
  %63 = ptrtoint ptr %optrom_state34 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %optrom_state34, align 4
  %call41 = call noalias ptr @vzalloc(i32 noundef %61) #18
  %optrom_buffer42 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 198
  %64 = ptrtoint ptr %optrom_buffer42 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call41, ptr %optrom_buffer42, align 4
  %cmp44 = icmp eq ptr %call41, null
  br i1 %cmp44, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %optrom_region_size38 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %optrom_region_size38, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28770, ptr noundef nonnull @.str.25, i32 noundef %66) #13
  %67 = ptrtoint ptr %optrom_state34 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %optrom_state34, align 4
  br label %cleanup.sink.split

if.end48:                                         ; preds = %if.end37
  %call49 = call i32 @qla2x00_wait_for_hba_online(ptr noundef %hostdata.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28771, ptr noundef nonnull @.str.21) #13
  br label %cleanup.sink.split

if.end52:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %optrom_region_start to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %optrom_region_start, align 16
  %70 = ptrtoint ptr %optrom_region_size38 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %optrom_region_size38, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i, i32 noundef 28772, ptr noundef nonnull @.str.26, i32 noundef %69, i32 noundef %71) #13
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 234
  %72 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %isp_ops, align 4
  %read_optrom = getelementptr inbounds %struct.isp_operations, ptr %73, i32 0, i32 29
  %74 = ptrtoint ptr %read_optrom to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read_optrom, align 4
  %76 = ptrtoint ptr %optrom_buffer42 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %optrom_buffer42, align 4
  %78 = ptrtoint ptr %optrom_region_start to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %optrom_region_start, align 16
  %80 = ptrtoint ptr %optrom_region_size38 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %optrom_region_size38, align 4
  %call58 = call ptr %75(ptr noundef %hostdata.i, ptr noundef %77, i32 noundef %79, i32 noundef %81) #13
  br label %cleanup.sink.split

sw.bb59:                                          ; preds = %if.end25
  %optrom_state60 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 200
  %82 = ptrtoint ptr %optrom_state60 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %optrom_state60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp61.not = icmp eq i32 %83, 0
  br i1 %cmp61.not, label %if.end63, label %sw.bb59.cleanup.sink.split_crit_edge

sw.bb59.cleanup.sink.split_crit_edge:             ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end63:                                         ; preds = %sw.bb59
  %84 = ptrtoint ptr %optrom_size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %optrom_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %85)
  %cmp65 = icmp eq i32 %85, 131072
  br i1 %cmp65, label %land.lhs.true66, label %if.end63.if.else_crit_edge

if.end63.if.else_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true66:                                  ; preds = %if.end63
  %86 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp67 = icmp eq i32 %87, 0
  br i1 %cmp67, label %land.lhs.true66.if.end100_crit_edge, label %land.lhs.true66.if.else_crit_edge

land.lhs.true66.if.else_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true66.if.end100_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

if.else:                                          ; preds = %land.lhs.true66.if.else_crit_edge, %if.end63.if.else_crit_edge
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %88 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %isp_type, align 8
  %90 = and i32 %89, 8064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %if.then99, label %if.else.if.end100_crit_edge

if.else.if.end100_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

if.then99:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %start, align 4
  %94 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %size, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28773, ptr noundef nonnull @.str.27, i32 noundef %93, i32 noundef %95) #13
  br label %cleanup.sink.split

if.end100:                                        ; preds = %if.else.if.end100_crit_edge, %land.lhs.true66.if.end100_crit_edge
  %96 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %start, align 4
  %optrom_region_start101 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 201
  %98 = ptrtoint ptr %optrom_region_start101 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %optrom_region_start101, align 16
  %99 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %size, align 4
  %optrom_region_size102 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 202
  %101 = ptrtoint ptr %optrom_region_size102 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %optrom_region_size102, align 4
  %102 = ptrtoint ptr %optrom_state60 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2, ptr %optrom_state60, align 4
  %call105 = call noalias ptr @vzalloc(i32 noundef %100) #18
  %optrom_buffer106 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 198
  %103 = ptrtoint ptr %optrom_buffer106 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call105, ptr %optrom_buffer106, align 4
  %cmp108 = icmp eq ptr %call105, null
  br i1 %cmp108, label %if.then109, label %if.end112

if.then109:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %optrom_region_size102 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %optrom_region_size102, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28774, ptr noundef nonnull @.str.28, i32 noundef %105) #13
  %106 = ptrtoint ptr %optrom_state60 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %optrom_state60, align 4
  br label %cleanup.sink.split

if.end112:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %optrom_region_start101 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %optrom_region_start101, align 16
  %109 = ptrtoint ptr %optrom_region_size102 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %optrom_region_size102, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i, i32 noundef 28775, ptr noundef nonnull @.str.29, i32 noundef %108, i32 noundef %110) #13
  br label %cleanup.sink.split

sw.bb115:                                         ; preds = %if.end25
  %optrom_state116 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 200
  %111 = ptrtoint ptr %optrom_state116 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %optrom_state116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %112)
  %cmp117.not = icmp eq i32 %112, 2
  br i1 %cmp117.not, label %if.end119, label %sw.bb115.cleanup.sink.split_crit_edge

sw.bb115.cleanup.sink.split_crit_edge:            ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end119:                                        ; preds = %sw.bb115
  %call120 = call i32 @qla2x00_wait_for_hba_online(ptr noundef %hostdata.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp121.not = icmp eq i32 %call120, 0
  br i1 %cmp121.not, label %if.end123, label %if.then122

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28776, ptr noundef nonnull @.str.30) #13
  br label %cleanup.sink.split

if.end123:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  %optrom_region_start124 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 201
  %113 = ptrtoint ptr %optrom_region_start124 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %optrom_region_start124, align 16
  %optrom_region_size125 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 202
  %115 = ptrtoint ptr %optrom_region_size125 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %optrom_region_size125, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i, i32 noundef 28777, ptr noundef nonnull @.str.31, i32 noundef %114, i32 noundef %116) #13
  %isp_ops126 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 234
  %117 = ptrtoint ptr %isp_ops126 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %isp_ops126, align 4
  %write_optrom = getelementptr inbounds %struct.isp_operations, ptr %118, i32 0, i32 30
  %119 = ptrtoint ptr %write_optrom to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write_optrom, align 4
  %optrom_buffer127 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 198
  %121 = ptrtoint ptr %optrom_buffer127 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %optrom_buffer127, align 4
  %123 = ptrtoint ptr %optrom_region_start124 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %optrom_region_start124, align 16
  %125 = ptrtoint ptr %optrom_region_size125 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %optrom_region_size125, align 4
  %call130 = call i32 %120(ptr noundef %hostdata.i, ptr noundef %122, i32 noundef %124, i32 noundef %126) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  %spec.store.select = select i1 %tobool131.not, i32 0, i32 -5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end123, %if.then122, %sw.bb115.cleanup.sink.split_crit_edge, %if.end112, %if.then109, %if.then99, %sw.bb59.cleanup.sink.split_crit_edge, %if.end52, %if.then51, %if.then45, %sw.bb33.cleanup.sink.split_crit_edge, %if.end30, %sw.bb.cleanup.sink.split_crit_edge, %if.end25.cleanup.sink.split_crit_edge, %qla2x00_chip_is_down.exit.cleanup.sink.split_crit_edge, %qla2x00_reset_active.exit.i.cleanup.sink.split_crit_edge, %lor.lhs.false9.i.i.cleanup.sink.split_crit_edge, %lor.lhs.false5.i.i.cleanup.sink.split_crit_edge, %lor.lhs.false.i.i.cleanup.sink.split_crit_edge, %if.end20.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -11, %if.end20.cleanup.sink.split_crit_edge ], [ -11, %lor.lhs.false.i.i.cleanup.sink.split_crit_edge ], [ -11, %lor.lhs.false5.i.i.cleanup.sink.split_crit_edge ], [ -11, %lor.lhs.false9.i.i.cleanup.sink.split_crit_edge ], [ -11, %qla2x00_reset_active.exit.i.cleanup.sink.split_crit_edge ], [ -11, %qla2x00_chip_is_down.exit.cleanup.sink.split_crit_edge ], [ -11, %if.then122 ], [ %spec.store.select, %if.end123 ], [ -12, %if.then109 ], [ %count, %if.end112 ], [ -22, %if.then99 ], [ -12, %if.then45 ], [ -11, %if.then51 ], [ %count, %if.end52 ], [ %count, %if.end30 ], [ -22, %sw.bb.cleanup.sink.split_crit_edge ], [ -22, %sw.bb33.cleanup.sink.split_crit_edge ], [ -22, %sw.bb59.cleanup.sink.split_crit_edge ], [ -22, %sw.bb115.cleanup.sink.split_crit_edge ], [ -22, %if.end25.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %optrom_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %dev_to_shost.exit.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_sysfs_read_vpd(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  %off.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %off, ptr %off.addr, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %2, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 128
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 43
  %7 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 1
  br i1 %cmp.i.not, label %if.end, label %dev_to_shost.exit.cleanup_crit_edge, !prof !474

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %call5 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call5, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 54
  %9 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %isp_type, align 8
  %11 = and i32 %10, 45719552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.end45, label %if.end7.skip_crit_edge

if.end7.skip_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip

if.end45:                                         ; preds = %if.end7
  %flt_region_vpd = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 220, i32 8
  %13 = ptrtoint ptr %flt_region_vpd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flt_region_vpd, align 4
  %shl = shl i32 %14, 2
  %optrom_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 203
  tail call void @mutex_lock_nested(ptr noundef %optrom_mutex, i32 noundef 0) #13
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44, i32 8
  %19 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end45.if.then68_crit_edge

if.end45.if.then68_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68

lor.lhs.false.i.i:                                ; preds = %if.end45
  %24 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %26 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool4.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.if.then68_crit_edge

lor.lhs.false.i.i.if.then68_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %27 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %29 = and i32 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool8.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.if.then68_crit_edge

lor.lhs.false5.i.i.if.then68_crit_edge:           ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 2
  %30 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool12.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.if.then68_crit_edge

lor.lhs.false9.i.i.if.then68_crit_edge:           ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %33 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %35 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i122 = icmp eq i32 %35, 0
  br i1 %tobool.not.i122, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.if.then68_crit_edge

qla2x00_reset_active.exit.i.if.then68_crit_edge:  ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 2
  %36 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load.i = load volatile i32, ptr %36, align 4
  %38 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool67.not.not = icmp eq i32 %38, 0
  br i1 %tobool67.not.not, label %qla2x00_chip_is_down.exit.if.then68_crit_edge, label %if.end70

qla2x00_chip_is_down.exit.if.then68_crit_edge:    ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68

if.then68:                                        ; preds = %qla2x00_chip_is_down.exit.if.then68_crit_edge, %qla2x00_reset_active.exit.i.if.then68_crit_edge, %lor.lhs.false9.i.i.if.then68_crit_edge, %lor.lhs.false5.i.i.if.then68_crit_edge, %lor.lhs.false.i.i.if.then68_crit_edge, %if.end45.if.then68_crit_edge
  tail call void @mutex_unlock(ptr noundef %optrom_mutex) #13
  br label %cleanup

if.end70:                                         ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 234
  %39 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %isp_ops, align 4
  %read_optrom = getelementptr inbounds %struct.isp_operations, ptr %40, i32 0, i32 29
  %41 = ptrtoint ptr %read_optrom to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read_optrom, align 4
  %vpd = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 64
  %43 = ptrtoint ptr %vpd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vpd, align 32
  %vpd_size = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 62
  %45 = ptrtoint ptr %vpd_size to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vpd_size, align 4
  %conv71 = zext i16 %46 to i32
  %call72 = tail call ptr %42(ptr noundef %hostdata.i, ptr noundef %44, i32 noundef %shl, i32 noundef %conv71) #13
  tail call void @mutex_unlock(ptr noundef %optrom_mutex) #13
  %47 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %isp_ops, align 4
  %read_optrom75 = getelementptr inbounds %struct.isp_operations, ptr %48, i32 0, i32 29
  %49 = ptrtoint ptr %read_optrom75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_optrom75, align 4
  %51 = ptrtoint ptr %vpd to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vpd, align 32
  %53 = ptrtoint ptr %vpd_size to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vpd_size, align 4
  %conv78 = zext i16 %54 to i32
  %call79 = tail call ptr %50(ptr noundef %hostdata.i, ptr noundef %52, i32 noundef %shl, i32 noundef %conv78) #13
  br label %skip

skip:                                             ; preds = %if.end70, %if.end7.skip_crit_edge
  %vpd80 = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 64
  %55 = ptrtoint ptr %vpd80 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vpd80, align 32
  %vpd_size81 = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 62
  %57 = ptrtoint ptr %vpd_size81 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vpd_size81, align 4
  %conv82 = zext i16 %58 to i32
  %call83 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr, ptr noundef %56, i32 noundef %conv82) #13
  br label %cleanup

cleanup:                                          ; preds = %skip, %if.then68, %if.end.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call83, %skip ], [ -11, %if.then68 ], [ -11, %dev_to_shost.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_sysfs_write_vpd(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 43
  %6 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 1
  br i1 %cmp.i.not, label %if.end, label %dev_to_shost.exit.cleanup_crit_edge, !prof !474

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end
  %13 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %16 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %18 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.cleanup_crit_edge

lor.lhs.false5.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 2
  %19 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.cleanup_crit_edge

lor.lhs.false9.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %22 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i76 = icmp eq i32 %24, 0
  br i1 %tobool.not.i76, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.cleanup_crit_edge

qla2x00_reset_active.exit.i.cleanup_crit_edge:    ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 2
  %25 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i = load volatile i32, ptr %25, align 4
  %27 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool6.not.not = icmp eq i32 %27, 0
  br i1 %tobool6.not.not, label %qla2x00_chip_is_down.exit.cleanup_crit_edge, label %if.end8

qla2x00_chip_is_down.exit.cleanup_crit_edge:      ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %qla2x00_chip_is_down.exit
  %call9 = tail call zeroext i1 @capable(i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp.not, %call9
  br i1 %or.cond, label %lor.lhs.false10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false10:                                  ; preds = %if.end8
  %vpd_size = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 62
  %28 = ptrtoint ptr %vpd_size to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vpd_size, align 4
  %conv = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %count)
  %cmp11.not = icmp eq i32 %conv, %count
  br i1 %cmp11.not, label %lor.lhs.false13, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 234
  %30 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %isp_ops, align 4
  %write_nvram = getelementptr inbounds %struct.isp_operations, ptr %31, i32 0, i32 23
  %32 = ptrtoint ptr %write_nvram to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_nvram, align 4
  %tobool14.not = icmp eq ptr %33, null
  br i1 %tobool14.not, label %lor.lhs.false13.cleanup_crit_edge, label %if.end16

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false13
  %call17 = tail call i32 @qla2x00_wait_for_hba_online(ptr noundef %hostdata.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28778, ptr noundef nonnull @.str.35) #13
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %optrom_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 203
  tail call void @mutex_lock_nested(ptr noundef %optrom_mutex, i32 noundef 0) #13
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 128
  %driver_data.i.i.i.i78 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44, i32 8
  %38 = ptrtoint ptr %driver_data.i.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i.i.i78, align 4
  %dpc_flags.i.i79 = getelementptr inbounds %struct.scsi_qla_host, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %dpc_flags.i.i79 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %dpc_flags.i.i79, align 4
  %42 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i80 = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i80, label %lor.lhs.false.i.i82, label %if.end21.if.then24_crit_edge

if.end21.if.then24_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

lor.lhs.false.i.i82:                              ; preds = %if.end21
  %43 = ptrtoint ptr %dpc_flags.i.i79 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %dpc_flags.i.i79, align 4
  %45 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool4.not.i.i81 = icmp eq i32 %45, 0
  br i1 %tobool4.not.i.i81, label %lor.lhs.false5.i.i84, label %lor.lhs.false.i.i82.if.then24_crit_edge

lor.lhs.false.i.i82.if.then24_crit_edge:          ; preds = %lor.lhs.false.i.i82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

lor.lhs.false5.i.i84:                             ; preds = %lor.lhs.false.i.i82
  %46 = ptrtoint ptr %dpc_flags.i.i79 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %dpc_flags.i.i79, align 4
  %48 = and i32 %47, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool8.not.i.i83 = icmp eq i32 %48, 0
  br i1 %tobool8.not.i.i83, label %lor.lhs.false9.i.i87, label %lor.lhs.false5.i.i84.if.then24_crit_edge

lor.lhs.false5.i.i84.if.then24_crit_edge:         ; preds = %lor.lhs.false5.i.i84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

lor.lhs.false9.i.i87:                             ; preds = %lor.lhs.false5.i.i84
  %49 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %51 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool12.not.i.i86 = icmp eq i32 %51, 0
  br i1 %tobool12.not.i.i86, label %qla2x00_reset_active.exit.i89, label %lor.lhs.false9.i.i87.if.then24_crit_edge

lor.lhs.false9.i.i87.if.then24_crit_edge:         ; preds = %lor.lhs.false9.i.i87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

qla2x00_reset_active.exit.i89:                    ; preds = %lor.lhs.false9.i.i87
  %52 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %54 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i88 = icmp eq i32 %54, 0
  br i1 %tobool.not.i88, label %qla2x00_chip_is_down.exit94, label %qla2x00_reset_active.exit.i89.if.then24_crit_edge

qla2x00_reset_active.exit.i89.if.then24_crit_edge: ; preds = %qla2x00_reset_active.exit.i89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

qla2x00_chip_is_down.exit94:                      ; preds = %qla2x00_reset_active.exit.i89
  %flags.i90 = getelementptr inbounds %struct.qla_hw_data, ptr %35, i32 0, i32 2
  %55 = getelementptr inbounds i32, ptr %flags.i90, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load.i91 = load volatile i32, ptr %55, align 4
  %57 = and i32 %bf.load.i91, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool23.not.not = icmp eq i32 %57, 0
  br i1 %tobool23.not.not, label %qla2x00_chip_is_down.exit94.if.then24_crit_edge, label %if.end26

qla2x00_chip_is_down.exit94.if.then24_crit_edge:  ; preds = %qla2x00_chip_is_down.exit94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

if.then24:                                        ; preds = %qla2x00_chip_is_down.exit94.if.then24_crit_edge, %qla2x00_reset_active.exit.i89.if.then24_crit_edge, %lor.lhs.false9.i.i87.if.then24_crit_edge, %lor.lhs.false5.i.i84.if.then24_crit_edge, %lor.lhs.false.i.i82.if.then24_crit_edge, %if.end21.if.then24_crit_edge
  tail call void @mutex_unlock(ptr noundef %optrom_mutex) #13
  br label %cleanup

if.end26:                                         ; preds = %qla2x00_chip_is_down.exit94
  %58 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %isp_ops, align 4
  %write_nvram28 = getelementptr inbounds %struct.isp_operations, ptr %59, i32 0, i32 23
  %60 = ptrtoint ptr %write_nvram28 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_nvram28, align 4
  %vpd_base = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 63
  %62 = ptrtoint ptr %vpd_base to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vpd_base, align 2
  %conv29 = zext i16 %63 to i32
  %call30 = tail call i32 %61(ptr noundef %hostdata.i, ptr noundef %buf, i32 noundef %conv29, i32 noundef %count) #13
  %64 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %isp_ops, align 4
  %read_nvram = getelementptr inbounds %struct.isp_operations, ptr %65, i32 0, i32 22
  %66 = ptrtoint ptr %read_nvram to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read_nvram, align 4
  %vpd = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 64
  %68 = ptrtoint ptr %vpd to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vpd, align 32
  %70 = ptrtoint ptr %vpd_base to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vpd_base, align 2
  %conv33 = zext i16 %71 to i32
  %call34 = tail call ptr %67(ptr noundef %hostdata.i, ptr noundef %69, i32 noundef %conv33, i32 noundef %count) #13
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %72 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %device_type, align 4
  %and = and i32 %73, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %optrom_mutex) #13
  br label %cleanup

if.end38:                                         ; preds = %if.end26
  %call39 = tail call noalias ptr @vmalloc(i32 noundef 256) #18
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %optrom_mutex) #13
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28779, ptr noundef nonnull @.str.36) #13
  br label %cleanup

if.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %isp_ops, align 4
  %get_flash_version = getelementptr inbounds %struct.isp_operations, ptr %75, i32 0, i32 31
  %76 = ptrtoint ptr %get_flash_version to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %get_flash_version, align 4
  %call45 = tail call i32 %77(ptr noundef %hostdata.i, ptr noundef nonnull %call39) #13
  tail call void @vfree(ptr noundef nonnull %call39) #13
  tail call void @mutex_unlock(ptr noundef %optrom_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then41, %if.then36, %if.then24, %if.then20, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %qla2x00_chip_is_down.exit.cleanup_crit_edge, %qla2x00_reset_active.exit.i.cleanup_crit_edge, %lor.lhs.false9.i.i.cleanup_crit_edge, %lor.lhs.false5.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then20 ], [ -11, %if.then24 ], [ %count, %if.end43 ], [ -12, %if.then41 ], [ -22, %if.then36 ], [ 0, %dev_to_shost.exit.cleanup_crit_edge ], [ 0, %qla2x00_chip_is_down.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false13.cleanup_crit_edge ], [ 0, %lor.lhs.false10.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %qla2x00_reset_active.exit.i.cleanup_crit_edge ], [ 0, %lor.lhs.false9.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false5.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_sysfs_read_sfp(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %call2 = tail call zeroext i1 @capable(i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp.not, %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %count)
  %cmp4 = icmp ugt i32 %count, 511
  %2 = and i1 %cmp4, %or.cond
  br i1 %2, label %if.end, label %dev_to_shost.exit.cleanup_crit_edge

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %optrom_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 203
  tail call void @mutex_lock_nested(ptr noundef %optrom_mutex, i32 noundef 0) #13
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

lor.lhs.false.i.i:                                ; preds = %if.end
  %14 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %16 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.if.then6_crit_edge

lor.lhs.false.i.i.if.then6_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %17 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %19 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.if.then6_crit_edge

lor.lhs.false5.i.i.if.then6_crit_edge:            ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 2
  %20 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool12.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.if.then6_crit_edge

lor.lhs.false9.i.i.if.then6_crit_edge:            ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %23 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %25 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i24 = icmp eq i32 %25, 0
  br i1 %tobool.not.i24, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.if.then6_crit_edge

qla2x00_reset_active.exit.i.if.then6_crit_edge:   ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %6, i32 0, i32 2
  %26 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.i = load volatile i32, ptr %26, align 4
  %28 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.not = icmp eq i32 %28, 0
  br i1 %tobool.not.not, label %qla2x00_chip_is_down.exit.if.then6_crit_edge, label %if.end9

qla2x00_chip_is_down.exit.if.then6_crit_edge:     ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then6:                                         ; preds = %qla2x00_chip_is_down.exit.if.then6_crit_edge, %qla2x00_reset_active.exit.i.if.then6_crit_edge, %lor.lhs.false9.i.i.if.then6_crit_edge, %lor.lhs.false5.i.i.if.then6_crit_edge, %lor.lhs.false.i.i.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %optrom_mutex8 = getelementptr inbounds %struct.qla_hw_data, ptr %6, i32 0, i32 203
  tail call void @mutex_unlock(ptr noundef %optrom_mutex8) #13
  br label %cleanup

if.end9:                                          ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 @qla2x00_read_sfp_dev(ptr noundef %hostdata.i, ptr noundef %buf, i32 noundef %count) #13
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %optrom_mutex12 = getelementptr inbounds %struct.qla_hw_data, ptr %30, i32 0, i32 203
  tail call void @mutex_unlock(ptr noundef %optrom_mutex12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool13.not = icmp eq i32 %call10, 0
  %count. = select i1 %tobool13.not, i32 %count, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %dev_to_shost.exit.cleanup_crit_edge ], [ %count., %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_read_sfp_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_sysfs_write_reset(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  %idc_control = alloca i32, align 4
  %idc_control101 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idc_control) #13
  %8 = ptrtoint ptr %idc_control to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %idc_control, align 4, !annotation !473
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  br i1 %cmp.not, label %if.end, label %dev_to_shost.exit.cleanup_crit_edge

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %call3 = tail call i32 @simple_strtol(ptr noundef %buf, ptr noundef null, i32 noundef 10) #13
  %9 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %call3, label %if.end.cleanup_crit_edge [
    i32 131676, label %sw.bb
    i32 131677, label %sw.bb26
    i32 131678, label %sw.bb153
    i32 131679, label %sw.bb169
    i32 131680, label %sw.bb179
    i32 131681, label %sw.bb189
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28782, ptr noundef nonnull @.str.37) #13
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %11, i32 0, i32 2
  %12 = getelementptr inbounds i32, ptr %flags, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load = load volatile i32, ptr %12, align 4
  %14 = and i32 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28782, ptr noundef nonnull @.str.38) #13
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  %host = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 1, i32 4, i32 6
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 8
  tail call void @scsi_block_requests(ptr noundef %16) #13
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %17 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %isp_type, align 8
  %and7 = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %flags10 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load11 = load volatile i32, ptr %flags10, align 8
  %bf.set = or i32 %bf.load11, 32
  store volatile i32 %bf.set, ptr %flags10, align 8
  %call13 = tail call i32 @qla82xx_idc_lock(ptr noundef %3) #13
  tail call void @qla82xx_set_reset_owner(ptr noundef %hostdata.i) #13
  tail call void @qla82xx_idc_unlock(ptr noundef %3) #13
  br label %if.end23

if.else:                                          ; preds = %if.end6
  %and16 = and i32 %18, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else21, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call i32 @qla8044_idc_lock(ptr noundef %3) #13
  %call20 = tail call i32 @qla8044_rd_reg(ptr noundef %3, i32 noundef 14224) #13
  %20 = ptrtoint ptr %idc_control to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call20, ptr %idc_control, align 4
  %or = or i32 %call20, 2
  tail call void @qla8044_wr_reg(ptr noundef %3, i32 noundef 14224, i32 noundef %or) #13
  tail call void @qla82xx_set_reset_owner(ptr noundef %hostdata.i) #13
  tail call void @qla8044_idc_unlock(ptr noundef %3) #13
  br label %if.end23

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %dpc_flags = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags) #13
  tail call void @qla2xxx_wake_dpc(ptr noundef %hostdata.i) #13
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.then18, %if.then9
  %call24 = tail call i32 @qla2x00_wait_for_chip_reset(ptr noundef %hostdata.i) #13
  %21 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host, align 8
  tail call void @scsi_unblock_requests(ptr noundef %22) #13
  br label %cleanup

sw.bb26:                                          ; preds = %if.end
  %isp_type27 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %23 = ptrtoint ptr %isp_type27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %isp_type27, align 8
  %25 = and i32 %24, 45719552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %sw.bb26.cleanup_crit_edge, label %if.end65

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end65:                                         ; preds = %sw.bb26
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28783, ptr noundef nonnull @.str.39) #13
  %27 = ptrtoint ptr %isp_type27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %isp_type27, align 8
  %29 = and i32 %28, 45711360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %if.else106, label %if.then100

if.then100:                                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idc_control101) #13
  %31 = ptrtoint ptr %idc_control101 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %idc_control101, align 4, !annotation !473
  tail call void @qla83xx_idc_lock(ptr noundef %hostdata.i, i16 noundef zeroext 0) #13
  %call102 = call i32 @__qla83xx_get_idc_control(ptr noundef %hostdata.i, ptr noundef nonnull %idc_control101) #13
  %32 = ptrtoint ptr %idc_control101 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idc_control101, align 4
  %or103 = or i32 %33, 2
  store i32 %or103, ptr %idc_control101, align 4
  %call104 = call i32 @__qla83xx_set_idc_control(ptr noundef %hostdata.i, i32 noundef %or103) #13
  %call105 = call i32 @qla83xx_wr_reg(ptr noundef %hostdata.i, i32 noundef 571483012, i32 noundef 4) #13
  call void @qla83xx_idc_audit(ptr noundef %hostdata.i, i32 noundef 0) #13
  call void @qla83xx_idc_unlock(ptr noundef %hostdata.i, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idc_control101) #13
  br label %cleanup

if.else106:                                       ; preds = %if.end65
  %call107 = tail call i32 @qla2x00_wait_for_hba_online(ptr noundef %hostdata.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108.not = icmp eq i32 %call107, 0
  br i1 %cmp108.not, label %if.else106.if.end139_crit_edge, label %land.rhs

if.else106.if.end139_crit_edge:                   ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

land.rhs:                                         ; preds = %if.else106
  %.b274 = load i1, ptr @qla2x00_sysfs_write_reset.__already_done, align 1
  br i1 %.b274, label %land.rhs.if.end139_crit_edge, label %if.then116, !prof !474

land.rhs.if.end139_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

if.then116:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qla2x00_sysfs_write_reset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 763, i32 noundef 9, ptr noundef null) #13
  br label %if.end139

if.end139:                                        ; preds = %if.then116, %land.rhs.if.end139_crit_edge, %if.else106.if.end139_crit_edge
  %host147 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 1, i32 4, i32 6
  %34 = ptrtoint ptr %host147 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %host147, align 8
  tail call void @scsi_block_requests(ptr noundef %35) #13
  %call148 = tail call i32 @qla81xx_restart_mpi_firmware(ptr noundef %hostdata.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149.not = icmp eq i32 %call148, 0
  br i1 %cmp149.not, label %if.end139.if.end151_crit_edge, label %if.then150

if.end139.if.end151_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

if.then150:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28784, ptr noundef nonnull @.str.41) #13
  br label %if.end151

if.end151:                                        ; preds = %if.then150, %if.end139.if.end151_crit_edge
  %36 = ptrtoint ptr %host147 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host147, align 8
  tail call void @scsi_unblock_requests(ptr noundef %37) #13
  br label %cleanup

sw.bb153:                                         ; preds = %if.end
  %isp_type154 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %38 = ptrtoint ptr %isp_type154 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %isp_type154, align 8
  %40 = and i32 %39, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %41 = icmp ne i32 %40, 0
  %cmp164.not = icmp eq ptr %hostdata.i, %7
  %or.cond288 = select i1 %41, i1 %cmp164.not, i1 false
  br i1 %or.cond288, label %if.end166, label %if.then165

if.then165:                                       ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28785, ptr noundef nonnull @.str.42) #13
  br label %cleanup

if.end166:                                        ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28786, ptr noundef nonnull @.str.43) #13
  %dpc_flags167 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 2
  tail call void @_set_bit(i32 noundef 18, ptr noundef %dpc_flags167) #13
  tail call void @qla2xxx_wake_dpc(ptr noundef %hostdata.i) #13
  %call168 = tail call i32 @qla2x00_wait_for_fcoe_ctx_reset(ptr noundef %hostdata.i) #13
  br label %cleanup

sw.bb169:                                         ; preds = %if.end
  %isp_type170 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %42 = ptrtoint ptr %isp_type170 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %isp_type170, align 8
  %and172 = and i32 %43, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %sw.bb169.cleanup_crit_edge, label %if.end175

sw.bb169.cleanup_crit_edge:                       ; preds = %sw.bb169
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end175:                                        ; preds = %sw.bb169
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28860, ptr noundef nonnull @.str.44) #13
  tail call void @qla83xx_idc_lock(ptr noundef %hostdata.i, i16 noundef zeroext 0) #13
  %call176 = call i32 @__qla83xx_get_idc_control(ptr noundef %hostdata.i, ptr noundef nonnull %idc_control) #13
  %44 = ptrtoint ptr %idc_control to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %idc_control, align 4
  %or177 = or i32 %45, 1
  store i32 %or177, ptr %idc_control, align 4
  %call178 = call i32 @__qla83xx_set_idc_control(ptr noundef %hostdata.i, i32 noundef %or177) #13
  call void @qla83xx_idc_unlock(ptr noundef %hostdata.i, i16 noundef zeroext 0) #13
  br label %cleanup

sw.bb179:                                         ; preds = %if.end
  %isp_type180 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %46 = ptrtoint ptr %isp_type180 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %isp_type180, align 8
  %and182 = and i32 %47, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %sw.bb179.cleanup_crit_edge, label %if.end185

sw.bb179.cleanup_crit_edge:                       ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end185:                                        ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28861, ptr noundef nonnull @.str.45) #13
  tail call void @qla83xx_idc_lock(ptr noundef %hostdata.i, i16 noundef zeroext 0) #13
  %call186 = call i32 @__qla83xx_get_idc_control(ptr noundef %hostdata.i, ptr noundef nonnull %idc_control) #13
  %48 = ptrtoint ptr %idc_control to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %idc_control, align 4
  %and187 = and i32 %49, -2
  store i32 %and187, ptr %idc_control, align 4
  %call188 = call i32 @__qla83xx_set_idc_control(ptr noundef %hostdata.i, i32 noundef %and187) #13
  call void @qla83xx_idc_unlock(ptr noundef %hostdata.i, i16 noundef zeroext 0) #13
  br label %cleanup

sw.bb189:                                         ; preds = %if.end
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i, i32 noundef 28896, ptr noundef nonnull @.str.46) #13
  %call190 = tail call noalias ptr @vmalloc(i32 noundef 256) #18
  %tobool191.not = icmp eq ptr %call190, null
  br i1 %tobool191.not, label %if.then192, label %if.end193

if.then192:                                       ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28897, ptr noundef nonnull @.str.36) #13
  br label %cleanup

if.end193:                                        ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #15
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 234
  %50 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %isp_ops, align 4
  %get_flash_version = getelementptr inbounds %struct.isp_operations, ptr %51, i32 0, i32 31
  %52 = ptrtoint ptr %get_flash_version to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %get_flash_version, align 4
  %call194 = tail call i32 %53(ptr noundef %hostdata.i, ptr noundef nonnull %call190) #13
  tail call void @vfree(ptr noundef nonnull %call190) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end193, %if.then192, %if.end185, %sw.bb179.cleanup_crit_edge, %if.end175, %sw.bb169.cleanup_crit_edge, %if.end166, %if.then165, %if.end151, %if.then100, %sw.bb26.cleanup_crit_edge, %if.end23, %if.then5, %if.end.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then192 ], [ -1, %if.then165 ], [ -22, %if.then5 ], [ -22, %dev_to_shost.exit.cleanup_crit_edge ], [ -1, %sw.bb26.cleanup_crit_edge ], [ -1, %sw.bb169.cleanup_crit_edge ], [ -1, %sw.bb179.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %if.end193 ], [ %count, %if.end185 ], [ %count, %if.end175 ], [ %count, %if.end166 ], [ %count, %if.end151 ], [ %count, %if.then100 ], [ %count, %if.end23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idc_control) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla8044_rd_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla8044_wr_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_unblock_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla83xx_idc_lock(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__qla83xx_get_idc_control(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__qla83xx_set_idc_control(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla83xx_wr_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla83xx_idc_audit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla83xx_idc_unlock(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla81xx_restart_mpi_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_wait_for_fcoe_ctx_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_issue_logo(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %call2 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call2, label %if.end, label %dev_to_shost.exit.cleanup_crit_edge

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 43
  %6 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 1
  br i1 %cmp.i.not, label %if.end7, label %if.end.cleanup_crit_edge, !prof !474

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end7
  %13 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %16 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %18 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.cleanup_crit_edge

lor.lhs.false5.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 2
  %19 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.cleanup_crit_edge

lor.lhs.false9.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %22 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i34 = icmp eq i32 %24, 0
  br i1 %tobool.not.i34, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.cleanup_crit_edge

qla2x00_reset_active.exit.i.cleanup_crit_edge:    ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 2
  %25 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i = load volatile i32, ptr %25, align 4
  %27 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool9.not.not = icmp eq i32 %27, 0
  br i1 %tobool9.not.not, label %qla2x00_chip_is_down.exit.cleanup_crit_edge, label %if.end11

qla2x00_chip_is_down.exit.cleanup_crit_edge:      ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call i32 @simple_strtol(ptr noundef %buf, ptr noundef null, i32 noundef 10) #13
  %and = lshr i32 %call12, 16
  %and13 = lshr i32 %call12, 8
  %conv19 = and i32 %and, 255
  %conv21 = and i32 %and13, 255
  %conv23 = and i32 %call12, 255
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 53325, ptr noundef nonnull @.str.47, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv23) #13
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28900, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.qla2x00_issue_logo, i32 noundef %call12) #13
  %did.sroa.0.0.insert.shift = shl i32 %call12, 8
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %did.sroa.0.0.insert.shift, 0
  %call24 = tail call i32 @qla24xx_els_dcmd_iocb(ptr noundef %hostdata.i, i32 noundef 5, [1 x i32] %.fca.0.insert) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %qla2x00_chip_is_down.exit.cleanup_crit_edge, %qla2x00_reset_active.exit.i.cleanup_crit_edge, %lor.lhs.false9.i.i.cleanup_crit_edge, %lor.lhs.false5.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end11 ], [ 0, %dev_to_shost.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %qla2x00_chip_is_down.exit.cleanup_crit_edge ], [ 0, %qla2x00_reset_active.exit.i.cleanup_crit_edge ], [ 0, %lor.lhs.false9.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false5.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.i.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_els_dcmd_iocb(ptr noundef, i32 noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_sysfs_read_xgmac_stats(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  %actual_size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %actual_size) #13
  %call2 = tail call zeroext i1 @capable(i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp.not, %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %count)
  %cmp4 = icmp ult i32 %count, 4097
  %4 = and i1 %cmp4, %or.cond
  br i1 %4, label %if.end, label %dev_to_shost.exit.cleanup_crit_edge

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 128
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 43
  %7 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 1
  br i1 %cmp.i.not, label %if.end9, label %if.end.cleanup_crit_edge, !prof !474

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %optrom_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %10, i32 0, i32 203
  tail call void @mutex_lock_nested(ptr noundef %optrom_mutex, i32 noundef 0) #13
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end9.if.then13_crit_edge

if.end9.if.then13_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

lor.lhs.false.i.i:                                ; preds = %if.end9
  %20 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool4.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.if.then13_crit_edge

lor.lhs.false.i.i.if.then13_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %23 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %25 = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.if.then13_crit_edge

lor.lhs.false5.i.i.if.then13_crit_edge:           ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 2
  %26 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.if.then13_crit_edge

lor.lhs.false9.i.i.if.then13_crit_edge:           ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %29 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i66 = icmp eq i32 %31, 0
  br i1 %tobool.not.i66, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.if.then13_crit_edge

qla2x00_reset_active.exit.i.if.then13_crit_edge:  ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %12, i32 0, i32 2
  %32 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load.i = load volatile i32, ptr %32, align 4
  %34 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool12.not.not = icmp eq i32 %34, 0
  br i1 %tobool12.not.not, label %qla2x00_chip_is_down.exit.if.then13_crit_edge, label %if.end16

qla2x00_chip_is_down.exit.if.then13_crit_edge:    ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then13:                                        ; preds = %qla2x00_chip_is_down.exit.if.then13_crit_edge, %qla2x00_reset_active.exit.i.if.then13_crit_edge, %lor.lhs.false9.i.i.if.then13_crit_edge, %lor.lhs.false5.i.i.if.then13_crit_edge, %lor.lhs.false.i.i.if.then13_crit_edge, %if.end9.if.then13_crit_edge
  %optrom_mutex15 = getelementptr inbounds %struct.qla_hw_data, ptr %12, i32 0, i32 203
  tail call void @mutex_unlock(ptr noundef %optrom_mutex15) #13
  br label %cleanup

if.end16:                                         ; preds = %qla2x00_chip_is_down.exit
  %xgmac_data = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 87
  %35 = ptrtoint ptr %xgmac_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xgmac_data, align 16
  %tobool17.not = icmp eq ptr %36, null
  br i1 %tobool17.not, label %if.end19, label %if.end16.do_read_crit_edge

if.end16.do_read_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_read

if.end19:                                         ; preds = %if.end16
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %xgmac_data_dma = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 88
  %call.i67 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %xgmac_data_dma, i32 noundef 3264, i32 noundef 0) #13
  %39 = ptrtoint ptr %xgmac_data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i67, ptr %xgmac_data, align 16
  %tobool24.not = icmp eq ptr %call.i67, null
  br i1 %tobool24.not, label %if.then25, label %if.end19.do_read_crit_edge

if.end19.do_read_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_read

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  %optrom_mutex27 = getelementptr inbounds %struct.qla_hw_data, ptr %41, i32 0, i32 203
  tail call void @mutex_unlock(ptr noundef %optrom_mutex27) #13
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28790, ptr noundef nonnull @.str.49) #13
  br label %cleanup

do_read:                                          ; preds = %if.end19.do_read_crit_edge, %if.end16.do_read_crit_edge
  %42 = ptrtoint ptr %actual_size to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %actual_size, align 2
  %43 = ptrtoint ptr %xgmac_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xgmac_data, align 16
  %45 = call ptr @memset(ptr %44, i32 0, i32 4096)
  %xgmac_data_dma30 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 88
  %46 = ptrtoint ptr %xgmac_data_dma30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %xgmac_data_dma30, align 4
  %call31 = call i32 @qla2x00_get_xgmac_stats(ptr noundef %hostdata.i, i32 noundef %47, i16 noundef zeroext 4096, ptr noundef nonnull %actual_size) #13
  %48 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw, align 4
  %optrom_mutex33 = getelementptr inbounds %struct.qla_hw_data, ptr %49, i32 0, i32 203
  call void @mutex_unlock(ptr noundef %optrom_mutex33) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp34.not = icmp eq i32 %call31, 0
  br i1 %cmp34.not, label %do_read.if.end36_crit_edge, label %if.then35

do_read.if.end36_crit_edge:                       ; preds = %do_read
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then35:                                        ; preds = %do_read
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28791, ptr noundef nonnull @.str.50, i32 noundef %call31) #13
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %do_read.if.end36_crit_edge
  %count.addr.0 = phi i32 [ 0, %if.then35 ], [ %count, %do_read.if.end36_crit_edge ]
  %50 = ptrtoint ptr %actual_size to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %actual_size, align 2
  %conv = zext i16 %51 to i32
  %52 = call i32 @llvm.umin.i32(i32 %count.addr.0, i32 %conv)
  %53 = ptrtoint ptr %xgmac_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xgmac_data, align 16
  %55 = call ptr @memcpy(ptr %buf, ptr %54, i32 %52)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then25, %if.then13, %if.end.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then13 ], [ %52, %if.end36 ], [ 0, %if.then25 ], [ 0, %dev_to_shost.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %actual_size) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_get_xgmac_stats(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_sysfs_read_dcbx_tlv(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %call2 = tail call zeroext i1 @capable(i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp.not, %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %count)
  %cmp4 = icmp ult i32 %count, 4097
  %4 = and i1 %cmp4, %or.cond
  br i1 %4, label %if.end, label %dev_to_shost.exit.cleanup_crit_edge

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %dcbx_tlv = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 89
  %5 = ptrtoint ptr %dcbx_tlv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dcbx_tlv, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end6, label %if.end.do_read_crit_edge

if.end.do_read_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_read

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %optrom_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %8, i32 0, i32 203
  tail call void @mutex_lock_nested(ptr noundef %optrom_mutex, i32 noundef 0) #13
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end6.if.then10_crit_edge

if.end6.if.then10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

lor.lhs.false.i.i:                                ; preds = %if.end6
  %18 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.if.then10_crit_edge

lor.lhs.false.i.i.if.then10_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %21 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %23 = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool8.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.if.then10_crit_edge

lor.lhs.false5.i.i.if.then10_crit_edge:           ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 2
  %24 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool12.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.if.then10_crit_edge

lor.lhs.false9.i.i.if.then10_crit_edge:           ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %27 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i52 = icmp eq i32 %29, 0
  br i1 %tobool.not.i52, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.if.then10_crit_edge

qla2x00_reset_active.exit.i.if.then10_crit_edge:  ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %10, i32 0, i32 2
  %30 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load.i = load volatile i32, ptr %30, align 4
  %32 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool9.not.not = icmp eq i32 %32, 0
  br i1 %tobool9.not.not, label %qla2x00_chip_is_down.exit.if.then10_crit_edge, label %if.end13

qla2x00_chip_is_down.exit.if.then10_crit_edge:    ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.then10:                                        ; preds = %qla2x00_chip_is_down.exit.if.then10_crit_edge, %qla2x00_reset_active.exit.i.if.then10_crit_edge, %lor.lhs.false9.i.i.if.then10_crit_edge, %lor.lhs.false5.i.i.if.then10_crit_edge, %lor.lhs.false.i.i.if.then10_crit_edge, %if.end6.if.then10_crit_edge
  %optrom_mutex12 = getelementptr inbounds %struct.qla_hw_data, ptr %10, i32 0, i32 203
  tail call void @mutex_unlock(ptr noundef %optrom_mutex12) #13
  br label %cleanup

if.end13:                                         ; preds = %qla2x00_chip_is_down.exit
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %dcbx_tlv_dma = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 90
  %call.i53 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %dcbx_tlv_dma, i32 noundef 3264, i32 noundef 0) #13
  %35 = ptrtoint ptr %dcbx_tlv to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i53, ptr %dcbx_tlv, align 8
  %tobool17.not = icmp eq ptr %call.i53, null
  br i1 %tobool17.not, label %if.then18, label %if.end13.do_read_crit_edge

if.end13.do_read_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_read

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %optrom_mutex20 = getelementptr inbounds %struct.qla_hw_data, ptr %37, i32 0, i32 203
  tail call void @mutex_unlock(ptr noundef %optrom_mutex20) #13
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28792, ptr noundef nonnull @.str.51) #13
  br label %cleanup

do_read:                                          ; preds = %if.end13.do_read_crit_edge, %if.end.do_read_crit_edge
  %38 = ptrtoint ptr %dcbx_tlv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dcbx_tlv, align 8
  %40 = call ptr @memset(ptr %39, i32 0, i32 4096)
  %dcbx_tlv_dma23 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 90
  %41 = ptrtoint ptr %dcbx_tlv_dma23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dcbx_tlv_dma23, align 4
  %call24 = tail call i32 @qla2x00_get_dcbx_params(ptr noundef %hostdata.i, i32 noundef %42, i16 noundef zeroext 4096) #13
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 4
  %optrom_mutex26 = getelementptr inbounds %struct.qla_hw_data, ptr %44, i32 0, i32 203
  tail call void @mutex_unlock(ptr noundef %optrom_mutex26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp27.not = icmp eq i32 %call24, 0
  br i1 %cmp27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %do_read
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28793, ptr noundef nonnull @.str.52, i32 noundef %call24) #13
  br label %cleanup

if.end29:                                         ; preds = %do_read
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %dcbx_tlv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dcbx_tlv, align 8
  %47 = call ptr @memcpy(ptr %buf, ptr %46, i32 %count)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then28, %if.then18, %if.then10, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then28 ], [ %count, %if.end29 ], [ 0, %if.then10 ], [ -12, %if.then18 ], [ 0, %dev_to_shost.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_get_dcbx_params(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @qla_host_attr_is_visible(ptr nocapture noundef readnone %kobj, ptr noundef readonly %attr, i32 noundef %i) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2x_ini_mode to i32))
  %0 = load i32, ptr @ql2x_ini_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp.not = icmp eq i32 %0, 3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmp1 = icmp eq ptr %attr, @dev_attr_qlini_mode
  %cmp2 = icmp eq ptr %attr, @dev_attr_ql2xiniexchg
  %or.cond = or i1 %cmp1, %cmp2
  %cmp4 = icmp eq ptr %attr, @dev_attr_ql2xexchoffld
  %or.cond8 = or i1 %cmp4, %or.cond
  br i1 %or.cond8, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %mode, align 4
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i16 [ %2, %if.end ], [ 0, %land.lhs.true.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlini_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.54) #13
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %call2
  %sub4 = sub i32 4096, %call2
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.55) #13
  %add6 = add i32 %call5, %call2
  %qlini_mode = getelementptr i8, ptr %dev, i32 2950
  %0 = ptrtoint ptr %qlini_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %qlini_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %2 = icmp ult i16 %1, 4
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = sext i16 %1 to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.qlini_mode_show, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %add.ptr22 = getelementptr i8, ptr %buf, i32 %add6
  %sub23 = sub i32 4096, %add6
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull %switch.load) #13
  %add25 = add i32 %call24, %add6
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %len.0 = phi i32 [ %add6, %entry.sw.epilog_crit_edge ], [ %add25, %switch.lookup ]
  %add.ptr26 = getelementptr i8, ptr %buf, i32 %len.0
  %sub27 = sub i32 4096, %len.0
  %call28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.60) #13
  %add29 = add i32 %call28, %len.0
  ret i32 %add29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlini_mode_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.56, ptr noundef nonnull %buf, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.end.if.end18_crit_edge, label %if.else

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.else:                                          ; preds = %if.end
  %call3 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.57, ptr noundef nonnull %buf, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.else.if.end18_crit_edge, label %if.else6

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.else6:                                         ; preds = %if.else
  %call7 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.58, ptr noundef nonnull %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.else6.if.end18_crit_edge, label %if.else10

if.else6.if.end18_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.else10:                                        ; preds = %if.else6
  %call11 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.59, ptr noundef nonnull %buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.else10.if.end18_crit_edge, label %if.else10.cleanup_crit_edge

if.else10.cleanup_crit_edge:                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else10.if.end18_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end18:                                         ; preds = %if.else10.if.end18_crit_edge, %if.else6.if.end18_crit_edge, %if.else.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %ini.0 = phi i32 [ 0, %if.end.if.end18_crit_edge ], [ 1, %if.else.if.end18_crit_edge ], [ 2, %if.else6.if.end18_crit_edge ], [ 3, %if.else10.if.end18_crit_edge ]
  %qlini_mode.i = getelementptr i8, ptr %dev, i32 2950
  %0 = ptrtoint ptr %qlini_mode.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %qlini_mode.i, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.192)
  switch i16 %1, label %if.end18.sw.default355.i_crit_edge [
    i16 1, label %sw.bb.i
    i16 0, label %sw.bb66.i
    i16 2, label %sw.bb157.i
    i16 3, label %sw.bb189.i
  ]

if.end18.sw.default355.i_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default355.i

sw.bb.i:                                          ; preds = %if.end18
  %3 = zext i32 %ini.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %ini.0, label %sw.bb.i.unreachabledefault [
    i32 1, label %sw.bb1.i
    i32 0, label %sw.bb21.i
    i32 3, label %sw.bb56.i
    i32 2, label %sw.bb61.i
  ]

sw.bb1.i:                                         ; preds = %sw.bb.i
  %host.i.i = getelementptr i8, ptr %dev, i32 1048
  %4 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i.i, align 8
  %active_mode.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %active_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %active_mode.i.i, align 8
  %bf.lshr.mask.i.i = and i16 %bf.load.i.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %bf.lshr.mask.i.i)
  %cmp.i.i = icmp eq i16 %bf.lshr.mask.i.i, -32768
  br i1 %cmp.i.i, label %if.then.i, label %sw.bb1.i.sw.bb334.i_crit_edge

sw.bb1.i.sw.bb334.i_crit_edge:                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb334.i

if.then.i:                                        ; preds = %sw.bb1.i
  %u_ql2xexchoffld.i = getelementptr i8, ptr %dev, i32 2946
  %7 = ptrtoint ptr %u_ql2xexchoffld.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %u_ql2xexchoffld.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %8)
  %cmp.i = icmp ugt i16 %8, 2048
  %hw.i = getelementptr i8, ptr %dev, i32 2244
  %9 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw.i, align 4
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %10, i32 0, i32 2
  %11 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i = load volatile i32, ptr %11, align 4
  %13 = and i32 %bf.load.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp ne i32 %13, 0
  %ql2xexchoffld.i = getelementptr i8, ptr %dev, i32 2952
  %15 = ptrtoint ptr %ql2xexchoffld.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ql2xexchoffld.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %8)
  %cmp10.not.i = icmp ne i16 %16, %8
  %or.cond.i = and i1 %cmp.i, %cmp10.not.i
  %cmp4.not.not.i = xor i1 %cmp.i, %14
  %brmerge.i = select i1 %or.cond.i, i1 true, i1 %cmp4.not.not.i
  br i1 %brmerge.i, label %if.then.i.sw.bb311.i_crit_edge, label %if.then.i.sw.bb334.i_crit_edge

if.then.i.sw.bb334.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb334.i

if.then.i.sw.bb311.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb311.i

sw.bb21.i:                                        ; preds = %sw.bb.i
  %host.i494.i = getelementptr i8, ptr %dev, i32 1048
  %17 = ptrtoint ptr %host.i494.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host.i494.i, align 8
  %active_mode.i495.i = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 36
  %19 = ptrtoint ptr %active_mode.i495.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i496.i = load i16, ptr %active_mode.i495.i, align 8
  %bf.lshr.mask.i497.i = and i16 %bf.load.i496.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %bf.lshr.mask.i497.i)
  %cmp.i498.i = icmp eq i16 %bf.lshr.mask.i497.i, -32768
  br i1 %cmp.i498.i, label %if.then23.i, label %sw.bb21.i.sw.bb311.i_crit_edge

sw.bb21.i.sw.bb311.i_crit_edge:                   ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb311.i

if.then23.i:                                      ; preds = %sw.bb21.i
  %u_ql2xexchoffld24.i = getelementptr i8, ptr %dev, i32 2946
  %20 = ptrtoint ptr %u_ql2xexchoffld24.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %u_ql2xexchoffld24.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %21)
  %cmp26.i = icmp ugt i16 %21, 2048
  %hw28.i = getelementptr i8, ptr %dev, i32 2244
  %22 = ptrtoint ptr %hw28.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw28.i, align 4
  %flags29.i = getelementptr inbounds %struct.qla_hw_data, ptr %23, i32 0, i32 2
  %24 = getelementptr inbounds i32, ptr %flags29.i, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load30.i = load volatile i32, ptr %24, align 4
  %26 = and i32 %bf.load30.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %27 = icmp ne i32 %26, 0
  %ql2xexchoffld37.i = getelementptr i8, ptr %dev, i32 2952
  %28 = ptrtoint ptr %ql2xexchoffld37.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ql2xexchoffld37.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %21)
  %cmp41.not.i = icmp ne i16 %29, %21
  %or.cond467.i = and i1 %cmp26.i, %cmp41.not.i
  %cmp33.not.not.i = xor i1 %cmp26.i, %27
  %brmerge468.i = select i1 %or.cond467.i, i1 true, i1 %cmp33.not.not.i
  br i1 %brmerge468.i, label %if.then23.i.sw.bb311.i_crit_edge, label %if.then23.i.sw.bb334.i_crit_edge

if.then23.i.sw.bb334.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb334.i

if.then23.i.sw.bb311.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb311.i

sw.bb56.i:                                        ; preds = %sw.bb.i
  %host.i499.i = getelementptr i8, ptr %dev, i32 1048
  %30 = ptrtoint ptr %host.i499.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host.i499.i, align 8
  %active_mode.i500.i = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 36
  %32 = ptrtoint ptr %active_mode.i500.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i501.i = load i16, ptr %active_mode.i500.i, align 8
  %bf.lshr.mask.i502.i = and i16 %bf.load.i501.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %bf.lshr.mask.i502.i)
  %cmp.i503.i = icmp eq i16 %bf.lshr.mask.i502.i, -32768
  br i1 %cmp.i503.i, label %sw.bb56.i.sw.bb311.i_crit_edge, label %sw.bb56.i.sw.bb334.i_crit_edge

sw.bb56.i.sw.bb334.i_crit_edge:                   ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb334.i

sw.bb56.i.sw.bb311.i_crit_edge:                   ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb311.i

sw.bb61.i:                                        ; preds = %sw.bb.i
  %host.i504.i = getelementptr i8, ptr %dev, i32 1048
  %33 = ptrtoint ptr %host.i504.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host.i504.i, align 8
  %active_mode.i505.i = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 36
  %35 = ptrtoint ptr %active_mode.i505.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i506.i = load i16, ptr %active_mode.i505.i, align 8
  %bf.lshr.mask.i507.i = and i16 %bf.load.i506.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %bf.lshr.mask.i507.i)
  %cmp.i508.i = icmp eq i16 %bf.lshr.mask.i507.i, -32768
  br i1 %cmp.i508.i, label %sw.bb61.i.sw.bb353.i_crit_edge, label %sw.bb61.i.sw.bb311.i_crit_edge

sw.bb61.i.sw.bb311.i_crit_edge:                   ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb311.i

sw.bb61.i.sw.bb353.i_crit_edge:                   ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb353.i

sw.bb66.i:                                        ; preds = %if.end18
  %36 = zext i32 %ini.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %ini.0, label %sw.bb66.i.unreachabledefault [
    i32 0, label %sw.bb67.i
    i32 1, label %sw.bb102.i
    i32 3, label %sw.bb137.i
    i32 2, label %sw.bb142.i
  ]

sw.bb67.i:                                        ; preds = %sw.bb66.i
  %host.i509.i = getelementptr i8, ptr %dev, i32 1048
  %37 = ptrtoint ptr %host.i509.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host.i509.i, align 8
  %active_mode.i510.i = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 36
  %39 = ptrtoint ptr %active_mode.i510.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load.i511.i = load i16, ptr %active_mode.i510.i, align 8
  %bf.lshr.mask.i512.i = and i16 %bf.load.i511.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %bf.lshr.mask.i512.i)
  %cmp.i513.i = icmp eq i16 %bf.lshr.mask.i512.i, -32768
  br i1 %cmp.i513.i, label %if.then69.i, label %sw.bb67.i.sw.default355.i_crit_edge

sw.bb67.i.sw.default355.i_crit_edge:              ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default355.i

if.then69.i:                                      ; preds = %sw.bb67.i
  %u_ql2xexchoffld70.i = getelementptr i8, ptr %dev, i32 2946
  %40 = ptrtoint ptr %u_ql2xexchoffld70.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %u_ql2xexchoffld70.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %41)
  %cmp72.i = icmp ugt i16 %41, 2048
  %hw74.i = getelementptr i8, ptr %dev, i32 2244
  %42 = ptrtoint ptr %hw74.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw74.i, align 4
  %flags75.i = getelementptr inbounds %struct.qla_hw_data, ptr %43, i32 0, i32 2
  %44 = getelementptr inbounds i32, ptr %flags75.i, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load76.i = load volatile i32, ptr %44, align 4
  %46 = and i32 %bf.load76.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %47 = icmp ne i32 %46, 0
  %ql2xexchoffld83.i = getelementptr i8, ptr %dev, i32 2952
  %48 = ptrtoint ptr %ql2xexchoffld83.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ql2xexchoffld83.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %41)
  %cmp87.not.i = icmp ne i16 %49, %41
  %or.cond472.i = and i1 %cmp72.i, %cmp87.not.i
  %cmp79.not.not.i = xor i1 %cmp72.i, %47
  %brmerge473.i = select i1 %or.cond472.i, i1 true, i1 %cmp79.not.not.i
  br i1 %brmerge473.i, label %if.then69.i.sw.bb311.i_crit_edge, label %if.then69.i.sw.default355.i_crit_edge

if.then69.i.sw.default355.i_crit_edge:            ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default355.i

if.then69.i.sw.bb311.i_crit_edge:                 ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb311.i

sw.bb102.i:                                       ; preds = %sw.bb66.i
  %host.i514.i = getelementptr i8, ptr %dev, i32 1048
  %50 = ptrtoint ptr %host.i514.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %host.i514.i, align 8
  %active_mode.i515.i = getelementptr inbounds %struct.Scsi_Host, ptr %51, i32 0, i32 36
  %52 = ptrtoint ptr %active_mode.i515.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load.i516.i = load i16, ptr %active_mode.i515.i, align 8
  %bf.lshr.mask.i517.i = and i16 %bf.load.i516.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %bf.lshr.mask.i517.i)
  %cmp.i518.i = icmp eq i16 %bf.lshr.mask.i517.i, -32768
  br i1 %cmp.i518.i, label %if.then104.i, label %sw.bb102.i.sw.bb334.i_crit_edge

sw.bb102.i.sw.bb334.i_crit_edge:                  ; preds = %sw.bb102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb334.i

if.then104.i:                                     ; preds = %sw.bb102.i
  %u_ql2xexchoffld105.i = getelementptr i8, ptr %dev, i32 2946
  %53 = ptrtoint ptr %u_ql2xexchoffld105.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %u_ql2xexchoffld105.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %54)
  %cmp107.i = icmp ugt i16 %54, 2048
  %hw109.i = getelementptr i8, ptr %dev, i32 2244
  %55 = ptrtoint ptr %hw109.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw109.i, align 4
  %flags110.i = getelementptr inbounds %struct.qla_hw_data, ptr %56, i32 0, i32 2
  %57 = getelementptr inbounds i32, ptr %flags110.i, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load111.i = load volatile i32, ptr %57, align 4
  %59 = and i32 %bf.load111.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %60 = icmp ne i32 %59, 0
  %ql2xexchoffld118.i = getelementptr i8, ptr %dev, i32 2952
  %61 = ptrtoint ptr %ql2xexchoffld118.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %ql2xexchoffld118.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %54)
  %cmp122.not.i = icmp ne i16 %62, %54
  %or.cond474.i = and i1 %cmp107.i, %cmp122.not.i
  %cmp114.not.not.i = xor i1 %cmp107.i, %60
  %brmerge475.i = select i1 %or.cond474.i, i1 true, i1 %cmp114.not.not.i
  br i1 %brmerge475.i, label %if.then104.i.sw.bb311.i_crit_edge, label %if.then104.i.sw.bb334.i_crit_edge

if.then104.i.sw.bb334.i_crit_edge:                ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb334.i

if.then104.i.sw.bb311.i_crit_edge:                ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb311.i

sw.bb137.i:                                       ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #15
  %host.i519.i = getelementptr i8, ptr %dev, i32 1048
  %63 = ptrtoint ptr %host.i519.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %host.i519.i, align 8
  %active_mode.i520.i = getelementptr inbounds %struct.Scsi_Host, ptr %64, i32 0, i32 36
  %65 = ptrtoint ptr %active_mode.i520.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load.i521.i = load i16, ptr %active_mode.i520.i, align 8
  %bf.lshr.mask.i522.i = and i16 %bf.load.i521.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %bf.lshr.mask.i522.i)
  %cmp.i523.i = icmp ne i16 %bf.lshr.mask.i522.i, -32768
  br label %sw.bb311.i

sw.bb142.i:                                       ; preds = %sw.bb66.i
  %host.i524.i = getelementptr i8, ptr %dev, i32 1048
  %66 = ptrtoint ptr %host.i524.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %host.i524.i, align 8
  %active_mode.i525.i = getelementptr inbounds %struct.Scsi_Host, ptr %67, i32 0, i32 36
  %68 = ptrtoint ptr %active_mode.i525.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load.i526.i = load i16, ptr %active_mode.i525.i, align 8
  %bf.lshr.mask.i527.i = and i16 %bf.load.i526.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %bf.lshr.mask.i527.i)
  %cmp.i528.i = icmp eq i16 %bf.lshr.mask.i527.i, -32768
  br i1 %cmp.i528.i, label %sw.bb142.i.sw.bb353.i_crit_edge, label %if.else145.i

sw.bb142.i.sw.bb353.i_crit_edge:                  ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb353.i

if.else145.i:                                     ; preds = %sw.bb142.i
  %hw146.i = getelementptr i8, ptr %dev, i32 2244
  %69 = ptrtoint ptr %hw146.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw146.i, align 4
  %flags147.i = getelementptr inbounds %struct.qla_hw_data, ptr %70, i32 0, i32 2
  %71 = getelementptr inbounds i32, ptr %flags147.i, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load148.i = load volatile i32, ptr %71, align 4
  %73 = and i32 %bf.load148.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool151.not.i = icmp eq i32 %73, 0
  br i1 %tobool151.not.i, label %if.else145.i.sw.bb311.i_crit_edge, label %if.else145.i.sw.bb334.i_crit_edge

if.else145.i.sw.bb334.i_crit_edge:                ; preds = %if.else145.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb334.i

if.else145.i.sw.bb311.i_crit_edge:                ; preds = %if.else145.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb311.i

sw.bb157.i:                                       ; preds = %if.end18
  %74 = zext i32 %ini.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %ini.0, label %sw.bb157.i.sw.bb334.i_crit_edge [
    i32 2, label %sw.bb158.i
    i32 3, label %sw.bb157.i.sw.bb311.i_crit_edge
    i32 1, label %sw.bb157.i.sw.bb311.i_crit_edge26
  ]

sw.bb157.i.sw.bb311.i_crit_edge26:                ; preds = %sw.bb157.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb311.i

sw.bb157.i.sw.bb311.i_crit_edge:                  ; preds = %sw.bb157.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb311.i

sw.bb157.i.sw.bb334.i_crit_edge:                  ; preds = %sw.bb157.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb334.i

sw.bb158.i:                                       ; preds = %sw.bb157.i
  %u_ql2xiniexchg.i = getelementptr i8, ptr %dev, i32 2948
  %75 = ptrtoint ptr %u_ql2xiniexchg.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %u_ql2xiniexchg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %76)
  %cmp160.i = icmp ugt i16 %76, 2048
  %hw162.i = getelementptr i8, ptr %dev, i32 2244
  %77 = ptrtoint ptr %hw162.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw162.i, align 4
  %flags163.i = getelementptr inbounds %struct.qla_hw_data, ptr %78, i32 0, i32 2
  %79 = getelementptr inbounds i32, ptr %flags163.i, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load164.i = load volatile i32, ptr %79, align 4
  %81 = and i32 %bf.load164.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %82 = icmp ne i32 %81, 0
  %ql2xiniexchg.i = getelementptr i8, ptr %dev, i32 2954
  %83 = ptrtoint ptr %ql2xiniexchg.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %ql2xiniexchg.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %84, i16 %76)
  %cmp174.not.i = icmp ne i16 %84, %76
  %or.cond478.i = and i1 %cmp160.i, %cmp174.not.i
  %cmp167.not.not.i = xor i1 %cmp160.i, %82
  %brmerge479.i = select i1 %or.cond478.i, i1 true, i1 %cmp167.not.not.i
  br i1 %brmerge479.i, label %sw.bb158.i.sw.bb311.i_crit_edge, label %sw.bb158.i.sw.default355.i_crit_edge

sw.bb158.i.sw.default355.i_crit_edge:             ; preds = %sw.bb158.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default355.i

sw.bb158.i.sw.bb311.i_crit_edge:                  ; preds = %sw.bb158.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb311.i

sw.bb189.i:                                       ; preds = %if.end18
  %85 = zext i32 %ini.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %ini.0, label %sw.bb189.i.unreachabledefault [
    i32 3, label %sw.bb190.i
    i32 1, label %sw.bb282.i
    i32 0, label %sw.bb291.i
    i32 2, label %sw.bb300.i
  ]

sw.bb190.i:                                       ; preds = %sw.bb189.i
  %host.i529.i = getelementptr i8, ptr %dev, i32 1048
  %86 = ptrtoint ptr %host.i529.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %host.i529.i, align 8
  %active_mode.i530.i = getelementptr inbounds %struct.Scsi_Host, ptr %87, i32 0, i32 36
  %88 = ptrtoint ptr %active_mode.i530.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load.i531.i = load i16, ptr %active_mode.i530.i, align 8
  %bf.lshr.mask.i532.i = and i16 %bf.load.i531.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %bf.lshr.mask.i532.i)
  %cmp.i533.i = icmp eq i16 %bf.lshr.mask.i532.i, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16385, i16 %bf.load.i531.i)
  %cmp.i537.i = icmp ugt i16 %bf.load.i531.i, -16385
  %or.cond588.i = or i1 %cmp.i537.i, %cmp.i533.i
  %u_ql2xexchoffld197.i = getelementptr i8, ptr %dev, i32 2946
  %89 = ptrtoint ptr %u_ql2xexchoffld197.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %u_ql2xexchoffld197.i, align 2
  %conv198.i = zext i16 %90 to i32
  %u_ql2xiniexchg199.i = getelementptr i8, ptr %dev, i32 2948
  %91 = ptrtoint ptr %u_ql2xiniexchg199.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %u_ql2xiniexchg199.i, align 4
  %conv200.i = zext i16 %92 to i32
  %add.i = add nuw nsw i32 %conv200.i, %conv198.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add.i)
  %cmp201.i = icmp ugt i32 %add.i, 2048
  %hw203.i = getelementptr i8, ptr %dev, i32 2244
  %93 = ptrtoint ptr %hw203.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw203.i, align 4
  %flags204.i = getelementptr inbounds %struct.qla_hw_data, ptr %94, i32 0, i32 2
  %95 = getelementptr inbounds i32, ptr %flags204.i, i32 1
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %bf.load205.i = load volatile i32, ptr %95, align 4
  %97 = and i32 %bf.load205.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %98 = icmp ne i32 %97, 0
  %ql2xexchoffld212.i = getelementptr i8, ptr %dev, i32 2952
  %99 = ptrtoint ptr %ql2xexchoffld212.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %ql2xexchoffld212.i, align 8
  %conv213.i = zext i16 %100 to i32
  %ql2xiniexchg214.i = getelementptr i8, ptr %dev, i32 2954
  %101 = ptrtoint ptr %ql2xiniexchg214.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %ql2xiniexchg214.i, align 2
  %conv215.i = zext i16 %102 to i32
  %add216.i = add nuw nsw i32 %conv215.i, %conv213.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add216.i, i32 %add.i)
  %cmp222.not.i = icmp ne i32 %add216.i, %add.i
  %or.cond480.i = and i1 %cmp201.i, %cmp222.not.i
  %cmp208.not.not.i = xor i1 %cmp201.i, %98
  %brmerge481.i = select i1 %or.cond480.i, i1 true, i1 %cmp208.not.not.i
  br i1 %or.cond588.i, label %if.then196.i, label %if.else238.i

if.then196.i:                                     ; preds = %sw.bb190.i
  br i1 %brmerge481.i, label %if.then196.i.sw.bb311.i_crit_edge, label %if.then196.i.sw.default355.i_crit_edge

if.then196.i.sw.default355.i_crit_edge:           ; preds = %if.then196.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default355.i

if.then196.i.sw.bb311.i_crit_edge:                ; preds = %if.then196.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb311.i

if.else238.i:                                     ; preds = %sw.bb190.i
  br i1 %brmerge481.i, label %if.else238.i.sw.bb334.i_crit_edge, label %if.else238.i.sw.default355.i_crit_edge

if.else238.i.sw.default355.i_crit_edge:           ; preds = %if.else238.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default355.i

if.else238.i.sw.bb334.i_crit_edge:                ; preds = %if.else238.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb334.i

sw.bb282.i:                                       ; preds = %sw.bb189.i
  %host.i538.i = getelementptr i8, ptr %dev, i32 1048
  %103 = ptrtoint ptr %host.i538.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %host.i538.i, align 8
  %active_mode.i539.i = getelementptr inbounds %struct.Scsi_Host, ptr %104, i32 0, i32 36
  %105 = ptrtoint ptr %active_mode.i539.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %bf.load.i540.i = load i16, ptr %active_mode.i539.i, align 8
  %bf.lshr.mask.i541.i = and i16 %bf.load.i540.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %bf.lshr.mask.i541.i)
  %cmp.i542.i = icmp eq i16 %bf.lshr.mask.i541.i, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16385, i16 %bf.load.i540.i)
  %cmp.i546.i = icmp ugt i16 %bf.load.i540.i, -16385
  %or.cond590.i = or i1 %cmp.i546.i, %cmp.i542.i
  br i1 %or.cond590.i, label %sw.bb282.i.sw.bb311.i_crit_edge, label %sw.bb282.i.sw.bb334.i_crit_edge

sw.bb282.i.sw.bb334.i_crit_edge:                  ; preds = %sw.bb282.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb334.i

sw.bb282.i.sw.bb311.i_crit_edge:                  ; preds = %sw.bb282.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb311.i

sw.bb291.i:                                       ; preds = %sw.bb189.i
  call void @__sanitizer_cov_trace_pc() #15
  %host.i547.i = getelementptr i8, ptr %dev, i32 1048
  %106 = ptrtoint ptr %host.i547.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %host.i547.i, align 8
  %active_mode.i548.i = getelementptr inbounds %struct.Scsi_Host, ptr %107, i32 0, i32 36
  %108 = ptrtoint ptr %active_mode.i548.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %bf.load.i549.i = load i16, ptr %active_mode.i548.i, align 8
  %bf.lshr.mask.i550.i = and i16 %bf.load.i549.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %bf.lshr.mask.i550.i)
  %cmp.i551.i = icmp ne i16 %bf.lshr.mask.i550.i, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %bf.load.i549.i)
  %cmp.i555.i = icmp ult i16 %bf.load.i549.i, -16384
  %spec.select.i = and i1 %cmp.i555.i, %cmp.i551.i
  br label %sw.bb311.i

sw.bb300.i:                                       ; preds = %sw.bb189.i
  %host.i556.i = getelementptr i8, ptr %dev, i32 1048
  %109 = ptrtoint ptr %host.i556.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %host.i556.i, align 8
  %active_mode.i557.i = getelementptr inbounds %struct.Scsi_Host, ptr %110, i32 0, i32 36
  %111 = ptrtoint ptr %active_mode.i557.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %bf.load.i558.i = load i16, ptr %active_mode.i557.i, align 8
  %bf.lshr.mask.i559.i = and i16 %bf.load.i558.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %bf.lshr.mask.i559.i)
  %cmp.i560.i = icmp eq i16 %bf.lshr.mask.i559.i, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16385, i16 %bf.load.i558.i)
  %cmp.i564.i = icmp ugt i16 %bf.load.i558.i, -16385
  %or.cond589.i = or i1 %cmp.i564.i, %cmp.i560.i
  br i1 %or.cond589.i, label %sw.bb300.i.sw.bb353.i_crit_edge, label %sw.bb300.i.sw.bb311.i_crit_edge

sw.bb300.i.sw.bb311.i_crit_edge:                  ; preds = %sw.bb300.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb311.i

sw.bb300.i.sw.bb353.i_crit_edge:                  ; preds = %sw.bb300.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb353.i

sw.bb311.i:                                       ; preds = %sw.bb300.i.sw.bb311.i_crit_edge, %sw.bb291.i, %sw.bb282.i.sw.bb311.i_crit_edge, %if.then196.i.sw.bb311.i_crit_edge, %sw.bb158.i.sw.bb311.i_crit_edge, %sw.bb157.i.sw.bb311.i_crit_edge, %sw.bb157.i.sw.bb311.i_crit_edge26, %if.else145.i.sw.bb311.i_crit_edge, %sw.bb137.i, %if.then104.i.sw.bb311.i_crit_edge, %if.then69.i.sw.bb311.i_crit_edge, %sw.bb61.i.sw.bb311.i_crit_edge, %sw.bb56.i.sw.bb311.i_crit_edge, %if.then23.i.sw.bb311.i_crit_edge, %sw.bb21.i.sw.bb311.i_crit_edge, %if.then.i.sw.bb311.i_crit_edge
  %tobool328.not.ph.i = phi i1 [ false, %sw.bb282.i.sw.bb311.i_crit_edge ], [ true, %sw.bb157.i.sw.bb311.i_crit_edge ], [ true, %sw.bb157.i.sw.bb311.i_crit_edge26 ], [ %cmp.i523.i, %sw.bb137.i ], [ false, %sw.bb61.i.sw.bb311.i_crit_edge ], [ true, %sw.bb21.i.sw.bb311.i_crit_edge ], [ false, %sw.bb56.i.sw.bb311.i_crit_edge ], [ true, %if.else145.i.sw.bb311.i_crit_edge ], [ true, %if.then.i.sw.bb311.i_crit_edge ], [ true, %if.then23.i.sw.bb311.i_crit_edge ], [ true, %if.then69.i.sw.bb311.i_crit_edge ], [ true, %if.then104.i.sw.bb311.i_crit_edge ], [ true, %sw.bb158.i.sw.bb311.i_crit_edge ], [ true, %if.then196.i.sw.bb311.i_crit_edge ], [ true, %sw.bb300.i.sw.bb311.i_crit_edge ], [ %spec.select.i, %sw.bb291.i ]
  %idxprom.i = zext i16 %1 to i32
  %arrayidx.i = getelementptr [4 x ptr], ptr @mode_to_str, i32 0, i32 %idxprom.i
  %112 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx313.i = getelementptr [4 x ptr], ptr @mode_to_str, i32 0, i32 %ini.0
  %114 = ptrtoint ptr %arrayidx313.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx313.i, align 4
  %ql2xexchoffld314.i = getelementptr i8, ptr %dev, i32 2952
  %116 = ptrtoint ptr %ql2xexchoffld314.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %ql2xexchoffld314.i, align 8
  %conv315.i = zext i16 %117 to i32
  %u_ql2xexchoffld316.i = getelementptr i8, ptr %dev, i32 2946
  %118 = ptrtoint ptr %u_ql2xexchoffld316.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %u_ql2xexchoffld316.i, align 2
  %conv317.i = zext i16 %119 to i32
  %ql2xiniexchg318.i = getelementptr i8, ptr %dev, i32 2954
  %120 = ptrtoint ptr %ql2xiniexchg318.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %ql2xiniexchg318.i, align 2
  %conv319.i = zext i16 %121 to i32
  %u_ql2xiniexchg320.i = getelementptr i8, ptr %dev, i32 2948
  %122 = ptrtoint ptr %u_ql2xiniexchg320.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %u_ql2xiniexchg320.i, align 4
  %conv321.i = zext i16 %123 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 65535, ptr noundef nonnull @.str.61, ptr noundef %113, ptr noundef %115, i32 noundef %conv315.i, i32 noundef %conv317.i, i32 noundef %conv319.i, i32 noundef %conv321.i) #13
  %conv322.i = trunc i32 %ini.0 to i16
  %124 = ptrtoint ptr %qlini_mode.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv322.i, ptr %qlini_mode.i, align 2
  %125 = ptrtoint ptr %u_ql2xexchoffld316.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %u_ql2xexchoffld316.i, align 2
  %127 = ptrtoint ptr %ql2xexchoffld314.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %ql2xexchoffld314.i, align 8
  %128 = ptrtoint ptr %u_ql2xiniexchg320.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %u_ql2xiniexchg320.i, align 4
  %130 = ptrtoint ptr %ql2xiniexchg318.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %ql2xiniexchg318.i, align 2
  br i1 %tobool328.not.ph.i, label %sw.bb311.i.if.end330.i_crit_edge, label %if.then329.i

sw.bb311.i.if.end330.i_crit_edge:                 ; preds = %sw.bb311.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end330.i

if.then329.i:                                     ; preds = %sw.bb311.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qlt_set_mode(ptr noundef %hostdata.i) #13
  br label %if.end330.i

if.end330.i:                                      ; preds = %if.then329.i, %sw.bb311.i.if.end330.i_crit_edge
  %flags331.i = getelementptr i8, ptr %dev, i32 1072
  %131 = ptrtoint ptr %flags331.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %bf.load332.i = load volatile i32, ptr %flags331.i, align 8
  %bf.set.i = or i32 %bf.load332.i, 1073741824
  store volatile i32 %bf.set.i, ptr %flags331.i, align 8
  %dpc_flags.i = getelementptr i8, ptr %dev, i32 1084
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags.i) #13
  br label %qla_set_ini_mode.exit

sw.bb334.i:                                       ; preds = %sw.bb282.i.sw.bb334.i_crit_edge, %if.else238.i.sw.bb334.i_crit_edge, %sw.bb157.i.sw.bb334.i_crit_edge, %if.else145.i.sw.bb334.i_crit_edge, %if.then104.i.sw.bb334.i_crit_edge, %sw.bb102.i.sw.bb334.i_crit_edge, %sw.bb56.i.sw.bb334.i_crit_edge, %if.then23.i.sw.bb334.i_crit_edge, %if.then.i.sw.bb334.i_crit_edge, %sw.bb1.i.sw.bb334.i_crit_edge
  %idxprom336.i = zext i16 %1 to i32
  %arrayidx337.i = getelementptr [4 x ptr], ptr @mode_to_str, i32 0, i32 %idxprom336.i
  %132 = ptrtoint ptr %arrayidx337.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx337.i, align 4
  %arrayidx338.i = getelementptr [4 x ptr], ptr @mode_to_str, i32 0, i32 %ini.0
  %134 = ptrtoint ptr %arrayidx338.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx338.i, align 4
  %ql2xexchoffld339.i = getelementptr i8, ptr %dev, i32 2952
  %136 = ptrtoint ptr %ql2xexchoffld339.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %ql2xexchoffld339.i, align 8
  %conv340.i = zext i16 %137 to i32
  %u_ql2xexchoffld341.i = getelementptr i8, ptr %dev, i32 2946
  %138 = ptrtoint ptr %u_ql2xexchoffld341.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %u_ql2xexchoffld341.i, align 2
  %conv342.i = zext i16 %139 to i32
  %ql2xiniexchg343.i = getelementptr i8, ptr %dev, i32 2954
  %140 = ptrtoint ptr %ql2xiniexchg343.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %ql2xiniexchg343.i, align 2
  %conv344.i = zext i16 %141 to i32
  %u_ql2xiniexchg345.i = getelementptr i8, ptr %dev, i32 2948
  %142 = ptrtoint ptr %u_ql2xiniexchg345.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %u_ql2xiniexchg345.i, align 4
  %conv346.i = zext i16 %143 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 65535, ptr noundef nonnull @.str.62, ptr noundef %133, ptr noundef %135, i32 noundef %conv340.i, i32 noundef %conv342.i, i32 noundef %conv344.i, i32 noundef %conv346.i) #13
  %conv347.i = trunc i32 %ini.0 to i16
  %144 = ptrtoint ptr %qlini_mode.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv347.i, ptr %qlini_mode.i, align 2
  %145 = ptrtoint ptr %u_ql2xexchoffld341.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %u_ql2xexchoffld341.i, align 2
  %147 = ptrtoint ptr %ql2xexchoffld339.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %ql2xexchoffld339.i, align 8
  %148 = ptrtoint ptr %u_ql2xiniexchg345.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %u_ql2xiniexchg345.i, align 4
  %150 = ptrtoint ptr %ql2xiniexchg343.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %149, ptr %ql2xiniexchg343.i, align 2
  br label %qla_set_ini_mode.exit

sw.bb353.i:                                       ; preds = %sw.bb300.i.sw.bb353.i_crit_edge, %sw.bb142.i.sw.bb353.i_crit_edge, %sw.bb61.i.sw.bb353.i_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 65535, ptr noundef nonnull @.str.63) #13
  br label %qla_set_ini_mode.exit

sw.bb.i.unreachabledefault:                       ; preds = %sw.bb.i
  unreachable

sw.bb66.i.unreachabledefault:                     ; preds = %sw.bb66.i
  unreachable

sw.bb189.i.unreachabledefault:                    ; preds = %sw.bb189.i
  unreachable

sw.default355.i:                                  ; preds = %if.else238.i.sw.default355.i_crit_edge, %if.then196.i.sw.default355.i_crit_edge, %sw.bb158.i.sw.default355.i_crit_edge, %if.then69.i.sw.default355.i_crit_edge, %sw.bb67.i.sw.default355.i_crit_edge, %if.end18.sw.default355.i_crit_edge
  %conv357.i = zext i16 %1 to i32
  %ql2xexchoffld358.i = getelementptr i8, ptr %dev, i32 2952
  %151 = ptrtoint ptr %ql2xexchoffld358.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %ql2xexchoffld358.i, align 8
  %conv359.i = zext i16 %152 to i32
  %u_ql2xexchoffld360.i = getelementptr i8, ptr %dev, i32 2946
  %153 = ptrtoint ptr %u_ql2xexchoffld360.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %u_ql2xexchoffld360.i, align 2
  %conv361.i = zext i16 %154 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 65535, ptr noundef nonnull @.str.64, i32 noundef %conv357.i, i32 noundef %ini.0, i32 noundef %conv359.i, i32 noundef %conv361.i) #13
  br label %qla_set_ini_mode.exit

qla_set_ini_mode.exit:                            ; preds = %sw.default355.i, %sw.bb353.i, %sw.bb334.i, %if.end330.i
  %call19 = tail call i32 @strlen(ptr noundef nonnull %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %qla_set_ini_mode.exit, %if.else10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %qla_set_ini_mode.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlt_set_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ql2xiniexchg_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %u_ql2xiniexchg = getelementptr i8, ptr %dev, i32 2948
  %0 = ptrtoint ptr %u_ql2xiniexchg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %u_ql2xiniexchg, align 4
  %conv = zext i16 %1 to i32
  %ql2xiniexchg = getelementptr i8, ptr %dev, i32 2954
  %2 = ptrtoint ptr %ql2xiniexchg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ql2xiniexchg, align 2
  %conv2 = zext i16 %3 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.66, i32 noundef %conv, i32 noundef %conv2) #13
  %add.ptr4 = getelementptr i8, ptr %buf, i32 %call3
  %sub5 = sub i32 4096, %call3
  %host_no = getelementptr i8, ptr %dev, i32 1052
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i32 noundef %sub5, ptr noundef nonnull @.str.67, i32 noundef %5) #13
  %add7 = add i32 %call6, %call3
  ret i32 %add7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ql2xiniexchg_store(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #11 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.68, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %2)
  %cmp2 = icmp sgt i32 %2, 32768
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768, ptr %val, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4 = icmp slt i32 %2, 0
  br i1 %cmp4, label %if.then5, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else.if.end7_crit_edge, %if.then3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i16
  %u_ql2xiniexchg = getelementptr i8, ptr %dev, i32 2948
  %7 = ptrtoint ptr %u_ql2xiniexchg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %u_ql2xiniexchg, align 4
  %call8 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ql2xexchoffld_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %u_ql2xexchoffld = getelementptr i8, ptr %dev, i32 2946
  %0 = ptrtoint ptr %u_ql2xexchoffld to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %u_ql2xexchoffld, align 2
  %conv = zext i16 %1 to i32
  %ql2xexchoffld = getelementptr i8, ptr %dev, i32 2952
  %2 = ptrtoint ptr %ql2xexchoffld to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ql2xexchoffld, align 8
  %conv2 = zext i16 %3 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.66, i32 noundef %conv, i32 noundef %conv2) #13
  %add.ptr4 = getelementptr i8, ptr %buf, i32 %call3
  %sub5 = sub i32 4096, %call3
  %host_no = getelementptr i8, ptr %dev, i32 1052
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i32 noundef %sub5, ptr noundef nonnull @.str.67, i32 noundef %5) #13
  %add7 = add i32 %call6, %call3
  ret i32 %add7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ql2xexchoffld_store(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #11 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.68, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %2)
  %cmp2 = icmp sgt i32 %2, 32768
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768, ptr %val, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4 = icmp slt i32 %2, 0
  br i1 %cmp4, label %if.then5, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else.if.end7_crit_edge, %if.then3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i16
  %u_ql2xexchoffld = getelementptr i8, ptr %dev, i32 2946
  %7 = ptrtoint ptr %u_ql2xexchoffld to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %u_ql2xexchoffld, align 2
  %call8 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_driver_version_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.71, ptr noundef nonnull @qla2x00_version_str) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_fw_version_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %fw_str = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %fw_str) #13
  %2 = call ptr @memset(ptr %fw_str, i32 255, i32 128)
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %3 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %isp_ops, align 4
  %fw_version_str = getelementptr inbounds %struct.isp_operations, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %fw_version_str to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_version_str, align 4
  %call1 = call ptr %6(ptr noundef %hostdata.i, ptr noundef nonnull %fw_str, i32 noundef 128) #13
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.71, ptr noundef %call1) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %fw_str) #13
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_serial_num_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %and2 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %serial_num = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 1
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.71, ptr noundef %serial_num) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 55
  %4 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_type, align 4
  %and5 = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 @qla2xxx_get_vpd_field(ptr noundef %hostdata.i, ptr noundef nonnull @.str.74, ptr noundef %buf, i32 noundef 4095) #13
  %strlen = tail call i32 @strlen(ptr %buf) #17
  %endptr = getelementptr i8, ptr %buf, i32 %strlen
  %6 = ptrtoint ptr %endptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 2560, ptr %endptr, align 1
  %call10 = tail call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %serial0 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 56
  %7 = ptrtoint ptr %serial0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %serial0, align 16
  %9 = and i8 %8, 31
  %and12 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %and12, 16
  %serial2 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 58
  %10 = ptrtoint ptr %serial2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %serial2, align 2
  %conv13 = zext i8 %11 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %or = or i32 %shl, %shl14
  %serial1 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 57
  %12 = ptrtoint ptr %serial1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %serial1, align 1
  %conv15 = zext i8 %13 to i32
  %or16 = or i32 %or, %conv15
  %or16.frozen = freeze i32 %or16
  %div = udiv i32 %or16.frozen, 100000
  %add = add nuw nsw i32 %div, 65
  %14 = mul i32 %div, 100000
  %rem.decomposed = sub i32 %or16.frozen, %14
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.75, i32 noundef %add, i32 noundef %rem.decomposed) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then7, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %call10, %if.then7 ], [ %call17, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2xxx_get_vpd_field(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_isp_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %conv = zext i16 %5 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.77, i32 noundef %conv) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_isp_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %and2 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hw_version = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.71, ptr noundef %hw_version) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %product_id = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 194
  %4 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %product_id, align 2
  %conv = zext i16 %5 to i32
  %arrayidx6 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 194, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %7 to i32
  %arrayidx9 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 194, i32 2
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx9, align 2
  %conv10 = zext i16 %9 to i32
  %arrayidx12 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 194, i32 3
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %11 to i32
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.79, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv10, i32 noundef %conv13) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %call14, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_model_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %model_number = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 195
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.71, ptr noundef %model_number) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_model_desc_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %model_desc = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 196
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.71, ptr noundef %model_desc) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_pci_info_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %pci_info = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %pci_info) #13
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = call ptr @memset(ptr %pci_info, i32 255, i32 30)
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 234
  %3 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %isp_ops, align 4
  %pci_info_str = getelementptr inbounds %struct.isp_operations, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %pci_info_str to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_info_str, align 4
  %call1 = call ptr %6(ptr noundef %hostdata.i, ptr noundef nonnull %pci_info, i32 noundef 30) #13
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.71, ptr noundef %call1) #13
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %pci_info) #13
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_link_state_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %loop_state = getelementptr i8, ptr %dev, i32 1076
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_state, i32 noundef 4) #13
  %2 = ptrtoint ptr %loop_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %loop_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call.i.i66 = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_state, i32 noundef 4) #13
  %4 = ptrtoint ptr %loop_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %loop_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp4 = icmp eq i32 %5, 6
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false5

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %device_flags = getelementptr i8, ptr %dev, i32 1092
  %6 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device_flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false5.if.then_crit_edge

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.84) #13
  br label %if.end38

if.else:                                          ; preds = %lor.lhs.false5
  %call.i.i67 = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_state, i32 noundef 4) #13
  %8 = ptrtoint ptr %loop_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %loop_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp9.not = icmp eq i32 %9, 5
  br i1 %cmp9.not, label %lor.lhs.false10, label %if.else.if.then13_crit_edge

if.else.if.then13_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

lor.lhs.false10:                                  ; preds = %if.else
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %lor.lhs.false10.if.then13_crit_edge

lor.lhs.false10.if.then13_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

lor.lhs.false.i.i:                                ; preds = %lor.lhs.false10
  %19 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %21 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.if.then13_crit_edge

lor.lhs.false.i.i.if.then13_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %22 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %24 = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool8.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.if.then13_crit_edge

lor.lhs.false5.i.i.if.then13_crit_edge:           ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr i8, ptr %dev, i32 1084
  %25 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.if.then13_crit_edge

lor.lhs.false9.i.i.if.then13_crit_edge:           ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %28 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %30 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.if.then13_crit_edge

qla2x00_reset_active.exit.i.if.then13_crit_edge:  ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %11, i32 0, i32 2
  %31 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load.i = load volatile i32, ptr %31, align 4
  %33 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool12.not.not = icmp eq i32 %33, 0
  br i1 %tobool12.not.not, label %qla2x00_chip_is_down.exit.if.then13_crit_edge, label %if.else15

qla2x00_chip_is_down.exit.if.then13_crit_edge:    ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then13:                                        ; preds = %qla2x00_chip_is_down.exit.if.then13_crit_edge, %qla2x00_reset_active.exit.i.if.then13_crit_edge, %lor.lhs.false9.i.i.if.then13_crit_edge, %lor.lhs.false5.i.i.if.then13_crit_edge, %lor.lhs.false.i.i.if.then13_crit_edge, %lor.lhs.false10.if.then13_crit_edge, %if.else.if.then13_crit_edge
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.85) #13
  br label %if.end38

if.else15:                                        ; preds = %qla2x00_chip_is_down.exit
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.86) #13
  %current_topology = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 49
  %34 = ptrtoint ptr %current_topology to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %current_topology, align 2
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.197)
  switch i8 %35, label %sw.default [
    i8 1, label %sw.bb
    i8 4, label %sw.bb19
    i8 2, label %sw.bb24
    i8 8, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %call16
  %sub = sub i32 4096, %call16
  %call18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub, ptr noundef nonnull @.str.87) #13
  %add = add i32 %call18, %call16
  br label %if.end38

sw.bb19:                                          ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr20 = getelementptr i8, ptr %buf, i32 %call16
  %sub21 = sub i32 4096, %call16
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.88) #13
  %add23 = add i32 %call22, %call16
  br label %if.end38

sw.bb24:                                          ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr25 = getelementptr i8, ptr %buf, i32 %call16
  %sub26 = sub i32 4096, %call16
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25, i32 noundef %sub26, ptr noundef nonnull @.str.89) #13
  %add28 = add i32 %call27, %call16
  br label %if.end38

sw.bb29:                                          ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr30 = getelementptr i8, ptr %buf, i32 %call16
  %sub31 = sub i32 4096, %call16
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.90) #13
  %add33 = add i32 %call32, %call16
  br label %if.end38

sw.default:                                       ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr34 = getelementptr i8, ptr %buf, i32 %call16
  %sub35 = sub i32 4096, %call16
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.87) #13
  %add37 = add i32 %call36, %call16
  br label %if.end38

if.end38:                                         ; preds = %sw.default, %sw.bb29, %sw.bb24, %sw.bb19, %sw.bb, %if.then13, %if.then
  %len.0 = phi i32 [ %call6, %if.then ], [ %call14, %if.then13 ], [ %add37, %sw.default ], [ %add33, %sw.bb29 ], [ %add28, %sw.bb24 ], [ %add23, %sw.bb19 ], [ %add, %sw.bb ]
  ret i32 %len.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_zio_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %zio_mode = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 224
  %2 = ptrtoint ptr %zio_mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %zio_mode, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.198)
  switch i16 %3, label %entry.sw.epilog_crit_edge [
    i16 6, label %entry.sw.epilog.sink.split_crit_edge
    i16 0, label %sw.bb3
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %.str.93.sink = phi ptr [ @.str.93, %sw.bb3 ], [ @.str.92, %entry.sw.epilog.sink.split_crit_edge ]
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %.str.93.sink) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %len.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call6, %sw.epilog.sink.split ]
  ret i32 %len.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_zio_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 55
  %3 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %device_type, align 4
  %and = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.68, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  %. = select i1 %tobool4.not, i16 0, i16 6
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end3.if.then13_crit_edge

if.end3.if.then13_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end3
  %zio_mode9 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 224
  %7 = ptrtoint ptr %zio_mode9 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %zio_mode9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp11.not = icmp eq i16 %8, 0
  br i1 %cmp11.not, label %lor.lhs.false.if.end15_crit_edge, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end3.if.then13_crit_edge
  %zio_mode14 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 224
  %9 = ptrtoint ptr %zio_mode14 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %., ptr %zio_mode14, align 2
  %dpc_flags = getelementptr i8, ptr %dev, i32 1084
  call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %lor.lhs.false.if.end15_crit_edge
  %call16 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ -524, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_zio_timer_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %zio_timer = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 225
  %2 = ptrtoint ptr %zio_timer to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %zio_timer, align 4
  %conv = zext i16 %3 to i32
  %mul = mul nuw nsw i32 %conv, 100
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.95, i32 noundef %mul) #13
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_zio_timer_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #11 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.68, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = add i32 %2, -25501
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25401, i32 %3)
  %4 = icmp ult i32 %3, -25401
  br i1 %4, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %div11.lhs.trunc = trunc i32 %2 to i16
  %div1112 = udiv i16 %div11.lhs.trunc, 100
  %hw = getelementptr i8, ptr %dev, i32 2244
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %zio_timer6 = getelementptr inbounds %struct.qla_hw_data, ptr %6, i32 0, i32 225
  %7 = ptrtoint ptr %zio_timer6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %div1112, ptr %zio_timer6, align 4
  %call7 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_beacon_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %beacon_blink_led = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 222
  %2 = ptrtoint ptr %beacon_blink_led to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %beacon_blink_led, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %.str.93..str.97 = select i1 %tobool.not, ptr @.str.93, ptr @.str.97
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %.str.93..str.97) #13
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_beacon_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %3 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %isp_type, align 8
  %5 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.68, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 1
  br i1 %cmp.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %optrom_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %8, i32 0, i32 203
  call void @mutex_lock_nested(ptr noundef %optrom_mutex, i32 noundef 0) #13
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end8.if.then12_crit_edge

if.end8.if.then12_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

lor.lhs.false.i.i:                                ; preds = %if.end8
  %18 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.if.then12_crit_edge

lor.lhs.false.i.i.if.then12_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %21 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %23 = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool8.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.if.then12_crit_edge

lor.lhs.false5.i.i.if.then12_crit_edge:           ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr i8, ptr %dev, i32 1084
  %24 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool12.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.if.then12_crit_edge

lor.lhs.false9.i.i.if.then12_crit_edge:           ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %27 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.if.then12_crit_edge

qla2x00_reset_active.exit.i.if.then12_crit_edge:  ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %10, i32 0, i32 2
  %30 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load.i = load volatile i32, ptr %30, align 4
  %32 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool11.not.not = icmp eq i32 %32, 0
  br i1 %tobool11.not.not, label %qla2x00_chip_is_down.exit.if.then12_crit_edge, label %if.end15

qla2x00_chip_is_down.exit.if.then12_crit_edge:    ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

if.then12:                                        ; preds = %qla2x00_chip_is_down.exit.if.then12_crit_edge, %qla2x00_reset_active.exit.i.if.then12_crit_edge, %lor.lhs.false9.i.i.if.then12_crit_edge, %lor.lhs.false5.i.i.if.then12_crit_edge, %lor.lhs.false.i.i.if.then12_crit_edge, %if.end8.if.then12_crit_edge
  %optrom_mutex14 = getelementptr inbounds %struct.qla_hw_data, ptr %10, i32 0, i32 203
  call void @mutex_unlock(ptr noundef %optrom_mutex14) #13
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28794, ptr noundef nonnull @.str.98) #13
  br label %cleanup

if.end15:                                         ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool16.not = icmp eq i32 %34, 0
  %isp_ops19 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %35 = ptrtoint ptr %isp_ops19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %isp_ops19, align 4
  %beacon_off = getelementptr inbounds %struct.isp_operations, ptr %36, i32 0, i32 27
  %beacon_on = getelementptr inbounds %struct.isp_operations, ptr %36, i32 0, i32 26
  %beacon_off.sink = select i1 %tobool16.not, ptr %beacon_off, ptr %beacon_on
  %37 = ptrtoint ptr %beacon_off.sink to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %beacon_off.sink, align 4
  %call20 = call i32 %38(ptr noundef %hostdata.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp22.not = icmp eq i32 %call20, 0
  %spec.select = select i1 %cmp22.not, i32 %count, i32 0
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 4
  %optrom_mutex26 = getelementptr inbounds %struct.qla_hw_data, ptr %40, i32 0, i32 203
  call void @mutex_unlock(ptr noundef %optrom_mutex26) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then12 ], [ %spec.select, %if.end15 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_beacon_config_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %led = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %led) #13
  %2 = call ptr @memset(ptr %led, i32 0, i32 6)
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %3 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %isp_type, align 8
  %5 = and i32 %4, 45645824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %call25 = call i32 @ql26xx_led_config(ptr noundef %hostdata.i, i16 noundef zeroext 0, ptr noundef nonnull %led) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %led to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %led, align 2
  %conv = zext i16 %8 to i32
  %arrayidx30 = getelementptr inbounds [3 x i16], ptr %led, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx30, align 2
  %conv31 = zext i16 %10 to i32
  %arrayidx32 = getelementptr inbounds [3 x i16], ptr %led, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx32, align 2
  %conv33 = zext i16 %12 to i32
  %call34 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.100, i32 noundef %conv, i32 noundef %conv31, i32 noundef %conv33) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.then27 ], [ %call34, %if.end29 ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %led) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_beacon_config_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %led = alloca [3 x i16], align 2
  %word = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %led) #13
  %2 = call ptr @memset(ptr %led, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %word) #13
  %3 = getelementptr inbounds [4 x i16], ptr %word, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i16], ptr %word, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i16], ptr %word, i32 0, i32 3
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %6 = ptrtoint ptr %word to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %word, align 8
  %7 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %isp_type, align 8
  %9 = and i32 %8, 45645824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call32 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.101, ptr noundef nonnull %word, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %11 = zext i32 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %call32, label %if.end.cleanup_crit_edge [
    i32 4, label %if.then33
    i32 2, label %if.then49
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then33:                                        ; preds = %if.end
  %12 = ptrtoint ptr %word to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %word, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %13)
  %cmp34 = icmp eq i16 %13, 3
  br i1 %cmp34, label %if.then36, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %3, align 2
  %16 = ptrtoint ptr %led to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %led, align 2
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %4, align 4
  %arrayidx42 = getelementptr inbounds [3 x i16], ptr %led, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayidx42, align 2
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %5, align 2
  %arrayidx44 = getelementptr inbounds [3 x i16], ptr %led, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx44, align 2
  br label %write

if.then49:                                        ; preds = %if.end
  %23 = ptrtoint ptr %word to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %word, align 8
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.200)
  switch i16 %24, label %if.then49.cleanup_crit_edge [
    i16 0, label %if.then54
    i16 1, label %if.then65
    i16 2, label %if.then76
  ]

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then54:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %3, align 2
  %28 = ptrtoint ptr %led to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %led, align 2
  br label %write

if.then65:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %3, align 2
  %arrayidx70 = getelementptr inbounds [3 x i16], ptr %led, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %arrayidx70, align 2
  br label %write

if.then76:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %3, align 2
  %arrayidx81 = getelementptr inbounds [3 x i16], ptr %led, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %arrayidx81, align 2
  br label %write

write:                                            ; preds = %if.then76, %if.then65, %if.then54, %if.then36
  %options.0 = phi i16 [ 15, %if.then36 ], [ 5, %if.then54 ], [ 9, %if.then65 ], [ 3, %if.then76 ]
  %call85 = call i32 @ql26xx_led_config(ptr noundef %hostdata.i, i16 noundef zeroext %options.0, ptr noundef nonnull %led) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  %count. = select i1 %tobool86.not, i32 %count, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %write, %if.then49.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %if.then33.cleanup_crit_edge ], [ -22, %if.then49.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count., %write ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %word) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %led) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ql26xx_led_config(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_optrom_bios_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %bios_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 204
  %arrayidx = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 204, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %bios_revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bios_revision, align 4
  %conv3 = zext i8 %5 to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.103, i32 noundef %conv, i32 noundef %conv3) #13
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_optrom_efi_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %efi_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 205
  %arrayidx = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 205, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %efi_revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %efi_revision, align 2
  %conv3 = zext i8 %5 to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.103, i32 noundef %conv, i32 noundef %conv3) #13
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_optrom_fcode_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %fcode_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 206
  %arrayidx = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 206, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %fcode_revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fcode_revision, align 8
  %conv3 = zext i8 %5 to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.103, i32 noundef %conv, i32 noundef %conv3) #13
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_optrom_fw_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %fw_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 207
  %2 = ptrtoint ptr %fw_revision to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_revision, align 8
  %arrayidx2 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 207, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 207, i32 2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 207, i32 3
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.107, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #13
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla24xx_84xx_fw_version_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %status = alloca [2 x i16], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #13
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %hw = getelementptr i8, ptr %dev, i32 2244
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 54
  %3 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %isp_type, align 8
  %and1 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cs84xx = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 233
  %5 = ptrtoint ptr %cs84xx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cs84xx, align 8
  %op_fw_version = getelementptr inbounds %struct.qla_chip_state_84xx, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %op_fw_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %op_fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @qla84xx_verify_chip(ptr noundef %hostdata.i, ptr noundef nonnull %status) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.then4.if.end13_crit_edge

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

land.lhs.true:                                    ; preds = %if.then4
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool7.not = icmp eq i16 %10, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %cs84xx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cs84xx, align 8
  %op_fw_version10 = getelementptr inbounds %struct.qla_chip_state_84xx, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %op_fw_version10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %op_fw_version10, align 4
  %call11 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.109, i32 noundef %14) #13
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.then4.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %call14 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then8, %if.then
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ %call11, %if.then8 ], [ %call2, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla84xx_verify_chip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_total_isp_aborts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qla_stats = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %qla_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qla_stats, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.111, i32 noundef %1) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_serdes_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %serdes_version = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 158
  %6 = ptrtoint ptr %serdes_version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %serdes_version, align 4
  %conv = zext i8 %7 to i32
  %arrayidx22 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 158, i32 1
  %8 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %9 to i32
  %arrayidx25 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 158, i32 2
  %10 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx25, align 2
  %conv26 = zext i8 %11 to i32
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.113, i32 noundef %conv, i32 noundef %conv23, i32 noundef %conv26) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call27, %if.end ], [ %call20, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_mpi_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 45948928
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mpi_version = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 159
  %6 = ptrtoint ptr %mpi_version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mpi_version, align 1
  %conv = zext i8 %7 to i32
  %arrayidx37 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 159, i32 1
  %8 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %9 to i32
  %arrayidx40 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 159, i32 2
  %10 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %11 to i32
  %mpi_capabilities = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 160
  %12 = ptrtoint ptr %mpi_capabilities to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mpi_capabilities, align 4
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.115, i32 noundef %conv, i32 noundef %conv38, i32 noundef %conv41, i32 noundef %13) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call42, %if.end ], [ %call35, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_phy_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 73728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %phy_version = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 161
  %6 = ptrtoint ptr %phy_version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phy_version, align 8
  %conv = zext i8 %7 to i32
  %arrayidx8 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 161, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %arrayidx11 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 161, i32 2
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx11, align 2
  %conv12 = zext i8 %11 to i32
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.113, i32 noundef %conv, i32 noundef %conv9, i32 noundef %conv12) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call13, %if.end ], [ %call6, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_flash_block_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %fdt_block_size = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 216
  %2 = ptrtoint ptr %fdt_block_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fdt_block_size, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.118, i32 noundef %3) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_vlan_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 352256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fcoe_vlan_id = getelementptr i8, ptr %dev, i32 2004
  %6 = ptrtoint ptr %fcoe_vlan_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fcoe_vlan_id, align 4
  %conv = zext i16 %7 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.111, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call20, %if.end ], [ %call19, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_vn_port_mac_address_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 352256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fcoe_vn_port_mac = getelementptr i8, ptr %dev, i32 2008
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.121, ptr noundef %fcoe_vn_port_mac) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call20, %if.end ], [ %call19, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_fabric_param_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %switch_cap = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %switch_cap to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %switch_cap, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.111, i32 noundef %conv) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_fw_state_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 64 {
entry:
  %state = alloca [6 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %state) #13
  %0 = getelementptr inbounds [6 x i16], ptr %state, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i16], ptr %state, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i16], ptr %state, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i16], ptr %state, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i16], ptr %state, i32 0, i32 5
  %hw = getelementptr i8, ptr %dev, i32 2244
  %5 = call ptr @memset(ptr %state, i32 255, i32 12)
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %isp_type, align 8
  %and1 = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @qlafx00_fw_state_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #13
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.118, i32 noundef %call2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %optrom_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %7, i32 0, i32 203
  tail call void @mutex_lock_nested(ptr noundef %optrom_mutex, i32 noundef 0) #13
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

lor.lhs.false.i.i:                                ; preds = %if.end
  %19 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %21 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.if.then7_crit_edge

lor.lhs.false.i.i.if.then7_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %22 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %24 = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool8.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.if.then7_crit_edge

lor.lhs.false5.i.i.if.then7_crit_edge:            ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr i8, ptr %dev, i32 1084
  %25 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.if.then7_crit_edge

lor.lhs.false9.i.i.if.then7_crit_edge:            ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %28 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %30 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.if.then7_crit_edge

qla2x00_reset_active.exit.i.if.then7_crit_edge:   ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %11, i32 0, i32 2
  %31 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load.i = load volatile i32, ptr %31, align 4
  %33 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool6.not.not = icmp eq i32 %33, 0
  br i1 %tobool6.not.not, label %qla2x00_chip_is_down.exit.if.then7_crit_edge, label %if.else

qla2x00_chip_is_down.exit.if.then7_crit_edge:     ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.then7:                                         ; preds = %qla2x00_chip_is_down.exit.if.then7_crit_edge, %qla2x00_reset_active.exit.i.if.then7_crit_edge, %lor.lhs.false9.i.i.if.then7_crit_edge, %lor.lhs.false5.i.i.if.then7_crit_edge, %lor.lhs.false.i.i.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %optrom_mutex9 = getelementptr inbounds %struct.qla_hw_data, ptr %11, i32 0, i32 203
  tail call void @mutex_unlock(ptr noundef %optrom_mutex9) #13
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28796, ptr noundef nonnull @.str.124) #13
  br label %if.then20

if.else:                                          ; preds = %qla2x00_chip_is_down.exit
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load = load volatile i32, ptr %flags.i, align 8
  %35 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool11.not = icmp eq i32 %35, 0
  br i1 %tobool11.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %optrom_mutex14 = getelementptr inbounds %struct.qla_hw_data, ptr %11, i32 0, i32 203
  tail call void @mutex_unlock(ptr noundef %optrom_mutex14) #13
  br label %if.then20

if.end16:                                         ; preds = %if.else
  %call17 = call i32 @qla2x00_get_firmware_state(ptr noundef %hostdata.i, ptr noundef nonnull %state) #13
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %optrom_mutex19 = getelementptr inbounds %struct.qla_hw_data, ptr %37, i32 0, i32 203
  call void @mutex_unlock(ptr noundef %optrom_mutex19) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %phi.cmp = icmp eq i32 %call17, 0
  br i1 %phi.cmp, label %if.end16.if.end24_crit_edge, label %if.end16.if.then20_crit_edge

if.end16.if.then20_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then20:                                        ; preds = %if.end16.if.then20_crit_edge, %if.then12, %if.then7
  %38 = call ptr @memset(ptr %state, i32 255, i32 12)
  %call23 = call i32 @qla2x00_get_firmware_state(ptr noundef %hostdata.i, ptr noundef nonnull %state) #13
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end16.if.end24_crit_edge
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %state, align 2
  %conv = zext i16 %40 to i32
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %0, align 2
  %conv26 = zext i16 %42 to i32
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %1, align 2
  %conv28 = zext i16 %44 to i32
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %2, align 2
  %conv30 = zext i16 %46 to i32
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %3, align 2
  %conv32 = zext i16 %48 to i32
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %4, align 2
  %conv34 = zext i16 %50 to i32
  %call35 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.125, i32 noundef %conv, i32 noundef %conv26, i32 noundef %conv28, i32 noundef %conv30, i32 noundef %conv32, i32 noundef %conv34) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call35, %if.end24 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %state) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlafx00_fw_state_show(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_get_firmware_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_optrom_gold_fw_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 45719552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %gold_fw_version = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 208
  %6 = ptrtoint ptr %gold_fw_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gold_fw_version, align 8
  %arrayidx37 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 208, i32 1
  %8 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx37, align 4
  %arrayidx39 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 208, i32 2
  %10 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx39, align 8
  %arrayidx41 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 208, i32 3
  %12 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx41, align 4
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.127, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call42, %if.end ], [ %call35, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_thermal_temp_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %temp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp) #13
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %temp, align 2
  %hw = getelementptr i8, ptr %dev, i32 2244
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %optrom_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 203
  tail call void @mutex_lock_nested(ptr noundef %optrom_mutex, i32 noundef 0) #13
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false.i.i:                                ; preds = %entry
  %12 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.if.then_crit_edge

lor.lhs.false.i.i.if.then_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %15 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %17 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.if.then_crit_edge

lor.lhs.false5.i.i.if.then_crit_edge:             ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr i8, ptr %dev, i32 1084
  %18 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.if.then_crit_edge

lor.lhs.false9.i.i.if.then_crit_edge:             ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %21 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %23 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.if.then_crit_edge

qla2x00_reset_active.exit.i.if.then_crit_edge:    ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 2
  %24 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load.i = load volatile i32, ptr %24, align 4
  %26 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.not = icmp eq i32 %26, 0
  br i1 %tobool.not.not, label %qla2x00_chip_is_down.exit.if.then_crit_edge, label %if.end

qla2x00_chip_is_down.exit.if.then_crit_edge:      ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %qla2x00_chip_is_down.exit.if.then_crit_edge, %qla2x00_reset_active.exit.i.if.then_crit_edge, %lor.lhs.false9.i.i.if.then_crit_edge, %lor.lhs.false5.i.i.if.then_crit_edge, %lor.lhs.false.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  %optrom_mutex3 = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 203
  tail call void @mutex_unlock(ptr noundef %optrom_mutex3) #13
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28892, ptr noundef nonnull @.str.124) #13
  br label %done

if.end:                                           ; preds = %qla2x00_chip_is_down.exit
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load = load volatile i32, ptr %flags.i, align 8
  %28 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool5.not = icmp eq i32 %28, 0
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %optrom_mutex8 = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 203
  tail call void @mutex_unlock(ptr noundef %optrom_mutex8) #13
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28893, ptr noundef nonnull @.str.129) #13
  br label %done

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @qla2x00_get_thermal_temp(ptr noundef %hostdata.i, ptr noundef nonnull %temp) #13
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %optrom_mutex12 = getelementptr inbounds %struct.qla_hw_data, ptr %30, i32 0, i32 203
  call void @mutex_unlock(ptr noundef %optrom_mutex12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp eq i32 %call10, 0
  br i1 %cmp, label %if.then13, label %if.end9.done_crit_edge

if.end9.done_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %temp to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %temp, align 2
  %conv = zext i16 %32 to i32
  %call14 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.111, i32 noundef %conv) #13
  br label %cleanup

done:                                             ; preds = %if.end9.done_crit_edge, %if.then6, %if.then
  %call16 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then13
  %retval.0 = phi i32 [ %call16, %done ], [ %call14, %if.then13 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_get_thermal_temp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_diag_requests_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 45647872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bidi_stats = getelementptr i8, ptr %dev, i32 2824
  %6 = ptrtoint ptr %bidi_stats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bidi_stats, align 8
  %call38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.131, i64 noundef %7) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call38, %if.end ], [ %call37, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_diag_megabytes_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 45647872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %transfer_bytes = getelementptr i8, ptr %dev, i32 2832
  %6 = ptrtoint ptr %transfer_bytes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %transfer_bytes, align 8
  %shr = lshr i64 %7, 20
  %call38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.131, i64 noundef %shr) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call38, %if.end ], [ %call37, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_fw_dump_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %fw_dumped = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 167
  %2 = ptrtoint ptr %fw_dumped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_dumped, align 4, !range !477
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.else

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.else:                                          ; preds = %entry
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %6 = and i32 %5, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.else8, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %md_template_size = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 263
  %8 = ptrtoint ptr %md_template_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %md_template_size, align 4
  %md_dump_size = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 267
  %10 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %md_dump_size, align 4
  %add = add i32 %11, %9
  br label %if.end9

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %fw_dump_len = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 165
  %12 = ptrtoint ptr %fw_dump_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_dump_len, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7, %entry.if.end9_crit_edge
  %size.0 = phi i32 [ %add, %if.then7 ], [ %13, %if.else8 ], [ 0, %entry.if.end9_crit_edge ]
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.111, i32 noundef %size.0) #13
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_allow_cna_fw_dump_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %allow_cna_fw_dump = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 282
  %6 = ptrtoint ptr %allow_cna_fw_dump to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %allow_cna_fw_dump, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool9.not, ptr @.str.136, ptr @.str.135
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.71, ptr noundef nonnull %cond) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call10, %if.else ], [ %call7, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_allow_cna_fw_dump_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #11 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %hw = getelementptr i8, ptr %dev, i32 2244
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 54
  %3 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %isp_type, align 8
  %5 = and i32 %4, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.68, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 1
  br i1 %cmp.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10 = icmp ne i32 %8, 0
  %conv = zext i1 %cmp10 to i32
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %allow_cna_fw_dump = getelementptr inbounds %struct.qla_hw_data, ptr %10, i32 0, i32 282
  %11 = ptrtoint ptr %allow_cna_fw_dump to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %allow_cna_fw_dump, align 128
  %call12 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_pep_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pep_version = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 162
  %6 = ptrtoint ptr %pep_version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pep_version, align 1
  %conv = zext i8 %7 to i32
  %arrayidx22 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 162, i32 1
  %8 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %9 to i32
  %arrayidx25 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 162, i32 2
  %10 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %11 to i32
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.113, i32 noundef %conv, i32 noundef %conv23, i32 noundef %conv26) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call27, %if.end ], [ %call20, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_min_supported_speed_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %min_supported_speed = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 284
  %6 = ptrtoint ptr %min_supported_speed to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %min_supported_speed, align 8
  %switch.tableidx = add i16 %7, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %switch.tableidx)
  %8 = icmp ult i16 %switch.tableidx, 5
  br i1 %8, label %switch.lookup, label %cond.false45

cond.false45:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp48.not = icmp eq i16 %7, 0
  %cond = select i1 %cmp48.not, ptr @.str.145, ptr @.str.144
  br label %cond.end57

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.qla2x00_min_supported_speed_show, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cond.end57

cond.end57:                                       ; preds = %switch.lookup, %cond.false45
  %cond58 = phi ptr [ %cond, %cond.false45 ], [ %switch.load, %switch.lookup ]
  %call59 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.71, ptr noundef nonnull %cond58) #13
  br label %cleanup

cleanup:                                          ; preds = %cond.end57, %if.then
  %retval.0 = phi i32 [ %call59, %cond.end57 ], [ %call20, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_max_supported_speed_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_supported_speed = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 285
  %6 = ptrtoint ptr %max_supported_speed to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_supported_speed, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.201)
  switch i16 %7, label %cond.false27 [
    i16 2, label %if.end.cond.end33_crit_edge
    i16 1, label %cond.end33.fold.split
  ]

if.end.cond.end33_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end33

cond.false27:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp30 = icmp eq i16 %7, 0
  %cond = select i1 %cmp30, ptr @.str.141, ptr @.str.144
  br label %cond.end33

cond.end33.fold.split:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end33

cond.end33:                                       ; preds = %cond.end33.fold.split, %cond.false27, %if.end.cond.end33_crit_edge
  %cond34 = phi ptr [ @.str.139, %if.end.cond.end33_crit_edge ], [ %cond, %cond.false27 ], [ @.str.140, %cond.end33.fold.split ]
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.71, ptr noundef nonnull %cond34) #13
  br label %cleanup

cleanup:                                          ; preds = %cond.end33, %if.then
  %retval.0 = phi i32 [ %call35, %cond.end33 ], [ %call20, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_zio_threshold_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %last_zio_threshold = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 297
  %2 = ptrtoint ptr %last_zio_threshold to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %last_zio_threshold, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.148, i32 noundef %conv) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_zio_threshold_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %hw = getelementptr i8, ptr %dev, i32 2244
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %zio_mode = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 224
  %3 = ptrtoint ptr %zio_mode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %zio_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %4)
  %cmp.not = icmp eq i16 %4, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.68, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 1
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %6)
  %7 = icmp ugt i32 %6, 256
  br i1 %7, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %zio_threshold = getelementptr inbounds %struct.qla_hw_data, ptr %9, i32 0, i32 296
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %zio_threshold, i32 noundef 4) #13
  %10 = ptrtoint ptr %zio_threshold to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %6, ptr %zio_threshold, align 4
  %call14 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -34, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_dif_bundle_statistics_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %dif_bundle_crossed_pages = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 288
  %2 = ptrtoint ptr %dif_bundle_crossed_pages to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dif_bundle_crossed_pages, align 8
  %dif_bundle_reads = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 289
  %4 = ptrtoint ptr %dif_bundle_reads to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dif_bundle_reads, align 16
  %dif_bundle_writes = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 290
  %6 = ptrtoint ptr %dif_bundle_writes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dif_bundle_writes, align 8
  %dif_bundle_kallocs = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 291
  %8 = ptrtoint ptr %dif_bundle_kallocs to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dif_bundle_kallocs, align 64
  %dif_bundle_dma_allocs = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 292
  %10 = ptrtoint ptr %dif_bundle_dma_allocs to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dif_bundle_dma_allocs, align 8
  %count = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 287, i32 1, i32 1
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.150, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11, i32 noundef %13) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_port_speed_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %dev, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %call2 = tail call i32 @qla2x00_get_data_rate(ptr noundef %hostdata.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %dev_to_shost.exit
  %link_data_rate = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %link_data_rate to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %link_data_rate, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.202)
  switch i16 %5, label %for.cond.preheader.for.end_crit_edge [
    i16 3, label %for.cond.preheader.if.end10_crit_edge
    i16 4, label %if.end10.fold.split
    i16 5, label %if.end10.fold.split29
    i16 6, label %if.end10.fold.split30
    i16 7, label %if.end10.fold.split31
    i16 19, label %if.end10.fold.split32
  ]

for.cond.preheader.if.end10_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then:                                          ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28891, ptr noundef nonnull @.str.153, i32 noundef %call2) #13
  br label %cleanup

if.end10.fold.split:                              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end10.fold.split29:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end10.fold.split30:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end10.fold.split31:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end10.fold.split32:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end10:                                         ; preds = %if.end10.fold.split32, %if.end10.fold.split31, %if.end10.fold.split30, %if.end10.fold.split29, %if.end10.fold.split, %for.cond.preheader.if.end10_crit_edge
  %conv.lcssa = phi i32 [ 0, %for.cond.preheader.if.end10_crit_edge ], [ 1, %if.end10.fold.split ], [ 2, %if.end10.fold.split29 ], [ 3, %if.end10.fold.split30 ], [ 4, %if.end10.fold.split31 ], [ 5, %if.end10.fold.split32 ]
  %str = getelementptr [6 x %struct.anon.172], ptr @port_speed_str, i32 0, i32 %conv.lcssa, i32 1
  %7 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %str, align 4
  br label %for.end

for.end:                                          ; preds = %if.end10, %for.cond.preheader.for.end_crit_edge
  %speed.0 = phi ptr [ %8, %if.end10 ], [ @.str.152, %for.cond.preheader.for.end_crit_edge ]
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.71, ptr noundef %speed.0) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call13, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_port_speed_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %dev, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #13
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %type, align 4, !annotation !473
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 54
  %5 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %isp_type, align 8
  %7 = and i32 %6, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.then, label %if.end

if.then:                                          ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28888, ptr noundef nonnull @.str.160) #13
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %call.i89 = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool22.not = icmp eq i32 %call.i89, 0
  br i1 %tobool22.not, label %if.end24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %10, label %if.end24.if.end32_crit_edge [
    i32 40, label %if.end24.if.then31_crit_edge
    i32 80, label %if.end24.if.then31_crit_edge98
    i32 160, label %if.end24.if.then31_crit_edge99
    i32 320, label %if.end24.if.then31_crit_edge100
  ]

if.end24.if.then31_crit_edge100:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31

if.end24.if.then31_crit_edge99:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31

if.end24.if.then31_crit_edge98:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31

if.end24.if.then31_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then31:                                        ; preds = %if.end24.if.then31_crit_edge, %if.end24.if.then31_crit_edge98, %if.end24.if.then31_crit_edge99, %if.end24.if.then31_crit_edge100
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %hostdata.i, i32 noundef 28889, ptr noundef nonnull @.str.161) #13
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %div = udiv i32 %13, 10
  store i32 %div, ptr %type, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end24.if.end32_crit_edge
  %mode.0 = phi i16 [ 1, %if.then31 ], [ 2, %if.end24.if.end32_crit_edge ]
  %set_data_rate = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 48
  %14 = ptrtoint ptr %set_data_rate to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %set_data_rate, align 4
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  %18 = call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %18)
  %19 = icmp ult i32 %18, 9
  br i1 %19, label %switch.hole_check, label %if.end32.sw.default_crit_edge

if.end32.sw.default_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %if.end32.sw.default_crit_edge
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 4505, ptr noundef nonnull @.str.162, i32 noundef %10) #13
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.end32
  %switch.maskindex = trunc i32 %18 to i16
  %switch.shifted = lshr i16 279, %switch.maskindex
  %20 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %switch.lobit.not = icmp eq i16 %20, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [9 x i16], ptr @switch.table.qla2x00_port_speed_store, i32 0, i32 %18
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %21)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.default
  %.sink = phi i16 [ 2, %sw.default ], [ %switch.load, %switch.lookup ]
  %22 = ptrtoint ptr %set_data_rate to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %.sink, ptr %set_data_rate, align 4
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %31 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %sw.epilog
  %32 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %34 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool4.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %35 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %37 = and i32 %36, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool8.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.cleanup_crit_edge

lor.lhs.false5.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 2
  %38 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %40 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool12.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.cleanup_crit_edge

lor.lhs.false9.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %41 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %43 = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i90 = icmp eq i32 %43, 0
  br i1 %tobool.not.i90, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.cleanup_crit_edge

qla2x00_reset_active.exit.i.cleanup_crit_edge:    ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %24, i32 0, i32 2
  %44 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load.i = load volatile i32, ptr %44, align 4
  %46 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool44.not.not = icmp eq i32 %46, 0
  br i1 %tobool44.not.not, label %qla2x00_chip_is_down.exit.cleanup_crit_edge, label %lor.lhs.false45

qla2x00_chip_is_down.exit.cleanup_crit_edge:      ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false45:                                  ; preds = %qla2x00_chip_is_down.exit
  %47 = ptrtoint ptr %set_data_rate to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %set_data_rate, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %48)
  %cmp48 = icmp eq i16 %15, %48
  br i1 %cmp48, label %lor.lhs.false45.cleanup_crit_edge, label %if.end51

lor.lhs.false45.cleanup_crit_edge:                ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false45
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %hostdata.i, i32 noundef 28890, ptr noundef nonnull @.str.163, i32 noundef %50) #13
  %call53 = call i32 @qla2x00_set_data_rate(ptr noundef %hostdata.i, i16 noundef zeroext %mode.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %if.end57, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %call58 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end51.cleanup_crit_edge, %lor.lhs.false45.cleanup_crit_edge, %qla2x00_chip_is_down.exit.cleanup_crit_edge, %qla2x00_reset_active.exit.i.cleanup_crit_edge, %lor.lhs.false9.i.i.cleanup_crit_edge, %lor.lhs.false5.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call58, %if.end57 ], [ -22, %if.then ], [ %call.i89, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false45.cleanup_crit_edge ], [ -22, %qla2x00_chip_is_down.exit.cleanup_crit_edge ], [ -5, %if.end51.cleanup_crit_edge ], [ -22, %qla2x00_reset_active.exit.i.cleanup_crit_edge ], [ -22, %lor.lhs.false9.i.i.cleanup_crit_edge ], [ -22, %lor.lhs.false5.i.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_get_data_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_set_data_rate(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_port_no_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %port_no = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %port_no to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_no, align 8
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.109, i32 noundef %conv) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_fw_attr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fw_attributes_ext = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 140
  %arrayidx = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 140, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %7 to i64
  %shl = shl nuw i64 %conv, 48
  %8 = ptrtoint ptr %fw_attributes_ext to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fw_attributes_ext, align 2
  %conv23 = zext i16 %9 to i64
  %shl24 = shl nuw nsw i64 %conv23, 32
  %or = or i64 %shl24, %shl
  %fw_attributes_h = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 139
  %10 = ptrtoint ptr %fw_attributes_h to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %fw_attributes_h, align 4
  %conv25 = zext i16 %11 to i64
  %shl26 = shl nuw nsw i64 %conv25, 16
  %or27 = or i64 %or, %shl26
  %fw_attributes = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 138
  %12 = ptrtoint ptr %fw_attributes to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fw_attributes, align 2
  %conv28 = zext i16 %13 to i64
  %or29 = or i64 %or27, %conv28
  %call30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.166, i64 noundef %or29) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call30, %if.end ], [ %call20, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_dport_diagnostics_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2244
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 45711360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dport_data = getelementptr i8, ptr %dev, i32 3252
  %6 = ptrtoint ptr %dport_data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dport_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool37.not = icmp eq i16 %7, 0
  br i1 %tobool37.not, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call39 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %7 to i32
  %arrayidx43 = getelementptr i8, ptr %dev, i32 3254
  %8 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx43, align 2
  %conv44 = zext i16 %9 to i32
  %arrayidx46 = getelementptr i8, ptr %dev, i32 3256
  %10 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx46, align 4
  %conv47 = zext i16 %11 to i32
  %arrayidx49 = getelementptr i8, ptr %dev, i32 3258
  %12 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx49, align 2
  %conv50 = zext i16 %13 to i32
  %call51 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.79, i32 noundef %conv, i32 noundef %conv44, i32 noundef %conv47, i32 noundef %conv50) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then38, %if.then
  %retval.0 = phi i32 [ %call51, %if.end40 ], [ %call39, %if.then38 ], [ %call36, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edif_doorbell_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_mpi_pause_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #13
  %0 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rval, align 4
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.68, ptr noundef nonnull %rval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28809, ptr noundef nonnull @.str.170) #13
  %call2 = call i32 @qla83xx_wr_reg(ptr noundef %hostdata.i, i32 noundef 2101972, i32 noundef 805306369) #13
  %1 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call2, ptr %rval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28810, ptr noundef nonnull @.str.171) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ %count, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_set_remoteport_devloss(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlafx00_get_host_speed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_get_sym_node_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_get_isp_stats(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_get_link_status(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_loop_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_set_fcport_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_abort_all_cmds(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlt_schedule_sess_for_deletion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_port_logout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_vport_create_req_sanity_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla24xx_create_vhost(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlt_vport_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla2xxx_create_qpair(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_disable_vp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla24xx_deallocate_vp_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_enable_vp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_wait_for_sess_deletion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla_nvme_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla_enode_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla_edb_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlt_remove_target(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_vp_stop_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_free_fcports(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2xxx_delete_qpair(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 254)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 254)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readnone }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !169, !171, !173, !175, !177, !178, !180, !182, !183, !185, !187, !188, !190, !191, !193, !195, !197, !198, !200, !202, !203, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !221, !223, !225, !227, !229, !231, !233, !234, !236, !238, !240, !241, !243, !245, !246, !248, !250, !252, !253, !255, !257, !259, !260, !262, !264, !265, !267, !268, !270, !271, !273, !275, !276, !278, !280, !281, !283, !285, !286, !288, !290, !291, !293, !295, !296, !298, !299, !301, !303, !304, !306, !307, !309, !311, !312, !314, !315, !317, !319, !321, !322, !324, !326, !327, !329, !331, !332, !334, !336, !337, !339, !340, !342, !343, !345, !347, !349, !350, !352, !353, !355, !357, !359, !361, !363, !365, !367, !369, !370, !372, !373, !375, !377, !378, !380, !382, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !412, !414, !415, !417, !419, !420, !422, !423, !425, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462}
!llvm.module.flags = !{!464, !465, !466, !467, !468, !469, !470, !471}
!llvm.ident = !{!472}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1036, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1040, i32 8}
!4 = !{ptr @qla2x00_host_groups, !5, !"qla2x00_host_groups", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2551, i32 31}
!6 = !{ptr @qla2xxx_transport_functions, !7, !"qla2xxx_transport_functions", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 3233, i32 29}
!8 = !{ptr @qla2xxx_transport_vport_functions, !9, !"qla2xxx_transport_vport_functions", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 3281, i32 29}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1004, i32 4}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1005, i32 4}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1006, i32 4}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1007, i32 4}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1008, i32 4}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1009, i32 4}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1010, i32 4}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1011, i32 4}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1012, i32 4}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1013, i32 4}
!30 = !{ptr @bin_file_entries, !31, !"bin_file_entries", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1003, i32 3}
!32 = !{ptr @sysfs_fw_dump_attr, !33, !"sysfs_fw_dump_attr", i1 false, i1 false}
!33 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 171, i32 29}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 79, i32 7}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 93, i32 8}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 117, i32 9}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 120, i32 9}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 131, i32 7}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 139, i32 8}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 147, i32 10}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 155, i32 11}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 162, i32 11}
!52 = !{ptr @sysfs_nvram_attr, !53, !"sysfs_nvram_attr", i1 false, i1 false}
!53 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 285, i32 29}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 259, i32 7}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 276, i32 6}
!58 = !{ptr @sysfs_optrom_attr, !59, !"sysfs_optrom_attr", i1 false, i1 false}
!59 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 347, i32 29}
!60 = !{ptr @sysfs_optrom_ctl_attr, !61, !"sysfs_optrom_ctl_attr", i1 false, i1 false}
!61 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 532, i32 29}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 376, i32 18}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 398, i32 7}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 417, i32 8}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 433, i32 7}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 476, i32 8}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 488, i32 8}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 497, i32 7}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 509, i32 8}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 515, i32 7}
!80 = !{ptr @sysfs_vpd_attr, !81, !"sysfs_vpd_attr", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 645, i32 29}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 569, i32 7}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 571, i32 7}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 571, i32 19}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 610, i32 7}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 634, i32 7}
!92 = !{ptr @sysfs_sfp_attr, !93, !"sysfs_sfp_attr", i1 false, i1 false}
!93 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 682, i32 29}
!94 = !{ptr @sysfs_reset_attr, !95, !"sysfs_reset_attr", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 826, i32 29}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 711, i32 7}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 715, i32 11}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 746, i32 7}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 762, i32 4}
!104 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 769, i32 9}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 777, i32 8}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 782, i32 7}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 791, i32 7}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 802, i32 7}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 811, i32 7}
!117 = !{ptr @sysfs_issue_logo_attr, !118, !"sysfs_issue_logo_attr", i1 false, i1 false}
!118 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 869, i32 29}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 860, i32 35}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 863, i32 35}
!123 = !{ptr @__func__.qla2x00_issue_logo, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 863, i32 47}
!125 = !{ptr @sysfs_xgmac_stats_attr, !126, !"sysfs_xgmac_stats_attr", i1 false, i1 false}
!126 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 932, i32 29}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 908, i32 7}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 922, i32 7}
!131 = !{ptr @sysfs_dcbx_tlv_attr, !132, !"sysfs_dcbx_tlv_attr", i1 false, i1 false}
!132 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 990, i32 29}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 967, i32 7}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 981, i32 7}
!137 = !{ptr @qla2x00_host_attr_group, !138, !"qla2x00_host_attr_group", i1 false, i1 false}
!138 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2546, i32 37}
!139 = !{ptr @.str.53, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2473, i32 8}
!141 = !{ptr @dev_attr_qlini_mode, !140, !"dev_attr_qlini_mode", i1 false, i1 false}
!142 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1943, i32 6}
!144 = !{ptr @.str.55, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1946, i32 45}
!146 = !{ptr @.str.56, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1951, i32 7}
!148 = !{ptr @.str.57, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1955, i32 7}
!150 = !{ptr @.str.58, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1959, i32 7}
!152 = !{ptr @.str.59, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1963, i32 7}
!154 = !{ptr @.str.60, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1966, i32 45}
!156 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2215, i32 7}
!158 = !{ptr @.str.62, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2231, i32 7}
!160 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2242, i32 7}
!162 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2248, i32 7}
!164 = !{ptr @mode_to_str, !165, !"mode_to_str", i1 false, i1 false}
!165 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1971, i32 14}
!166 = !{ptr @.str.65, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2475, i32 8}
!168 = !{ptr @dev_attr_ql2xiniexchg, !167, !"dev_attr_ql2xiniexchg", i1 false, i1 false}
!169 = !{ptr @.str.66, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2329, i32 3}
!171 = !{ptr @.str.67, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2333, i32 6}
!173 = !{ptr @.str.68, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2346, i32 18}
!175 = !{ptr @.str.69, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2474, i32 8}
!177 = !{ptr @dev_attr_ql2xexchoffld, !176, !"dev_attr_ql2xexchoffld", i1 false, i1 false}
!178 = !{ptr @qla2x00_host_attrs, !179, !"qla2x00_host_attrs", i1 false, i1 false}
!179 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2484, i32 26}
!180 = !{ptr @.str.70, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2418, i32 8}
!182 = !{ptr @dev_attr_driver_version, !181, !"dev_attr_driver_version", i1 false, i1 false}
!183 = !{ptr @.str.71, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1077, i32 35}
!185 = !{ptr @.str.72, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2419, i32 8}
!187 = !{ptr @dev_attr_fw_version, !186, !"dev_attr_fw_version", i1 false, i1 false}
!188 = !{ptr @.str.73, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2420, i32 8}
!190 = !{ptr @dev_attr_serial_num, !189, !"dev_attr_serial_num", i1 false, i1 false}
!191 = !{ptr @.str.74, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1104, i32 30}
!193 = !{ptr @.str.75, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1109, i32 35}
!195 = !{ptr @.str.76, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2421, i32 8}
!197 = !{ptr @dev_attr_isp_name, !196, !"dev_attr_isp_name", i1 false, i1 false}
!198 = !{ptr @.str.77, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1119, i32 35}
!200 = !{ptr @.str.78, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2422, i32 8}
!202 = !{ptr @dev_attr_isp_id, !201, !"dev_attr_isp_id", i1 false, i1 false}
!203 = !{ptr @.str.79, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1133, i32 35}
!205 = !{ptr @.str.80, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2423, i32 8}
!207 = !{ptr @dev_attr_model_name, !206, !"dev_attr_model_name", i1 false, i1 false}
!208 = !{ptr @.str.81, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2424, i32 8}
!210 = !{ptr @dev_attr_model_desc, !209, !"dev_attr_model_desc", i1 false, i1 false}
!211 = !{ptr @.str.82, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2425, i32 8}
!213 = !{ptr @dev_attr_pci_info, !212, !"dev_attr_pci_info", i1 false, i1 false}
!214 = !{ptr @.str.83, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2426, i32 8}
!216 = !{ptr @dev_attr_link_state, !215, !"dev_attr_link_state", i1 false, i1 false}
!217 = !{ptr @.str.84, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1179, i32 35}
!219 = !{ptr @.str.85, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1182, i32 35}
!221 = !{ptr @.str.86, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1184, i32 35}
!223 = !{ptr @.str.87, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1188, i32 47}
!225 = !{ptr @.str.88, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1191, i32 47}
!227 = !{ptr @.str.89, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1195, i32 8}
!229 = !{ptr @.str.90, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1198, i32 47}
!231 = !{ptr @.str.91, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2427, i32 8}
!233 = !{ptr @dev_attr_zio, !232, !"dev_attr_zio", i1 false, i1 false}
!234 = !{ptr @.str.92, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1217, i32 46}
!236 = !{ptr @.str.93, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1220, i32 46}
!238 = !{ptr @.str.94, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2428, i32 8}
!240 = !{ptr @dev_attr_zio_timer, !239, !"dev_attr_zio_timer", i1 false, i1 false}
!241 = !{ptr @.str.95, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1260, i32 35}
!243 = !{ptr @.str.96, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2430, i32 8}
!245 = !{ptr @dev_attr_beacon, !244, !"dev_attr_beacon", i1 false, i1 false}
!246 = !{ptr @.str.97, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1318, i32 46}
!248 = !{ptr @.str.98, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1343, i32 7}
!250 = !{ptr @.str.99, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2432, i32 8}
!252 = !{ptr @dev_attr_beacon_config, !251, !"dev_attr_beacon_config", i1 false, i1 false}
!253 = !{ptr @.str.100, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1374, i32 35}
!255 = !{ptr @.str.101, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1392, i32 18}
!257 = !{ptr @.str.102, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2434, i32 8}
!259 = !{ptr @dev_attr_optrom_bios_version, !258, !"dev_attr_optrom_bios_version", i1 false, i1 false}
!260 = !{ptr @.str.103, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1440, i32 35}
!262 = !{ptr @.str.104, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2436, i32 8}
!264 = !{ptr @dev_attr_optrom_efi_version, !263, !"dev_attr_optrom_efi_version", i1 false, i1 false}
!265 = !{ptr @.str.105, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2438, i32 8}
!267 = !{ptr @dev_attr_optrom_fcode_version, !266, !"dev_attr_optrom_fcode_version", i1 false, i1 false}
!268 = !{ptr @.str.106, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2440, i32 8}
!270 = !{ptr @dev_attr_optrom_fw_version, !269, !"dev_attr_optrom_fw_version", i1 false, i1 false}
!271 = !{ptr @.str.107, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1473, i32 35}
!273 = !{ptr @.str.108, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2444, i32 8}
!275 = !{ptr @dev_attr_84xx_fw_version, !274, !"dev_attr_84xx_fw_version", i1 false, i1 false}
!276 = !{ptr @.str.109, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1520, i32 37}
!278 = !{ptr @.str.110, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2446, i32 8}
!280 = !{ptr @dev_attr_total_isp_aborts, !279, !"dev_attr_total_isp_aborts", i1 false, i1 false}
!281 = !{ptr @.str.111, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1500, i32 35}
!283 = !{ptr @.str.112, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2448, i32 8}
!285 = !{ptr @dev_attr_serdes_version, !284, !"dev_attr_serdes_version", i1 false, i1 false}
!286 = !{ptr @.str.113, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1537, i32 35}
!288 = !{ptr @.str.114, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2449, i32 8}
!290 = !{ptr @dev_attr_mpi_version, !289, !"dev_attr_mpi_version", i1 false, i1 false}
!291 = !{ptr @.str.115, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1553, i32 35}
!293 = !{ptr @.str.116, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2450, i32 8}
!295 = !{ptr @dev_attr_phy_version, !294, !"dev_attr_phy_version", i1 false, i1 false}
!296 = !{ptr @.str.117, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2451, i32 8}
!298 = !{ptr @dev_attr_flash_block_size, !297, !"dev_attr_flash_block_size", i1 false, i1 false}
!299 = !{ptr @.str.118, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1579, i32 35}
!301 = !{ptr @.str.119, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2453, i32 8}
!303 = !{ptr @dev_attr_vlan_id, !302, !"dev_attr_vlan_id", i1 false, i1 false}
!304 = !{ptr @.str.120, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2454, i32 8}
!306 = !{ptr @dev_attr_vn_port_mac_address, !305, !"dev_attr_vn_port_mac_address", i1 false, i1 false}
!307 = !{ptr @.str.121, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1603, i32 35}
!309 = !{ptr @.str.122, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2456, i32 8}
!311 = !{ptr @dev_attr_fabric_param, !310, !"dev_attr_fabric_param", i1 false, i1 false}
!312 = !{ptr @.str.123, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2457, i32 8}
!314 = !{ptr @dev_attr_fw_state, !313, !"dev_attr_fw_state", i1 false, i1 false}
!315 = !{ptr @.str.124, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1663, i32 7}
!317 = !{ptr @.str.125, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1678, i32 35}
!319 = !{ptr @.str.126, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2442, i32 8}
!321 = !{ptr @dev_attr_optrom_gold_fw_version, !320, !"dev_attr_optrom_gold_fw_version", i1 false, i1 false}
!322 = !{ptr @.str.127, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1489, i32 35}
!324 = !{ptr @.str.128, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2458, i32 8}
!326 = !{ptr @dev_attr_thermal_temp, !325, !"dev_attr_thermal_temp", i1 false, i1 false}
!327 = !{ptr @.str.129, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1632, i32 36}
!329 = !{ptr @.str.130, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2459, i32 8}
!331 = !{ptr @dev_attr_diag_requests, !330, !"dev_attr_diag_requests", i1 false, i1 false}
!332 = !{ptr @.str.131, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1691, i32 35}
!334 = !{ptr @.str.132, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2460, i32 8}
!336 = !{ptr @dev_attr_diag_megabytes, !335, !"dev_attr_diag_megabytes", i1 false, i1 false}
!337 = !{ptr @.str.133, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2461, i32 8}
!339 = !{ptr @dev_attr_fw_dump_size, !338, !"dev_attr_fw_dump_size", i1 false, i1 false}
!340 = !{ptr @.str.134, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2462, i32 8}
!342 = !{ptr @dev_attr_allow_cna_fw_dump, !341, !"dev_attr_allow_cna_fw_dump", i1 false, i1 false}
!343 = !{ptr @.str.135, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1735, i32 36}
!345 = !{ptr @.str.136, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1735, i32 45}
!347 = !{ptr @.str.137, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2465, i32 8}
!349 = !{ptr @dev_attr_pep_version, !348, !"dev_attr_pep_version", i1 false, i1 false}
!350 = !{ptr @.str.138, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2466, i32 8}
!352 = !{ptr @dev_attr_min_supported_speed, !351, !"dev_attr_min_supported_speed", i1 false, i1 false}
!353 = !{ptr @.str.139, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1781, i32 37}
!355 = !{ptr @.str.140, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1782, i32 37}
!357 = !{ptr @.str.141, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1783, i32 37}
!359 = !{ptr @.str.142, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1784, i32 37}
!361 = !{ptr @.str.143, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1785, i32 37}
!363 = !{ptr @.str.144, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1786, i32 37}
!365 = !{ptr @.str.145, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1786, i32 49}
!367 = !{ptr @.str.146, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2468, i32 8}
!369 = !{ptr @dev_attr_max_supported_speed, !368, !"dev_attr_max_supported_speed", i1 false, i1 false}
!370 = !{ptr @.str.147, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2470, i32 8}
!372 = !{ptr @dev_attr_zio_threshold, !371, !"dev_attr_zio_threshold", i1 false, i1 false}
!373 = !{ptr @.str.148, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1288, i32 35}
!375 = !{ptr @.str.149, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2476, i32 8}
!377 = !{ptr @dev_attr_dif_bundle_statistics, !376, !"dev_attr_dif_bundle_statistics", i1 false, i1 false}
!378 = !{ptr @.str.150, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2366, i32 6}
!380 = !{ptr @.str.151, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2478, i32 8}
!382 = !{ptr @dev_attr_port_speed, !381, !"dev_attr_port_speed", i1 false, i1 false}
!383 = !{ptr @.str.152, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1891, i32 16}
!385 = !{ptr @.str.153, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1896, i32 7}
!387 = !{ptr @.str.154, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1875, i32 20}
!389 = !{ptr @.str.155, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1876, i32 20}
!391 = !{ptr @.str.156, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1877, i32 21}
!393 = !{ptr @.str.157, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1878, i32 21}
!395 = !{ptr @.str.158, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1879, i32 21}
!397 = !{ptr @.str.159, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1880, i32 21}
!399 = !{ptr @port_speed_str, !400, !"port_speed_str", i1 false, i1 false}
!400 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1874, i32 3}
!401 = !{ptr @.str.160, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1817, i32 7}
!403 = !{ptr @.str.161, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1828, i32 7}
!405 = !{ptr @.str.162, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1853, i32 7}
!407 = !{ptr @.str.163, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1862, i32 6}
!409 = !{ptr @.str.164, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2480, i32 8}
!411 = !{ptr @dev_attr_port_no, !410, !"dev_attr_port_no", i1 false, i1 false}
!412 = !{ptr @.str.165, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2481, i32 8}
!414 = !{ptr @dev_attr_fw_attr, !413, !"dev_attr_fw_attr", i1 false, i1 false}
!415 = !{ptr @.str.166, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2382, i32 35}
!417 = !{ptr @.str.167, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2415, i32 8}
!419 = !{ptr @dev_attr_dport_diagnostics, !418, !"dev_attr_dport_diagnostics", i1 false, i1 false}
!420 = !{ptr @.str.168, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2482, i32 8}
!422 = !{ptr @dev_attr_edif_doorbell, !421, !"dev_attr_edif_doorbell", i1 false, i1 false}
!423 = !{ptr @.str.169, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1932, i32 8}
!425 = !{ptr @dev_attr_mpi_pause, !424, !"dev_attr_mpi_pause", i1 false, i1 false}
!426 = !{ptr @.str.170, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1920, i32 35}
!428 = !{ptr @.str.171, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 1925, i32 36}
!430 = distinct !{null, !431, !"node_name", i1 false, i1 false}
!431 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2975, i32 23}
!432 = !{ptr @.str.172, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2830, i32 7}
!434 = !{ptr @.str.173, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2946, i32 11}
!436 = !{ptr @.str.174, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2773, i32 12}
!438 = !{ptr @__func__.qla2x00_terminate_rport_io, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 2773, i32 49}
!440 = !{ptr @.str.175, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 3034, i32 7}
!442 = !{ptr @.str.176, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 3040, i32 36}
!444 = !{ptr @.str.177, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 3051, i32 6}
!446 = !{ptr @.str.178, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 3062, i32 7}
!448 = !{ptr @.str.179, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 3074, i32 8}
!450 = !{ptr @.str.180, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 3099, i32 7}
!452 = !{ptr @.str.181, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 3132, i32 8}
!454 = !{ptr @.str.182, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 3136, i32 8}
!456 = !{ptr @.str.183, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 3139, i32 8}
!458 = !{ptr @.str.184, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 3192, i32 7}
!460 = !{ptr @.str.185, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 3212, i32 8}
!462 = !{ptr @.str.186, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/scsi/qla2xxx/qla_attr.c", i32 3215, i32 35}
!464 = !{i32 1, !"wchar_size", i32 2}
!465 = !{i32 1, !"min_enum_size", i32 4}
!466 = !{i32 8, !"branch-target-enforcement", i32 0}
!467 = !{i32 8, !"sign-return-address", i32 0}
!468 = !{i32 8, !"sign-return-address-all", i32 0}
!469 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!470 = !{i32 7, !"uwtable", i32 1}
!471 = !{i32 7, !"frame-pointer", i32 2}
!472 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!473 = !{!"auto-init"}
!474 = !{!"branch_weights", i32 2000, i32 1}
!475 = !{i64 1344489, i64 1344516, i64 1344538, i64 1344566}
!476 = !{i64 1344897, i64 1344924, i64 1344957, i64 1344978, i64 1345005, i64 1345031}
!477 = !{i8 0, i8 2}
