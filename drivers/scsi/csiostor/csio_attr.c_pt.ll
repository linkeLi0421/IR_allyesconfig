; ModuleID = '/llk/IR_all_yes/drivers/scsi/csiostor/csio_attr.c_pt.bc'
source_filename = "../drivers/scsi/csiostor/csio_attr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fc_rport_identifiers = type { i64, i64, i32, i32 }
%struct.csio_rnode = type { %struct.csio_sm, ptr, i32, %struct.list_head, i32, i16, i8, i8, i32, ptr, %struct.csio_service_parms, ptr, i32, i32, i32, %struct.csio_rnode_stats }
%struct.csio_sm = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.csio_service_parms = type { %struct.fc_els_csp, [8 x i8], [8 x i8], [4 x %struct.fc_els_cssp], [16 x i8] }
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.80, i32 }
%union.anon.80 = type { %struct.anon.82 }
%struct.anon.82 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.csio_rnode_stats = type { i32, i32, i32, i32, i32, [27 x i32], [10 x i32], i32, i32, i32, i32 }
%struct.csio_lnode = type { %struct.csio_sm, ptr, i8, i8, i16, i32, i32, %struct.list_head, ptr, ptr, [6 x i8], i32, %struct.csio_service_parms, i32, i32, i16, i8, i8, %struct.list_head, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, %struct.fc_host_statistics, %struct.csio_lnode_stats, %struct.csio_lnode_params }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.csio_lnode_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [27 x i32], [7 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_lnode_params = type { i32, i32, i32 }
%struct.csio_hw = type { %struct.csio_sm, %struct.spinlock, %struct.csio_scsim, %struct.csio_wrm, ptr, ptr, i32, i32, [4 x [128 x %struct.csio_scsi_qset]], [4 x %struct.csio_scsi_cpu_info], i32, i32, %struct.csio_mgmtm, %struct.csio_mbm, i32, ptr, %struct.list_head, i32, i32, %struct.work_struct, %struct.list_head, %struct.list_head, [32 x i8], [16 x i8], [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i8, i16, i32, %struct.csio_vpd, i8, i32, i8, i8, i8, i8, i32, [4 x %struct.csio_pport], %struct.csio_hw_params, ptr, ptr, ptr, i32, i32, i32, i8, i8, %struct.csio_fcoe_res_info, ptr, [514 x %struct.csio_msix_entries], ptr, %struct.csio_hw_stats }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.csio_scsim = type { ptr, i8, i8, i16, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.csio_scsi_stats }
%struct.csio_scsi_stats = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_wrm = type { i32, ptr, i32, i32, [128 x ptr], i32, %struct.csio_sge }
%struct.csio_sge = type { i32, i32, i32, [16 x i32], [6 x i16], [4 x i8] }
%struct.csio_scsi_qset = type { i32, i32, i32 }
%struct.csio_scsi_cpu_info = type { i16 }
%struct.csio_mgmtm = type { ptr, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.csio_mgmtm_stats }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.csio_mgmtm_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_mbm = type { i32, i32, %struct.timer_list, ptr, %struct.list_head, %struct.list_head, ptr, i32, %struct.csio_mbm_stats }
%struct.csio_mbm_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.csio_vpd = type { i32, [17 x i8], [17 x i8], [17 x i8] }
%struct.csio_pport = type { i16, i16, i8, i8, i16, [6 x i8], i8, i8, i8, i8, %struct.link_config }
%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.csio_hw_params = type { i32, i32, %struct.pci_params, i32 }
%struct.pci_params = type { i16, i16, i32, i16, i8 }
%struct.csio_fcoe_res_info = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_msix_entries = type { ptr, [24 x i8] }
%struct.csio_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], i64, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_host_attrs = type { i64, i64, i64, i32, [32 x i8], i32, i32, i16, i32, i32, i32, i32, [64 x i8], [64 x i8], [256 x i8], [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [8 x i8], [256 x i8], i32, i32, i32, [32 x i8], i32, i64, [256 x i8], [256 x i8], i32, %struct.fc_fpin_stats, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i16, [20 x i8], ptr, [20 x i8], ptr, ptr, i8 }
%struct.fc_vport = type { i32, i32, i64, i64, i32, i32, i32, [64 x i8], ptr, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.work_struct }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.fw_fcoe_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.csio_mb = type { %struct.list_head, [8 x i64], i32, i32, %struct.completion, ptr, ptr }
%struct.fw_fcoe_vnp_cmd = type { i32, i32, i32, i32, i16, [6 x i8], [8 x i8], [8 x i8], [16 x i8], [8 x i8] }

@csio_reg_rnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 81, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%x:%x Failed to register rport = 0x%x.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"csio_reg_rnode\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/scsi/csiostor/csio_attr.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csio_reg_rnode._entry_ptr = internal global ptr @csio_reg_rnode._entry, section ".printk_index", align 4
@csio_fc_transport_funcs = dso_local global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 } { ptr null, ptr @csio_set_rport_loss_tmo, ptr null, ptr null, ptr null, ptr @csio_get_host_port_id, ptr @csio_get_host_port_type, ptr @csio_get_host_port_state, ptr null, ptr @csio_get_host_speed, ptr @csio_get_host_fabric_name, ptr null, ptr null, ptr @csio_get_stats, ptr null, ptr null, ptr @csio_dev_loss_tmo_callbk, ptr null, ptr null, ptr @csio_vport_create, ptr @csio_vport_disable, ptr @csio_vport_delete, ptr null, ptr null, i32 4, i32 4, i32 0, i8 -1, i8 104, i8 7, i8 -32 }, [48 x i8] zeroinitializer }, align 32
@csio_fc_transport_vport_funcs = dso_local global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 } { ptr null, ptr @csio_set_rport_loss_tmo, ptr null, ptr null, ptr null, ptr @csio_get_host_port_id, ptr @csio_get_host_port_type, ptr @csio_get_host_port_state, ptr null, ptr @csio_get_host_speed, ptr @csio_get_host_fabric_name, ptr null, ptr null, ptr @csio_get_stats, ptr null, ptr null, ptr @csio_dev_loss_tmo_callbk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4, i32 0, i32 0, i8 -1, i8 104, i8 7, i8 -32 }, [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"READY\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OFFLINE\00", [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@csio_vport_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 570, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%x:%x vport create failed. Invalid wwnn\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csio_vport_create\00", [46 x i8] zeroinitializer }, align 32
@csio_vport_create._entry_ptr = internal global ptr @csio_vport_create._entry, section ".printk_index", align 4
@csio_vport_create._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 581, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%x:%x vport create failed. Invalid wwpn\0A\00", [55 x i8] zeroinitializer }, align 32
@csio_vport_create._entry_ptr.11 = internal global ptr @csio_vport_create._entry.9, section ".printk_index", align 4
@csio_vport_create._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 587, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%x:%x vport create failed. wwpn already exists\0A\00", [48 x i8] zeroinitializer }, align 32
@csio_vport_create._entry_ptr.14 = internal global ptr @csio_vport_create._entry.12, section ".printk_index", align 4
@csio_fcoe_alloc_vnp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 460, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%x:%x Failed to issue mbox FCoE VNP command\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"csio_fcoe_alloc_vnp\00", [44 x i8] zeroinitializer }, align 32
@csio_fcoe_alloc_vnp._entry_ptr = internal global ptr @csio_fcoe_alloc_vnp._entry, section ".printk_index", align 4
@csio_fcoe_alloc_vnp._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 468, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%x:%x FCOE VNP ALLOC cmd returned 0x%x!\0A\00", [55 x i8] zeroinitializer }, align 32
@csio_fcoe_alloc_vnp._entry_ptr.19 = internal global ptr @csio_fcoe_alloc_vnp._entry.17, section ".printk_index", align 4
@csio_vport_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 666, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%x:%x vport disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csio_vport_disable\00", [45 x i8] zeroinitializer }, align 32
@csio_vport_disable._entry_ptr = internal global ptr @csio_vport_disable._entry, section ".printk_index", align 4
@csio_vport_disable._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 672, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%x:%x vport enabled failed.\0A\00", [35 x i8] zeroinitializer }, align 32
@csio_vport_disable._entry_ptr.24 = internal global ptr @csio_vport_disable._entry.22, section ".printk_index", align 4
@csio_vport_disable._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 675, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%x:%x vport enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@csio_vport_disable._entry_ptr.27 = internal global ptr @csio_vport_disable._entry.25, section ".printk_index", align 4
@csio_fcoe_free_vnp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.28, ptr @.str.2, i32 532, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csio_fcoe_free_vnp\00", [45 x i8] zeroinitializer }, align 32
@csio_fcoe_free_vnp._entry_ptr = internal global ptr @csio_fcoe_free_vnp._entry, section ".printk_index", align 4
@csio_fcoe_free_vnp._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 540, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%x:%x FCOE VNP FREE cmd returned 0x%x!\0A\00", [56 x i8] zeroinitializer }, align 32
@csio_fcoe_free_vnp._entry_ptr.31 = internal global ptr @csio_fcoe_free_vnp._entry.29, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.32 = internal global [8 x i64] [i64 6, i64 16, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 80, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"csio_fc_transport_funcs\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 723, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant [30 x i8] c"csio_fc_transport_vport_funcs\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 767, i32 29 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 397, i32 20 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 256, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 569, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 580, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 586, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 460, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 467, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 666, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 672, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 675, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 532, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [37 x i8] c"../drivers/scsi/csiostor/csio_attr.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 539, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @csio_fcoe_alloc_vnp._entry, ptr @csio_fcoe_alloc_vnp._entry.17, ptr @csio_fcoe_alloc_vnp._entry_ptr, ptr @csio_fcoe_alloc_vnp._entry_ptr.19, ptr @csio_fcoe_free_vnp._entry, ptr @csio_fcoe_free_vnp._entry.29, ptr @csio_fcoe_free_vnp._entry_ptr, ptr @csio_fcoe_free_vnp._entry_ptr.31, ptr @csio_reg_rnode._entry, ptr @csio_reg_rnode._entry_ptr, ptr @csio_vport_create._entry, ptr @csio_vport_create._entry.12, ptr @csio_vport_create._entry.9, ptr @csio_vport_create._entry_ptr, ptr @csio_vport_create._entry_ptr.11, ptr @csio_vport_create._entry_ptr.14, ptr @csio_vport_disable._entry, ptr @csio_vport_disable._entry.22, ptr @csio_vport_disable._entry.25, ptr @csio_vport_disable._entry_ptr, ptr @csio_vport_disable._entry_ptr.24, ptr @csio_vport_disable._entry_ptr.27, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @csio_fc_transport_funcs, ptr @csio_fc_transport_vport_funcs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_reg_rnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fc_transport_funcs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fc_transport_vport_funcs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_vport_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_vport_create._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_vport_create._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_alloc_vnp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_alloc_vnp._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_vport_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_vport_disable._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_vport_disable._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_free_vnp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_free_vnp._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_reg_rnode(ptr noundef %rn) local_unnamed_addr #0 align 64 {
entry:
  %ids = alloca %struct.fc_rport_identifiers, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lnp = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 1
  %0 = ptrtoint ptr %lnp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnp, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ids) #7
  %2 = getelementptr inbounds %struct.fc_rport_identifiers, ptr %ids, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fc_rport_identifiers, ptr %ids, i32 0, i32 2
  %4 = getelementptr inbounds %struct.fc_rport_identifiers, ptr %ids, i32 0, i32 3
  %wwnn = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 10, i32 2
  %5 = ptrtoint ptr %wwnn to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %wwnn, align 1
  %7 = ptrtoint ptr %ids to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %ids, align 8
  %wwpn = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %wwpn to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %wwpn, align 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %2, align 8
  %nport_id = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 4
  %11 = ptrtoint ptr %nport_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nport_id, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %3, align 8
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %4, align 4
  %role = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 8
  %15 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %role, align 4
  %17 = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.end19, label %if.then

if.then:                                          ; preds = %entry
  %rport8 = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 11
  %19 = ptrtoint ptr %rport8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rport8, align 4
  %cmp.not = icmp eq ptr %20, null
  br i1 %cmp.not, label %do.body13, label %if.then.update_role_crit_edge, !prof !68

if.then.update_role_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_role

do.body13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/csiostor/csio_attr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 74, 0\0A.popsection", ""() #7, !srcloc !69
  unreachable

if.end19:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -2448
  %call20 = call ptr @fc_remote_port_add(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull %ids) #7
  %rport21 = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 11
  %21 = ptrtoint ptr %rport21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call20, ptr %rport21, align 4
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %do.end27, label %if.end32

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hwp, align 4
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %dev_num = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dev_num, align 4
  %shr = lshr i32 %27, 16
  %and30 = and i32 %27, 65535
  %28 = ptrtoint ptr %nport_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nport_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %shr, i32 noundef %and30, i32 noundef %29) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %num_reg_rnodes = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 23
  %30 = ptrtoint ptr %num_reg_rnodes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_reg_rnodes, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %num_reg_rnodes, align 4
  %32 = ptrtoint ptr %rport21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rport21, align 4
  %host_lock = getelementptr i8, ptr %1, i32 -2380
  %34 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_lock_irq(ptr noundef %35) #7
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %33, i32 0, i32 11
  %36 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dd_data, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %rn, ptr %37, align 4
  %39 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %40) #7
  %sp_bb_data = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 10, i32 0, i32 4
  %41 = ptrtoint ptr %sp_bb_data to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %sp_bb_data, align 2
  %conv = zext i16 %42 to i32
  %43 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv, ptr %33, align 8
  %arrayidx = getelementptr %struct.csio_rnode, ptr %rn, i32 0, i32 10, i32 3, i32 2
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx, align 4
  %supported_classes40 = getelementptr inbounds %struct.fc_rport, ptr %33, i32 0, i32 1
  %46 = lshr i16 %45, 12
  %47 = and i16 %46, 8
  %48 = zext i16 %47 to i32
  %49 = ptrtoint ptr %supported_classes40 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %supported_classes40, align 4
  br label %update_role

