; ModuleID = '/llk/IR_all_yes/drivers/scsi/csiostor/csio_init.c_pt.bc'
source_filename = "../drivers/scsi/csiostor/csio_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.csio_hw = type { %struct.csio_sm, %struct.spinlock, %struct.csio_scsim, %struct.csio_wrm, ptr, ptr, i32, i32, [4 x [128 x %struct.csio_scsi_qset]], [4 x %struct.csio_scsi_cpu_info], i32, i32, %struct.csio_mgmtm, %struct.csio_mbm, i32, ptr, %struct.list_head, i32, i32, %struct.work_struct, %struct.list_head, %struct.list_head, [32 x i8], [16 x i8], [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i8, i16, i32, %struct.csio_vpd, i8, i32, i8, i8, i8, i8, i32, [4 x %struct.csio_pport], %struct.csio_hw_params, ptr, ptr, ptr, i32, i32, i32, i8, i8, %struct.csio_fcoe_res_info, ptr, [514 x %struct.csio_msix_entries], ptr, %struct.csio_hw_stats }
%struct.csio_sm = type { %struct.list_head, ptr }
%struct.csio_scsim = type { ptr, i8, i8, i16, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.csio_scsi_stats }
%struct.csio_scsi_stats = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_wrm = type { i32, ptr, i32, i32, [128 x ptr], i32, %struct.csio_sge }
%struct.csio_sge = type { i32, i32, i32, [16 x i32], [6 x i16], [4 x i8] }
%struct.csio_scsi_qset = type { i32, i32, i32 }
%struct.csio_scsi_cpu_info = type { i16 }
%struct.csio_mgmtm = type { ptr, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.csio_mgmtm_stats }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.csio_mgmtm_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_mbm = type { i32, i32, %struct.timer_list, ptr, %struct.list_head, %struct.list_head, ptr, i32, %struct.csio_mbm_stats }
%struct.csio_mbm_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.csio_lnode = type { %struct.csio_sm, ptr, i8, i8, i16, i32, i32, %struct.list_head, ptr, ptr, [6 x i8], i32, %struct.csio_service_parms, i32, i32, i16, i8, i8, %struct.list_head, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, %struct.fc_host_statistics, %struct.csio_lnode_stats, %struct.csio_lnode_params }
%struct.csio_service_parms = type { %struct.fc_els_csp, [8 x i8], [8 x i8], [4 x %struct.fc_els_cssp], [16 x i8] }
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.80, i32 }
%union.anon.80 = type { %struct.anon.82 }
%struct.anon.82 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.csio_lnode_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [27 x i32], [7 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_lnode_params = type { i32, i32, i32 }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.84, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.85, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.86, ptr, %struct.address_space, %struct.list_head, %union.anon.87, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.84 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.85 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.86 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.87 = type { ptr }
%struct.csio_hw_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@csio_mem_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @csio_mem_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@csio_config_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 372, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Forward interrupt queue creation failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csio_config_queues\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/scsi/csiostor/csio_init.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csio_config_queues._entry_ptr = internal global ptr @csio_config_queues._entry, section ".printk_index", align 4
@csio_config_queues._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 384, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FW evt queue creation failed\0A\00", [34 x i8] zeroinitializer }, align 32
@csio_config_queues._entry_ptr.7 = internal global ptr @csio_config_queues._entry.5, section ".printk_index", align 4
@csio_config_queues._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 393, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to alloc egress queue for mgmt module\0A\00", [50 x i8] zeroinitializer }, align 32
@csio_config_queues._entry_ptr.10 = internal global ptr @csio_config_queues._entry.8, section ".printk_index", align 4
@csio_scsi_eqsize = external dso_local local_unnamed_addr global i32, align 4
@csio_config_queues._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 420, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EQ creation failed for idx:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@csio_config_queues._entry_ptr.13 = internal global ptr @csio_config_queues._entry.11, section ".printk_index", align 4
@csio_scsi_iqlen = external dso_local local_unnamed_addr global i32, align 4
@csio_config_queues._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 432, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IQ creation failed for idx:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@csio_config_queues._entry_ptr.16 = internal global ptr @csio_config_queues._entry.14, section ".printk_index", align 4
@csio_lun_qdepth = external dso_local local_unnamed_addr global i32, align 4
@csio_fcoe_shost_template = external dso_local global %struct.scsi_host_template, align 8
@csio_fcoe_shost_vport_template = external dso_local global %struct.scsi_host_template, align 8
@csio_fcoe_rnodes = external dso_local local_unnamed_addr global i32, align 4
@csio_fcoe_transport = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@csio_fcoe_transport_vport = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@csio_lnodes_block_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 704, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate lnodes_list\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"csio_lnodes_block_request\00", [38 x i8] zeroinitializer }, align 32
@csio_lnodes_block_request._entry_ptr = internal global ptr @csio_lnodes_block_request._entry, section ".printk_index", align 4
@csio_lnodes_unblock_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.19, ptr @.str.2, i32 743, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"csio_lnodes_unblock_request\00", [36 x i8] zeroinitializer }, align 32
@csio_lnodes_unblock_request._entry_ptr = internal global ptr @csio_lnodes_unblock_request._entry, section ".printk_index", align 4
@csio_lnodes_block_by_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.20, ptr @.str.2, i32 781, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"csio_lnodes_block_by_port\00", [38 x i8] zeroinitializer }, align 32
@csio_lnodes_block_by_port._entry_ptr = internal global ptr @csio_lnodes_block_by_port._entry, section ".printk_index", align 4
@csio_lnodes_unblock_by_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.21, ptr @.str.2, i32 822, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"csio_lnodes_unblock_by_port\00", [36 x i8] zeroinitializer }, align 32
@csio_lnodes_unblock_by_port._entry_ptr = internal global ptr @csio_lnodes_unblock_by_port._entry, section ".printk_index", align 4
@csio_lnodes_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 861, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"lnodes_exit: Failed to allocate lnodes_list.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"csio_lnodes_exit\00", [47 x i8] zeroinitializer }, align 32
@csio_lnodes_exit._entry_ptr = internal global ptr @csio_lnodes_exit._entry, section ".printk_index", align 4
@csio_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.25, ptr @csio_pci_tbl, ptr @csio_probe_one, ptr @csio_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @csio_err_handler, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_csiostor__316_1248_csio_init6 = internal global ptr @csio_init, section ".initcall6.init", align 4
@__exitcall_csio_exit = internal global ptr @csio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author317 = internal constant [39 x i8] c"csiostor.author=Chelsio Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_description318 = internal constant [41 x i8] c"csiostor.description=Chelsio FCoE driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file319 = internal constant [45 x i8] c"csiostor.file=drivers/scsi/csiostor/csiostor\00", section ".modinfo", align 1
@__UNIQUE_ID_license320 = internal constant [30 x i8] c"csiostor.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version321 = internal constant [26 x i8] c"csiostor.version=1.0.0-ko\00", section ".modinfo", align 1
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csiostor\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1.0.0-ko\00", [23 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.25, ptr @.str.26 }, section "__modver", align 4
@__UNIQUE_ID_firmware322 = internal constant [33 x i8] c"csiostor.firmware=cxgb4/t5fw.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware323 = internal constant [33 x i8] c"csiostor.firmware=cxgb4/t6fw.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep324 = internal constant [28 x i8] c"csiostor.softdep=pre: cxgb4\00", section ".modinfo", align 1
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@csio_create_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 271, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c" Forward Interrupt IQ failed!: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csio_create_queues\00", [45 x i8] zeroinitializer }, align 32
@csio_create_queues._entry_ptr = internal global ptr @csio_create_queues._entry, section ".printk_index", align 4
@csio_create_queues._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"FW event IQ config failed!: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@csio_create_queues._entry_ptr.34 = internal global ptr @csio_create_queues._entry.32, section ".printk_index", align 4
@csio_create_queues._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 290, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Mgmt EQ create failed!: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@csio_create_queues._entry_ptr.37 = internal global ptr @csio_create_queues._entry.35, section ".printk_index", align 4
@csio_create_queues._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.2, i32 306, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SCSI module IQ config failed [%d][%d]:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@csio_create_queues._entry_ptr.40 = internal global ptr @csio_create_queues._entry.38, section ".printk_index", align 4
@csio_create_queues._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.31, ptr @.str.2, i32 314, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SCSI module EQ config failed [%d][%d]:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@csio_create_queues._entry_ptr.43 = internal global ptr @csio_create_queues._entry.41, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@csio_pci_tbl = internal constant { [121 x %struct.pci_device_id], [960 x i8] } { [121 x %struct.pci_device_id] [%struct.pci_device_id { i32 5157, i32 17920, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 17921, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 17922, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 17923, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 17924, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 17925, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 17926, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 17927, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 17928, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 17929, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 17930, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 17931, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 17932, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 17933, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 17934, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18048, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18049, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18050, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18051, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18052, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18053, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18054, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18055, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18056, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22016, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22017, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22018, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22019, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22020, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22021, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22022, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22023, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22024, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22025, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22026, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22027, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22028, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22029, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22030, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22032, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22033, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22034, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22035, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22036, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22037, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22038, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22039, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22040, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22041, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22042, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22043, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22144, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22145, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22146, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22147, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22148, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22149, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22150, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22151, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22152, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22153, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22160, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22161, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22162, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22163, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22164, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22165, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22166, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22167, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22168, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22169, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22170, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22171, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22172, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22173, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22174, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22175, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22176, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22177, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22178, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22179, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22180, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22181, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22182, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22183, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22184, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22185, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22186, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22187, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22188, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22189, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22190, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22191, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22192, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26113, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26114, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26115, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26116, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26117, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26118, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26119, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26120, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26121, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26125, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26129, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26132, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26133, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26240, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26241, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26242, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26243, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26244, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26245, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26246, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26247, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26248, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26249, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26250, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26251, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26258, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [960 x i8] zeroinitializer }, align 32
@csio_err_handler = internal global { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @csio_pci_error_detected, ptr null, ptr @csio_pci_slot_reset, ptr null, ptr null, ptr @csio_pci_resume }, [40 x i8] zeroinitializer }, align 32
@csio_probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 972, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to start FW, continuing in debug mode.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"csio_probe_one\00", [17 x i8] zeroinitializer }, align 32
@csio_probe_one._entry_ptr = internal global ptr @csio_probe_one._entry, section ".printk_index", align 4
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%u.%u.%u.%u\0A\00", [19 x i8] zeroinitializer }, align 32
@csio_probe_one._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str.2, i32 1020, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"probe of device failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@csio_probe_one._entry_ptr.49 = internal global ptr @csio_probe_one._entry.47, section ".printk_index", align 4
@csio_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 211, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No suitable DMA available.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csio_pci_init\00", [18 x i8] zeroinitializer }, align 32
@csio_pci_init._entry_ptr = internal global ptr @csio_pci_init._entry, section ".printk_index", align 4
@csio_hw_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 536, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not map BAR 0, regstart = %p\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csio_hw_alloc\00", [18 x i8] zeroinitializer }, align 32
@csio_hw_alloc._entry_ptr = internal global ptr @csio_hw_alloc._entry, section ".printk_index", align 4
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csio_scsi_dma_pool\00", [45 x i8] zeroinitializer }, align 32
@csio_hw_init_workers.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&hw->evtq_work)\00", [62 x i8] zeroinitializer }, align 32
@csio_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edc0\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edc1\00", [27 x i8] zeroinitializer }, align 32
@csio_pci_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 1090, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot re-enable device in slot reset\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"csio_pci_slot_reset\00", [44 x i8] zeroinitializer }, align 32
@csio_pci_slot_reset._entry_ptr = internal global ptr @csio_pci_slot_reset._entry, section ".printk_index", align 4
@csio_pci_slot_reset._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 1109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Can't initialize HW when in slot reset\0A\00", [56 x i8] zeroinitializer }, align 32
@csio_pci_slot_reset._entry_ptr.62 = internal global ptr @csio_pci_slot_reset._entry.60, section ".printk_index", align 4
@csio_pci_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1162, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"resume of device failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csio_pci_resume\00", [16 x i8] zeroinitializer }, align 32
@csio_pci_resume._entry_ptr = internal global ptr @csio_pci_resume._entry, section ".printk_index", align 4
@csio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016csiostor: %s %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"csio_init\00", [22 x i8] zeroinitializer }, align 32
@csio_init._entry_ptr = internal global ptr @csio_init._entry, section ".printk_index", align 4
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chelsio FCoE driver\00", [44 x i8] zeroinitializer }, align 32
@csio_fc_transport_funcs = external dso_local global %struct.fc_function_template, align 4
@csio_fc_transport_vport_funcs = external dso_local global %struct.fc_function_template, align 4
@str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"1.0.0-ko\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 24576]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"csio_mem_debugfs_fops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 106, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 371, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 384, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 393, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 419, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 431, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"csio_fcoe_transport\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 57, i32 40 }
@___asan_gen_.117 = private unnamed_addr constant [26 x i8] c"csio_fcoe_transport_vport\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 58, i32 40 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 704, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 743, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 781, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 822, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 861, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"csio_pci_driver\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1186, i32 26 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1254, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 230, i32 6 }
@___asan_gen_.172 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 214, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 174, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 271, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 281, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 290, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 304, i32 5 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 312, i32 5 }
@___asan_gen_.210 = private unnamed_addr constant [13 x i8] c"csio_pci_tbl\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [54 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/t4_pci_id_tbl.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 94, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"csio_err_handler\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1165, i32 34 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 971, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 978, i32 25 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1020, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 211, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 535, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 480, i32 38 }
@___asan_gen_.255 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 247, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [18 x i8] c"csio_debugfs_root\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 55, i32 23 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 130, i32 28 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 132, i32 28 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1090, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1109, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1162, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.304 = private constant [37 x i8] c"../drivers/scsi/csiostor/csio_init.c\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1206, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author317, ptr @__UNIQUE_ID_description318, ptr @__UNIQUE_ID_file319, ptr @__UNIQUE_ID_firmware322, ptr @__UNIQUE_ID_firmware323, ptr @__UNIQUE_ID_license320, ptr @__UNIQUE_ID_softdep324, ptr @__UNIQUE_ID_version321, ptr @__exitcall_csio_exit, ptr @__initcall__kmod_csiostor__316_1248_csio_init6, ptr @__modver_attr, ptr @csio_config_queues._entry, ptr @csio_config_queues._entry.11, ptr @csio_config_queues._entry.14, ptr @csio_config_queues._entry.5, ptr @csio_config_queues._entry.8, ptr @csio_config_queues._entry_ptr, ptr @csio_config_queues._entry_ptr.10, ptr @csio_config_queues._entry_ptr.13, ptr @csio_config_queues._entry_ptr.16, ptr @csio_config_queues._entry_ptr.7, ptr @csio_create_queues._entry, ptr @csio_create_queues._entry.32, ptr @csio_create_queues._entry.35, ptr @csio_create_queues._entry.38, ptr @csio_create_queues._entry.41, ptr @csio_create_queues._entry_ptr, ptr @csio_create_queues._entry_ptr.34, ptr @csio_create_queues._entry_ptr.37, ptr @csio_create_queues._entry_ptr.40, ptr @csio_create_queues._entry_ptr.43, ptr @csio_exit, ptr @csio_hw_alloc._entry, ptr @csio_hw_alloc._entry_ptr, ptr @csio_init._entry, ptr @csio_init._entry_ptr, ptr @csio_lnodes_block_by_port._entry, ptr @csio_lnodes_block_by_port._entry_ptr, ptr @csio_lnodes_block_request._entry, ptr @csio_lnodes_block_request._entry_ptr, ptr @csio_lnodes_exit._entry, ptr @csio_lnodes_exit._entry_ptr, ptr @csio_lnodes_unblock_by_port._entry, ptr @csio_lnodes_unblock_by_port._entry_ptr, ptr @csio_lnodes_unblock_request._entry, ptr @csio_lnodes_unblock_request._entry_ptr, ptr @csio_pci_init._entry, ptr @csio_pci_init._entry_ptr, ptr @csio_pci_resume._entry, ptr @csio_pci_resume._entry_ptr, ptr @csio_pci_slot_reset._entry, ptr @csio_pci_slot_reset._entry.60, ptr @csio_pci_slot_reset._entry_ptr, ptr @csio_pci_slot_reset._entry_ptr.62, ptr @csio_probe_one._entry, ptr @csio_probe_one._entry.47, ptr @csio_probe_one._entry_ptr, ptr @csio_probe_one._entry_ptr.49, ptr @csio_mem_debugfs_fops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @csio_fcoe_transport, ptr @csio_fcoe_transport_vport, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @csio_pci_driver, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @csio_pci_tbl, ptr @csio_err_handler, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @csio_hw_init_workers.__key, ptr @.str.55, ptr @csio_debugfs_root, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @str], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mem_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_config_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_config_queues._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_config_queues._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_config_queues._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_config_queues._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_transport to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_transport_vport to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_lnodes_block_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_lnodes_unblock_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_lnodes_block_by_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_lnodes_unblock_by_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_lnodes_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_create_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_create_queues._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_create_queues._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_create_queues._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_create_queues._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_pci_tbl to i32), i32 3872, i32 4832, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_probe_one._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_init_workers.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_pci_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_pci_slot_reset._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_pci_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_add_debugfs_mem(ptr noundef %hw, ptr noundef %name, i32 noundef %idx, i32 noundef %size_mb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_root = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 54
  %0 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_root, align 8
  %add.ptr = getelementptr i8, ptr %hw, i32 %idx
  %shl = shl i32 %size_mb, 20
  %conv = zext i32 %shl to i64
  tail call void @debugfs_create_file_size(ptr noundef %name, i16 noundef zeroext 256, ptr noundef %1, ptr noundef %add.ptr, ptr noundef nonnull @csio_mem_debugfs_fops, i64 noundef %conv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_file_size(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_config_queues(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @csio_create_queues(ptr noundef %hw)
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  %num_scsi_msix_cpus = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 7
  %3 = ptrtoint ptr %num_scsi_msix_cpus to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %num_scsi_msix_cpus, align 4
  %call.i.i.i194 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %4 = load volatile i32, ptr @__num_online_cpus, align 4
  %num_pports = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 36
  %5 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_pports, align 8
  %conv = zext i8 %6 to i32
  %mul = mul i32 %4, %conv
  %num_sqsets = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 6
  %7 = ptrtoint ptr %num_sqsets to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %num_sqsets, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %mul)
  %cmp = icmp ugt i32 %mul, 512
  br i1 %cmp, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %num_sqsets to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 512, ptr %num_sqsets, align 8
  %9 = ptrtoint ptr %num_scsi_msix_cpus to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 128, ptr %num_scsi_msix_cpus, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %10 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_pports, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp12196.not = icmp eq i8 %11, 0
  br i1 %cmp12196.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.0197 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %12 = ptrtoint ptr %num_scsi_msix_cpus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_scsi_msix_cpus, align 4
  %conv15 = trunc i32 %13 to i16
  %arrayidx = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 9, i32 %i.0197
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv15, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.0197, 1
  %15 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_pports, align 8
  %conv11 = zext i8 %16 to i32
  %cmp12 = icmp ult i32 %inc, %conv11
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end9.for.end_crit_edge
  tail call void @csio_intr_enable(ptr noundef %hw) #8
  %intr_mode = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 46
  %17 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %intr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp16.not = icmp eq i32 %18, 3
  br i1 %cmp16.not, label %for.end.if.end25_crit_edge, label %if.then18

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then18:                                        ; preds = %for.end
  %call19 = tail call i32 @csio_wr_alloc_q(ptr noundef %hw, i32 noundef 65920, i32 noundef 128, i16 noundef zeroext 2, ptr noundef %hw, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %intr_iq_idx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 17
  %19 = ptrtoint ptr %intr_iq_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call19, ptr %intr_iq_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19)
  %cmp21 = icmp eq i32 %call19, -1
  br i1 %cmp21, label %do.end, label %if.then18.if.end25_crit_edge

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #11
  br label %intr_disable

if.end25:                                         ; preds = %if.then18.if.end25_crit_edge, %for.end.if.end25_crit_edge
  %call26 = tail call i32 @csio_wr_alloc_q(ptr noundef %hw, i32 noundef 16384, i32 noundef 128, i16 noundef zeroext 2, ptr noundef %hw, i32 noundef 64, i32 noundef 0, ptr noundef nonnull @csio_fwevt_intx_handler) #8
  %fwevt_iq_idx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 18
  %22 = ptrtoint ptr %fwevt_iq_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call26, ptr %fwevt_iq_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call26)
  %cmp28 = icmp eq i32 %call26, -1
  br i1 %cmp28, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %pdev34 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %23 = ptrtoint ptr %pdev34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev34, align 8
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.6) #11
  br label %intr_disable

if.end36:                                         ; preds = %if.end25
  %call37 = tail call i32 @csio_wr_alloc_q(ptr noundef %hw, i32 noundef 32768, i32 noundef 512, i16 noundef zeroext 1, ptr noundef %hw, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %eq_idx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12, i32 1
  %25 = ptrtoint ptr %eq_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call37, ptr %eq_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call37)
  %cmp39 = icmp eq i32 %call37, -1
  br i1 %cmp39, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %pdev45 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %26 = ptrtoint ptr %pdev45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev45, align 8
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.9) #11
  br label %intr_disable

if.end47:                                         ; preds = %if.end36
  %28 = ptrtoint ptr %fwevt_iq_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fwevt_iq_idx, align 4
  %iq_idx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12, i32 2
  %30 = ptrtoint ptr %iq_idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %iq_idx, align 4
  %31 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_pports, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp52202.not = icmp eq i8 %32, 0
  br i1 %cmp52202.not, label %if.end47.for.end108_crit_edge, label %if.end47.for.body54_crit_edge

if.end47.for.body54_crit_edge:                    ; preds = %if.end47
  br label %for.body54

if.end47.for.end108_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end108

for.body54:                                       ; preds = %for.inc106.for.body54_crit_edge, %if.end47.for.body54_crit_edge
  %i.1203 = phi i32 [ %inc107, %for.inc106.for.body54_crit_edge ], [ 0, %if.end47.for.body54_crit_edge ]
  %arrayidx56 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 9, i32 %i.1203
  %33 = ptrtoint ptr %num_scsi_msix_cpus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_scsi_msix_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp59198.not = icmp eq i32 %34, 0
  br i1 %cmp59198.not, label %for.body54.for.inc106_crit_edge, label %for.body54.for.body61_crit_edge

for.body54.for.body61_crit_edge:                  ; preds = %for.body54
  br label %for.body61

for.body54.for.inc106_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc106

for.body61:                                       ; preds = %for.inc103.for.body61_crit_edge, %for.body54.for.body61_crit_edge
  %j.0199 = phi i32 [ %inc104, %for.inc103.for.body61_crit_edge ], [ 0, %for.body54.for.body61_crit_edge ]
  %arrayidx64 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 8, i32 %i.1203, i32 %j.0199
  %35 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx56, align 2
  %conv66 = sext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0199, i32 %conv66)
  %cmp67.not = icmp slt i32 %j.0199, %conv66
  br i1 %cmp67.not, label %if.end79, label %if.then69

if.then69:                                        ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  %rem = srem i32 %j.0199, %conv66
  %arrayidx74 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 8, i32 %i.1203, i32 %rem
  %eq_idx75 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 8, i32 %i.1203, i32 %rem, i32 1
  %37 = ptrtoint ptr %eq_idx75 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %eq_idx75, align 4
  %eq_idx76 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 8, i32 %i.1203, i32 %j.0199, i32 1
  %39 = ptrtoint ptr %eq_idx76 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %eq_idx76, align 4
  %40 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx74, align 4
  br label %for.inc103

if.end79:                                         ; preds = %for.body61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @csio_scsi_eqsize to i32))
  %42 = load i32, ptr @csio_scsi_eqsize, align 4
  %call80 = tail call i32 @csio_wr_alloc_q(ptr noundef %hw, i32 noundef %42, i32 noundef 0, i16 noundef zeroext 1, ptr noundef %hw, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call80)
  %cmp81 = icmp eq i32 %call80, -1
  br i1 %cmp81, label %do.end86, label %if.end89

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %pdev87 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %43 = ptrtoint ptr %pdev87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev87, align 8
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88, ptr noundef nonnull @.str.12, i32 noundef -1) #11
  br label %intr_disable

if.end89:                                         ; preds = %if.end79
  %eq_idx90 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 8, i32 %i.1203, i32 %j.0199, i32 1
  %45 = ptrtoint ptr %eq_idx90 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call80, ptr %eq_idx90, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @csio_scsi_iqlen to i32))
  %46 = load i32, ptr @csio_scsi_iqlen, align 4
  %mul91 = shl i32 %46, 7
  %call92 = tail call i32 @csio_wr_alloc_q(ptr noundef %hw, i32 noundef %mul91, i32 noundef 128, i16 noundef zeroext 2, ptr noundef %hw, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @csio_scsi_intx_handler) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call92)
  %cmp93 = icmp eq i32 %call92, -1
  br i1 %cmp93, label %do.end98, label %if.end89.for.inc103_crit_edge

if.end89.for.inc103_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc103