update_role:                                      ; preds = %if.end32, %if.then.update_role_crit_edge
  %rport.0 = phi ptr [ %20, %if.then.update_role_crit_edge ], [ %33, %if.end32 ]
  %50 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %role, align 4
  %and43 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %update_role.if.end47_crit_edge, label %if.then45

update_role.if.end47_crit_edge:                   ; preds = %update_role
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then45:                                        ; preds = %update_role
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %4, align 4
  %or = or i32 %53, 2
  store i32 %or, ptr %4, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %update_role.if.end47_crit_edge
  %and49 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr = load i32, ptr %4, align 4
  br i1 %tobool50.not, label %if.end54, label %if.end54.thread

if.end54.thread:                                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %or53 = or i32 %.pr, 1
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or53, ptr %4, align 4
  br label %if.then58

if.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp56.not = icmp eq i32 %.pr, 0
  br i1 %cmp56.not, label %if.end54.if.end60_crit_edge, label %if.end54.if.then58_crit_edge

if.end54.if.then58_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then58:                                        ; preds = %if.end54.if.then58_crit_edge, %if.end54.thread
  %56 = phi i32 [ %or53, %if.end54.thread ], [ %.pr, %if.end54.if.then58_crit_edge ]
  call void @fc_remote_port_rolechg(ptr noundef %rport.0, i32 noundef %56) #7
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end54.if.end60_crit_edge
  %scsi_target_id = getelementptr inbounds %struct.fc_rport, ptr %rport.0, i32 0, i32 9
  %57 = ptrtoint ptr %scsi_target_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scsi_target_id, align 4
  %scsi_id = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 14
  %59 = ptrtoint ptr %scsi_id to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %scsi_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ids) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_remote_port_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remote_port_rolechg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_unreg_rnode(ptr nocapture noundef %rn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lnp = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 1
  %0 = ptrtoint ptr %lnp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnp, align 4
  %rport1 = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 11
  %2 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rport1, align 4
  %role = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 8
  %4 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %role, align 4
  %and = and i32 %5, -4
  store i32 %and, ptr %role, align 4
  tail call void @fc_remote_port_delete(ptr noundef %3) #7
  %num_reg_rnodes = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %num_reg_rnodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_reg_rnodes, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %num_reg_rnodes, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remote_port_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_lnode_async_event(ptr noundef %ln, i32 noundef %fc_evt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fc_evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fc_evt, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb8
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %pln = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 20
  %1 = ptrtoint ptr %pln to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pln, align 8
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @csio_vport_set_state(ptr noundef %ln)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %pln2 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 20
  %3 = ptrtoint ptr %pln2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pln2, align 8
  %cmp3.not = icmp eq ptr %4, null
  br i1 %cmp3.not, label %sw.bb1.sw.epilog_crit_edge, label %if.then6

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @csio_vport_set_state(ptr noundef %ln)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wwnn.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 12, i32 2
  %5 = ptrtoint ptr %wwnn.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %wwnn.i, align 1
  %shost_data.i = getelementptr i8, ptr %ln, i32 -8
  %7 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shost_data.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %6, ptr %8, align 8
  %wwpn.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %wwpn.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %wwpn.i, align 1
  %12 = load ptr, ptr %shost_data.i, align 8
  %port_name.i = getelementptr inbounds %struct.fc_host_attrs, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %port_name.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %11, ptr %port_name.i, align 8
  %14 = load ptr, ptr %shost_data.i, align 8
  %supported_classes.i = getelementptr inbounds %struct.fc_host_attrs, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %supported_classes.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %supported_classes.i, align 8
  %hwp.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %16 = ptrtoint ptr %hwp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwp.i, align 4
  %max_vnps.i = getelementptr inbounds %struct.csio_hw, ptr %17, i32 0, i32 51, i32 9
  %18 = ptrtoint ptr %max_vnps.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_vnps.i, align 4
  %conv.i = trunc i32 %19 to i16
  %20 = load ptr, ptr %shost_data.i, align 8
  %max_npiv_vports.i = getelementptr inbounds %struct.fc_host_attrs, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %max_npiv_vports.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %max_npiv_vports.i, align 4
  %22 = load ptr, ptr %shost_data.i, align 8
  %supported_speeds.i = getelementptr inbounds %struct.fc_host_attrs, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %supported_speeds.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %supported_speeds.i, align 4
  %sp_bb_data.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 12, i32 0, i32 4
  %24 = ptrtoint ptr %sp_bb_data.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sp_bb_data.i, align 2
  %conv10.i = zext i16 %25 to i32
  %26 = load ptr, ptr %shost_data.i, align 8
  %maxframe_size.i = getelementptr inbounds %struct.fc_host_attrs, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %maxframe_size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv10.i, ptr %maxframe_size.i, align 8
  %28 = load ptr, ptr %shost_data.i, align 8
  %supported_fc4s.i = getelementptr inbounds %struct.fc_host_attrs, ptr %28, i32 0, i32 4
  %29 = call ptr @memset(ptr %supported_fc4s.i, i32 0, i32 32)
  %30 = load ptr, ptr %shost_data.i, align 8
  %arrayidx.i = getelementptr %struct.fc_host_attrs, ptr %30, i32 0, i32 4, i32 7
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %arrayidx.i, align 1
  %32 = load ptr, ptr %shost_data.i, align 8
  %active_fc4s.i = getelementptr inbounds %struct.fc_host_attrs, ptr %32, i32 0, i32 25
  %33 = call ptr @memset(ptr %active_fc4s.i, i32 0, i32 32)
  %34 = load ptr, ptr %shost_data.i, align 8
  %arrayidx20.i = getelementptr %struct.fc_host_attrs, ptr %34, i32 0, i32 25, i32 7
  %35 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %arrayidx20.i, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %if.then6, %sw.bb1.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_vport_set_state(ptr noundef %ln) unnamed_addr #0 align 64 {
entry:
  %state = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_vport1 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 27
  %0 = ptrtoint ptr %fc_vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fc_vport1, align 4
  %pln2 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 20
  %2 = ptrtoint ptr %pln2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pln2, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #7
  %4 = call ptr @memset(ptr %state, i32 255, i32 16)
  call void @csio_lnode_state_to_str(ptr noundef %3, ptr noundef nonnull %state) #7
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %state, ptr noundef nonnull dereferenceable(6) @.str.5, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %vport_last_state.i = getelementptr inbounds %struct.fc_vport, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %vport_last_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %vport_last_state.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.csio_lnode, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 8
  %vport_last_state.i22 = getelementptr inbounds %struct.fc_vport, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %vport_last_state.i22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %vport_last_state.i22, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @csio_lnode_state_to_str(ptr noundef %ln, ptr noundef nonnull %state) #7
  %bcmp21 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %state, ptr noundef nonnull dereferenceable(6) @.str.5, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21)
  %tobool10.not = icmp eq i32 %bcmp21, 0
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 8
  %vport_last_state.i24 = getelementptr inbounds %struct.fc_vport, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %vport_last_state.i24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %vport_last_state.i24, align 4
  %. = select i1 %tobool10.not, i32 1, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  %.sink = phi i32 [ 5, %if.then5 ], [ 3, %if.then ], [ %., %if.end6 ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %1, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #7
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @csio_fchost_attr_init(ptr nocapture noundef readonly %ln) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wwnn = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 12, i32 2
  %0 = ptrtoint ptr %wwnn to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %wwnn, align 1
  %shost_data = getelementptr i8, ptr %ln, i32 -8
  %2 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %1, ptr %3, align 8
  %wwpn = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %wwpn to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %wwpn, align 1
  %7 = load ptr, ptr %shost_data, align 8
  %port_name = getelementptr inbounds %struct.fc_host_attrs, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %port_name to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %6, ptr %port_name, align 8
  %9 = load ptr, ptr %shost_data, align 8
  %supported_classes = getelementptr inbounds %struct.fc_host_attrs, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %supported_classes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %supported_classes, align 8
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %11 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwp, align 4
  %max_vnps = getelementptr inbounds %struct.csio_hw, ptr %12, i32 0, i32 51, i32 9
  %13 = ptrtoint ptr %max_vnps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_vnps, align 4
  %conv = trunc i32 %14 to i16
  %15 = load ptr, ptr %shost_data, align 8
  %max_npiv_vports = getelementptr inbounds %struct.fc_host_attrs, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %max_npiv_vports to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %max_npiv_vports, align 4
  %17 = load ptr, ptr %shost_data, align 8
  %supported_speeds = getelementptr inbounds %struct.fc_host_attrs, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %supported_speeds to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %supported_speeds, align 4
  %sp_bb_data = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 12, i32 0, i32 4
  %19 = ptrtoint ptr %sp_bb_data to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sp_bb_data, align 2
  %conv10 = zext i16 %20 to i32
  %21 = load ptr, ptr %shost_data, align 8
  %maxframe_size = getelementptr inbounds %struct.fc_host_attrs, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %maxframe_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv10, ptr %maxframe_size, align 8
  %23 = load ptr, ptr %shost_data, align 8
  %supported_fc4s = getelementptr inbounds %struct.fc_host_attrs, ptr %23, i32 0, i32 4
  %24 = call ptr @memset(ptr %supported_fc4s, i32 0, i32 32)
  %25 = load ptr, ptr %shost_data, align 8
  %arrayidx = getelementptr %struct.fc_host_attrs, ptr %25, i32 0, i32 4, i32 7
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %arrayidx, align 1
  %27 = load ptr, ptr %shost_data, align 8
  %active_fc4s = getelementptr inbounds %struct.fc_host_attrs, ptr %27, i32 0, i32 25
  %28 = call ptr @memset(ptr %active_fc4s, i32 0, i32 32)
  %29 = load ptr, ptr %shost_data, align 8
  %arrayidx20 = getelementptr %struct.fc_host_attrs, ptr %29, i32 0, i32 25, i32 7
  %30 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %arrayidx20, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @csio_set_rport_loss_tmo(ptr nocapture noundef writeonly %rport, i32 noundef %timeout) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not = icmp eq i32 %timeout, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %timeout
  %0 = getelementptr inbounds %struct.fc_rport, ptr %rport, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_get_host_port_id(ptr nocapture noundef readonly %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %nport_id = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %nport_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nport_id, align 4
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %4 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost_data, align 8
  %port_id = getelementptr inbounds %struct.fc_host_attrs, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %port_id, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_get_host_port_type(ptr nocapture noundef readonly %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %pln = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 10, i32 0, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %pln to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pln, align 8
  %cmp.not = icmp eq ptr %3, null
  %shost_data1 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %4 = ptrtoint ptr %shost_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost_data1, align 8
  %port_type2 = getelementptr inbounds %struct.fc_host_attrs, ptr %5, i32 0, i32 23
  %. = select i1 %cmp.not, i32 3, i32 7
  %6 = ptrtoint ptr %port_type2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %port_type2, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_get_host_port_state(ptr noundef %shost) #0 align 64 {
entry:
  %state = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %hwp = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #7
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %state, i32 255, i32 16)
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  call void @csio_lnode_state_to_str(ptr noundef %hostdata.i, ptr noundef nonnull %state) #7
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %state, ptr noundef nonnull dereferenceable(6) @.str.5, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %3 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shost_data, align 8
  %port_state = getelementptr inbounds %struct.fc_host_attrs, ptr %4, i32 0, i32 24
  %5 = ptrtoint ptr %port_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %port_state, align 8
  br label %if.end12

if.else:                                          ; preds = %entry
  %bcmp19 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %state, ptr noundef nonnull dereferenceable(8) @.str.6, i32 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp19)
  %tobool5.not = icmp eq i32 %bcmp19, 0
  %shost_data7 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %6 = ptrtoint ptr %shost_data7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost_data7, align 8
  %port_state8 = getelementptr inbounds %struct.fc_host_attrs, ptr %7, i32 0, i32 24
  br i1 %tobool5.not, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %port_state8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %port_state8, align 8
  br label %if.end12

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %port_state8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %port_state8, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then6, %if.then
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_get_host_speed(ptr nocapture noundef readonly %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %portid = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 2
  %2 = ptrtoint ptr %portid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %portid, align 8
  %idxprom = zext i8 %3 to i32
  %link_speed = getelementptr %struct.csio_hw, ptr %1, i32 0, i32 41, i32 %idxprom, i32 4
  %4 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %link_speed, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %5, label %sw.default [
    i16 2, label %entry.sw.epilog_crit_edge
    i16 4, label %sw.bb1
    i16 8, label %sw.bb4
    i16 16, label %sw.bb7
    i16 32, label %sw.bb10
    i16 64, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb1, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %sw.default ], [ 1024, %sw.bb13 ], [ 512, %sw.bb10 ], [ 256, %sw.bb7 ], [ 2048, %sw.bb4 ], [ 4, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %shost_data16 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %7 = ptrtoint ptr %shost_data16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shost_data16, align 8
  %speed17 = getelementptr inbounds %struct.fc_host_attrs, ptr %8, i32 0, i32 26
  %9 = ptrtoint ptr %speed17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %speed17, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_get_host_fabric_name(ptr noundef %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %hwp = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %call1 = tail call ptr @csio_rnode_lookup_portid(ptr noundef %hostdata.i, i32 noundef 16777214) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wwnn = getelementptr inbounds %struct.csio_rnode, ptr %call1, i32 0, i32 10, i32 2
  %2 = ptrtoint ptr %wwnn to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %wwnn, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i64 [ %3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %shost_data3 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %4 = ptrtoint ptr %shost_data3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost_data3, align 8
  %fabric_name4 = getelementptr inbounds %struct.fc_host_attrs, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %fabric_name4 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %.sink, ptr %fabric_name4, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @csio_get_stats(ptr noundef %shost) #0 align 64 {
entry:
  %fcoe_port_stats = alloca %struct.fw_fcoe_port_stats, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %fcoe_port_stats) #7
  %2 = call ptr @memset(ptr %fcoe_port_stats, i32 0, i32 128)
  %portid = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 2
  %3 = ptrtoint ptr %portid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %portid, align 8
  %call1 = call i32 @csio_get_phy_port_stats(ptr noundef %1, i8 noundef zeroext %4, ptr noundef nonnull %fcoe_port_stats) #7
  %tx_bcast_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %fcoe_port_stats, i32 0, i32 1
  %5 = ptrtoint ptr %tx_bcast_frames to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tx_bcast_frames, align 8
  %tx_mcast_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %fcoe_port_stats, i32 0, i32 3
  %7 = ptrtoint ptr %tx_mcast_frames to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tx_mcast_frames, align 8
  %add = add i64 %8, %6
  %tx_ucast_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %fcoe_port_stats, i32 0, i32 5
  %9 = ptrtoint ptr %tx_ucast_frames to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tx_ucast_frames, align 8
  %add2 = add i64 %add, %10
  %tx_offload_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %fcoe_port_stats, i32 0, i32 8
  %11 = ptrtoint ptr %tx_offload_frames to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tx_offload_frames, align 8
  %add3 = add i64 %add2, %12
  %tx_frames = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 11
  %13 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %tx_frames, align 8
  %add4 = add i64 %add3, %14
  store i64 %add4, ptr %tx_frames, align 8
  %15 = ptrtoint ptr %fcoe_port_stats to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fcoe_port_stats, align 8
  %tx_mcast_bytes = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %fcoe_port_stats, i32 0, i32 2
  %17 = ptrtoint ptr %tx_mcast_bytes to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tx_mcast_bytes, align 8
  %add5 = add i64 %18, %16
  %tx_ucast_bytes = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %fcoe_port_stats, i32 0, i32 4
  %19 = ptrtoint ptr %tx_ucast_bytes to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tx_ucast_bytes, align 8
  %add6 = add i64 %add5, %20
  %tx_offload_bytes = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %fcoe_port_stats, i32 0, i32 7
  %21 = ptrtoint ptr %tx_offload_bytes to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_offload_bytes, align 8
  %add7 = add i64 %add6, %22
  %div322 = lshr i64 %add7, 2
  %tx_words = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13
  %23 = ptrtoint ptr %tx_words to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %tx_words, align 8
  %add8 = add i64 %div322, %24
  store i64 %add8, ptr %tx_words, align 8
  %rx_bcast_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %fcoe_port_stats, i32 0, i32 10
  %25 = ptrtoint ptr %rx_bcast_frames to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %rx_bcast_frames, align 8
  %rx_mcast_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %fcoe_port_stats, i32 0, i32 12
  %27 = ptrtoint ptr %rx_mcast_frames to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rx_mcast_frames, align 8
  %add9 = add i64 %28, %26
  %rx_ucast_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %fcoe_port_stats, i32 0, i32 14
  %29 = ptrtoint ptr %rx_ucast_frames to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rx_ucast_frames, align 8
  %add10 = add i64 %add9, %30
  %rx_frames = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 0, i32 0, i32 2
  %31 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rx_frames, align 8
  %add11 = add i64 %add10, %32
  store i64 %add11, ptr %rx_frames, align 8
  %rx_bcast_bytes = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %fcoe_port_stats, i32 0, i32 9
  %33 = ptrtoint ptr %rx_bcast_bytes to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rx_bcast_bytes, align 8
  %rx_mcast_bytes = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %fcoe_port_stats, i32 0, i32 11
  %35 = ptrtoint ptr %rx_mcast_bytes to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rx_mcast_bytes, align 8
  %add12 = add i64 %36, %34
  %rx_ucast_bytes = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %fcoe_port_stats, i32 0, i32 13
  %37 = ptrtoint ptr %rx_ucast_bytes to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %rx_ucast_bytes, align 8
  %add13 = add i64 %add12, %38
  %div14323 = lshr i64 %add13, 2
  %rx_words = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %rx_words to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %rx_words, align 8
  %add15 = add i64 %div14323, %40
  store i64 %add15, ptr %rx_words, align 8
  %rx_err_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %fcoe_port_stats, i32 0, i32 15
  %41 = ptrtoint ptr %rx_err_frames to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %rx_err_frames, align 8
  %error_frames = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 2
  %43 = ptrtoint ptr %error_frames to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %error_frames, align 8
  %add16 = add i64 %44, %42
  store i64 %add16, ptr %error_frames, align 8
  %n_input_requests = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 0, i32 7, i32 1, i32 1
  %45 = ptrtoint ptr %n_input_requests to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n_input_requests, align 4
  %conv = zext i32 %46 to i64
  %fcp_input_requests = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 1, i32 4
  %47 = ptrtoint ptr %fcp_input_requests to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %fcp_input_requests, align 8
  %add17 = add i64 %48, %conv
  store i64 %add17, ptr %fcp_input_requests, align 8
  %n_output_requests = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 0, i32 7, i32 1, i32 2
  %49 = ptrtoint ptr %n_output_requests to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n_output_requests, align 8
  %conv19 = zext i32 %50 to i64
  %fcp_output_requests = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %51 = ptrtoint ptr %fcp_output_requests to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %fcp_output_requests, align 8
  %add20 = add i64 %52, %conv19
  store i64 %add20, ptr %fcp_output_requests, align 8
  %n_control_requests = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 0, i32 7, i32 1, i32 3
  %53 = ptrtoint ptr %n_control_requests to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_control_requests, align 4
  %conv22 = zext i32 %54 to i64
  %fcp_control_requests = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 1, i32 4, i32 3
  %55 = ptrtoint ptr %fcp_control_requests to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %fcp_control_requests, align 8
  %add23 = add i64 %56, %conv22
  store i64 %add23, ptr %fcp_control_requests, align 8
  %n_input_bytes = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4
  %57 = ptrtoint ptr %n_input_bytes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %n_input_bytes, align 8
  %shr = lshr i32 %58, 20
  %conv25 = zext i32 %shr to i64
  %fcp_input_megabytes = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 1, i32 4, i32 7
  %59 = ptrtoint ptr %fcp_input_megabytes to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %fcp_input_megabytes, align 8
  %add26 = add i64 %60, %conv25
  store i64 %add26, ptr %fcp_input_megabytes, align 8
  %n_output_bytes = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1
  %61 = ptrtoint ptr %n_output_bytes to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %n_output_bytes, align 4
  %shr28 = lshr i32 %62, 20
  %conv29 = zext i32 %shr28 to i64
  %fcp_output_megabytes = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 3
  %63 = ptrtoint ptr %fcp_output_megabytes to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %fcp_output_megabytes, align 8
  %add30 = add i64 %64, %conv29
  store i64 %add30, ptr %fcp_output_megabytes, align 8
  %n_link_down = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 26
  %65 = ptrtoint ptr %n_link_down to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %n_link_down, align 4
  %conv32 = zext i32 %66 to i64
  %link_failure_count = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 6
  %67 = ptrtoint ptr %link_failure_count to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv32, ptr %link_failure_count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %call33 = call i32 @jiffies_to_msecs(i32 noundef %68) #7
  %conv34 = zext i32 %call33 to i64
  %n_reset_start = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 55, i32 18
  %69 = ptrtoint ptr %n_reset_start to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %n_reset_start, align 8
  %sub = sub i64 %conv34, %70
  %71 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub, i32 0) #12, !srcloc !70
  %asmresult.i = extractvalue { i64, i32 } %71, 0
  %asmresult4.i = extractvalue { i64, i32 } %71, 1
  %72 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub, i64 %asmresult.i, i32 %asmresult4.i) #12, !srcloc !71
  %asmresult10.i = extractvalue { i64, i32 } %72, 0
  %div200324 = lshr i64 %asmresult10.i, 9
  %fch_stats = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 10, i32 1
  %73 = ptrtoint ptr %fch_stats to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %div200324, ptr %fch_stats, align 8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %fcoe_port_stats) #7
  ret ptr %fch_stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_dev_loss_tmo_callbk(ptr nocapture noundef readonly %rport) #0 align 64 {
entry:
  %rn = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rn) #7
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %rport, i32 0, i32 11
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %rn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %rn, align 4
  %lnp = getelementptr inbounds %struct.csio_rnode, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %lnp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lnp, align 4
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwp, align 4
  %lock = getelementptr inbounds %struct.csio_hw, ptr %8, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %call = tail call i32 @csio_is_hw_removing(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %9 = ptrtoint ptr %rn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rn, align 4
  %call1 = tail call i32 @csio_is_rnode_ready(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %n_dev_loss_tmo = getelementptr inbounds %struct.csio_lnode, ptr %6, i32 0, i32 29, i32 8
  %11 = ptrtoint ptr %n_dev_loss_tmo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_dev_loss_tmo, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %n_dev_loss_tmo, align 8
  %call3 = call i32 @csio_enqueue_evt(ptr noundef %8, i32 noundef 3, ptr noundef nonnull %rn, i16 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %n_evt_drop = getelementptr inbounds %struct.csio_hw, ptr %8, i32 0, i32 55, i32 2
  %13 = ptrtoint ptr %n_evt_drop to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_evt_drop, align 8
  %inc7 = add i32 %14, 1
  store i32 %inc7, ptr %n_evt_drop, align 8
  br label %out

if.end8:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.csio_hw, ptr %8, i32 0, i32 11
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %16, 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %flags, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %evtq_work = getelementptr inbounds %struct.csio_hw, ptr %8, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %evtq_work) #7
  br label %cleanup

out:                                              ; preds = %if.end8.out_crit_edge, %if.then5, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rn) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_vport_create(ptr noundef %fc_vport, i1 noundef zeroext %disable) #0 align 64 {
entry:
  %wwn = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shost1 = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 9
  %0 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %hwp = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wwn) #7
  %dev = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 14
  %4 = ptrtoint ptr %wwn to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %wwn, align 8
  %call2 = tail call ptr @csio_shost_init(ptr noundef %3, ptr noundef %dev, i1 noundef zeroext false, ptr noundef %hostdata.i) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %node_name = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 2
  %5 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %node_name, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp.not = icmp eq i64 %6, 0
  br i1 %cmp.not, label %if.end.if.end17_crit_edge, label %if.then3

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then3:                                         ; preds = %if.end
  %7 = ptrtoint ptr %wwn to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %wwn, align 8
  %8 = and i64 %6, -1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 5764607523034234880, i64 %8)
  %cmp6 = icmp eq i64 %8, 5764607523034234880
  br i1 %cmp6, label %if.end14, label %do.end

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %hwp9 = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 1
  %9 = ptrtoint ptr %hwp9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwp9, align 4
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %dev_num = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 5
  %13 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_num, align 4
  %shr11 = lshr i32 %14, 16
  %and13 = and i32 %14, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.7, i32 noundef %shr11, i32 noundef %and13) #10
  br label %if.then87