do.end98:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %pdev99 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %47 = ptrtoint ptr %pdev99 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev99, align 8
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100, ptr noundef nonnull @.str.15, i32 noundef -1) #11
  br label %intr_disable

for.inc103:                                       ; preds = %if.end89.for.inc103_crit_edge, %if.then69
  %storemerge = phi i32 [ %41, %if.then69 ], [ %call92, %if.end89.for.inc103_crit_edge ]
  %49 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %storemerge, ptr %arrayidx64, align 4
  %inc104 = add nuw i32 %j.0199, 1
  %50 = ptrtoint ptr %num_scsi_msix_cpus to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_scsi_msix_cpus, align 4
  %cmp59 = icmp ult i32 %inc104, %51
  br i1 %cmp59, label %for.inc103.for.body61_crit_edge, label %for.inc103.for.inc106_crit_edge

for.inc103.for.inc106_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc106

for.inc103.for.body61_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body61

for.inc106:                                       ; preds = %for.inc103.for.inc106_crit_edge, %for.body54.for.inc106_crit_edge
  %inc107 = add nuw nsw i32 %i.1203, 1
  %52 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %num_pports, align 8
  %conv51 = zext i8 %53 to i32
  %cmp52 = icmp ult i32 %inc107, %conv51
  br i1 %cmp52, label %for.inc106.for.body54_crit_edge, label %for.inc106.for.end108_crit_edge

for.inc106.for.end108_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end108

for.inc106.for.body54_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54

for.end108:                                       ; preds = %for.inc106.for.end108_crit_edge, %if.end47.for.end108_crit_edge
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %or = or i32 %55, 8
  store i32 %or, ptr %flags, align 4
  %call110 = tail call fastcc i32 @csio_create_queues(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111.not = icmp eq i32 %call110, 0
  br i1 %cmp111.not, label %if.end114, label %for.end108.intr_disable_crit_edge

for.end108.intr_disable_crit_edge:                ; preds = %for.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %intr_disable

if.end114:                                        ; preds = %for.end108
  call void @__sanitizer_cov_trace_pc() #10
  %call115 = tail call i32 @csio_request_irqs(ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116.not = icmp eq i32 %call115, 0
  %. = select i1 %cmp116.not, i32 0, i32 -22
  br label %cleanup

intr_disable:                                     ; preds = %for.end108.intr_disable_crit_edge, %do.end98, %do.end86, %do.end44, %do.end33, %do.end
  tail call void @csio_intr_disable(ptr noundef %hw, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %intr_disable, %if.end114, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %intr_disable ], [ %., %if.end114 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_create_queues(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup72_crit_edge

entry.cleanup72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup72

if.end:                                           ; preds = %entry
  %intr_mode = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 46
  %2 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %intr_iq_idx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 17
  %4 = ptrtoint ptr %intr_iq_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intr_iq_idx, align 8
  %portid = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 0, i32 2
  %6 = ptrtoint ptr %portid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %portid, align 4
  %call = tail call i32 @csio_wr_iq_create(ptr noundef %hw, ptr noundef null, i32 noundef %5, i32 noundef 0, i8 noundef zeroext %7, i1 noundef zeroext false, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.then2.if.end6_crit_edge, label %do.end

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %call) #11
  br label %cleanup72

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %fwevt_iq_idx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 18
  %10 = ptrtoint ptr %fwevt_iq_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fwevt_iq_idx, align 4
  %fwevt_intr_idx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 47
  %12 = ptrtoint ptr %fwevt_intr_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fwevt_intr_idx, align 8
  %portid9 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 0, i32 2
  %14 = ptrtoint ptr %portid9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %portid9, align 4
  %call10 = tail call i32 @csio_wr_iq_create(ptr noundef %hw, ptr noundef null, i32 noundef %11, i32 noundef %13, i8 noundef zeroext %15, i1 noundef zeroext true, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %pdev16 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %16 = ptrtoint ptr %pdev16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev16, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.33, i32 noundef %call10) #11
  br label %cleanup72

if.end18:                                         ; preds = %if.end6
  %eq_idx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12, i32 1
  %18 = ptrtoint ptr %eq_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %eq_idx, align 4
  %iq_idx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12, i32 2
  %20 = ptrtoint ptr %iq_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iq_idx, align 4
  %22 = ptrtoint ptr %portid9 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %portid9, align 4
  %call22 = tail call i32 @csio_wr_eq_create(ptr noundef %hw, ptr noundef null, i32 noundef %19, i32 noundef %21, i8 noundef zeroext %23, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %for.cond.preheader, label %do.end27

for.cond.preheader:                               ; preds = %if.end18
  %num_pports = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 36
  %24 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_pports, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp31138.not = icmp eq i8 %25, 0
  br i1 %cmp31138.not, label %for.cond.preheader.for.end69_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end69_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end69

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %pdev28 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %26 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev28, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.36, i32 noundef %call22) #11
  br label %err

for.body:                                         ; preds = %for.inc67.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0139 = phi i32 [ %inc68, %for.inc67.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx33 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 9, i32 %i.0139
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx33, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp36135 = icmp sgt i16 %29, 0
  br i1 %cmp36135, label %for.body38.lr.ph, label %for.body.for.inc67_crit_edge

for.body.for.inc67_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc67

for.body38.lr.ph:                                 ; preds = %for.body
  %conv43 = trunc i32 %i.0139 to i8
  br label %for.body38

for.body38:                                       ; preds = %for.inc.for.body38_crit_edge, %for.body38.lr.ph
  %j.0136 = phi i32 [ 0, %for.body38.lr.ph ], [ %inc, %for.inc.for.body38_crit_edge ]
  %arrayidx41 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 8, i32 %i.0139, i32 %j.0136
  %30 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx41, align 4
  %intr_idx = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 8, i32 %i.0139, i32 %j.0136, i32 2
  %32 = ptrtoint ptr %intr_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %intr_idx, align 4
  %call44 = tail call i32 @csio_wr_iq_create(ptr noundef %hw, ptr noundef null, i32 noundef %31, i32 noundef %33, i8 noundef zeroext %conv43, i1 noundef zeroext false, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45.not = icmp eq i32 %call44, 0
  br i1 %cmp45.not, label %if.end53, label %do.end50

do.end50:                                         ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  %pdev51 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %34 = ptrtoint ptr %pdev51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev51, align 8
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.39, i32 noundef %i.0139, i32 noundef %j.0136, i32 noundef %call44) #11
  br label %err

if.end53:                                         ; preds = %for.body38
  %eq_idx54 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 8, i32 %i.0139, i32 %j.0136, i32 1
  %36 = ptrtoint ptr %eq_idx54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %eq_idx54, align 4
  %38 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx41, align 4
  %call57 = tail call i32 @csio_wr_eq_create(ptr noundef %hw, ptr noundef null, i32 noundef %37, i32 noundef %39, i8 noundef zeroext %conv43, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58.not = icmp eq i32 %call57, 0
  br i1 %cmp58.not, label %for.inc, label %do.end63

do.end63:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %pdev64 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %40 = ptrtoint ptr %pdev64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev64, align 8
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.42, i32 noundef %i.0139, i32 noundef %j.0136, i32 noundef %call57) #11
  br label %err

for.inc:                                          ; preds = %if.end53
  %inc = add nuw nsw i32 %j.0136, 1
  %42 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx33, align 2
  %conv35 = sext i16 %43 to i32
  %cmp36 = icmp slt i32 %inc, %conv35
  br i1 %cmp36, label %for.inc.for.body38_crit_edge, label %for.inc.for.inc67_crit_edge

for.inc.for.inc67_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc67

for.inc.for.body38_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body38

for.inc67:                                        ; preds = %for.inc.for.inc67_crit_edge, %for.body.for.inc67_crit_edge
  %inc68 = add nuw nsw i32 %i.0139, 1
  %44 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %num_pports, align 8
  %conv = zext i8 %45 to i32
  %cmp31 = icmp ult i32 %inc68, %conv
  br i1 %cmp31, label %for.inc67.for.body_crit_edge, label %for.inc67.for.end69_crit_edge

for.inc67.for.end69_crit_edge:                    ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end69

for.inc67.for.body_crit_edge:                     ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end69:                                        ; preds = %for.inc67.for.end69_crit_edge, %for.cond.preheader.for.end69_crit_edge
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %or = or i32 %47, 16
  store i32 %or, ptr %flags, align 4
  br label %cleanup72

err:                                              ; preds = %do.end63, %do.end50, %do.end27
  %call71 = tail call i32 @csio_wr_destroy_queues(ptr noundef %hw, i1 noundef zeroext true) #8
  br label %cleanup72

cleanup72:                                        ; preds = %err, %for.end69, %do.end15, %do.end, %entry.cleanup72_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call10, %do.end15 ], [ -22, %err ], [ 0, %for.end69 ], [ 0, %entry.cleanup72_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_intr_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_wr_alloc_q(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_fwevt_intx_handler(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_scsi_intx_handler(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_request_irqs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_intr_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @csio_shost_init(ptr noundef %hw, ptr noundef %dev, i1 zeroext %probe, ptr noundef %pln) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @csio_lun_qdepth to i32))
  %0 = load i32, ptr @csio_lun_qdepth, align 4
  %conv = trunc i32 %0 to i16
  call void @__asan_store2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.scsi_host_template, ptr @csio_fcoe_shost_template, i32 0, i32 42) to i32))
  store i16 %conv, ptr getelementptr inbounds (%struct.scsi_host_template, ptr @csio_fcoe_shost_template, i32 0, i32 42), align 4
  call void @__asan_store2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.scsi_host_template, ptr @csio_fcoe_shost_vport_template, i32 0, i32 42) to i32))
  store i16 %conv, ptr getelementptr inbounds (%struct.scsi_host_template, ptr @csio_fcoe_shost_vport_template, i32 0, i32 42), align 4
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %cmp = icmp eq ptr %dev2, %dev
  %csio_fcoe_shost_template.csio_fcoe_shost_vport_template = select i1 %cmp, ptr @csio_fcoe_shost_template, ptr @csio_fcoe_shost_vport_template
  %call4 = tail call ptr @scsi_host_alloc(ptr noundef nonnull %csio_fcoe_shost_template.csio_fcoe_shost_vport_template, i32 noundef 704) #8
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call4, i32 0, i32 53
  %3 = call ptr @memset(ptr %hostdata.i, i32 0, i32 704)
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %call4, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %shl = shl i32 %5, 16
  %dev_num = getelementptr inbounds %struct.Scsi_Host, ptr %call4, i32 1, i32 2, i32 1
  %6 = ptrtoint ptr %dev_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl, ptr %dev_num, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call4, i32 0, i32 26
  %7 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2048, ptr %can_queue, align 4
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %call4, i32 0, i32 25
  %8 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %this_id, align 8
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call4, i32 0, i32 23
  %9 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %unique_id, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call4, i32 0, i32 24
  %10 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 16, ptr %max_cmd_len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @csio_fcoe_rnodes to i32))
  %11 = load i32, ptr @csio_fcoe_rnodes, align 4
  %max_ssns = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 51, i32 5
  %12 = ptrtoint ptr %max_ssns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_ssns, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %13)
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call4, i32 0, i32 21
  %15 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %max_id, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call4, i32 0, i32 22
  %16 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 65535, ptr %max_lun, align 8
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %cmp13 = icmp eq ptr %dev12, %dev
  %csio_fcoe_transport.val = load ptr, ptr @csio_fcoe_transport, align 4
  %csio_fcoe_transport_vport.val = load ptr, ptr @csio_fcoe_transport_vport, align 4
  %.sink = select i1 %cmp13, ptr %csio_fcoe_transport.val, ptr %csio_fcoe_transport_vport.val
  %19 = getelementptr inbounds %struct.Scsi_Host, ptr %call4, i32 0, i32 12
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %.sink, ptr %19, align 4
  %rln = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 15
  %21 = ptrtoint ptr %rln to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rln, align 4
  %tobool19.not = icmp eq ptr %22, null
  br i1 %tobool19.not, label %if.then20, label %if.end6.if.end22_crit_edge

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %rln to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %hostdata.i, ptr %rln, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end6.if.end22_crit_edge
  %call23 = tail call i32 @csio_lnode_init(ptr noundef %hostdata.i, ptr noundef %hw, ptr noundef %pln) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.err_shost_put_crit_edge

if.end22.err_shost_put_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_shost_put

if.end26:                                         ; preds = %if.end22
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %call29 = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call4, ptr noundef %dev, ptr noundef %dev28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end26.cleanup_crit_edge, label %err_lnode_exit

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_lnode_exit:                                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @csio_lnode_exit(ptr noundef %hostdata.i) #8
  br label %err_shost_put

err_shost_put:                                    ; preds = %err_lnode_exit, %if.end22.err_shost_put_crit_edge
  tail call void @scsi_host_put(ptr noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %err_shost_put, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %hostdata.i, %if.end26.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %err_shost_put ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_lnode_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_lnode_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_shost_exit(ptr noundef %ln) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ln, i32 -2448
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  tail call void @fc_remove_host(ptr noundef %add.ptr.i) #8
  tail call void @scsi_remove_host(ptr noundef %add.ptr.i) #8
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  tail call void @csio_evtq_flush(ptr noundef %1) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  tail call void @csio_lnode_exit(ptr noundef %ln) #8
  tail call void @scsi_host_put(ptr noundef %add.ptr.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_evtq_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @csio_lnode_alloc(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = tail call ptr @csio_shost_init(ptr noundef %hw, ptr noundef %dev, i1 zeroext undef, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_lnodes_block_request(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_lns = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 14
  %0 = ptrtoint ptr %num_lns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_lns, align 8
  %mul = shl i32 %1, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %sln_head = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 16
  %4 = ptrtoint ptr %sln_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %cur_ln.061 = load ptr, ptr %sln_head, align 4
  %cmp.i.not62 = icmp eq ptr %cur_ln.061, %sln_head
  br i1 %cmp.i.not62, label %for.end16.thread, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.end16.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %for.end24

for.cond.loopexit:                                ; preds = %for.body10.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %cur_cnt.1.lcssa = phi i32 [ %cur_cnt.156, %for.body.for.cond.loopexit_crit_edge ], [ %cur_cnt.1, %for.body10.for.cond.loopexit_crit_edge ]
  %5 = ptrtoint ptr %cur_ln.064 to i32
  call void @__asan_load4_noabort(i32 %5)
  %cur_ln.0 = load ptr, ptr %cur_ln.064, align 4
  %cmp.i.not = icmp eq ptr %cur_ln.0, %sln_head
  br i1 %cmp.i.not, label %for.end16, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %if.end.for.body_crit_edge
  %cur_ln.064 = phi ptr [ %cur_ln.0, %for.cond.loopexit.for.body_crit_edge ], [ %cur_ln.061, %if.end.for.body_crit_edge ]
  %cur_cnt.063 = phi i32 [ %cur_cnt.1.lcssa, %for.cond.loopexit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %call9.i.i, i32 %cur_cnt.063
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cur_ln.064, ptr %arrayidx, align 4
  %cln_head = getelementptr inbounds %struct.csio_lnode, ptr %cur_ln.064, i32 0, i32 18
  %cur_cnt.156 = add i32 %cur_cnt.063, 1
  %7 = ptrtoint ptr %cln_head to i32
  call void @__asan_load4_noabort(i32 %7)
  %cur_cln.057 = load ptr, ptr %cln_head, align 4
  %cmp.i51.not58 = icmp eq ptr %cur_cln.057, %cln_head
  br i1 %cmp.i51.not58, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body10_crit_edge

for.body.for.body10_crit_edge:                    ; preds = %for.body
  br label %for.body10

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body.for.body10_crit_edge
  %cur_cln.060 = phi ptr [ %cur_cln.0, %for.body10.for.body10_crit_edge ], [ %cur_cln.057, %for.body.for.body10_crit_edge ]
  %cur_cnt.159 = phi i32 [ %cur_cnt.1, %for.body10.for.body10_crit_edge ], [ %cur_cnt.156, %for.body.for.body10_crit_edge ]
  %arrayidx12 = getelementptr ptr, ptr %call9.i.i, i32 %cur_cnt.159
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cur_cln.060, ptr %arrayidx12, align 4
  %cur_cnt.1 = add i32 %cur_cnt.159, 1
  %9 = ptrtoint ptr %cur_cln.060 to i32
  call void @__asan_load4_noabort(i32 %9)
  %cur_cln.0 = load ptr, ptr %cur_cln.060, align 4
  %cmp.i51.not = icmp eq ptr %cur_cln.0, %cln_head
  br i1 %cmp.i51.not, label %for.body10.for.cond.loopexit_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10

for.body10.for.cond.loopexit_crit_edge:           ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.end16:                                        ; preds = %for.cond.loopexit
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur_cnt.1.lcssa)
  %cmp66 = icmp sgt i32 %cur_cnt.1.lcssa, 0
  br i1 %cmp66, label %for.end16.for.body19_crit_edge, label %for.end16.for.end24_crit_edge

for.end16.for.end24_crit_edge:                    ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end24

for.end16.for.body19_crit_edge:                   ; preds = %for.end16
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.end16.for.body19_crit_edge
  %ii.067 = phi i32 [ %inc23, %for.body19.for.body19_crit_edge ], [ 0, %for.end16.for.body19_crit_edge ]
  %arrayidx20 = getelementptr ptr, ptr %call9.i.i, i32 %ii.067
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx20, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 -2448
  tail call void @scsi_block_requests(ptr noundef %add.ptr.i) #8
  %inc23 = add nuw nsw i32 %ii.067, 1
  %exitcond.not = icmp eq i32 %inc23, %cur_cnt.1.lcssa
  br i1 %exitcond.not, label %for.body19.for.end24_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body19

for.body19.for.end24_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end24

for.end24:                                        ; preds = %for.body19.for.end24_crit_edge, %for.end16.for.end24_crit_edge, %for.end16.thread
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end24, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_lnodes_unblock_request(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_lns = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 14
  %0 = ptrtoint ptr %num_lns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_lns, align 8
  %mul = shl i32 %1, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %sln_head = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 16
  %4 = ptrtoint ptr %sln_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %cur_ln.061 = load ptr, ptr %sln_head, align 4
  %cmp.i.not62 = icmp eq ptr %cur_ln.061, %sln_head
  br i1 %cmp.i.not62, label %for.end16.thread, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.end16.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %for.end24

for.cond.loopexit:                                ; preds = %for.body10.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %cur_cnt.1.lcssa = phi i32 [ %cur_cnt.156, %for.body.for.cond.loopexit_crit_edge ], [ %cur_cnt.1, %for.body10.for.cond.loopexit_crit_edge ]
  %5 = ptrtoint ptr %cur_ln.064 to i32
  call void @__asan_load4_noabort(i32 %5)
  %cur_ln.0 = load ptr, ptr %cur_ln.064, align 4
  %cmp.i.not = icmp eq ptr %cur_ln.0, %sln_head
  br i1 %cmp.i.not, label %for.end16, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %if.end.for.body_crit_edge
  %cur_ln.064 = phi ptr [ %cur_ln.0, %for.cond.loopexit.for.body_crit_edge ], [ %cur_ln.061, %if.end.for.body_crit_edge ]
  %cur_cnt.063 = phi i32 [ %cur_cnt.1.lcssa, %for.cond.loopexit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %call9.i.i, i32 %cur_cnt.063
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cur_ln.064, ptr %arrayidx, align 4
  %cln_head = getelementptr inbounds %struct.csio_lnode, ptr %cur_ln.064, i32 0, i32 18
  %cur_cnt.156 = add i32 %cur_cnt.063, 1
  %7 = ptrtoint ptr %cln_head to i32
  call void @__asan_load4_noabort(i32 %7)
  %cur_cln.057 = load ptr, ptr %cln_head, align 4
  %cmp.i51.not58 = icmp eq ptr %cur_cln.057, %cln_head
  br i1 %cmp.i51.not58, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body10_crit_edge

for.body.for.body10_crit_edge:                    ; preds = %for.body
  br label %for.body10

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body.for.body10_crit_edge
  %cur_cln.060 = phi ptr [ %cur_cln.0, %for.body10.for.body10_crit_edge ], [ %cur_cln.057, %for.body.for.body10_crit_edge ]
  %cur_cnt.159 = phi i32 [ %cur_cnt.1, %for.body10.for.body10_crit_edge ], [ %cur_cnt.156, %for.body.for.body10_crit_edge ]
  %arrayidx12 = getelementptr ptr, ptr %call9.i.i, i32 %cur_cnt.159
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cur_cln.060, ptr %arrayidx12, align 4
  %cur_cnt.1 = add i32 %cur_cnt.159, 1
  %9 = ptrtoint ptr %cur_cln.060 to i32
  call void @__asan_load4_noabort(i32 %9)
  %cur_cln.0 = load ptr, ptr %cur_cln.060, align 4
  %cmp.i51.not = icmp eq ptr %cur_cln.0, %cln_head
  br i1 %cmp.i51.not, label %for.body10.for.cond.loopexit_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10

for.body10.for.cond.loopexit_crit_edge:           ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.end16:                                        ; preds = %for.cond.loopexit
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur_cnt.1.lcssa)
  %cmp66 = icmp sgt i32 %cur_cnt.1.lcssa, 0
  br i1 %cmp66, label %for.end16.for.body19_crit_edge, label %for.end16.for.end24_crit_edge

for.end16.for.end24_crit_edge:                    ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end24

for.end16.for.body19_crit_edge:                   ; preds = %for.end16
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.end16.for.body19_crit_edge
  %ii.067 = phi i32 [ %inc23, %for.body19.for.body19_crit_edge ], [ 0, %for.end16.for.body19_crit_edge ]
  %arrayidx20 = getelementptr ptr, ptr %call9.i.i, i32 %ii.067
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx20, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 -2448
  tail call void @scsi_unblock_requests(ptr noundef %add.ptr.i) #8
  %inc23 = add nuw nsw i32 %ii.067, 1
  %exitcond.not = icmp eq i32 %inc23, %cur_cnt.1.lcssa
  br i1 %exitcond.not, label %for.body19.for.end24_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body19

for.body19.for.end24_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end24

for.end24:                                        ; preds = %for.body19.for.end24_crit_edge, %for.end16.for.end24_crit_edge, %for.end16.thread
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end24, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_unblock_requests(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_lnodes_block_by_port(ptr noundef %hw, i8 noundef zeroext %portid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_lns = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 14
  %0 = ptrtoint ptr %num_lns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_lns, align 8
  %mul = shl i32 %1, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %sln_head = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 16
  %4 = ptrtoint ptr %sln_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %cur_ln.069 = load ptr, ptr %sln_head, align 4
  %cmp.i.not70 = icmp eq ptr %cur_ln.069, %sln_head
  br i1 %cmp.i.not70, label %for.end21.thread, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.end21.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %for.end31

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %if.end.for.body_crit_edge
  %cur_ln.072 = phi ptr [ %cur_ln.0, %for.inc19.for.body_crit_edge ], [ %cur_ln.069, %if.end.for.body_crit_edge ]
  %cur_cnt.071 = phi i32 [ %cur_cnt.2, %for.inc19.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %portid4 = getelementptr inbounds %struct.csio_lnode, ptr %cur_ln.072, i32 0, i32 2
  %5 = ptrtoint ptr %portid4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %portid4, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %portid)
  %cmp.not = icmp eq i8 %6, %portid
  br i1 %cmp.not, label %if.end8, label %for.body.for.inc19_crit_edge

for.body.for.inc19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

if.end8:                                          ; preds = %for.body
  %arrayidx = getelementptr ptr, ptr %call9.i.i, i32 %cur_cnt.071
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cur_ln.072, ptr %arrayidx, align 4
  %cln_head = getelementptr inbounds %struct.csio_lnode, ptr %cur_ln.072, i32 0, i32 18
  %cur_cnt.164 = add i32 %cur_cnt.071, 1
  %8 = ptrtoint ptr %cln_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %cur_cln.065 = load ptr, ptr %cln_head, align 4
  %cmp.i59.not66 = icmp eq ptr %cur_cln.065, %cln_head
  br i1 %cmp.i59.not66, label %if.end8.for.inc19_crit_edge, label %if.end8.for.body15_crit_edge

if.end8.for.body15_crit_edge:                     ; preds = %if.end8
  br label %for.body15

if.end8.for.inc19_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %if.end8.for.body15_crit_edge
  %cur_cln.068 = phi ptr [ %cur_cln.0, %for.body15.for.body15_crit_edge ], [ %cur_cln.065, %if.end8.for.body15_crit_edge ]
  %cur_cnt.167 = phi i32 [ %cur_cnt.1, %for.body15.for.body15_crit_edge ], [ %cur_cnt.164, %if.end8.for.body15_crit_edge ]
  %arrayidx17 = getelementptr ptr, ptr %call9.i.i, i32 %cur_cnt.167
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cur_cln.068, ptr %arrayidx17, align 4
  %cur_cnt.1 = add i32 %cur_cnt.167, 1
  %10 = ptrtoint ptr %cur_cln.068 to i32
  call void @__asan_load4_noabort(i32 %10)
  %cur_cln.0 = load ptr, ptr %cur_cln.068, align 4
  %cmp.i59.not = icmp eq ptr %cur_cln.0, %cln_head
  br i1 %cmp.i59.not, label %for.body15.for.inc19_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

for.body15.for.inc19_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

for.inc19:                                        ; preds = %for.body15.for.inc19_crit_edge, %if.end8.for.inc19_crit_edge, %for.body.for.inc19_crit_edge
  %cur_cnt.2 = phi i32 [ %cur_cnt.071, %for.body.for.inc19_crit_edge ], [ %cur_cnt.164, %if.end8.for.inc19_crit_edge ], [ %cur_cnt.1, %for.body15.for.inc19_crit_edge ]
  %11 = ptrtoint ptr %cur_ln.072 to i32
  call void @__asan_load4_noabort(i32 %11)
  %cur_ln.0 = load ptr, ptr %cur_ln.072, align 4
  %cmp.i.not = icmp eq ptr %cur_ln.0, %sln_head
  br i1 %cmp.i.not, label %for.end21, label %for.inc19.for.body_crit_edge

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end21:                                        ; preds = %for.inc19
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur_cnt.2)
  %cmp2474 = icmp sgt i32 %cur_cnt.2, 0
  br i1 %cmp2474, label %for.end21.for.body26_crit_edge, label %for.end21.for.end31_crit_edge

for.end21.for.end31_crit_edge:                    ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end31

for.end21.for.body26_crit_edge:                   ; preds = %for.end21
  br label %for.body26

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.end21.for.body26_crit_edge
  %ii.075 = phi i32 [ %inc30, %for.body26.for.body26_crit_edge ], [ 0, %for.end21.for.body26_crit_edge ]
  %arrayidx27 = getelementptr ptr, ptr %call9.i.i, i32 %ii.075
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx27, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 -2448
  tail call void @scsi_block_requests(ptr noundef %add.ptr.i) #8
  %inc30 = add nuw nsw i32 %ii.075, 1
  %exitcond.not = icmp eq i32 %inc30, %cur_cnt.2
  br i1 %exitcond.not, label %for.body26.for.end31_crit_edge, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26

for.body26.for.end31_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end31

for.end31:                                        ; preds = %for.body26.for.end31_crit_edge, %for.end21.for.end31_crit_edge, %for.end21.thread
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end31, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_lnodes_unblock_by_port(ptr noundef %hw, i8 noundef zeroext %portid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_lns = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 14
  %0 = ptrtoint ptr %num_lns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_lns, align 8
  %mul = shl i32 %1, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %sln_head = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 16
  %4 = ptrtoint ptr %sln_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %cur_ln.069 = load ptr, ptr %sln_head, align 4
  %cmp.i.not70 = icmp eq ptr %cur_ln.069, %sln_head
  br i1 %cmp.i.not70, label %for.end21.thread, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.end21.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %for.end31

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %if.end.for.body_crit_edge
  %cur_ln.072 = phi ptr [ %cur_ln.0, %for.inc19.for.body_crit_edge ], [ %cur_ln.069, %if.end.for.body_crit_edge ]
  %cur_cnt.071 = phi i32 [ %cur_cnt.2, %for.inc19.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %portid4 = getelementptr inbounds %struct.csio_lnode, ptr %cur_ln.072, i32 0, i32 2
  %5 = ptrtoint ptr %portid4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %portid4, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %portid)
  %cmp.not = icmp eq i8 %6, %portid
  br i1 %cmp.not, label %if.end8, label %for.body.for.inc19_crit_edge

for.body.for.inc19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

if.end8:                                          ; preds = %for.body
  %arrayidx = getelementptr ptr, ptr %call9.i.i, i32 %cur_cnt.071
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cur_ln.072, ptr %arrayidx, align 4
  %cln_head = getelementptr inbounds %struct.csio_lnode, ptr %cur_ln.072, i32 0, i32 18
  %cur_cnt.164 = add i32 %cur_cnt.071, 1
  %8 = ptrtoint ptr %cln_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %cur_cln.065 = load ptr, ptr %cln_head, align 4
  %cmp.i59.not66 = icmp eq ptr %cur_cln.065, %cln_head
  br i1 %cmp.i59.not66, label %if.end8.for.inc19_crit_edge, label %if.end8.for.body15_crit_edge

if.end8.for.body15_crit_edge:                     ; preds = %if.end8
  br label %for.body15

if.end8.for.inc19_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %if.end8.for.body15_crit_edge
  %cur_cln.068 = phi ptr [ %cur_cln.0, %for.body15.for.body15_crit_edge ], [ %cur_cln.065, %if.end8.for.body15_crit_edge ]
  %cur_cnt.167 = phi i32 [ %cur_cnt.1, %for.body15.for.body15_crit_edge ], [ %cur_cnt.164, %if.end8.for.body15_crit_edge ]
  %arrayidx17 = getelementptr ptr, ptr %call9.i.i, i32 %cur_cnt.167
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cur_cln.068, ptr %arrayidx17, align 4
  %cur_cnt.1 = add i32 %cur_cnt.167, 1
  %10 = ptrtoint ptr %cur_cln.068 to i32
  call void @__asan_load4_noabort(i32 %10)
  %cur_cln.0 = load ptr, ptr %cur_cln.068, align 4
  %cmp.i59.not = icmp eq ptr %cur_cln.0, %cln_head
  br i1 %cmp.i59.not, label %for.body15.for.inc19_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

for.body15.for.inc19_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

for.inc19:                                        ; preds = %for.body15.for.inc19_crit_edge, %if.end8.for.inc19_crit_edge, %for.body.for.inc19_crit_edge
  %cur_cnt.2 = phi i32 [ %cur_cnt.071, %for.body.for.inc19_crit_edge ], [ %cur_cnt.164, %if.end8.for.inc19_crit_edge ], [ %cur_cnt.1, %for.body15.for.inc19_crit_edge ]
  %11 = ptrtoint ptr %cur_ln.072 to i32
  call void @__asan_load4_noabort(i32 %11)
  %cur_ln.0 = load ptr, ptr %cur_ln.072, align 4
  %cmp.i.not = icmp eq ptr %cur_ln.0, %sln_head
  br i1 %cmp.i.not, label %for.end21, label %for.inc19.for.body_crit_edge

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end21:                                        ; preds = %for.inc19
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur_cnt.2)
  %cmp2474 = icmp sgt i32 %cur_cnt.2, 0
  br i1 %cmp2474, label %for.end21.for.body26_crit_edge, label %for.end21.for.end31_crit_edge

for.end21.for.end31_crit_edge:                    ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end31

for.end21.for.body26_crit_edge:                   ; preds = %for.end21
  br label %for.body26

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.end21.for.body26_crit_edge
  %ii.075 = phi i32 [ %inc30, %for.body26.for.body26_crit_edge ], [ 0, %for.end21.for.body26_crit_edge ]
  %arrayidx27 = getelementptr ptr, ptr %call9.i.i, i32 %ii.075
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx27, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 -2448
  tail call void @scsi_unblock_requests(ptr noundef %add.ptr.i) #8
  %inc30 = add nuw nsw i32 %ii.075, 1
  %exitcond.not = icmp eq i32 %inc30, %cur_cnt.2
  br i1 %exitcond.not, label %for.body26.for.end31_crit_edge, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26

for.body26.for.end31_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end31

for.end31:                                        ; preds = %for.body26.for.end31_crit_edge, %for.end21.for.end31_crit_edge, %for.end21.thread
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end31, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_lnodes_exit(ptr noundef %hw, i1 noundef zeroext %npiv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_lns = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 14
  %0 = ptrtoint ptr %num_lns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_lns, align 8
  %mul = shl i32 %1, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %sln_head = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 16
  %4 = ptrtoint ptr %sln_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %cur_ln.097 = load ptr, ptr %sln_head, align 4
  %cmp.i.not98 = icmp eq ptr %cur_ln.097, %sln_head
  br i1 %cmp.i.not98, label %for.end14.thread, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.end14.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %for.end22

for.cond.loopexit:                                ; preds = %for.body10.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %cur_cnt.1.lcssa = phi i32 [ %cur_cnt.099, %for.body.for.cond.loopexit_crit_edge ], [ %inc, %for.body10.for.cond.loopexit_crit_edge ]
  %5 = ptrtoint ptr %cur_ln.0100 to i32
  call void @__asan_load4_noabort(i32 %5)
  %cur_ln.0 = load ptr, ptr %cur_ln.0100, align 4
  %cmp.i.not = icmp eq ptr %cur_ln.0, %sln_head
  br i1 %cmp.i.not, label %for.end14, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %if.end.for.body_crit_edge
  %cur_ln.0100 = phi ptr [ %cur_ln.0, %for.cond.loopexit.for.body_crit_edge ], [ %cur_ln.097, %if.end.for.body_crit_edge ]
  %cur_cnt.099 = phi i32 [ %cur_cnt.1.lcssa, %for.cond.loopexit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %cln_head = getelementptr inbounds %struct.csio_lnode, ptr %cur_ln.0100, i32 0, i32 18
  %6 = ptrtoint ptr %cln_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %cur_cln.093 = load ptr, ptr %cln_head, align 4
  %cmp.i85.not94 = icmp eq ptr %cur_cln.093, %cln_head
  br i1 %cmp.i85.not94, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body10_crit_edge

for.body.for.body10_crit_edge:                    ; preds = %for.body
  br label %for.body10

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body.for.body10_crit_edge
  %cur_cln.096 = phi ptr [ %cur_cln.0, %for.body10.for.body10_crit_edge ], [ %cur_cln.093, %for.body.for.body10_crit_edge ]
  %cur_cnt.195 = phi i32 [ %inc, %for.body10.for.body10_crit_edge ], [ %cur_cnt.099, %for.body.for.body10_crit_edge ]
  %inc = add i32 %cur_cnt.195, 1
  %arrayidx = getelementptr ptr, ptr %call9.i.i, i32 %cur_cnt.195
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cur_cln.096, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %cur_cln.096 to i32
  call void @__asan_load4_noabort(i32 %8)
  %cur_cln.0 = load ptr, ptr %cur_cln.096, align 4
  %cmp.i85.not = icmp eq ptr %cur_cln.0, %cln_head
  br i1 %cmp.i85.not, label %for.body10.for.cond.loopexit_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10

for.body10.for.cond.loopexit_crit_edge:           ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.end14:                                        ; preds = %for.cond.loopexit
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur_cnt.1.lcssa)
  %cmp102 = icmp sgt i32 %cur_cnt.1.lcssa, 0
  br i1 %cmp102, label %for.end14.for.body17_crit_edge, label %for.end14.for.end22_crit_edge

for.end14.for.end22_crit_edge:                    ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end22

for.end14.for.body17_crit_edge:                   ; preds = %for.end14
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.end14.for.body17_crit_edge
  %ii.0103 = phi i32 [ %inc21, %for.body17.for.body17_crit_edge ], [ 0, %for.end14.for.body17_crit_edge ]
  %arrayidx18 = getelementptr ptr, ptr %call9.i.i, i32 %ii.0103
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx18, align 4
  %fc_vport = getelementptr inbounds %struct.csio_lnode, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %fc_vport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fc_vport, align 4
  %call19 = tail call i32 @fc_vport_terminate(ptr noundef %12) #8
  %inc21 = add nuw nsw i32 %ii.0103, 1
  %exitcond.not = icmp eq i32 %inc21, %cur_cnt.1.lcssa
  br i1 %exitcond.not, label %for.body17.for.end22_crit_edge, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17

for.body17.for.end22_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end22

for.end22:                                        ; preds = %for.body17.for.end22_crit_edge, %for.end14.for.end22_crit_edge, %for.end14.thread
  br i1 %npiv, label %for.end22.free_lnodes_crit_edge, label %if.end25

for.end22.free_lnodes_crit_edge:                  ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_lnodes

if.end25:                                         ; preds = %for.end22
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %13 = ptrtoint ptr %sln_head to i32
  call void @__asan_load4_noabort(i32 %13)
  %cur_ln.1104 = load ptr, ptr %sln_head, align 4
  %cmp.i87.not105 = icmp eq ptr %cur_ln.1104, %sln_head
  br i1 %cmp.i87.not105, label %for.end39.thread, label %if.end25.for.body34_crit_edge

if.end25.for.body34_crit_edge:                    ; preds = %if.end25
  br label %for.body34

for.end39.thread:                                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %free_lnodes

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %if.end25.for.body34_crit_edge
  %cur_ln.1107 = phi ptr [ %cur_ln.1, %for.body34.for.body34_crit_edge ], [ %cur_ln.1104, %if.end25.for.body34_crit_edge ]
  %cur_cnt.2106 = phi i32 [ %inc35, %for.body34.for.body34_crit_edge ], [ 0, %if.end25.for.body34_crit_edge ]
  %inc35 = add i32 %cur_cnt.2106, 1
  %arrayidx36 = getelementptr ptr, ptr %call9.i.i, i32 %cur_cnt.2106
  %14 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cur_ln.1107, ptr %arrayidx36, align 4
  %15 = ptrtoint ptr %cur_ln.1107 to i32
  call void @__asan_load4_noabort(i32 %15)
  %cur_ln.1 = load ptr, ptr %cur_ln.1107, align 4
  %cmp.i87.not = icmp eq ptr %cur_ln.1, %sln_head
  br i1 %cmp.i87.not, label %for.end39, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body34

for.end39:                                        ; preds = %for.body34
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %cur_cnt.2106)
  %cmp42109 = icmp ult i32 %cur_cnt.2106, 2147483647
  br i1 %cmp42109, label %for.end39.for.body43_crit_edge, label %for.end39.free_lnodes_crit_edge

for.end39.free_lnodes_crit_edge:                  ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_lnodes

for.end39.for.body43_crit_edge:                   ; preds = %for.end39
  br label %for.body43

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.end39.for.body43_crit_edge
  %ii.1110 = phi i32 [ %inc46, %for.body43.for.body43_crit_edge ], [ 0, %for.end39.for.body43_crit_edge ]
  %arrayidx44 = getelementptr ptr, ptr %call9.i.i, i32 %ii.1110
  %16 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx44, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -2448
  %hwp.i = getelementptr inbounds %struct.csio_lnode, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %hwp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwp.i, align 4
  tail call void @fc_remove_host(ptr noundef %add.ptr.i.i) #8
  tail call void @scsi_remove_host(ptr noundef %add.ptr.i.i) #8
  %lock.i = getelementptr inbounds %struct.csio_hw, ptr %19, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  tail call void @csio_evtq_flush(ptr noundef %19) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #8
  tail call void @csio_lnode_exit(ptr noundef %17) #8
  tail call void @scsi_host_put(ptr noundef %add.ptr.i.i) #8
  %inc46 = add nuw nsw i32 %ii.1110, 1
  %exitcond111.not = icmp eq i32 %ii.1110, %cur_cnt.2106
  br i1 %exitcond111.not, label %for.body43.free_lnodes_crit_edge, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43

for.body43.free_lnodes_crit_edge:                 ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_lnodes

free_lnodes:                                      ; preds = %for.body43.free_lnodes_crit_edge, %for.end39.free_lnodes_crit_edge, %for.end39.thread, %for.end22.free_lnodes_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_lnodes, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_vport_terminate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @csio_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @csio_pci_driver) #8
  %0 = load ptr, ptr @csio_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #8
  %1 = load ptr, ptr @csio_fcoe_transport_vport, align 4
  tail call void @fc_release_transport(ptr noundef %1) #8
  %2 = load ptr, ptr @csio_fcoe_transport, align 4
  tail call void @fc_release_transport(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_release_transport(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.26) #11
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.25, ptr noundef null) #8
  store ptr %call.i, ptr @csio_debugfs_root, align 4
  %call1 = tail call ptr @fc_attach_transport(ptr noundef nonnull @csio_fc_transport_funcs) #8
  store ptr %call1, ptr @csio_fcoe_transport, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @fc_attach_transport(ptr noundef nonnull @csio_fc_transport_vport_funcs) #8
  store ptr %call2, ptr @csio_fcoe_transport_vport, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.err_vport_crit_edge, label %if.end5

if.end.err_vport_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_vport

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @__pci_register_driver(ptr noundef nonnull @csio_pci_driver, ptr noundef null, ptr noundef nonnull @.str.25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %err_pci

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_pci:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @csio_fcoe_transport_vport, align 4
  tail call void @fc_release_transport(ptr noundef %0) #8
  br label %err_vport

err_vport:                                        ; preds = %err_pci, %if.end.err_vport_crit_edge
  %rv.0 = phi i32 [ %call6, %err_pci ], [ -12, %if.end.err_vport_crit_edge ]
  %1 = load ptr, ptr @csio_fcoe_transport, align 4
  tail call void @fc_release_transport(ptr noundef %1) #8
  br label %err

err:                                              ; preds = %err_vport, %entry.err_crit_edge
  %rv.1 = phi i32 [ %rv.0, %err_vport ], [ -12, %entry.err_crit_edge ]
  %2 = load ptr, ptr @csio_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.1, %err ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_mem_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %data = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %8 = ptrtoint ptr %7 to i32
  %and = and i32 %8, 3
  %idx.neg = sub nsw i32 0, %and
  %add.ptr = getelementptr i8, ptr %7, i32 %idx.neg
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %entry.cleanup42_crit_edge, label %if.end

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %1)
  %cmp2.not = icmp sgt i64 %5, %1
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup42_crit_edge

if.end.cleanup42_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

if.end4:                                          ; preds = %if.end
  %conv = zext i32 %count to i64
  %sub = sub i64 %5, %1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp5 = icmp slt i64 %sub, %conv
  %conv9 = trunc i64 %sub to i32
  %spec.select = select i1 %cmp5, i32 %conv9, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool.not91 = icmp eq i32 %spec.select, 0
  br i1 %tobool.not91, label %if.end4.while.end_crit_edge, label %while.body.lr.ph

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp11 = icmp eq i32 %and, 2
  %chip_ops16 = getelementptr inbounds %struct.csio_hw, ptr %add.ptr, i32 0, i32 52
  %and.sink = select i1 %cmp11, i32 0, i32 %and
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %pos.094 = phi i64 [ %1, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %buf.addr.093 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr34, %cleanup.while.body_crit_edge ]
  %count.addr.192 = phi i32 [ %spec.select, %while.body.lr.ph ], [ %sub36, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #8
  %9 = call ptr @memset(ptr %data, i32 255, i32 64)
  %10 = ptrtoint ptr %chip_ops16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip_ops16, align 4
  %chip_edc_read = getelementptr inbounds %struct.csio_hw_chip_ops, ptr %11, i32 0, i32 4
  %chip_mc_read = getelementptr inbounds %struct.csio_hw_chip_ops, ptr %11, i32 0, i32 3
  %chip_edc_read.sink = select i1 %cmp11, ptr %chip_mc_read, ptr %chip_edc_read
  %12 = ptrtoint ptr %chip_edc_read.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip_edc_read.sink, align 4
  %conv17 = trunc i64 %pos.094 to i32
  %call19 = call i32 %13(ptr noundef %add.ptr, i32 noundef %and.sink, i32 noundef %conv17, ptr noundef nonnull %data, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.end23, label %while.body.cleanup.thread_crit_edge

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end23:                                         ; preds = %while.body
  %rem = srem i64 %pos.094, 64
  %conv24 = trunc i64 %rem to i32
  %sub25 = sub nsw i32 64, %conv24
  %14 = call i32 @llvm.umin.i32(i32 %count.addr.192, i32 %sub25)
  %add.ptr29 = getelementptr i8, ptr %data, i32 %conv24
  call void @__check_object_size(ptr noundef %add.ptr29, i32 noundef %14, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end23.cleanup.thread_crit_edge, label %if.end.i.i

if.end23.cleanup.thread_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end.i.i:                                       ; preds = %if.end23
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.093, i32 %14, i32 -1226833920) #13, !srcloc !170
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup.thread_crit_edge

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr29, i32 noundef %14) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.093, ptr noundef %add.ptr29, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool31.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool31.not, label %cleanup, label %copy_to_user.exit.cleanup.thread_crit_edge

copy_to_user.exit.cleanup.thread_crit_edge:       ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %copy_to_user.exit.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge, %if.end23.cleanup.thread_crit_edge, %while.body.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ -14, %if.end.i.i.cleanup.thread_crit_edge ], [ -14, %if.end23.cleanup.thread_crit_edge ], [ %call19, %while.body.cleanup.thread_crit_edge ], [ -14, %copy_to_user.exit.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #8
  br label %cleanup42

cleanup:                                          ; preds = %copy_to_user.exit
  %add.ptr34 = getelementptr i8, ptr %buf.addr.093, i32 %14
  %conv35 = zext i32 %14 to i64
  %add = add i64 %pos.094, %conv35
  %sub36 = sub i32 %count.addr.192, %14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #8
  %tobool.not = icmp eq i32 %sub36, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end4.while.end_crit_edge
  %pos.0.lcssa = phi i64 [ %1, %if.end4.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ]
  %16 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ppos, align 8
  %sub40 = sub i64 %pos.0.lcssa, %17
  %conv41 = trunc i64 %sub40 to i32
  store i64 %pos.0.lcssa, ptr %ppos, align 8
  br label %cleanup42

cleanup42:                                        ; preds = %while.end, %cleanup.thread, %if.end.cleanup42_crit_edge, %entry.cleanup42_crit_edge
  %retval.2 = phi i32 [ %conv41, %while.end ], [ -22, %entry.cleanup42_crit_edge ], [ 0, %if.end.cleanup42_crit_edge ], [ %retval.1.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_wr_iq_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_wr_eq_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_wr_destroy_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_probe_one(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  %2 = and i16 %1, -4096
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %entry.cleanup_crit_edge [
    i16 20480, label %entry.if.end_crit_edge
    i16 24576, label %entry.if.end_crit_edge144
  ]

entry.if.end_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge144
  %call.i = tail call i32 @pci_select_bars(ptr noundef %pdev, i32 noundef 512) #8
  %call1.i = tail call i32 @pci_enable_device_mem(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end63_crit_edge

if.end.do.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call i32 @pci_request_selected_regions(ptr noundef %pdev, i32 noundef %call.i, ptr noundef nonnull @.str.25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.do.end63.sink.split_crit_edge

if.end.i.do.end63.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63.sink.split

if.end5.i:                                        ; preds = %if.end.i
  tail call void @pci_set_master(ptr noundef %pdev) #8
  %call6.i = tail call i32 @pci_try_set_mwi(ptr noundef %pdev) #8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end5.i.if.end11_crit_edge, label %if.then9.i

if.end5.i.if.end11_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9.i:                                       ; preds = %if.end5.i
  %call.i30.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %cmp.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %cmp.i31.i, label %if.then9.i.if.end11_crit_edge, label %if.then14.i

if.then9.i.if.end11_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then14.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.50) #11
  br label %do.end63.sink.split.sink.split

if.end11:                                         ; preds = %if.then9.i.if.end11_crit_edge, %if.end5.i.if.end11_crit_edge
  %.sink = phi i64 [ -1, %if.end5.i.if.end11_crit_edge ], [ 4294967295, %if.then9.i.if.end11_crit_edge ]
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev.i, i64 noundef %.sink) #8
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 22536, i32 noundef 3520, i32 noundef 3) #12
  %tobool.not.i111 = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i111, label %if.end11.do.end63.sink.split.sink.split_crit_edge, label %if.end.i112

if.end11.do.end63.sink.split.sink.split_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63.sink.split.sink.split

if.end.i112:                                      ; preds = %if.end11
  %pdev1.i = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %pdev1.i, align 8
  %drv_version.i = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 25
  %5 = call ptr @memcpy(ptr %drv_version.i, ptr @str, i32 32)
  %wrm1.i.i = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %wrm1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1028, ptr %wrm1.i.i, align 8
  %call.i.i.i = tail call ptr @mempool_create(i32 noundef 64, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 144 to ptr)) #8
  %mb_mempool.i.i = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 44
  %7 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i.i, ptr %mb_mempool.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i112.err_free_hw.i_crit_edge, label %if.end.i.i

if.end.i112.err_free_hw.i_crit_edge:              ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_hw.i

if.end.i.i:                                       ; preds = %if.end.i112
  %call.i29.i.i = tail call ptr @mempool_create(i32 noundef 64, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 356 to ptr)) #8
  %rnode_mempool.i.i = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 45
  %8 = ptrtoint ptr %rnode_mempool.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i29.i.i, ptr %rnode_mempool.i.i, align 8
  %tobool5.not.i.i = icmp eq ptr %call.i29.i.i, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.err_free_hw.sink.split.i_crit_edge, label %if.end7.i.i

if.end.i.i.err_free_hw.sink.split.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_hw.sink.split.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %9 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev1.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %call8.i.i = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.54, ptr noundef %dev.i.i, i32 noundef 156, i32 noundef 8, i32 noundef 0) #8
  %scsi_dma_pool.i.i = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 43
  %11 = ptrtoint ptr %scsi_dma_pool.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i, ptr %scsi_dma_pool.i.i, align 16
  %tobool10.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool10.not.i.i, label %if.end7.i.i.err_free_hw.sink.split.sink.split.i_crit_edge, label %if.end6.i

if.end7.i.i.err_free_hw.sink.split.sink.split.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_hw.sink.split.sink.split.i

if.end6.i:                                        ; preds = %if.end7.i.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %12 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource.i, align 8
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i113 = icmp eq i32 %15, 0
  %sub.i = sub i32 1, %13
  %add.i = add i32 %sub.i, %15
  %cond.i = select i1 %cmp.i113, i32 0, i32 %add.i
  %call15.i = tail call ptr @ioremap(i32 noundef %13, i32 noundef %cond.i) #8
  %regstart.i = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %regstart.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call15.i, ptr %regstart.i, align 4
  %tobool17.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool17.not.i, label %do.end.i, label %if.end21.i

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev1.i, align 8
  %dev.i114 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i114, ptr noundef nonnull @.str.52, ptr noundef null) #11
  br label %err_resource_free.i

if.end21.i:                                       ; preds = %if.end6.i
  %evtq_work.i.i = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 19
  tail call void @__init_work(ptr noundef %evtq_work.i.i, i32 noundef 0) #8
  %19 = ptrtoint ptr %evtq_work.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %evtq_work.i.i, align 16
  %lockdep_map.i.i = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 19, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @csio_hw_init_workers.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i.i = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 19, i32 1
  %20 = ptrtoint ptr %entry4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry4.i.i, ptr %entry4.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 19, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry4.i.i, ptr %prev.i.i.i, align 8
  %func.i.i = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 19, i32 2
  %22 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @csio_evtq_worker, ptr %func.i.i, align 4
  %call22.i = tail call i32 @csio_hw_init(ptr noundef nonnull %call1.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %err_unmap_bar.i

if.end25.i:                                       ; preds = %if.end21.i
  %23 = load ptr, ptr @csio_debugfs_root, align 4
  %tobool.not.i47.i = icmp eq ptr %23, null
  br i1 %tobool.not.i47.i, label %if.end25.i.if.end15_crit_edge, label %if.then.i.i

if.end25.i.if.end15_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then.i.i:                                      ; preds = %if.end25.i
  %24 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev1.i, align 8
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44, i32 3
  %26 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.pci_name.exit.i.i_crit_edge

if.then.i.i.pci_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %28 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i.i, align 4
  br label %pci_name.exit.i.i

pci_name.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.i.pci_name.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %29, %if.end.i.i.i.i ], [ %27, %if.then.i.i.pci_name.exit.i.i_crit_edge ]
  %call1.i.i115 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i.i.i, ptr noundef nonnull %23) #8
  %debugfs_root.i.i = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 54
  %30 = ptrtoint ptr %debugfs_root.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call1.i.i115, ptr %debugfs_root.i.i, align 16
  %tobool.not.i.i1.i.i = icmp eq ptr %call1.i.i115, null
  %cmp.i.i.i.i = icmp ugt ptr %call1.i.i115, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i1.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %pci_name.exit.i.i.if.end15_crit_edge, label %if.end.i.i.i

pci_name.exit.i.i.if.end15_crit_edge:             ; preds = %pci_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end.i.i.i:                                     ; preds = %pci_name.exit.i.i
  %31 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regstart.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 30680
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !171
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %and.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.end4.i.i.i_crit_edge, label %if.then3.i.i.i

if.end.i.i.i.if.end4.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %debugfs_root.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %debugfs_root.i.i, align 16
  tail call void @debugfs_create_file_size(ptr noundef nonnull @.str.56, i16 noundef zeroext 256, ptr noundef %36, ptr noundef nonnull %call1.i.i.i.i, ptr noundef nonnull @csio_mem_debugfs_fops, i64 noundef 5242880) #8
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.then3.i.i.i, %if.end.i.i.i.if.end4.i.i.i_crit_edge
  %and5.i.i.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end4.i.i.i.if.end8.i.i.i_crit_edge, label %if.then7.i.i.i

if.end4.i.i.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %debugfs_root.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %debugfs_root.i.i, align 16
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call1.i.i.i.i, i32 1
  tail call void @debugfs_create_file_size(ptr noundef nonnull @.str.57, i16 noundef zeroext 256, ptr noundef %38, ptr noundef %add.ptr.i.i.i.i, ptr noundef nonnull @csio_mem_debugfs_fops, i64 noundef 5242880) #8
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then7.i.i.i, %if.end4.i.i.i.if.end8.i.i.i_crit_edge
  %chip_ops.i.i.i = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 52
  %39 = ptrtoint ptr %chip_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip_ops.i.i.i, align 4
  %chip_dfs_create_ext_mem.i.i.i = getelementptr inbounds %struct.csio_hw_chip_ops, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %chip_dfs_create_ext_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip_dfs_create_ext_mem.i.i.i, align 4
  tail call void %42(ptr noundef nonnull %call1.i.i.i.i) #8
  br label %if.end15

err_unmap_bar.i:                                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i116 = tail call zeroext i1 @cancel_work_sync(ptr noundef %evtq_work.i.i) #8
  %43 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regstart.i, align 4
  tail call void @iounmap(ptr noundef %44) #8
  br label %err_resource_free.i

err_resource_free.i:                              ; preds = %err_unmap_bar.i, %do.end.i
  %45 = ptrtoint ptr %scsi_dma_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %scsi_dma_pool.i.i, align 16
  tail call void @dma_pool_destroy(ptr noundef %46) #8
  %47 = ptrtoint ptr %scsi_dma_pool.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %scsi_dma_pool.i.i, align 16
  br label %err_free_hw.sink.split.sink.split.i

err_free_hw.sink.split.sink.split.i:              ; preds = %err_resource_free.i, %if.end7.i.i.err_free_hw.sink.split.sink.split.i_crit_edge
  %48 = ptrtoint ptr %rnode_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rnode_mempool.i.i, align 8
  tail call void @mempool_destroy(ptr noundef %49) #8
  %50 = ptrtoint ptr %rnode_mempool.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %rnode_mempool.i.i, align 8
  br label %err_free_hw.sink.split.i

err_free_hw.sink.split.i:                         ; preds = %err_free_hw.sink.split.sink.split.i, %if.end.i.i.err_free_hw.sink.split.i_crit_edge
  %51 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mb_mempool.i.i, align 4
  tail call void @mempool_destroy(ptr noundef %52) #8
  %53 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %mb_mempool.i.i, align 4
  br label %err_free_hw.i

err_free_hw.i:                                    ; preds = %err_free_hw.sink.split.i, %if.end.i112.err_free_hw.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #8
  br label %do.end63.sink.split.sink.split

if.end15:                                         ; preds = %if.end8.i.i.i, %pci_name.exit.i.i.if.end15_crit_edge, %if.end25.i.if.end15_crit_edge
  %call16 = tail call zeroext i1 @pcie_relaxed_ordering_enabled(ptr noundef %pdev) #8
  br i1 %call16, label %if.end15.if.end18_crit_edge, label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 11
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %or = or i32 %55, 1024
  store i32 %or, ptr %flags, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call1.i.i.i.i, ptr %driver_data.i.i, align 4
  %call19 = tail call i32 @csio_hw_start(ptr noundef nonnull %call1.i.i.i.i) #8
  %57 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call19, label %if.end18.err_lnode_exit_crit_edge [
    i32 0, label %if.end25
    i32 -22, label %do.end
  ]

if.end18.err_lnode_exit_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_lnode_exit

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.44) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %fwrev_str = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 26
  %fwrev = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 28
  %58 = ptrtoint ptr %fwrev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fwrev, align 128
  %shr = lshr i32 %59, 24
  %shr28 = lshr i32 %59, 16
  %and29 = and i32 %shr28, 255
  %shr31 = lshr i32 %59, 8
  %and32 = and i32 %shr31, 255
  %and35 = and i32 %59, 255
  %call36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %fwrev_str, ptr noundef nonnull @.str.46, i32 noundef %shr, i32 noundef %and29, i32 noundef %and32, i32 noundef %and35)
  %num_pports = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 36
  %60 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %num_pports, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp38142.not = icmp eq i8 %61, 0
  br i1 %cmp38142.not, label %if.end25.cleanup_crit_edge, label %for.body.lr.ph

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end25
  %lock = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end54.for.body_crit_edge, %for.body.lr.ph
  %i.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end54.for.body_crit_edge ]
  %call41 = tail call ptr @csio_shost_init(ptr noundef nonnull %call1.i.i.i.i, ptr noundef %dev.i, i1 zeroext undef, ptr noundef null)
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %for.body.err_lnode_exit_crit_edge, label %if.end44