if.end14:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %wwnn = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %wwn to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %wwn, align 8
  %17 = ptrtoint ptr %wwnn to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %wwnn, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.end.if.end17_crit_edge
  %port_name = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 3
  %18 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %port_name, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp18.not = icmp eq i64 %19, 0
  br i1 %cmp18.not, label %if.end17.if.end62_crit_edge, label %if.then20

if.end17.if.end62_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then20:                                        ; preds = %if.end17
  %20 = ptrtoint ptr %wwn to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %wwn, align 8
  %21 = and i64 %19, -1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 5764607523034234880, i64 %21)
  %cmp26 = icmp eq i64 %21, 5764607523034234880
  br i1 %cmp26, label %if.end42, label %do.end33

do.end33:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %hwp34 = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 1
  %22 = ptrtoint ptr %hwp34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hwp34, align 4
  %pdev35 = getelementptr inbounds %struct.csio_hw, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %pdev35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev35, align 8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %dev_num37 = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 5
  %26 = ptrtoint ptr %dev_num37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dev_num37, align 4
  %shr38 = lshr i32 %27, 16
  %and41 = and i32 %27, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.10, i32 noundef %shr38, i32 noundef %and41) #10
  br label %if.then87

if.end42:                                         ; preds = %if.then20
  %call44 = call ptr @csio_lnode_lookup_by_wwpn(ptr noundef %3, ptr noundef nonnull %wwn) #7
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.end58, label %do.end49

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %hwp50 = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 1
  %28 = ptrtoint ptr %hwp50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hwp50, align 4
  %pdev51 = getelementptr inbounds %struct.csio_hw, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %pdev51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev51, align 8
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %dev_num53 = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 5
  %32 = ptrtoint ptr %dev_num53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev_num53, align 4
  %shr54 = lshr i32 %33, 16
  %and57 = and i32 %33, 65535
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.13, i32 noundef %shr54, i32 noundef %and57) #10
  br label %if.then87