for.body.err_lnode_exit_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_lnode_exit

if.end44:                                         ; preds = %for.body
  %portid = getelementptr %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 41, i32 %i.0143, i32 2
  %62 = ptrtoint ptr %portid to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %portid, align 4
  %portid45 = getelementptr inbounds %struct.csio_lnode, ptr %call41, i32 0, i32 2
  %64 = ptrtoint ptr %portid45 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %portid45, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %call46 = tail call i32 @csio_lnode_start(ptr noundef nonnull %call41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br i1 %cmp47.not, label %if.end54, label %if.end44.err_lnode_exit_crit_edge

if.end44.err_lnode_exit_crit_edge:                ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_lnode_exit

if.end54:                                         ; preds = %if.end44
  %add.ptr.i.i = getelementptr i8, ptr %call41, i32 -2448
  tail call void @csio_fchost_attr_init(ptr noundef nonnull %call41) #8
  tail call void @scsi_scan_host(ptr noundef %add.ptr.i.i) #8
  %inc = add nuw nsw i32 %i.0143, 1
  %65 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %num_pports, align 16
  %conv37 = zext i8 %66 to i32
  %cmp38 = icmp ult i32 %inc, %conv37
  br i1 %cmp38, label %if.end54.for.body_crit_edge, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54.for.body_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

err_lnode_exit:                                   ; preds = %if.end44.err_lnode_exit_crit_edge, %for.body.err_lnode_exit_crit_edge, %if.end18.err_lnode_exit_crit_edge
  %rv.3 = phi i32 [ %call19, %if.end18.err_lnode_exit_crit_edge ], [ -19, %for.body.err_lnode_exit_crit_edge ], [ -19, %if.end44.err_lnode_exit_crit_edge ]
  tail call void @csio_lnodes_block_request(ptr noundef nonnull %call1.i.i.i.i)
  %lock58 = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock58) #8
  %call59 = tail call i32 @csio_hw_stop(ptr noundef nonnull %call1.i.i.i.i) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock58) #8
  tail call void @csio_lnodes_unblock_request(ptr noundef nonnull %call1.i.i.i.i)
  tail call void @csio_lnodes_exit(ptr noundef nonnull %call1.i.i.i.i, i1 noundef zeroext false)
  tail call void @csio_intr_disable(ptr noundef %call1.i.i.i.i, i1 noundef zeroext true) #8
  %call.i.i119 = tail call zeroext i1 @cancel_work_sync(ptr noundef %evtq_work.i.i) #8
  tail call void @csio_hw_exit(ptr noundef %call1.i.i.i.i) #8
  %67 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regstart.i, align 4
  tail call void @iounmap(ptr noundef %68) #8
  %debugfs_root.i.i121 = getelementptr inbounds %struct.csio_hw, ptr %call1.i.i.i.i, i32 0, i32 54
  %69 = ptrtoint ptr %debugfs_root.i.i121 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %debugfs_root.i.i121, align 16
  tail call void @debugfs_remove(ptr noundef %70) #8
  %71 = ptrtoint ptr %scsi_dma_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %scsi_dma_pool.i.i, align 16
  tail call void @dma_pool_destroy(ptr noundef %72) #8
  %73 = ptrtoint ptr %scsi_dma_pool.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %scsi_dma_pool.i.i, align 16
  %74 = ptrtoint ptr %rnode_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rnode_mempool.i.i, align 8
  tail call void @mempool_destroy(ptr noundef %75) #8
  %76 = ptrtoint ptr %rnode_mempool.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %rnode_mempool.i.i, align 8
  %77 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mb_mempool.i.i, align 4
  tail call void @mempool_destroy(ptr noundef %78) #8
  %79 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %mb_mempool.i.i, align 4
  tail call void @kfree(ptr noundef %call1.i.i.i.i) #8
  br label %do.end63.sink.split.sink.split