if.end58:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %wwpn = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 12, i32 1
  %34 = ptrtoint ptr %wwn to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %wwn, align 8
  %36 = ptrtoint ptr %wwpn to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %wwpn, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.end58, %if.end17.if.end62_crit_edge
  %37 = ptrtoint ptr %fc_vport to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %fc_vport, align 8
  %fc_vport63 = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 27
  %38 = ptrtoint ptr %fc_vport63 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %fc_vport, ptr %fc_vport63, align 4
  %call64 = call fastcc i32 @csio_fcoe_alloc_vnp(ptr noundef %3, ptr noundef nonnull %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end62.if.then87_crit_edge

if.end62.if.then87_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

if.end67:                                         ; preds = %if.end62
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %39 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dd_data, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call2, ptr %40, align 4
  %42 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %node_name, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %tobool69.not = icmp eq i64 %43, 0
  br i1 %tobool69.not, label %if.then70, label %if.end67.if.end76_crit_edge

if.end67.if.end76_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %wwnn72 = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 12, i32 2
  %44 = ptrtoint ptr %wwnn72 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %wwnn72, align 1
  %46 = ptrtoint ptr %node_name to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %node_name, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then70, %if.end67.if.end76_crit_edge
  %47 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %port_name, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %tobool78.not = icmp eq i64 %48, 0
  br i1 %tobool78.not, label %if.then79, label %if.end76.if.end85_crit_edge

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %wwpn81 = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 12, i32 1
  %49 = ptrtoint ptr %wwpn81 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %wwpn81, align 1
  %51 = ptrtoint ptr %port_name to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %port_name, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then79, %if.end76.if.end85_crit_edge
  %wwnn.i = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 12, i32 2
  %52 = ptrtoint ptr %wwnn.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %wwnn.i, align 1
  %shost_data.i = getelementptr i8, ptr %call2, i32 -8
  %54 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %shost_data.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %53, ptr %55, align 8
  %wwpn.i = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 12, i32 1
  %57 = ptrtoint ptr %wwpn.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %wwpn.i, align 1
  %59 = load ptr, ptr %shost_data.i, align 8
  %port_name.i = getelementptr inbounds %struct.fc_host_attrs, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %port_name.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %58, ptr %port_name.i, align 8
  %61 = load ptr, ptr %shost_data.i, align 8
  %supported_classes.i = getelementptr inbounds %struct.fc_host_attrs, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %supported_classes.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 8, ptr %supported_classes.i, align 8
  %hwp.i = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 1
  %63 = ptrtoint ptr %hwp.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hwp.i, align 4
  %max_vnps.i = getelementptr inbounds %struct.csio_hw, ptr %64, i32 0, i32 51, i32 9
  %65 = ptrtoint ptr %max_vnps.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_vnps.i, align 4
  %conv.i = trunc i32 %66 to i16
  %67 = load ptr, ptr %shost_data.i, align 8
  %max_npiv_vports.i = getelementptr inbounds %struct.fc_host_attrs, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %max_npiv_vports.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i, ptr %max_npiv_vports.i, align 4
  %69 = load ptr, ptr %shost_data.i, align 8
  %supported_speeds.i = getelementptr inbounds %struct.fc_host_attrs, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %supported_speeds.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 5, ptr %supported_speeds.i, align 4
  %sp_bb_data.i = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 12, i32 0, i32 4
  %71 = ptrtoint ptr %sp_bb_data.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %sp_bb_data.i, align 2
  %conv10.i = zext i16 %72 to i32
  %73 = load ptr, ptr %shost_data.i, align 8
  %maxframe_size.i = getelementptr inbounds %struct.fc_host_attrs, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %maxframe_size.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv10.i, ptr %maxframe_size.i, align 8
  %75 = load ptr, ptr %shost_data.i, align 8
  %supported_fc4s.i = getelementptr inbounds %struct.fc_host_attrs, ptr %75, i32 0, i32 4
  %76 = call ptr @memset(ptr %supported_fc4s.i, i32 0, i32 32)
  %77 = load ptr, ptr %shost_data.i, align 8
  %arrayidx.i = getelementptr %struct.fc_host_attrs, ptr %77, i32 0, i32 4, i32 7
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %arrayidx.i, align 1
  %79 = load ptr, ptr %shost_data.i, align 8
  %active_fc4s.i = getelementptr inbounds %struct.fc_host_attrs, ptr %79, i32 0, i32 25
  %80 = call ptr @memset(ptr %active_fc4s.i, i32 0, i32 32)
  %81 = load ptr, ptr %shost_data.i, align 8
  %arrayidx20.i = getelementptr %struct.fc_host_attrs, ptr %81, i32 0, i32 25, i32 7
  %82 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %arrayidx20.i, align 1
  br label %cleanup

if.then87:                                        ; preds = %if.end62.if.then87_crit_edge, %do.end49, %do.end33, %do.end
  call void @csio_shost_exit(ptr noundef nonnull %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %if.end85, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end85 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.then87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwn) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_vport_disable(ptr nocapture noundef %fc_vport, i1 noundef zeroext %disable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwp, align 4
  br i1 %disable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %3, i32 -2448
  tail call void @scsi_block_requests(ptr noundef %add.ptr.i) #7
  %lock = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %scsim = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 2
  %call1 = tail call i32 @csio_scsim_cleanup_io_lnode(ptr noundef %scsim, ptr noundef %3) #7
  tail call void @csio_lnode_stop(ptr noundef %3) #7
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  tail call void @scsi_unblock_requests(ptr noundef %add.ptr.i) #7
  tail call fastcc void @csio_fcoe_free_vnp(ptr noundef %5, ptr noundef %3)
  %6 = ptrtoint ptr %fc_vport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fc_vport, align 8
  %vport_last_state.i = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 1
  %8 = ptrtoint ptr %vport_last_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %vport_last_state.i, align 4
  store i32 2, ptr %fc_vport, align 8
  %9 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwp, align 4
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %dev_num = getelementptr inbounds %struct.csio_lnode, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_num, align 4
  %shr = lshr i32 %14, 16
  %and6 = and i32 %14, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %shr, i32 noundef %and6) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %15 = ptrtoint ptr %fc_vport to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %fc_vport, align 8
  %call7 = tail call fastcc i32 @csio_fcoe_alloc_vnp(ptr noundef %5, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %16 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwp, align 4
  %pdev25 = getelementptr inbounds %struct.csio_hw, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev25, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %dev_num27 = getelementptr inbounds %struct.csio_lnode, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %dev_num27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dev_num27, align 4
  %shr28 = lshr i32 %21, 16
  %and31 = and i32 %21, 65535
  br i1 %tobool8.not, label %do.end23, label %do.end12

do.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.23, i32 noundef %shr28, i32 noundef %and31) #10
  br label %cleanup

do.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.26, i32 noundef %shr28, i32 noundef %and31) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end12, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %do.end12 ], [ 0, %do.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_vport_delete(ptr nocapture noundef readonly %fc_vport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwp, align 4
  %lock = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %call1 = tail call i32 @csio_is_hw_removing(ptr noundef %5) #7
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -2448
  tail call void @scsi_block_requests(ptr noundef %add.ptr.i) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %scsim = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 2
  %call4 = tail call i32 @csio_scsim_cleanup_io_lnode(ptr noundef %scsim, ptr noundef %3) #7
  tail call void @csio_lnode_close(ptr noundef %3) #7
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  tail call void @scsi_unblock_requests(ptr noundef %add.ptr.i) #7
  %6 = ptrtoint ptr %fc_vport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fc_vport, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @csio_fcoe_free_vnp(ptr noundef %5, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @csio_shost_exit(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_lnode_state_to_str(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @csio_rnode_lookup_portid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_get_phy_port_stats(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_is_hw_removing(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_is_rnode_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_enqueue_evt(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @csio_shost_init(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @csio_lnode_lookup_by_wwpn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_fcoe_alloc_vnp(ptr noundef %hw, ptr noundef %ln) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %mb_mempool = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %0 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mb_mempool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %1, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %n_err_nomem = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 15
  %2 = ptrtoint ptr %n_err_nomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_err_nomem, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %n_err_nomem, align 4
  br label %out

if.end:                                           ; preds = %entry
  %pln1 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 20
  %4 = ptrtoint ptr %pln1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pln1, align 8
  %fcf_flowid = getelementptr inbounds %struct.csio_lnode, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %fcf_flowid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fcf_flowid, align 8
  %fcf_flowid2 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 13
  %8 = ptrtoint ptr %fcf_flowid2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fcf_flowid2, align 8
  %portid = getelementptr inbounds %struct.csio_lnode, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %portid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %portid, align 8
  %portid3 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 2
  %11 = ptrtoint ptr %portid3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %portid3, align 8
  %12 = load i32, ptr %fcf_flowid, align 8
  %vnp_flowid = getelementptr inbounds %struct.csio_lnode, ptr %5, i32 0, i32 14
  %13 = ptrtoint ptr %vnp_flowid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vnp_flowid, align 4
  %wwnn = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 12, i32 2
  %wwpn = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 12, i32 1
  tail call void @csio_fcoe_vnp_alloc_init_mb(ptr noundef %ln, ptr noundef nonnull %call, i32 noundef 10000, i32 noundef %12, i32 noundef %14, i16 noundef zeroext 0, ptr noundef %wwnn, ptr noundef %wwpn, ptr noundef null) #7
  %call7 = tail call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, -16
  br i1 %cmp8.not, label %if.end10, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end10:                                         ; preds = %if.end
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  tail call void @msleep(i32 noundef 2000) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %call7.1 = tail call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call7.1)
  %cmp8.not.1 = icmp eq i32 %call7.1, -16
  br i1 %cmp8.not.1, label %if.end10.1, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end10.1:                                       ; preds = %if.end10
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  tail call void @msleep(i32 noundef 2000) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %call7.2 = tail call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call7.2)
  %cmp8.not.2 = icmp eq i32 %call7.2, -16
  br i1 %cmp8.not.2, label %for.end.thread, label %if.end10.1.for.end_crit_edge

if.end10.1.for.end_crit_edge:                     ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.thread:                                   ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  tail call void @msleep(i32 noundef 2000) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  br label %do.end

for.end:                                          ; preds = %if.end10.1.for.end_crit_edge, %if.end10.for.end_crit_edge, %if.end.for.end_crit_edge
  %ret.1 = phi i32 [ %call7, %if.end.for.end_crit_edge ], [ %call7.1, %if.end10.for.end_crit_edge ], [ %call7.2, %if.end10.1.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool14.not = icmp eq i32 %ret.1, 0
  br i1 %tobool14.not, label %if.end18, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.end.thread
  %ret.190 = phi i32 [ -16, %for.end.thread ], [ %ret.1, %for.end.do.end_crit_edge ]
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %15 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwp, align 4
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %dev_num = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %19 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dev_num, align 4
  %shr = lshr i32 %20, 16
  %and17 = and i32 %20, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %shr, i32 noundef %and17) #10
  br label %out_free

if.end18:                                         ; preds = %for.end
  %mb = getelementptr inbounds %struct.csio_mb, ptr %call, i32 0, i32 1
  %alloc_to_len16 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, ptr %mb, i32 0, i32 1
  %21 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %alloc_to_len16, align 4
  %shr20 = lshr i32 %22, 8
  %and21 = and i32 %shr20, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22.not = icmp eq i32 %and21, 0
  br i1 %cmp22.not, label %if.end38, label %do.end26

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %hwp27 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %23 = ptrtoint ptr %hwp27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hwp27, align 4
  %pdev28 = getelementptr inbounds %struct.csio_hw, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev28, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %dev_num30 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %27 = ptrtoint ptr %dev_num30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dev_num30, align 4
  %shr31 = lshr i32 %28, 16
  %and34 = and i32 %28, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.18, i32 noundef %shr31, i32 noundef %and34, i32 noundef %and21) #10
  br label %out_free

if.end38:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %gen_wwn_to_vnpi = getelementptr inbounds %struct.csio_mb, ptr %call, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %gen_wwn_to_vnpi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gen_wwn_to_vnpi, align 4
  %and40 = and i32 %30, 1048575
  %vnp_flowid41 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 14
  %31 = ptrtoint ptr %vnp_flowid41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and40, ptr %vnp_flowid41, align 4
  %vnport_wwnn = getelementptr inbounds %struct.csio_mb, ptr %call, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %vnport_wwnn to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %vnport_wwnn, align 4
  %34 = ptrtoint ptr %wwnn to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %wwnn, align 8
  %vnport_wwpn = getelementptr inbounds %struct.csio_mb, ptr %call, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %vnport_wwpn to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %vnport_wwpn, align 4
  %37 = ptrtoint ptr %wwpn to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %wwpn, align 8
  br label %out_free

out_free:                                         ; preds = %if.end38, %do.end26, %do.end
  %ret.2 = phi i32 [ %ret.190, %do.end ], [ -22, %do.end26 ], [ 0, %if.end38 ]
  %38 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mb_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %39) #7
  br label %out

out:                                              ; preds = %out_free, %if.then
  %ret.3 = phi i32 [ %ret.2, %out_free ], [ -12, %if.then ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_shost_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_fcoe_vnp_alloc_init_mb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_mb_issue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_scsim_cleanup_io_lnode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_lnode_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_unblock_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_fcoe_free_vnp(ptr noundef %hw, ptr noundef %ln) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %mb_mempool = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %0 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mb_mempool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %1, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %n_err_nomem = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 15
  %2 = ptrtoint ptr %n_err_nomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_err_nomem, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %n_err_nomem, align 4
  br label %out

if.end:                                           ; preds = %entry
  %fcf_flowid = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 13
  %4 = ptrtoint ptr %fcf_flowid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fcf_flowid, align 8
  %vnp_flowid = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 14
  %6 = ptrtoint ptr %vnp_flowid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vnp_flowid, align 4
  tail call void @csio_fcoe_vnp_free_init_mb(ptr noundef %ln, ptr noundef nonnull %call, i32 noundef 10000, i32 noundef %5, i32 noundef %7, ptr noundef null) #7
  %call1 = tail call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, -16
  br i1 %cmp2.not, label %if.end4, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end4:                                          ; preds = %if.end
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  tail call void @msleep(i32 noundef 2000) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %call1.1 = tail call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call1.1)
  %cmp2.not.1 = icmp eq i32 %call1.1, -16
  br i1 %cmp2.not.1, label %if.end4.1, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end4.1:                                        ; preds = %if.end4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  tail call void @msleep(i32 noundef 2000) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %call1.2 = tail call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call1.2)
  %cmp2.not.2 = icmp eq i32 %call1.2, -16
  br i1 %cmp2.not.2, label %for.end.thread, label %if.end4.1.for.end_crit_edge

if.end4.1.for.end_crit_edge:                      ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.thread:                                   ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  tail call void @msleep(i32 noundef 2000) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  br label %do.end

for.end:                                          ; preds = %if.end4.1.for.end_crit_edge, %if.end4.for.end_crit_edge, %if.end.for.end_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.for.end_crit_edge ], [ %call1.1, %if.end4.for.end_crit_edge ], [ %call1.2, %if.end4.1.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool8.not = icmp eq i32 %ret.1, 0
  br i1 %tobool8.not, label %if.end12, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.end.thread
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %8 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwp, align 4
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %dev_num = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %12 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_num, align 4
  %shr = lshr i32 %13, 16
  %and11 = and i32 %13, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %shr, i32 noundef %and11) #10
  br label %out_free

if.end12:                                         ; preds = %for.end
  %mb = getelementptr inbounds %struct.csio_mb, ptr %call, i32 0, i32 1
  %alloc_to_len16 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, ptr %mb, i32 0, i32 1
  %14 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %alloc_to_len16, align 4
  %shr13 = lshr i32 %15, 8
  %and14 = and i32 %shr13, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15.not = icmp eq i32 %and14, 0
  br i1 %cmp15.not, label %if.end12.out_free_crit_edge, label %do.end19

if.end12.out_free_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %hwp20 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %16 = ptrtoint ptr %hwp20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwp20, align 4
  %pdev21 = getelementptr inbounds %struct.csio_hw, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev21, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %dev_num23 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %20 = ptrtoint ptr %dev_num23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dev_num23, align 4
  %shr24 = lshr i32 %21, 16
  %and27 = and i32 %21, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.30, i32 noundef %shr24, i32 noundef %and27, i32 noundef %and14) #10
  br label %out_free

out_free:                                         ; preds = %do.end19, %if.end12.out_free_crit_edge, %do.end
  %22 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mb_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %23) #7
  br label %out

out:                                              ; preds = %out_free, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_fcoe_vnp_free_init_mb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_lnode_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/csiostor/csio_attr.c", i32 80, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @csio_reg_rnode._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @csio_reg_rnode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @csio_fc_transport_funcs, !9, !"csio_fc_transport_funcs", i1 false, i1 false}
!9 = !{!"../drivers/scsi/csiostor/csio_attr.c", i32 723, i32 29}
!10 = !{ptr @csio_fc_transport_vport_funcs, !11, !"csio_fc_transport_vport_funcs", i1 false, i1 false}
!11 = !{!"../drivers/scsi/csiostor/csio_attr.c", i32 767, i32 29}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/csiostor/csio_attr.c", i32 397, i32 20}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/csiostor/csio_attr.c", i32 256, i32 26}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/csiostor/csio_attr.c", i32 569, i32 4}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @csio_vport_create._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @csio_vport_create._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/csiostor/csio_attr.c", i32 580, i32 4}
!23 = !{ptr @csio_vport_create._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @csio_vport_create._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/csiostor/csio_attr.c", i32 586, i32 4}
!27 = !{ptr @csio_vport_create._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @csio_vport_create._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/csiostor/csio_attr.c", i32 460, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @csio_fcoe_alloc_vnp._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @csio_fcoe_alloc_vnp._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/csiostor/csio_attr.c", i32 467, i32 3}
!36 = !{ptr @csio_fcoe_alloc_vnp._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @csio_fcoe_alloc_vnp._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/csiostor/csio_attr.c", i32 666, i32 3}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @csio_vport_disable._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @csio_vport_disable._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/csiostor/csio_attr.c", i32 672, i32 4}
!45 = !{ptr @csio_vport_disable._entry.22, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @csio_vport_disable._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/csiostor/csio_attr.c", i32 675, i32 3}
!49 = !{ptr @csio_vport_disable._entry.25, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @csio_vport_disable._entry_ptr.27, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/csiostor/csio_attr.c", i32 532, i32 3}
!53 = !{ptr @csio_fcoe_free_vnp._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @csio_fcoe_free_vnp._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/csiostor/csio_attr.c", i32 539, i32 3}
!57 = !{ptr @csio_fcoe_free_vnp._entry.29, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @csio_fcoe_free_vnp._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 2156162224, i64 2156162721, i64 2156162261, i64 2156162317, i64 2156162351, i64 2156162375, i64 2156162416, i64 2156162437, i64 2156162465, i64 2156162499}
!70 = !{i64 1134123, i64 1134150, i64 1134172, i64 1134200}
!71 = !{i64 1134531, i64 1134558, i64 1134591, i64 1134612, i64 1134639, i64 1134665}