do.end63.sink.split.sink.split:                   ; preds = %err_lnode_exit, %err_free_hw.i, %if.end11.do.end63.sink.split.sink.split_crit_edge, %if.then14.i
  %rv.5.ph.ph = phi i32 [ -19, %if.then14.i ], [ %rv.3, %err_lnode_exit ], [ -19, %if.end11.do.end63.sink.split.sink.split_crit_edge ], [ -19, %err_free_hw.i ]
  tail call void @pci_release_selected_regions(ptr noundef %pdev, i32 noundef %call.i) #8
  br label %do.end63.sink.split

do.end63.sink.split:                              ; preds = %do.end63.sink.split.sink.split, %if.end.i.do.end63.sink.split_crit_edge
  %rv.5.ph = phi i32 [ -19, %if.end.i.do.end63.sink.split_crit_edge ], [ %rv.5.ph.ph, %do.end63.sink.split.sink.split ]
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  br label %do.end63

do.end63:                                         ; preds = %do.end63.sink.split, %if.end.do.end63_crit_edge
  %rv.5 = phi i32 [ -19, %if.end.do.end63_crit_edge ], [ %rv.5.ph, %do.end63.sink.split ]
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.48, i32 noundef %rv.5) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %if.end54.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.5, %do.end63 ], [ 0, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_remove_one(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_select_bars(ptr noundef %pdev, i32 noundef 512) #8
  tail call void @csio_lnodes_block_request(ptr noundef %1)
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %call2 = tail call i32 @csio_hw_stop(ptr noundef %1) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  tail call void @csio_lnodes_unblock_request(ptr noundef %1)
  tail call void @csio_lnodes_exit(ptr noundef %1, i1 noundef zeroext false)
  tail call void @csio_intr_disable(ptr noundef %1, i1 noundef zeroext true) #8
  %evtq_work.i.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %evtq_work.i.i) #8
  tail call void @csio_hw_exit(ptr noundef %1) #8
  %regstart.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regstart.i, align 4
  tail call void @iounmap(ptr noundef %3) #8
  %debugfs_root.i.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %debugfs_root.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_root.i.i, align 8
  tail call void @debugfs_remove(ptr noundef %5) #8
  %scsi_dma_pool.i.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 43
  %6 = ptrtoint ptr %scsi_dma_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scsi_dma_pool.i.i, align 8
  tail call void @dma_pool_destroy(ptr noundef %7) #8
  %8 = ptrtoint ptr %scsi_dma_pool.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %scsi_dma_pool.i.i, align 8
  %rnode_mempool.i.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 45
  %9 = ptrtoint ptr %rnode_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rnode_mempool.i.i, align 8
  tail call void @mempool_destroy(ptr noundef %10) #8
  %11 = ptrtoint ptr %rnode_mempool.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rnode_mempool.i.i, align 8
  %mb_mempool.i.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 44
  %12 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mb_mempool.i.i, align 4
  tail call void @mempool_destroy(ptr noundef %13) #8
  %14 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %mb_mempool.i.i, align 4
  tail call void @kfree(ptr noundef %1) #8
  tail call void @pci_release_selected_regions(ptr noundef %pdev, i32 noundef %call1) #8
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pcie_relaxed_ordering_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_hw_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_lnode_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_select_bars(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_selected_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_selected_regions(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_hw_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_evtq_worker(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_fchost_attr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_hw_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_pci_error_detected(ptr noundef %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @csio_lnodes_block_request(ptr noundef %1)
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm_state.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 5) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  tail call void @csio_lnodes_unblock_request(ptr noundef %1)
  tail call void @csio_lnodes_exit(ptr noundef %1, i1 noundef zeroext false)
  tail call void @csio_intr_disable(ptr noundef %1, i1 noundef zeroext true) #8
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  %cond = select i1 %cmp, i32 4, i32 3
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_pci_slot_reset(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #8
  tail call void @pci_restore_state(ptr noundef %pdev) #8
  %call2 = tail call i32 @pci_save_state(ptr noundef %pdev) #8
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm_state.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 6) #8
  %call3 = tail call i32 @csio_is_hw_ready(ptr noundef %1) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, 0
  br i1 %tobool5.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.61.sink = phi ptr [ @.str.58, %entry.cleanup.sink.split_crit_edge ], [ @.str.61, %if.end.cleanup.sink.split_crit_edge ]
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull %.str.61.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %if.end.cleanup_crit_edge ], [ 4, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_pci_resume(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_pports = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_pports, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp50.not = icmp eq i8 %3, 0
  br i1 %cmp50.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end12.for.body_crit_edge ]
  %call2 = tail call ptr @csio_shost_init(ptr noundef %1, ptr noundef %dev, i1 zeroext undef, ptr noundef null)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.err_resume_exit_crit_edge, label %if.end

for.body.err_resume_exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_resume_exit

if.end:                                           ; preds = %for.body
  %portid = getelementptr %struct.csio_hw, ptr %1, i32 0, i32 41, i32 %i.051, i32 2
  %4 = ptrtoint ptr %portid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %portid, align 4
  %portid3 = getelementptr inbounds %struct.csio_lnode, ptr %call2, i32 0, i32 2
  %6 = ptrtoint ptr %portid3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %portid3, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %call4 = tail call i32 @csio_lnode_start(ptr noundef nonnull %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br i1 %cmp5.not, label %if.end12, label %if.end.err_resume_exit_crit_edge

if.end.err_resume_exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_resume_exit

if.end12:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %call2, i32 -2448
  tail call void @csio_fchost_attr_init(ptr noundef nonnull %call2) #8
  tail call void @scsi_scan_host(ptr noundef %add.ptr.i.i) #8
  %inc = add nuw nsw i32 %i.051, 1
  %7 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_pports, align 8
  %conv = zext i8 %8 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end12.for.body_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

err_resume_exit:                                  ; preds = %if.end.err_resume_exit_crit_edge, %for.body.err_resume_exit_crit_edge
  tail call void @csio_lnodes_block_request(ptr noundef %1)
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %call17 = tail call i32 @csio_hw_stop(ptr noundef %1) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  tail call void @csio_lnodes_unblock_request(ptr noundef %1)
  tail call void @csio_lnodes_exit(ptr noundef %1, i1 noundef zeroext false)
  tail call void @csio_intr_disable(ptr noundef %1, i1 noundef zeroext true) #8
  %evtq_work.i.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %evtq_work.i.i) #8
  tail call void @csio_hw_exit(ptr noundef %1) #8
  %regstart.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regstart.i, align 4
  tail call void @iounmap(ptr noundef %10) #8
  %debugfs_root.i.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 54
  %11 = ptrtoint ptr %debugfs_root.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debugfs_root.i.i, align 8
  tail call void @debugfs_remove(ptr noundef %12) #8
  %scsi_dma_pool.i.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 43
  %13 = ptrtoint ptr %scsi_dma_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scsi_dma_pool.i.i, align 8
  tail call void @dma_pool_destroy(ptr noundef %14) #8
  %15 = ptrtoint ptr %scsi_dma_pool.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %scsi_dma_pool.i.i, align 8
  %rnode_mempool.i.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 45
  %16 = ptrtoint ptr %rnode_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rnode_mempool.i.i, align 8
  tail call void @mempool_destroy(ptr noundef %17) #8
  %18 = ptrtoint ptr %rnode_mempool.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rnode_mempool.i.i, align 8
  %mb_mempool.i.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 44
  %19 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mb_mempool.i.i, align 4
  tail call void @mempool_destroy(ptr noundef %20) #8
  %21 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %mb_mempool.i.i, align 4
  tail call void @kfree(ptr noundef %1) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef -19) #11
  br label %cleanup

cleanup:                                          ; preds = %err_resume_exit, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_is_hw_ready(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_attach_transport(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !57, !59, !60, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !110, !111, !112, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !132, !133, !135, !137, !139, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 371, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @csio_config_queues._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @csio_config_queues._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 384, i32 3}
!10 = !{ptr @csio_config_queues._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @csio_config_queues._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 393, i32 3}
!14 = !{ptr @csio_config_queues._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @csio_config_queues._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 419, i32 5}
!18 = !{ptr @csio_config_queues._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @csio_config_queues._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 431, i32 5}
!22 = !{ptr @csio_config_queues._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @csio_config_queues._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 704, i32 3}
!26 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @csio_lnodes_block_request._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @csio_lnodes_block_request._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 743, i32 3}
!31 = !{ptr @csio_lnodes_unblock_request._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @csio_lnodes_unblock_request._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 781, i32 3}
!35 = !{ptr @csio_lnodes_block_by_port._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @csio_lnodes_block_by_port._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 822, i32 3}
!39 = !{ptr @csio_lnodes_unblock_by_port._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @csio_lnodes_unblock_by_port._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 861, i32 3}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @csio_lnodes_exit._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @csio_lnodes_exit._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__initcall__kmod_csiostor__316_1248_csio_init6, !47, !"__initcall__kmod_csiostor__316_1248_csio_init6", i1 false, i1 false}
!47 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1248, i32 1}
!48 = !{ptr @__exitcall_csio_exit, !49, !"__exitcall_csio_exit", i1 false, i1 false}
!49 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1249, i32 1}
!50 = !{ptr @__UNIQUE_ID_author317, !51, !"__UNIQUE_ID_author317", i1 false, i1 false}
!51 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1250, i32 1}
!52 = !{ptr @__UNIQUE_ID_description318, !53, !"__UNIQUE_ID_description318", i1 false, i1 false}
!53 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1251, i32 1}
!54 = !{ptr @__UNIQUE_ID_file319, !55, !"__UNIQUE_ID_file319", i1 false, i1 false}
!55 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1252, i32 1}
!56 = !{ptr @__UNIQUE_ID_license320, !55, !"__UNIQUE_ID_license320", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_version321, !58, !"__UNIQUE_ID_version321", i1 false, i1 false}
!58 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1254, i32 1}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @__modver_attr, !58, !"__modver_attr", i1 false, i1 false}
!63 = !{ptr @__UNIQUE_ID_firmware322, !64, !"__UNIQUE_ID_firmware322", i1 false, i1 false}
!64 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1255, i32 1}
!65 = !{ptr @__UNIQUE_ID_firmware323, !66, !"__UNIQUE_ID_firmware323", i1 false, i1 false}
!66 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1256, i32 1}
!67 = !{ptr @__UNIQUE_ID_softdep324, !68, !"__UNIQUE_ID_softdep324", i1 false, i1 false}
!68 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1257, i32 1}
!69 = !{ptr @csio_fcoe_transport, !70, !"csio_fcoe_transport", i1 false, i1 false}
!70 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 57, i32 40}
!71 = !{ptr @csio_fcoe_transport_vport, !72, !"csio_fcoe_transport_vport", i1 false, i1 false}
!72 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 58, i32 40}
!73 = !{ptr @csio_mem_debugfs_fops, !74, !"csio_mem_debugfs_fops", i1 false, i1 false}
!74 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 106, i32 37}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 271, i32 4}
!84 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @csio_create_queues._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @csio_create_queues._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 281, i32 3}
!89 = !{ptr @csio_create_queues._entry.32, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @csio_create_queues._entry_ptr.34, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 290, i32 3}
!93 = !{ptr @csio_create_queues._entry.35, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @csio_create_queues._entry_ptr.37, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 304, i32 5}
!97 = !{ptr @csio_create_queues._entry.38, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @csio_create_queues._entry_ptr.40, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 312, i32 5}
!101 = !{ptr @csio_create_queues._entry.41, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @csio_create_queues._entry_ptr.43, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @csio_pci_driver, !104, !"csio_pci_driver", i1 false, i1 false}
!104 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1186, i32 26}
!105 = !{ptr @csio_pci_tbl, !106, !"csio_pci_tbl", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/chelsio/cxgb4/t4_pci_id_tbl.h", i32 94, i32 1}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 971, i32 4}
!109 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @csio_probe_one._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @csio_probe_one._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 978, i32 25}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1020, i32 2}
!116 = !{ptr @csio_probe_one._entry.47, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @csio_probe_one._entry_ptr.49, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 211, i32 3}
!120 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @csio_pci_init._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @csio_pci_init._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 535, i32 3}
!125 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @csio_hw_alloc._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @csio_hw_alloc._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 480, i32 38}
!130 = !{ptr @csio_hw_init_workers.__key, !131, !"__key", i1 false, i1 false}
!131 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 247, i32 2}
!132 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @csio_debugfs_root, !134, !"csio_debugfs_root", i1 false, i1 false}
!134 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 55, i32 23}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 130, i32 28}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 132, i32 28}
!139 = !{ptr @csio_err_handler, !140, !"csio_err_handler", i1 false, i1 false}
!140 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1165, i32 34}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1090, i32 3}
!143 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @csio_pci_slot_reset._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @csio_pci_slot_reset._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1109, i32 3}
!148 = !{ptr @csio_pci_slot_reset._entry.60, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @csio_pci_slot_reset._entry_ptr.62, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1162, i32 2}
!152 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @csio_pci_resume._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @csio_pci_resume._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/csiostor/csio_init.c", i32 1206, i32 2}
!157 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @csio_init._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @csio_init._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i64 2153904589, i64 2153904614}
!171 = !{i64 5007835}
!172 = !{i64 2156170939}
