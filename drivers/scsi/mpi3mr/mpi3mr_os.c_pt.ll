; ModuleID = '/llk/IR_all_yes/drivers/scsi/mpi3mr/mpi3mr_os.c_pt.bc'
source_filename = "../drivers/scsi/mpi3mr/mpi3mr_os.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.mpi3mr_ioc = type { %struct.list_head, ptr, ptr, i8, i32, i8, i32, [32 x i8], [32 x i8], ptr, i32, i32, i64, i16, i8, i16, i32, i16, i16, ptr, i32, %struct.spinlock, i16, i32, i16, i8, ptr, i32, i32, ptr, i16, i8, i16, i16, ptr, i16, ptr, %struct.mpi3mr_drv_cmd, %struct.mpi3mr_ioc_facts, i16, i32, ptr, ptr, i32, i32, i16, i16, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, i32, i16, ptr, ptr, i32, %struct.spinlock, i32, [4 x i32], [32 x i8], ptr, %struct.spinlock, %struct.list_head, [20 x i8], ptr, %struct.delayed_work, %struct.spinlock, i8, i8, i16, i8, i16, %struct.spinlock, %struct.list_head, i32, ptr, ptr, i16, ptr, %struct.spinlock, %struct.mpi3mr_drv_cmd, [16 x %struct.mpi3mr_drv_cmd], [4 x %struct.mpi3mr_drv_cmd], i16, ptr, i16, ptr, %struct.list_head, i16, ptr, %struct.list_head, i32, i8, i8, i32, %struct.mutex, %struct.wait_queue_head, i8, i16, i16, i32, i16, ptr, %struct.mpi3_driver_info_layout, i16, i16, i16, i16, i16 }
%struct.mpi3mr_ioc_facts = type { i32, %struct.mpi3mr_compimg_ver, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.mpi3mr_compimg_ver = type { i16, i16, i8, i8, i8, i8 }
%struct.mpi3mr_drv_cmd = type { %struct.mutex, %struct.completion, ptr, ptr, i8, i16, i16, i16, i32, i8, i8, i16, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mpi3_driver_info_layout = type { i32, [12 x i8], [16 x i8], [12 x i8], [20 x i8], [32 x i8], [20 x i8], i32 }
%struct.mpi3mr_fwevt = type { %struct.list_head, %struct.work_struct, ptr, i16, i8, i8, i32, %struct.kref, [0 x i8] }
%struct.mpi3mr_tgt_dev = type { %struct.list_head, ptr, i16, i16, i16, i16, i16, i8, i8, i8, i16, i64, %union._form_spec_inf, %struct.kref }
%union._form_spec_inf = type { %struct.tgt_dev_sas_sata }
%struct.tgt_dev_sas_sata = type { i64, i16 }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mpi3mr_stgt_priv_data = type { ptr, i16, i16, i32, %struct.atomic_t, i8, i8, i8, ptr, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.scmd_priv = type { i16, i8, i8, ptr, i16, i32, i32, [128 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.mpi3_event_notification_reply = type { i16, i8, i8, i16, i8, i8, i16, i16, i32, i8, i8, i16, i32, [1 x i32] }
%struct.mpi3_event_data_device_status_change = type { i16, i8, i8, i16, i16, i64, [8 x i8] }
%struct.mpi3_event_sas_topo_phy_entry = type { i16, i8, i8 }
%struct.mpi3_event_pcie_topo_port_entry = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.mpi3_event_data_temp_threshold = type { i16, i8, i8, i16, i16, i32, i32 }
%struct.mpi3_event_data_cable_management = type { i32, i8, i8, i16 }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mpi3_default_reply_descriptor = type { [2 x i32], i16, i16, i16, i16 }
%struct.mpi3_status_reply_descriptor = type { i16, i16, i32, i16, i16, i16, i16 }
%struct.mpi3_scsi_io_reply = type { i16, i8, i8, i16, i8, i8, i16, i16, i32, i8, i8, i16, i32, i32, i32, i16, i16, i32, i16, i16, i32, i64 }
%struct.mpi3_success_reply_descriptor = type { [2 x i32], i16, i16, i16, i16 }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.mpi3mr_intr_info = type { ptr, i16, ptr, [32 x i8] }
%struct.op_reply_qinfo = type { i16, i16, i16, i16, i16, ptr, ptr, i32, i8, %struct.atomic_t, i8, %struct.atomic_t, i32 }
%struct.mpi3_device_page0 = type { %struct.mpi3_config_page_header, i16, i16, i16, i16, i64, i16, i8, i8, i16, i16, i16, i16, [3 x i8], i8, %union.mpi3_device0_dev_spec_format }
%struct.mpi3_config_page_header = type { i8, i8, i8, i8, i16, i8, i8 }
%union.mpi3_device0_dev_spec_format = type { %struct.mpi3_device0_sas_sata_format, [8 x i8] }
%struct.mpi3_device0_sas_sata_format = type { i64, i16, i16, i8, i8, i8, i8 }
%struct.mpi3_device0_pcie_format = type { i8, i8, i8, i8, i8, i8, i16, i32, i32, i16, i8, i8, i16, i8, i8 }
%struct.tgt_dev_pcie = type { i32, i16, i8, i8, i8, i16 }
%struct.mpi3_scsi_task_mgmt_request = type { i16, i8, i8, i16, i8, i8, i16, i16, i16, i8, i8, i16, i16, i32, [8 x i8] }
%struct.delayed_dev_rmhs_node = type { %struct.list_head, i16, i8 }
%struct.mpi3_iounit_control_request = type { i16, i8, i8, i16, i8, i8, i16, i8, i8, i32, [2 x i64], [4 x i32], [4 x i16], [8 x i8] }
%struct.mpi3_scsi_task_mgmt_reply = type { i16, i8, i8, i16, i8, i8, i16, i16, i32, i32, i32, i32 }
%struct.mpi3_event_ack_request = type { i16, i8, i8, i16, i8, i8, i16, i16, i8, [3 x i8], i32 }
%struct.delayed_evt_ack_node = type { %struct.list_head, i8, i32 }
%struct.mpi3_event_data_sas_topology_change_list = type { i16, i16, i8, [3 x i8], i8, i8, i8, i8, [1 x %struct.mpi3_event_sas_topo_phy_entry] }
%struct.mpi3_event_data_pcie_topology_change_list = type { i16, i16, i8, [3 x i8], i8, i8, i8, i8, i32, [1 x %struct.mpi3_event_pcie_topo_port_entry] }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.execute_work = type { %struct.work_struct }
%struct.mpi3mr_sdev_priv_data = type { ptr, i32, i8, i32 }
%struct.op_req_qinfo = type { i16, i16, i16, i16, i16, i16, i16, %struct.spinlock, ptr, ptr, i32 }
%struct.mpi3_sysif_registers = type { i64, %union.mpi3_version_union, [2 x i32], i32, i32, i32, i32, i32, i64, i64, [2 x i32], i32, [1007 x i32], i16, i16, i16, i16, [383 x %struct.mpi3_sysif_oper_queue_indexes], i32, i32, i32, i32, i32, [3 x i32], [4 x i32], i64, i32, i32, i32, i32, [2 x i32], i64, i64, i16, i16, [35 x i32], [4 x i32], [192 x i32], [2048 x i32] }
%union.mpi3_version_union = type { i32 }
%struct.mpi3_sysif_oper_queue_indexes = type { i16, i16, i16, i16 }
%struct.mpi3_scsi_io_request = type { i16, i8, i8, i16, i8, i8, i16, i16, i32, i32, i32, [8 x i8], %union.mpi3_scsi_io_cdb_union, [4 x %union.mpi3_sge_union] }
%union.mpi3_scsi_io_cdb_union = type { %struct.mpi3_sge_common, [16 x i8] }
%struct.mpi3_sge_common = type { i64, i32, [3 x i8], i8 }
%union.mpi3_sge_union = type { %struct.mpi3_sge_common }
%struct.mpi3_sge_extended_eedp = type { i8, i8, i16, i32, i16, i16, i16, i8, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.chain_element = type { ptr, i32 }

@mrioc_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mrioc_list, ptr @mrioc_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mrioc_list_lock\00", [16 x i8] zeroinitializer }, align 32
@mrioc_list_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author287 = internal constant [56 x i8] c"author=Broadcom Inc. <mpi3mr-linuxdrv.pdl@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description288 = internal constant [50 x i8] c"description=MPI3 Storage Controller Device Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version290 = internal constant [19 x i8] c"version=8.0.0.61.0\00", section ".modinfo", align 1
@prot_mask = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_prot_mask = internal constant %struct.kernel_param { ptr @___asan_gen_.370, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @prot_mask } }, section "__param", align 4
@__UNIQUE_ID_prot_masktype291 = internal constant [23 x i8] c"parmtype=prot_mask:int\00", section ".modinfo", align 1
@__UNIQUE_ID_prot_mask292 = internal constant [59 x i8] c"parm=prot_mask:Host protection capabilities mask, def=0x07\00", section ".modinfo", align 1
@prot_guard_mask = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_prot_guard_mask = internal constant %struct.kernel_param { ptr @___asan_gen_.373, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @prot_guard_mask } }, section "__param", align 4
@__UNIQUE_ID_prot_guard_masktype293 = internal constant [29 x i8] c"parmtype=prot_guard_mask:int\00", section ".modinfo", align 1
@__UNIQUE_ID_prot_guard_mask294 = internal constant [56 x i8] c"parm=prot_guard_mask: Host protection guard mask, def=3\00", section ".modinfo", align 1
@logging_level = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_logging_level = internal constant %struct.kernel_param { ptr @___asan_gen_.376, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @logging_level } }, section "__param", align 4
@__UNIQUE_ID_logging_leveltype295 = internal constant [27 x i8] c"parmtype=logging_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_logging_level296 = internal constant [74 x i8] c"parm=logging_level: bits for enabling additional logging info (default=0)\00", section ".modinfo", align 1
@mpi3mr_flush_host_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: %s :Flushing Host I/O cmds post reset\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mpi3mr_flush_host_io\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/mpi3mr/mpi3mr_os.c\00", [32 x i8] zeroinitializer }, align 32
@mpi3mr_flush_host_io._entry_ptr = internal global ptr @mpi3mr_flush_host_io._entry, section ".printk_index", align 4
@mpi3mr_flush_host_io._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: %s :Flushed %d Host I/O cmds\0A\00", [60 x i8] zeroinitializer }, align 32
@mpi3mr_flush_host_io._entry_ptr.6 = internal global ptr @mpi3mr_flush_host_io._entry.4, section ".printk_index", align 4
@mpi3mr_flush_delayed_cmd_lists._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 1487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: flushing delayed dev_remove_hs commands\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mpi3mr_flush_delayed_cmd_lists\00", [33 x i8] zeroinitializer }, align 32
@mpi3mr_flush_delayed_cmd_lists._entry_ptr = internal global ptr @mpi3mr_flush_delayed_cmd_lists._entry, section ".printk_index", align 4
@mpi3mr_flush_delayed_cmd_lists._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 1494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: flushing delayed event ack commands\0A\00", [53 x i8] zeroinitializer }, align 32
@mpi3mr_flush_delayed_cmd_lists._entry_ptr.11 = internal global ptr @mpi3mr_flush_delayed_cmd_lists._entry.9, section ".printk_index", align 4
@mpi3mr_os_handle_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 2217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: %s :Failed to add device in the device add event\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mpi3mr_os_handle_events\00", [40 x i8] zeroinitializer }, align 32
@mpi3mr_os_handle_events._entry_ptr = internal global ptr @mpi3mr_os_handle_events._entry, section ".printk_index", align 4
@mpi3mr_os_handle_events._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 2274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: %s :event 0x%02x is not handled\0A\00", [57 x i8] zeroinitializer }, align 32
@mpi3mr_os_handle_events._entry_ptr.16 = internal global ptr @mpi3mr_os_handle_events._entry.14, section ".printk_index", align 4
@mpi3mr_os_handle_events._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.3, i32 2282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: %s :failure at %s:%d/%s()!\0A\00", [62 x i8] zeroinitializer }, align 32
@mpi3mr_os_handle_events._entry_ptr.19 = internal global ptr @mpi3mr_os_handle_events._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: scsi_reply is NULL, this shouldn't happen\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Ran out of sense buffers\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Cannot Identify scmd for host_tag 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@mpi3mr_process_op_reply_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 2638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: %s :scmd->result 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mpi3mr_process_op_reply_desc\00", [35 x i8] zeroinitializer }, align 32
@mpi3mr_process_op_reply_desc._entry_ptr = internal global ptr @mpi3mr_process_op_reply_desc._entry, section ".printk_index", align 4
@mpi3mr_process_op_reply_desc._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 2643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\016%s: %s :Command issued to handle 0x%02x returned with error 0x%04x loginfo 0x%08x, qid %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mpi3mr_process_op_reply_desc._entry_ptr.27 = internal global ptr @mpi3mr_process_op_reply_desc._entry.25, section ".printk_index", align 4
@mpi3mr_process_op_reply_desc._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.3, i32 2646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\016%s:  host_tag %d scsi_state 0x%02x scsi_status 0x%02x, xfer_cnt %d resp_data 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@mpi3mr_process_op_reply_desc._entry_ptr.30 = internal global ptr @mpi3mr_process_op_reply_desc._entry.28, section ".printk_index", align 4
@mpi3mr_process_op_reply_desc._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.3, i32 2652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016%s: %s :sense_count 0x%x, sense_key 0x%x ASC 0x%x, ASCQ 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@mpi3mr_process_op_reply_desc._entry_ptr.33 = internal global ptr @mpi3mr_process_op_reply_desc._entry.31, section ".printk_index", align 4
@mpi3mr_wait_for_host_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 3270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s: %s :Waiting for %d seconds prior to reset for %d I/O\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mpi3mr_wait_for_host_io\00", [40 x i8] zeroinitializer }, align 32
@mpi3mr_wait_for_host_io._entry_ptr = internal global ptr @mpi3mr_wait_for_host_io._entry, section ".printk_index", align 4
@mpi3mr_wait_for_host_io._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 3282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: %s :Pending I/Os after wait is: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@mpi3mr_wait_for_host_io._entry_ptr.38 = internal global ptr @mpi3mr_wait_for_host_io._entry.36, section ".printk_index", align 4
@mpi3mr_pci_id_table = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4096, i32 165, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@mpi3mr_remove_tgtdev_from_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: %s :Removing handle(0x%04x), wwid(0x%016llx)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mpi3mr_remove_tgtdev_from_host\00", [33 x i8] zeroinitializer }, align 32
@mpi3mr_remove_tgtdev_from_host._entry_ptr = internal global ptr @mpi3mr_remove_tgtdev_from_host._entry, section ".printk_index", align 4
@mpi3mr_remove_tgtdev_from_host._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: %s :Removed handle(0x%04x), wwid(0x%016llx)\0A\00", [45 x i8] zeroinitializer }, align 32
@mpi3mr_remove_tgtdev_from_host._entry_ptr.43 = internal global ptr @mpi3mr_remove_tgtdev_from_host._entry.41, section ".printk_index", align 4
@mpi3mr_update_tgtdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: %s : Disabling DIX0 prot capability\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mpi3mr_update_tgtdev\00", [43 x i8] zeroinitializer }, align 32
@mpi3mr_update_tgtdev._entry_ptr = internal global ptr @mpi3mr_update_tgtdev._entry, section ".printk_index", align 4
@mpi3mr_update_tgtdev._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016%s: because HBA does not support DIX0 operation on NVME drives\0A\00", [62 x i8] zeroinitializer }, align 32
@mpi3mr_update_tgtdev._entry_ptr.48 = internal global ptr @mpi3mr_update_tgtdev._entry.46, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mpi3mr_dev_rmhs_send_tm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 1672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: %s :DevRmHs: tr:handle(0x%04x) is postponed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mpi3mr_dev_rmhs_send_tm\00", [40 x i8] zeroinitializer }, align 32
@mpi3mr_dev_rmhs_send_tm._entry_ptr = internal global ptr @mpi3mr_dev_rmhs_send_tm._entry, section ".printk_index", align 4
@mpi3mr_dev_rmhs_send_tm._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 1681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016%s: %s :Issuing TR TM: for devhandle 0x%04x with dev_rmhs %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mpi3mr_dev_rmhs_send_tm._entry_ptr.53 = internal global ptr @mpi3mr_dev_rmhs_send_tm._entry.51, section ".printk_index", align 4
@mpi3mr_dev_rmhs_send_tm._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.3, i32 1685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: %s :Issue TM: Command is in use\0A\00", [57 x i8] zeroinitializer }, align 32
@mpi3mr_dev_rmhs_send_tm._entry_ptr.56 = internal global ptr @mpi3mr_dev_rmhs_send_tm._entry.54, section ".printk_index", align 4
@mpi3mr_dev_rmhs_send_tm._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.3, i32 1703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: %s :Issue DevRmHsTM: Admin Post failed\0A\00", [50 x i8] zeroinitializer }, align 32
@mpi3mr_dev_rmhs_send_tm._entry_ptr.59 = internal global ptr @mpi3mr_dev_rmhs_send_tm._entry.57, section ".printk_index", align 4
@mpi3mr_dev_rmhs_complete_tm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 1594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\016%s: dev_rmhs_tr_complete:handle(0x%04x), ioc_status(0x%04x), loginfo(0x%08x), term_count(%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mpi3mr_dev_rmhs_complete_tm\00", [36 x i8] zeroinitializer }, align 32
@mpi3mr_dev_rmhs_complete_tm._entry_ptr = internal global ptr @mpi3mr_dev_rmhs_complete_tm._entry, section ".printk_index", align 4
@mpi3mr_dev_rmhs_complete_tm._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.3, i32 1597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s: Issuing IOU CTL: handle(0x%04x) dev_rmhs idx(%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@mpi3mr_dev_rmhs_complete_tm._entry_ptr.64 = internal global ptr @mpi3mr_dev_rmhs_complete_tm._entry.62, section ".printk_index", align 4
@mpi3mr_dev_rmhs_complete_tm._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.3, i32 1613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: Issue DevRmHsTMIOUCTL: Admin post failed\0A\00", [48 x i8] zeroinitializer }, align 32
@mpi3mr_dev_rmhs_complete_tm._entry_ptr.67 = internal global ptr @mpi3mr_dev_rmhs_complete_tm._entry.65, section ".printk_index", align 4
@mpi3mr_dev_rmhs_complete_iou._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 1523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\016%s: %s :dev_rmhs_iouctrl_complete:handle(0x%04x), ioc_status(0x%04x), loginfo(0x%08x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mpi3mr_dev_rmhs_complete_iou\00", [35 x i8] zeroinitializer }, align 32
@mpi3mr_dev_rmhs_complete_iou._entry_ptr = internal global ptr @mpi3mr_dev_rmhs_complete_iou._entry, section ".printk_index", align 4
@mpi3mr_dev_rmhs_complete_iou._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.3, i32 1530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016%s: %s :dev_rmhs_iouctrl_complete: handle(0x%04x)retrying handshake retry=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@mpi3mr_dev_rmhs_complete_iou._entry_ptr.72 = internal global ptr @mpi3mr_dev_rmhs_complete_iou._entry.70, section ".printk_index", align 4
@mpi3mr_dev_rmhs_complete_iou._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.3, i32 1537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013%s: %s :dev removal handshake failed after all retries: handle(0x%04x)\0A\00", [54 x i8] zeroinitializer }, align 32
@mpi3mr_dev_rmhs_complete_iou._entry_ptr.75 = internal global ptr @mpi3mr_dev_rmhs_complete_iou._entry.73, section ".printk_index", align 4
@mpi3mr_dev_rmhs_complete_iou._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str.3, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016%s: %s :dev removal handshake completed successfully: handle(0x%04x)\0A\00", [56 x i8] zeroinitializer }, align 32
@mpi3mr_dev_rmhs_complete_iou._entry_ptr.78 = internal global ptr @mpi3mr_dev_rmhs_complete_iou._entry.76, section ".printk_index", align 4
@mpi3mr_dev_rmhs_complete_iou._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.69, ptr @.str.3, i32 1553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016%s: %s :dev_rmhs_iouctrl_complete: processing delayed TM: handle(0x%04x)\0A\00", [52 x i8] zeroinitializer }, align 32
@mpi3mr_dev_rmhs_complete_iou._entry_ptr.81 = internal global ptr @mpi3mr_dev_rmhs_complete_iou._entry.79, section ".printk_index", align 4
@mpi3mr_preparereset_evt_th._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 2076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s: prepare for reset event top half with rc=start\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mpi3mr_preparereset_evt_th\00", [37 x i8] zeroinitializer }, align 32
@mpi3mr_preparereset_evt_th._entry_ptr = internal global ptr @mpi3mr_preparereset_evt_th._entry, section ".printk_index", align 4
@mpi3mr_preparereset_evt_th._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.3, i32 2083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s: prepare for reset top half with rc=abort\0A\00", [48 x i8] zeroinitializer }, align 32
@mpi3mr_preparereset_evt_th._entry_ptr.86 = internal global ptr @mpi3mr_preparereset_evt_th._entry.84, section ".printk_index", align 4
@mpi3mr_send_event_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 1782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\016%s: sending delayed event ack in the top half for event(0x%02x), event_ctx(0x%08x)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mpi3mr_send_event_ack\00", [42 x i8] zeroinitializer }, align 32
@mpi3mr_send_event_ack._entry_ptr = internal global ptr @mpi3mr_send_event_ack._entry, section ".printk_index", align 4
@mpi3mr_send_event_ack._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.3, i32 1787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016%s: sending event ack in the top half for event(0x%02x), event_ctx(0x%08x)\0A\00", [50 x i8] zeroinitializer }, align 32
@mpi3mr_send_event_ack._entry_ptr.91 = internal global ptr @mpi3mr_send_event_ack._entry.89, section ".printk_index", align 4
@mpi3mr_send_event_ack._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.3, i32 1811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016%s: event ack in the top half for event(0x%02x), event_ctx(0x%08x) is postponed\0A\00", [45 x i8] zeroinitializer }, align 32
@mpi3mr_send_event_ack._entry_ptr.94 = internal global ptr @mpi3mr_send_event_ack._entry.92, section ".printk_index", align 4
@mpi3mr_send_event_ack._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str.3, i32 1822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s: sending event ack failed due to command in use\0A\00", [42 x i8] zeroinitializer }, align 32
@mpi3mr_send_event_ack._entry_ptr.97 = internal global ptr @mpi3mr_send_event_ack._entry.95, section ".printk_index", align 4
@mpi3mr_send_event_ack._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.88, ptr @.str.3, i32 1836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: posting event ack request is failed\0A\00", [53 x i8] zeroinitializer }, align 32
@mpi3mr_send_event_ack._entry_ptr.100 = internal global ptr @mpi3mr_send_event_ack._entry.98, section ".printk_index", align 4
@mpi3mr_send_event_ack._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.88, ptr @.str.3, i32 1842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016%s: event ack in the top half for event(0x%02x), event_ctx(0x%08x) is posted\0A\00", [48 x i8] zeroinitializer }, align 32
@mpi3mr_send_event_ack._entry_ptr.103 = internal global ptr @mpi3mr_send_event_ack._entry.101, section ".printk_index", align 4
@mpi3mr_complete_evt_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.3, i32 1737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016%s: immediate event ack failed with ioc_status(0x%04x) log_info(0x%08x)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mpi3mr_complete_evt_ack\00", [40 x i8] zeroinitializer }, align 32
@mpi3mr_complete_evt_ack._entry_ptr = internal global ptr @mpi3mr_complete_evt_ack._entry, section ".printk_index", align 4
@mpi3mr_energypackchg_evt_th._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.3, i32 2112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014%s: %s :Invalid Shutdown Timeout received = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mpi3mr_energypackchg_evt_th\00", [36 x i8] zeroinitializer }, align 32
@mpi3mr_energypackchg_evt_th._entry_ptr = internal global ptr @mpi3mr_energypackchg_evt_th._entry, section ".printk_index", align 4
@mpi3mr_energypackchg_evt_th._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.3, i32 2118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016%s: %s :Previous Shutdown Timeout Value = %d New Shutdown Timeout Value = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@mpi3mr_energypackchg_evt_th._entry_ptr.110 = internal global ptr @mpi3mr_energypackchg_evt_th._entry.108, section ".printk_index", align 4
@mpi3mr_tempthreshold_evt_th._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.3, i32 2142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\013%s: Temperature threshold levels %s%s%s exceeded for sensor: %d !!! Current temperature in Celsius: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mpi3mr_tempthreshold_evt_th\00", [36 x i8] zeroinitializer }, align 32
@mpi3mr_tempthreshold_evt_th._entry_ptr = internal global ptr @mpi3mr_tempthreshold_evt_th._entry, section ".printk_index", align 4
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Warning \00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Critical \00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Fatal \00", [25 x i8] zeroinitializer }, align 32
@mpi3mr_cablemgmt_evt_th._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.3, i32 2168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [150 x i8], [42 x i8] } { [150 x i8] c"\016%s: An active cable with receptacle_id %d cannot be powered.\0ADevices connected to this cable are not detected.\0AThis cable requires %d mW of power.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mpi3mr_cablemgmt_evt_th\00", [40 x i8] zeroinitializer }, align 32
@mpi3mr_cablemgmt_evt_th._entry_ptr = internal global ptr @mpi3mr_cablemgmt_evt_th._entry, section ".printk_index", align 4
@mpi3mr_cablemgmt_evt_th._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.3, i32 2174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016%s: A cable with receptacle_id %d is not running at optimal speed\0A\00", [59 x i8] zeroinitializer }, align 32
@mpi3mr_cablemgmt_evt_th._entry_ptr.121 = internal global ptr @mpi3mr_cablemgmt_evt_th._entry.119, section ".printk_index", align 4
@mpi3mr_fwevt_add_to_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.122 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&fwevt->work)\00", [32 x i8] zeroinitializer }, align 32
@mpi3mr_devinfochg_evt_bh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 1076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016%s: %s :Device info change: handle(0x%04x): persist_id(0x%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mpi3mr_devinfochg_evt_bh\00", [39 x i8] zeroinitializer }, align 32
@mpi3mr_devinfochg_evt_bh._entry_ptr = internal global ptr @mpi3mr_devinfochg_evt_bh._entry, section ".printk_index", align 4
@mpi3mr_devstatuschg_evt_bh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.3, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016%s: %s :device status change: handle(0x%04x): reason code(0x%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mpi3mr_devstatuschg_evt_bh\00", [37 x i8] zeroinitializer }, align 32
@mpi3mr_devstatuschg_evt_bh._entry_ptr = internal global ptr @mpi3mr_devstatuschg_evt_bh._entry, section ".printk_index", align 4
@mpi3mr_devstatuschg_evt_bh._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.3, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: %s :Unhandled reason code(0x%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@mpi3mr_devstatuschg_evt_bh._entry_ptr.129 = internal global ptr @mpi3mr_devstatuschg_evt_bh._entry.127, section ".printk_index", align 4
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remove\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"responding\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"remove delay\00", [19 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"direct attached\00", [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown status\00", [17 x i8] zeroinitializer }, align 32
@mpi3mr_sastopochg_evt_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.3, i32 1130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: %s :sas topology change: (%s)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mpi3mr_sastopochg_evt_debug\00", [36 x i8] zeroinitializer }, align 32
@mpi3mr_sastopochg_evt_debug._entry_ptr = internal global ptr @mpi3mr_sastopochg_evt_debug._entry, section ".printk_index", align 4
@mpi3mr_sastopochg_evt_debug._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.3, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\016%s: %s :\09expander_handle(0x%04x), enclosure_handle(0x%04x) start_phy(%02d), num_entries(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@mpi3mr_sastopochg_evt_debug._entry_ptr.139 = internal global ptr @mpi3mr_sastopochg_evt_debug._entry.137, section ".printk_index", align 4
@.str.140 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"target remove\00", [18 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"delay target remove\00", [44 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"link status change\00", [45 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"link status no change\00", [42 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"target responding\00", [46 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@mpi3mr_sastopochg_evt_debug._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.136, ptr @.str.3, i32 1168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\016%s: %s :\09phy(%02d), attached_handle(0x%04x): %s: link rate: new(0x%02x), old(0x%02x)\0A\00", [40 x i8] zeroinitializer }, align 32
@mpi3mr_sastopochg_evt_debug._entry_ptr.148 = internal global ptr @mpi3mr_sastopochg_evt_debug._entry.146, section ".printk_index", align 4
@mpi3mr_pcietopochg_evt_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.3, i32 1259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: %s :pcie topology change: (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mpi3mr_pcietopochg_evt_debug\00", [35 x i8] zeroinitializer }, align 32
@mpi3mr_pcietopochg_evt_debug._entry_ptr = internal global ptr @mpi3mr_pcietopochg_evt_debug._entry, section ".printk_index", align 4
@mpi3mr_pcietopochg_evt_debug._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.3, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\016%s: %s :\09switch_handle(0x%04x), enclosure_handle(0x%04x) start_port(%02d), num_entries(%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@mpi3mr_pcietopochg_evt_debug._entry_ptr.153 = internal global ptr @mpi3mr_pcietopochg_evt_debug._entry.151, section ".printk_index", align 4
@mpi3mr_pcietopochg_evt_debug._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.150, ptr @.str.3, i32 1299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\016%s: %s :\09port(%02d), attached_handle(0x%04x): %s: link rate: new(0x%02x), old(0x%02x)\0A\00", [39 x i8] zeroinitializer }, align 32
@mpi3mr_pcietopochg_evt_debug._entry_ptr.156 = internal global ptr @mpi3mr_pcietopochg_evt_debug._entry.154, section ".printk_index", align 4
@mpi3mr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.3, i32 4520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016Loading %s version %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mpi3mr_init\00", [20 x i8] zeroinitializer }, align 32
@mpi3mr_init._entry_ptr = internal global ptr @mpi3mr_init._entry, section ".printk_index", align 4
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mpi3mr\00", [25 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"8.0.0.61.0\00", [21 x i8] zeroinitializer }, align 32
@mpi3mr_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.159, ptr @mpi3mr_pci_id_table, ptr @mpi3mr_probe, ptr @mpi3mr_remove, ptr @mpi3mr_suspend, ptr @mpi3mr_resume, ptr @mpi3mr_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@warn_non_secure_ctlr = internal global { i1, [31 x i8] } zeroinitializer, align 32
@mpi3mr_driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 148, ptr @mpi3mr_qcmd, ptr null, ptr @__this_module, ptr @.str.219, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mpi3mr_eh_dev_reset, ptr @mpi3mr_eh_target_reset, ptr null, ptr @mpi3mr_eh_host_reset, ptr @mpi3mr_slave_alloc, ptr @mpi3mr_slave_configure, ptr @mpi3mr_slave_destroy, ptr @mpi3mr_target_alloc, ptr @mpi3mr_target_destroy, ptr @mpi3mr_scan_finished, ptr @mpi3mr_scan_start, ptr @mpi3mr_change_queue_depth, ptr @mpi3mr_map_queues, ptr @mpi3mr_blk_mq_poll, ptr null, ptr @mpi3mr_bios_param, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.159, ptr null, i32 1, i32 -1, i16 256, i16 0, i32 2048, i32 -1, i32 0, i32 0, i16 7, i8 0, i32 0, i8 -124, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mrioc_ids = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.162 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@mpi3mr_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.163 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&mrioc->admin_req_lock\00", [41 x i8] zeroinitializer }, align 32
@mpi3mr_probe.__key.164 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.165 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&mrioc->reply_free_queue_lock\00", [34 x i8] zeroinitializer }, align 32
@mpi3mr_probe.__key.166 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.167 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&mrioc->sbq_lock\00", [47 x i8] zeroinitializer }, align 32
@mpi3mr_probe.__key.168 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.169 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&mrioc->fwevt_lock\00", [45 x i8] zeroinitializer }, align 32
@mpi3mr_probe.__key.170 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.171 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&mrioc->tgtdev_lock\00", [44 x i8] zeroinitializer }, align 32
@mpi3mr_probe.__key.172 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.173 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&mrioc->watchdog_lock\00", [42 x i8] zeroinitializer }, align 32
@mpi3mr_probe.__key.174 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&mrioc->chain_buf_lock\00", [41 x i8] zeroinitializer }, align 32
@mpi3mr_probe.__key.176 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.177 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&mrioc->reset_mutex\00", [44 x i8] zeroinitializer }, align 32
@mpi3mr_probe.__key.178 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.179 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&mrioc->reset_waitq\00", [44 x i8] zeroinitializer }, align 32
@mpi3mr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.3, i32 4250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016%s: %s :host protection capabilities enabled %s%s%s%s%s%s%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mpi3mr_probe\00", [19 x i8] zeroinitializer }, align 32
@mpi3mr_probe._entry_ptr = internal global ptr @mpi3mr_probe._entry, section ".printk_index", align 4
@.str.182 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" DIF1\00", [26 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.184 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" DIF2\00", [26 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" DIF3\00", [26 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" DIX0\00", [26 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" DIX1\00", [26 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" DIX2\00", [26 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" DIX3\00", [26 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s%d_fwevt_wrkr\00", [16 x i8] zeroinitializer }, align 32
@mpi3mr_probe._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.181, ptr @.str.3, i32 4263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: failure at %s:%d/%s()!\0A\00", [34 x i8] zeroinitializer }, align 32
@mpi3mr_probe._entry_ptr.193 = internal global ptr @mpi3mr_probe._entry.191, section ".printk_index", align 4
@mpi3mr_probe._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.181, ptr @.str.3, i32 4271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: setup resources failed\0A\00", [34 x i8] zeroinitializer }, align 32
@mpi3mr_probe._entry_ptr.196 = internal global ptr @mpi3mr_probe._entry.194, section ".printk_index", align 4
@mpi3mr_probe._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.181, ptr @.str.3, i32 4276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: initializing IOC failed\0A\00", [33 x i8] zeroinitializer }, align 32
@mpi3mr_probe._entry_ptr.199 = internal global ptr @mpi3mr_probe._entry.197, section ".printk_index", align 4
@mpi3mr_probe._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.181, ptr @.str.3, i32 4292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpi3mr_probe._entry_ptr.201 = internal global ptr @mpi3mr_probe._entry.200, section ".printk_index", align 4
@osintfc_mrioc_security_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.3, i32 4104, ptr @.str.204, ptr @.str.205 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: PCI_EXT_CAP_ID_DSN is not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"osintfc_mrioc_security_status\00", [34 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@osintfc_mrioc_security_status._entry_ptr = internal global ptr @osintfc_mrioc_security_status._entry, section ".printk_index", align 4
@osintfc_mrioc_security_status._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.203, ptr @.str.3, i32 4118, ptr @.str.204, ptr @.str.205 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s: Non secure ctlr (Invalid) is detected: DID: 0x%x: SVID: 0x%x: SDID: 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@osintfc_mrioc_security_status._entry_ptr.208 = internal global ptr @osintfc_mrioc_security_status._entry.206, section ".printk_index", align 4
@osintfc_mrioc_security_status._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.203, ptr @.str.3, i32 4125, ptr @.str.211, ptr @.str.205 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Config secure ctlr is detected\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@osintfc_mrioc_security_status._entry_ptr.212 = internal global ptr @osintfc_mrioc_security_status._entry.209, section ".printk_index", align 4
@osintfc_mrioc_security_status._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.203, ptr @.str.3, i32 4133, ptr @.str.204, ptr @.str.205 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s: Non secure ctlr (Tampered) is detected: DID: 0x%x: SVID: 0x%x: SDID: 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@osintfc_mrioc_security_status._entry_ptr.215 = internal global ptr @osintfc_mrioc_security_status._entry.213, section ".printk_index", align 4
@osintfc_mrioc_security_status._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.203, ptr @.str.3, i32 4145, ptr @.str.204, ptr @.str.205 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s: Non secure ctlr (Secure Dbg) is detected: DID: 0x%x: SVID: 0x%x: SDID: 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@osintfc_mrioc_security_status._entry_ptr.218 = internal global ptr @osintfc_mrioc_security_status._entry.216, section ".printk_index", align 4
@.str.219 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MPI3 Storage Controller\00", [40 x i8] zeroinitializer }, align 32
@mpi3mr_check_return_unmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.221, ptr @.str.3, i32 3796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: truncating param_len from (%d) to (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mpi3mr_check_return_unmap\00", [38 x i8] zeroinitializer }, align 32
@mpi3mr_check_return_unmap._entry_ptr = internal global ptr @mpi3mr_check_return_unmap._entry, section ".printk_index", align 4
@mpi3mr_check_return_unmap._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.221, ptr @.str.3, i32 3806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: %s: cdb received with zero parameter length\0A\00", [45 x i8] zeroinitializer }, align 32
@mpi3mr_check_return_unmap._entry_ptr.224 = internal global ptr @mpi3mr_check_return_unmap._entry.222, section ".printk_index", align 4
@mpi3mr_check_return_unmap._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.221, ptr @.str.3, i32 3816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: %s: cdb received with invalid param_len: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mpi3mr_check_return_unmap._entry_ptr.227 = internal global ptr @mpi3mr_check_return_unmap._entry.225, section ".printk_index", align 4
@mpi3mr_check_return_unmap._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.221, ptr @.str.3, i32 3827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014%s: %s: cdb received with param_len: %d bufflen: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@mpi3mr_check_return_unmap._entry_ptr.230 = internal global ptr @mpi3mr_check_return_unmap._entry.228, section ".printk_index", align 4
@mpi3mr_check_return_unmap._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.221, ptr @.str.3, i32 3850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014%s: %s: Invalid descriptor length in param list: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@mpi3mr_check_return_unmap._entry_ptr.233 = internal global ptr @mpi3mr_check_return_unmap._entry.231, section ".printk_index", align 4
@mpi3mr_check_return_unmap._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.221, ptr @.str.3, i32 3865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: truncating param_len(%d) to desc_len+8(%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@mpi3mr_check_return_unmap._entry_ptr.236 = internal global ptr @mpi3mr_check_return_unmap._entry.234, section ".printk_index", align 4
@.str.237 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"scsi_dma_map failed: request for %d bytes!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"scsi_dma_map returned unsupported sge count %d!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Attempting Device(lun) Reset! scmd(%p)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SCSI device is not available\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: device(handle = 0x%04x) is removed, device(LUN) reset is not issued\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Device(lun) Reset is issued to handle(0x%04x)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: device has %d pending commands, device(LUN) reset is failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: device(LUN) reset is %s for scmd(%p)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SUCCESS\00", [24 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FAILED\00", [25 x i8] zeroinitializer }, align 32
@mpi3mr_issue_tm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.248, ptr @.str.3, i32 2963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: %s :Issue TM: TM type (0x%x) for devhandle 0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mpi3mr_issue_tm\00", [16 x i8] zeroinitializer }, align 32
@mpi3mr_issue_tm._entry_ptr = internal global ptr @mpi3mr_issue_tm._entry, section ".printk_index", align 4
@mpi3mr_issue_tm._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.248, ptr @.str.3, i32 2967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: %s :Issue TM: Unrecoverable controller\0A\00", [50 x i8] zeroinitializer }, align 32
@mpi3mr_issue_tm._entry_ptr.251 = internal global ptr @mpi3mr_issue_tm._entry.249, section ".printk_index", align 4
@mpi3mr_issue_tm._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.248, ptr @.str.3, i32 2975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpi3mr_issue_tm._entry_ptr.253 = internal global ptr @mpi3mr_issue_tm._entry.252, section ".printk_index", align 4
@mpi3mr_issue_tm._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.248, ptr @.str.3, i32 2981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: %s :Issue TM: Reset in progress\0A\00", [57 x i8] zeroinitializer }, align 32
@mpi3mr_issue_tm._entry_ptr.256 = internal global ptr @mpi3mr_issue_tm._entry.254, section ".printk_index", align 4
@mpi3mr_issue_tm._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.248, ptr @.str.3, i32 3022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: %s :Issue TM: Admin Post failed\0A\00", [57 x i8] zeroinitializer }, align 32
@mpi3mr_issue_tm._entry_ptr.259 = internal global ptr @mpi3mr_issue_tm._entry.257, section ".printk_index", align 4
@mpi3mr_issue_tm._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.248, ptr @.str.3, i32 3033, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016%s: task management request timed out after %ld seconds\0A\00", [37 x i8] zeroinitializer }, align 32
@mpi3mr_issue_tm._entry_ptr.262 = internal global ptr @mpi3mr_issue_tm._entry.260, section ".printk_index", align 4
@mpi3mr_issue_tm._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.248, ptr @.str.3, i32 3043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: invalid task management reply message\0A\00", [51 x i8] zeroinitializer }, align 32
@mpi3mr_issue_tm._entry_ptr.265 = internal global ptr @mpi3mr_issue_tm._entry.263, section ".printk_index", align 4
@mpi3mr_issue_tm._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.248, ptr @.str.3, i32 3061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\016%s: task management request to handle(0x%04x) is failed with ioc_status(0x%04x) log_info(0x%08x)\0A\00", [60 x i8] zeroinitializer }, align 32
@mpi3mr_issue_tm._entry_ptr.268 = internal global ptr @mpi3mr_issue_tm._entry.266, section ".printk_index", align 4
@mpi3mr_issue_tm._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.248, ptr @.str.3, i32 3083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [153 x i8], [39 x i8] } { [153 x i8] c"\016%s: task management request type(%d) completed for handle(0x%04x) with ioc_status(0x%04x), log_info(0x%08x), termination_count(%d), response:%s(0x%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@mpi3mr_issue_tm._entry_ptr.271 = internal global ptr @mpi3mr_issue_tm._entry.269, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.272 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@dprint_dump_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.274, ptr @.str.275, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016request:\0A\09\00", [19 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dprint_dump_req\00", [16 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/mpi3mr/mpi3mr_debug.h\00", [61 x i8] zeroinitializer }, align 32
@dprint_dump_req._entry_ptr = internal global ptr @dprint_dump_req._entry, section ".printk_index", align 4
@dprint_dump_req._entry.276 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.274, ptr @.str.275, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016\0A\09\00", [27 x i8] zeroinitializer }, align 32
@dprint_dump_req._entry_ptr.278 = internal global ptr @dprint_dump_req._entry.276, section ".printk_index", align 4
@dprint_dump_req._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.274, ptr @.str.275, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\016%08x \00", [24 x i8] zeroinitializer }, align 32
@dprint_dump_req._entry_ptr.281 = internal global ptr @dprint_dump_req._entry.279, section ".printk_index", align 4
@dprint_dump_req._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.274, ptr @.str.275, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@dprint_dump_req._entry_ptr.284 = internal global ptr @dprint_dump_req._entry.282, section ".printk_index", align 4
@.str.285 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"task management request completed\00", [62 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid frame\00", [18 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"task management request not supported\00", [58 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"task management request failed\00", [33 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"task management request succeeded\00", [62 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"invalid LUN\00", [20 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"overlapped tag attempted\00", [39 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"task queued, however not sent to target\00", [56 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"task management request denied by NVMe device\00", [50 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Attempting Target Reset! scmd(%p)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s:target(handle = 0x%04x) is removed, target reset is not issued\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Target Reset is issued to handle(0x%04x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: target has %d pending commands, target reset is failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: target reset is %s for scmd(%p)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Host reset is %s for scmd(%p)\0A\00", [33 x i8] zeroinitializer }, align 32
@mpi3mr_print_pending_host_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.300, ptr @.str.301, ptr @.str.3, i32 3243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: %s :Pending commands prior to reset: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mpi3mr_print_pending_host_io\00", [35 x i8] zeroinitializer }, align 32
@mpi3mr_print_pending_host_io._entry_ptr = internal global ptr @mpi3mr_print_pending_host_io._entry, section ".printk_index", align 4
@mpi3mr_print_scmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.303, ptr @.str.3, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: %s :Host Tag = %d, qid = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mpi3mr_print_scmd\00", [46 x i8] zeroinitializer }, align 32
@mpi3mr_print_scmd._entry_ptr = internal global ptr @mpi3mr_print_scmd._entry, section ".printk_index", align 4
@mpi3mr_scan_finished._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.305, ptr @.str.3, i32 3509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: port enable failed due to fault or reset\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mpi3mr_scan_finished\00", [43 x i8] zeroinitializer }, align 32
@mpi3mr_scan_finished._entry_ptr = internal global ptr @mpi3mr_scan_finished._entry, section ".printk_index", align 4
@mpi3mr_scan_finished._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.305, ptr @.str.3, i32 3519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: port enable failed due to time out\0A\00", [54 x i8] zeroinitializer }, align 32
@mpi3mr_scan_finished._entry_ptr.308 = internal global ptr @mpi3mr_scan_finished._entry.306, section ".printk_index", align 4
@mpi3mr_scan_finished._entry.309 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.310, ptr @.str.305, ptr @.str.3, i32 3535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: port enable failed with status=0x%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@mpi3mr_scan_finished._entry_ptr.311 = internal global ptr @mpi3mr_scan_finished._entry.309, section ".printk_index", align 4
@mpi3mr_scan_finished._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.313, ptr @.str.305, ptr @.str.3, i32 3537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: port enable is successfully completed\0A\00", [51 x i8] zeroinitializer }, align 32
@mpi3mr_scan_finished._entry_ptr.314 = internal global ptr @mpi3mr_scan_finished._entry.312, section ".printk_index", align 4
@mpi3mr_scan_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.316, ptr @.str.3, i32 3481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: %s :Issuing Port Enable\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mpi3mr_scan_start\00", [46 x i8] zeroinitializer }, align 32
@mpi3mr_scan_start._entry_ptr = internal global ptr @mpi3mr_scan_start._entry, section ".printk_index", align 4
@mpi3mr_scan_start._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.318, ptr @.str.316, ptr @.str.3, i32 3483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: %s :Issuing port enable failed\0A\00", [58 x i8] zeroinitializer }, align 32
@mpi3mr_scan_start._entry_ptr.319 = internal global ptr @mpi3mr_scan_start._entry.317, section ".printk_index", align 4
@mpi3mr_init_drv_cmd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.320 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cmdptr->mutex\00", [17 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@mpi3mr_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.322, ptr @.str.3, i32 4437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s: pdev=0x%p, slot=%s, entering operating state [D%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mpi3mr_suspend\00", [17 x i8] zeroinitializer }, align 32
@mpi3mr_suspend._entry_ptr = internal global ptr @mpi3mr_suspend._entry, section ".printk_index", align 4
@mpi3mr_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.323, ptr @.str.324, ptr @.str.3, i32 4467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s: pdev=0x%p, slot=%s, previous operating state [D%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mpi3mr_resume\00", [18 x i8] zeroinitializer }, align 32
@mpi3mr_resume._entry_ptr = internal global ptr @mpi3mr_resume._entry, section ".printk_index", align 4
@mpi3mr_resume._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.324, ptr @.str.3, i32 4476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: %s: Setup resources failed[%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@mpi3mr_resume._entry_ptr.327 = internal global ptr @mpi3mr_resume._entry.325, section ".printk_index", align 4
@mpi3mr_resume._entry.328 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.329, ptr @.str.324, ptr @.str.3, i32 4484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: resuming controller failed[%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@mpi3mr_resume._entry_ptr.330 = internal global ptr @mpi3mr_resume._entry.328, section ".printk_index", align 4
@mpi3mr_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.332, ptr @.str.3, i32 4532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014Unloading %s version %s while managing a non secure controller\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mpi3mr_exit\00", [20 x i8] zeroinitializer }, align 32
@mpi3mr_exit._entry_ptr = internal global ptr @mpi3mr_exit._entry, section ".printk_index", align 4
@mpi3mr_exit._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.332, ptr @.str.3, i32 4535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016Unloading %s version %s\0A\00", [37 x i8] zeroinitializer }, align 32
@mpi3mr_exit._entry_ptr.335 = internal global ptr @mpi3mr_exit._entry.333, section ".printk_index", align 4
@switch.table.mpi3mr_fwevt_worker = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.133, ptr @.str.134, ptr @.str.130, ptr @.str.131, ptr @.str.132], [44 x i8] zeroinitializer }, align 32
@switch.table.mpi3mr_fwevt_worker.336 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.141, ptr @.str.144], [44 x i8] zeroinitializer }, align 32
@switch.table.mpi3mr_fwevt_worker.337 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.133, ptr @.str.134, ptr @.str.130, ptr @.str.131, ptr @.str.132], [44 x i8] zeroinitializer }, align 32
@switch.table.mpi3mr_fwevt_worker.338 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.141, ptr @.str.144], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 8, i64 5, i64 6, i64 7, i64 8, i64 9, i64 12, i64 13, i64 14, i64 17, i64 18, i64 22, i64 25, i64 32, i64 34]
@__sancov_gen_cov_switch_values.339 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 32, i64 33, i64 36, i64 37, i64 80]
@__sancov_gen_cov_switch_values.340 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.341 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.342 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.343 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.344 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 4096, i64 12288]
@__sancov_gen_cov_switch_values.345 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 24, i64 40]
@__sancov_gen_cov_switch_values.346 = internal global [16 x i64] [i64 14, i64 16, i64 0, i64 2, i64 6, i64 64, i64 67, i64 68, i64 69, i64 72, i64 73, i64 75, i64 76, i64 77, i64 78, i64 79]
@__sancov_gen_cov_switch_values.347 = internal global [4 x i64] [i64 2, i64 8, i64 133, i64 161]
@__sancov_gen_cov_switch_values.348 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.349 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.350 = internal global [4 x i64] [i64 2, i64 3, i64 1, i64 3]
@__sancov_gen_cov_switch_values.351 = internal global [7 x i64] [i64 5, i64 16, i64 7, i64 8, i64 13, i64 22, i64 32]
@__sancov_gen_cov_switch_values.352 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 80]
@__sancov_gen_cov_switch_values.353 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.354 = internal global [4 x i64] [i64 2, i64 8, i64 27, i64 53]
@__sancov_gen_cov_switch_values.355 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.356 = internal global [9 x i64] [i64 7, i64 32, i64 512, i64 520, i64 4080, i64 4088, i64 4096, i64 4104, i64 4160]
@__sancov_gen_cov_switch_values.357 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 75]
@__sancov_gen_cov_switch_values.358 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 8, i64 128]
@__sancov_gen_cov_switch_values.359 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.360 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 2, i64 4, i64 5, i64 8, i64 9, i64 10, i64 128, i64 129]
@___asan_gen_.361 = private unnamed_addr constant [11 x i8] c"mrioc_list\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 13, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant [16 x i8] c"mrioc_list_lock\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 14, i32 1 }
@___asan_gen_.370 = private constant [10 x i8] c"prot_mask\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 24, i32 5 }
@___asan_gen_.373 = private constant [16 x i8] c"prot_guard_mask\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 28, i32 12 }
@___asan_gen_.376 = private constant [14 x i8] c"logging_level\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 31, i32 12 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 506, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 509, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1487, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1494, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2215, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2273, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2281, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2514, i32 10 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2534, i32 10 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2545, i32 9 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2637, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2640, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2644, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2649, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3268, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3281, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 709, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 720, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 969, i32 4 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 971, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1671, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1679, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1685, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1702, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1590, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1596, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1612, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1520, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1527, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1535, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1539, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1551, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2075, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2082, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1780, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1785, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1809, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1821, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1835, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1840, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1734, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2110, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2116, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2138, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2164, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2173, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 225, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1074, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1012, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1027, i32 3 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1114, i32 16 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1117, i32 17 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1120, i32 16 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1123, i32 16 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1126, i32 16 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1129, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1131, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1145, i32 17 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1148, i32 17 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1151, i32 17 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1154, i32 17 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1157, i32 17 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1160, i32 17 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1165, i32 3 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1258, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1260, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 1296, i32 3 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4519, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant [18 x i8] c"mpi3mr_pci_driver\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4503, i32 26 }
@___asan_gen_.832 = private unnamed_addr constant [21 x i8] c"warn_non_secure_ctlr\00", align 1
@___asan_gen_.833 = private unnamed_addr constant [23 x i8] c"mpi3mr_driver_template\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4031, i32 34 }
@___asan_gen_.836 = private unnamed_addr constant [10 x i8] c"mrioc_ids\00", align 1
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 15, i32 12 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4189, i32 23 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4195, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4196, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4197, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4198, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4199, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4200, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4201, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4208, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4219, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4241, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4258, i32 6 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4262, i32 3 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4271, i32 3 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4276, i32 3 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4291, i32 3 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4103, i32 3 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4115, i32 3 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4123, i32 4 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4130, i32 3 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4142, i32 3 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4033, i32 13 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3794, i32 4 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3804, i32 3 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3814, i32 3 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3825, i32 3 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3848, i32 3 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3863, i32 3 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2758, i32 3 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2764, i32 3 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3421, i32 2 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3427, i32 3 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3436, i32 3 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3442, i32 2 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3454, i32 3 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3461, i32 2 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2962, i32 2 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2966, i32 3 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2975, i32 3 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2981, i32 3 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3022, i32 3 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3031, i32 4 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3043, i32 3 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3059, i32 3 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3079, i32 2 }
@___asan_gen_.1125 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1125, i32 87, i32 2 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1155, i32 138, i32 2 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1155, i32 141, i32 4 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1155, i32 142, i32 3 }
@___asan_gen_.1155 = private unnamed_addr constant [38 x i8] c"../drivers/scsi/mpi3mr/mpi3mr_debug.h\00", align 1
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1155, i32 144, i32 2 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2884, i32 10 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2887, i32 10 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2890, i32 10 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2893, i32 10 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2896, i32 10 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2899, i32 10 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2902, i32 10 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2905, i32 10 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 2908, i32 10 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3353, i32 2 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3368, i32 3 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3374, i32 2 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3387, i32 3 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3395, i32 2 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3327, i32 2 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3242, i32 2 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 375, i32 3 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3509, i32 3 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3519, i32 3 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3533, i32 3 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3537, i32 3 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3481, i32 2 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 3483, i32 3 }
@___asan_gen_.1262 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4076, i32 2 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4436, i32 2 }
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4466, i32 2 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4475, i32 3 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4484, i32 3 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4530, i32 3 }
@___asan_gen_.1307 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1310 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1311 = private constant [35 x i8] c"../drivers/scsi/mpi3mr/mpi3mr_os.c\00", align 1
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1311, i32 4534, i32 3 }
@___asan_gen_.1313 = private unnamed_addr constant [33 x i8] c"switch.table.mpi3mr_fwevt_worker\00", align 1
@___asan_gen_.1314 = private unnamed_addr constant [37 x i8] c"switch.table.mpi3mr_fwevt_worker.336\00", align 1
@___asan_gen_.1315 = private unnamed_addr constant [37 x i8] c"switch.table.mpi3mr_fwevt_worker.337\00", align 1
@___asan_gen_.1316 = private unnamed_addr constant [37 x i8] c"switch.table.mpi3mr_fwevt_worker.338\00", align 1
@llvm.compiler.used = appending global [431 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_license289, ptr @__UNIQUE_ID_logging_level296, ptr @__UNIQUE_ID_logging_leveltype295, ptr @__UNIQUE_ID_prot_guard_mask294, ptr @__UNIQUE_ID_prot_guard_masktype293, ptr @__UNIQUE_ID_prot_mask292, ptr @__UNIQUE_ID_prot_masktype291, ptr @__UNIQUE_ID_version290, ptr @__param_logging_level, ptr @__param_prot_guard_mask, ptr @__param_prot_mask, ptr @dprint_dump_req._entry, ptr @dprint_dump_req._entry.276, ptr @dprint_dump_req._entry.279, ptr @dprint_dump_req._entry.282, ptr @dprint_dump_req._entry_ptr, ptr @dprint_dump_req._entry_ptr.278, ptr @dprint_dump_req._entry_ptr.281, ptr @dprint_dump_req._entry_ptr.284, ptr @mpi3mr_cablemgmt_evt_th._entry, ptr @mpi3mr_cablemgmt_evt_th._entry.119, ptr @mpi3mr_cablemgmt_evt_th._entry_ptr, ptr @mpi3mr_cablemgmt_evt_th._entry_ptr.121, ptr @mpi3mr_check_return_unmap._entry, ptr @mpi3mr_check_return_unmap._entry.222, ptr @mpi3mr_check_return_unmap._entry.225, ptr @mpi3mr_check_return_unmap._entry.228, ptr @mpi3mr_check_return_unmap._entry.231, ptr @mpi3mr_check_return_unmap._entry.234, ptr @mpi3mr_check_return_unmap._entry_ptr, ptr @mpi3mr_check_return_unmap._entry_ptr.224, ptr @mpi3mr_check_return_unmap._entry_ptr.227, ptr @mpi3mr_check_return_unmap._entry_ptr.230, ptr @mpi3mr_check_return_unmap._entry_ptr.233, ptr @mpi3mr_check_return_unmap._entry_ptr.236, ptr @mpi3mr_complete_evt_ack._entry, ptr @mpi3mr_complete_evt_ack._entry_ptr, ptr @mpi3mr_dev_rmhs_complete_iou._entry, ptr @mpi3mr_dev_rmhs_complete_iou._entry.70, ptr @mpi3mr_dev_rmhs_complete_iou._entry.73, ptr @mpi3mr_dev_rmhs_complete_iou._entry.76, ptr @mpi3mr_dev_rmhs_complete_iou._entry.79, ptr @mpi3mr_dev_rmhs_complete_iou._entry_ptr, ptr @mpi3mr_dev_rmhs_complete_iou._entry_ptr.72, ptr @mpi3mr_dev_rmhs_complete_iou._entry_ptr.75, ptr @mpi3mr_dev_rmhs_complete_iou._entry_ptr.78, ptr @mpi3mr_dev_rmhs_complete_iou._entry_ptr.81, ptr @mpi3mr_dev_rmhs_complete_tm._entry, ptr @mpi3mr_dev_rmhs_complete_tm._entry.62, ptr @mpi3mr_dev_rmhs_complete_tm._entry.65, ptr @mpi3mr_dev_rmhs_complete_tm._entry_ptr, ptr @mpi3mr_dev_rmhs_complete_tm._entry_ptr.64, ptr @mpi3mr_dev_rmhs_complete_tm._entry_ptr.67, ptr @mpi3mr_dev_rmhs_send_tm._entry, ptr @mpi3mr_dev_rmhs_send_tm._entry.51, ptr @mpi3mr_dev_rmhs_send_tm._entry.54, ptr @mpi3mr_dev_rmhs_send_tm._entry.57, ptr @mpi3mr_dev_rmhs_send_tm._entry_ptr, ptr @mpi3mr_dev_rmhs_send_tm._entry_ptr.53, ptr @mpi3mr_dev_rmhs_send_tm._entry_ptr.56, ptr @mpi3mr_dev_rmhs_send_tm._entry_ptr.59, ptr @mpi3mr_devinfochg_evt_bh._entry, ptr @mpi3mr_devinfochg_evt_bh._entry_ptr, ptr @mpi3mr_devstatuschg_evt_bh._entry, ptr @mpi3mr_devstatuschg_evt_bh._entry.127, ptr @mpi3mr_devstatuschg_evt_bh._entry_ptr, ptr @mpi3mr_devstatuschg_evt_bh._entry_ptr.129, ptr @mpi3mr_energypackchg_evt_th._entry, ptr @mpi3mr_energypackchg_evt_th._entry.108, ptr @mpi3mr_energypackchg_evt_th._entry_ptr, ptr @mpi3mr_energypackchg_evt_th._entry_ptr.110, ptr @mpi3mr_exit._entry, ptr @mpi3mr_exit._entry.333, ptr @mpi3mr_exit._entry_ptr, ptr @mpi3mr_exit._entry_ptr.335, ptr @mpi3mr_flush_delayed_cmd_lists._entry, ptr @mpi3mr_flush_delayed_cmd_lists._entry.9, ptr @mpi3mr_flush_delayed_cmd_lists._entry_ptr, ptr @mpi3mr_flush_delayed_cmd_lists._entry_ptr.11, ptr @mpi3mr_flush_host_io._entry, ptr @mpi3mr_flush_host_io._entry.4, ptr @mpi3mr_flush_host_io._entry_ptr, ptr @mpi3mr_flush_host_io._entry_ptr.6, ptr @mpi3mr_init._entry, ptr @mpi3mr_init._entry_ptr, ptr @mpi3mr_issue_tm._entry, ptr @mpi3mr_issue_tm._entry.249, ptr @mpi3mr_issue_tm._entry.252, ptr @mpi3mr_issue_tm._entry.254, ptr @mpi3mr_issue_tm._entry.257, ptr @mpi3mr_issue_tm._entry.260, ptr @mpi3mr_issue_tm._entry.263, ptr @mpi3mr_issue_tm._entry.266, ptr @mpi3mr_issue_tm._entry.269, ptr @mpi3mr_issue_tm._entry_ptr, ptr @mpi3mr_issue_tm._entry_ptr.251, ptr @mpi3mr_issue_tm._entry_ptr.253, ptr @mpi3mr_issue_tm._entry_ptr.256, ptr @mpi3mr_issue_tm._entry_ptr.259, ptr @mpi3mr_issue_tm._entry_ptr.262, ptr @mpi3mr_issue_tm._entry_ptr.265, ptr @mpi3mr_issue_tm._entry_ptr.268, ptr @mpi3mr_issue_tm._entry_ptr.271, ptr @mpi3mr_os_handle_events._entry, ptr @mpi3mr_os_handle_events._entry.14, ptr @mpi3mr_os_handle_events._entry.17, ptr @mpi3mr_os_handle_events._entry_ptr, ptr @mpi3mr_os_handle_events._entry_ptr.16, ptr @mpi3mr_os_handle_events._entry_ptr.19, ptr @mpi3mr_pcietopochg_evt_debug._entry, ptr @mpi3mr_pcietopochg_evt_debug._entry.151, ptr @mpi3mr_pcietopochg_evt_debug._entry.154, ptr @mpi3mr_pcietopochg_evt_debug._entry_ptr, ptr @mpi3mr_pcietopochg_evt_debug._entry_ptr.153, ptr @mpi3mr_pcietopochg_evt_debug._entry_ptr.156, ptr @mpi3mr_preparereset_evt_th._entry, ptr @mpi3mr_preparereset_evt_th._entry.84, ptr @mpi3mr_preparereset_evt_th._entry_ptr, ptr @mpi3mr_preparereset_evt_th._entry_ptr.86, ptr @mpi3mr_print_pending_host_io._entry, ptr @mpi3mr_print_pending_host_io._entry_ptr, ptr @mpi3mr_print_scmd._entry, ptr @mpi3mr_print_scmd._entry_ptr, ptr @mpi3mr_probe._entry, ptr @mpi3mr_probe._entry.191, ptr @mpi3mr_probe._entry.194, ptr @mpi3mr_probe._entry.197, ptr @mpi3mr_probe._entry.200, ptr @mpi3mr_probe._entry_ptr, ptr @mpi3mr_probe._entry_ptr.193, ptr @mpi3mr_probe._entry_ptr.196, ptr @mpi3mr_probe._entry_ptr.199, ptr @mpi3mr_probe._entry_ptr.201, ptr @mpi3mr_process_op_reply_desc._entry, ptr @mpi3mr_process_op_reply_desc._entry.25, ptr @mpi3mr_process_op_reply_desc._entry.28, ptr @mpi3mr_process_op_reply_desc._entry.31, ptr @mpi3mr_process_op_reply_desc._entry_ptr, ptr @mpi3mr_process_op_reply_desc._entry_ptr.27, ptr @mpi3mr_process_op_reply_desc._entry_ptr.30, ptr @mpi3mr_process_op_reply_desc._entry_ptr.33, ptr @mpi3mr_remove_tgtdev_from_host._entry, ptr @mpi3mr_remove_tgtdev_from_host._entry.41, ptr @mpi3mr_remove_tgtdev_from_host._entry_ptr, ptr @mpi3mr_remove_tgtdev_from_host._entry_ptr.43, ptr @mpi3mr_resume._entry, ptr @mpi3mr_resume._entry.325, ptr @mpi3mr_resume._entry.328, ptr @mpi3mr_resume._entry_ptr, ptr @mpi3mr_resume._entry_ptr.327, ptr @mpi3mr_resume._entry_ptr.330, ptr @mpi3mr_sastopochg_evt_debug._entry, ptr @mpi3mr_sastopochg_evt_debug._entry.137, ptr @mpi3mr_sastopochg_evt_debug._entry.146, ptr @mpi3mr_sastopochg_evt_debug._entry_ptr, ptr @mpi3mr_sastopochg_evt_debug._entry_ptr.139, ptr @mpi3mr_sastopochg_evt_debug._entry_ptr.148, ptr @mpi3mr_scan_finished._entry, ptr @mpi3mr_scan_finished._entry.306, ptr @mpi3mr_scan_finished._entry.309, ptr @mpi3mr_scan_finished._entry.312, ptr @mpi3mr_scan_finished._entry_ptr, ptr @mpi3mr_scan_finished._entry_ptr.308, ptr @mpi3mr_scan_finished._entry_ptr.311, ptr @mpi3mr_scan_finished._entry_ptr.314, ptr @mpi3mr_scan_start._entry, ptr @mpi3mr_scan_start._entry.317, ptr @mpi3mr_scan_start._entry_ptr, ptr @mpi3mr_scan_start._entry_ptr.319, ptr @mpi3mr_send_event_ack._entry, ptr @mpi3mr_send_event_ack._entry.101, ptr @mpi3mr_send_event_ack._entry.89, ptr @mpi3mr_send_event_ack._entry.92, ptr @mpi3mr_send_event_ack._entry.95, ptr @mpi3mr_send_event_ack._entry.98, ptr @mpi3mr_send_event_ack._entry_ptr, ptr @mpi3mr_send_event_ack._entry_ptr.100, ptr @mpi3mr_send_event_ack._entry_ptr.103, ptr @mpi3mr_send_event_ack._entry_ptr.91, ptr @mpi3mr_send_event_ack._entry_ptr.94, ptr @mpi3mr_send_event_ack._entry_ptr.97, ptr @mpi3mr_suspend._entry, ptr @mpi3mr_suspend._entry_ptr, ptr @mpi3mr_tempthreshold_evt_th._entry, ptr @mpi3mr_tempthreshold_evt_th._entry_ptr, ptr @mpi3mr_update_tgtdev._entry, ptr @mpi3mr_update_tgtdev._entry.46, ptr @mpi3mr_update_tgtdev._entry_ptr, ptr @mpi3mr_update_tgtdev._entry_ptr.48, ptr @mpi3mr_wait_for_host_io._entry, ptr @mpi3mr_wait_for_host_io._entry.36, ptr @mpi3mr_wait_for_host_io._entry_ptr, ptr @mpi3mr_wait_for_host_io._entry_ptr.38, ptr @osintfc_mrioc_security_status._entry, ptr @osintfc_mrioc_security_status._entry.206, ptr @osintfc_mrioc_security_status._entry.209, ptr @osintfc_mrioc_security_status._entry.213, ptr @osintfc_mrioc_security_status._entry.216, ptr @osintfc_mrioc_security_status._entry_ptr, ptr @osintfc_mrioc_security_status._entry_ptr.208, ptr @osintfc_mrioc_security_status._entry_ptr.212, ptr @osintfc_mrioc_security_status._entry_ptr.215, ptr @osintfc_mrioc_security_status._entry_ptr.218, ptr @mrioc_list, ptr @.str, ptr @mrioc_list_lock, ptr @prot_mask, ptr @prot_guard_mask, ptr @logging_level, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @mpi3mr_fwevt_add_to_list.__key, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @mpi3mr_pci_driver, ptr @warn_non_secure_ctlr, ptr @mpi3mr_driver_template, ptr @mrioc_ids, ptr @.str.162, ptr @mpi3mr_probe.__key, ptr @.str.163, ptr @mpi3mr_probe.__key.164, ptr @.str.165, ptr @mpi3mr_probe.__key.166, ptr @.str.167, ptr @mpi3mr_probe.__key.168, ptr @.str.169, ptr @mpi3mr_probe.__key.170, ptr @.str.171, ptr @mpi3mr_probe.__key.172, ptr @.str.173, ptr @mpi3mr_probe.__key.174, ptr @.str.175, ptr @mpi3mr_probe.__key.176, ptr @.str.177, ptr @mpi3mr_probe.__key.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.207, ptr @.str.210, ptr @.str.211, ptr @.str.214, ptr @.str.217, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.223, ptr @.str.226, ptr @.str.229, ptr @.str.232, ptr @.str.235, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.250, ptr @.str.255, ptr @.str.258, ptr @.str.261, ptr @.str.264, ptr @.str.267, ptr @.str.270, ptr @init_completion.__key, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.277, ptr @.str.280, ptr @.str.283, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.307, ptr @.str.310, ptr @.str.313, ptr @.str.315, ptr @.str.316, ptr @.str.318, ptr @mpi3mr_init_drv_cmd.__key, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.326, ptr @.str.329, ptr @.str.331, ptr @.str.332, ptr @.str.334, ptr @switch.table.mpi3mr_fwevt_worker, ptr @switch.table.mpi3mr_fwevt_worker.336, ptr @switch.table.mpi3mr_fwevt_worker.337, ptr @switch.table.mpi3mr_fwevt_worker.338], section "llvm.metadata"
@0 = internal global [322 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrioc_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrioc_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prot_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prot_guard_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logging_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_flush_host_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_flush_host_io._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_flush_delayed_cmd_lists._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_flush_delayed_cmd_lists._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_os_handle_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_os_handle_events._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_os_handle_events._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_process_op_reply_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_process_op_reply_desc._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_process_op_reply_desc._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_process_op_reply_desc._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_wait_for_host_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_wait_for_host_io._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_remove_tgtdev_from_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_remove_tgtdev_from_host._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_update_tgtdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_update_tgtdev._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_dev_rmhs_send_tm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_dev_rmhs_send_tm._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_dev_rmhs_send_tm._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_dev_rmhs_send_tm._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_dev_rmhs_complete_tm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_dev_rmhs_complete_tm._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_dev_rmhs_complete_tm._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_dev_rmhs_complete_iou._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_dev_rmhs_complete_iou._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_dev_rmhs_complete_iou._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_dev_rmhs_complete_iou._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_dev_rmhs_complete_iou._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_preparereset_evt_th._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_preparereset_evt_th._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_send_event_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_send_event_ack._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_send_event_ack._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_send_event_ack._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_send_event_ack._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_send_event_ack._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_complete_evt_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_energypackchg_evt_th._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_energypackchg_evt_th._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_tempthreshold_evt_th._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_cablemgmt_evt_th._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 150, i32 192, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_cablemgmt_evt_th._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_fwevt_add_to_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_devinfochg_evt_bh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_devstatuschg_evt_bh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_devstatuschg_evt_bh._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_sastopochg_evt_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_sastopochg_evt_debug._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_sastopochg_evt_debug._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_pcietopochg_evt_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_pcietopochg_evt_debug._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_pcietopochg_evt_debug._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_non_secure_ctlr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrioc_ids to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_probe.__key.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_probe.__key.166 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_probe.__key.168 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_probe.__key.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_probe.__key.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_probe.__key.174 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_probe.__key.176 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_probe.__key.178 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_probe._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_probe._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_probe._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_probe._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osintfc_mrioc_security_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osintfc_mrioc_security_status._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osintfc_mrioc_security_status._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osintfc_mrioc_security_status._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osintfc_mrioc_security_status._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_check_return_unmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_check_return_unmap._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_check_return_unmap._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_check_return_unmap._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_check_return_unmap._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_check_return_unmap._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_issue_tm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_issue_tm._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_issue_tm._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_issue_tm._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_issue_tm._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_issue_tm._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_issue_tm._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_issue_tm._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_issue_tm._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 153, i32 192, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprint_dump_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprint_dump_req._entry.276 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprint_dump_req._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprint_dump_req._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_print_pending_host_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_print_scmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_scan_finished._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_scan_finished._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_scan_finished._entry.309 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_scan_finished._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_scan_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_scan_start._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_init_drv_cmd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_resume._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_resume._entry.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi3mr_exit._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpi3mr_fwevt_worker to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpi3mr_fwevt_worker.336 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpi3mr_fwevt_worker.337 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpi3mr_fwevt_worker.338 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@__mod_pci__mpi3mr_pci_id_table_device_table = dso_local alias [2 x %struct.pci_device_id], ptr @mpi3mr_pci_id_table

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi3mr_cleanup_fwevt_list(ptr noundef %mrioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %fwevt_list = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 66
  %0 = ptrtoint ptr %fwevt_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fwevt_list, align 4
  %cmp.i.not = icmp eq ptr %1, %fwevt_list
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %current_event = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 106
  %2 = ptrtoint ptr %current_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_event, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %fwevt_worker_thread = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 64
  %4 = ptrtoint ptr %fwevt_worker_thread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fwevt_worker_thread, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %fwevt_lock.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 65
  %current_event5 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 106
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fwevt_lock.i) #18
  %6 = ptrtoint ptr %fwevt_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %fwevt_list, align 4
  %cmp.i.not.i = icmp eq ptr %7, %fwevt_list
  br i1 %cmp.i.not.i, label %mpi3mr_dequeue_fwevt.exit.thread, label %if.then.i

mpi3mr_dequeue_fwevt.exit.thread:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fwevt_lock.i, i32 noundef %call2.i) #18
  br label %lor.rhs

if.then.i:                                        ; preds = %while.cond
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #18
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %7, ptr %7, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %prev.i3.i.i, align 4
  %ref_count.i.i = getelementptr inbounds %struct.mpi3mr_fwevt, ptr %7, i32 0, i32 7
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.mpi3mr_dequeue_fwevt.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !612

if.end5.i.i.i.i.i.i.mpi3mr_dequeue_fwevt.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_dequeue_fwevt.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef 3) #18
  br label %mpi3mr_dequeue_fwevt.exit

if.then.i.i.i:                                    ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef %7) #18
  br label %mpi3mr_dequeue_fwevt.exit

mpi3mr_dequeue_fwevt.exit:                        ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.mpi3mr_dequeue_fwevt.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fwevt_lock.i, i32 noundef %call2.i) #18
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %mpi3mr_dequeue_fwevt.exit.lor.rhs_crit_edge, label %mpi3mr_dequeue_fwevt.exit.while.body_crit_edge

mpi3mr_dequeue_fwevt.exit.while.body_crit_edge:   ; preds = %mpi3mr_dequeue_fwevt.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

mpi3mr_dequeue_fwevt.exit.lor.rhs_crit_edge:      ; preds = %mpi3mr_dequeue_fwevt.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.rhs

lor.rhs:                                          ; preds = %mpi3mr_dequeue_fwevt.exit.lor.rhs_crit_edge, %mpi3mr_dequeue_fwevt.exit.thread
  %17 = ptrtoint ptr %current_event5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %current_event5, align 8
  %tobool6.not = icmp eq ptr %18, null
  br i1 %tobool6.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %mpi3mr_dequeue_fwevt.exit.while.body_crit_edge
  %fwevt.0 = phi ptr [ %7, %mpi3mr_dequeue_fwevt.exit.while.body_crit_edge ], [ %18, %lor.rhs.while.body_crit_edge ]
  %work = getelementptr inbounds %struct.mpi3mr_fwevt, ptr %fwevt.0, i32 0, i32 1
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #18
  br i1 %call7, label %if.then8, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

if.then8:                                         ; preds = %while.body
  %ref_count.i = getelementptr inbounds %struct.mpi3mr_fwevt, ptr %fwevt.0, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #18
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mpi3mr_fwevt_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !612

if.end5.i.i.i.i.i.mpi3mr_fwevt_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_fwevt_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef 3) #18
  br label %mpi3mr_fwevt_put.exit

if.then.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %fwevt.0) #18
  br label %mpi3mr_fwevt_put.exit

mpi3mr_fwevt_put.exit:                            ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mpi3mr_fwevt_put.exit_crit_edge
  %call.i.i.i.i.i.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #18
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i18 = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i18)
  %cmp.i.i.i.i.i19 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i18, 1
  br i1 %cmp.i.i.i.i.i19, label %if.then.i.i23, label %if.end5.i.i.i.i.i21

if.end5.i.i.i.i.i21:                              ; preds = %mpi3mr_fwevt_put.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i18)
  %.not.i.i.i.i.i20 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i18, 0
  br i1 %.not.i.i.i.i.i20, label %if.end5.i.i.i.i.i21.while.cond.backedge_crit_edge, label %if.then10.i.i.i.i.i22, !prof !612

if.end5.i.i.i.i.i21.while.cond.backedge_crit_edge: ; preds = %if.end5.i.i.i.i.i21
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

if.then10.i.i.i.i.i22:                            ; preds = %if.end5.i.i.i.i.i21
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef 3) #18
  br label %while.cond.backedge

if.then.i.i23:                                    ; preds = %mpi3mr_fwevt_put.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %fwevt.0) #18
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then.i.i23, %if.then10.i.i.i.i.i22, %if.end5.i.i.i.i.i21.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  br label %while.cond

cleanup:                                          ; preds = %lor.rhs.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi3mr_invalidate_devhandles(ptr noundef readonly %mrioc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tgtdev_list = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 77
  %0 = ptrtoint ptr %tgtdev_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %tgtdev.019 = load ptr, ptr %tgtdev_list, align 4
  %cmp.not20 = icmp eq ptr %tgtdev.019, %tgtdev_list
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tgtdev.021 = phi ptr [ %tgtdev.0, %for.inc.for.body_crit_edge ], [ %tgtdev.019, %entry.for.body_crit_edge ]
  %dev_handle = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.021, i32 0, i32 2
  %1 = ptrtoint ptr %dev_handle to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %dev_handle, align 4
  %starget = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.021, i32 0, i32 1
  %2 = ptrtoint ptr %starget to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %starget, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %hostdata = getelementptr inbounds %struct.scsi_target, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %dev_handle6 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev_handle6 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %dev_handle6, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %tgtdev.021 to i32
  call void @__asan_load4_noabort(i32 %7)
  %tgtdev.0 = load ptr, ptr %tgtdev.021, align 4
  %cmp.not = icmp eq ptr %tgtdev.0, %tgtdev_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi3mr_flush_host_io(ptr noundef %mrioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %shost1 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 2
  %0 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost1, align 4
  %flush_io_count = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 105
  %2 = ptrtoint ptr %flush_io_count to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %flush_io_count, align 4
  %name = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name, ptr noundef nonnull @.str.2) #21
  %tag_set = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 13
  tail call void @blk_mq_tagset_busy_iter(ptr noundef %tag_set, ptr noundef nonnull @mpi3mr_flush_scmd, ptr noundef %mrioc) #18
  %3 = ptrtoint ptr %flush_io_count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flush_io_count, align 4
  %conv = zext i16 %4 to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name, ptr noundef nonnull @.str.2, i32 noundef %conv) #21
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tagset_busy_iter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mpi3mr_flush_scmd(ptr noundef %rq, ptr nocapture noundef %data, i1 noundef zeroext %reserved) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.then

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then:                                          ; preds = %entry
  %add.ptr.i22 = getelementptr %struct.request, ptr %rq, i32 2, i32 19
  %in_lld_scope = getelementptr %struct.request, ptr %rq, i32 2, i32 20
  %0 = ptrtoint ptr %in_lld_scope to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_lld_scope, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %if.then
  %meta_sg_valid = getelementptr inbounds %struct.scmd_priv, ptr %add.ptr.i22, i32 0, i32 2
  %2 = ptrtoint ptr %meta_sg_valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %meta_sg_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %pdev = getelementptr inbounds %struct.mpi3mr_ioc, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %prot_sdb.i = getelementptr %struct.request, ptr %rq, i32 2, i32 6
  %6 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then5.scsi_prot_sg_count.exit_crit_edge, label %cond.true.i25

if.then5.scsi_prot_sg_count.exit_crit_edge:       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  br label %scsi_prot_sg_count.exit

cond.true.i25:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %nents.i = getelementptr inbounds %struct.sg_table, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nents.i, align 4
  br label %scsi_prot_sg_count.exit

scsi_prot_sg_count.exit:                          ; preds = %cond.true.i25, %if.then5.scsi_prot_sg_count.exit_crit_edge
  %cond.i28 = phi ptr [ %9, %cond.true.i25 ], [ null, %if.then5.scsi_prot_sg_count.exit_crit_edge ]
  %cond.i26 = phi i32 [ %11, %cond.true.i25 ], [ 0, %if.then5.scsi_prot_sg_count.exit_crit_edge ]
  %sc_data_direction = getelementptr %struct.request, ptr %rq, i32 2
  %12 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sc_data_direction, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %cond.i28, i32 noundef %cond.i26, i32 noundef %13, i32 noundef 0) #18
  br label %if.end8

if.end8:                                          ; preds = %scsi_prot_sg_count.exit, %if.end.if.end8_crit_edge
  %14 = ptrtoint ptr %in_lld_scope to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %in_lld_scope, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i = icmp eq i8 %15, 0
  br i1 %cmp.i, label %do.end.i, label %if.end22.i, !prof !614

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 128, i32 noundef 9, ptr noundef null) #18
  br label %mpi3mr_clear_scmd_priv.exit

if.end22.i:                                       ; preds = %if.end8
  %16 = ptrtoint ptr %add.ptr.i22 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %add.ptr.i22, align 4
  %req_q_idx.i = getelementptr %struct.request, ptr %rq, i32 2, i32 22
  %17 = ptrtoint ptr %req_q_idx.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %req_q_idx.i, align 4
  %scmd23.i = getelementptr %struct.request, ptr %rq, i32 2, i32 21
  %18 = ptrtoint ptr %scmd23.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %scmd23.i, align 4
  %19 = ptrtoint ptr %in_lld_scope to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %in_lld_scope, align 2
  %meta_sg_valid.i = getelementptr %struct.scsi_cmnd, ptr %add.ptr.i, i32 1, i32 0, i32 0, i32 3
  %20 = ptrtoint ptr %meta_sg_valid.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %meta_sg_valid.i, align 1
  %chain_idx.i = getelementptr %struct.request, ptr %rq, i32 2, i32 23
  %21 = ptrtoint ptr %chain_idx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chain_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp25.i = icmp sgt i32 %22, -1
  br i1 %cmp25.i, label %if.then27.i, label %if.end22.i.if.end30.i_crit_edge

if.end22.i.if.end30.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  %chain_bitmap.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %data, i32 0, i32 82
  %23 = ptrtoint ptr %chain_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chain_bitmap.i, align 4
  tail call void @_clear_bit(i32 noundef %22, ptr noundef %24) #18
  %25 = ptrtoint ptr %chain_idx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %chain_idx.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %if.end22.i.if.end30.i_crit_edge
  %meta_chain_idx.i = getelementptr %struct.request, ptr %rq, i32 2, i32 25
  %26 = ptrtoint ptr %meta_chain_idx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %meta_chain_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp31.i = icmp sgt i32 %27, -1
  br i1 %cmp31.i, label %if.then33.i, label %if.end30.i.mpi3mr_clear_scmd_priv.exit_crit_edge

if.end30.i.mpi3mr_clear_scmd_priv.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_clear_scmd_priv.exit

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  %chain_bitmap35.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %data, i32 0, i32 82
  %28 = ptrtoint ptr %chain_bitmap35.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chain_bitmap35.i, align 4
  tail call void @_clear_bit(i32 noundef %27, ptr noundef %29) #18
  %30 = ptrtoint ptr %meta_chain_idx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %meta_chain_idx.i, align 4
  br label %mpi3mr_clear_scmd_priv.exit

mpi3mr_clear_scmd_priv.exit:                      ; preds = %if.then33.i, %if.end30.i.mpi3mr_clear_scmd_priv.exit_crit_edge, %do.end.i
  tail call void @scsi_dma_unmap(ptr noundef nonnull %add.ptr.i) #18
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i, i32 0, i32 24
  %31 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 524288, ptr %result, align 4
  tail call void @scsi_print_command(ptr noundef nonnull %add.ptr.i) #18
  tail call void @scsi_done(ptr noundef nonnull %add.ptr.i) #18
  %flush_io_count = getelementptr inbounds %struct.mpi3mr_ioc, ptr %data, i32 0, i32 105
  %32 = ptrtoint ptr %flush_io_count to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flush_io_count, align 4
  %inc = add i16 %33, 1
  store i16 %inc, ptr %flush_io_count, align 4
  br label %out

out:                                              ; preds = %mpi3mr_clear_scmd_priv.exit, %if.then.out_crit_edge, %entry.out_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi3mr_rfresh_tgtdevs(ptr noundef %mrioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tgtdev_list = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 77
  %0 = ptrtoint ptr %tgtdev_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgtdev_list, align 4
  %cmp.not65 = icmp eq ptr %1, %tgtdev_list
  br i1 %cmp.not65, label %entry.for.cond20.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond20.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond20.preheader

for.body.lr.ph:                                   ; preds = %entry
  %name.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  br label %for.body

for.cond20.preheader:                             ; preds = %for.inc.for.cond20.preheader_crit_edge, %entry.for.cond20.preheader_crit_edge
  %2 = ptrtoint ptr %tgtdev_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %tgtdev.168 = load ptr, ptr %tgtdev_list, align 4
  %cmp23.not69 = icmp eq ptr %tgtdev.168, %tgtdev_list
  br i1 %cmp23.not69, label %for.cond20.preheader.for.end44_crit_edge, label %for.cond20.preheader.for.body26_crit_edge

for.cond20.preheader.for.body26_crit_edge:        ; preds = %for.cond20.preheader
  br label %for.body26

for.cond20.preheader.for.end44_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end44

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tgtdev.066 = phi ptr [ %1, %for.body.lr.ph ], [ %tgtdev_next.067, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %tgtdev.066 to i32
  call void @__asan_load4_noabort(i32 %3)
  %tgtdev_next.067 = load ptr, ptr %tgtdev.066, align 8
  %dev_handle = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.066, i32 0, i32 2
  %4 = ptrtoint ptr %dev_handle to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dev_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp7 = icmp eq i16 %5, -1
  br i1 %cmp7, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %host_exposed = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.066, i32 0, i32 9
  %6 = ptrtoint ptr %host_exposed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %host_exposed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %wwid.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.066, i32 0, i32 11
  %8 = ptrtoint ptr %wwid.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wwid.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name.i, ptr noundef nonnull @.str.40, i32 noundef 65535, i64 noundef %9) #21
  %starget.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.066, i32 0, i32 1
  %10 = ptrtoint ptr %starget.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %starget.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.mpi3mr_remove_tgtdev_from_host.exit_crit_edge, label %land.lhs.true.i

if.then.mpi3mr_remove_tgtdev_from_host.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_remove_tgtdev_from_host.exit

land.lhs.true.i:                                  ; preds = %if.then
  %hostdata.i = getelementptr inbounds %struct.scsi_target, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hostdata.i, align 8
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev_handle5.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dev_handle5.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %dev_handle5.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge
  %15 = ptrtoint ptr %starget.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load ptr, ptr %starget.i, align 8
  %tobool7.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool7.not.i, label %if.end.i.mpi3mr_remove_tgtdev_from_host.exit_crit_edge, label %if.then8.i

if.end.i.mpi3mr_remove_tgtdev_from_host.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_remove_tgtdev_from_host.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev.i = getelementptr inbounds %struct.scsi_target, ptr %.pr.i, i32 0, i32 3
  tail call void @scsi_remove_target(ptr noundef %dev.i) #18
  %16 = ptrtoint ptr %host_exposed to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %host_exposed, align 8
  br label %mpi3mr_remove_tgtdev_from_host.exit

mpi3mr_remove_tgtdev_from_host.exit:              ; preds = %if.then8.i, %if.end.i.mpi3mr_remove_tgtdev_from_host.exit_crit_edge, %if.then.mpi3mr_remove_tgtdev_from_host.exit_crit_edge
  %17 = ptrtoint ptr %dev_handle to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dev_handle, align 4
  %conv18.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %wwid.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wwid.i, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i, ptr noundef nonnull @.str.40, i32 noundef %conv18.i, i64 noundef %20) #21
  tail call fastcc void @mpi3mr_tgtdev_del_from_list(ptr noundef %mrioc, ptr noundef %tgtdev.066)
  %ref_count.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.066, i32 0, i32 13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #18
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %mpi3mr_remove_tgtdev_from_host.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i, !prof !612

if.end5.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef 3) #18
  br label %for.inc

if.then.i.i:                                      ; preds = %mpi3mr_remove_tgtdev_from_host.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef %tgtdev.066) #18
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tgtdev_next.067, %tgtdev_list
  br i1 %cmp.not, label %for.inc.for.cond20.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.cond20.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond20.preheader

for.body26:                                       ; preds = %for.inc38.for.body26_crit_edge, %for.cond20.preheader.for.body26_crit_edge
  %tgtdev.170 = phi ptr [ %tgtdev.1, %for.inc38.for.body26_crit_edge ], [ %tgtdev.168, %for.cond20.preheader.for.body26_crit_edge ]
  %dev_handle27 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.170, i32 0, i32 2
  %22 = ptrtoint ptr %dev_handle27 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dev_handle27, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %cmp29.not = icmp eq i16 %23, -1
  br i1 %cmp29.not, label %for.body26.for.inc38_crit_edge, label %land.lhs.true31

for.body26.for.inc38_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc38

land.lhs.true31:                                  ; preds = %for.body26
  %is_hidden = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.170, i32 0, i32 8
  %24 = ptrtoint ptr %is_hidden to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_hidden, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool32.not = icmp eq i8 %25, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %land.lhs.true31.for.inc38_crit_edge

land.lhs.true31.for.inc38_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc38

land.lhs.true33:                                  ; preds = %land.lhs.true31
  %host_exposed34 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.170, i32 0, i32 9
  %26 = ptrtoint ptr %host_exposed34 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %host_exposed34, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool35.not = icmp eq i8 %27, 0
  br i1 %tobool35.not, label %if.then36, label %land.lhs.true33.for.inc38_crit_edge

land.lhs.true33.for.inc38_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc38

if.then36:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #20
  %perst_id = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.170, i32 0, i32 6
  %28 = ptrtoint ptr %perst_id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %perst_id, align 4
  tail call fastcc void @mpi3mr_report_tgtdev_to_host(ptr noundef %mrioc, i16 noundef zeroext %29)
  br label %for.inc38

for.inc38:                                        ; preds = %if.then36, %land.lhs.true33.for.inc38_crit_edge, %land.lhs.true31.for.inc38_crit_edge, %for.body26.for.inc38_crit_edge
  %30 = ptrtoint ptr %tgtdev.170 to i32
  call void @__asan_load4_noabort(i32 %30)
  %tgtdev.1 = load ptr, ptr %tgtdev.170, align 4
  %cmp23.not = icmp eq ptr %tgtdev.1, %tgtdev_list
  br i1 %cmp23.not, label %for.inc38.for.end44_crit_edge, label %for.inc38.for.body26_crit_edge

for.inc38.for.body26_crit_edge:                   ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body26

for.inc38.for.end44_crit_edge:                    ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end44

for.end44:                                        ; preds = %for.inc38.for.end44_crit_edge, %for.cond20.preheader.for.end44_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpi3mr_tgtdev_del_from_list(ptr noundef %mrioc, ptr noundef %tgtdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tgtdev_lock = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 76
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tgtdev_lock) #18
  %0 = ptrtoint ptr %tgtdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %tgtdev, align 4
  %cmp.i.not = icmp eq ptr %1, %tgtdev
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tgtdev) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tgtdev, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %tgtdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tgtdev, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %tgtdev to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %tgtdev, ptr %tgtdev, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %tgtdev, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tgtdev, ptr %prev.i3.i, align 4
  %ref_count.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #18
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !612

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef 3) #18
  br label %if.end

if.then.i.i:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef %tgtdev) #18
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tgtdev_lock, i32 noundef %call2) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpi3mr_report_tgtdev_to_host(ptr noundef %mrioc, i16 noundef zeroext %perst_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @mpi3mr_get_tgtdev_by_perst_id(ptr noundef %mrioc, i16 noundef zeroext %perst_id)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.end

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.end:                                           ; preds = %entry
  %is_hidden = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %is_hidden to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_hidden, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.if.then16_crit_edge

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then16

if.end4:                                          ; preds = %if.end
  %host_exposed = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %host_exposed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %host_exposed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end4.if.then16_crit_edge

if.end4.if.then16_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then16

land.lhs.true:                                    ; preds = %if.end4
  %reset_in_progress = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 96
  %4 = ptrtoint ptr %reset_in_progress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reset_in_progress, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.then16_crit_edge

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then16

if.then7:                                         ; preds = %land.lhs.true
  %6 = ptrtoint ptr %host_exposed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %host_exposed, align 8
  %shost = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 2
  %7 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 49
  %perst_id9 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %perst_id9 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %perst_id9, align 4
  %conv = zext i16 %10 to i32
  tail call void @scsi_scan_target(ptr noundef %shost_gendev, i32 noundef 0, i32 noundef %conv, i64 noundef -1, i32 noundef 0) #18
  %starget = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %starget to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %starget, align 8
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.then11, label %if.then7.if.then16_crit_edge

if.then7.if.then16_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then16

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %host_exposed to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %host_exposed, align 8
  br label %if.then16

if.then16:                                        ; preds = %if.then11, %if.then7.if.then16_crit_edge, %land.lhs.true.if.then16_crit_edge, %if.end4.if.then16_crit_edge, %if.end.if.then16_crit_edge
  %ref_count.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call, i32 0, i32 13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #18
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end17_crit_edge, label %if.then10.i.i.i.i.i, !prof !612

if.end5.i.i.i.i.i.if.end17_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef 3) #18
  br label %if.end17

if.then.i.i:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %call) #18
  br label %if.end17

if.end17:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi3mr_flush_delayed_cmd_lists(ptr noundef %mrioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %logging_level = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 104
  %0 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %logging_level, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %name = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name) #21
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %delayed_rmhs_list = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 91
  %2 = ptrtoint ptr %delayed_rmhs_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %delayed_rmhs_list, align 4
  %cmp.i.not52 = icmp eq ptr %3, %delayed_rmhs_list
  br i1 %cmp.i.not52, label %do.end3.do.body8_crit_edge, label %do.end3.while.body_crit_edge

do.end3.while.body_crit_edge:                     ; preds = %do.end3
  br label %while.body

do.end3.do.body8_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body8

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %do.end3.while.body_crit_edge
  %4 = phi ptr [ %14, %list_del.exit.while.body_crit_edge ], [ %3, %do.end3.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #18
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %4) #18
  %13 = ptrtoint ptr %delayed_rmhs_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %delayed_rmhs_list, align 4
  %cmp.i.not = icmp eq ptr %14, %delayed_rmhs_list
  br i1 %cmp.i.not, label %list_del.exit.do.body8_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

list_del.exit.do.body8_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body8

do.body8:                                         ; preds = %list_del.exit.do.body8_crit_edge, %do.end3.do.body8_crit_edge
  %15 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %logging_level, align 8
  %and10 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body8.do.end22_crit_edge, label %do.end15

do.body8.do.end22_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end22

do.end15:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #20
  %name17 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name17) #21
  br label %do.end22

do.end22:                                         ; preds = %do.end15, %do.body8.do.end22_crit_edge
  %delayed_evtack_cmds_list = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 94
  %17 = ptrtoint ptr %delayed_evtack_cmds_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %delayed_evtack_cmds_list, align 4
  %cmp.i44.not53 = icmp eq ptr %18, %delayed_evtack_cmds_list
  br i1 %cmp.i44.not53, label %do.end22.while.end34_crit_edge, label %do.end22.while.body27_crit_edge

do.end22.while.body27_crit_edge:                  ; preds = %do.end22
  br label %while.body27

do.end22.while.end34_crit_edge:                   ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end34

while.body27:                                     ; preds = %list_del.exit51.while.body27_crit_edge, %do.end22.while.body27_crit_edge
  %19 = phi ptr [ %29, %list_del.exit51.while.body27_crit_edge ], [ %18, %do.end22.while.body27_crit_edge ]
  %call.i.i46 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #18
  br i1 %call.i.i46, label %if.end.i.i49, label %while.body27.list_del.exit51_crit_edge

while.body27.list_del.exit51_crit_edge:           ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit51

if.end.i.i49:                                     ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i47 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i47, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i48 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i48, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit51

list_del.exit51:                                  ; preds = %if.end.i.i49, %while.body27.list_del.exit51_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  %prev.i50 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i50, align 4
  tail call void @kfree(ptr noundef %19) #18
  %28 = ptrtoint ptr %delayed_evtack_cmds_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %delayed_evtack_cmds_list, align 4
  %cmp.i44.not = icmp eq ptr %29, %delayed_evtack_cmds_list
  br i1 %cmp.i44.not, label %list_del.exit51.while.end34_crit_edge, label %list_del.exit51.while.body27_crit_edge

list_del.exit51.while.body27_crit_edge:           ; preds = %list_del.exit51
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body27

list_del.exit51.while.end34_crit_edge:            ; preds = %list_del.exit51
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end34

while.end34:                                      ; preds = %list_del.exit51.while.end34_crit_edge, %do.end22.while.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi3mr_os_handle_events(ptr noundef %mrioc, ptr noundef readonly %event_reply) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %stop_drv_processing = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 74
  %0 = ptrtoint ptr %stop_drv_processing to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stop_drv_processing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_flags = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 0, i32 5
  %2 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msg_flags, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp ne i8 %4, 0
  %event = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 0, i32 10
  %5 = ptrtoint ptr %event to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %event, align 1
  %conv4 = zext i8 %6 to i16
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %do.end22 [
    i8 7, label %sw.bb
    i8 13, label %if.end.i108
    i8 22, label %sw.bb12
    i8 32, label %sw.bb13
    i8 9, label %sw.bb14
    i8 8, label %if.end.if.then32_crit_edge
    i8 14, label %sw.bb16
    i8 5, label %sw.bb17
    i8 6, label %sw.bb18
    i8 12, label %if.end.sw.epilog_crit_edge
    i8 17, label %if.end.sw.epilog_crit_edge255
    i8 25, label %if.end.sw.epilog_crit_edge256
    i8 18, label %if.end.sw.epilog_crit_edge257
    i8 34, label %if.end.sw.epilog_crit_edge258
  ]

if.end.sw.epilog_crit_edge258:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end.sw.epilog_crit_edge257:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end.sw.epilog_crit_edge256:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end.sw.epilog_crit_edge255:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end.if.then32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

sw.bb:                                            ; preds = %if.end
  %event_data = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 0, i32 13
  %persistent_id.i = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 1, i32 12
  %8 = ptrtoint ptr %persistent_id.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %persistent_id.i, align 8
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #18
  %call.i = tail call fastcc ptr @mpi3mr_get_tgtdev_by_perst_id(ptr noundef %mrioc, i16 noundef zeroext %10) #18
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  tail call fastcc void @mpi3mr_update_tgtdev(ptr noundef %mrioc, ptr noundef nonnull %call.i, ptr noundef %event_data) #18
  %ref_count.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.then32_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !612

if.end5.i.i.i.i.i.i.if.then32_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef 3) #18
  br label %if.then32

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %call.i) #18
  br label %if.then32

if.else.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2848, i32 noundef 64) #22
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end, label %if.end.i

if.end.i:                                         ; preds = %if.else.i
  %ref_count.i18.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call7.i.i.i.i, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i18.i, i32 noundef 4) #18
  %13 = ptrtoint ptr %ref_count.i18.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %ref_count.i18.i, align 8
  tail call fastcc void @mpi3mr_update_tgtdev(ptr noundef %mrioc, ptr noundef nonnull %call7.i.i.i.i, ptr noundef %event_data) #18
  %tgtdev_lock.i.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 76
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tgtdev_lock.i.i) #18
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i18.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %ref_count.i18.i, i32 1, i32 3, i32 1) #18
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i18.i, ptr %ref_count.i18.i, i32 1, ptr elementtype(i32) %ref_count.i18.i) #18, !srcloc !615
  %asmresult.i.i.i.i.i.i.i.i19.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i19.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i19.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !614

if.end.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i19.i, 1
  %15 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.mpi3mr_tgtdev_get.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !612

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.mpi3mr_tgtdev_get.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_tgtdev_get.exit.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i18.i, i32 noundef %.sink.i.i.i.i.i.i.i) #18
  br label %mpi3mr_tgtdev_get.exit.i.i

mpi3mr_tgtdev_get.exit.i.i:                       ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.mpi3mr_tgtdev_get.exit.i.i_crit_edge
  %16 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %tgtdev_list.i.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 77
  %prev.i11.i.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 77, i32 1
  %18 = ptrtoint ptr %prev.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i11.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %19, ptr noundef %tgtdev_list.i.i) #18
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %mpi3mr_tgtdev_get.exit.i.i.mpi3mr_tgtdev_add_to_list.exit.i_crit_edge

mpi3mr_tgtdev_get.exit.i.i.mpi3mr_tgtdev_add_to_list.exit.i_crit_edge: ; preds = %mpi3mr_tgtdev_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_tgtdev_add_to_list.exit.i

if.end.i.i.i.i:                                   ; preds = %mpi3mr_tgtdev_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %prev.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i.i, ptr %prev.i11.i.i, align 4
  %21 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tgtdev_list.i.i, ptr %call7.i.i.i.i, align 8
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i.i.i, ptr %19, align 4
  br label %mpi3mr_tgtdev_add_to_list.exit.i

mpi3mr_tgtdev_add_to_list.exit.i:                 ; preds = %if.end.i.i.i.i, %mpi3mr_tgtdev_get.exit.i.i.mpi3mr_tgtdev_add_to_list.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tgtdev_lock.i.i, i32 noundef %call2.i.i) #18
  br label %if.then32

do.end:                                           ; preds = %if.else.i
  %name = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef nonnull @.str.13) #21
  br i1 %cmp.not, label %do.end.if.then32_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end.if.then32_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

if.end.i108:                                      ; preds = %if.end
  %event_data.i = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 0, i32 13
  %dev_handle1.i = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 1, i32 1
  %24 = ptrtoint ptr %dev_handle1.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dev_handle1.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #18
  %reason_code.i = getelementptr inbounds %struct.mpi3_event_data_device_status_change, ptr %event_data.i, i32 0, i32 1
  %27 = ptrtoint ptr %reason_code.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reason_code.i, align 2
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.339)
  switch i8 %28, label %if.end.i108.sw.epilog.i_crit_edge [
    i8 32, label %if.end.i108.sw.bb.i_crit_edge
    i8 36, label %if.end.i108.sw.bb.i_crit_edge259
    i8 2, label %sw.epilog.thread.i
    i8 80, label %sw.bb3.i
    i8 33, label %if.end.i108.sw.bb4.i_crit_edge
    i8 37, label %if.end.i108.sw.bb4.i_crit_edge260
  ]

if.end.i108.sw.bb4.i_crit_edge260:                ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb4.i

if.end.i108.sw.bb4.i_crit_edge:                   ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb4.i

if.end.i108.sw.bb.i_crit_edge259:                 ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb.i

if.end.i108.sw.bb.i_crit_edge:                    ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb.i

if.end.i108.sw.epilog.i_crit_edge:                ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i108.sw.bb.i_crit_edge, %if.end.i108.sw.bb.i_crit_edge259
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i108.sw.bb4.i_crit_edge, %if.end.i108.sw.bb4.i_crit_edge260
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb.i, %if.end.i108.sw.epilog.i_crit_edge
  %tobool23.not.i = phi i1 [ true, %if.end.i108.sw.epilog.i_crit_edge ], [ false, %sw.bb4.i ], [ true, %sw.bb3.i ], [ true, %sw.bb.i ]
  %tobool17.not.i = phi i1 [ true, %if.end.i108.sw.epilog.i_crit_edge ], [ true, %sw.bb4.i ], [ true, %sw.bb3.i ], [ false, %sw.bb.i ]
  %tobool20.not.i = phi i1 [ true, %if.end.i108.sw.epilog.i_crit_edge ], [ true, %sw.bb4.i ], [ false, %sw.bb3.i ], [ true, %sw.bb.i ]
  %call.i109 = tail call fastcc ptr @mpi3mr_get_tgtdev_by_handle(ptr noundef %mrioc, i16 noundef zeroext %26) #18
  %tobool5.not.i = icmp eq ptr %call.i109, null
  br i1 %tobool5.not.i, label %sw.epilog.i.if.then32_crit_edge, label %sw.epilog.i.if.end10.i_crit_edge

sw.epilog.i.if.end10.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10.i

sw.epilog.i.if.then32_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

sw.epilog.thread.i:                               ; preds = %if.end.i108
  %call61.i = tail call fastcc ptr @mpi3mr_get_tgtdev_by_handle(ptr noundef %mrioc, i16 noundef zeroext %26) #18
  %tobool5.not62.i = icmp eq ptr %call61.i, null
  br i1 %tobool5.not62.i, label %sw.epilog.thread.i.if.then32_crit_edge, label %if.then9.i

sw.epilog.thread.i.if.then32_crit_edge:           ; preds = %sw.epilog.thread.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

if.then9.i:                                       ; preds = %sw.epilog.thread.i
  call void @__sanitizer_cov_trace_pc() #20
  %is_hidden.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call61.i, i32 0, i32 8
  %30 = ptrtoint ptr %is_hidden.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %is_hidden.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %sw.epilog.i.if.end10.i_crit_edge
  %tobool23.not6386.i = phi i1 [ true, %if.then9.i ], [ %tobool23.not.i, %sw.epilog.i.if.end10.i_crit_edge ]
  %tobool17.not6484.i = phi i1 [ true, %if.then9.i ], [ %tobool17.not.i, %sw.epilog.i.if.end10.i_crit_edge ]
  %tobool8.not6582.i = phi i1 [ false, %if.then9.i ], [ true, %sw.epilog.i.if.end10.i_crit_edge ]
  %tobool20.not6680.i = phi i1 [ false, %if.then9.i ], [ %tobool20.not.i, %sw.epilog.i.if.end10.i_crit_edge ]
  %tobool29.not6778.i = phi i1 [ true, %if.then9.i ], [ %tobool20.not.i, %sw.epilog.i.if.end10.i_crit_edge ]
  %call6876.i = phi ptr [ %call61.i, %if.then9.i ], [ %call.i109, %sw.epilog.i.if.end10.i_crit_edge ]
  %starget.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call6876.i, i32 0, i32 1
  %31 = ptrtoint ptr %starget.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %starget.i, align 8
  %tobool11.not.i = icmp eq ptr %32, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end28.i_crit_edge, label %land.lhs.true.i

if.end10.i.if.end28.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28.i

land.lhs.true.i:                                  ; preds = %if.end10.i
  %hostdata.i = getelementptr inbounds %struct.scsi_target, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hostdata.i, align 8
  %tobool13.not.i = icmp eq ptr %34, null
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end28.i_crit_edge, label %if.then14.i

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  br i1 %tobool17.not6484.i, label %if.then14.i.if.end19.i_crit_edge, label %if.then18.i

if.then14.i.if.end19.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #20
  %block_io.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %34, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %block_io.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %block_io.i, i32 1, i32 3, i32 1) #18
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %block_io.i, ptr %block_io.i, i32 1, ptr elementtype(i32) %block_io.i) #18, !srcloc !616
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.then14.i.if.end19.i_crit_edge
  br i1 %tobool20.not6680.i, label %if.end19.i.if.end22.i_crit_edge, label %if.then21.i

if.end19.i.if.end22.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev_removed.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %34, i32 0, i32 5
  %36 = ptrtoint ptr %dev_removed.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %dev_removed.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end22.i_crit_edge
  br i1 %tobool23.not6386.i, label %if.end22.i.if.end28.i_crit_edge, label %if.then24.i

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28.i

if.then24.i:                                      ; preds = %if.end22.i
  %block_io25.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %34, i32 0, i32 4
  %call.i.i55.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %block_io25.i, i32 noundef 4) #18
  %37 = ptrtoint ptr %block_io25.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %block_io25.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.then24.i
  %c.0.i.i.i = phi i32 [ %38, %if.then24.i ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  %sub.i.i.i = add i32 %c.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.if.end28.i_crit_edge, label %do.cond3.i.i.i, !prof !614

do.body1.i.i.i.if.end28.i_crit_edge:              ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28.i

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !617
  tail call void @llvm.prefetch.p0(ptr %block_io25.i, i32 1, i32 3, i32 1) #18
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %block_io25.i, ptr %block_io25.i, i32 %c.0.i.i.i, i32 %sub.i.i.i, ptr elementtype(i32) %block_io25.i) #18, !srcloc !618
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %39, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %39, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !619
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.if.end28.i_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !612

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body1.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i.if.end28.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28.i

if.end28.i:                                       ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.if.end28.i_crit_edge, %do.body1.i.i.i.if.end28.i_crit_edge, %if.end22.i.if.end28.i_crit_edge, %land.lhs.true.i.if.end28.i_crit_edge, %if.end10.i.if.end28.i_crit_edge
  br i1 %tobool29.not6778.i, label %if.end28.i.if.end31.i_crit_edge, label %if.then30.i

if.end28.i.if.end31.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31.i

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @mpi3mr_dev_rmhs_send_tm(ptr noundef %mrioc, i16 noundef zeroext %26, ptr noundef null, i8 noundef zeroext 16) #18
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i, %if.end28.i.if.end31.i_crit_edge
  br i1 %tobool8.not6582.i, label %if.end31.i.out.i_crit_edge, label %if.then33.i

if.end31.i.out.i_crit_edge:                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.i

if.then33.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @mpi3mr_dev_rmhs_send_tm(ptr noundef %mrioc, i16 noundef zeroext %26, ptr noundef null, i8 noundef zeroext 18) #18
  br label %out.i

out.i:                                            ; preds = %if.then33.i, %if.end31.i.out.i_crit_edge
  %tobool35.not.i = icmp eq ptr %call6876.i, null
  br i1 %tobool35.not.i, label %out.i.if.then32_crit_edge, label %if.then36.i

out.i.if.then32_crit_edge:                        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

if.then36.i:                                      ; preds = %out.i
  %ref_count.i.i110 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call6876.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i.i111 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i110, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i110, i32 1, i32 3, i32 1) #18
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i110, ptr %ref_count.i.i110, i32 1, ptr elementtype(i32) %ref_count.i.i110) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i.i112 = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i112)
  %cmp.i.i.i.i.i.i113 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i112, 1
  br i1 %cmp.i.i.i.i.i.i113, label %if.then.i.i.i117, label %if.end5.i.i.i.i.i.i115

if.end5.i.i.i.i.i.i115:                           ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i112)
  %.not.i.i.i.i.i.i114 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i112, 0
  br i1 %.not.i.i.i.i.i.i114, label %if.end5.i.i.i.i.i.i115.if.then32_crit_edge, label %if.then10.i.i.i.i.i.i116, !prof !612

if.end5.i.i.i.i.i.i115.if.then32_crit_edge:       ; preds = %if.end5.i.i.i.i.i.i115
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

if.then10.i.i.i.i.i.i116:                         ; preds = %if.end5.i.i.i.i.i.i115
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i110, i32 noundef 3) #18
  br label %if.then32

if.then.i.i.i117:                                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %call6876.i) #18
  br label %if.then32

sw.bb12:                                          ; preds = %if.end
  %num_entries.i = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 1, i32 3
  %41 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_entries.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp68.not.i = icmp eq i8 %42, 0
  br i1 %cmp68.not.i, label %sw.bb12.if.then32_crit_edge, label %for.body.lr.ph.i

sw.bb12.if.then32_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

for.body.lr.ph.i:                                 ; preds = %sw.bb12
  %phy_entry.i = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 1, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.069.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [1 x %struct.mpi3_event_sas_topo_phy_entry], ptr %phy_entry.i, i32 0, i32 %i.069.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool.not.i118 = icmp eq i16 %44, 0
  br i1 %tobool.not.i118, label %for.body.i.for.inc.i_crit_edge, label %if.end.i120

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end.i120:                                      ; preds = %for.body.i
  %status.i = getelementptr [1 x %struct.mpi3_event_sas_topo_phy_entry], ptr %phy_entry.i, i32 0, i32 %i.069.i, i32 2
  %46 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %status.i, align 1
  %48 = and i8 %47, 15
  %call.i119 = tail call fastcc ptr @mpi3mr_get_tgtdev_by_handle(ptr noundef %mrioc, i16 noundef zeroext %45) #18
  %tobool6.not.i = icmp eq ptr %call.i119, null
  br i1 %tobool6.not.i, label %if.end.i120.if.end14.i_crit_edge, label %land.lhs.true.i122

if.end.i120.if.end14.i_crit_edge:                 ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14.i

land.lhs.true.i122:                               ; preds = %if.end.i120
  %starget.i121 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i119, i32 0, i32 1
  %49 = ptrtoint ptr %starget.i121 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %starget.i121, align 8
  %tobool7.not.i = icmp eq ptr %50, null
  br i1 %tobool7.not.i, label %land.lhs.true.i122.if.end14.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i122.if.end14.i_crit_edge:          ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #20
  %hostdata.i123 = getelementptr inbounds %struct.scsi_target, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %hostdata.i123 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hostdata.i123, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %land.lhs.true8.i, %land.lhs.true.i122.if.end14.i_crit_edge, %if.end.i120.if.end14.i_crit_edge
  %scsi_tgt_priv_data.0.i = phi ptr [ null, %land.lhs.true.i122.if.end14.i_crit_edge ], [ null, %if.end.i120.if.end14.i_crit_edge ], [ %52, %land.lhs.true8.i ]
  %conv15.i = zext i8 %48 to i32
  %53 = zext i32 %conv15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.340)
  switch i32 %conv15.i, label %if.end14.i.sw.epilog.i141_crit_edge [
    i32 2, label %sw.bb.i124
    i32 5, label %sw.bb19.i
    i32 6, label %sw.bb25.i
  ]

if.end14.i.sw.epilog.i141_crit_edge:              ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i141

sw.bb.i124:                                       ; preds = %if.end14.i
  %tobool16.not.i = icmp eq ptr %scsi_tgt_priv_data.0.i, null
  br i1 %tobool16.not.i, label %sw.bb.i124.if.end18.i_crit_edge, label %if.then17.i

sw.bb.i124.if.end18.i_crit_edge:                  ; preds = %sw.bb.i124
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18.i

if.then17.i:                                      ; preds = %sw.bb.i124
  call void @__sanitizer_cov_trace_pc() #20
  %dev_removed.i125 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.0.i, i32 0, i32 5
  %54 = ptrtoint ptr %dev_removed.i125 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %dev_removed.i125, align 4
  %dev_removedelay.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.0.i, i32 0, i32 6
  %55 = ptrtoint ptr %dev_removedelay.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %dev_removedelay.i, align 1
  %block_io.i126 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.0.i, i32 0, i32 4
  %call.i.i.i127 = tail call zeroext i1 @__kasan_check_write(ptr noundef %block_io.i126, i32 noundef 4) #18
  %56 = ptrtoint ptr %block_io.i126 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 0, ptr %block_io.i126, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %sw.bb.i124.if.end18.i_crit_edge
  tail call fastcc void @mpi3mr_dev_rmhs_send_tm(ptr noundef %mrioc, i16 noundef zeroext %45, ptr noundef null, i8 noundef zeroext 16) #18
  br label %sw.epilog.i141

sw.bb19.i:                                        ; preds = %if.end14.i
  %tobool20.not.i128 = icmp eq ptr %scsi_tgt_priv_data.0.i, null
  br i1 %tobool20.not.i128, label %sw.bb19.i.sw.epilog.i141_crit_edge, label %if.then21.i129

sw.bb19.i.sw.epilog.i141_crit_edge:               ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i141

if.then21.i129:                                   ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev_removedelay22.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.0.i, i32 0, i32 6
  %57 = ptrtoint ptr %dev_removedelay22.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %dev_removedelay22.i, align 1
  %block_io23.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.0.i, i32 0, i32 4
  %call.i.i65.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %block_io23.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %block_io23.i, i32 1, i32 3, i32 1) #18
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %block_io23.i, ptr %block_io23.i, i32 1, ptr elementtype(i32) %block_io23.i) #18, !srcloc !616
  br label %sw.epilog.i141

sw.bb25.i:                                        ; preds = %if.end14.i
  %tobool26.not.i = icmp eq ptr %scsi_tgt_priv_data.0.i, null
  br i1 %tobool26.not.i, label %sw.bb25.i.sw.epilog.i141_crit_edge, label %land.lhs.true27.i

sw.bb25.i.sw.epilog.i141_crit_edge:               ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i141

land.lhs.true27.i:                                ; preds = %sw.bb25.i
  %dev_removedelay28.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.0.i, i32 0, i32 6
  %59 = ptrtoint ptr %dev_removedelay28.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %dev_removedelay28.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool30.not.i = icmp eq i8 %60, 0
  br i1 %tobool30.not.i, label %land.lhs.true27.i.sw.epilog.i141_crit_edge, label %if.then31.i

land.lhs.true27.i.sw.epilog.i141_crit_edge:       ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i141

if.then31.i:                                      ; preds = %land.lhs.true27.i
  %61 = ptrtoint ptr %dev_removedelay28.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %dev_removedelay28.i, align 1
  %block_io33.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.0.i, i32 0, i32 4
  %call.i.i66.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %block_io33.i, i32 noundef 4) #18
  %62 = ptrtoint ptr %block_io33.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %block_io33.i, align 4
  br label %do.body1.i.i.i133

do.body1.i.i.i133:                                ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i140.do.body1.i.i.i133_crit_edge, %if.then31.i
  %c.0.i.i.i130 = phi i32 [ %63, %if.then31.i ], [ %asmresult3.i.i.i.i.i.i138, %arch_atomic_cmpxchg.exit.i.i.i.i140.do.body1.i.i.i133_crit_edge ]
  %sub.i.i.i131 = add i32 %c.0.i.i.i130, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i131)
  %cmp.i.i.i132 = icmp slt i32 %sub.i.i.i131, 0
  br i1 %cmp.i.i.i132, label %do.body1.i.i.i133.sw.epilog.i141_crit_edge, label %do.cond3.i.i.i134, !prof !614

do.body1.i.i.i133.sw.epilog.i141_crit_edge:       ; preds = %do.body1.i.i.i133
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i141

do.cond3.i.i.i134:                                ; preds = %do.body1.i.i.i133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !617
  tail call void @llvm.prefetch.p0(ptr %block_io33.i, i32 1, i32 3, i32 1) #18
  br label %do.body.i.i.i.i.i.i137

do.body.i.i.i.i.i.i137:                           ; preds = %do.body.i.i.i.i.i.i137.do.body.i.i.i.i.i.i137_crit_edge, %do.cond3.i.i.i134
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %block_io33.i, ptr %block_io33.i, i32 %c.0.i.i.i130, i32 %sub.i.i.i131, ptr elementtype(i32) %block_io33.i) #18, !srcloc !618
  %asmresult.i.i.i.i.i.i135 = extractvalue { i32, i32 } %64, 0
  %tobool.not.i.i.i.i.i.i136 = icmp eq i32 %asmresult.i.i.i.i.i.i135, 0
  br i1 %tobool.not.i.i.i.i.i.i136, label %arch_atomic_cmpxchg.exit.i.i.i.i140, label %do.body.i.i.i.i.i.i137.do.body.i.i.i.i.i.i137_crit_edge

do.body.i.i.i.i.i.i137.do.body.i.i.i.i.i.i137_crit_edge: ; preds = %do.body.i.i.i.i.i.i137
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i.i.i.i.i137

arch_atomic_cmpxchg.exit.i.i.i.i140:              ; preds = %do.body.i.i.i.i.i.i137
  %asmresult3.i.i.i.i.i.i138 = extractvalue { i32, i32 } %64, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !619
  %cmp.not.i.i.i.i139 = icmp eq i32 %asmresult3.i.i.i.i.i.i138, %c.0.i.i.i130
  br i1 %cmp.not.i.i.i.i139, label %arch_atomic_cmpxchg.exit.i.i.i.i140.sw.epilog.i141_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.i140.do.body1.i.i.i133_crit_edge, !prof !612

arch_atomic_cmpxchg.exit.i.i.i.i140.do.body1.i.i.i133_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i140
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body1.i.i.i133

arch_atomic_cmpxchg.exit.i.i.i.i140.sw.epilog.i141_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i140
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i141

sw.epilog.i141:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i140.sw.epilog.i141_crit_edge, %do.body1.i.i.i133.sw.epilog.i141_crit_edge, %land.lhs.true27.i.sw.epilog.i141_crit_edge, %sw.bb25.i.sw.epilog.i141_crit_edge, %if.then21.i129, %sw.bb19.i.sw.epilog.i141_crit_edge, %if.end18.i, %if.end14.i.sw.epilog.i141_crit_edge
  br i1 %tobool6.not.i, label %sw.epilog.i141.for.inc.i_crit_edge, label %if.then38.i

sw.epilog.i141.for.inc.i_crit_edge:               ; preds = %sw.epilog.i141
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then38.i:                                      ; preds = %sw.epilog.i141
  %ref_count.i.i142 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i119, i32 0, i32 13
  %call.i.i.i.i.i.i.i.i143 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i142, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i142, i32 1, i32 3, i32 1) #18
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i142, ptr %ref_count.i.i142, i32 1, ptr elementtype(i32) %ref_count.i.i142) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i.i144 = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i144)
  %cmp.i.i.i.i.i.i145 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i144, 1
  br i1 %cmp.i.i.i.i.i.i145, label %if.then.i.i.i149, label %if.end5.i.i.i.i.i.i147

if.end5.i.i.i.i.i.i147:                           ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i144)
  %.not.i.i.i.i.i.i146 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i144, 0
  br i1 %.not.i.i.i.i.i.i146, label %if.end5.i.i.i.i.i.i147.for.inc.i_crit_edge, label %if.then10.i.i.i.i.i.i148, !prof !612

if.end5.i.i.i.i.i.i147.for.inc.i_crit_edge:       ; preds = %if.end5.i.i.i.i.i.i147
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then10.i.i.i.i.i.i148:                         ; preds = %if.end5.i.i.i.i.i.i147
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i142, i32 noundef 3) #18
  br label %for.inc.i

if.then.i.i.i149:                                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %call.i119) #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i.i149, %if.then10.i.i.i.i.i.i148, %if.end5.i.i.i.i.i.i147.for.inc.i_crit_edge, %sw.epilog.i141.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.069.i, 1
  %66 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %num_entries.i, align 2
  %conv.i = zext i8 %67 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.then32_crit_edge

for.inc.i.if.then32_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

sw.bb13:                                          ; preds = %if.end
  %num_entries.i150 = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 1, i32 3
  %68 = ptrtoint ptr %num_entries.i150 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num_entries.i150, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp66.not.i = icmp eq i8 %69, 0
  br i1 %cmp66.not.i, label %sw.bb13.if.then32_crit_edge, label %for.body.lr.ph.i151

sw.bb13.if.then32_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

for.body.lr.ph.i151:                              ; preds = %sw.bb13
  %port_entry.i = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 1, i32 8
  br label %for.body.i154

for.body.i154:                                    ; preds = %for.inc.i191.for.body.i154_crit_edge, %for.body.lr.ph.i151
  %i.067.i = phi i32 [ 0, %for.body.lr.ph.i151 ], [ %inc.i188, %for.inc.i191.for.body.i154_crit_edge ]
  %arrayidx.i152 = getelementptr [1 x %struct.mpi3_event_pcie_topo_port_entry], ptr %port_entry.i, i32 0, i32 %i.067.i
  %70 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx.i152, align 4
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool.not.i153 = icmp eq i16 %71, 0
  br i1 %tobool.not.i153, label %for.body.i154.for.inc.i191_crit_edge, label %if.end.i156

for.body.i154.for.inc.i191_crit_edge:             ; preds = %for.body.i154
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i191

if.end.i156:                                      ; preds = %for.body.i154
  %port_status.i = getelementptr [1 x %struct.mpi3_event_pcie_topo_port_entry], ptr %port_entry.i, i32 0, i32 %i.067.i, i32 1
  %73 = ptrtoint ptr %port_status.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %port_status.i, align 2
  %call.i155 = tail call fastcc ptr @mpi3mr_get_tgtdev_by_handle(ptr noundef %mrioc, i16 noundef zeroext %72) #18
  %tobool4.not.i = icmp eq ptr %call.i155, null
  br i1 %tobool4.not.i, label %if.end.i156.if.end12.i_crit_edge, label %land.lhs.true.i159

if.end.i156.if.end12.i_crit_edge:                 ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12.i

land.lhs.true.i159:                               ; preds = %if.end.i156
  %starget.i157 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i155, i32 0, i32 1
  %75 = ptrtoint ptr %starget.i157 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %starget.i157, align 8
  %tobool5.not.i158 = icmp eq ptr %76, null
  br i1 %tobool5.not.i158, label %land.lhs.true.i159.if.end12.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i159.if.end12.i_crit_edge:          ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #20
  %hostdata.i160 = getelementptr inbounds %struct.scsi_target, ptr %76, i32 0, i32 14
  %77 = ptrtoint ptr %hostdata.i160 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hostdata.i160, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %land.lhs.true6.i, %land.lhs.true.i159.if.end12.i_crit_edge, %if.end.i156.if.end12.i_crit_edge
  %scsi_tgt_priv_data.0.i161 = phi ptr [ null, %land.lhs.true.i159.if.end12.i_crit_edge ], [ null, %if.end.i156.if.end12.i_crit_edge ], [ %78, %land.lhs.true6.i ]
  %79 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.341)
  switch i8 %74, label %if.end12.i.sw.epilog.i178_crit_edge [
    i8 2, label %sw.bb.i162
    i8 5, label %sw.bb17.i
    i8 6, label %sw.bb23.i
  ]

if.end12.i.sw.epilog.i178_crit_edge:              ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i178

sw.bb.i162:                                       ; preds = %if.end12.i
  %tobool14.not.i = icmp eq ptr %scsi_tgt_priv_data.0.i161, null
  br i1 %tobool14.not.i, label %sw.bb.i162.if.end16.i_crit_edge, label %if.then15.i

sw.bb.i162.if.end16.i_crit_edge:                  ; preds = %sw.bb.i162
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.i

if.then15.i:                                      ; preds = %sw.bb.i162
  call void @__sanitizer_cov_trace_pc() #20
  %dev_removed.i163 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.0.i161, i32 0, i32 5
  %80 = ptrtoint ptr %dev_removed.i163 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %dev_removed.i163, align 4
  %dev_removedelay.i164 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.0.i161, i32 0, i32 6
  %81 = ptrtoint ptr %dev_removedelay.i164 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %dev_removedelay.i164, align 1
  %block_io.i165 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.0.i161, i32 0, i32 4
  %call.i.i.i166 = tail call zeroext i1 @__kasan_check_write(ptr noundef %block_io.i165, i32 noundef 4) #18
  %82 = ptrtoint ptr %block_io.i165 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 0, ptr %block_io.i165, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %sw.bb.i162.if.end16.i_crit_edge
  tail call fastcc void @mpi3mr_dev_rmhs_send_tm(ptr noundef %mrioc, i16 noundef zeroext %72, ptr noundef null, i8 noundef zeroext 16) #18
  br label %sw.epilog.i178

sw.bb17.i:                                        ; preds = %if.end12.i
  %tobool18.not.i = icmp eq ptr %scsi_tgt_priv_data.0.i161, null
  br i1 %tobool18.not.i, label %sw.bb17.i.sw.epilog.i178_crit_edge, label %if.then19.i

sw.bb17.i.sw.epilog.i178_crit_edge:               ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i178

if.then19.i:                                      ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev_removedelay20.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.0.i161, i32 0, i32 6
  %83 = ptrtoint ptr %dev_removedelay20.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %dev_removedelay20.i, align 1
  %block_io21.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.0.i161, i32 0, i32 4
  %call.i.i63.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %block_io21.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %block_io21.i, i32 1, i32 3, i32 1) #18
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %block_io21.i, ptr %block_io21.i, i32 1, ptr elementtype(i32) %block_io21.i) #18, !srcloc !616
  br label %sw.epilog.i178

sw.bb23.i:                                        ; preds = %if.end12.i
  %tobool24.not.i = icmp eq ptr %scsi_tgt_priv_data.0.i161, null
  br i1 %tobool24.not.i, label %sw.bb23.i.sw.epilog.i178_crit_edge, label %land.lhs.true25.i

sw.bb23.i.sw.epilog.i178_crit_edge:               ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i178

land.lhs.true25.i:                                ; preds = %sw.bb23.i
  %dev_removedelay26.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.0.i161, i32 0, i32 6
  %85 = ptrtoint ptr %dev_removedelay26.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dev_removedelay26.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool28.not.i = icmp eq i8 %86, 0
  br i1 %tobool28.not.i, label %land.lhs.true25.i.sw.epilog.i178_crit_edge, label %if.then29.i

land.lhs.true25.i.sw.epilog.i178_crit_edge:       ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i178

if.then29.i:                                      ; preds = %land.lhs.true25.i
  %87 = ptrtoint ptr %dev_removedelay26.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %dev_removedelay26.i, align 1
  %block_io31.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.0.i161, i32 0, i32 4
  %call.i.i64.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %block_io31.i, i32 noundef 4) #18
  %88 = ptrtoint ptr %block_io31.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %block_io31.i, align 4
  br label %do.body1.i.i.i170

do.body1.i.i.i170:                                ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i177.do.body1.i.i.i170_crit_edge, %if.then29.i
  %c.0.i.i.i167 = phi i32 [ %89, %if.then29.i ], [ %asmresult3.i.i.i.i.i.i175, %arch_atomic_cmpxchg.exit.i.i.i.i177.do.body1.i.i.i170_crit_edge ]
  %sub.i.i.i168 = add i32 %c.0.i.i.i167, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i168)
  %cmp.i.i.i169 = icmp slt i32 %sub.i.i.i168, 0
  br i1 %cmp.i.i.i169, label %do.body1.i.i.i170.sw.epilog.i178_crit_edge, label %do.cond3.i.i.i171, !prof !614

do.body1.i.i.i170.sw.epilog.i178_crit_edge:       ; preds = %do.body1.i.i.i170
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i178

do.cond3.i.i.i171:                                ; preds = %do.body1.i.i.i170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !617
  tail call void @llvm.prefetch.p0(ptr %block_io31.i, i32 1, i32 3, i32 1) #18
  br label %do.body.i.i.i.i.i.i174

do.body.i.i.i.i.i.i174:                           ; preds = %do.body.i.i.i.i.i.i174.do.body.i.i.i.i.i.i174_crit_edge, %do.cond3.i.i.i171
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %block_io31.i, ptr %block_io31.i, i32 %c.0.i.i.i167, i32 %sub.i.i.i168, ptr elementtype(i32) %block_io31.i) #18, !srcloc !618
  %asmresult.i.i.i.i.i.i172 = extractvalue { i32, i32 } %90, 0
  %tobool.not.i.i.i.i.i.i173 = icmp eq i32 %asmresult.i.i.i.i.i.i172, 0
  br i1 %tobool.not.i.i.i.i.i.i173, label %arch_atomic_cmpxchg.exit.i.i.i.i177, label %do.body.i.i.i.i.i.i174.do.body.i.i.i.i.i.i174_crit_edge

do.body.i.i.i.i.i.i174.do.body.i.i.i.i.i.i174_crit_edge: ; preds = %do.body.i.i.i.i.i.i174
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i.i.i.i.i174

arch_atomic_cmpxchg.exit.i.i.i.i177:              ; preds = %do.body.i.i.i.i.i.i174
  %asmresult3.i.i.i.i.i.i175 = extractvalue { i32, i32 } %90, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !619
  %cmp.not.i.i.i.i176 = icmp eq i32 %asmresult3.i.i.i.i.i.i175, %c.0.i.i.i167
  br i1 %cmp.not.i.i.i.i176, label %arch_atomic_cmpxchg.exit.i.i.i.i177.sw.epilog.i178_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.i177.do.body1.i.i.i170_crit_edge, !prof !612

arch_atomic_cmpxchg.exit.i.i.i.i177.do.body1.i.i.i170_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i177
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body1.i.i.i170

arch_atomic_cmpxchg.exit.i.i.i.i177.sw.epilog.i178_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i177
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i178

sw.epilog.i178:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i177.sw.epilog.i178_crit_edge, %do.body1.i.i.i170.sw.epilog.i178_crit_edge, %land.lhs.true25.i.sw.epilog.i178_crit_edge, %sw.bb23.i.sw.epilog.i178_crit_edge, %if.then19.i, %sw.bb17.i.sw.epilog.i178_crit_edge, %if.end16.i, %if.end12.i.sw.epilog.i178_crit_edge
  br i1 %tobool4.not.i, label %sw.epilog.i178.for.inc.i191_crit_edge, label %if.then36.i183

sw.epilog.i178.for.inc.i191_crit_edge:            ; preds = %sw.epilog.i178
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i191

if.then36.i183:                                   ; preds = %sw.epilog.i178
  %ref_count.i.i179 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i155, i32 0, i32 13
  %call.i.i.i.i.i.i.i.i180 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i179, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i179, i32 1, i32 3, i32 1) #18
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i179, ptr %ref_count.i.i179, i32 1, ptr elementtype(i32) %ref_count.i.i179) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i.i181 = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i181)
  %cmp.i.i.i.i.i.i182 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i181, 1
  br i1 %cmp.i.i.i.i.i.i182, label %if.then.i.i.i187, label %if.end5.i.i.i.i.i.i185

if.end5.i.i.i.i.i.i185:                           ; preds = %if.then36.i183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i181)
  %.not.i.i.i.i.i.i184 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i181, 0
  br i1 %.not.i.i.i.i.i.i184, label %if.end5.i.i.i.i.i.i185.for.inc.i191_crit_edge, label %if.then10.i.i.i.i.i.i186, !prof !612

if.end5.i.i.i.i.i.i185.for.inc.i191_crit_edge:    ; preds = %if.end5.i.i.i.i.i.i185
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i191

if.then10.i.i.i.i.i.i186:                         ; preds = %if.end5.i.i.i.i.i.i185
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i179, i32 noundef 3) #18
  br label %for.inc.i191

if.then.i.i.i187:                                 ; preds = %if.then36.i183
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %call.i155) #18
  br label %for.inc.i191

for.inc.i191:                                     ; preds = %if.then.i.i.i187, %if.then10.i.i.i.i.i.i186, %if.end5.i.i.i.i.i.i185.for.inc.i191_crit_edge, %sw.epilog.i178.for.inc.i191_crit_edge, %for.body.i154.for.inc.i191_crit_edge
  %inc.i188 = add nuw nsw i32 %i.067.i, 1
  %92 = ptrtoint ptr %num_entries.i150 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %num_entries.i150, align 4
  %conv.i189 = zext i8 %93 to i32
  %cmp.i190 = icmp ult i32 %inc.i188, %conv.i189
  br i1 %cmp.i190, label %for.inc.i191.for.body.i154_crit_edge, label %for.inc.i191.if.then32_crit_edge

for.inc.i191.if.then32_crit_edge:                 ; preds = %for.inc.i191
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

for.inc.i191.for.body.i154_crit_edge:             ; preds = %for.inc.i191
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i154

sw.bb14:                                          ; preds = %if.end
  %event_data.i192 = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 0, i32 13
  %94 = ptrtoint ptr %event_data.i192 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %event_data.i192, align 2
  %96 = zext i8 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.342)
  switch i8 %95, label %sw.bb14.if.end34.i_crit_edge [
    i8 1, label %do.body.i
    i8 2, label %do.body16.i
  ]

sw.bb14.if.end34.i_crit_edge:                     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34.i

do.body.i:                                        ; preds = %sw.bb14
  %logging_level.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 104
  %97 = ptrtoint ptr %logging_level.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %logging_level.i, align 8
  %and.i = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i193 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i193, label %do.body.i.do.end6.i_crit_edge, label %do.end.i

do.body.i.do.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end6.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %name.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call.i194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name.i) #21
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.body.i.do.end6.i_crit_edge
  %prepare_for_reset.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 101
  %99 = ptrtoint ptr %prepare_for_reset.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %prepare_for_reset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool7.not.i195 = icmp eq i8 %100, 0
  br i1 %tobool7.not.i195, label %if.end9.i, label %do.end6.i.cleanup_crit_edge

do.end6.i.cleanup_crit_edge:                      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end9.i:                                        ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  %101 = ptrtoint ptr %prepare_for_reset.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %prepare_for_reset.i, align 8
  br label %if.end34.sink.split.i

do.body16.i:                                      ; preds = %sw.bb14
  %logging_level17.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 104
  %102 = ptrtoint ptr %logging_level17.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %logging_level17.i, align 8
  %and18.i = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %do.body16.i.do.end30.i_crit_edge, label %do.end23.i

do.body16.i.do.end30.i_crit_edge:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end30.i

do.end23.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #20
  %name25.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name25.i) #21
  br label %do.end30.i

do.end30.i:                                       ; preds = %do.end23.i, %do.body16.i.do.end30.i_crit_edge
  %prepare_for_reset31.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 101
  %104 = ptrtoint ptr %prepare_for_reset31.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %prepare_for_reset31.i, align 8
  br label %if.end34.sink.split.i

if.end34.sink.split.i:                            ; preds = %do.end30.i, %if.end9.i
  %prepare_for_reset_timeout_counter32.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 102
  %105 = ptrtoint ptr %prepare_for_reset_timeout_counter32.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %prepare_for_reset_timeout_counter32.i, align 2
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end34.sink.split.i, %sw.bb14.if.end34.i_crit_edge
  %106 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %msg_flags, align 1
  %108 = and i8 %107, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %cmp37.not.i = icmp eq i8 %108, 0
  br i1 %cmp37.not.i, label %if.end34.i.cleanup_crit_edge, label %if.then39.i

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #20
  %109 = ptrtoint ptr %event to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %event, align 1
  %event_context.i = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 0, i32 12
  %111 = ptrtoint ptr %event_context.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %event_context.i, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #18
  tail call fastcc void @mpi3mr_send_event_ack(ptr noundef %mrioc, i8 noundef zeroext %110, ptr noundef null, i32 noundef %113) #18
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  %shutdown_timeout1.i = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 1
  %114 = ptrtoint ptr %shutdown_timeout1.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %shutdown_timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %cmp.i196 = icmp eq i16 %115, 0
  br i1 %cmp.i196, label %do.end.i199, label %do.end7.i

do.end.i199:                                      ; preds = %sw.bb16
  %name.i197 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call.i198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name.i197, ptr noundef nonnull @.str.107, i32 noundef 0) #21
  br i1 %cmp.not, label %do.end.i199.if.then32_crit_edge, label %do.end.i199.cleanup_crit_edge

do.end.i199.cleanup_crit_edge:                    ; preds = %do.end.i199
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end.i199.if.then32_crit_edge:                  ; preds = %do.end.i199
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

do.end7.i:                                        ; preds = %sw.bb16
  %116 = tail call i16 @llvm.bswap.i16(i16 %115) #18
  %conv.i200 = zext i16 %116 to i32
  %name9.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %shutdown_timeout11.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 38, i32 23
  %117 = ptrtoint ptr %shutdown_timeout11.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %shutdown_timeout11.i, align 4
  %conv12.i = zext i16 %118 to i32
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %name9.i, ptr noundef nonnull @.str.107, i32 noundef %conv12.i, i32 noundef %conv.i200) #21
  %119 = ptrtoint ptr %shutdown_timeout11.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %116, ptr %shutdown_timeout11.i, align 4
  br i1 %cmp.not, label %do.end7.i.if.then32_crit_edge, label %do.end7.i.cleanup_crit_edge

do.end7.i.cleanup_crit_edge:                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end7.i.if.then32_crit_edge:                    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

sw.bb17:                                          ; preds = %if.end
  %event_data.i201 = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 0, i32 13
  %name.i202 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %120 = ptrtoint ptr %event_data.i201 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %event_data.i201, align 4
  %122 = tail call i16 @llvm.bswap.i16(i16 %121) #18
  %conv.i203 = zext i16 %122 to i32
  %and.i204 = and i32 %conv.i203, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i204)
  %tobool.not.i205 = icmp eq i32 %and.i204, 0
  %cond.i = select i1 %tobool.not.i205, ptr @.str.114, ptr @.str.113
  %and4.i = and i32 %conv.i203, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i206 = icmp eq i32 %and4.i, 0
  %cond6.i = select i1 %tobool5.not.i206, ptr @.str.114, ptr @.str.115
  %and9.i = and i32 %conv.i203, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %cond11.i = select i1 %tobool10.not.i, ptr @.str.114, ptr @.str.116
  %sensor_num.i = getelementptr inbounds %struct.mpi3_event_data_temp_threshold, ptr %event_data.i201, i32 0, i32 1
  %123 = ptrtoint ptr %sensor_num.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %sensor_num.i, align 2
  %conv12.i207 = zext i8 %124 to i32
  %current_temperature.i = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 1
  %125 = ptrtoint ptr %current_temperature.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %current_temperature.i, align 4
  %127 = tail call i16 @llvm.bswap.i16(i16 %126) #18
  %conv13.i = zext i16 %127 to i32
  %call.i208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i202, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond6.i, ptr noundef nonnull %cond11.i, i32 noundef %conv12.i207, i32 noundef %conv13.i) #21
  tail call void @mpi3mr_print_fault_info(ptr noundef %mrioc) #18
  br i1 %cmp.not, label %sw.bb17.if.then32_crit_edge, label %sw.bb17.cleanup_crit_edge

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb17.if.then32_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

sw.bb18:                                          ; preds = %if.end
  %event_data.i209 = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 0, i32 13
  %status.i210 = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 1
  %128 = ptrtoint ptr %status.i210 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %status.i210, align 4
  %130 = zext i8 %129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.343)
  switch i8 %129, label %sw.bb18.sw.epilog_crit_edge [
    i8 0, label %do.end.i213
    i8 2, label %do.end6.i214
  ]

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

do.end.i213:                                      ; preds = %sw.bb18
  %name.i211 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %receptacle_id.i = getelementptr inbounds %struct.mpi3_event_data_cable_management, ptr %event_data.i209, i32 0, i32 2
  %131 = ptrtoint ptr %receptacle_id.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %receptacle_id.i, align 1
  %conv2.i = zext i8 %132 to i32
  %133 = ptrtoint ptr %event_data.i209 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %event_data.i209, align 4
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #18
  %call.i212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %name.i211, i32 noundef %conv2.i, i32 noundef %135) #21
  br i1 %cmp.not, label %do.end.i213.if.then32_crit_edge, label %do.end.i213.cleanup_crit_edge

do.end.i213.cleanup_crit_edge:                    ; preds = %do.end.i213
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end.i213.if.then32_crit_edge:                  ; preds = %do.end.i213
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

do.end6.i214:                                     ; preds = %sw.bb18
  %name8.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %receptacle_id10.i = getelementptr inbounds %struct.mpi3_event_data_cable_management, ptr %event_data.i209, i32 0, i32 2
  %136 = ptrtoint ptr %receptacle_id10.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %receptacle_id10.i, align 1
  %conv11.i = zext i8 %137 to i32
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %name8.i, i32 noundef %conv11.i) #21
  br i1 %cmp.not, label %do.end6.i214.if.then32_crit_edge, label %do.end6.i214.cleanup_crit_edge

do.end6.i214.cleanup_crit_edge:                   ; preds = %do.end6.i214
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end6.i214.if.then32_crit_edge:                 ; preds = %do.end6.i214
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

do.end22:                                         ; preds = %if.end
  %conv5 = zext i8 %6 to i32
  %name24 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name24, ptr noundef nonnull @.str.13, i32 noundef %conv5) #21
  br i1 %cmp.not, label %do.end22.if.then32_crit_edge, label %do.end22.cleanup_crit_edge

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end22.if.then32_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

sw.epilog:                                        ; preds = %sw.bb18.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge255, %if.end.sw.epilog_crit_edge256, %if.end.sw.epilog_crit_edge257, %if.end.sw.epilog_crit_edge258
  br i1 %cmp.not, label %sw.epilog.if.then32_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.epilog.if.then32_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then32

if.then32:                                        ; preds = %sw.epilog.if.then32_crit_edge, %do.end22.if.then32_crit_edge, %do.end6.i214.if.then32_crit_edge, %do.end.i213.if.then32_crit_edge, %sw.bb17.if.then32_crit_edge, %do.end7.i.if.then32_crit_edge, %do.end.i199.if.then32_crit_edge, %for.inc.i191.if.then32_crit_edge, %sw.bb13.if.then32_crit_edge, %for.inc.i.if.then32_crit_edge, %sw.bb12.if.then32_crit_edge, %if.then.i.i.i117, %if.then10.i.i.i.i.i.i116, %if.end5.i.i.i.i.i.i115.if.then32_crit_edge, %out.i.if.then32_crit_edge, %sw.epilog.thread.i.if.then32_crit_edge, %sw.epilog.i.if.then32_crit_edge, %do.end.if.then32_crit_edge, %mpi3mr_tgtdev_add_to_list.exit.i, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.then32_crit_edge, %if.end.if.then32_crit_edge
  %ack_req.1.off0234 = phi i1 [ true, %sw.epilog.if.then32_crit_edge ], [ %cmp.not, %sw.epilog.i.if.then32_crit_edge ], [ %cmp.not, %sw.epilog.thread.i.if.then32_crit_edge ], [ %cmp.not, %out.i.if.then32_crit_edge ], [ %cmp.not, %if.end5.i.i.i.i.i.i115.if.then32_crit_edge ], [ %cmp.not, %if.then10.i.i.i.i.i.i116 ], [ %cmp.not, %if.then.i.i.i117 ], [ %cmp.not, %sw.bb12.if.then32_crit_edge ], [ %cmp.not, %sw.bb13.if.then32_crit_edge ], [ %cmp.not, %mpi3mr_tgtdev_add_to_list.exit.i ], [ %cmp.not, %if.end5.i.i.i.i.i.i.if.then32_crit_edge ], [ %cmp.not, %if.then10.i.i.i.i.i.i ], [ %cmp.not, %if.then.i.i.i ], [ %cmp.not, %if.end.if.then32_crit_edge ], [ true, %do.end22.if.then32_crit_edge ], [ true, %sw.bb17.if.then32_crit_edge ], [ true, %do.end.if.then32_crit_edge ], [ true, %do.end.i199.if.then32_crit_edge ], [ true, %do.end7.i.if.then32_crit_edge ], [ true, %do.end.i213.if.then32_crit_edge ], [ true, %do.end6.i214.if.then32_crit_edge ], [ %cmp.not, %for.inc.i.if.then32_crit_edge ], [ %cmp.not, %for.inc.i191.if.then32_crit_edge ]
  %process_evt_bh.1.off0233 = phi i1 [ false, %sw.epilog.if.then32_crit_edge ], [ true, %sw.epilog.i.if.then32_crit_edge ], [ true, %sw.epilog.thread.i.if.then32_crit_edge ], [ true, %out.i.if.then32_crit_edge ], [ true, %if.end5.i.i.i.i.i.i115.if.then32_crit_edge ], [ true, %if.then10.i.i.i.i.i.i116 ], [ true, %if.then.i.i.i117 ], [ true, %sw.bb12.if.then32_crit_edge ], [ true, %sw.bb13.if.then32_crit_edge ], [ true, %mpi3mr_tgtdev_add_to_list.exit.i ], [ true, %if.end5.i.i.i.i.i.i.if.then32_crit_edge ], [ true, %if.then10.i.i.i.i.i.i ], [ true, %if.then.i.i.i ], [ true, %if.end.if.then32_crit_edge ], [ false, %do.end22.if.then32_crit_edge ], [ false, %sw.bb17.if.then32_crit_edge ], [ false, %do.end.if.then32_crit_edge ], [ false, %do.end.i199.if.then32_crit_edge ], [ false, %do.end7.i.if.then32_crit_edge ], [ false, %do.end.i213.if.then32_crit_edge ], [ false, %do.end6.i214.if.then32_crit_edge ], [ true, %for.inc.i.if.then32_crit_edge ], [ true, %for.inc.i191.if.then32_crit_edge ]
  %event_data_length = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 0, i32 9
  %138 = ptrtoint ptr %event_data_length to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %event_data_length, align 4
  %conv33 = zext i8 %139 to i32
  %mul = shl nuw nsw i32 %conv33, 2
  %add.i = add nuw nsw i32 %mul, 68
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2848) #23
  %tobool.not.i219 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i219, label %do.end41, label %if.end46

do.end41:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #20
  %name43 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name43, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, i32 noundef 2282, ptr noundef nonnull @.str.13) #21
  br label %cleanup

if.end46:                                         ; preds = %if.then32
  %ref_count.i = getelementptr inbounds %struct.mpi3mr_fwevt, ptr %call9.i.i.i, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #18
  %140 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile i32 1, ptr %ref_count.i, align 64
  %event_data47 = getelementptr inbounds %struct.mpi3mr_fwevt, ptr %call9.i.i.i, i32 0, i32 8
  %event_data49 = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 0, i32 13
  %141 = call ptr @memcpy(ptr %event_data47, ptr %event_data49, i32 %mul)
  %mrioc52 = getelementptr inbounds %struct.mpi3mr_fwevt, ptr %call9.i.i.i, i32 0, i32 2
  %142 = ptrtoint ptr %mrioc52 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %mrioc, ptr %mrioc52, align 4
  %event_id = getelementptr inbounds %struct.mpi3mr_fwevt, ptr %call9.i.i.i, i32 0, i32 3
  %143 = ptrtoint ptr %event_id to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv4, ptr %event_id, align 8
  %send_ack = getelementptr inbounds %struct.mpi3mr_fwevt, ptr %call9.i.i.i, i32 0, i32 4
  %frombool = zext i1 %ack_req.1.off0234 to i8
  %144 = ptrtoint ptr %send_ack to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %frombool, ptr %send_ack, align 2
  %process_evt = getelementptr inbounds %struct.mpi3mr_fwevt, ptr %call9.i.i.i, i32 0, i32 5
  %frombool55 = zext i1 %process_evt_bh.1.off0233 to i8
  %145 = ptrtoint ptr %process_evt to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %frombool55, ptr %process_evt, align 1
  %event_context = getelementptr inbounds %struct.mpi3_event_notification_reply, ptr %event_reply, i32 0, i32 12
  %146 = ptrtoint ptr %event_context to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %event_context, align 4
  %148 = tail call i32 @llvm.bswap.i32(i32 %147)
  %evt_ctx = getelementptr inbounds %struct.mpi3mr_fwevt, ptr %call9.i.i.i, i32 0, i32 6
  %149 = ptrtoint ptr %evt_ctx to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %evt_ctx, align 4
  %fwevt_worker_thread.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 64
  %150 = ptrtoint ptr %fwevt_worker_thread.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %fwevt_worker_thread.i, align 8
  %tobool.not.i222 = icmp eq ptr %151, null
  br i1 %tobool.not.i222, label %if.end46.cleanup_crit_edge, label %do.body1.i

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body1.i:                                       ; preds = %if.end46
  %fwevt_lock.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 65
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fwevt_lock.i) #18
  %call.i.i.i.i.i.i.i.i224 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #18
  %152 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #18, !srcloc !615
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %152, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %do.body1.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !614

do.body1.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %do.body1.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %153 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %153)
  %.not.i.i.i.i.i.i225 = icmp sgt i32 %153, -1
  br i1 %.not.i.i.i.i.i.i225, label %if.else.i.i.i.i.i.i.mpi3mr_fwevt_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !612

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.mpi3mr_fwevt_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_fwevt_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %do.body1.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %do.body1.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef %.sink.i.i.i.i.i.i) #18
  br label %mpi3mr_fwevt_get.exit.i

mpi3mr_fwevt_get.exit.i:                          ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.mpi3mr_fwevt_get.exit.i_crit_edge
  %154 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %call9.i.i.i, ptr %call9.i.i.i, align 128
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %155 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %fwevt_list.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 66
  %prev.i31.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 66, i32 1
  %156 = ptrtoint ptr %prev.i31.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %prev.i31.i, align 4
  %call.i.i.i226 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %157, ptr noundef %fwevt_list.i) #18
  br i1 %call.i.i.i226, label %if.end.i.i.i227, label %mpi3mr_fwevt_get.exit.i.list_add_tail.exit.i_crit_edge

mpi3mr_fwevt_get.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %mpi3mr_fwevt_get.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add_tail.exit.i

if.end.i.i.i227:                                  ; preds = %mpi3mr_fwevt_get.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %158 = ptrtoint ptr %prev.i31.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call9.i.i.i, ptr %prev.i31.i, align 4
  %159 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %fwevt_list.i, ptr %call9.i.i.i, align 128
  %160 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %157, ptr %prev.i.i, align 4
  %161 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %call9.i.i.i, ptr %157, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i227, %mpi3mr_fwevt_get.exit.i.list_add_tail.exit.i_crit_edge
  %work.i = getelementptr inbounds %struct.mpi3mr_fwevt, ptr %call9.i.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #18
  %162 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.mpi3mr_fwevt, ptr %call9.i.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @mpi3mr_fwevt_add_to_list.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry10.i = getelementptr inbounds %struct.mpi3mr_fwevt, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  %163 = ptrtoint ptr %entry10.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %entry10.i, ptr %entry10.i, align 4
  %prev.i32.i = getelementptr inbounds %struct.mpi3mr_fwevt, ptr %call9.i.i.i, i32 0, i32 1, i32 1, i32 1
  %164 = ptrtoint ptr %prev.i32.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %entry10.i, ptr %prev.i32.i, align 16
  %func.i = getelementptr inbounds %struct.mpi3mr_fwevt, ptr %call9.i.i.i, i32 0, i32 1, i32 2
  %165 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @mpi3mr_fwevt_worker, ptr %func.i, align 4
  %call.i.i.i.i.i.i.i34.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #18
  %166 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #18, !srcloc !615
  %asmresult.i.i.i.i.i.i.i35.i = extractvalue { i32, i32, i32 } %166, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i35.i)
  %tobool1.not.i.i.i.i.i36.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i35.i, 0
  br i1 %tobool1.not.i.i.i.i.i36.i, label %list_add_tail.exit.i.if.end15.sink.split.i.i.i.i.i41.i_crit_edge, label %if.else.i.i.i.i.i39.i, !prof !614

list_add_tail.exit.i.if.end15.sink.split.i.i.i.i.i41.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i41.i

if.else.i.i.i.i.i39.i:                            ; preds = %list_add_tail.exit.i
  %add.i.i.i.i.i37.i = add i32 %asmresult.i.i.i.i.i.i.i35.i, 1
  %167 = or i32 %add.i.i.i.i.i37.i, %asmresult.i.i.i.i.i.i.i35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %167)
  %.not.i.i.i.i.i38.i = icmp sgt i32 %167, -1
  br i1 %.not.i.i.i.i.i38.i, label %if.else.i.i.i.i.i39.i.mpi3mr_fwevt_get.exit42.i_crit_edge, label %if.else.i.i.i.i.i39.i.if.end15.sink.split.i.i.i.i.i41.i_crit_edge, !prof !612

if.else.i.i.i.i.i39.i.if.end15.sink.split.i.i.i.i.i41.i_crit_edge: ; preds = %if.else.i.i.i.i.i39.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i41.i

if.else.i.i.i.i.i39.i.mpi3mr_fwevt_get.exit42.i_crit_edge: ; preds = %if.else.i.i.i.i.i39.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_fwevt_get.exit42.i

if.end15.sink.split.i.i.i.i.i41.i:                ; preds = %if.else.i.i.i.i.i39.i.if.end15.sink.split.i.i.i.i.i41.i_crit_edge, %list_add_tail.exit.i.if.end15.sink.split.i.i.i.i.i41.i_crit_edge
  %.sink.i.i.i.i.i40.i = phi i32 [ 2, %list_add_tail.exit.i.if.end15.sink.split.i.i.i.i.i41.i_crit_edge ], [ 1, %if.else.i.i.i.i.i39.i.if.end15.sink.split.i.i.i.i.i41.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef %.sink.i.i.i.i.i40.i) #18
  br label %mpi3mr_fwevt_get.exit42.i

mpi3mr_fwevt_get.exit42.i:                        ; preds = %if.end15.sink.split.i.i.i.i.i41.i, %if.else.i.i.i.i.i39.i.mpi3mr_fwevt_get.exit42.i_crit_edge
  %168 = ptrtoint ptr %fwevt_worker_thread.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %fwevt_worker_thread.i, align 8
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %169, ptr noundef %work.i) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fwevt_lock.i, i32 noundef %call2.i) #18
  br label %cleanup

cleanup:                                          ; preds = %mpi3mr_fwevt_get.exit42.i, %if.end46.cleanup_crit_edge, %do.end41, %sw.epilog.cleanup_crit_edge, %do.end22.cleanup_crit_edge, %do.end6.i214.cleanup_crit_edge, %do.end.i213.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %do.end7.i.cleanup_crit_edge, %do.end.i199.cleanup_crit_edge, %if.then39.i, %if.end34.i.cleanup_crit_edge, %do.end6.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi3mr_process_op_reply_desc(ptr noundef %mrioc, ptr noundef readonly %reply_desc, ptr nocapture noundef writeonly %reply_dma, i16 noundef zeroext %qidx) local_unnamed_addr #0 align 64 {
entry:
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #18
  %0 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %3 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %sshdr, align 8
  %4 = ptrtoint ptr %reply_dma to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %reply_dma, align 8
  %reply_flags = getelementptr inbounds %struct.mpi3_default_reply_descriptor, ptr %reply_desc, i32 0, i32 4
  %5 = ptrtoint ptr %reply_flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reply_flags, align 2
  %7 = shl i16 %6, 8
  %8 = and i16 %7, -4096
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.344)
  switch i16 %8, label %entry.if.end24.critedge.i_crit_edge [
    i16 12288, label %sw.bb
    i16 0, label %sw.bb10
    i16 4096, label %sw.bb41
  ]

entry.if.end24.critedge.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24.critedge.i

sw.bb:                                            ; preds = %entry
  %host_tag3 = getelementptr inbounds %struct.mpi3_status_reply_descriptor, ptr %reply_desc, i32 0, i32 5
  %10 = ptrtoint ptr %host_tag3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %host_tag3, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %reply_desc to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reply_desc, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %tobool.not = icmp sgt i16 %15, -1
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  %ioc_log_info = getelementptr inbounds %struct.mpi3_status_reply_descriptor, ptr %reply_desc, i32 0, i32 2
  %16 = ptrtoint ptr %ioc_log_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ioc_log_info, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %ioc_loginfo.0 = phi i32 [ %18, %if.then ], [ 0, %sw.bb.if.end_crit_edge ]
  %and8 = and i16 %15, 32767
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %19 = ptrtoint ptr %reply_desc to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %reply_desc, align 8
  %21 = tail call i64 @llvm.bswap.i64(i64 %20)
  %22 = ptrtoint ptr %reply_dma to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %reply_dma, align 8
  %conv11 = trunc i64 %21 to i32
  %call = tail call ptr @mpi3mr_get_reply_virt_addr(ptr noundef %mrioc, i32 noundef %conv11) #18
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #20
  %name = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.20, ptr noundef %name) #24
  unreachable

if.end14:                                         ; preds = %sw.bb10
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %call, align 8
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %ioc_status16 = getelementptr inbounds %struct.mpi3_scsi_io_reply, ptr %call, i32 0, i32 7
  %26 = ptrtoint ptr %ioc_status16 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ioc_status16, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %scsi_status17 = getelementptr inbounds %struct.mpi3_scsi_io_reply, ptr %call, i32 0, i32 9
  %29 = ptrtoint ptr %scsi_status17 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %scsi_status17, align 8
  %scsi_state18 = getelementptr inbounds %struct.mpi3_scsi_io_reply, ptr %call, i32 0, i32 10
  %31 = ptrtoint ptr %scsi_state18 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %scsi_state18, align 1
  %dev_handle19 = getelementptr inbounds %struct.mpi3_scsi_io_reply, ptr %call, i32 0, i32 11
  %33 = ptrtoint ptr %dev_handle19 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %dev_handle19, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %36 = and i8 %32, 3
  %and21 = zext i8 %36 to i32
  %transfer_count = getelementptr inbounds %struct.mpi3_scsi_io_reply, ptr %call, i32 0, i32 12
  %37 = ptrtoint ptr %transfer_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %transfer_count, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %sense_count23 = getelementptr inbounds %struct.mpi3_scsi_io_reply, ptr %call, i32 0, i32 13
  %40 = ptrtoint ptr %sense_count23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sense_count23, align 8
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %response_data = getelementptr inbounds %struct.mpi3_scsi_io_reply, ptr %call, i32 0, i32 14
  %43 = ptrtoint ptr %response_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %response_data, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %sense_data_buffer_address = getelementptr inbounds %struct.mpi3_scsi_io_reply, ptr %call, i32 0, i32 21
  %46 = ptrtoint ptr %sense_data_buffer_address to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %sense_data_buffer_address, align 8
  %48 = tail call i64 @llvm.bswap.i64(i64 %47)
  %conv24 = trunc i64 %48 to i32
  %call25 = tail call ptr @mpi3mr_get_sensebuf_virt_addr(ptr noundef %mrioc, i32 noundef %conv24) #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %28)
  %tobool28.not = icmp sgt i16 %28, -1
  br i1 %tobool28.not, label %if.end14.if.end31_crit_edge, label %if.then29

if.end14.if.end31_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

if.then29:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %ioc_log_info30 = getelementptr inbounds %struct.mpi3_scsi_io_reply, ptr %call, i32 0, i32 8
  %49 = ptrtoint ptr %ioc_log_info30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ioc_log_info30, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end14.if.end31_crit_edge
  %ioc_loginfo.1 = phi i32 [ %51, %if.then29 ], [ 0, %if.end14.if.end31_crit_edge ]
  %and33 = and i16 %28, 32767
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp = icmp eq i8 %36, 2
  br i1 %cmp, label %if.then37, label %if.end31.sw.epilog_crit_edge

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  %name38 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.21, ptr noundef %name38) #24
  unreachable

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %host_tag42 = getelementptr inbounds %struct.mpi3_success_reply_descriptor, ptr %reply_desc, i32 0, i32 3
  %52 = ptrtoint ptr %host_tag42 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %host_tag42, align 4
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb41, %if.end31.sw.epilog_crit_edge, %if.end
  %success_desc.0 = phi ptr [ %reply_desc, %sw.bb41 ], [ null, %if.end31.sw.epilog_crit_edge ], [ null, %if.end ]
  %scsi_reply.0 = phi ptr [ null, %sw.bb41 ], [ %call, %if.end31.sw.epilog_crit_edge ], [ null, %if.end ]
  %sense_buf.0 = phi ptr [ null, %sw.bb41 ], [ %call25, %if.end31.sw.epilog_crit_edge ], [ null, %if.end ]
  %scsi_state.0 = phi i8 [ 0, %sw.bb41 ], [ %32, %if.end31.sw.epilog_crit_edge ], [ 0, %if.end ]
  %scsi_status.0 = phi i8 [ 0, %sw.bb41 ], [ %30, %if.end31.sw.epilog_crit_edge ], [ 0, %if.end ]
  %sense_state.0 = phi i32 [ 0, %sw.bb41 ], [ %and21, %if.end31.sw.epilog_crit_edge ], [ 0, %if.end ]
  %xfer_count.0 = phi i32 [ 0, %sw.bb41 ], [ %39, %if.end31.sw.epilog_crit_edge ], [ 0, %if.end ]
  %sense_count.0 = phi i32 [ 0, %sw.bb41 ], [ %42, %if.end31.sw.epilog_crit_edge ], [ 0, %if.end ]
  %resp_data.0 = phi i32 [ 0, %sw.bb41 ], [ %45, %if.end31.sw.epilog_crit_edge ], [ 0, %if.end ]
  %dev_handle.0 = phi i16 [ -1, %sw.bb41 ], [ %35, %if.end31.sw.epilog_crit_edge ], [ -1, %if.end ]
  %ioc_loginfo.2 = phi i32 [ 0, %sw.bb41 ], [ %ioc_loginfo.1, %if.end31.sw.epilog_crit_edge ], [ %ioc_loginfo.0, %if.end ]
  %ioc_status.0 = phi i16 [ 0, %sw.bb41 ], [ %and33, %if.end31.sw.epilog_crit_edge ], [ %and8, %if.end ]
  %host_tag.0 = phi i16 [ %54, %sw.bb41 ], [ %25, %if.end31.sw.epilog_crit_edge ], [ %12, %if.end ]
  %max_host_ios.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 75
  %55 = ptrtoint ptr %max_host_ios.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %max_host_ios.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %host_tag.0)
  %cmp.i = icmp ult i16 %56, %host_tag.0
  br i1 %cmp.i, label %do.end.i, label %sw.epilog.if.end24.critedge.i_crit_edge, !prof !614

sw.epilog.if.end24.critedge.i_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24.critedge.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 96, i32 noundef 9, ptr noundef null) #18
  %.pre = zext i16 %host_tag.0 to i32
  br label %if.then45

if.end24.critedge.i:                              ; preds = %sw.epilog.if.end24.critedge.i_crit_edge, %entry.if.end24.critedge.i_crit_edge
  %host_tag.0395 = phi i16 [ %host_tag.0, %sw.epilog.if.end24.critedge.i_crit_edge ], [ 0, %entry.if.end24.critedge.i_crit_edge ]
  %ioc_status.0393 = phi i16 [ %ioc_status.0, %sw.epilog.if.end24.critedge.i_crit_edge ], [ 0, %entry.if.end24.critedge.i_crit_edge ]
  %ioc_loginfo.2391 = phi i32 [ %ioc_loginfo.2, %sw.epilog.if.end24.critedge.i_crit_edge ], [ 0, %entry.if.end24.critedge.i_crit_edge ]
  %dev_handle.0389 = phi i16 [ %dev_handle.0, %sw.epilog.if.end24.critedge.i_crit_edge ], [ -1, %entry.if.end24.critedge.i_crit_edge ]
  %resp_data.0387 = phi i32 [ %resp_data.0, %sw.epilog.if.end24.critedge.i_crit_edge ], [ 0, %entry.if.end24.critedge.i_crit_edge ]
  %sense_count.0385 = phi i32 [ %sense_count.0, %sw.epilog.if.end24.critedge.i_crit_edge ], [ 0, %entry.if.end24.critedge.i_crit_edge ]
  %xfer_count.0383 = phi i32 [ %xfer_count.0, %sw.epilog.if.end24.critedge.i_crit_edge ], [ 0, %entry.if.end24.critedge.i_crit_edge ]
  %sense_state.0381 = phi i32 [ %sense_state.0, %sw.epilog.if.end24.critedge.i_crit_edge ], [ 0, %entry.if.end24.critedge.i_crit_edge ]
  %scsi_status.0379 = phi i8 [ %scsi_status.0, %sw.epilog.if.end24.critedge.i_crit_edge ], [ 0, %entry.if.end24.critedge.i_crit_edge ]
  %scsi_state.0377 = phi i8 [ %scsi_state.0, %sw.epilog.if.end24.critedge.i_crit_edge ], [ 0, %entry.if.end24.critedge.i_crit_edge ]
  %sense_buf.0375 = phi ptr [ %sense_buf.0, %sw.epilog.if.end24.critedge.i_crit_edge ], [ null, %entry.if.end24.critedge.i_crit_edge ]
  %scsi_reply.0373 = phi ptr [ %scsi_reply.0, %sw.epilog.if.end24.critedge.i_crit_edge ], [ null, %entry.if.end24.critedge.i_crit_edge ]
  %success_desc.0371 = phi ptr [ %success_desc.0, %sw.epilog.if.end24.critedge.i_crit_edge ], [ null, %entry.if.end24.critedge.i_crit_edge ]
  %conv.i = zext i16 %host_tag.0395 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %conv25.i = zext i16 %qidx to i32
  %shl.i = shl nuw i32 %conv25.i, 16
  %or.i = or i32 %sub.i, %shl.i
  %shost.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 2
  %57 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %shost.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or.i)
  %cmp.i.i = icmp eq i32 %or.i, -1
  br i1 %cmp.i.i, label %if.end24.critedge.i.if.then45_crit_edge, label %if.end.i.i

if.end24.critedge.i.if.then45_crit_edge:          ; preds = %if.end24.critedge.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then45

if.end.i.i:                                       ; preds = %if.end24.critedge.i
  %shr.i.i.i = lshr i32 %or.i, 16
  %nr_hw_queues.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %58, i32 0, i32 13, i32 3
  %59 = ptrtoint ptr %nr_hw_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_hw_queues.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %shr.i.i.i)
  %cmp1.i.i = icmp ugt i32 %60, %shr.i.i.i
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.end.i.i.if.then45_crit_edge

if.end.i.i.if.then45_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then45

if.then3.i.i:                                     ; preds = %if.end.i.i
  %tags.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %58, i32 0, i32 13, i32 11
  %61 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tags.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %62, i32 %shr.i.i.i
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i, align 4
  %conv6.i.i = and i32 %sub.i, 65535
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %conv6.i.i)
  %cmp.i.i.i = icmp ugt i32 %66, %conv6.i.i
  br i1 %cmp.i.i.i, label %if.end8.i.i, label %if.then3.i.i.if.then45_crit_edge

if.then3.i.i.if.then45_crit_edge:                 ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then45

if.end8.i.i:                                      ; preds = %if.then3.i.i
  %rqs.i.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %64, i32 0, i32 5
  %67 = ptrtoint ptr %rqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rqs.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %68, i32 %conv6.i.i
  %69 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %70) #18, !srcloc !620
  %71 = ptrtoint ptr %rqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rqs.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr ptr, ptr %72, i32 %conv6.i.i
  %73 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx2.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.if.then45_crit_edge, label %lor.lhs.false.i.i

if.end8.i.i.if.then45_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then45

lor.lhs.false.i.i:                                ; preds = %if.end8.i.i
  %state.i.i.i.i = getelementptr inbounds %struct.request, ptr %74, i32 0, i32 25
  %75 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %state.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i22.not.i.i = icmp eq i32 %76, 0
  %add.ptr.i.i.i = getelementptr %struct.request, ptr %74, i32 1
  %tobool26.not.i = icmp eq ptr %add.ptr.i.i.i, null
  %or.cond.i = select i1 %cmp.i22.not.i.i, i1 true, i1 %tobool26.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.i.if.then45_crit_edge, label %if.then27.i

lor.lhs.false.i.i.if.then45_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then45

if.then27.i:                                      ; preds = %lor.lhs.false.i.i
  %in_lld_scope.i = getelementptr %struct.request, ptr %74, i32 2, i32 20
  %77 = ptrtoint ptr %in_lld_scope.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %in_lld_scope.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool29.not.i = icmp eq i8 %78, 0
  br i1 %tobool29.not.i, label %if.then27.i.if.then45_crit_edge, label %if.end49

if.then27.i.if.then45_crit_edge:                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then45

if.then45:                                        ; preds = %if.then27.i.if.then45_crit_edge, %lor.lhs.false.i.i.if.then45_crit_edge, %if.end8.i.i.if.then45_crit_edge, %if.then3.i.i.if.then45_crit_edge, %if.end.i.i.if.then45_crit_edge, %if.end24.critedge.i.if.then45_crit_edge, %do.end.i
  %conv48.pre-phi = phi i32 [ %conv.i, %if.then27.i.if.then45_crit_edge ], [ %.pre, %do.end.i ], [ %conv.i, %if.end24.critedge.i.if.then45_crit_edge ], [ %conv.i, %if.end8.i.i.if.then45_crit_edge ], [ %conv.i, %if.end.i.i.if.then45_crit_edge ], [ %conv.i, %if.then3.i.i.if.then45_crit_edge ], [ %conv.i, %lor.lhs.false.i.i.if.then45_crit_edge ]
  %name46 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.22, ptr noundef %name46, i32 noundef %conv48.pre-phi) #24
  unreachable

if.end49:                                         ; preds = %if.then27.i
  %add.ptr.i = getelementptr %struct.request, ptr %74, i32 2, i32 19
  %tobool51.not = icmp eq ptr %success_desc.0371, null
  br i1 %tobool51.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 0, i32 24
  %79 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %result, align 4
  br label %out_success

if.end53:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp2(i16 69, i16 %ioc_status.0393)
  %cmp55 = icmp eq i16 %ioc_status.0393, 69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xfer_count.0383)
  %cmp57 = icmp eq i32 %xfer_count.0383, 0
  %or.cond = select i1 %cmp55, i1 %cmp57, i1 false
  br i1 %or.cond, label %land.lhs.true59, label %if.end53.if.end71_crit_edge

if.end53.if.end71_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end71

land.lhs.true59:                                  ; preds = %if.end53
  %80 = zext i8 %scsi_status.0379 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.345)
  switch i8 %scsi_status.0379, label %land.lhs.true59.if.end71_crit_edge [
    i8 8, label %land.lhs.true59.if.then70_crit_edge
    i8 24, label %land.lhs.true59.if.then70_crit_edge416
    i8 40, label %land.lhs.true59.if.then70_crit_edge417
  ]

land.lhs.true59.if.then70_crit_edge417:           ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then70

land.lhs.true59.if.then70_crit_edge416:           ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then70

land.lhs.true59.if.then70_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then70

land.lhs.true59.if.end71_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end71

if.then70:                                        ; preds = %land.lhs.true59.if.then70_crit_edge, %land.lhs.true59.if.then70_crit_edge416, %land.lhs.true59.if.then70_crit_edge417
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %land.lhs.true59.if.end71_crit_edge, %if.end53.if.end71_crit_edge
  %ioc_status.1 = phi i16 [ 0, %if.then70 ], [ %ioc_status.0393, %if.end53.if.end71_crit_edge ], [ 69, %land.lhs.true59.if.end71_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sense_state.0381)
  %cmp73 = icmp eq i32 %sense_state.0381, 0
  %cmp73.not = xor i1 %cmp73, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sense_count.0385)
  %tobool76.not = icmp eq i32 %sense_count.0385, 0
  %or.cond341 = select i1 %cmp73.not, i1 true, i1 %tobool76.not
  %tobool78.not = icmp eq ptr %sense_buf.0375, null
  %or.cond342 = select i1 %or.cond341, i1 true, i1 %tobool78.not
  br i1 %or.cond342, label %if.end71.if.end82_crit_edge, label %if.then79

if.end71.if.end82_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end82

if.then79:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #20
  %81 = tail call i32 @llvm.umin.i32(i32 %sense_count.0385, i32 96)
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 0, i32 21
  %82 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sense_buffer, align 4
  %84 = call ptr @memcpy(ptr %83, ptr %sense_buf.0375, i32 %81)
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end71.if.end82_crit_edge
  %conv83 = zext i16 %ioc_status.1 to i32
  %85 = zext i16 %ioc_status.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.346)
  switch i16 %ioc_status.1, label %sw.default171 [
    i16 2, label %if.end82.sw.bb84_crit_edge
    i16 6, label %if.end82.sw.bb84_crit_edge418
    i16 67, label %sw.bb86
    i16 75, label %sw.bb88
    i16 72, label %if.end82.sw.bb90_crit_edge
    i16 76, label %if.end82.sw.bb90_crit_edge419
    i16 73, label %sw.bb92
    i16 69, label %sw.bb103
    i16 68, label %sw.bb143
    i16 64, label %if.end82.sw.bb144_crit_edge
    i16 0, label %if.end82.sw.bb144_crit_edge420
    i16 77, label %if.end82.mpi3mr_map_eedp_error.exit_crit_edge
    i16 79, label %sw.bb1.i
    i16 78, label %sw.bb2.i
  ]

if.end82.mpi3mr_map_eedp_error.exit_crit_edge:    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_map_eedp_error.exit

if.end82.sw.bb144_crit_edge420:                   ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb144

if.end82.sw.bb144_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb144

if.end82.sw.bb90_crit_edge419:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb90

if.end82.sw.bb90_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb90

if.end82.sw.bb84_crit_edge418:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb84

if.end82.sw.bb84_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb84

sw.bb84:                                          ; preds = %if.end82.sw.bb84_crit_edge, %if.end82.sw.bb84_crit_edge418
  %result85 = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 0, i32 24
  %86 = ptrtoint ptr %result85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 8, ptr %result85, align 4
  br label %sw.epilog173

sw.bb86:                                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  %result87 = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 0, i32 24
  %87 = ptrtoint ptr %result87 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 65536, ptr %result87, align 4
  br label %sw.epilog173

sw.bb88:                                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  %result89 = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 0, i32 24
  %88 = ptrtoint ptr %result89 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 720896, ptr %result89, align 4
  br label %sw.epilog173

sw.bb90:                                          ; preds = %if.end82.sw.bb90_crit_edge, %if.end82.sw.bb90_crit_edge419
  %result91 = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 0, i32 24
  %89 = ptrtoint ptr %result91 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 524288, ptr %result91, align 4
  br label %sw.epilog173

sw.bb92:                                          ; preds = %if.end82
  br i1 %cmp57, label %sw.bb92.if.then98_crit_edge, label %lor.lhs.false95

sw.bb92.if.then98_crit_edge:                      ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then98

lor.lhs.false95:                                  ; preds = %sw.bb92
  %underflow = getelementptr %struct.request, ptr %74, i32 2, i32 7
  %90 = ptrtoint ptr %underflow to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %underflow, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %xfer_count.0383)
  %cmp96 = icmp ugt i32 %91, %xfer_count.0383
  br i1 %cmp96, label %lor.lhs.false95.if.then98_crit_edge, label %if.else

lor.lhs.false95.if.then98_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then98

if.then98:                                        ; preds = %lor.lhs.false95.if.then98_crit_edge, %sw.bb92.if.then98_crit_edge
  %result99 = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 0, i32 24
  %92 = ptrtoint ptr %result99 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 720896, ptr %result99, align 4
  br label %sw.epilog173

if.else:                                          ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #20
  %conv100 = zext i8 %scsi_status.0379 to i32
  %result101 = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 0, i32 24
  %93 = ptrtoint ptr %result101 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv100, ptr %result101, align 4
  br label %sw.epilog173

sw.bb103:                                         ; preds = %if.end82
  %conv104 = zext i8 %scsi_status.0379 to i32
  %result106 = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 0, i32 24
  %94 = ptrtoint ptr %result106 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv104, ptr %result106, align 4
  br i1 %cmp73, label %sw.bb103.sw.epilog173_crit_edge, label %if.end111

sw.bb103.sw.epilog173_crit_edge:                  ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog173

if.end111:                                        ; preds = %sw.bb103
  %underflow112 = getelementptr %struct.request, ptr %74, i32 2, i32 7
  %95 = ptrtoint ptr %underflow112 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %underflow112, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %xfer_count.0383, i32 %96)
  %cmp113 = icmp ult i32 %xfer_count.0383, %96
  br i1 %cmp113, label %if.then115, label %if.else124

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %scsi_status.0379)
  %cmp117 = icmp eq i8 %scsi_status.0379, 8
  br i1 %cmp117, label %if.then119, label %if.else121

if.then119:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #20
  %97 = ptrtoint ptr %result106 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 8, ptr %result106, align 4
  br label %sw.epilog173

if.else121:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #20
  %98 = ptrtoint ptr %result106 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 720896, ptr %result106, align 4
  br label %sw.epilog173

if.else124:                                       ; preds = %if.end111
  %conv125 = zext i8 %scsi_state.0377 to i32
  %and126 = and i32 %conv125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sense_state.0381)
  %cmp130.not = icmp eq i32 %sense_state.0381, 3
  %or.cond343 = select i1 %tobool127.not, i1 %cmp130.not, i1 false
  br i1 %or.cond343, label %if.else134, label %if.then132

if.then132:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #20
  %99 = ptrtoint ptr %result106 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 720896, ptr %result106, align 4
  br label %sw.epilog173

if.else134:                                       ; preds = %if.else124
  %and136 = and i32 %conv125, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.else134.sw.epilog173_crit_edge, label %if.then138

if.else134.sw.epilog173_crit_edge:                ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog173

if.then138:                                       ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #20
  %100 = ptrtoint ptr %result106 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 524288, ptr %result106, align 4
  br label %sw.epilog173

sw.bb143:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  %resid_len.i = getelementptr %struct.request, ptr %74, i32 1, i32 8
  %101 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %resid_len.i, align 4
  br label %sw.bb144

sw.bb144:                                         ; preds = %sw.bb143, %if.end82.sw.bb144_crit_edge, %if.end82.sw.bb144_crit_edge420
  %conv145 = zext i8 %scsi_status.0379 to i32
  %result147 = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 0, i32 24
  %102 = ptrtoint ptr %result147 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv145, ptr %result147, align 4
  %scsi_state.0377.fr = freeze i8 %scsi_state.0377
  %conv148 = zext i8 %scsi_state.0377.fr to i32
  %and149 = and i32 %conv148, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp ne i32 %and149, 0
  %sense_state.0.off = add nsw i32 %sense_state.0381, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sense_state.0.off)
  %switch = icmp ult i32 %sense_state.0.off, 2
  %or.cond346 = select i1 %tobool150.not, i1 true, i1 %switch
  br i1 %or.cond346, label %if.then159, label %if.else161

if.then159:                                       ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #20
  %103 = ptrtoint ptr %result147 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 720896, ptr %result147, align 4
  br label %sw.epilog173

if.else161:                                       ; preds = %sw.bb144
  %and163 = and i32 %conv148, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %if.else161.sw.epilog173_crit_edge, label %if.then165

if.else161.sw.epilog173_crit_edge:                ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog173

if.then165:                                       ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #20
  %104 = ptrtoint ptr %result147 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 524288, ptr %result147, align 4
  br label %sw.epilog173

sw.bb1.i:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_map_eedp_error.exit

sw.bb2.i:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_map_eedp_error.exit

mpi3mr_map_eedp_error.exit:                       ; preds = %sw.bb2.i, %sw.bb1.i, %if.end82.mpi3mr_map_eedp_error.exit_crit_edge
  %ascq.0.i = phi i8 [ 3, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 1, %if.end82.mpi3mr_map_eedp_error.exit_crit_edge ]
  %sense_buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 0, i32 21
  %105 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sense_buffer.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 112, ptr %106, align 1
  %arrayidx6.i.i = getelementptr i8, ptr %106, i32 2
  %108 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 5, ptr %arrayidx6.i.i, align 1
  %arrayidx7.i.i = getelementptr i8, ptr %106, i32 7
  %109 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 10, ptr %arrayidx7.i.i, align 1
  %arrayidx8.i.i = getelementptr i8, ptr %106, i32 12
  %110 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 16, ptr %arrayidx8.i.i, align 1
  %arrayidx9.i.i = getelementptr i8, ptr %106, i32 13
  %111 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %ascq.0.i, ptr %arrayidx9.i.i, align 1
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 0, i32 24
  %112 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 327682, ptr %result.i, align 4
  br label %sw.epilog173

sw.default171:                                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  %result172 = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 0, i32 24
  %113 = ptrtoint ptr %result172 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 720896, ptr %result172, align 4
  br label %sw.epilog173

sw.epilog173:                                     ; preds = %sw.default171, %mpi3mr_map_eedp_error.exit, %if.then165, %if.else161.sw.epilog173_crit_edge, %if.then159, %if.then138, %if.else134.sw.epilog173_crit_edge, %if.then132, %if.else121, %if.then119, %sw.bb103.sw.epilog173_crit_edge, %if.else, %if.then98, %sw.bb90, %sw.bb88, %sw.bb86, %sw.bb84
  %result174 = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 0, i32 24
  %114 = ptrtoint ptr %result174 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %result174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp175.not = icmp eq i32 %115, 0
  br i1 %cmp175.not, label %sw.epilog173.out_success_crit_edge, label %land.lhs.true177

sw.epilog173.out_success_crit_edge:               ; preds = %sw.epilog173
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_success

land.lhs.true177:                                 ; preds = %sw.epilog173
  %cmnd = getelementptr %struct.request, ptr %74, i32 2, i32 1
  %116 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cmnd, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %117, align 1
  %120 = zext i8 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.347)
  switch i8 %119, label %do.end [
    i8 -95, label %land.lhs.true177.out_success_crit_edge
    i8 -123, label %land.lhs.true177.out_success_crit_edge421
  ]

land.lhs.true177.out_success_crit_edge421:        ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_success

land.lhs.true177.out_success_crit_edge:           ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_success

do.end:                                           ; preds = %land.lhs.true177
  %name189 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name189, ptr noundef nonnull @.str.24, i32 noundef %115) #21
  tail call void @scsi_print_command(ptr noundef nonnull %add.ptr.i.i.i) #18
  %conv199 = zext i16 %dev_handle.0389 to i32
  %req_q_idx = getelementptr %struct.request, ptr %74, i32 2, i32 22
  %121 = ptrtoint ptr %req_q_idx to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %req_q_idx, align 4
  %conv201 = zext i16 %122 to i32
  %add = add nuw nsw i32 %conv201, 1
  %call202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name189, ptr noundef nonnull @.str.24, i32 noundef %conv199, i32 noundef %conv83, i32 noundef %ioc_loginfo.2391, i32 noundef %add) #21
  %conv210 = zext i8 %scsi_state.0377 to i32
  %conv211 = zext i8 %scsi_status.0379 to i32
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name189, i32 noundef %conv.i, i32 noundef %conv210, i32 noundef %conv211, i32 noundef %xfer_count.0383, i32 noundef %resp_data.0387) #21
  br i1 %tobool78.not, label %do.end.out_success_crit_edge, label %if.then214

do.end.out_success_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_success

if.then214:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call215 = call zeroext i1 @scsi_normalize_sense(ptr noundef nonnull %sense_buf.0375, i32 noundef %sense_count.0385, ptr noundef nonnull %sshdr) #18
  %123 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %0, align 1
  %conv222 = zext i8 %124 to i32
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %1, align 2
  %conv223 = zext i8 %126 to i32
  %127 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %2, align 1
  %conv224 = zext i8 %128 to i32
  %call225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name189, ptr noundef nonnull @.str.24, i32 noundef %sense_count.0385, i32 noundef %conv222, i32 noundef %conv223, i32 noundef %conv224) #21
  br label %out_success

out_success:                                      ; preds = %if.then214, %do.end.out_success_crit_edge, %land.lhs.true177.out_success_crit_edge, %land.lhs.true177.out_success_crit_edge421, %sw.epilog173.out_success_crit_edge, %if.then52
  %meta_sg_valid = getelementptr inbounds %struct.scmd_priv, ptr %add.ptr.i, i32 0, i32 2
  %129 = ptrtoint ptr %meta_sg_valid to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %meta_sg_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool228.not = icmp eq i8 %130, 0
  br i1 %tobool228.not, label %out_success.if.end232_crit_edge, label %if.then229

out_success.if.end232_crit_edge:                  ; preds = %out_success
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end232

if.then229:                                       ; preds = %out_success
  %pdev = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 1
  %131 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %132, i32 0, i32 44
  %prot_sdb.i = getelementptr %struct.request, ptr %74, i32 2, i32 6
  %133 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i = icmp eq ptr %134, null
  br i1 %tobool.not.i, label %if.then229.scsi_prot_sg_count.exit_crit_edge, label %cond.true.i349

if.then229.scsi_prot_sg_count.exit_crit_edge:     ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #20
  br label %scsi_prot_sg_count.exit

cond.true.i349:                                   ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #20
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %nents.i = getelementptr inbounds %struct.sg_table, ptr %134, i32 0, i32 1
  %137 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %nents.i, align 4
  br label %scsi_prot_sg_count.exit

scsi_prot_sg_count.exit:                          ; preds = %cond.true.i349, %if.then229.scsi_prot_sg_count.exit_crit_edge
  %cond.i415 = phi ptr [ %136, %cond.true.i349 ], [ null, %if.then229.scsi_prot_sg_count.exit_crit_edge ]
  %cond.i350 = phi i32 [ %138, %cond.true.i349 ], [ 0, %if.then229.scsi_prot_sg_count.exit_crit_edge ]
  %sc_data_direction = getelementptr %struct.request, ptr %74, i32 2
  %139 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %sc_data_direction, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %cond.i415, i32 noundef %cond.i350, i32 noundef %140, i32 noundef 0) #18
  br label %if.end232

if.end232:                                        ; preds = %scsi_prot_sg_count.exit, %out_success.if.end232_crit_edge
  %141 = ptrtoint ptr %in_lld_scope.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %in_lld_scope.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %cmp.i352 = icmp eq i8 %142, 0
  br i1 %cmp.i352, label %do.end.i353, label %if.end22.i, !prof !614

do.end.i353:                                      ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 128, i32 noundef 9, ptr noundef null) #18
  br label %mpi3mr_clear_scmd_priv.exit

if.end22.i:                                       ; preds = %if.end232
  %143 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 -1, ptr %add.ptr.i, align 4
  %req_q_idx.i = getelementptr %struct.request, ptr %74, i32 2, i32 22
  %144 = ptrtoint ptr %req_q_idx.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 -1, ptr %req_q_idx.i, align 4
  %scmd23.i = getelementptr %struct.request, ptr %74, i32 2, i32 21
  %145 = ptrtoint ptr %scmd23.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %scmd23.i, align 4
  %146 = ptrtoint ptr %in_lld_scope.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %in_lld_scope.i, align 2
  %meta_sg_valid.i = getelementptr %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 1, i32 0, i32 0, i32 3
  %147 = ptrtoint ptr %meta_sg_valid.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %meta_sg_valid.i, align 1
  %chain_idx.i = getelementptr %struct.request, ptr %74, i32 2, i32 23
  %148 = ptrtoint ptr %chain_idx.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %chain_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %149)
  %cmp25.i = icmp sgt i32 %149, -1
  br i1 %cmp25.i, label %if.then27.i354, label %if.end22.i.if.end30.i_crit_edge

if.end22.i.if.end30.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30.i

if.then27.i354:                                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  %chain_bitmap.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 82
  %150 = ptrtoint ptr %chain_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %chain_bitmap.i, align 4
  call void @_clear_bit(i32 noundef %149, ptr noundef %151) #18
  %152 = ptrtoint ptr %chain_idx.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -1, ptr %chain_idx.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i354, %if.end22.i.if.end30.i_crit_edge
  %meta_chain_idx.i = getelementptr %struct.request, ptr %74, i32 2, i32 25
  %153 = ptrtoint ptr %meta_chain_idx.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %meta_chain_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %154)
  %cmp31.i = icmp sgt i32 %154, -1
  br i1 %cmp31.i, label %if.then33.i, label %if.end30.i.mpi3mr_clear_scmd_priv.exit_crit_edge

if.end30.i.mpi3mr_clear_scmd_priv.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_clear_scmd_priv.exit

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  %chain_bitmap35.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 82
  %155 = ptrtoint ptr %chain_bitmap35.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %chain_bitmap35.i, align 4
  call void @_clear_bit(i32 noundef %154, ptr noundef %156) #18
  %157 = ptrtoint ptr %meta_chain_idx.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 -1, ptr %meta_chain_idx.i, align 4
  br label %mpi3mr_clear_scmd_priv.exit

mpi3mr_clear_scmd_priv.exit:                      ; preds = %if.then33.i, %if.end30.i.mpi3mr_clear_scmd_priv.exit_crit_edge, %do.end.i353
  call void @scsi_dma_unmap(ptr noundef nonnull %add.ptr.i.i.i) #18
  call void @scsi_done(ptr noundef nonnull %add.ptr.i.i.i) #18
  %tobool233.not = icmp eq ptr %sense_buf.0375, null
  br i1 %tobool233.not, label %mpi3mr_clear_scmd_priv.exit.if.end236_crit_edge, label %if.then234

mpi3mr_clear_scmd_priv.exit.if.end236_crit_edge:  ; preds = %mpi3mr_clear_scmd_priv.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end236

if.then234:                                       ; preds = %mpi3mr_clear_scmd_priv.exit
  call void @__sanitizer_cov_trace_pc() #20
  %sense_data_buffer_address235 = getelementptr inbounds %struct.mpi3_scsi_io_reply, ptr %scsi_reply.0373, i32 0, i32 21
  %158 = ptrtoint ptr %sense_data_buffer_address235 to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %sense_data_buffer_address235, align 8
  %160 = call i64 @llvm.bswap.i64(i64 %159)
  call void @mpi3mr_repost_sense_buf(ptr noundef %mrioc, i64 noundef %160) #18
  br label %if.end236

if.end236:                                        ; preds = %if.then234, %mpi3mr_clear_scmd_priv.exit.if.end236_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi3mr_get_reply_virt_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi3mr_get_sensebuf_virt_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_command(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpi3mr_clear_scmd_priv(ptr nocapture noundef readonly %mrioc, ptr nocapture noundef %scmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %in_lld_scope = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %in_lld_scope to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_lld_scope, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %do.end, label %if.end22, !prof !614

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 128, i32 noundef 9, ptr noundef null) #18
  br label %cleanup

if.end22:                                         ; preds = %entry
  %add.ptr.i = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %add.ptr.i, align 4
  %req_q_idx = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 8
  %3 = ptrtoint ptr %req_q_idx to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %req_q_idx, align 4
  %scmd23 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 4
  %4 = ptrtoint ptr %scmd23 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %scmd23, align 4
  %5 = ptrtoint ptr %in_lld_scope to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %in_lld_scope, align 2
  %meta_sg_valid = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %meta_sg_valid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %meta_sg_valid, align 1
  %chain_idx = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 12
  %7 = ptrtoint ptr %chain_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chain_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp25 = icmp sgt i32 %8, -1
  br i1 %cmp25, label %if.then27, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  %chain_bitmap = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 82
  %9 = ptrtoint ptr %chain_bitmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chain_bitmap, align 4
  tail call void @_clear_bit(i32 noundef %8, ptr noundef %10) #18
  %11 = ptrtoint ptr %chain_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %chain_idx, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end22.if.end30_crit_edge
  %meta_chain_idx = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %meta_chain_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %meta_chain_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp31 = icmp sgt i32 %13, -1
  br i1 %cmp31, label %if.then33, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  %chain_bitmap35 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 82
  %14 = ptrtoint ptr %chain_bitmap35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chain_bitmap35, align 4
  tail call void @_clear_bit(i32 noundef %13, ptr noundef %15) #18
  %16 = ptrtoint ptr %meta_chain_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %meta_chain_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end30.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi3mr_repost_sense_buf(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi3mr_poll_pend_io_completions(ptr noundef %mrioc) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %num_op_reply_q = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 35
  %0 = ptrtoint ptr %num_op_reply_q to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_op_reply_q, align 4
  %conv = zext i16 %1 to i32
  %op_reply_q_offset = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 109
  %2 = ptrtoint ptr %op_reply_q_offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %op_reply_q_offset, align 2
  %conv1 = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv1, %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp11.not = icmp eq i16 %1, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %intr_info = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 29
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ %conv1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %intr_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intr_info, align 4
  %op_reply_q = getelementptr %struct.mpi3mr_intr_info, ptr %5, i32 %i.012, i32 2
  %6 = ptrtoint ptr %op_reply_q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %op_reply_q, align 4
  %call = tail call i32 @mpi3mr_process_op_reply_q(ptr noundef %mrioc, ptr noundef %7) #18
  %inc = add nuw nsw i32 %i.012, 1
  %cmp = icmp ult i32 %inc, %add
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi3mr_process_op_reply_q(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi3mr_wait_for_host_io(ptr noundef %mrioc, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpi3mr_get_iocstate(ptr noundef %mrioc) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_op_reply_q.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 35
  %0 = ptrtoint ptr %num_op_reply_q.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_op_reply_q.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp8.not.i = icmp eq i16 %1, 0
  br i1 %cmp8.not.i, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %op_reply_qinfo.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 36
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %pend_ios.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %op_reply_qinfo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op_reply_qinfo.i, align 8
  %pend_ios3.i = getelementptr %struct.op_reply_qinfo, ptr %3, i32 %indvars.iv.i, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pend_ios3.i, i32 noundef 4) #18
  %4 = ptrtoint ptr %pend_ios3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %pend_ios3.i, align 4
  %add.i = add i32 %5, %pend_ios.010.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %6 = ptrtoint ptr %num_op_reply_q.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_op_reply_q.i, align 4
  %8 = zext i16 %7 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %8
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %mpi3mr_get_fw_pending_ios.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

mpi3mr_get_fw_pending_ios.exit:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not = icmp eq i32 %add.i, 0
  br i1 %tobool.not, label %mpi3mr_get_fw_pending_ios.exit.cleanup_crit_edge, label %do.end

mpi3mr_get_fw_pending_ios.exit.cleanup_crit_edge: ; preds = %mpi3mr_get_fw_pending_ios.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %mpi3mr_get_fw_pending_ios.exit
  %name = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %9 = ptrtoint ptr %num_op_reply_q.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_op_reply_q.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp8.not.i35 = icmp eq i16 %10, 0
  br i1 %cmp8.not.i35, label %do.end.mpi3mr_get_fw_pending_ios.exit47_crit_edge, label %do.end.for.body.i45_crit_edge

do.end.for.body.i45_crit_edge:                    ; preds = %do.end
  br label %for.body.i45

do.end.mpi3mr_get_fw_pending_ios.exit47_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_get_fw_pending_ios.exit47

for.body.i45:                                     ; preds = %for.body.i45.for.body.i45_crit_edge, %do.end.for.body.i45_crit_edge
  %indvars.iv.i38 = phi i32 [ %indvars.iv.next.i43, %for.body.i45.for.body.i45_crit_edge ], [ 0, %do.end.for.body.i45_crit_edge ]
  %pend_ios.010.i39 = phi i32 [ %add.i42, %for.body.i45.for.body.i45_crit_edge ], [ 0, %do.end.for.body.i45_crit_edge ]
  %11 = ptrtoint ptr %op_reply_qinfo.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %op_reply_qinfo.i, align 8
  %pend_ios3.i40 = getelementptr %struct.op_reply_qinfo, ptr %12, i32 %indvars.iv.i38, i32 9
  %call.i.i.i41 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pend_ios3.i40, i32 noundef 4) #18
  %13 = ptrtoint ptr %pend_ios3.i40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %pend_ios3.i40, align 4
  %add.i42 = add i32 %14, %pend_ios.010.i39
  %indvars.iv.next.i43 = add nuw nsw i32 %indvars.iv.i38, 1
  %15 = ptrtoint ptr %num_op_reply_q.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_op_reply_q.i, align 4
  %17 = zext i16 %16 to i32
  %cmp.i44 = icmp ult i32 %indvars.iv.next.i43, %17
  br i1 %cmp.i44, label %for.body.i45.for.body.i45_crit_edge, label %for.body.i45.mpi3mr_get_fw_pending_ios.exit47_crit_edge

for.body.i45.mpi3mr_get_fw_pending_ios.exit47_crit_edge: ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_get_fw_pending_ios.exit47

for.body.i45.for.body.i45_crit_edge:              ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i45

mpi3mr_get_fw_pending_ios.exit47:                 ; preds = %for.body.i45.mpi3mr_get_fw_pending_ios.exit47_crit_edge, %do.end.mpi3mr_get_fw_pending_ios.exit47_crit_edge
  %pend_ios.0.lcssa.i46 = phi i32 [ 0, %do.end.mpi3mr_get_fw_pending_ios.exit47_crit_edge ], [ %add.i42, %for.body.i45.mpi3mr_get_fw_pending_ios.exit47_crit_edge ]
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name, ptr noundef nonnull @.str.35, i32 noundef %timeout, i32 noundef %pend_ios.0.lcssa.i46) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp682.not = icmp eq i32 %timeout, 0
  br i1 %cmp682.not, label %mpi3mr_get_fw_pending_ios.exit47.do.end17thread-pre-split_crit_edge, label %mpi3mr_get_fw_pending_ios.exit47.for.body_crit_edge

mpi3mr_get_fw_pending_ios.exit47.for.body_crit_edge: ; preds = %mpi3mr_get_fw_pending_ios.exit47
  br label %for.body

mpi3mr_get_fw_pending_ios.exit47.do.end17thread-pre-split_crit_edge: ; preds = %mpi3mr_get_fw_pending_ios.exit47
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end17thread-pre-split

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %mpi3mr_get_fw_pending_ios.exit47.for.body_crit_edge
  %i.083 = phi i32 [ %inc, %if.end14.for.body_crit_edge ], [ 0, %mpi3mr_get_fw_pending_ios.exit47.for.body_crit_edge ]
  %18 = ptrtoint ptr %num_op_reply_q.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_op_reply_q.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp8.not.i49 = icmp eq i16 %19, 0
  br i1 %cmp8.not.i49, label %for.body.mpi3mr_get_fw_pending_ios.exit75_crit_edge, label %for.body.for.body.i59_crit_edge

for.body.for.body.i59_crit_edge:                  ; preds = %for.body
  br label %for.body.i59

for.body.mpi3mr_get_fw_pending_ios.exit75_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_get_fw_pending_ios.exit75

for.body.i59:                                     ; preds = %for.body.i59.for.body.i59_crit_edge, %for.body.for.body.i59_crit_edge
  %indvars.iv.i52 = phi i32 [ %indvars.iv.next.i57, %for.body.i59.for.body.i59_crit_edge ], [ 0, %for.body.for.body.i59_crit_edge ]
  %pend_ios.010.i53 = phi i32 [ %add.i56, %for.body.i59.for.body.i59_crit_edge ], [ 0, %for.body.for.body.i59_crit_edge ]
  %20 = ptrtoint ptr %op_reply_qinfo.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %op_reply_qinfo.i, align 8
  %pend_ios3.i54 = getelementptr %struct.op_reply_qinfo, ptr %21, i32 %indvars.iv.i52, i32 9
  %call.i.i.i55 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pend_ios3.i54, i32 noundef 4) #18
  %22 = ptrtoint ptr %pend_ios3.i54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %pend_ios3.i54, align 4
  %add.i56 = add i32 %23, %pend_ios.010.i53
  %indvars.iv.next.i57 = add nuw nsw i32 %indvars.iv.i52, 1
  %24 = ptrtoint ptr %num_op_reply_q.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_op_reply_q.i, align 4
  %26 = zext i16 %25 to i32
  %cmp.i58 = icmp ult i32 %indvars.iv.next.i57, %26
  br i1 %cmp.i58, label %for.body.i59.for.body.i59_crit_edge, label %mpi3mr_get_fw_pending_ios.exit61

for.body.i59.for.body.i59_crit_edge:              ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i59

mpi3mr_get_fw_pending_ios.exit61:                 ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i56)
  %tobool8.not = icmp eq i32 %add.i56, 0
  br i1 %tobool8.not, label %mpi3mr_get_fw_pending_ios.exit61.do.end17_crit_edge, label %if.end10

mpi3mr_get_fw_pending_ios.exit61.do.end17_crit_edge: ; preds = %mpi3mr_get_fw_pending_ios.exit61
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end17

if.end10:                                         ; preds = %mpi3mr_get_fw_pending_ios.exit61
  %call11 = tail call i32 @mpi3mr_get_iocstate(ptr noundef %mrioc) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 1
  br i1 %cmp12.not, label %if.end14, label %if.end10.do.end17thread-pre-split_crit_edge

if.end10.do.end17thread-pre-split_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end17thread-pre-split

if.end14:                                         ; preds = %if.end10
  tail call void @msleep(i32 noundef 1000) #18
  %inc = add nuw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, %timeout
  br i1 %exitcond.not, label %if.end14.do.end17thread-pre-split_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

if.end14.do.end17thread-pre-split_crit_edge:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end17thread-pre-split

do.end17thread-pre-split:                         ; preds = %if.end14.do.end17thread-pre-split_crit_edge, %if.end10.do.end17thread-pre-split_crit_edge, %mpi3mr_get_fw_pending_ios.exit47.do.end17thread-pre-split_crit_edge
  %27 = ptrtoint ptr %num_op_reply_q.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %.pr.pr = load i16, ptr %num_op_reply_q.i, align 4
  br label %do.end17

do.end17:                                         ; preds = %do.end17thread-pre-split, %mpi3mr_get_fw_pending_ios.exit61.do.end17_crit_edge
  %.pr = phi i16 [ %.pr.pr, %do.end17thread-pre-split ], [ %25, %mpi3mr_get_fw_pending_ios.exit61.do.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp8.not.i63 = icmp eq i16 %.pr, 0
  br i1 %cmp8.not.i63, label %do.end17.mpi3mr_get_fw_pending_ios.exit75_crit_edge, label %do.end17.for.body.i73_crit_edge

do.end17.for.body.i73_crit_edge:                  ; preds = %do.end17
  br label %for.body.i73

do.end17.mpi3mr_get_fw_pending_ios.exit75_crit_edge: ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_get_fw_pending_ios.exit75

for.body.i73:                                     ; preds = %for.body.i73.for.body.i73_crit_edge, %do.end17.for.body.i73_crit_edge
  %indvars.iv.i66 = phi i32 [ %indvars.iv.next.i71, %for.body.i73.for.body.i73_crit_edge ], [ 0, %do.end17.for.body.i73_crit_edge ]
  %pend_ios.010.i67 = phi i32 [ %add.i70, %for.body.i73.for.body.i73_crit_edge ], [ 0, %do.end17.for.body.i73_crit_edge ]
  %28 = ptrtoint ptr %op_reply_qinfo.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %op_reply_qinfo.i, align 8
  %pend_ios3.i68 = getelementptr %struct.op_reply_qinfo, ptr %29, i32 %indvars.iv.i66, i32 9
  %call.i.i.i69 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pend_ios3.i68, i32 noundef 4) #18
  %30 = ptrtoint ptr %pend_ios3.i68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %pend_ios3.i68, align 4
  %add.i70 = add i32 %31, %pend_ios.010.i67
  %indvars.iv.next.i71 = add nuw nsw i32 %indvars.iv.i66, 1
  %32 = ptrtoint ptr %num_op_reply_q.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_op_reply_q.i, align 4
  %34 = zext i16 %33 to i32
  %cmp.i72 = icmp ult i32 %indvars.iv.next.i71, %34
  br i1 %cmp.i72, label %for.body.i73.for.body.i73_crit_edge, label %for.body.i73.mpi3mr_get_fw_pending_ios.exit75_crit_edge

for.body.i73.mpi3mr_get_fw_pending_ios.exit75_crit_edge: ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_get_fw_pending_ios.exit75

for.body.i73.for.body.i73_crit_edge:              ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i73

mpi3mr_get_fw_pending_ios.exit75:                 ; preds = %for.body.i73.mpi3mr_get_fw_pending_ios.exit75_crit_edge, %do.end17.mpi3mr_get_fw_pending_ios.exit75_crit_edge, %for.body.mpi3mr_get_fw_pending_ios.exit75_crit_edge
  %pend_ios.0.lcssa.i74 = phi i32 [ 0, %do.end17.mpi3mr_get_fw_pending_ios.exit75_crit_edge ], [ %add.i70, %for.body.i73.mpi3mr_get_fw_pending_ios.exit75_crit_edge ], [ 0, %for.body.mpi3mr_get_fw_pending_ios.exit75_crit_edge ]
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name, ptr noundef nonnull @.str.35, i32 noundef %pend_ios.0.lcssa.i74) #21
  br label %cleanup

cleanup:                                          ; preds = %mpi3mr_get_fw_pending_ios.exit75, %mpi3mr_get_fw_pending_ios.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi3mr_get_iocstate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mpi3mr_allow_scmd_to_fw(ptr nocapture noundef readonly %scmd) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 16
  %0 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmnd, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 53, i8 %3)
  %switch.selectcmp.case1 = icmp eq i8 %3, 53
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %3)
  %switch.selectcmp.case2 = icmp eq i8 %3, 27
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  ret i1 %switch.selectcmp
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160) #21
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @mpi3mr_pci_driver, ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.159) #18
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #9 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %.b = load i1, ptr @warn_non_secure_ctlr, align 4
  %.str.331..str.334 = select i1 %.b, ptr @.str.331, ptr @.str.334
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.331..str.334, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160) #21
  tail call void @pci_unregister_driver(ptr noundef nonnull @mpi3mr_pci_driver) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mpi3mr_get_tgtdev_by_perst_id(ptr noundef %mrioc, i16 noundef zeroext %persist_id) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tgtdev_lock = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 76
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tgtdev_lock) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %0 = ptrtoint ptr %tgtdev_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %tgtdev_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !614

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/mpi3mr/mpi3mr_os.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 638, 0\0A.popsection", ""() #18, !srcloc !621
  unreachable

do.end9.i:                                        ; preds = %entry
  %tgtdev_list.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 77
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end9.i
  %tgtdev.0.in.i = phi ptr [ %tgtdev_list.i, %do.end9.i ], [ %tgtdev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %tgtdev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tgtdev.0.i = load ptr, ptr %tgtdev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tgtdev.0.i, %tgtdev_list.i
  br i1 %cmp.not.i, label %for.cond.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge, label %for.body.i

for.cond.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__mpi3mr_get_tgtdev_by_perst_id.exit

for.body.i:                                       ; preds = %for.cond.i
  %perst_id.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 6
  %3 = ptrtoint ptr %perst_id.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %perst_id.i, align 4
  %cmp14.i = icmp eq i16 %4, %persist_id
  br i1 %cmp14.i, label %found_tgtdev.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

found_tgtdev.i:                                   ; preds = %for.body.i
  %ref_count.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !615
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !614

found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %found_tgtdev.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %found_tgtdev.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !612

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__mpi3mr_get_tgtdev_by_perst_id.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef %.sink.i.i.i.i.i.i) #18
  br label %__mpi3mr_get_tgtdev_by_perst_id.exit

__mpi3mr_get_tgtdev_by_perst_id.exit:             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge, %for.cond.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge
  %retval.0.i = phi ptr [ %tgtdev.0.i, %if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge ], [ %tgtdev.0.i, %if.end15.sink.split.i.i.i.i.i.i ], [ null, %for.cond.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tgtdev_lock, i32 noundef %call2) #18
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_target(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpi3mr_update_tgtdev(ptr noundef %mrioc, ptr nocapture noundef %tgtdev, ptr nocapture noundef readonly %dev_pg0) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %persistent_id = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 6
  %0 = ptrtoint ptr %persistent_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %persistent_id, align 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %perst_id = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 6
  %3 = ptrtoint ptr %perst_id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %perst_id, align 4
  %dev_handle = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 1
  %4 = ptrtoint ptr %dev_handle to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dev_handle, align 8
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %dev_handle1 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 2
  %7 = ptrtoint ptr %dev_handle1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %dev_handle1, align 4
  %device_form = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 14
  %8 = ptrtoint ptr %device_form to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %device_form, align 1
  %dev_type = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 7
  %10 = ptrtoint ptr %dev_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %dev_type, align 2
  %enclosure_handle = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 4
  %11 = ptrtoint ptr %enclosure_handle to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %enclosure_handle, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %encl_handle = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 5
  %14 = ptrtoint ptr %encl_handle to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %encl_handle, align 2
  %parent_dev_handle = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 2
  %15 = ptrtoint ptr %parent_dev_handle to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %parent_dev_handle, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %parent_handle = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 3
  %18 = ptrtoint ptr %parent_handle to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %parent_handle, align 2
  %slot = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 3
  %19 = ptrtoint ptr %slot to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %slot, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %slot2 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 4
  %22 = ptrtoint ptr %slot2 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %slot2, align 8
  %queue_depth = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 12
  %23 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %queue_depth, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %q_depth = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 10
  %26 = ptrtoint ptr %q_depth to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %q_depth, align 2
  %wwid = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 5
  %27 = ptrtoint ptr %wwid to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %wwid, align 8
  %29 = tail call i64 @llvm.bswap.i64(i64 %28)
  %wwid3 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 11
  %30 = ptrtoint ptr %wwid3 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %wwid3, align 8
  %flags4 = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 9
  %31 = ptrtoint ptr %flags4 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags4, align 4
  %33 = lshr i16 %32, 8
  %34 = trunc i16 %33 to i8
  %conv5 = and i8 %34, 8
  %is_hidden = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 8
  %35 = ptrtoint ptr %is_hidden to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv5, ptr %is_hidden, align 1
  %starget = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 1
  %36 = ptrtoint ptr %starget to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %starget, align 8
  %tobool.not = icmp eq ptr %37, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hostdata = getelementptr inbounds %struct.scsi_target, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hostdata, align 8
  %tobool7.not = icmp eq ptr %39, null
  br i1 %tobool7.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %perst_id11 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %perst_id11 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %2, ptr %perst_id11, align 2
  %41 = ptrtoint ptr %dev_handle1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %dev_handle1, align 4
  %dev_handle13 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %39, i32 0, i32 1
  %43 = ptrtoint ptr %dev_handle13 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %dev_handle13, align 4
  %44 = ptrtoint ptr %dev_type to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dev_type, align 2
  %dev_type15 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %39, i32 0, i32 7
  %46 = ptrtoint ptr %dev_type15 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %dev_type15, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %access_status = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 8
  %47 = ptrtoint ptr %access_status to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %access_status, align 1
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.348)
  switch i8 %48, label %sw.default [
    i8 0, label %if.end.sw.epilog_crit_edge
    i8 6, label %if.end.sw.epilog_crit_edge205
    i8 1, label %if.end.sw.epilog_crit_edge206
    i8 5, label %if.end.sw.epilog_crit_edge207
  ]

if.end.sw.epilog_crit_edge207:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end.sw.epilog_crit_edge206:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end.sw.epilog_crit_edge205:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %50 = ptrtoint ptr %is_hidden to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %is_hidden, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge205, %if.end.sw.epilog_crit_edge206, %if.end.sw.epilog_crit_edge207
  %51 = ptrtoint ptr %dev_type to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dev_type, align 2
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.349)
  switch i8 %52, label %sw.epilog.sw.epilog132_crit_edge [
    i8 0, label %sw.bb20
    i8 1, label %sw.bb36
    i8 2, label %sw.bb120
  ]

sw.epilog.sw.epilog132_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog132

sw.bb20:                                          ; preds = %sw.epilog
  %device_specific = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 15
  %device_info = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 15, i32 0, i32 2
  %54 = ptrtoint ptr %device_info to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %device_info, align 2
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %dev_spec = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 12
  %dev_info21 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 12, i32 0, i32 1
  %57 = ptrtoint ptr %dev_info21 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %dev_info21, align 8
  %58 = ptrtoint ptr %device_specific to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %device_specific, align 8
  %60 = tail call i64 @llvm.bswap.i64(i64 %59)
  %61 = ptrtoint ptr %dev_spec to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %dev_spec, align 8
  %conv24 = zext i16 %56 to i32
  %and25 = and i32 %conv24, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and25)
  %cmp.not = icmp eq i32 %and25, 1
  br i1 %cmp.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #20
  %62 = ptrtoint ptr %is_hidden to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %is_hidden, align 1
  br label %sw.epilog132

if.else:                                          ; preds = %sw.bb20
  %and30 = and i32 %conv24, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then32, label %if.else.sw.epilog132_crit_edge

if.else.sw.epilog132_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog132

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %63 = ptrtoint ptr %is_hidden to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %is_hidden, align 1
  br label %sw.epilog132

sw.bb36:                                          ; preds = %sw.epilog
  %device_specific37 = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 15
  %device_info39 = getelementptr inbounds %struct.mpi3_device0_pcie_format, ptr %device_specific37, i32 0, i32 6
  %64 = ptrtoint ptr %device_info39 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %device_info39, align 2
  %66 = tail call i16 @llvm.bswap.i16(i16 %65)
  %dev_spec40 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 12
  %dev_info41 = getelementptr inbounds %struct.tgt_dev_pcie, ptr %dev_spec40, i32 0, i32 5
  %67 = ptrtoint ptr %dev_info41 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %dev_info41, align 2
  %capabilities = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 15, i32 0, i32 3
  %68 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %capabilities, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %conv42 = trunc i32 %70 to i16
  %capb = getelementptr inbounds %struct.tgt_dev_pcie, ptr %dev_spec40, i32 0, i32 1
  %71 = ptrtoint ptr %capb to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv42, ptr %capb, align 4
  %72 = ptrtoint ptr %dev_spec40 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 131072, ptr %dev_spec40, align 8
  %pgsz = getelementptr inbounds %struct.tgt_dev_pcie, ptr %dev_spec40, i32 0, i32 2
  %73 = ptrtoint ptr %pgsz to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 12, ptr %pgsz, align 2
  %74 = ptrtoint ptr %access_status to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %access_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp48 = icmp eq i8 %75, 0
  br i1 %cmp48, label %if.end76, label %sw.bb36.if.end84_crit_edge

sw.bb36.if.end84_crit_edge:                       ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end84

if.end76:                                         ; preds = %sw.bb36
  %maximum_data_transfer_size = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 15, i32 0, i32 1
  %76 = ptrtoint ptr %maximum_data_transfer_size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %maximum_data_transfer_size, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %79 = ptrtoint ptr %dev_spec40 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %dev_spec40, align 8
  %page_size = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 15, i32 1, i32 3
  %80 = ptrtoint ptr %page_size to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %page_size, align 1
  %82 = ptrtoint ptr %pgsz to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %pgsz, align 2
  %controller_reset_to = getelementptr inbounds %struct.mpi3_device0_pcie_format, ptr %device_specific37, i32 0, i32 5
  %83 = ptrtoint ptr %controller_reset_to to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %controller_reset_to, align 1
  %85 = tail call i8 @llvm.umax.i8(i8 %84, i8 60)
  %reset_to = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 12, i32 0, i32 1
  %86 = ptrtoint ptr %reset_to to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %reset_to, align 8
  %nvme_abort_to = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 15, i32 1, i32 2
  %87 = ptrtoint ptr %nvme_abort_to to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %nvme_abort_to, align 2
  %89 = tail call i8 @llvm.umax.i8(i8 %88, i8 60)
  %abort_to = getelementptr inbounds %struct.tgt_dev_pcie, ptr %dev_spec40, i32 0, i32 3
  %90 = ptrtoint ptr %abort_to to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %abort_to, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %78)
  %cmp79 = icmp ugt i32 %78, 1048576
  br i1 %cmp79, label %if.then81, label %if.end76.if.end84_crit_edge

if.end76.if.end84_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end84

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #20
  %91 = ptrtoint ptr %dev_spec40 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1048576, ptr %dev_spec40, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end76.if.end84_crit_edge, %sw.bb36.if.end84_crit_edge
  %trunc = trunc i16 %66 to i3
  %92 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.350)
  switch i3 %trunc, label %if.then94 [
    i3 1, label %if.end84.if.end96_crit_edge
    i3 3, label %if.end84.if.end96_crit_edge208
  ]

if.end84.if.end96_crit_edge208:                   ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end96

if.end84.if.end96_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end96

if.then94:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #20
  %93 = ptrtoint ptr %is_hidden to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %is_hidden, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end84.if.end96_crit_edge, %if.end84.if.end96_crit_edge208
  %shost = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 2
  %94 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %shost, align 4
  %tobool97.not = icmp eq ptr %95, null
  br i1 %tobool97.not, label %if.end96.sw.epilog132_crit_edge, label %if.end99

if.end96.sw.epilog132_crit_edge:                  ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog132

if.end99:                                         ; preds = %if.end96
  %prot_capabilities.i = getelementptr inbounds %struct.Scsi_Host, ptr %95, i32 0, i32 41
  %96 = ptrtoint ptr %prot_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %prot_capabilities.i, align 4
  %and103 = and i32 %97, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end99.sw.epilog132_crit_edge, label %if.then105

if.end99.sw.epilog132_crit_edge:                  ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog132

if.then105:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #20
  %and108 = and i32 %97, 119
  %98 = ptrtoint ptr %prot_capabilities.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %and108, ptr %prot_capabilities.i, align 4
  %name = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name, ptr noundef nonnull @.str.45) #21
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name) #21
  br label %sw.epilog132

sw.bb120:                                         ; preds = %sw.epilog
  %device_specific121 = getelementptr inbounds %struct.mpi3_device_page0, ptr %dev_pg0, i32 0, i32 15
  %99 = ptrtoint ptr %device_specific121 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %device_specific121, align 4
  %dev_spec122 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev, i32 0, i32 12
  %101 = ptrtoint ptr %dev_spec122 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %dev_spec122, align 8
  %102 = load i8, ptr %device_specific121, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp125 = icmp eq i8 %102, 0
  br i1 %cmp125, label %if.then127, label %sw.bb120.sw.epilog132_crit_edge

sw.bb120.sw.epilog132_crit_edge:                  ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog132

if.then127:                                       ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #20
  %103 = ptrtoint ptr %is_hidden to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %is_hidden, align 1
  br label %sw.epilog132

sw.epilog132:                                     ; preds = %if.then127, %sw.bb120.sw.epilog132_crit_edge, %if.then105, %if.end99.sw.epilog132_crit_edge, %if.end96.sw.epilog132_crit_edge, %if.then32, %if.else.sw.epilog132_crit_edge, %if.then27, %sw.epilog.sw.epilog132_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mpi3mr_get_tgtdev_by_handle(ptr noundef %mrioc, i16 noundef zeroext %handle) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tgtdev_lock = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 76
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tgtdev_lock) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %0 = ptrtoint ptr %tgtdev_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %tgtdev_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !614

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/mpi3mr/mpi3mr_os.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 590, 0\0A.popsection", ""() #18, !srcloc !622
  unreachable

do.end9.i:                                        ; preds = %entry
  %tgtdev_list.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 77
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end9.i
  %tgtdev.0.in.i = phi ptr [ %tgtdev_list.i, %do.end9.i ], [ %tgtdev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %tgtdev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tgtdev.0.i = load ptr, ptr %tgtdev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tgtdev.0.i, %tgtdev_list.i
  br i1 %cmp.not.i, label %for.cond.i.__mpi3mr_get_tgtdev_by_handle.exit_crit_edge, label %for.body.i

for.cond.i.__mpi3mr_get_tgtdev_by_handle.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__mpi3mr_get_tgtdev_by_handle.exit

for.body.i:                                       ; preds = %for.cond.i
  %dev_handle.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %dev_handle.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dev_handle.i, align 4
  %cmp14.i = icmp eq i16 %4, %handle
  br i1 %cmp14.i, label %found_tgtdev.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

found_tgtdev.i:                                   ; preds = %for.body.i
  %ref_count.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !615
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !614

found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %found_tgtdev.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %found_tgtdev.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_handle.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !612

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_handle.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__mpi3mr_get_tgtdev_by_handle.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef %.sink.i.i.i.i.i.i) #18
  br label %__mpi3mr_get_tgtdev_by_handle.exit

__mpi3mr_get_tgtdev_by_handle.exit:               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_handle.exit_crit_edge, %for.cond.i.__mpi3mr_get_tgtdev_by_handle.exit_crit_edge
  %retval.0.i = phi ptr [ %tgtdev.0.i, %if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_handle.exit_crit_edge ], [ %tgtdev.0.i, %if.end15.sink.split.i.i.i.i.i.i ], [ null, %for.cond.i.__mpi3mr_get_tgtdev_by_handle.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tgtdev_lock, i32 noundef %call2) #18
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpi3mr_dev_rmhs_send_tm(ptr noundef %mrioc, i16 noundef zeroext %handle, ptr noundef %cmdparam, i8 noundef zeroext %iou_rc) unnamed_addr #0 align 64 {
entry:
  %tm_req = alloca %struct.mpi3_scsi_task_mgmt_request, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tm_req) #18
  %0 = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_request, ptr %tm_req, i32 0, i32 2
  %1 = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_request, ptr %tm_req, i32 0, i32 7
  %2 = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_request, ptr %tm_req, i32 0, i32 8
  %3 = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_request, ptr %tm_req, i32 0, i32 9
  %tobool.not = icmp eq ptr %cmdparam, null
  br i1 %tobool.not, label %do.body.preheader, label %entry.issue_cmd_crit_edge

entry.issue_cmd_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %issue_cmd

do.body.preheader:                                ; preds = %entry
  %devrem_bitmap = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 88
  %4 = ptrtoint ptr %devrem_bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devrem_bitmap, align 8
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %5, i32 noundef 16) #18
  %conv1 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv1)
  %cmp = icmp ult i32 %conv1, 16
  br i1 %cmp, label %if.then3, label %do.body.preheader.do.cond_crit_edge

do.body.preheader.do.cond_crit_edge:              ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond

if.then3:                                         ; preds = %do.body.preheader
  %6 = ptrtoint ptr %devrem_bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devrem_bitmap, align 8
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef %conv1, ptr noundef %7) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then3.if.end28_crit_edge, label %if.then3.do.cond_crit_edge

if.then3.do.cond_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond

if.then3.if.end28_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

do.cond:                                          ; preds = %if.then3.do.cond_crit_edge, %do.body.preheader.do.cond_crit_edge
  %8 = ptrtoint ptr %devrem_bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devrem_bitmap, align 8
  %call.1 = tail call i32 @_find_first_zero_bit_be(ptr noundef %9, i32 noundef 16) #18
  %conv1.1 = and i32 %call.1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv1.1)
  %cmp.1 = icmp ult i32 %conv1.1, 16
  br i1 %cmp.1, label %if.then3.1, label %do.cond.do.cond.1_crit_edge

do.cond.do.cond.1_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond.1

if.then3.1:                                       ; preds = %do.cond
  %10 = ptrtoint ptr %devrem_bitmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devrem_bitmap, align 8
  %call6.1 = tail call i32 @_test_and_set_bit(i32 noundef %conv1.1, ptr noundef %11) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1)
  %tobool7.not.1 = icmp eq i32 %call6.1, 0
  br i1 %tobool7.not.1, label %if.then3.1.if.end28_crit_edge, label %if.then3.1.do.cond.1_crit_edge

if.then3.1.do.cond.1_crit_edge:                   ; preds = %if.then3.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond.1

if.then3.1.if.end28_crit_edge:                    ; preds = %if.then3.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

do.cond.1:                                        ; preds = %if.then3.1.do.cond.1_crit_edge, %do.cond.do.cond.1_crit_edge
  %12 = ptrtoint ptr %devrem_bitmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %devrem_bitmap, align 8
  %call.2 = tail call i32 @_find_first_zero_bit_be(ptr noundef %13, i32 noundef 16) #18
  %conv1.2 = and i32 %call.2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv1.2)
  %cmp.2 = icmp ult i32 %conv1.2, 16
  br i1 %cmp.2, label %if.then3.2, label %do.cond.1.do.cond.2_crit_edge

do.cond.1.do.cond.2_crit_edge:                    ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond.2

if.then3.2:                                       ; preds = %do.cond.1
  %14 = ptrtoint ptr %devrem_bitmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %devrem_bitmap, align 8
  %call6.2 = tail call i32 @_test_and_set_bit(i32 noundef %conv1.2, ptr noundef %15) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.2)
  %tobool7.not.2 = icmp eq i32 %call6.2, 0
  br i1 %tobool7.not.2, label %if.then3.2.if.end28_crit_edge, label %if.then3.2.do.cond.2_crit_edge

if.then3.2.do.cond.2_crit_edge:                   ; preds = %if.then3.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond.2

if.then3.2.if.end28_crit_edge:                    ; preds = %if.then3.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

do.cond.2:                                        ; preds = %if.then3.2.do.cond.2_crit_edge, %do.cond.1.do.cond.2_crit_edge
  %16 = ptrtoint ptr %devrem_bitmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devrem_bitmap, align 8
  %call.3 = tail call i32 @_find_first_zero_bit_be(ptr noundef %17, i32 noundef 16) #18
  %conv1.3 = and i32 %call.3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv1.3)
  %cmp.3 = icmp ult i32 %conv1.3, 16
  br i1 %cmp.3, label %if.then3.3, label %do.cond.2.do.cond.3_crit_edge

do.cond.2.do.cond.3_crit_edge:                    ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond.3

if.then3.3:                                       ; preds = %do.cond.2
  %18 = ptrtoint ptr %devrem_bitmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %devrem_bitmap, align 8
  %call6.3 = tail call i32 @_test_and_set_bit(i32 noundef %conv1.3, ptr noundef %19) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.3)
  %tobool7.not.3 = icmp eq i32 %call6.3, 0
  br i1 %tobool7.not.3, label %if.then3.3.if.end28_crit_edge, label %if.then3.3.do.cond.3_crit_edge

if.then3.3.do.cond.3_crit_edge:                   ; preds = %if.then3.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond.3

if.then3.3.if.end28_crit_edge:                    ; preds = %if.then3.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

do.cond.3:                                        ; preds = %if.then3.3.do.cond.3_crit_edge, %do.cond.2.do.cond.3_crit_edge
  %20 = ptrtoint ptr %devrem_bitmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %devrem_bitmap, align 8
  %call.4 = tail call i32 @_find_first_zero_bit_be(ptr noundef %21, i32 noundef 16) #18
  %conv1.4 = and i32 %call.4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv1.4)
  %cmp.4 = icmp ult i32 %conv1.4, 16
  br i1 %cmp.4, label %if.then3.4, label %do.cond.3.do.cond.4_crit_edge

do.cond.3.do.cond.4_crit_edge:                    ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond.4

if.then3.4:                                       ; preds = %do.cond.3
  %22 = ptrtoint ptr %devrem_bitmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %devrem_bitmap, align 8
  %call6.4 = tail call i32 @_test_and_set_bit(i32 noundef %conv1.4, ptr noundef %23) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.4)
  %tobool7.not.4 = icmp eq i32 %call6.4, 0
  br i1 %tobool7.not.4, label %if.then3.4.if.end28_crit_edge, label %if.then3.4.do.cond.4_crit_edge

if.then3.4.do.cond.4_crit_edge:                   ; preds = %if.then3.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond.4

if.then3.4.if.end28_crit_edge:                    ; preds = %if.then3.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

do.cond.4:                                        ; preds = %if.then3.4.do.cond.4_crit_edge, %do.cond.3.do.cond.4_crit_edge
  %24 = ptrtoint ptr %devrem_bitmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %devrem_bitmap, align 8
  %call.5 = tail call i32 @_find_first_zero_bit_be(ptr noundef %25, i32 noundef 16) #18
  %conv1.5 = and i32 %call.5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv1.5)
  %cmp.5 = icmp ult i32 %conv1.5, 16
  br i1 %cmp.5, label %if.then3.5, label %do.end

if.then3.5:                                       ; preds = %do.cond.4
  %26 = ptrtoint ptr %devrem_bitmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %devrem_bitmap, align 8
  %call6.5 = tail call i32 @_test_and_set_bit(i32 noundef %conv1.5, ptr noundef %27) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.5)
  %tobool7.not.5 = icmp eq i32 %call6.5, 0
  br i1 %tobool7.not.5, label %if.then3.5.if.end28_crit_edge, label %if.then3.5.if.then15_crit_edge

if.then3.5.if.then15_crit_edge:                   ; preds = %if.then3.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then15

if.then3.5.if.end28_crit_edge:                    ; preds = %if.then3.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

do.end:                                           ; preds = %do.cond.4
  %.pre = and i32 %call.5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %.pre)
  %cmp13 = icmp ugt i32 %.pre, 15
  br i1 %cmp13, label %do.end.if.then15_crit_edge, label %do.end.if.end28_crit_edge

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

do.end.if.then15_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then15

if.then15:                                        ; preds = %do.end.if.then15_crit_edge, %if.then3.5.if.then15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 2848, i32 noundef 12) #22
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.then15.cleanup_crit_edge, label %if.end19

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %handle20 = getelementptr inbounds %struct.delayed_dev_rmhs_node, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %handle20 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %handle, ptr %handle20, align 8
  %iou_rc21 = getelementptr inbounds %struct.delayed_dev_rmhs_node, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %iou_rc21 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %iou_rc, ptr %iou_rc21, align 2
  %delayed_rmhs_list = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 91
  %prev.i115 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 91, i32 1
  %33 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i115, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %34, ptr noundef %delayed_rmhs_list) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.list_add_tail.exit_crit_edge

if.end19.list_add_tail.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  %35 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %prev.i115, align 4
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %delayed_rmhs_list, ptr %call7.i.i, align 8
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i, ptr %34, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end19.list_add_tail.exit_crit_edge
  %name = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %conv26 = zext i16 %handle to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name, ptr noundef nonnull @.str.50, i32 noundef %conv26) #21
  br label %cleanup

if.end28:                                         ; preds = %do.end.if.end28_crit_edge, %if.then3.5.if.end28_crit_edge, %if.then3.4.if.end28_crit_edge, %if.then3.3.if.end28_crit_edge, %if.then3.2.if.end28_crit_edge, %if.then3.1.if.end28_crit_edge, %if.then3.if.end28_crit_edge
  %conv12.pre-phi118 = phi i32 [ %.pre, %do.end.if.end28_crit_edge ], [ %conv1, %if.then3.if.end28_crit_edge ], [ %conv1.1, %if.then3.1.if.end28_crit_edge ], [ %conv1.2, %if.then3.2.if.end28_crit_edge ], [ %conv1.3, %if.then3.3.if.end28_crit_edge ], [ %conv1.4, %if.then3.4.if.end28_crit_edge ], [ %conv1.5, %if.then3.5.if.end28_crit_edge ]
  %arrayidx = getelementptr %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 85, i32 %conv12.pre-phi118
  br label %issue_cmd

issue_cmd:                                        ; preds = %if.end28, %entry.issue_cmd_crit_edge
  %drv_cmd.0 = phi ptr [ %cmdparam, %entry.issue_cmd_crit_edge ], [ %arrayidx, %if.end28 ]
  %host_tag = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd.0, i32 0, i32 11
  %39 = ptrtoint ptr %host_tag to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %host_tag, align 2
  %sub = add i16 %40, -6
  %name35 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %conv37 = zext i16 %handle to i32
  %conv38 = zext i16 %sub to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name35, ptr noundef nonnull @.str.50, i32 noundef %conv37, i32 noundef %conv38) #21
  %41 = call ptr @memset(ptr %tm_req, i32 0, i32 32)
  %state = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd.0, i32 0, i32 5
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %state, align 2
  %44 = and i16 %43, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool41.not = icmp eq i16 %44, 0
  br i1 %tobool41.not, label %if.end50, label %do.end45

do.end45:                                         ; preds = %issue_cmd
  call void @__sanitizer_cov_trace_pc() #20
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name35, ptr noundef nonnull @.str.50) #21
  br label %cleanup

if.end50:                                         ; preds = %issue_cmd
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 2, ptr %state, align 2
  %is_waiting = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd.0, i32 0, i32 9
  %46 = ptrtoint ptr %is_waiting to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %is_waiting, align 4
  %callback = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd.0, i32 0, i32 12
  %47 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @mpi3mr_dev_rmhs_complete_tm, ptr %callback, align 4
  %dev_handle = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd.0, i32 0, i32 6
  %48 = ptrtoint ptr %dev_handle to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %handle, ptr %dev_handle, align 4
  %iou_rc52 = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd.0, i32 0, i32 4
  %49 = ptrtoint ptr %iou_rc52 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %iou_rc, ptr %iou_rc52, align 4
  %50 = tail call i16 @llvm.bswap.i16(i16 %handle)
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %1, align 2
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %3, align 2
  %53 = ptrtoint ptr %host_tag to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %host_tag, align 2
  %55 = tail call i16 @llvm.bswap.i16(i16 %54)
  %56 = ptrtoint ptr %tm_req to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %tm_req, align 4
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -1, ptr %2, align 4
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 33, ptr %0, align 1
  %removepend_bitmap = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 90
  %59 = ptrtoint ptr %removepend_bitmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %removepend_bitmap, align 8
  tail call void @_set_bit(i32 noundef %conv37, ptr noundef %60) #18
  %call57 = call i32 @mpi3mr_admin_request_post(ptr noundef %mrioc, ptr noundef nonnull %tm_req, i16 noundef zeroext 32, i8 noundef zeroext 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end50.cleanup_crit_edge, label %do.end62

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end62:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name35, ptr noundef nonnull @.str.50) #21
  %61 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -32768, ptr %state, align 2
  %62 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %callback, align 4
  %63 = ptrtoint ptr %dev_handle to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -1, ptr %dev_handle, align 4
  %retry_count = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd.0, i32 0, i32 10
  %64 = ptrtoint ptr %retry_count to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %retry_count, align 1
  %devrem_bitmap72 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 88
  %65 = ptrtoint ptr %devrem_bitmap72 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %devrem_bitmap72, align 8
  call void @_clear_bit(i32 noundef %conv38, ptr noundef %66) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %if.end50.cleanup_crit_edge, %do.end45, %list_add_tail.exit, %if.then15.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tm_req) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpi3mr_dev_rmhs_complete_tm(ptr noundef %mrioc, ptr nocapture noundef %drv_cmd) #0 align 64 {
entry:
  %iou_ctrl = alloca %struct.mpi3_iounit_control_request, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %iou_ctrl) #18
  %host_tag = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 11
  %0 = ptrtoint ptr %host_tag to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %host_tag, align 2
  %sub = add i16 %1, -6
  %state = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %state, align 2
  %4 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %if.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end10

if.end:                                           ; preds = %entry
  %reply = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 2
  %5 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reply, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.end.do.end10_crit_edge, label %do.end

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %name = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %dev_handle = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 6
  %7 = ptrtoint ptr %dev_handle to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dev_handle, align 4
  %conv5 = zext i16 %8 to i32
  %ioc_status = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 7
  %9 = ptrtoint ptr %ioc_status to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ioc_status, align 2
  %conv6 = zext i16 %10 to i32
  %ioc_loginfo = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 8
  %11 = ptrtoint ptr %ioc_loginfo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ioc_loginfo, align 4
  %termination_count = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_reply, ptr %6, i32 0, i32 9
  %13 = ptrtoint ptr %termination_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %termination_count, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %12, i32 noundef %15) #21
  br label %do.end10

do.end10:                                         ; preds = %do.end, %if.end.do.end10_crit_edge, %entry.do.end10_crit_edge
  %name12 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %dev_handle14 = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 6
  %16 = ptrtoint ptr %dev_handle14 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dev_handle14, align 4
  %conv15 = zext i16 %17 to i32
  %conv16 = zext i16 %sub to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name12, i32 noundef %conv15, i32 noundef %conv16) #21
  %18 = call ptr @memset(ptr %iou_ctrl, i32 0, i32 64)
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2, ptr %state, align 2
  %is_waiting = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 9
  %20 = ptrtoint ptr %is_waiting to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %is_waiting, align 4
  %callback = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 12
  %21 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mpi3mr_dev_rmhs_complete_iou, ptr %callback, align 4
  %iou_rc = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 4
  %22 = ptrtoint ptr %iou_rc to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %iou_rc, align 4
  %operation = getelementptr inbounds %struct.mpi3_iounit_control_request, ptr %iou_ctrl, i32 0, i32 8
  %24 = ptrtoint ptr %operation to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %operation, align 1
  %25 = ptrtoint ptr %dev_handle14 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dev_handle14, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %param16 = getelementptr inbounds %struct.mpi3_iounit_control_request, ptr %iou_ctrl, i32 0, i32 12
  %28 = ptrtoint ptr %param16 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %param16, align 8
  %29 = ptrtoint ptr %host_tag to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %host_tag, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %32 = ptrtoint ptr %iou_ctrl to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %iou_ctrl, align 8
  %function = getelementptr inbounds %struct.mpi3_iounit_control_request, ptr %iou_ctrl, i32 0, i32 2
  %33 = ptrtoint ptr %function to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 8, ptr %function, align 1
  %call22 = call i32 @mpi3mr_admin_request_post(ptr noundef %mrioc, ptr noundef nonnull %iou_ctrl, i16 noundef zeroext 64, i8 noundef zeroext 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.end10.cleanup_crit_edge, label %do.end27

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end27:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #20
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name12) #21
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -32768, ptr %state, align 2
  %35 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %callback, align 4
  %36 = ptrtoint ptr %dev_handle14 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %dev_handle14, align 4
  %retry_count = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 10
  %37 = ptrtoint ptr %retry_count to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %retry_count, align 1
  %devrem_bitmap = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 88
  %38 = ptrtoint ptr %devrem_bitmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %devrem_bitmap, align 8
  call void @_clear_bit(i32 noundef %conv16, ptr noundef %39) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %do.end10.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iou_ctrl) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi3mr_admin_request_post(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpi3mr_dev_rmhs_complete_iou(ptr noundef %mrioc, ptr noundef %drv_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %host_tag = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 11
  %0 = ptrtoint ptr %host_tag to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %host_tag, align 2
  %sub = add i16 %1, -6
  %name = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %dev_handle = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 6
  %2 = ptrtoint ptr %dev_handle to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dev_handle, align 4
  %conv2 = zext i16 %3 to i32
  %ioc_status = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 7
  %4 = ptrtoint ptr %ioc_status to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ioc_status, align 2
  %conv3 = zext i16 %5 to i32
  %ioc_loginfo = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 8
  %6 = ptrtoint ptr %ioc_loginfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ioc_loginfo, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name, ptr noundef nonnull @.str.69, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %7) #21
  %8 = ptrtoint ptr %ioc_status to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ioc_status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not = icmp eq i16 %9, 0
  br i1 %cmp.not, label %do.end35, label %if.then

if.then:                                          ; preds = %entry
  %retry_count = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 10
  %10 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %retry_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp8 = icmp ult i8 %11, 3
  br i1 %cmp8, label %if.then10, label %do.end26

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %inc = add nuw nsw i8 %11, 1
  %12 = ptrtoint ptr %retry_count to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %inc, ptr %retry_count, align 1
  %13 = ptrtoint ptr %dev_handle to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dev_handle, align 4
  %conv19 = zext i16 %14 to i32
  %conv21 = zext i8 %inc to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name, ptr noundef nonnull @.str.69, i32 noundef %conv19, i32 noundef %conv21) #21
  %15 = ptrtoint ptr %dev_handle to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dev_handle, align 4
  %iou_rc = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 4
  %17 = ptrtoint ptr %iou_rc to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iou_rc, align 4
  tail call fastcc void @mpi3mr_dev_rmhs_send_tm(ptr noundef %mrioc, i16 noundef zeroext %16, ptr noundef %drv_cmd, i8 noundef zeroext %18)
  br label %cleanup

do.end26:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %dev_handle to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dev_handle, align 4
  %conv31 = zext i16 %20 to i32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name, ptr noundef nonnull @.str.69, i32 noundef %conv31) #21
  br label %if.end44

do.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %dev_handle to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dev_handle, align 4
  %conv40 = zext i16 %22 to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name, ptr noundef nonnull @.str.69, i32 noundef %conv40) #21
  %23 = ptrtoint ptr %dev_handle to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dev_handle, align 4
  %conv43 = zext i16 %24 to i32
  %removepend_bitmap = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 90
  %25 = ptrtoint ptr %removepend_bitmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %removepend_bitmap, align 8
  tail call void @_clear_bit(i32 noundef %conv43, ptr noundef %26) #18
  br label %if.end44

if.end44:                                         ; preds = %do.end35, %do.end26
  %delayed_rmhs_list = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 91
  %27 = ptrtoint ptr %delayed_rmhs_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %delayed_rmhs_list, align 4
  %cmp.i.not = icmp eq ptr %28, %delayed_rmhs_list
  br i1 %cmp.i.not, label %if.end64, label %if.then46

if.then46:                                        ; preds = %if.end44
  %handle = getelementptr inbounds %struct.delayed_dev_rmhs_node, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %handle, align 4
  %31 = ptrtoint ptr %dev_handle to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %dev_handle, align 4
  %retry_count50 = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 10
  %32 = ptrtoint ptr %retry_count50 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %retry_count50, align 1
  %iou_rc51 = getelementptr inbounds %struct.delayed_dev_rmhs_node, ptr %28, i32 0, i32 2
  %33 = ptrtoint ptr %iou_rc51 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %iou_rc51, align 2
  %iou_rc52 = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 4
  %35 = ptrtoint ptr %iou_rc52 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %iou_rc52, align 4
  %conv60 = zext i16 %30 to i32
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name, ptr noundef nonnull @.str.69, i32 noundef %conv60) #21
  %36 = ptrtoint ptr %dev_handle to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %dev_handle, align 4
  %38 = ptrtoint ptr %iou_rc52 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %iou_rc52, align 4
  tail call fastcc void @mpi3mr_dev_rmhs_send_tm(ptr noundef %mrioc, i16 noundef zeroext %37, ptr noundef %drv_cmd, i8 noundef zeroext %39)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %28) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.then46.list_del.exit_crit_edge

if.then46.list_del.exit_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %28, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then46.list_del.exit_crit_edge
  %46 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %28) #18
  br label %cleanup

if.end64:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  %state = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 5
  %48 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -32768, ptr %state, align 2
  %callback = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 12
  %49 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %callback, align 4
  %retry_count65 = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 10
  %50 = ptrtoint ptr %retry_count65 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %retry_count65, align 1
  %51 = ptrtoint ptr %dev_handle to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -1, ptr %dev_handle, align 4
  %conv67 = zext i16 %sub to i32
  %devrem_bitmap = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 88
  %52 = ptrtoint ptr %devrem_bitmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %devrem_bitmap, align 8
  tail call void @_clear_bit(i32 noundef %conv67, ptr noundef %53) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %list_del.exit, %if.then10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpi3mr_send_event_ack(ptr noundef %mrioc, i8 noundef zeroext %event, ptr noundef %cmdparam, i32 noundef %event_ctx) unnamed_addr #0 align 64 {
entry:
  %evtack_req = alloca %struct.mpi3_event_ack_request, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %evtack_req) #18
  %0 = getelementptr inbounds %struct.mpi3_event_ack_request, ptr %evtack_req, i32 0, i32 2
  %1 = getelementptr inbounds %struct.mpi3_event_ack_request, ptr %evtack_req, i32 0, i32 8
  %2 = getelementptr inbounds %struct.mpi3_event_ack_request, ptr %evtack_req, i32 0, i32 10
  %tobool.not = icmp eq ptr %cmdparam, null
  %logging_level8 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 104
  %3 = ptrtoint ptr %logging_level8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %logging_level8, align 8
  %and9 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %do.body7, label %do.body

do.body:                                          ; preds = %entry
  br i1 %tobool10.not, label %do.body.issue_cmd_crit_edge, label %do.end

do.body.issue_cmd_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %issue_cmd

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %name = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %conv = zext i8 %event to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name, i32 noundef %conv, i32 noundef %event_ctx) #21
  br label %issue_cmd

do.body7:                                         ; preds = %entry
  br i1 %tobool10.not, label %do.body7.do.end22_crit_edge, label %do.end14

do.body7.do.end22_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end22

do.end14:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #20
  %name16 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %conv18 = zext i8 %event to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name16, i32 noundef %conv18, i32 noundef %event_ctx) #21
  br label %do.end22

do.end22:                                         ; preds = %do.end14, %do.body7.do.end22_crit_edge
  %evtack_cmds_bitmap = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 93
  %5 = ptrtoint ptr %evtack_cmds_bitmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %evtack_cmds_bitmap, align 8
  %call24 = tail call i32 @_find_first_zero_bit_be(ptr noundef %6, i32 noundef 4) #18
  %conv26 = and i32 %call24, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv26)
  %cmp = icmp ult i32 %conv26, 4
  br i1 %cmp, label %if.then28, label %do.end22.do.cond36_crit_edge

do.end22.do.cond36_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond36

if.then28:                                        ; preds = %do.end22
  %7 = ptrtoint ptr %evtack_cmds_bitmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %evtack_cmds_bitmap, align 8
  %call31 = tail call i32 @_test_and_set_bit(i32 noundef %conv26, ptr noundef %8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then28.if.end66_crit_edge, label %if.then28.do.cond36_crit_edge

if.then28.do.cond36_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond36

if.then28.if.end66_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66

do.cond36:                                        ; preds = %if.then28.do.cond36_crit_edge, %do.end22.do.cond36_crit_edge
  %9 = ptrtoint ptr %evtack_cmds_bitmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %evtack_cmds_bitmap, align 8
  %call24.1 = tail call i32 @_find_first_zero_bit_be(ptr noundef %10, i32 noundef 4) #18
  %conv26.1 = and i32 %call24.1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv26.1)
  %cmp.1 = icmp ult i32 %conv26.1, 4
  br i1 %cmp.1, label %if.then28.1, label %do.cond36.do.cond36.1_crit_edge

do.cond36.do.cond36.1_crit_edge:                  ; preds = %do.cond36
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond36.1

if.then28.1:                                      ; preds = %do.cond36
  %11 = ptrtoint ptr %evtack_cmds_bitmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %evtack_cmds_bitmap, align 8
  %call31.1 = tail call i32 @_test_and_set_bit(i32 noundef %conv26.1, ptr noundef %12) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.1)
  %tobool32.not.1 = icmp eq i32 %call31.1, 0
  br i1 %tobool32.not.1, label %if.then28.1.if.end66_crit_edge, label %if.then28.1.do.cond36.1_crit_edge

if.then28.1.do.cond36.1_crit_edge:                ; preds = %if.then28.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond36.1

if.then28.1.if.end66_crit_edge:                   ; preds = %if.then28.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66

do.cond36.1:                                      ; preds = %if.then28.1.do.cond36.1_crit_edge, %do.cond36.do.cond36.1_crit_edge
  %13 = ptrtoint ptr %evtack_cmds_bitmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %evtack_cmds_bitmap, align 8
  %call24.2 = tail call i32 @_find_first_zero_bit_be(ptr noundef %14, i32 noundef 4) #18
  %conv26.2 = and i32 %call24.2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv26.2)
  %cmp.2 = icmp ult i32 %conv26.2, 4
  br i1 %cmp.2, label %if.then28.2, label %do.cond36.1.do.cond36.2_crit_edge

do.cond36.1.do.cond36.2_crit_edge:                ; preds = %do.cond36.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond36.2

if.then28.2:                                      ; preds = %do.cond36.1
  %15 = ptrtoint ptr %evtack_cmds_bitmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %evtack_cmds_bitmap, align 8
  %call31.2 = tail call i32 @_test_and_set_bit(i32 noundef %conv26.2, ptr noundef %16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.2)
  %tobool32.not.2 = icmp eq i32 %call31.2, 0
  br i1 %tobool32.not.2, label %if.then28.2.if.end66_crit_edge, label %if.then28.2.do.cond36.2_crit_edge

if.then28.2.do.cond36.2_crit_edge:                ; preds = %if.then28.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond36.2

if.then28.2.if.end66_crit_edge:                   ; preds = %if.then28.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66

do.cond36.2:                                      ; preds = %if.then28.2.do.cond36.2_crit_edge, %do.cond36.1.do.cond36.2_crit_edge
  %17 = ptrtoint ptr %evtack_cmds_bitmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %evtack_cmds_bitmap, align 8
  %call24.3 = tail call i32 @_find_first_zero_bit_be(ptr noundef %18, i32 noundef 4) #18
  %conv26.3 = and i32 %call24.3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv26.3)
  %cmp.3 = icmp ult i32 %conv26.3, 4
  br i1 %cmp.3, label %if.then28.3, label %do.cond36.2.do.cond36.3_crit_edge

do.cond36.2.do.cond36.3_crit_edge:                ; preds = %do.cond36.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond36.3

if.then28.3:                                      ; preds = %do.cond36.2
  %19 = ptrtoint ptr %evtack_cmds_bitmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %evtack_cmds_bitmap, align 8
  %call31.3 = tail call i32 @_test_and_set_bit(i32 noundef %conv26.3, ptr noundef %20) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.3)
  %tobool32.not.3 = icmp eq i32 %call31.3, 0
  br i1 %tobool32.not.3, label %if.then28.3.if.end66_crit_edge, label %if.then28.3.do.cond36.3_crit_edge

if.then28.3.do.cond36.3_crit_edge:                ; preds = %if.then28.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond36.3

if.then28.3.if.end66_crit_edge:                   ; preds = %if.then28.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66

do.cond36.3:                                      ; preds = %if.then28.3.do.cond36.3_crit_edge, %do.cond36.2.do.cond36.3_crit_edge
  %21 = ptrtoint ptr %evtack_cmds_bitmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %evtack_cmds_bitmap, align 8
  %call24.4 = tail call i32 @_find_first_zero_bit_be(ptr noundef %22, i32 noundef 4) #18
  %conv26.4 = and i32 %call24.4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv26.4)
  %cmp.4 = icmp ult i32 %conv26.4, 4
  br i1 %cmp.4, label %if.then28.4, label %do.cond36.3.do.cond36.4_crit_edge

do.cond36.3.do.cond36.4_crit_edge:                ; preds = %do.cond36.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond36.4

if.then28.4:                                      ; preds = %do.cond36.3
  %23 = ptrtoint ptr %evtack_cmds_bitmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %evtack_cmds_bitmap, align 8
  %call31.4 = tail call i32 @_test_and_set_bit(i32 noundef %conv26.4, ptr noundef %24) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.4)
  %tobool32.not.4 = icmp eq i32 %call31.4, 0
  br i1 %tobool32.not.4, label %if.then28.4.if.end66_crit_edge, label %if.then28.4.do.cond36.4_crit_edge

if.then28.4.do.cond36.4_crit_edge:                ; preds = %if.then28.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond36.4

if.then28.4.if.end66_crit_edge:                   ; preds = %if.then28.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66

do.cond36.4:                                      ; preds = %if.then28.4.do.cond36.4_crit_edge, %do.cond36.3.do.cond36.4_crit_edge
  %25 = ptrtoint ptr %evtack_cmds_bitmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %evtack_cmds_bitmap, align 8
  %call24.5 = tail call i32 @_find_first_zero_bit_be(ptr noundef %26, i32 noundef 4) #18
  %conv26.5 = and i32 %call24.5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv26.5)
  %cmp.5 = icmp ult i32 %conv26.5, 4
  br i1 %cmp.5, label %if.then28.5, label %do.end38

if.then28.5:                                      ; preds = %do.cond36.4
  %27 = ptrtoint ptr %evtack_cmds_bitmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %evtack_cmds_bitmap, align 8
  %call31.5 = tail call i32 @_test_and_set_bit(i32 noundef %conv26.5, ptr noundef %28) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.5)
  %tobool32.not.5 = icmp eq i32 %call31.5, 0
  br i1 %tobool32.not.5, label %if.then28.5.if.end66_crit_edge, label %if.then28.5.if.then42_crit_edge

if.then28.5.if.then42_crit_edge:                  ; preds = %if.then28.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then42

if.then28.5.if.end66_crit_edge:                   ; preds = %if.then28.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66

do.end38:                                         ; preds = %do.cond36.4
  %.pre = and i32 %call24.5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pre)
  %cmp40 = icmp ugt i32 %.pre, 3
  br i1 %cmp40, label %do.end38.if.then42_crit_edge, label %do.end38.if.end66_crit_edge

do.end38.if.end66_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66

do.end38.if.then42_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then42

if.then42:                                        ; preds = %do.end38.if.then42_crit_edge, %if.then28.5.if.then42_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 2848, i32 noundef 16) #22
  %tobool44.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool44.not, label %if.then42.cleanup_crit_edge, label %if.end46

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end46:                                         ; preds = %if.then42
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %event47 = getelementptr inbounds %struct.delayed_evt_ack_node, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %event47 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %event, ptr %event47, align 8
  %event_ctx48 = getelementptr inbounds %struct.delayed_evt_ack_node, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %event_ctx48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %event_ctx, ptr %event_ctx48, align 4
  %delayed_evtack_cmds_list = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 94
  %prev.i180 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 94, i32 1
  %34 = ptrtoint ptr %prev.i180 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i180, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %35, ptr noundef %delayed_evtack_cmds_list) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end46.list_add_tail.exit_crit_edge

if.end46.list_add_tail.exit_crit_edge:            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  %36 = ptrtoint ptr %prev.i180 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %prev.i180, align 4
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %delayed_evtack_cmds_list, ptr %call7.i.i, align 8
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call7.i.i, ptr %35, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end46.list_add_tail.exit_crit_edge
  %40 = ptrtoint ptr %logging_level8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %logging_level8, align 8
  %and52 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %list_add_tail.exit.cleanup_crit_edge, label %do.end57

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end57:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #20
  %name59 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %conv61 = zext i8 %event to i32
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %name59, i32 noundef %conv61, i32 noundef %event_ctx) #21
  br label %cleanup

if.end66:                                         ; preds = %do.end38.if.end66_crit_edge, %if.then28.5.if.end66_crit_edge, %if.then28.4.if.end66_crit_edge, %if.then28.3.if.end66_crit_edge, %if.then28.2.if.end66_crit_edge, %if.then28.1.if.end66_crit_edge, %if.then28.if.end66_crit_edge
  %conv39.pre-phi183 = phi i32 [ %.pre, %do.end38.if.end66_crit_edge ], [ %conv26, %if.then28.if.end66_crit_edge ], [ %conv26.1, %if.then28.1.if.end66_crit_edge ], [ %conv26.2, %if.then28.2.if.end66_crit_edge ], [ %conv26.3, %if.then28.3.if.end66_crit_edge ], [ %conv26.4, %if.then28.4.if.end66_crit_edge ], [ %conv26.5, %if.then28.5.if.end66_crit_edge ]
  %arrayidx = getelementptr %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 86, i32 %conv39.pre-phi183
  br label %issue_cmd

issue_cmd:                                        ; preds = %if.end66, %do.end, %do.body.issue_cmd_crit_edge
  %drv_cmd.0 = phi ptr [ %cmdparam, %do.end ], [ %cmdparam, %do.body.issue_cmd_crit_edge ], [ %arrayidx, %if.end66 ]
  %host_tag = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd.0, i32 0, i32 11
  %42 = ptrtoint ptr %host_tag to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %host_tag, align 2
  %sub = add i16 %43, -22
  %44 = call ptr @memset(ptr %evtack_req, i32 0, i32 16)
  %state = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd.0, i32 0, i32 5
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %state, align 2
  %47 = and i16 %46, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool71.not = icmp eq i16 %47, 0
  br i1 %tobool71.not, label %if.end88, label %do.body73

do.body73:                                        ; preds = %issue_cmd
  %logging_level74 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 104
  %48 = ptrtoint ptr %logging_level74 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %logging_level74, align 8
  %and75 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body73.cleanup_crit_edge, label %do.end80

do.body73.cleanup_crit_edge:                      ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end80:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #20
  %name82 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name82) #21
  br label %cleanup

if.end88:                                         ; preds = %issue_cmd
  %50 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 2, ptr %state, align 2
  %is_waiting = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd.0, i32 0, i32 9
  %51 = ptrtoint ptr %is_waiting to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %is_waiting, align 4
  %callback = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd.0, i32 0, i32 12
  %52 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @mpi3mr_complete_evt_ack, ptr %callback, align 4
  %53 = tail call i16 @llvm.bswap.i16(i16 %43)
  %54 = ptrtoint ptr %evtack_req to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %evtack_req, align 4
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 5, ptr %0, align 1
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %event, ptr %1, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %event_ctx)
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %2, align 4
  %call93 = call i32 @mpi3mr_admin_request_post(ptr noundef %mrioc, ptr noundef nonnull %evtack_req, i16 noundef zeroext 20, i8 noundef zeroext 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  %logging_level113 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 104
  %59 = ptrtoint ptr %logging_level113 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %logging_level113, align 8
  %and114 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool94.not, label %do.body112, label %do.body96

do.body96:                                        ; preds = %if.end88
  br i1 %tobool115.not, label %do.body96.out_failed_crit_edge, label %do.end103

do.body96.out_failed_crit_edge:                   ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_failed

do.end103:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #20
  %name105 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name105) #21
  br label %out_failed

do.body112:                                       ; preds = %if.end88
  br i1 %tobool115.not, label %do.body112.cleanup_crit_edge, label %do.end119

do.body112.cleanup_crit_edge:                     ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end119:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #20
  %name121 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %conv123 = zext i8 %event to i32
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name121, i32 noundef %conv123, i32 noundef %event_ctx) #21
  br label %cleanup

out_failed:                                       ; preds = %do.end103, %do.body96.out_failed_crit_edge
  %61 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -32768, ptr %state, align 2
  %62 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %callback, align 4
  %conv130 = zext i16 %sub to i32
  %evtack_cmds_bitmap131 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 93
  %63 = ptrtoint ptr %evtack_cmds_bitmap131 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %evtack_cmds_bitmap131, align 8
  call void @_clear_bit(i32 noundef %conv130, ptr noundef %64) #18
  br label %cleanup

cleanup:                                          ; preds = %out_failed, %do.end119, %do.body112.cleanup_crit_edge, %do.end80, %do.body73.cleanup_crit_edge, %do.end57, %list_add_tail.exit.cleanup_crit_edge, %if.then42.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %evtack_req) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpi3mr_complete_evt_ack(ptr noundef %mrioc, ptr noundef %drv_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %host_tag = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 11
  %0 = ptrtoint ptr %host_tag to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %host_tag, align 2
  %sub = add i16 %1, -22
  %ioc_status = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 7
  %2 = ptrtoint ptr %ioc_status to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ioc_status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not = icmp eq i16 %3, 0
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

do.body:                                          ; preds = %entry
  %logging_level = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 104
  %4 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logging_level, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end11_crit_edge, label %do.end

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %name = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %6 = and i16 %3, 32767
  %and8 = zext i16 %6 to i32
  %ioc_loginfo = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 8
  %7 = ptrtoint ptr %ioc_loginfo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ioc_loginfo, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %name, i32 noundef %and8, i32 noundef %8) #21
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body.if.end11_crit_edge, %entry.if.end11_crit_edge
  %delayed_evtack_cmds_list = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 94
  %9 = ptrtoint ptr %delayed_evtack_cmds_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %delayed_evtack_cmds_list, align 4
  %cmp.i.not = icmp eq ptr %10, %delayed_evtack_cmds_list
  br i1 %cmp.i.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end11
  %event = getelementptr inbounds %struct.delayed_evt_ack_node, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %event to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %event, align 4
  %event_ctx = getelementptr inbounds %struct.delayed_evt_ack_node, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %event_ctx, align 4
  tail call fastcc void @mpi3mr_send_event_ack(ptr noundef %mrioc, i8 noundef zeroext %12, ptr noundef %drv_cmd, i32 noundef %14)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.then14.list_del.exit_crit_edge

if.then14.list_del.exit_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then14.list_del.exit_crit_edge
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %10) #18
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  %state = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 5
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -32768, ptr %state, align 2
  %callback = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 12
  %24 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %callback, align 4
  %conv18 = zext i16 %sub to i32
  %evtack_cmds_bitmap = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 93
  %25 = ptrtoint ptr %evtack_cmds_bitmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %evtack_cmds_bitmap, align 8
  tail call void @_clear_bit(i32 noundef %conv18, ptr noundef %26) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %list_del.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi3mr_print_fault_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpi3mr_fwevt_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %mrioc = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %mrioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrioc, align 4
  %current_event.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %1, i32 0, i32 106
  %2 = ptrtoint ptr %current_event.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %current_event.i, align 8
  %fwevt_lock.i.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %1, i32 0, i32 65
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fwevt_lock.i.i) #18
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %add.ptr
  br i1 %cmp.i.not.i.i, label %entry.mpi3mr_fwevt_del_from_list.exit.i_crit_edge, label %if.then.i.i

entry.mpi3mr_fwevt_del_from_list.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_fwevt_del_from_list.exit.i

if.then.i.i:                                      ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #18
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del_init.exit.i.i_crit_edge

if.then.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i.i.i = getelementptr i8, ptr %work, i32 -4
  %5 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i.i, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del_init.exit.i.i_crit_edge
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  %prev.i3.i.i.i = getelementptr i8, ptr %work, i32 -4
  %12 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %prev.i3.i.i.i, align 4
  %ref_count.i.i.i = getelementptr i8, ptr %work, i32 56
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i.i, i32 1, i32 3, i32 1) #18
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i.i, ptr %ref_count.i.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.mpi3mr_fwevt_del_from_list.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !612

if.end5.i.i.i.i.i.i.i.mpi3mr_fwevt_del_from_list.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_fwevt_del_from_list.exit.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i.i, i32 noundef 3) #18
  br label %mpi3mr_fwevt_del_from_list.exit.i

if.then.i.i.i.i:                                  ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef %add.ptr) #18
  br label %mpi3mr_fwevt_del_from_list.exit.i

mpi3mr_fwevt_del_from_list.exit.i:                ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.mpi3mr_fwevt_del_from_list.exit.i_crit_edge, %entry.mpi3mr_fwevt_del_from_list.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fwevt_lock.i.i, i32 noundef %call2.i.i) #18
  %stop_drv_processing.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %1, i32 0, i32 74
  %14 = ptrtoint ptr %stop_drv_processing.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %stop_drv_processing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end.i, label %mpi3mr_fwevt_del_from_list.exit.i.out.i_crit_edge

mpi3mr_fwevt_del_from_list.exit.i.out.i_crit_edge: ; preds = %mpi3mr_fwevt_del_from_list.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.i

if.end.i:                                         ; preds = %mpi3mr_fwevt_del_from_list.exit.i
  %process_evt.i = getelementptr i8, ptr %work, i32 51
  %16 = ptrtoint ptr %process_evt.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %process_evt.i, align 1, !range !623
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not.i = icmp eq i8 %17, 0
  br i1 %tobool1.not.i, label %if.end.i.evt_ack.i_crit_edge, label %if.end3.i

if.end.i.evt_ack.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %evt_ack.i

if.end3.i:                                        ; preds = %if.end.i
  %event_id.i = getelementptr i8, ptr %work, i32 48
  %18 = ptrtoint ptr %event_id.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %event_id.i, align 4
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.351)
  switch i16 %19, label %if.end3.i.evt_ack.i_crit_edge [
    i16 7, label %sw.bb.i
    i16 8, label %sw.bb4.i
    i16 13, label %sw.bb7.i
    i16 22, label %sw.bb8.i
    i16 32, label %sw.bb9.i
  ]

if.end3.i.evt_ack.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %evt_ack.i

sw.bb.i:                                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #20
  %persistent_id.i = getelementptr i8, ptr %work, i32 84
  %21 = ptrtoint ptr %persistent_id.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %persistent_id.i, align 8
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #18
  tail call fastcc void @mpi3mr_report_tgtdev_to_host(ptr noundef %1, i16 noundef zeroext %23) #18
  br label %evt_ack.i

sw.bb4.i:                                         ; preds = %if.end3.i
  %persistent_id.i.i = getelementptr i8, ptr %work, i32 84
  %24 = ptrtoint ptr %persistent_id.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %persistent_id.i.i, align 8
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #18
  %dev_handle1.i.i = getelementptr i8, ptr %work, i32 68
  %27 = ptrtoint ptr %dev_handle1.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dev_handle1.i.i, align 8
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #18
  %name.i.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %1, i32 0, i32 7
  %conv.i.i = zext i16 %29 to i32
  %conv2.i.i = zext i16 %26 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %name.i.i, ptr noundef nonnull @.str.124, i32 noundef %conv.i.i, i32 noundef %conv2.i.i) #21
  %call3.i.i = tail call fastcc ptr @mpi3mr_get_tgtdev_by_handle(ptr noundef %1, i16 noundef zeroext %29) #18
  %tobool.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb4.i.evt_ack.i_crit_edge, label %if.end.i.i

sw.bb4.i.evt_ack.i_crit_edge:                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %evt_ack.i

if.end.i.i:                                       ; preds = %sw.bb4.i
  %event_data5.i = getelementptr i8, ptr %work, i32 60
  tail call fastcc void @mpi3mr_update_tgtdev(ptr noundef %1, ptr noundef nonnull %call3.i.i, ptr noundef %event_data5.i) #18
  %is_hidden.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call3.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %is_hidden.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_hidden.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool4.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.land.lhs.true12.i.i_crit_edge

if.end.i.i.land.lhs.true12.i.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true12.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %host_exposed.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call3.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %host_exposed.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %host_exposed.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool5.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool5.not.i.i, label %if.then6.i.i, label %land.lhs.true.i.i.if.end8.i.i_crit_edge

land.lhs.true.i.i.if.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8.i.i

if.then6.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @mpi3mr_report_tgtdev_to_host(ptr noundef %1, i16 noundef zeroext %26) #18
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then6.i.i, %land.lhs.true.i.i.if.end8.i.i_crit_edge
  %34 = ptrtoint ptr %is_hidden.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %.pr.i.i = load i8, ptr %is_hidden.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i)
  %tobool11.not.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end8.i.i.land.lhs.true20.i.i_crit_edge, label %if.end8.i.i.land.lhs.true12.i.i_crit_edge

if.end8.i.i.land.lhs.true12.i.i_crit_edge:        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true12.i.i

if.end8.i.i.land.lhs.true20.i.i_crit_edge:        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true20.i.i

land.lhs.true12.i.i:                              ; preds = %if.end8.i.i.land.lhs.true12.i.i_crit_edge, %if.end.i.i.land.lhs.true12.i.i_crit_edge
  %host_exposed13.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call3.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %host_exposed13.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %host_exposed13.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool15.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool15.not.i.i, label %land.lhs.true12.i.i.if.end17.i.i_crit_edge, label %if.then16.i.i

land.lhs.true12.i.i.if.end17.i.i_crit_edge:       ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17.i.i

if.then16.i.i:                                    ; preds = %land.lhs.true12.i.i
  %dev_handle.i.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call3.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %dev_handle.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dev_handle.i.i.i, align 4
  %conv.i.i.i = zext i16 %38 to i32
  %wwid.i.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call3.i.i, i32 0, i32 11
  %39 = ptrtoint ptr %wwid.i.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %wwid.i.i.i, align 8
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name.i.i, ptr noundef nonnull @.str.40, i32 noundef %conv.i.i.i, i64 noundef %40) #21
  %starget.i.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call3.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %starget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %starget.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.i, label %if.then16.i.i.mpi3mr_remove_tgtdev_from_host.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then16.i.i.mpi3mr_remove_tgtdev_from_host.exit.i.i_crit_edge: ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_remove_tgtdev_from_host.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then16.i.i
  %hostdata.i.i.i = getelementptr inbounds %struct.scsi_target, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %hostdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hostdata.i.i.i, align 8
  %tobool2.not.i.i.i = icmp eq ptr %44, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev_handle5.i.i.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %dev_handle5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %dev_handle5.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge
  %46 = ptrtoint ptr %starget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr.i.i.i = load ptr, ptr %starget.i.i.i, align 8
  %tobool7.not.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %tobool7.not.i.i.i, label %if.end.i.i.i.mpi3mr_remove_tgtdev_from_host.exit.i.i_crit_edge, label %if.then8.i.i.i

if.end.i.i.i.mpi3mr_remove_tgtdev_from_host.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_remove_tgtdev_from_host.exit.i.i

if.then8.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev.i.i.i = getelementptr inbounds %struct.scsi_target, ptr %.pr.i.i.i, i32 0, i32 3
  tail call void @scsi_remove_target(ptr noundef %dev.i.i.i) #18
  %47 = ptrtoint ptr %host_exposed13.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %host_exposed13.i.i, align 8
  br label %mpi3mr_remove_tgtdev_from_host.exit.i.i

mpi3mr_remove_tgtdev_from_host.exit.i.i:          ; preds = %if.then8.i.i.i, %if.end.i.i.i.mpi3mr_remove_tgtdev_from_host.exit.i.i_crit_edge, %if.then16.i.i.mpi3mr_remove_tgtdev_from_host.exit.i.i_crit_edge
  %48 = ptrtoint ptr %dev_handle.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %dev_handle.i.i.i, align 4
  %conv18.i.i.i = zext i16 %49 to i32
  %50 = ptrtoint ptr %wwid.i.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %wwid.i.i.i, align 8
  %call20.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i, ptr noundef nonnull @.str.40, i32 noundef %conv18.i.i.i, i64 noundef %51) #21
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %mpi3mr_remove_tgtdev_from_host.exit.i.i, %land.lhs.true12.i.i.if.end17.i.i_crit_edge
  %52 = ptrtoint ptr %is_hidden.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %.pr54.i.i = load i8, ptr %is_hidden.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr54.i.i)
  %tobool19.not.i.i = icmp eq i8 %.pr54.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end17.i.i.land.lhs.true20.i.i_crit_edge, label %if.end17.i.i.if.then30.i.i_crit_edge

if.end17.i.i.if.then30.i.i_crit_edge:             ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then30.i.i

if.end17.i.i.land.lhs.true20.i.i_crit_edge:       ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true20.i.i

land.lhs.true20.i.i:                              ; preds = %if.end17.i.i.land.lhs.true20.i.i_crit_edge, %if.end8.i.i.land.lhs.true20.i.i_crit_edge
  %host_exposed21.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call3.i.i, i32 0, i32 9
  %53 = ptrtoint ptr %host_exposed21.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %host_exposed21.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool23.not.i.i = icmp eq i8 %54, 0
  br i1 %tobool23.not.i.i, label %land.lhs.true20.i.i.if.then30.i.i_crit_edge, label %land.lhs.true24.i.i

land.lhs.true20.i.i.if.then30.i.i_crit_edge:      ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then30.i.i

land.lhs.true24.i.i:                              ; preds = %land.lhs.true20.i.i
  %starget.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call3.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %starget.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %starget.i.i, align 8
  %tobool25.not.i.i = icmp eq ptr %56, null
  br i1 %tobool25.not.i.i, label %land.lhs.true24.i.i.if.then30.i.i_crit_edge, label %if.then26.i.i

land.lhs.true24.i.i.if.then30.i.i_crit_edge:      ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then30.i.i

if.then26.i.i:                                    ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @starget_for_each_device(ptr noundef nonnull %56, ptr noundef nonnull %call3.i.i, ptr noundef nonnull @mpi3mr_update_sdev) #18
  br label %if.then30.i.i

if.then30.i.i:                                    ; preds = %if.then26.i.i, %land.lhs.true24.i.i.if.then30.i.i_crit_edge, %land.lhs.true20.i.i.if.then30.i.i_crit_edge, %if.end17.i.i.if.then30.i.i_crit_edge
  %ref_count.i.i38.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call3.i.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i.i39.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i38.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i38.i, i32 1, i32 3, i32 1) #18
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i38.i, ptr %ref_count.i.i38.i, i32 1, ptr elementtype(i32) %ref_count.i.i38.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i.i40.i = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i40.i)
  %cmp.i.i.i.i.i.i41.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i40.i, 1
  br i1 %cmp.i.i.i.i.i.i41.i, label %if.then.i.i.i45.i, label %if.end5.i.i.i.i.i.i43.i

if.end5.i.i.i.i.i.i43.i:                          ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i40.i)
  %.not.i.i.i.i.i.i42.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i40.i, 0
  br i1 %.not.i.i.i.i.i.i42.i, label %if.end5.i.i.i.i.i.i43.i.evt_ack.i_crit_edge, label %if.then10.i.i.i.i.i.i44.i, !prof !612

if.end5.i.i.i.i.i.i43.i.evt_ack.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i.i43.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %evt_ack.i

if.then10.i.i.i.i.i.i44.i:                        ; preds = %if.end5.i.i.i.i.i.i43.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i38.i, i32 noundef 3) #18
  br label %evt_ack.i

if.then.i.i.i45.i:                                ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %call3.i.i) #18
  br label %evt_ack.i

sw.bb7.i:                                         ; preds = %if.end3.i
  %dev_handle1.i46.i = getelementptr i8, ptr %work, i32 66
  %58 = ptrtoint ptr %dev_handle1.i46.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %dev_handle1.i46.i, align 2
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #18
  %name.i47.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %1, i32 0, i32 7
  %conv.i48.i = zext i16 %60 to i32
  %reason_code.i.i = getelementptr i8, ptr %work, i32 62
  %61 = ptrtoint ptr %reason_code.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %reason_code.i.i, align 2
  %conv3.i.i = zext i8 %62 to i32
  %call.i49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %name.i47.i, ptr noundef nonnull @.str.126, i32 noundef %conv.i48.i, i32 noundef %conv3.i.i) #21
  %63 = ptrtoint ptr %reason_code.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %reason_code.i.i, align 2
  %65 = zext i8 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.352)
  switch i8 %64, label %do.end10.i.i [
    i8 2, label %sw.bb7.i.sw.epilog.i.i_crit_edge
    i8 3, label %sw.epilog.thread.i.i
    i8 80, label %sw.bb7.i.i
  ]

sw.bb7.i.sw.epilog.i.i_crit_edge:                 ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i.i

sw.bb7.i.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i.i

do.end10.i.i:                                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv5.i.i = zext i8 %64 to i32
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %name.i47.i, ptr noundef nonnull @.str.126, i32 noundef %conv5.i.i) #21
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.end10.i.i, %sw.bb7.i.i, %sw.bb7.i.sw.epilog.i.i_crit_edge
  %tobool29.not.i.i = phi i1 [ true, %do.end10.i.i ], [ false, %sw.bb7.i.i ], [ false, %sw.bb7.i.sw.epilog.i.i_crit_edge ]
  %tobool33.not.i.i = phi i1 [ true, %do.end10.i.i ], [ false, %sw.bb7.i.i ], [ true, %sw.bb7.i.sw.epilog.i.i_crit_edge ]
  %call17.i.i = tail call fastcc ptr @mpi3mr_get_tgtdev_by_handle(ptr noundef %1, i16 noundef zeroext %60) #18
  %tobool.not.i50.i = icmp eq ptr %call17.i.i, null
  br i1 %tobool.not.i50.i, label %sw.epilog.i.i.evt_ack.i_crit_edge, label %sw.epilog.i.i.if.end24.i.i_crit_edge

sw.epilog.i.i.if.end24.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24.i.i

sw.epilog.i.i.evt_ack.i_crit_edge:                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %evt_ack.i

sw.epilog.thread.i.i:                             ; preds = %sw.bb7.i
  %call1770.i.i = tail call fastcc ptr @mpi3mr_get_tgtdev_by_handle(ptr noundef %1, i16 noundef zeroext %60) #18
  %tobool.not71.i.i = icmp eq ptr %call1770.i.i, null
  br i1 %tobool.not71.i.i, label %sw.epilog.thread.i.i.evt_ack.i_crit_edge, label %if.then19.i.i

sw.epilog.thread.i.i.evt_ack.i_crit_edge:         ; preds = %sw.epilog.thread.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %evt_ack.i

if.then19.i.i:                                    ; preds = %sw.epilog.thread.i.i
  %is_hidden.i51.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call1770.i.i, i32 0, i32 8
  %66 = ptrtoint ptr %is_hidden.i51.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %is_hidden.i51.i, align 1
  %host_exposed.i52.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call1770.i.i, i32 0, i32 9
  %67 = ptrtoint ptr %host_exposed.i52.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %host_exposed.i52.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool20.not.i.i = icmp eq i8 %68, 0
  br i1 %tobool20.not.i.i, label %if.then21.i.i, label %if.then19.i.i.if.end24.i.i_crit_edge

if.then19.i.i.if.end24.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24.i.i

if.then21.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %perst_id.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call1770.i.i, i32 0, i32 6
  %69 = ptrtoint ptr %perst_id.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %perst_id.i.i, align 4
  tail call fastcc void @mpi3mr_report_tgtdev_to_host(ptr noundef %1, i16 noundef zeroext %70) #18
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then21.i.i, %if.then19.i.i.if.end24.i.i_crit_edge, %sw.epilog.i.i.if.end24.i.i_crit_edge
  %tobool29.not7287.i.i = phi i1 [ true, %if.then19.i.i.if.end24.i.i_crit_edge ], [ true, %if.then21.i.i ], [ %tobool29.not.i.i, %sw.epilog.i.i.if.end24.i.i_crit_edge ]
  %tobool33.not7385.i.i = phi i1 [ true, %if.then19.i.i.if.end24.i.i_crit_edge ], [ true, %if.then21.i.i ], [ %tobool33.not.i.i, %sw.epilog.i.i.if.end24.i.i_crit_edge ]
  %call177583.i.i = phi ptr [ %call1770.i.i, %if.then19.i.i.if.end24.i.i_crit_edge ], [ %call1770.i.i, %if.then21.i.i ], [ %call17.i.i, %sw.epilog.i.i.if.end24.i.i_crit_edge ]
  %starget.i53.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call177583.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %starget.i53.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %starget.i53.i, align 8
  %tobool25.not.i54.i = icmp eq ptr %72, null
  br i1 %tobool25.not.i54.i, label %if.end24.i.i.if.end32.i.i_crit_edge, label %land.lhs.true.i55.i

if.end24.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32.i.i

land.lhs.true.i55.i:                              ; preds = %if.end24.i.i
  %hostdata.i.i = getelementptr inbounds %struct.scsi_target, ptr %72, i32 0, i32 14
  %73 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hostdata.i.i, align 8
  %tobool27.not.i.i = icmp eq ptr %74, null
  %brmerge.i.i = or i1 %tobool29.not7287.i.i, %tobool27.not.i.i
  br i1 %brmerge.i.i, label %land.lhs.true.i55.i.if.end32.i.i_crit_edge, label %if.then30.i61.i

land.lhs.true.i55.i.if.end32.i.i_crit_edge:       ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32.i.i

if.then30.i61.i:                                  ; preds = %land.lhs.true.i55.i
  %dev_handle.i.i56.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call177583.i.i, i32 0, i32 2
  %75 = ptrtoint ptr %dev_handle.i.i56.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %dev_handle.i.i56.i, align 4
  %conv.i.i57.i = zext i16 %76 to i32
  %wwid.i.i58.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call177583.i.i, i32 0, i32 11
  %77 = ptrtoint ptr %wwid.i.i58.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %wwid.i.i58.i, align 8
  %call.i.i59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name.i47.i, ptr noundef nonnull @.str.40, i32 noundef %conv.i.i57.i, i64 noundef %78) #21
  %79 = ptrtoint ptr %starget.i53.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %starget.i53.i, align 8
  %tobool.not.i.i60.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.i60.i, label %if.then30.i61.i.mpi3mr_remove_tgtdev_from_host.exit.i74.i_crit_edge, label %land.lhs.true.i.i64.i

if.then30.i61.i.mpi3mr_remove_tgtdev_from_host.exit.i74.i_crit_edge: ; preds = %if.then30.i61.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_remove_tgtdev_from_host.exit.i74.i

land.lhs.true.i.i64.i:                            ; preds = %if.then30.i61.i
  %hostdata.i.i62.i = getelementptr inbounds %struct.scsi_target, ptr %80, i32 0, i32 14
  %81 = ptrtoint ptr %hostdata.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hostdata.i.i62.i, align 8
  %tobool2.not.i.i63.i = icmp eq ptr %82, null
  br i1 %tobool2.not.i.i63.i, label %land.lhs.true.i.i64.i.if.end.i.i69.i_crit_edge, label %if.then.i.i66.i

land.lhs.true.i.i64.i.if.end.i.i69.i_crit_edge:   ; preds = %land.lhs.true.i.i64.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i69.i

if.then.i.i66.i:                                  ; preds = %land.lhs.true.i.i64.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev_handle5.i.i65.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %dev_handle5.i.i65.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 -1, ptr %dev_handle5.i.i65.i, align 4
  br label %if.end.i.i69.i

if.end.i.i69.i:                                   ; preds = %if.then.i.i66.i, %land.lhs.true.i.i64.i.if.end.i.i69.i_crit_edge
  %84 = ptrtoint ptr %starget.i53.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr.i.i67.i = load ptr, ptr %starget.i53.i, align 8
  %tobool7.not.i.i68.i = icmp eq ptr %.pr.i.i67.i, null
  br i1 %tobool7.not.i.i68.i, label %if.end.i.i69.i.mpi3mr_remove_tgtdev_from_host.exit.i74.i_crit_edge, label %if.then8.i.i71.i

if.end.i.i69.i.mpi3mr_remove_tgtdev_from_host.exit.i74.i_crit_edge: ; preds = %if.end.i.i69.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_remove_tgtdev_from_host.exit.i74.i

if.then8.i.i71.i:                                 ; preds = %if.end.i.i69.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev.i.i70.i = getelementptr inbounds %struct.scsi_target, ptr %.pr.i.i67.i, i32 0, i32 3
  tail call void @scsi_remove_target(ptr noundef %dev.i.i70.i) #18
  %host_exposed.i.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call177583.i.i, i32 0, i32 9
  %85 = ptrtoint ptr %host_exposed.i.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %host_exposed.i.i.i, align 8
  br label %mpi3mr_remove_tgtdev_from_host.exit.i74.i

mpi3mr_remove_tgtdev_from_host.exit.i74.i:        ; preds = %if.then8.i.i71.i, %if.end.i.i69.i.mpi3mr_remove_tgtdev_from_host.exit.i74.i_crit_edge, %if.then30.i61.i.mpi3mr_remove_tgtdev_from_host.exit.i74.i_crit_edge
  %86 = ptrtoint ptr %dev_handle.i.i56.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %dev_handle.i.i56.i, align 4
  %conv18.i.i72.i = zext i16 %87 to i32
  %88 = ptrtoint ptr %wwid.i.i58.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %wwid.i.i58.i, align 8
  %call20.i.i73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i47.i, ptr noundef nonnull @.str.40, i32 noundef %conv18.i.i72.i, i64 noundef %89) #21
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %mpi3mr_remove_tgtdev_from_host.exit.i74.i, %land.lhs.true.i55.i.if.end32.i.i_crit_edge, %if.end24.i.i.if.end32.i.i_crit_edge
  br i1 %tobool33.not7385.i.i, label %if.end32.i.i.if.then37.i.i_crit_edge, label %if.then34.i.i

if.end32.i.i.if.then37.i.i_crit_edge:             ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then37.i.i

if.then34.i.i:                                    ; preds = %if.end32.i.i
  tail call fastcc void @mpi3mr_tgtdev_del_from_list(ptr noundef %1, ptr noundef nonnull %call177583.i.i) #18
  %ref_count.i.i75.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call177583.i.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i.i76.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i75.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i75.i, i32 1, i32 3, i32 1) #18
  %90 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i75.i, ptr %ref_count.i.i75.i, i32 1, ptr elementtype(i32) %ref_count.i.i75.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i.i77.i = extractvalue { i32, i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i77.i)
  %cmp.i.i.i.i.i.i78.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i77.i, 1
  br i1 %cmp.i.i.i.i.i.i78.i, label %if.then.i.i.i82.i, label %if.end5.i.i.i.i.i.i80.i

if.end5.i.i.i.i.i.i80.i:                          ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i77.i)
  %.not.i.i.i.i.i.i79.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i77.i, 0
  br i1 %.not.i.i.i.i.i.i79.i, label %if.end5.i.i.i.i.i.i80.i.if.then37.i.i_crit_edge, label %if.then10.i.i.i.i.i.i81.i, !prof !612

if.end5.i.i.i.i.i.i80.i.if.then37.i.i_crit_edge:  ; preds = %if.end5.i.i.i.i.i.i80.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then37.i.i

if.then10.i.i.i.i.i.i81.i:                        ; preds = %if.end5.i.i.i.i.i.i80.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i75.i, i32 noundef 3) #18
  br label %if.then37.i.i

if.then.i.i.i82.i:                                ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %call177583.i.i) #18
  br label %if.then37.i.i

if.then37.i.i:                                    ; preds = %if.then.i.i.i82.i, %if.then10.i.i.i.i.i.i81.i, %if.end5.i.i.i.i.i.i80.i.if.then37.i.i_crit_edge, %if.end32.i.i.if.then37.i.i_crit_edge
  %ref_count.i58.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call177583.i.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i59.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i58.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i58.i.i, i32 1, i32 3, i32 1) #18
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i58.i.i, ptr %ref_count.i58.i.i, i32 1, ptr elementtype(i32) %ref_count.i58.i.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i60.i.i = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i60.i.i)
  %cmp.i.i.i.i.i61.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i60.i.i, 1
  br i1 %cmp.i.i.i.i.i61.i.i, label %if.then.i.i65.i.i, label %if.end5.i.i.i.i.i63.i.i

if.end5.i.i.i.i.i63.i.i:                          ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i60.i.i)
  %.not.i.i.i.i.i62.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i60.i.i, 0
  br i1 %.not.i.i.i.i.i62.i.i, label %if.end5.i.i.i.i.i63.i.i.evt_ack.i_crit_edge, label %if.then10.i.i.i.i.i64.i.i, !prof !612

if.end5.i.i.i.i.i63.i.i.evt_ack.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %evt_ack.i

if.then10.i.i.i.i.i64.i.i:                        ; preds = %if.end5.i.i.i.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i58.i.i, i32 noundef 3) #18
  br label %evt_ack.i

if.then.i.i65.i.i:                                ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %call177583.i.i) #18
  br label %evt_ack.i

sw.bb8.i:                                         ; preds = %if.end3.i
  %event_data1.i.i = getelementptr i8, ptr %work, i32 60
  %exp_status.i.i.i = getelementptr i8, ptr %work, i32 70
  %92 = ptrtoint ptr %exp_status.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %exp_status.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %93)
  %94 = icmp ult i8 %93, 5
  br i1 %94, label %switch.lookup, label %sw.bb8.i.do.end.i.i.i_crit_edge

sw.bb8.i.do.end.i.i.i_crit_edge:                  ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i.i.i

switch.lookup:                                    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #20
  %95 = sext i8 %93 to i32
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.mpi3mr_fwevt_worker, i32 0, i32 %95
  %96 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %96)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %switch.lookup, %sw.bb8.i.do.end.i.i.i_crit_edge
  %status_str.0.i.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.134, %sw.bb8.i.do.end.i.i.i_crit_edge ]
  %name.i.i.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %1, i32 0, i32 7
  %call.i.i83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %name.i.i.i, ptr noundef nonnull @.str.136, ptr noundef nonnull %status_str.0.i.i.i) #21
  %expander_dev_handle.i.i.i = getelementptr i8, ptr %work, i32 62
  %97 = ptrtoint ptr %expander_dev_handle.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %expander_dev_handle.i.i.i, align 2
  %99 = tail call i16 @llvm.bswap.i16(i16 %98) #18
  %conv10.i.i.i = zext i16 %99 to i32
  %100 = ptrtoint ptr %event_data1.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %event_data1.i.i, align 2
  %102 = tail call i16 @llvm.bswap.i16(i16 %101) #18
  %conv11.i.i.i = zext i16 %102 to i32
  %start_phy_num.i.i.i = getelementptr i8, ptr %work, i32 69
  %103 = ptrtoint ptr %start_phy_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %start_phy_num.i.i.i, align 1
  %conv12.i.i.i = zext i8 %104 to i32
  %num_entries.i.i.i = getelementptr i8, ptr %work, i32 68
  %105 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %num_entries.i.i.i, align 2
  %conv13.i.i.i = zext i8 %106 to i32
  %call14.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %name.i.i.i, ptr noundef nonnull @.str.136, i32 noundef %conv10.i.i.i, i32 noundef %conv11.i.i.i, i32 noundef %conv12.i.i.i, i32 noundef %conv13.i.i.i) #21
  %107 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %num_entries.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %cmp76.not.i.i.i = icmp eq i8 %108, 0
  br i1 %cmp76.not.i.i.i, label %do.end.i.i.i.evt_ack.i_crit_edge, label %do.end.i.i.i.for.body.i.i.i_crit_edge

do.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  br label %for.body.i.i.i

do.end.i.i.i.evt_ack.i_crit_edge:                 ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %evt_ack.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %do.end.i.i.i.for.body.i.i.i_crit_edge
  %i.077.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %do.end.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.mpi3_event_data_sas_topology_change_list, ptr %event_data1.i.i, i32 0, i32 8, i32 %i.077.i.i.i
  %109 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx.i.i.i, align 2
  %111 = tail call i16 @llvm.bswap.i16(i16 %110) #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool.not.i.i84.i = icmp eq i16 %110, 0
  br i1 %tobool.not.i.i84.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i85.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i.i

if.end.i.i85.i:                                   ; preds = %for.body.i.i.i
  %112 = ptrtoint ptr %start_phy_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %start_phy_num.i.i.i, align 1
  %114 = trunc i32 %i.077.i.i.i to i8
  %conv20.i.i.i = add i8 %113, %114
  %status.i.i.i = getelementptr %struct.mpi3_event_data_sas_topology_change_list, ptr %event_data1.i.i, i32 0, i32 8, i32 %i.077.i.i.i, i32 2
  %115 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %status.i.i.i, align 1
  %117 = and i8 %116, 15
  %conv25.i.i.i = zext i8 %117 to i32
  %switch.tableidx = add nsw i32 %conv25.i.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %118 = icmp ult i32 %switch.tableidx, 5
  br i1 %118, label %switch.lookup12, label %if.end.i.i85.i.sw.epilog32.i.i.i_crit_edge

if.end.i.i85.i.sw.epilog32.i.i.i_crit_edge:       ; preds = %if.end.i.i85.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog32.i.i.i

switch.lookup12:                                  ; preds = %if.end.i.i85.i
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep13 = getelementptr inbounds [5 x ptr], ptr @switch.table.mpi3mr_fwevt_worker.336, i32 0, i32 %switch.tableidx
  %119 = ptrtoint ptr %switch.gep13 to i32
  call void @__asan_load4_noabort(i32 %119)
  %switch.load14 = load ptr, ptr %switch.gep13, align 4
  br label %sw.epilog32.i.i.i

sw.epilog32.i.i.i:                                ; preds = %switch.lookup12, %if.end.i.i85.i.sw.epilog32.i.i.i_crit_edge
  %status_str.1.i.i.i = phi ptr [ %switch.load14, %switch.lookup12 ], [ @.str.145, %if.end.i.i85.i.sw.epilog32.i.i.i_crit_edge ]
  %link_rate35.i.i.i = getelementptr %struct.mpi3_event_data_sas_topology_change_list, ptr %event_data1.i.i, i32 0, i32 8, i32 %i.077.i.i.i, i32 1
  %120 = ptrtoint ptr %link_rate35.i.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %link_rate35.i.i.i, align 2
  %122 = lshr i8 %121, 4
  %123 = and i8 %121, 15
  %conv50.i.i.i = zext i8 %conv20.i.i.i to i32
  %conv51.i.i.i = zext i16 %111 to i32
  %conv52.i.i.i = zext i8 %122 to i32
  %conv53.i.i.i = zext i8 %123 to i32
  %call54.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef %name.i.i.i, ptr noundef nonnull @.str.136, i32 noundef %conv50.i.i.i, i32 noundef %conv51.i.i.i, ptr noundef nonnull %status_str.1.i.i.i, i32 noundef %conv52.i.i.i, i32 noundef %conv53.i.i.i) #21
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %sw.epilog32.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.077.i.i.i, 1
  %124 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %num_entries.i.i.i, align 2
  %conv16.i.i.i = zext i8 %125 to i32
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %conv16.i.i.i
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %mpi3mr_sastopochg_evt_debug.exit.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i.i

mpi3mr_sastopochg_evt_debug.exit.i.i:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp47.not.i.i = icmp eq i8 %125, 0
  br i1 %cmp47.not.i.i, label %mpi3mr_sastopochg_evt_debug.exit.i.i.evt_ack.i_crit_edge, label %for.body.lr.ph.i.i

mpi3mr_sastopochg_evt_debug.exit.i.i.evt_ack.i_crit_edge: ; preds = %mpi3mr_sastopochg_evt_debug.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %evt_ack.i

for.body.lr.ph.i.i:                               ; preds = %mpi3mr_sastopochg_evt_debug.exit.i.i
  %phy_entry.i.i = getelementptr i8, ptr %work, i32 72
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.048.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [1 x %struct.mpi3_event_sas_topo_phy_entry], ptr %phy_entry.i.i, i32 0, i32 %i.048.i.i
  %126 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %127)
  %tobool.not.i86.i = icmp eq i16 %127, 0
  br i1 %tobool.not.i86.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i88.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

if.end.i88.i:                                     ; preds = %for.body.i.i
  %128 = tail call i16 @llvm.bswap.i16(i16 %127) #18
  %call.i87.i = tail call fastcc ptr @mpi3mr_get_tgtdev_by_handle(ptr noundef %1, i16 noundef zeroext %128) #18
  %tobool3.not.i.i = icmp eq ptr %call.i87.i, null
  br i1 %tobool3.not.i.i, label %if.end.i88.i.for.inc.i.i_crit_edge, label %if.end5.i.i

if.end.i88.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

if.end5.i.i:                                      ; preds = %if.end.i88.i
  %status.i.i = getelementptr [1 x %struct.mpi3_event_sas_topo_phy_entry], ptr %phy_entry.i.i, i32 0, i32 %i.048.i.i, i32 2
  %129 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %status.i.i, align 1
  %131 = and i8 %130, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %131)
  %cond.i.i = icmp eq i8 %131, 2
  br i1 %cond.i.i, label %sw.bb.i.i, label %if.end5.i.i.if.then15.i.i_crit_edge

if.end5.i.i.if.then15.i.i_crit_edge:              ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then15.i.i

sw.bb.i.i:                                        ; preds = %if.end5.i.i
  %host_exposed.i89.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i87.i, i32 0, i32 9
  %132 = ptrtoint ptr %host_exposed.i89.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %host_exposed.i89.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool11.not.i90.i = icmp eq i8 %133, 0
  br i1 %tobool11.not.i90.i, label %sw.bb.i.i.if.end13.i.i_crit_edge, label %if.then12.i.i

sw.bb.i.i.if.end13.i.i_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13.i.i

if.then12.i.i:                                    ; preds = %sw.bb.i.i
  %dev_handle.i.i91.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i87.i, i32 0, i32 2
  %134 = ptrtoint ptr %dev_handle.i.i91.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %dev_handle.i.i91.i, align 4
  %conv.i.i92.i = zext i16 %135 to i32
  %wwid.i.i93.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i87.i, i32 0, i32 11
  %136 = ptrtoint ptr %wwid.i.i93.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %wwid.i.i93.i, align 8
  %call.i34.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name.i.i.i, ptr noundef nonnull @.str.40, i32 noundef %conv.i.i92.i, i64 noundef %137) #21
  %starget.i.i94.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i87.i, i32 0, i32 1
  %138 = ptrtoint ptr %starget.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %starget.i.i94.i, align 8
  %tobool.not.i35.i.i = icmp eq ptr %139, null
  br i1 %tobool.not.i35.i.i, label %if.then12.i.i.mpi3mr_remove_tgtdev_from_host.exit.i106.i_crit_edge, label %land.lhs.true.i.i97.i

if.then12.i.i.mpi3mr_remove_tgtdev_from_host.exit.i106.i_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_remove_tgtdev_from_host.exit.i106.i

land.lhs.true.i.i97.i:                            ; preds = %if.then12.i.i
  %hostdata.i.i95.i = getelementptr inbounds %struct.scsi_target, ptr %139, i32 0, i32 14
  %140 = ptrtoint ptr %hostdata.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hostdata.i.i95.i, align 8
  %tobool2.not.i.i96.i = icmp eq ptr %141, null
  br i1 %tobool2.not.i.i96.i, label %land.lhs.true.i.i97.i.if.end.i36.i.i_crit_edge, label %if.then.i.i99.i

land.lhs.true.i.i97.i.if.end.i36.i.i_crit_edge:   ; preds = %land.lhs.true.i.i97.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i36.i.i

if.then.i.i99.i:                                  ; preds = %land.lhs.true.i.i97.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev_handle5.i.i98.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %dev_handle5.i.i98.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 -1, ptr %dev_handle5.i.i98.i, align 4
  br label %if.end.i36.i.i

if.end.i36.i.i:                                   ; preds = %if.then.i.i99.i, %land.lhs.true.i.i97.i.if.end.i36.i.i_crit_edge
  %143 = ptrtoint ptr %starget.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %.pr.i.i100.i = load ptr, ptr %starget.i.i94.i, align 8
  %tobool7.not.i.i101.i = icmp eq ptr %.pr.i.i100.i, null
  br i1 %tobool7.not.i.i101.i, label %if.end.i36.i.i.mpi3mr_remove_tgtdev_from_host.exit.i106.i_crit_edge, label %if.then8.i.i103.i

if.end.i36.i.i.mpi3mr_remove_tgtdev_from_host.exit.i106.i_crit_edge: ; preds = %if.end.i36.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_remove_tgtdev_from_host.exit.i106.i

if.then8.i.i103.i:                                ; preds = %if.end.i36.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev.i.i102.i = getelementptr inbounds %struct.scsi_target, ptr %.pr.i.i100.i, i32 0, i32 3
  tail call void @scsi_remove_target(ptr noundef %dev.i.i102.i) #18
  %144 = ptrtoint ptr %host_exposed.i89.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %host_exposed.i89.i, align 8
  br label %mpi3mr_remove_tgtdev_from_host.exit.i106.i

mpi3mr_remove_tgtdev_from_host.exit.i106.i:       ; preds = %if.then8.i.i103.i, %if.end.i36.i.i.mpi3mr_remove_tgtdev_from_host.exit.i106.i_crit_edge, %if.then12.i.i.mpi3mr_remove_tgtdev_from_host.exit.i106.i_crit_edge
  %145 = ptrtoint ptr %dev_handle.i.i91.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %dev_handle.i.i91.i, align 4
  %conv18.i.i104.i = zext i16 %146 to i32
  %147 = ptrtoint ptr %wwid.i.i93.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %wwid.i.i93.i, align 8
  %call20.i.i105.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i.i, ptr noundef nonnull @.str.40, i32 noundef %conv18.i.i104.i, i64 noundef %148) #21
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %mpi3mr_remove_tgtdev_from_host.exit.i106.i, %sw.bb.i.i.if.end13.i.i_crit_edge
  tail call fastcc void @mpi3mr_tgtdev_del_from_list(ptr noundef %1, ptr noundef nonnull %call.i87.i) #18
  %ref_count.i.i107.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i87.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i.i108.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i107.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i107.i, i32 1, i32 3, i32 1) #18
  %149 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i107.i, ptr %ref_count.i.i107.i, i32 1, ptr elementtype(i32) %ref_count.i.i107.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i.i109.i = extractvalue { i32, i32, i32 } %149, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i109.i)
  %cmp.i.i.i.i.i.i110.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i109.i, 1
  br i1 %cmp.i.i.i.i.i.i110.i, label %if.then.i.i.i114.i, label %if.end5.i.i.i.i.i.i112.i

if.end5.i.i.i.i.i.i112.i:                         ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i109.i)
  %.not.i.i.i.i.i.i111.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i109.i, 0
  br i1 %.not.i.i.i.i.i.i111.i, label %if.end5.i.i.i.i.i.i112.i.if.then15.i.i_crit_edge, label %if.then10.i.i.i.i.i.i113.i, !prof !612

if.end5.i.i.i.i.i.i112.i.if.then15.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i112.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then15.i.i

if.then10.i.i.i.i.i.i113.i:                       ; preds = %if.end5.i.i.i.i.i.i112.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i107.i, i32 noundef 3) #18
  br label %if.then15.i.i

if.then.i.i.i114.i:                               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %call.i87.i) #18
  br label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.then.i.i.i114.i, %if.then10.i.i.i.i.i.i113.i, %if.end5.i.i.i.i.i.i112.i.if.then15.i.i_crit_edge, %if.end5.i.i.if.then15.i.i_crit_edge
  %ref_count.i37.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i87.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i38.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i37.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i37.i.i, i32 1, i32 3, i32 1) #18
  %150 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i37.i.i, ptr %ref_count.i37.i.i, i32 1, ptr elementtype(i32) %ref_count.i37.i.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i39.i.i = extractvalue { i32, i32, i32 } %150, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i39.i.i)
  %cmp.i.i.i.i.i40.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i39.i.i, 1
  br i1 %cmp.i.i.i.i.i40.i.i, label %if.then.i.i44.i.i, label %if.end5.i.i.i.i.i42.i.i

if.end5.i.i.i.i.i42.i.i:                          ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i39.i.i)
  %.not.i.i.i.i.i41.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i39.i.i, 0
  br i1 %.not.i.i.i.i.i41.i.i, label %if.end5.i.i.i.i.i42.i.i.for.inc.i.i_crit_edge, label %if.then10.i.i.i.i.i43.i.i, !prof !612

if.end5.i.i.i.i.i42.i.i.for.inc.i.i_crit_edge:    ; preds = %if.end5.i.i.i.i.i42.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

if.then10.i.i.i.i.i43.i.i:                        ; preds = %if.end5.i.i.i.i.i42.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i37.i.i, i32 noundef 3) #18
  br label %for.inc.i.i

if.then.i.i44.i.i:                                ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %call.i87.i) #18
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i44.i.i, %if.then10.i.i.i.i.i43.i.i, %if.end5.i.i.i.i.i42.i.i.for.inc.i.i_crit_edge, %if.end.i88.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.048.i.i, 1
  %151 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %num_entries.i.i.i, align 2
  %conv.i115.i = zext i8 %152 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i115.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.evt_ack.i_crit_edge

for.inc.i.i.evt_ack.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %evt_ack.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

sw.bb9.i:                                         ; preds = %if.end3.i
  %event_data1.i116.i = getelementptr i8, ptr %work, i32 60
  %switch_status.i.i.i = getelementptr i8, ptr %work, i32 70
  %153 = ptrtoint ptr %switch_status.i.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %switch_status.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %154)
  %155 = icmp ult i8 %154, 5
  br i1 %155, label %switch.lookup15, label %sw.bb9.i.do.end.i.i130.i_crit_edge

sw.bb9.i.do.end.i.i130.i_crit_edge:               ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i.i130.i

switch.lookup15:                                  ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #20
  %156 = sext i8 %154 to i32
  %switch.gep16 = getelementptr inbounds [5 x ptr], ptr @switch.table.mpi3mr_fwevt_worker.337, i32 0, i32 %156
  %157 = ptrtoint ptr %switch.gep16 to i32
  call void @__asan_load4_noabort(i32 %157)
  %switch.load17 = load ptr, ptr %switch.gep16, align 4
  br label %do.end.i.i130.i

do.end.i.i130.i:                                  ; preds = %switch.lookup15, %sw.bb9.i.do.end.i.i130.i_crit_edge
  %status_str.0.i.i121.i = phi ptr [ %switch.load17, %switch.lookup15 ], [ @.str.134, %sw.bb9.i.do.end.i.i130.i_crit_edge ]
  %name.i.i122.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %1, i32 0, i32 7
  %call.i.i123.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %name.i.i122.i, ptr noundef nonnull @.str.150, ptr noundef nonnull %status_str.0.i.i121.i) #21
  %switch_dev_handle.i.i.i = getelementptr i8, ptr %work, i32 62
  %158 = ptrtoint ptr %switch_dev_handle.i.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %switch_dev_handle.i.i.i, align 2
  %160 = tail call i16 @llvm.bswap.i16(i16 %159) #18
  %conv10.i.i124.i = zext i16 %160 to i32
  %161 = ptrtoint ptr %event_data1.i116.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %event_data1.i116.i, align 4
  %163 = tail call i16 @llvm.bswap.i16(i16 %162) #18
  %conv11.i.i125.i = zext i16 %163 to i32
  %start_port_num.i.i.i = getelementptr i8, ptr %work, i32 69
  %164 = ptrtoint ptr %start_port_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %start_port_num.i.i.i, align 1
  %conv12.i.i126.i = zext i8 %165 to i32
  %num_entries.i.i127.i = getelementptr i8, ptr %work, i32 68
  %166 = ptrtoint ptr %num_entries.i.i127.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %num_entries.i.i127.i, align 4
  %conv13.i.i128.i = zext i8 %167 to i32
  %call14.i.i129.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %name.i.i122.i, ptr noundef nonnull @.str.150, i32 noundef %conv10.i.i124.i, i32 noundef %conv11.i.i125.i, i32 noundef %conv12.i.i126.i, i32 noundef %conv13.i.i128.i) #21
  %168 = ptrtoint ptr %num_entries.i.i127.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %num_entries.i.i127.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %cmp73.not.i.i.i = icmp eq i8 %169, 0
  br i1 %cmp73.not.i.i.i, label %do.end.i.i130.i.evt_ack.i_crit_edge, label %do.end.i.i130.i.for.body.i.i133.i_crit_edge

do.end.i.i130.i.for.body.i.i133.i_crit_edge:      ; preds = %do.end.i.i130.i
  br label %for.body.i.i133.i

do.end.i.i130.i.evt_ack.i_crit_edge:              ; preds = %do.end.i.i130.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %evt_ack.i

for.body.i.i133.i:                                ; preds = %for.inc.i.i144.i.for.body.i.i133.i_crit_edge, %do.end.i.i130.i.for.body.i.i133.i_crit_edge
  %i.074.i.i.i = phi i32 [ %inc.i.i141.i, %for.inc.i.i144.i.for.body.i.i133.i_crit_edge ], [ 0, %do.end.i.i130.i.for.body.i.i133.i_crit_edge ]
  %arrayidx.i.i131.i = getelementptr %struct.mpi3_event_data_pcie_topology_change_list, ptr %event_data1.i116.i, i32 0, i32 9, i32 %i.074.i.i.i
  %170 = ptrtoint ptr %arrayidx.i.i131.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %arrayidx.i.i131.i, align 4
  %172 = tail call i16 @llvm.bswap.i16(i16 %171) #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %171)
  %tobool.not.i.i132.i = icmp eq i16 %171, 0
  br i1 %tobool.not.i.i132.i, label %for.body.i.i133.i.for.inc.i.i144.i_crit_edge, label %if.end.i.i135.i

for.body.i.i133.i.for.inc.i.i144.i_crit_edge:     ; preds = %for.body.i.i133.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i144.i

if.end.i.i135.i:                                  ; preds = %for.body.i.i133.i
  %173 = ptrtoint ptr %start_port_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %start_port_num.i.i.i, align 1
  %175 = trunc i32 %i.074.i.i.i to i8
  %conv20.i.i134.i = add i8 %174, %175
  %port_status.i.i.i = getelementptr %struct.mpi3_event_data_pcie_topology_change_list, ptr %event_data1.i116.i, i32 0, i32 9, i32 %i.074.i.i.i, i32 1
  %176 = ptrtoint ptr %port_status.i.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %port_status.i.i.i, align 2
  %switch.tableidx19 = add i8 %177, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx19)
  %178 = icmp ult i8 %switch.tableidx19, 5
  br i1 %178, label %switch.lookup18, label %if.end.i.i135.i.sw.epilog31.i.i.i_crit_edge

if.end.i.i135.i.sw.epilog31.i.i.i_crit_edge:      ; preds = %if.end.i.i135.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog31.i.i.i

switch.lookup18:                                  ; preds = %if.end.i.i135.i
  call void @__sanitizer_cov_trace_pc() #20
  %179 = sext i8 %switch.tableidx19 to i32
  %switch.gep20 = getelementptr inbounds [5 x ptr], ptr @switch.table.mpi3mr_fwevt_worker.338, i32 0, i32 %179
  %180 = ptrtoint ptr %switch.gep20 to i32
  call void @__asan_load4_noabort(i32 %180)
  %switch.load21 = load ptr, ptr %switch.gep20, align 4
  br label %sw.epilog31.i.i.i

sw.epilog31.i.i.i:                                ; preds = %switch.lookup18, %if.end.i.i135.i.sw.epilog31.i.i.i_crit_edge
  %status_str.1.i.i139.i = phi ptr [ %switch.load21, %switch.lookup18 ], [ @.str.145, %if.end.i.i135.i.sw.epilog31.i.i.i_crit_edge ]
  %current_port_info.i.i.i = getelementptr %struct.mpi3_event_data_pcie_topology_change_list, ptr %event_data1.i116.i, i32 0, i32 9, i32 %i.074.i.i.i, i32 3
  %181 = ptrtoint ptr %current_port_info.i.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %current_port_info.i.i.i, align 4
  %183 = and i8 %182, 15
  %previous_port_info.i.i.i = getelementptr %struct.mpi3_event_data_pcie_topology_change_list, ptr %event_data1.i116.i, i32 0, i32 9, i32 %i.074.i.i.i, i32 5
  %184 = ptrtoint ptr %previous_port_info.i.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %previous_port_info.i.i.i, align 2
  %186 = and i8 %185, 15
  %conv47.i.i.i = zext i8 %conv20.i.i134.i to i32
  %conv48.i.i.i = zext i16 %172 to i32
  %conv49.i.i.i = zext i8 %183 to i32
  %conv50.i.i140.i = zext i8 %186 to i32
  %call51.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef %name.i.i122.i, ptr noundef nonnull @.str.150, i32 noundef %conv47.i.i.i, i32 noundef %conv48.i.i.i, ptr noundef nonnull %status_str.1.i.i139.i, i32 noundef %conv49.i.i.i, i32 noundef %conv50.i.i140.i) #21
  br label %for.inc.i.i144.i

for.inc.i.i144.i:                                 ; preds = %sw.epilog31.i.i.i, %for.body.i.i133.i.for.inc.i.i144.i_crit_edge
  %inc.i.i141.i = add nuw nsw i32 %i.074.i.i.i, 1
  %187 = ptrtoint ptr %num_entries.i.i127.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %num_entries.i.i127.i, align 4
  %conv16.i.i142.i = zext i8 %188 to i32
  %cmp.i.i143.i = icmp ult i32 %inc.i.i141.i, %conv16.i.i142.i
  br i1 %cmp.i.i143.i, label %for.inc.i.i144.i.for.body.i.i133.i_crit_edge, label %mpi3mr_pcietopochg_evt_debug.exit.i.i

for.inc.i.i144.i.for.body.i.i133.i_crit_edge:     ; preds = %for.inc.i.i144.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i133.i

mpi3mr_pcietopochg_evt_debug.exit.i.i:            ; preds = %for.inc.i.i144.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %cmp45.not.i.i = icmp eq i8 %188, 0
  br i1 %cmp45.not.i.i, label %mpi3mr_pcietopochg_evt_debug.exit.i.i.evt_ack.i_crit_edge, label %for.body.lr.ph.i145.i

mpi3mr_pcietopochg_evt_debug.exit.i.i.evt_ack.i_crit_edge: ; preds = %mpi3mr_pcietopochg_evt_debug.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %evt_ack.i

for.body.lr.ph.i145.i:                            ; preds = %mpi3mr_pcietopochg_evt_debug.exit.i.i
  %port_entry.i.i = getelementptr i8, ptr %work, i32 76
  br label %for.body.i148.i

for.body.i148.i:                                  ; preds = %for.inc.i183.i.for.body.i148.i_crit_edge, %for.body.lr.ph.i145.i
  %i.046.i.i = phi i32 [ 0, %for.body.lr.ph.i145.i ], [ %inc.i180.i, %for.inc.i183.i.for.body.i148.i_crit_edge ]
  %arrayidx.i146.i = getelementptr [1 x %struct.mpi3_event_pcie_topo_port_entry], ptr %port_entry.i.i, i32 0, i32 %i.046.i.i
  %189 = ptrtoint ptr %arrayidx.i146.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %arrayidx.i146.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %190)
  %tobool.not.i147.i = icmp eq i16 %190, 0
  br i1 %tobool.not.i147.i, label %for.body.i148.i.for.inc.i183.i_crit_edge, label %if.end.i151.i

for.body.i148.i.for.inc.i183.i_crit_edge:         ; preds = %for.body.i148.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i183.i

if.end.i151.i:                                    ; preds = %for.body.i148.i
  %191 = tail call i16 @llvm.bswap.i16(i16 %190) #18
  %call.i149.i = tail call fastcc ptr @mpi3mr_get_tgtdev_by_handle(ptr noundef %1, i16 noundef zeroext %191) #18
  %tobool3.not.i150.i = icmp eq ptr %call.i149.i, null
  br i1 %tobool3.not.i150.i, label %if.end.i151.i.for.inc.i183.i_crit_edge, label %if.end5.i153.i

if.end.i151.i.for.inc.i183.i_crit_edge:           ; preds = %if.end.i151.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i183.i

if.end5.i153.i:                                   ; preds = %if.end.i151.i
  %port_status.i.i = getelementptr [1 x %struct.mpi3_event_pcie_topo_port_entry], ptr %port_entry.i.i, i32 0, i32 %i.046.i.i, i32 1
  %192 = ptrtoint ptr %port_status.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %port_status.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %193)
  %cond.i152.i = icmp eq i8 %193, 2
  br i1 %cond.i152.i, label %sw.bb.i155.i, label %if.end5.i153.i.if.then13.i.i_crit_edge

if.end5.i153.i.if.then13.i.i_crit_edge:           ; preds = %if.end5.i153.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then13.i.i

sw.bb.i155.i:                                     ; preds = %if.end5.i153.i
  %host_exposed.i154.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i149.i, i32 0, i32 9
  %194 = ptrtoint ptr %host_exposed.i154.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %host_exposed.i154.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool9.not.i.i = icmp eq i8 %195, 0
  br i1 %tobool9.not.i.i, label %sw.bb.i155.i.if.end11.i.i_crit_edge, label %if.then10.i.i

sw.bb.i155.i.if.end11.i.i_crit_edge:              ; preds = %sw.bb.i155.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %sw.bb.i155.i
  %dev_handle.i.i156.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i149.i, i32 0, i32 2
  %196 = ptrtoint ptr %dev_handle.i.i156.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %dev_handle.i.i156.i, align 4
  %conv.i.i157.i = zext i16 %197 to i32
  %wwid.i.i158.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i149.i, i32 0, i32 11
  %198 = ptrtoint ptr %wwid.i.i158.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %wwid.i.i158.i, align 8
  %call.i32.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name.i.i122.i, ptr noundef nonnull @.str.40, i32 noundef %conv.i.i157.i, i64 noundef %199) #21
  %starget.i.i159.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i149.i, i32 0, i32 1
  %200 = ptrtoint ptr %starget.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %starget.i.i159.i, align 8
  %tobool.not.i33.i.i = icmp eq ptr %201, null
  br i1 %tobool.not.i33.i.i, label %if.then10.i.i.mpi3mr_remove_tgtdev_from_host.exit.i171.i_crit_edge, label %land.lhs.true.i.i162.i

if.then10.i.i.mpi3mr_remove_tgtdev_from_host.exit.i171.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_remove_tgtdev_from_host.exit.i171.i

land.lhs.true.i.i162.i:                           ; preds = %if.then10.i.i
  %hostdata.i.i160.i = getelementptr inbounds %struct.scsi_target, ptr %201, i32 0, i32 14
  %202 = ptrtoint ptr %hostdata.i.i160.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hostdata.i.i160.i, align 8
  %tobool2.not.i.i161.i = icmp eq ptr %203, null
  br i1 %tobool2.not.i.i161.i, label %land.lhs.true.i.i162.i.if.end.i34.i.i_crit_edge, label %if.then.i.i164.i

land.lhs.true.i.i162.i.if.end.i34.i.i_crit_edge:  ; preds = %land.lhs.true.i.i162.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i34.i.i

if.then.i.i164.i:                                 ; preds = %land.lhs.true.i.i162.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev_handle5.i.i163.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %dev_handle5.i.i163.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 -1, ptr %dev_handle5.i.i163.i, align 4
  br label %if.end.i34.i.i

if.end.i34.i.i:                                   ; preds = %if.then.i.i164.i, %land.lhs.true.i.i162.i.if.end.i34.i.i_crit_edge
  %205 = ptrtoint ptr %starget.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %.pr.i.i165.i = load ptr, ptr %starget.i.i159.i, align 8
  %tobool7.not.i.i166.i = icmp eq ptr %.pr.i.i165.i, null
  br i1 %tobool7.not.i.i166.i, label %if.end.i34.i.i.mpi3mr_remove_tgtdev_from_host.exit.i171.i_crit_edge, label %if.then8.i.i168.i

if.end.i34.i.i.mpi3mr_remove_tgtdev_from_host.exit.i171.i_crit_edge: ; preds = %if.end.i34.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_remove_tgtdev_from_host.exit.i171.i

if.then8.i.i168.i:                                ; preds = %if.end.i34.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev.i.i167.i = getelementptr inbounds %struct.scsi_target, ptr %.pr.i.i165.i, i32 0, i32 3
  tail call void @scsi_remove_target(ptr noundef %dev.i.i167.i) #18
  %206 = ptrtoint ptr %host_exposed.i154.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %host_exposed.i154.i, align 8
  br label %mpi3mr_remove_tgtdev_from_host.exit.i171.i

mpi3mr_remove_tgtdev_from_host.exit.i171.i:       ; preds = %if.then8.i.i168.i, %if.end.i34.i.i.mpi3mr_remove_tgtdev_from_host.exit.i171.i_crit_edge, %if.then10.i.i.mpi3mr_remove_tgtdev_from_host.exit.i171.i_crit_edge
  %207 = ptrtoint ptr %dev_handle.i.i156.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %dev_handle.i.i156.i, align 4
  %conv18.i.i169.i = zext i16 %208 to i32
  %209 = ptrtoint ptr %wwid.i.i158.i to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %wwid.i.i158.i, align 8
  %call20.i.i170.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i122.i, ptr noundef nonnull @.str.40, i32 noundef %conv18.i.i169.i, i64 noundef %210) #21
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %mpi3mr_remove_tgtdev_from_host.exit.i171.i, %sw.bb.i155.i.if.end11.i.i_crit_edge
  tail call fastcc void @mpi3mr_tgtdev_del_from_list(ptr noundef %1, ptr noundef nonnull %call.i149.i) #18
  %ref_count.i.i172.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i149.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i.i173.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i172.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i172.i, i32 1, i32 3, i32 1) #18
  %211 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i172.i, ptr %ref_count.i.i172.i, i32 1, ptr elementtype(i32) %ref_count.i.i172.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i.i174.i = extractvalue { i32, i32, i32 } %211, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i174.i)
  %cmp.i.i.i.i.i.i175.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i174.i, 1
  br i1 %cmp.i.i.i.i.i.i175.i, label %if.then.i.i.i179.i, label %if.end5.i.i.i.i.i.i177.i

if.end5.i.i.i.i.i.i177.i:                         ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i174.i)
  %.not.i.i.i.i.i.i176.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i174.i, 0
  br i1 %.not.i.i.i.i.i.i176.i, label %if.end5.i.i.i.i.i.i177.i.if.then13.i.i_crit_edge, label %if.then10.i.i.i.i.i.i178.i, !prof !612

if.end5.i.i.i.i.i.i177.i.if.then13.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i177.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then13.i.i

if.then10.i.i.i.i.i.i178.i:                       ; preds = %if.end5.i.i.i.i.i.i177.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i172.i, i32 noundef 3) #18
  br label %if.then13.i.i

if.then.i.i.i179.i:                               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %call.i149.i) #18
  br label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.then.i.i.i179.i, %if.then10.i.i.i.i.i.i178.i, %if.end5.i.i.i.i.i.i177.i.if.then13.i.i_crit_edge, %if.end5.i153.i.if.then13.i.i_crit_edge
  %ref_count.i35.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call.i149.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i36.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i35.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i35.i.i, i32 1, i32 3, i32 1) #18
  %212 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i35.i.i, ptr %ref_count.i35.i.i, i32 1, ptr elementtype(i32) %ref_count.i35.i.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i37.i.i = extractvalue { i32, i32, i32 } %212, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i37.i.i)
  %cmp.i.i.i.i.i38.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i37.i.i, 1
  br i1 %cmp.i.i.i.i.i38.i.i, label %if.then.i.i42.i.i, label %if.end5.i.i.i.i.i40.i.i

if.end5.i.i.i.i.i40.i.i:                          ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i37.i.i)
  %.not.i.i.i.i.i39.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i37.i.i, 0
  br i1 %.not.i.i.i.i.i39.i.i, label %if.end5.i.i.i.i.i40.i.i.for.inc.i183.i_crit_edge, label %if.then10.i.i.i.i.i41.i.i, !prof !612

if.end5.i.i.i.i.i40.i.i.for.inc.i183.i_crit_edge: ; preds = %if.end5.i.i.i.i.i40.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i183.i

if.then10.i.i.i.i.i41.i.i:                        ; preds = %if.end5.i.i.i.i.i40.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i35.i.i, i32 noundef 3) #18
  br label %for.inc.i183.i

if.then.i.i42.i.i:                                ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %call.i149.i) #18
  br label %for.inc.i183.i

for.inc.i183.i:                                   ; preds = %if.then.i.i42.i.i, %if.then10.i.i.i.i.i41.i.i, %if.end5.i.i.i.i.i40.i.i.for.inc.i183.i_crit_edge, %if.end.i151.i.for.inc.i183.i_crit_edge, %for.body.i148.i.for.inc.i183.i_crit_edge
  %inc.i180.i = add nuw nsw i32 %i.046.i.i, 1
  %213 = ptrtoint ptr %num_entries.i.i127.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %num_entries.i.i127.i, align 4
  %conv.i181.i = zext i8 %214 to i32
  %cmp.i182.i = icmp ult i32 %inc.i180.i, %conv.i181.i
  br i1 %cmp.i182.i, label %for.inc.i183.i.for.body.i148.i_crit_edge, label %for.inc.i183.i.evt_ack.i_crit_edge

for.inc.i183.i.evt_ack.i_crit_edge:               ; preds = %for.inc.i183.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %evt_ack.i

for.inc.i183.i.for.body.i148.i_crit_edge:         ; preds = %for.inc.i183.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i148.i

evt_ack.i:                                        ; preds = %for.inc.i183.i.evt_ack.i_crit_edge, %mpi3mr_pcietopochg_evt_debug.exit.i.i.evt_ack.i_crit_edge, %do.end.i.i130.i.evt_ack.i_crit_edge, %for.inc.i.i.evt_ack.i_crit_edge, %mpi3mr_sastopochg_evt_debug.exit.i.i.evt_ack.i_crit_edge, %do.end.i.i.i.evt_ack.i_crit_edge, %if.then.i.i65.i.i, %if.then10.i.i.i.i.i64.i.i, %if.end5.i.i.i.i.i63.i.i.evt_ack.i_crit_edge, %sw.epilog.thread.i.i.evt_ack.i_crit_edge, %sw.epilog.i.i.evt_ack.i_crit_edge, %if.then.i.i.i45.i, %if.then10.i.i.i.i.i.i44.i, %if.end5.i.i.i.i.i.i43.i.evt_ack.i_crit_edge, %sw.bb4.i.evt_ack.i_crit_edge, %sw.bb.i, %if.end3.i.evt_ack.i_crit_edge, %if.end.i.evt_ack.i_crit_edge
  %send_ack.i = getelementptr i8, ptr %work, i32 50
  %215 = ptrtoint ptr %send_ack.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %send_ack.i, align 2, !range !623
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool10.not.i = icmp eq i8 %216, 0
  br i1 %tobool10.not.i, label %evt_ack.i.out.i_crit_edge, label %if.then11.i

evt_ack.i.out.i_crit_edge:                        ; preds = %evt_ack.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.i

if.then11.i:                                      ; preds = %evt_ack.i
  call void @__sanitizer_cov_trace_pc() #20
  %event_id12.i = getelementptr i8, ptr %work, i32 48
  %217 = ptrtoint ptr %event_id12.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %event_id12.i, align 4
  %conv13.i = trunc i16 %218 to i8
  %evt_ctx.i = getelementptr i8, ptr %work, i32 52
  %219 = ptrtoint ptr %evt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %evt_ctx.i, align 4
  %call14.i = tail call i32 @mpi3mr_process_event_ack(ptr noundef %1, i8 noundef zeroext %conv13.i, i32 noundef %220) #18
  br label %out.i

out.i:                                            ; preds = %if.then11.i, %evt_ack.i.out.i_crit_edge, %mpi3mr_fwevt_del_from_list.exit.i.out.i_crit_edge
  %ref_count.i.i = getelementptr i8, ptr %work, i32 56
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %221 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %221, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i184.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %out.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.mpi3mr_fwevt_bh.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !612

if.end5.i.i.i.i.i.i.mpi3mr_fwevt_bh.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_fwevt_bh.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef 3) #18
  br label %mpi3mr_fwevt_bh.exit

if.then.i.i184.i:                                 ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef %add.ptr) #18
  br label %mpi3mr_fwevt_bh.exit

mpi3mr_fwevt_bh.exit:                             ; preds = %if.then.i.i184.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.mpi3mr_fwevt_bh.exit_crit_edge
  %222 = ptrtoint ptr %current_event.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr null, ptr %current_event.i, align 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %223 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %223, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i3, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %mpi3mr_fwevt_bh.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mpi3mr_fwevt_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !612

if.end5.i.i.i.i.i.mpi3mr_fwevt_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_fwevt_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef 3) #18
  br label %mpi3mr_fwevt_put.exit

if.then.i.i3:                                     ; preds = %mpi3mr_fwevt_bh.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef %add.ptr) #18
  br label %mpi3mr_fwevt_put.exit

mpi3mr_fwevt_put.exit:                            ; preds = %if.then.i.i3, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mpi3mr_fwevt_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi3mr_process_event_ack(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @starget_for_each_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpi3mr_update_sdev(ptr noundef %sdev, ptr noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %q_depth = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %q_depth to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %q_depth, align 2
  %conv = zext i16 %1 to i32
  %parent.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end
  %dev.addr.0.i.i = phi ptr [ %3, %if.end ], [ %5, %while.body.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i16.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i16.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i16.i, align 8
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.mpi3mr_change_queue_depth.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i.i

while.body.i.i.mpi3mr_change_queue_depth.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_change_queue_depth.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i17.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %mpi3mr_change_queue_depth.exit

mpi3mr_change_queue_depth.exit:                   ; preds = %while.end.i.i, %while.body.i.i.mpi3mr_change_queue_depth.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i17.i, %while.end.i.i ], [ null, %while.body.i.i.mpi3mr_change_queue_depth.exit_crit_edge ]
  %tagged_supported.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %6 = ptrtoint ptr %tagged_supported.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load.i = load i64, ptr %tagged_supported.i, align 4
  %7 = and i64 %bf.load.i, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not.i = icmp eq i64 %7, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 %conv
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 26
  %8 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %can_queue.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %9)
  %cmp.i = icmp sgt i32 %spec.select.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool5.not.i = icmp eq i32 %spec.select.i, 0
  %spec.store.select.i = select i1 %tobool5.not.i, i32 32, i32 %spec.select.i
  %q_depth.addr.1.i = select i1 %cmp.i, i32 %9, i32 %spec.store.select.i
  %call9.i = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %q_depth.addr.1.i) #18
  %dev_type = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %data, i32 0, i32 7
  %10 = ptrtoint ptr %dev_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dev_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cond = icmp eq i8 %11, 1
  br i1 %cond, label %sw.bb, label %mpi3mr_change_queue_depth.exit.cleanup_crit_edge

mpi3mr_change_queue_depth.exit.cleanup_crit_edge: ; preds = %mpi3mr_change_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %mpi3mr_change_queue_depth.exit
  %dev_spec = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %data, i32 0, i32 12
  %dev_info = getelementptr inbounds %struct.tgt_dev_pcie, ptr %dev_spec, i32 0, i32 5
  %12 = ptrtoint ptr %dev_info to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dev_info, align 2
  %14 = and i16 %13, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp = icmp eq i16 %14, 1
  br i1 %cmp, label %if.then4, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then4:                                         ; preds = %sw.bb
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %15 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %request_queue, align 4
  %17 = ptrtoint ptr %dev_spec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev_spec, align 8
  %div27 = lshr i32 %18, 9
  tail call void @blk_queue_max_hw_sectors(ptr noundef %16, i32 noundef %div27) #18
  %pgsz = getelementptr inbounds %struct.tgt_dev_pcie, ptr %dev_spec, i32 0, i32 2
  %19 = ptrtoint ptr %pgsz to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pgsz, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp8 = icmp eq i8 %20, 0
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_virt_boundary(ptr noundef %22, i32 noundef 4095) #18
  br label %cleanup

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  %conv7 = zext i8 %20 to i32
  %23 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %request_queue, align 4
  %notmask = shl nsw i32 -1, %conv7
  %sub = xor i32 %notmask, -1
  tail call void @blk_queue_virt_boundary(ptr noundef %24, i32 noundef %sub) #18
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then10, %sw.bb.cleanup_crit_edge, %mpi3mr_change_queue_depth.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpi3mr_change_queue_depth(ptr noundef %sdev, i32 noundef %q_depth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i16 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i16, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i17 = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i17, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %tagged_supported = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %4 = ptrtoint ptr %tagged_supported to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load = load i64, ptr %tagged_supported, align 4
  %5 = and i64 %bf.load, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %q_depth
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 26
  %6 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %can_queue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %7)
  %cmp = icmp sgt i32 %spec.select, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool5.not = icmp eq i32 %spec.select, 0
  %spec.store.select = select i1 %tobool5.not, i32 32, i32 %spec.select
  %q_depth.addr.1 = select i1 %cmp, i32 %7, i32 %spec.store.select
  %call9 = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %q_depth.addr.1) #18
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_virt_boundary(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpi3mr_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %cap_data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap_data.i) #18
  %0 = ptrtoint ptr %cap_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cap_data.i, align 4, !annotation !624
  %call.i = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %pdev, i32 noundef 3) #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.203) #21
  br label %if.then

if.end.i:                                         ; preds = %entry
  %conv.i = zext i16 %call.i to i32
  %add.i = add nuw nsw i32 %conv.i, 4
  %call2.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add.i, ptr noundef nonnull %cap_data.i) #18
  %1 = ptrtoint ptr %cap_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cap_data.i, align 4
  %and.i = and i32 %2, 2
  %and3.i = lshr i32 %2, 2
  %3 = and i32 %and3.i, 3
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.353)
  switch i32 %3, label %if.end.unreachabledefault.i [
    i32 0, label %do.end6.i
    i32 1, label %sw.bb11.i
    i32 2, label %land.lhs.true.i
    i32 3, label %do.end22.i
  ]

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %5 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device.i, align 2
  %conv8.i = zext i16 %6 to i32
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %7 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %subsystem_vendor.i, align 4
  %conv9.i = zext i16 %8 to i32
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %9 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %subsystem_device.i, align 2
  %conv10.i = zext i16 %10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.203, i32 noundef %conv8.i, i32 noundef %conv9.i, i32 noundef %conv10.i) #21
  br label %if.then

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cond.i = icmp eq i32 %and.i, 0
  br i1 %cond.i, label %land.lhs.true.thread.i, label %sw.bb11.i.do.end35.i_crit_edge

sw.bb11.i.do.end35.i_crit_edge:                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end35.i

land.lhs.true.thread.i:                           ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev17.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17.i, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.203) #21
  br label %if.end

do.end22.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev23.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %device24.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %11 = ptrtoint ptr %device24.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device24.i, align 2
  %conv25.i = zext i16 %12 to i32
  %subsystem_vendor26.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %13 = ptrtoint ptr %subsystem_vendor26.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %subsystem_vendor26.i, align 4
  %conv27.i = zext i16 %14 to i32
  %subsystem_device28.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %15 = ptrtoint ptr %subsystem_device28.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subsystem_device28.i, align 2
  %conv29.i = zext i16 %16 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.203, i32 noundef %conv25.i, i32 noundef %conv27.i, i32 noundef %conv29.i) #21
  br label %if.then

if.end.unreachabledefault.i:                      ; preds = %if.end.i
  unreachable

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool31.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool31.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.do.end35.i_crit_edge

land.lhs.true.i.do.end35.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end35.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end35.i:                                       ; preds = %land.lhs.true.i.do.end35.i_crit_edge, %sw.bb11.i.do.end35.i_crit_edge
  %dev36.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %device37.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %17 = ptrtoint ptr %device37.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device37.i, align 2
  %conv38.i = zext i16 %18 to i32
  %subsystem_vendor39.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %19 = ptrtoint ptr %subsystem_vendor39.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %subsystem_vendor39.i, align 4
  %conv40.i = zext i16 %20 to i32
  %subsystem_device41.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %21 = ptrtoint ptr %subsystem_device41.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %subsystem_device41.i, align 2
  %conv42.i = zext i16 %22 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36.i, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.203, i32 noundef %conv38.i, i32 noundef %conv40.i, i32 noundef %conv42.i) #21
  br label %if.then

if.then:                                          ; preds = %do.end35.i, %do.end22.i, %do.end6.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap_data.i) #18
  store i1 true, ptr @warn_non_secure_ctlr, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %land.lhs.true.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap_data.i) #18
  %call2 = call ptr @scsi_host_alloc(ptr noundef nonnull @mpi3mr_driver_template, i32 noundef 5088) #18
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 53
  %23 = load i32, ptr @mrioc_ids, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr @mrioc_ids, align 4
  %conv = trunc i32 %23 to i8
  %id7 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 2
  %24 = ptrtoint ptr %id7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %id7, align 8
  %driver_name = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %25 = call ptr @memcpy(ptr %driver_name, ptr @.str.159, i32 7)
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 3, i32 0, i32 0, i32 2
  %conv13 = and i32 %23, 255
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.162, ptr noundef %driver_name, i32 noundef %conv13)
  %26 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %hostdata.i, ptr %hostdata.i, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hostdata.i, ptr %prev.i, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @mrioc_list_lock) #18
  %28 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mrioc_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %hostdata.i, ptr noundef %28, ptr noundef nonnull @mrioc_list) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add_tail.exit_crit_edge

if.end5.list_add_tail.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  store ptr %hostdata.i, ptr getelementptr inbounds (%struct.list_head, ptr @mrioc_list, i32 0, i32 1), align 4
  %29 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mrioc_list, ptr %hostdata.i, align 4
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %prev.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %hostdata.i, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end5.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @mrioc_list_lock) #18
  %admin_req_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 5, i32 5, i32 1, i32 1
  call void @__raw_spin_lock_init(ptr noundef %admin_req_lock, ptr noundef nonnull @.str.163, ptr noundef nonnull @mpi3mr_probe.__key, i16 noundef signext 3) #18
  %reply_free_queue_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 36
  call void @__raw_spin_lock_init(ptr noundef %reply_free_queue_lock, ptr noundef nonnull @.str.165, ptr noundef nonnull @mpi3mr_probe.__key.164, i16 noundef signext 3) #18
  %sbq_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %sbq_lock, ptr noundef nonnull @.str.167, ptr noundef nonnull @mpi3mr_probe.__key.166, i16 noundef signext 3) #18
  %fwevt_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 6
  call void @__raw_spin_lock_init(ptr noundef %fwevt_lock, ptr noundef nonnull @.str.169, ptr noundef nonnull @mpi3mr_probe.__key.168, i16 noundef signext 3) #18
  %tgtdev_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 10, i32 5, i32 6
  call void @__raw_spin_lock_init(ptr noundef %tgtdev_lock, ptr noundef nonnull @.str.171, ptr noundef nonnull @mpi3mr_probe.__key.170, i16 noundef signext 3) #18
  %watchdog_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 10, i32 1, i32 4, i32 2
  call void @__raw_spin_lock_init(ptr noundef %watchdog_lock, ptr noundef nonnull @.str.173, ptr noundef nonnull @mpi3mr_probe.__key.172, i16 noundef signext 3) #18
  %chain_buf_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 1
  call void @__raw_spin_lock_init(ptr noundef %chain_buf_lock, ptr noundef nonnull @.str.175, ptr noundef nonnull @mpi3mr_probe.__key.174, i16 noundef signext 3) #18
  %fwevt_list = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 7
  %32 = ptrtoint ptr %fwevt_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %fwevt_list, ptr %fwevt_list, align 4
  %prev.i239 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 8
  %33 = ptrtoint ptr %prev.i239 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %fwevt_list, ptr %prev.i239, align 4
  %tgtdev_list = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 12, i32 1
  %34 = ptrtoint ptr %tgtdev_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %tgtdev_list, ptr %tgtdev_list, align 4
  %prev.i240 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 12, i32 2
  %35 = ptrtoint ptr %prev.i240 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %tgtdev_list, ptr %prev.i240, align 4
  %delayed_rmhs_list = getelementptr inbounds %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 91
  %36 = ptrtoint ptr %delayed_rmhs_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %delayed_rmhs_list, ptr %delayed_rmhs_list, align 4
  %prev.i241 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 2, i32 50, i32 21
  %37 = ptrtoint ptr %prev.i241 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %delayed_rmhs_list, ptr %prev.i241, align 4
  %delayed_evtack_cmds_list = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 2, i32 50, i32 23, i32 1
  %38 = ptrtoint ptr %delayed_evtack_cmds_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %delayed_evtack_cmds_list, ptr %delayed_evtack_cmds_list, align 4
  %prev.i242 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 2, i32 50, i32 24
  %39 = ptrtoint ptr %prev.i242 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %delayed_evtack_cmds_list, ptr %prev.i242, align 4
  %reset_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 2, i32 50, i32 27
  call void @__mutex_init(ptr noundef %reset_mutex, ptr noundef nonnull @.str.177, ptr noundef nonnull @mpi3mr_probe.__key.176) #18
  %init_cmds = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 10, i32 1, i32 1
  call void @__mutex_init(ptr noundef %init_cmds, ptr noundef nonnull @.str.320, ptr noundef nonnull @mpi3mr_init_drv_cmd.__key) #18
  %reply.i = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 13, i32 13, i32 3
  %40 = ptrtoint ptr %reply.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %reply.i, align 4
  %state.i = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %init_cmds, i32 0, i32 5
  %41 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -32768, ptr %state.i, align 2
  %dev_handle.i = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 13, i32 13, i32 5
  %42 = ptrtoint ptr %dev_handle.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -1, ptr %dev_handle.i, align 4
  %host_tag1.i = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %init_cmds, i32 0, i32 11
  %43 = ptrtoint ptr %host_tag1.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %host_tag1.i, align 2
  %host_tm_cmds = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 12, i32 5, i32 1, i32 0, i32 2
  call void @__mutex_init(ptr noundef %host_tm_cmds, ptr noundef nonnull @.str.320, ptr noundef nonnull @mpi3mr_init_drv_cmd.__key) #18
  %reply.i243 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 12, i32 10, i32 3, i32 7
  %44 = ptrtoint ptr %reply.i243 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %reply.i243, align 4
  %state.i244 = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %host_tm_cmds, i32 0, i32 5
  %45 = ptrtoint ptr %state.i244 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -32768, ptr %state.i244, align 2
  %dev_handle.i245 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %46 = ptrtoint ptr %dev_handle.i245 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -1, ptr %dev_handle.i245, align 4
  %host_tag1.i246 = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %host_tm_cmds, i32 0, i32 11
  %47 = ptrtoint ptr %host_tag1.i246 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 5, ptr %host_tag1.i246, align 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_add_tail.exit
  %i.0259 = phi i32 [ 0, %list_add_tail.exit ], [ %inc46, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 85, i32 %i.0259
  %48 = trunc i32 %i.0259 to i16
  %conv45 = add i16 %48, 6
  call void @__mutex_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.320, ptr noundef nonnull @mpi3mr_init_drv_cmd.__key) #18
  %reply.i247 = getelementptr %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 85, i32 %i.0259, i32 2
  %49 = ptrtoint ptr %reply.i247 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %reply.i247, align 4
  %state.i248 = getelementptr %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 85, i32 %i.0259, i32 5
  %50 = ptrtoint ptr %state.i248 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -32768, ptr %state.i248, align 2
  %dev_handle.i249 = getelementptr %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 85, i32 %i.0259, i32 6
  %51 = ptrtoint ptr %dev_handle.i249 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -1, ptr %dev_handle.i249, align 4
  %host_tag1.i250 = getelementptr %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 85, i32 %i.0259, i32 11
  %52 = ptrtoint ptr %host_tag1.i250 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv45, ptr %host_tag1.i250, align 2
  %inc46 = add nuw nsw i32 %i.0259, 1
  %exitcond.not = icmp eq i32 %inc46, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %53 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool47.not = icmp eq i8 %54, 0
  br i1 %tobool47.not, label %for.end.do.body50_crit_edge, label %if.then48

for.end.do.body50_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body50

if.then48:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %enable_segqueue = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 3
  %55 = ptrtoint ptr %enable_segqueue to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %enable_segqueue, align 8
  br label %do.body50

do.body50:                                        ; preds = %if.then48, %for.end.do.body50_crit_edge
  %reset_waitq = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 2, i32 50, i32 39
  call void @__init_waitqueue_head(ptr noundef %reset_waitq, ptr noundef nonnull @.str.179, ptr noundef nonnull @mpi3mr_probe.__key.178) #18
  %56 = load i32, ptr @logging_level, align 4
  %logging_level = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 3, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %57 = ptrtoint ptr %logging_level to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %logging_level, align 8
  %shost53 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 1, i32 1
  %58 = ptrtoint ptr %shost53 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call2, ptr %shost53, align 4
  %pdev54 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 1
  %59 = ptrtoint ptr %pdev54 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %pdev, ptr %pdev54, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 24
  %60 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 32, ptr %max_cmd_len, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 22
  %61 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 -1, ptr %max_lun, align 8
  %62 = ptrtoint ptr %id7 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %id7, align 8
  %conv56 = zext i8 %63 to i32
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 23
  %64 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv56, ptr %unique_id, align 8
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 20
  %65 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %max_channel, align 8
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 21
  %66 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %max_id, align 4
  %67 = load i32, ptr @prot_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp57 = icmp sgt i32 %67, -1
  br i1 %cmp57, label %do.body50.do.end63_crit_edge, label %if.else

do.body50.do.end63_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end63

if.else:                                          ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #20
  store i32 7, ptr @prot_mask, align 4
  br label %do.end63

do.end63:                                         ; preds = %if.else, %do.body50.do.end63_crit_edge
  %.sink = phi i32 [ 7, %if.else ], [ %67, %do.body50.do.end63_crit_edge ]
  %68 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 41
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.sink, ptr %68, align 4
  %70 = load i32, ptr @prot_mask, align 4
  %and = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool66.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool66.not, ptr @.str.183, ptr @.str.182
  %and67 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  %cond69 = select i1 %tobool68.not, ptr @.str.183, ptr @.str.184
  %and70 = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %cond72 = select i1 %tobool71.not, ptr @.str.183, ptr @.str.185
  %and73 = and i32 %70, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %cond75 = select i1 %tobool74.not, ptr @.str.183, ptr @.str.186
  %and76 = and i32 %70, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %cond78 = select i1 %tobool77.not, ptr @.str.183, ptr @.str.187
  %and79 = and i32 %70, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %cond81 = select i1 %tobool80.not, ptr @.str.183, ptr @.str.188
  %and82 = and i32 %70, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %cond84 = select i1 %tobool83.not, ptr @.str.183, ptr @.str.189
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef %name, ptr noundef nonnull @.str.181, ptr noundef nonnull %cond, ptr noundef nonnull %cond69, ptr noundef nonnull %cond72, ptr noundef nonnull %cond75, ptr noundef nonnull %cond78, ptr noundef nonnull %cond81, ptr noundef nonnull %cond84) #21
  %71 = load i32, ptr @prot_guard_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool86.not = icmp eq i32 %71, 0
  %72 = trunc i32 %71 to i8
  %conv89 = and i8 %72, 3
  %conv89.sink = select i1 %tobool86.not, i8 1, i8 %conv89
  %73 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 42
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv89.sink, ptr %73, align 8
  %fwevt_worker_name = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 0, i32 7, i32 1, i32 0, i32 1
  %75 = ptrtoint ptr %id7 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %id7, align 8
  %conv96 = zext i8 %76 to i32
  %call97 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fwevt_worker_name, i32 noundef 32, ptr noundef nonnull @.str.190, ptr noundef %driver_name, i32 noundef %conv96)
  %call100 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef %fwevt_worker_name, i32 noundef 655370, i32 noundef 1) #18
  %fwevt_worker_thread = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 3
  %77 = ptrtoint ptr %fwevt_worker_thread to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call100, ptr %fwevt_worker_thread, align 8
  %tobool102.not = icmp eq ptr %call100, null
  br i1 %tobool102.not, label %do.end106, label %if.end111

do.end106:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #20
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef %name, ptr noundef nonnull @.str.3, i32 noundef 4263, ptr noundef nonnull @.str.181) #21
  br label %fwevtthread_failed

if.end111:                                        ; preds = %do.end63
  %is_driver_loading = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 10, i32 5, i32 2
  %78 = ptrtoint ptr %is_driver_loading to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %is_driver_loading, align 8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %79 = load volatile i32, ptr @__num_online_cpus, align 4
  %cpu_count = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 2, i32 1
  %80 = ptrtoint ptr %cpu_count to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %cpu_count, align 4
  %call113 = call i32 @mpi3mr_setup_resources(ptr noundef %hostdata.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end123, label %do.end118

do.end118:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #20
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef %name) #21
  br label %resource_alloc_failed

if.end123:                                        ; preds = %if.end111
  %call124 = call i32 @mpi3mr_init_ioc(ptr noundef %hostdata.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end134, label %do.end129

do.end129:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #20
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef %name) #21
  br label %init_ioc_failed

if.end134:                                        ; preds = %if.end123
  %num_op_reply_q = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 7
  %81 = ptrtoint ptr %num_op_reply_q to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %num_op_reply_q, align 4
  %conv135 = zext i16 %82 to i32
  %nr_hw_queues = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 34
  %83 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv135, ptr %nr_hw_queues, align 8
  %active_poll_qcount = getelementptr inbounds %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 111
  %84 = ptrtoint ptr %active_poll_qcount to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %active_poll_qcount, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool136.not = icmp eq i16 %85, 0
  br i1 %tobool136.not, label %if.end134.if.end138_crit_edge, label %if.then137

if.end134.if.end138_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end138

if.then137:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #20
  %nr_maps = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 35
  %86 = ptrtoint ptr %nr_maps to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 3, ptr %nr_maps, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.end134.if.end138_crit_edge
  %max_host_ios = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 49, i32 10, i32 5, i32 5
  %87 = ptrtoint ptr %max_host_ios to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %max_host_ios, align 2
  %conv139 = zext i16 %88 to i32
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 26
  %89 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv139, ptr %can_queue, align 4
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 28
  %90 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 256, ptr %sg_tablesize, align 2
  %max_perids = getelementptr inbounds %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 38, i32 8
  %91 = ptrtoint ptr %max_perids to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %max_perids, align 2
  %conv140 = zext i16 %92 to i32
  %add141 = add nuw nsw i32 %conv140, 1
  %93 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add141, ptr %max_id, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i253 = call i32 @scsi_add_host_with_dma(ptr noundef %call2, ptr noundef %dev, ptr noundef %dev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %tobool144.not = icmp eq i32 %call.i253, 0
  br i1 %tobool144.not, label %if.end153, label %do.end148

do.end148:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #20
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef %name, ptr noundef nonnull @.str.3, i32 noundef 4292, ptr noundef nonnull @.str.181) #21
  call void @mpi3mr_stop_watchdog(ptr noundef %hostdata.i) #18
  call void @mpi3mr_cleanup_ioc(ptr noundef %hostdata.i) #18
  br label %init_ioc_failed

if.end153:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #20
  call void @scsi_scan_host(ptr noundef nonnull %call2) #18
  br label %cleanup

init_ioc_failed:                                  ; preds = %do.end148, %do.end129
  %retval1.0 = phi i32 [ -19, %do.end129 ], [ %call.i253, %do.end148 ]
  call void @mpi3mr_free_mem(ptr noundef %hostdata.i) #18
  call void @mpi3mr_cleanup_resources(ptr noundef %hostdata.i) #18
  br label %resource_alloc_failed

resource_alloc_failed:                            ; preds = %init_ioc_failed, %do.end118
  %retval1.1 = phi i32 [ -19, %do.end118 ], [ %retval1.0, %init_ioc_failed ]
  %94 = ptrtoint ptr %fwevt_worker_thread to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fwevt_worker_thread, align 8
  call void @destroy_workqueue(ptr noundef %95) #18
  br label %fwevtthread_failed

fwevtthread_failed:                               ; preds = %resource_alloc_failed, %do.end106
  %retval1.2 = phi i32 [ %retval1.1, %resource_alloc_failed ], [ -19, %do.end106 ]
  call void @_raw_spin_lock(ptr noundef nonnull @mrioc_list_lock) #18
  %call.i.i254 = call zeroext i1 @__list_del_entry_valid(ptr noundef %hostdata.i) #18
  br i1 %call.i.i254, label %if.end.i.i255, label %fwevtthread_failed.list_del.exit_crit_edge

fwevtthread_failed.list_del.exit_crit_edge:       ; preds = %fwevtthread_failed
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i255:                                    ; preds = %fwevtthread_failed
  call void @__sanitizer_cov_trace_pc() #20
  %96 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i, align 4
  %98 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hostdata.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev1.i.i.i, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %99, ptr %97, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i255, %fwevtthread_failed.list_del.exit_crit_edge
  %102 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 256 to ptr), ptr %hostdata.i, align 4
  %103 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @mrioc_list_lock) #18
  call void @scsi_host_put(ptr noundef nonnull %call2) #18
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.end153, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end153 ], [ %retval1.2, %list_del.exit ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpi3mr_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_driver_loading = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 10, i32 5, i32 2
  %reset_in_progress = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 50, i32 26
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = ptrtoint ptr %reset_in_progress to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reset_in_progress, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %4 = ptrtoint ptr %is_driver_loading to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_driver_loading, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %while.end, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  tail call void @msleep(i32 noundef 1000) #18
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %stop_drv_processing = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 10, i32 5, i32 3
  %6 = ptrtoint ptr %stop_drv_processing to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %stop_drv_processing, align 4
  tail call void @mpi3mr_cleanup_fwevt_list(ptr noundef %hostdata.i)
  %fwevt_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 6
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fwevt_lock) #18
  %fwevt_worker_thread = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 3
  %7 = ptrtoint ptr %fwevt_worker_thread to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fwevt_worker_thread, align 8
  store ptr null, ptr %fwevt_worker_thread, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fwevt_lock, i32 noundef %call8) #18
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %while.end.if.end15_crit_edge, label %if.then14

while.end.if.end15_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then14:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @destroy_workqueue(ptr noundef nonnull %8) #18
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.end.if.end15_crit_edge
  tail call void @scsi_remove_host(ptr noundef nonnull %1) #18
  %tgtdev_list = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 12, i32 1
  %9 = ptrtoint ptr %tgtdev_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tgtdev_list, align 4
  %cmp23.not62 = icmp eq ptr %10, %tgtdev_list
  br i1 %cmp23.not62, label %if.end15.for.end_crit_edge, label %for.body.lr.ph

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end15
  %name.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %mpi3mr_tgtdev_put.exit.for.body_crit_edge, %for.body.lr.ph
  %tgtdev.063 = phi ptr [ %10, %for.body.lr.ph ], [ %tgtdev_next.0, %mpi3mr_tgtdev_put.exit.for.body_crit_edge ]
  %11 = ptrtoint ptr %tgtdev.063 to i32
  call void @__asan_load4_noabort(i32 %11)
  %tgtdev_next.0 = load ptr, ptr %tgtdev.063, align 8
  %dev_handle.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.063, i32 0, i32 2
  %12 = ptrtoint ptr %dev_handle.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dev_handle.i, align 4
  %conv.i = zext i16 %13 to i32
  %wwid.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.063, i32 0, i32 11
  %14 = ptrtoint ptr %wwid.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %wwid.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name.i, ptr noundef nonnull @.str.40, i32 noundef %conv.i, i64 noundef %15) #21
  %starget.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.063, i32 0, i32 1
  %16 = ptrtoint ptr %starget.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %starget.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %for.body.mpi3mr_remove_tgtdev_from_host.exit_crit_edge, label %land.lhs.true.i

for.body.mpi3mr_remove_tgtdev_from_host.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_remove_tgtdev_from_host.exit

land.lhs.true.i:                                  ; preds = %for.body
  %hostdata.i61 = getelementptr inbounds %struct.scsi_target, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %hostdata.i61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hostdata.i61, align 8
  %tobool2.not.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev_handle5.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %dev_handle5.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %dev_handle5.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge
  %21 = ptrtoint ptr %starget.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr.i = load ptr, ptr %starget.i, align 8
  %tobool7.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool7.not.i, label %if.end.i.mpi3mr_remove_tgtdev_from_host.exit_crit_edge, label %if.then8.i

if.end.i.mpi3mr_remove_tgtdev_from_host.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_remove_tgtdev_from_host.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev.i = getelementptr inbounds %struct.scsi_target, ptr %.pr.i, i32 0, i32 3
  tail call void @scsi_remove_target(ptr noundef %dev.i) #18
  %host_exposed.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.063, i32 0, i32 9
  %22 = ptrtoint ptr %host_exposed.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %host_exposed.i, align 8
  br label %mpi3mr_remove_tgtdev_from_host.exit

mpi3mr_remove_tgtdev_from_host.exit:              ; preds = %if.then8.i, %if.end.i.mpi3mr_remove_tgtdev_from_host.exit_crit_edge, %for.body.mpi3mr_remove_tgtdev_from_host.exit_crit_edge
  %23 = ptrtoint ptr %dev_handle.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dev_handle.i, align 4
  %conv18.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %wwid.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %wwid.i, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i, ptr noundef nonnull @.str.40, i32 noundef %conv18.i, i64 noundef %26) #21
  tail call fastcc void @mpi3mr_tgtdev_del_from_list(ptr noundef %hostdata.i, ptr noundef %tgtdev.063)
  %ref_count.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.063, i32 0, i32 13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #18
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %mpi3mr_remove_tgtdev_from_host.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mpi3mr_tgtdev_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !612

if.end5.i.i.i.i.i.mpi3mr_tgtdev_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_tgtdev_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef 3) #18
  br label %mpi3mr_tgtdev_put.exit

if.then.i.i:                                      ; preds = %mpi3mr_remove_tgtdev_from_host.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef %tgtdev.063) #18
  br label %mpi3mr_tgtdev_put.exit

mpi3mr_tgtdev_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mpi3mr_tgtdev_put.exit_crit_edge
  %cmp23.not = icmp eq ptr %tgtdev_next.0, %tgtdev_list
  br i1 %cmp23.not, label %mpi3mr_tgtdev_put.exit.for.end_crit_edge, label %mpi3mr_tgtdev_put.exit.for.body_crit_edge

mpi3mr_tgtdev_put.exit.for.body_crit_edge:        ; preds = %mpi3mr_tgtdev_put.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

mpi3mr_tgtdev_put.exit.for.end_crit_edge:         ; preds = %mpi3mr_tgtdev_put.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %mpi3mr_tgtdev_put.exit.for.end_crit_edge, %if.end15.for.end_crit_edge
  tail call void @mpi3mr_stop_watchdog(ptr noundef %hostdata.i) #18
  tail call void @mpi3mr_cleanup_ioc(ptr noundef %hostdata.i) #18
  tail call void @mpi3mr_free_mem(ptr noundef %hostdata.i) #18
  tail call void @mpi3mr_cleanup_resources(ptr noundef %hostdata.i) #18
  tail call void @_raw_spin_lock(ptr noundef nonnull @mrioc_list_lock) #18
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hostdata.i) #18
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hostdata.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %34 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %hostdata.i, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mrioc_list_lock) #18
  tail call void @scsi_host_put(ptr noundef nonnull %1) #18
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpi3mr_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_driver_loading = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 10, i32 5, i32 2
  %reset_in_progress = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 50, i32 26
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = ptrtoint ptr %reset_in_progress to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reset_in_progress, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %4 = ptrtoint ptr %is_driver_loading to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_driver_loading, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %while.end, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  tail call void @msleep(i32 noundef 1000) #18
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %stop_drv_processing = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 10, i32 5, i32 3
  %6 = ptrtoint ptr %stop_drv_processing to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %stop_drv_processing, align 4
  tail call void @mpi3mr_cleanup_fwevt_list(ptr noundef %hostdata.i)
  tail call void @scsi_block_requests(ptr noundef nonnull %1) #18
  tail call void @mpi3mr_stop_watchdog(ptr noundef %hostdata.i) #18
  tail call void @mpi3mr_cleanup_ioc(ptr noundef %hostdata.i) #18
  %call6 = tail call i32 @pci_choose_state(ptr noundef %pdev, [1 x i32] %state.coerce) #18
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 2
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.end.pci_name.exit_crit_edge

while.end.pci_name.exit_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %while.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %while.end.pci_name.exit_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.321, ptr noundef %name, ptr noundef %pdev, ptr noundef %retval.0.i.i, i32 noundef %call6) #21
  %call9 = tail call i32 @pci_save_state(ptr noundef %pdev) #18
  %call10 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef %call6) #18
  tail call void @mpi3mr_cleanup_resources(ptr noundef %hostdata.i) #18
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpi3mr_resume(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %current_state = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 30
  %2 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_state, align 4
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 2
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.end.pci_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.323, ptr noundef %name, ptr noundef %pdev, ptr noundef %retval.0.i.i, i32 noundef %3) #21
  %call4 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 0) #18
  %call5 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef 0, i1 noundef zeroext false) #18
  tail call void @pci_restore_state(ptr noundef %pdev) #18
  %pdev6 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 1
  %8 = ptrtoint ptr %pdev6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pdev, ptr %pdev6, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %9 = load volatile i32, ptr @__num_online_cpus, align 4
  %cpu_count = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 2, i32 1
  %10 = ptrtoint ptr %cpu_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cpu_count, align 4
  %call8 = tail call i32 @mpi3mr_setup_resources(ptr noundef %hostdata.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end18, label %do.end13

do.end13:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.326, ptr noundef %name, ptr noundef nonnull @.str.324, i32 noundef %call8) #21
  br label %cleanup

if.end18:                                         ; preds = %pci_name.exit
  %stop_drv_processing = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 10, i32 5, i32 3
  %11 = ptrtoint ptr %stop_drv_processing to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %stop_drv_processing, align 4
  tail call void @mpi3mr_memset_buffers(ptr noundef %hostdata.i) #18
  %call19 = tail call i32 @mpi3mr_reinit_ioc(ptr noundef %hostdata.i, i8 noundef zeroext 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end29, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.329, ptr noundef %name, i32 noundef %call19) #21
  br label %cleanup

if.end29:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @scsi_unblock_requests(ptr noundef nonnull %1) #18
  tail call void @mpi3mr_start_watchdog(ptr noundef %hostdata.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end24, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end13 ], [ %call19, %do.end24 ], [ 0, %if.end29 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpi3mr_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_driver_loading = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 10, i32 5, i32 2
  %reset_in_progress = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 50, i32 26
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = ptrtoint ptr %reset_in_progress to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reset_in_progress, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %4 = ptrtoint ptr %is_driver_loading to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_driver_loading, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %while.end, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  tail call void @msleep(i32 noundef 1000) #18
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %stop_drv_processing = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 10, i32 5, i32 3
  %6 = ptrtoint ptr %stop_drv_processing to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %stop_drv_processing, align 4
  tail call void @mpi3mr_cleanup_fwevt_list(ptr noundef %hostdata.i)
  %fwevt_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 6
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fwevt_lock) #18
  %fwevt_worker_thread = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 3
  %7 = ptrtoint ptr %fwevt_worker_thread to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fwevt_worker_thread, align 8
  store ptr null, ptr %fwevt_worker_thread, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fwevt_lock, i32 noundef %call8) #18
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %while.end.if.end15_crit_edge, label %if.then14

while.end.if.end15_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then14:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @destroy_workqueue(ptr noundef nonnull %8) #18
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.end.if.end15_crit_edge
  tail call void @mpi3mr_stop_watchdog(ptr noundef %hostdata.i) #18
  tail call void @mpi3mr_cleanup_ioc(ptr noundef %hostdata.i) #18
  tail call void @mpi3mr_cleanup_resources(ptr noundef %hostdata.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi3mr_setup_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi3mr_init_ioc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi3mr_stop_watchdog(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi3mr_cleanup_ioc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi3mr_free_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi3mr_cleanup_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpi3mr_qcmd(ptr noundef %shost, ptr noundef %scmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %6 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65536, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %scmd) #18
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %stop_drv_processing = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 10, i32 5, i32 3
  %7 = ptrtoint ptr %stop_drv_processing to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stop_drv_processing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 16
  %9 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmnd.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.354)
  switch i8 %12, label %if.then6 [
    i8 53, label %land.lhs.true.if.end8_crit_edge
    i8 27, label %land.lhs.true.if.end8_crit_edge175
  ]

land.lhs.true.if.end8_crit_edge175:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %result7 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %14 = ptrtoint ptr %result7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65536, ptr %result7, align 4
  tail call void @scsi_done(ptr noundef %scmd) #18
  br label %out

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge175, %if.end.if.end8_crit_edge
  %reset_in_progress = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 26
  %15 = ptrtoint ptr %reset_in_progress to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reset_in_progress, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not = icmp eq i8 %16, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end11:                                         ; preds = %if.end8
  %dev_handle13 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %dev_handle13 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dev_handle13, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp = icmp eq i16 %18, -1
  br i1 %cmp, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  %result17 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %19 = ptrtoint ptr %result17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 65536, ptr %result17, align 4
  tail call void @scsi_done(ptr noundef %scmd) #18
  br label %out

if.end18:                                         ; preds = %if.end11
  %dev_removed = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %5, i32 0, i32 5
  %20 = ptrtoint ptr %dev_removed to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dev_removed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool19.not = icmp eq i8 %21, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  %result21 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %22 = ptrtoint ptr %result21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 65536, ptr %result21, align 4
  tail call void @scsi_done(ptr noundef %scmd) #18
  br label %out

if.end22:                                         ; preds = %if.end18
  %block_io = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %5, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %block_io, i32 noundef 4) #18
  %23 = ptrtoint ptr %block_io to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %block_io, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool24.not = icmp eq i32 %24, 0
  br i1 %tobool24.not, label %if.end31, label %if.then25

if.then25:                                        ; preds = %if.end22
  %25 = ptrtoint ptr %stop_drv_processing to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %stop_drv_processing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool27.not = icmp eq i8 %26, 0
  br i1 %tobool27.not, label %if.then25.out_crit_edge, label %if.then28

if.then25.out_crit_edge:                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #20
  %result29 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %27 = ptrtoint ptr %result29 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 65536, ptr %result29, align 4
  tail call void @scsi_done(ptr noundef %scmd) #18
  br label %out

if.end31:                                         ; preds = %if.end22
  %dev_type = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %5, i32 0, i32 7
  %28 = ptrtoint ptr %dev_type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dev_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp33 = icmp ne i8 %29, 1
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 16
  %30 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmnd, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %33)
  %cmp38 = icmp ne i8 %33, 66
  %brmerge = select i1 %cmp38, i1 true, i1 %cmp33
  br i1 %brmerge, label %if.end31.if.end52_crit_edge, label %land.lhs.true43

if.end31.if.end52_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

land.lhs.true43:                                  ; preds = %if.end31
  %pdev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 8
  %device44 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %device44 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %device44, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 165, i16 %37)
  %cmp46 = icmp eq i16 %37, 165
  br i1 %cmp46, label %land.lhs.true48, label %land.lhs.true43.if.end52_crit_edge

land.lhs.true43.if.end52_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

land.lhs.true48:                                  ; preds = %land.lhs.true43
  %call49 = tail call fastcc zeroext i1 @mpi3mr_check_return_unmap(ptr noundef %hostdata.i, ptr noundef %scmd)
  br i1 %call49, label %land.lhs.true48.out_crit_edge, label %land.lhs.true48.if.end52_crit_edge

land.lhs.true48.if.end52_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

land.lhs.true48.out_crit_edge:                    ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end52:                                         ; preds = %land.lhs.true48.if.end52_crit_edge, %land.lhs.true43.if.end52_crit_edge, %if.end31.if.end52_crit_edge
  %call53 = tail call fastcc zeroext i16 @mpi3mr_host_tag_for_scmd(ptr noundef %hostdata.i, ptr noundef %scmd)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call53)
  %cmp55 = icmp eq i16 %call53, -1
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20
  %result58 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %38 = ptrtoint ptr %result58 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 458752, ptr %result58, align 4
  tail call void @scsi_done(ptr noundef %scmd) #18
  br label %out

if.end59:                                         ; preds = %if.end52
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 15
  %39 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %switch.selectcmp = icmp eq i32 %40, 1
  %switch.select = select i1 %switch.selectcmp, i32 262144, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %switch.selectcmp173 = icmp eq i32 %40, 2
  %switch.select174 = select i1 %switch.selectcmp173, i32 524288, i32 %switch.select
  %ncq_prio_enable = getelementptr inbounds %struct.mpi3mr_sdev_priv_data, ptr %3, i32 0, i32 2
  %41 = ptrtoint ptr %ncq_prio_enable to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ncq_prio_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool70.not = icmp eq i8 %42, 0
  br i1 %tobool70.not, label %if.end59.if.end79_crit_edge, label %if.then71

if.end59.if.end79_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end79

if.then71:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #20
  %ioprio.i = getelementptr i8, ptr %scmd, i32 -78
  %43 = ptrtoint ptr %ioprio.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ioprio.i, align 2
  %.mask = and i16 %44, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %.mask)
  %cmp74 = icmp eq i16 %.mask, 8192
  %or77 = or i32 %switch.select174, 1048576
  %spec.select = select i1 %cmp74, i32 %or77, i32 %switch.select174
  br label %if.end79

if.end79:                                         ; preds = %if.then71, %if.end59.if.end79_crit_edge
  %scsiio_flags.1 = phi i32 [ %switch.select174, %if.end59.if.end79_crit_edge ], [ %spec.select, %if.then71 ]
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 14
  %45 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %46)
  %cmp81 = icmp ugt i16 %46, 16
  %or84 = or i32 %scsiio_flags.1, 536870912
  %spec.select172 = select i1 %cmp81, i32 %or84, i32 %scsiio_flags.1
  %add.ptr.i = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1
  %mpi3mr_scsiio_req = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 2
  %47 = call ptr @memset(ptr %mpi3mr_scsiio_req, i32 0, i32 128)
  %function = getelementptr inbounds %struct.scmd_priv, ptr %add.ptr.i, i32 0, i32 7, i32 3
  %48 = ptrtoint ptr %function to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 32, ptr %function, align 1
  %49 = tail call i16 @llvm.bswap.i16(i16 %call53)
  %50 = ptrtoint ptr %mpi3mr_scsiio_req to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %mpi3mr_scsiio_req, align 8
  tail call fastcc void @mpi3mr_setup_eedp(ptr noundef %scmd, ptr noundef %mpi3mr_scsiio_req)
  %cdb = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 2, i32 1
  %51 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmnd, align 4
  %53 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %cmd_len, align 4
  %conv93 = zext i16 %54 to i32
  %55 = call ptr @memcpy(ptr %cdb, ptr %52, i32 %conv93)
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 1
  %56 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %length.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %data_length = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 7
  %59 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %data_length, align 4
  %60 = tail call i16 @llvm.bswap.i16(i16 %18)
  %dev_handle95 = getelementptr inbounds %struct.scmd_priv, ptr %add.ptr.i, i32 0, i32 7, i32 10
  %61 = ptrtoint ptr %dev_handle95 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %dev_handle95, align 2
  %62 = tail call i32 @llvm.bswap.i32(i32 %spec.select172)
  %flags = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 5
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %flags, align 4
  %lun_id = getelementptr inbounds %struct.mpi3mr_sdev_priv_data, ptr %3, i32 0, i32 1
  %64 = ptrtoint ptr %lun_id to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lun_id, align 4
  %conv96 = zext i32 %65 to i64
  %lun = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 1
  tail call void @int_to_scsilun(i64 noundef %conv96, ptr noundef %lun) #18
  %call98 = tail call fastcc i32 @mpi3mr_build_sg_scmd(ptr noundef %hostdata.i, ptr noundef %scmd, ptr noundef %mpi3mr_scsiio_req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @mpi3mr_clear_scmd_priv(ptr noundef %hostdata.i, ptr noundef %scmd)
  br label %out

if.end101:                                        ; preds = %if.end79
  %req_qinfo = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 6
  %66 = ptrtoint ptr %req_qinfo to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %req_qinfo, align 8
  %req_q_idx = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 8
  %68 = ptrtoint ptr %req_q_idx to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %req_q_idx, align 4
  %idxprom = zext i16 %69 to i32
  %arrayidx102 = getelementptr %struct.op_req_qinfo, ptr %67, i32 %idxprom
  %call105 = tail call i32 @mpi3mr_op_request_post(ptr noundef %hostdata.i, ptr noundef %arrayidx102, ptr noundef %mpi3mr_scsiio_req) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end101.out_crit_edge, label %if.then107

if.end101.out_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then107:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @mpi3mr_clear_scmd_priv(ptr noundef %hostdata.i, ptr noundef %scmd)
  br label %out

out:                                              ; preds = %if.then107, %if.end101.out_crit_edge, %if.then100, %if.then57, %land.lhs.true48.out_crit_edge, %if.then28, %if.then25.out_crit_edge, %if.then20, %if.then16, %if.end8.out_crit_edge, %if.then6, %if.then
  %retval1.0 = phi i32 [ 0, %if.then16 ], [ 0, %if.then20 ], [ 0, %if.then28 ], [ 0, %land.lhs.true48.out_crit_edge ], [ 0, %if.then57 ], [ 4181, %if.then100 ], [ 4181, %if.then107 ], [ 0, %if.end101.out_crit_edge ], [ 0, %if.then6 ], [ 0, %if.then ], [ 4181, %if.end8.out_crit_edge ], [ 4182, %if.then25.out_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpi3mr_eh_dev_reset(ptr noundef %scmd) #0 align 64 {
entry:
  %resp_code = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp_code) #18
  %4 = ptrtoint ptr %resp_code to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %resp_code, align 1
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.211, ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.239, ptr noundef %scmd) #18
  tail call void @scsi_print_command(ptr noundef %scmd) #18
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.211, ptr noundef %6, ptr noundef null, ptr noundef nonnull @.str.240) #18
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %dev_handle7 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev_handle7 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dev_handle7, align 4
  %dev_removed = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %dev_removed to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dev_removed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 2
  %conv = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.211, ptr noundef %6, ptr noundef null, ptr noundef nonnull @.str.241, ptr noundef %name, i32 noundef %conv) #18
  br label %out

if.end11:                                         ; preds = %if.end
  %conv13 = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.211, ptr noundef %6, ptr noundef null, ptr noundef nonnull @.str.242, i32 noundef %conv13) #18
  %lun_id = getelementptr inbounds %struct.mpi3mr_sdev_priv_data, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %lun_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lun_id, align 4
  %host_tm_cmds = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 12, i32 5, i32 1, i32 0, i32 2
  %call14 = call fastcc i32 @mpi3mr_issue_tm(ptr noundef %hostdata.i, i8 noundef zeroext 5, i16 noundef zeroext %12, i32 noundef %16, ptr noundef %host_tm_cmds, ptr noundef nonnull %resp_code, ptr noundef %scmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end17:                                         ; preds = %if.end11
  %pend_count = getelementptr inbounds %struct.mpi3mr_sdev_priv_data, ptr %8, i32 0, i32 3
  %17 = ptrtoint ptr %pend_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pend_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool18.not = icmp eq i32 %18, 0
  br i1 %tobool18.not, label %if.end17.out_crit_edge, label %if.then19

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  %name21 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.211, ptr noundef %20, ptr noundef null, ptr noundef nonnull @.str.243, ptr noundef %name21, i32 noundef %18) #18
  br label %out

out:                                              ; preds = %if.then19, %if.end17.out_crit_edge, %if.end11.out_crit_edge, %if.then9, %if.then
  %cmp = phi ptr [ @.str.246, %if.end11.out_crit_edge ], [ @.str.246, %if.then19 ], [ @.str.246, %if.then9 ], [ @.str.245, %if.then ], [ @.str.245, %if.end17.out_crit_edge ]
  %retval1.0 = phi i32 [ 8195, %if.end11.out_crit_edge ], [ 8195, %if.then19 ], [ 8195, %if.then9 ], [ 8194, %if.then ], [ 8194, %if.end17.out_crit_edge ]
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %name26 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.211, ptr noundef %22, ptr noundef null, ptr noundef nonnull @.str.244, ptr noundef %name26, ptr noundef nonnull %cmp, ptr noundef %scmd) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp_code) #18
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpi3mr_eh_target_reset(ptr noundef %scmd) #0 align 64 {
entry:
  %resp_code = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp_code) #18
  %4 = ptrtoint ptr %resp_code to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %resp_code, align 1
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.211, ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.294, ptr noundef %scmd) #18
  tail call void @scsi_print_command(ptr noundef %scmd) #18
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.211, ptr noundef %6, ptr noundef null, ptr noundef nonnull @.str.240) #18
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %dev_handle7 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev_handle7 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dev_handle7, align 4
  %dev_removed = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %dev_removed to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dev_removed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 2
  %conv = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.211, ptr noundef %6, ptr noundef null, ptr noundef nonnull @.str.295, ptr noundef %name, i32 noundef %conv) #18
  br label %out

if.end11:                                         ; preds = %if.end
  %conv13 = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.211, ptr noundef %6, ptr noundef null, ptr noundef nonnull @.str.296, i32 noundef %conv13) #18
  %lun_id = getelementptr inbounds %struct.mpi3mr_sdev_priv_data, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %lun_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lun_id, align 4
  %host_tm_cmds = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 12, i32 5, i32 1, i32 0, i32 2
  %call14 = call fastcc i32 @mpi3mr_issue_tm(ptr noundef %hostdata.i, i8 noundef zeroext 3, i16 noundef zeroext %12, i32 noundef %16, ptr noundef %host_tm_cmds, ptr noundef nonnull %resp_code, ptr noundef %scmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end17:                                         ; preds = %if.end11
  %pend_count = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %10, i32 0, i32 9
  %17 = ptrtoint ptr %pend_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pend_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool18.not = icmp eq i32 %18, 0
  br i1 %tobool18.not, label %if.end17.out_crit_edge, label %if.then19

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  %name21 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 2
  %pend_count23 = getelementptr inbounds %struct.mpi3mr_sdev_priv_data, ptr %8, i32 0, i32 3
  %21 = ptrtoint ptr %pend_count23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pend_count23, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.211, ptr noundef %20, ptr noundef null, ptr noundef nonnull @.str.297, ptr noundef %name21, i32 noundef %22) #18
  br label %out

out:                                              ; preds = %if.then19, %if.end17.out_crit_edge, %if.end11.out_crit_edge, %if.then9, %if.then
  %cmp = phi ptr [ @.str.246, %if.end11.out_crit_edge ], [ @.str.246, %if.then19 ], [ @.str.246, %if.then9 ], [ @.str.245, %if.then ], [ @.str.245, %if.end17.out_crit_edge ]
  %retval1.0 = phi i32 [ 8195, %if.end11.out_crit_edge ], [ 8195, %if.then19 ], [ 8195, %if.then9 ], [ 8194, %if.then ], [ 8194, %if.end17.out_crit_edge ]
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device, align 4
  %name26 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.211, ptr noundef %24, ptr noundef null, ptr noundef nonnull @.str.298, ptr noundef %name26, ptr noundef nonnull %cmp, ptr noundef %scmd) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp_code) #18
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpi3mr_eh_host_reset(ptr noundef %scmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.then7_crit_edge, label %land.lhs.true

entry.if.then7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.then7_crit_edge, label %if.then

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7

if.then:                                          ; preds = %land.lhs.true
  %dev_type5 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %dev_type5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dev_type5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %phi.cmp = icmp eq i8 %9, 2
  br i1 %phi.cmp, label %if.then.if.then7_crit_edge, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then.if.then7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7

if.then7:                                         ; preds = %if.then.if.then7_crit_edge, %land.lhs.true.if.then7_crit_edge, %entry.if.then7_crit_edge
  tail call void @mpi3mr_wait_for_host_io(ptr noundef %hostdata.i, i32 noundef 180)
  %num_op_reply_q.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 7
  %10 = ptrtoint ptr %num_op_reply_q.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_op_reply_q.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp8.not.i = icmp eq i16 %11, 0
  br i1 %cmp8.not.i, label %if.then7.out_crit_edge, label %for.body.lr.ph.i

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

for.body.lr.ph.i:                                 ; preds = %if.then7
  %op_reply_qinfo.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 10, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %pend_ios.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %op_reply_qinfo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %op_reply_qinfo.i, align 8
  %pend_ios3.i = getelementptr %struct.op_reply_qinfo, ptr %13, i32 %indvars.iv.i, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pend_ios3.i, i32 noundef 4) #18
  %14 = ptrtoint ptr %pend_ios3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %pend_ios3.i, align 4
  %add.i = add i32 %15, %pend_ios.010.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %16 = ptrtoint ptr %num_op_reply_q.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_op_reply_q.i, align 4
  %18 = zext i16 %17 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %18
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %mpi3mr_get_fw_pending_ios.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

mpi3mr_get_fw_pending_ios.exit:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool9.not = icmp eq i32 %add.i, 0
  br i1 %tobool9.not, label %mpi3mr_get_fw_pending_ios.exit.out_crit_edge, label %mpi3mr_get_fw_pending_ios.exit.if.end12_crit_edge

mpi3mr_get_fw_pending_ios.exit.if.end12_crit_edge: ; preds = %mpi3mr_get_fw_pending_ios.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

mpi3mr_get_fw_pending_ios.exit.out_crit_edge:     ; preds = %mpi3mr_get_fw_pending_ios.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end12:                                         ; preds = %mpi3mr_get_fw_pending_ios.exit.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %shost1.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1, i32 1
  %19 = ptrtoint ptr %shost1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %shost1.i, align 4
  %num_op_reply_q.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 7
  %21 = ptrtoint ptr %num_op_reply_q.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_op_reply_q.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp8.not.i.i = icmp eq i16 %22, 0
  br i1 %cmp8.not.i.i, label %if.end12.mpi3mr_print_pending_host_io.exit_crit_edge, label %for.body.lr.ph.i.i

if.end12.mpi3mr_print_pending_host_io.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_print_pending_host_io.exit

for.body.lr.ph.i.i:                               ; preds = %if.end12
  %op_reply_qinfo.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 10, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %pend_ios.010.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %23 = ptrtoint ptr %op_reply_qinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %op_reply_qinfo.i.i, align 8
  %pend_ios3.i.i = getelementptr %struct.op_reply_qinfo, ptr %24, i32 %indvars.iv.i.i, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pend_ios3.i.i, i32 noundef 4) #18
  %25 = ptrtoint ptr %pend_ios3.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %pend_ios3.i.i, align 4
  %add.i.i = add i32 %26, %pend_ios.010.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %27 = ptrtoint ptr %num_op_reply_q.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %num_op_reply_q.i.i, align 4
  %29 = zext i16 %28 to i32
  %cmp.i.i = icmp ult i32 %indvars.iv.next.i.i, %29
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.mpi3mr_print_pending_host_io.exit_crit_edge

for.body.i.i.mpi3mr_print_pending_host_io.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_print_pending_host_io.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

mpi3mr_print_pending_host_io.exit:                ; preds = %for.body.i.i.mpi3mr_print_pending_host_io.exit_crit_edge, %if.end12.mpi3mr_print_pending_host_io.exit_crit_edge
  %pend_ios.0.lcssa.i.i = phi i32 [ 0, %if.end12.mpi3mr_print_pending_host_io.exit_crit_edge ], [ %add.i.i, %for.body.i.i.mpi3mr_print_pending_host_io.exit_crit_edge ]
  %name.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 2
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.300, ptr noundef %name.i, ptr noundef nonnull @.str.301, i32 noundef %pend_ios.0.lcssa.i.i) #21
  %tag_set.i = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 13
  tail call void @blk_mq_tagset_busy_iter(ptr noundef %tag_set.i, ptr noundef nonnull @mpi3mr_print_scmd, ptr noundef %hostdata.i) #18
  %call13 = tail call i32 @mpi3mr_soft_reset_handler(ptr noundef %hostdata.i, i32 noundef 4, i8 noundef zeroext 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %spec.select = select i1 %tobool14.not, ptr @.str.245, ptr @.str.246
  %spec.select31 = select i1 %tobool14.not, i32 8194, i32 8195
  br label %out

out:                                              ; preds = %mpi3mr_print_pending_host_io.exit, %mpi3mr_get_fw_pending_ios.exit.out_crit_edge, %if.then7.out_crit_edge
  %cmp18 = phi ptr [ @.str.245, %mpi3mr_get_fw_pending_ios.exit.out_crit_edge ], [ %spec.select, %mpi3mr_print_pending_host_io.exit ], [ @.str.245, %if.then7.out_crit_edge ]
  %retval1.0 = phi i32 [ 8194, %mpi3mr_get_fw_pending_ios.exit.out_crit_edge ], [ %spec.select31, %mpi3mr_print_pending_host_io.exit ], [ 8194, %if.then7.out_crit_edge ]
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.211, ptr noundef %31, ptr noundef null, ptr noundef nonnull @.str.299, ptr noundef nonnull %cmp18, ptr noundef %scmd) #18
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpi3mr_slave_alloc(ptr nocapture noundef %sdev) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -24
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i48 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i48 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i48, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i49 = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i49, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata = getelementptr i8, ptr %1, i32 968
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata, align 8
  %tgtdev_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 49, i32 10, i32 5, i32 6
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tgtdev_lock) #18
  %id = getelementptr i8, ptr %1, i32 936
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %conv9 = trunc i32 %7 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %8 = ptrtoint ptr %tgtdev_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %tgtdev_lock, align 4
  %9 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !614

do.body4.i:                                       ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/mpi3mr/mpi3mr_os.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 638, 0\0A.popsection", ""() #18, !srcloc !621
  unreachable

do.end9.i:                                        ; preds = %dev_to_shost.exit
  %tgtdev_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 49, i32 12, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end9.i
  %tgtdev.0.in.i = phi ptr [ %tgtdev_list.i, %do.end9.i ], [ %tgtdev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %tgtdev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %tgtdev.0.i = load ptr, ptr %tgtdev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tgtdev.0.i, %tgtdev_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.else_crit_edge, label %for.body.i

for.cond.i.if.else_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

for.body.i:                                       ; preds = %for.cond.i
  %perst_id.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 6
  %11 = ptrtoint ptr %perst_id.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %perst_id.i, align 4
  %cmp14.i = icmp eq i16 %12, %conv9
  br i1 %cmp14.i, label %found_tgtdev.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

found_tgtdev.i:                                   ; preds = %for.body.i
  %ref_count.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !615
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !614

found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %found_tgtdev.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %found_tgtdev.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !612

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__mpi3mr_get_tgtdev_by_perst_id.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef %.sink.i.i.i.i.i.i) #18
  br label %__mpi3mr_get_tgtdev_by_perst_id.exit

__mpi3mr_get_tgtdev_by_perst_id.exit:             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge
  %tobool.not = icmp eq ptr %tgtdev.0.i, null
  br i1 %tobool.not, label %__mpi3mr_get_tgtdev_by_perst_id.exit.if.else_crit_edge, label %if.then

__mpi3mr_get_tgtdev_by_perst_id.exit.if.else_crit_edge: ; preds = %__mpi3mr_get_tgtdev_by_perst_id.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

if.then:                                          ; preds = %__mpi3mr_get_tgtdev_by_perst_id.exit
  %starget11 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %starget11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %starget11, align 8
  %cmp12 = icmp eq ptr %16, null
  br i1 %cmp12, label %if.then14, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %starget11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %starget11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then.if.end_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i51 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i51)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i51, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i51)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i51, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mpi3mr_tgtdev_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !612

if.end5.i.i.i.i.i.mpi3mr_tgtdev_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_tgtdev_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef 3) #18
  br label %mpi3mr_tgtdev_put.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %tgtdev.0.i) #18
  br label %mpi3mr_tgtdev_put.exit

mpi3mr_tgtdev_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mpi3mr_tgtdev_put.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tgtdev_lock, i32 noundef %call6) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 16) #22
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %mpi3mr_tgtdev_put.exit.cleanup_crit_edge, label %if.end22

mpi3mr_tgtdev_put.exit.cleanup_crit_edge:         ; preds = %mpi3mr_tgtdev_put.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.else:                                          ; preds = %__mpi3mr_get_tgtdev_by_perst_id.exit.if.else_crit_edge, %for.cond.i.if.else_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tgtdev_lock, i32 noundef %call6) #18
  br label %cleanup

if.end22:                                         ; preds = %mpi3mr_tgtdev_put.exit
  call void @__sanitizer_cov_trace_pc() #20
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %20 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %lun, align 8
  %conv23 = trunc i64 %21 to i32
  %lun_id = getelementptr inbounds %struct.mpi3mr_sdev_priv_data, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %lun_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv23, ptr %lun_id, align 4
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %5, ptr %call7.i.i, align 8
  %hostdata24 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %24 = ptrtoint ptr %hostdata24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %hostdata24, align 8
  %num_luns = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %5, i32 0, i32 3
  %25 = ptrtoint ptr %num_luns to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_luns, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %num_luns, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.else, %mpi3mr_tgtdev_put.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -6, %if.else ], [ -12, %mpi3mr_tgtdev_put.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpi3mr_slave_configure(ptr noundef %sdev) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i52 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i52 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i52, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i53 = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i53, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %tgtdev_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 49, i32 10, i32 5, i32 6
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tgtdev_lock) #18
  %id = getelementptr i8, ptr %1, i32 936
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %conv9 = trunc i32 %5 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %6 = ptrtoint ptr %tgtdev_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %tgtdev_lock, align 4
  %7 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !614

do.body4.i:                                       ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/mpi3mr/mpi3mr_os.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 638, 0\0A.popsection", ""() #18, !srcloc !621
  unreachable

do.end9.i:                                        ; preds = %dev_to_shost.exit
  %tgtdev_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 49, i32 12, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end9.i
  %tgtdev.0.in.i = phi ptr [ %tgtdev_list.i, %do.end9.i ], [ %tgtdev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %tgtdev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tgtdev.0.i = load ptr, ptr %tgtdev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tgtdev.0.i, %tgtdev_list.i
  br i1 %cmp.not.i, label %__mpi3mr_get_tgtdev_by_perst_id.exit.thread, label %for.body.i

__mpi3mr_get_tgtdev_by_perst_id.exit.thread:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tgtdev_lock, i32 noundef %call6) #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %perst_id.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 6
  %9 = ptrtoint ptr %perst_id.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %perst_id.i, align 4
  %cmp14.i = icmp eq i16 %10, %conv9
  br i1 %cmp14.i, label %found_tgtdev.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

found_tgtdev.i:                                   ; preds = %for.body.i
  %ref_count.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !615
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !614

found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %found_tgtdev.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %found_tgtdev.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !612

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__mpi3mr_get_tgtdev_by_perst_id.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef %.sink.i.i.i.i.i.i) #18
  br label %__mpi3mr_get_tgtdev_by_perst_id.exit

__mpi3mr_get_tgtdev_by_perst_id.exit:             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tgtdev_lock, i32 noundef %call6) #18
  %tobool.not = icmp eq ptr %tgtdev.0.i, null
  br i1 %tobool.not, label %__mpi3mr_get_tgtdev_by_perst_id.exit.cleanup_crit_edge, label %if.end

__mpi3mr_get_tgtdev_by_perst_id.exit.cleanup_crit_edge: ; preds = %__mpi3mr_get_tgtdev_by_perst_id.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %__mpi3mr_get_tgtdev_by_perst_id.exit
  %q_depth = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 10
  %13 = ptrtoint ptr %q_depth to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %q_depth, align 2
  %conv12 = zext i16 %14 to i32
  %15 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end
  %dev.addr.0.i.i = phi ptr [ %16, %if.end ], [ %18, %while.body.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i16.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %parent.i16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i16.i, align 8
  %tobool1.not.i.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.mpi3mr_change_queue_depth.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i.i

while.body.i.i.mpi3mr_change_queue_depth.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_change_queue_depth.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i17.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %mpi3mr_change_queue_depth.exit

mpi3mr_change_queue_depth.exit:                   ; preds = %while.end.i.i, %while.body.i.i.mpi3mr_change_queue_depth.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i17.i, %while.end.i.i ], [ null, %while.body.i.i.mpi3mr_change_queue_depth.exit_crit_edge ]
  %tagged_supported.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %19 = ptrtoint ptr %tagged_supported.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %bf.load.i = load i64, ptr %tagged_supported.i, align 4
  %20 = and i64 %bf.load.i, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool.not.i55 = icmp eq i64 %20, 0
  %spec.select.i = select i1 %tobool.not.i55, i32 1, i32 %conv12
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 26
  %21 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %can_queue.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %22)
  %cmp.i = icmp sgt i32 %spec.select.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool5.not.i = icmp eq i32 %spec.select.i, 0
  %spec.store.select.i = select i1 %tobool5.not.i, i32 32, i32 %spec.select.i
  %q_depth.addr.1.i = select i1 %cmp.i, i32 %22, i32 %spec.store.select.i
  %call9.i = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %q_depth.addr.1.i) #18
  %dev_type = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 7
  %23 = ptrtoint ptr %dev_type to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dev_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cond = icmp eq i8 %24, 1
  br i1 %cond, label %sw.bb, label %mpi3mr_change_queue_depth.exit.sw.epilog_crit_edge

mpi3mr_change_queue_depth.exit.sw.epilog_crit_edge: ; preds = %mpi3mr_change_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %mpi3mr_change_queue_depth.exit
  %dev_spec = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 12
  %dev_info = getelementptr inbounds %struct.tgt_dev_pcie, ptr %dev_spec, i32 0, i32 5
  %25 = ptrtoint ptr %dev_info to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dev_info, align 2
  %27 = and i16 %26, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %27)
  %cmp16 = icmp eq i16 %27, 1
  br i1 %cmp16, label %if.then18, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then18:                                        ; preds = %sw.bb
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %28 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %request_queue, align 4
  %30 = ptrtoint ptr %dev_spec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dev_spec, align 8
  %div51 = lshr i32 %31, 9
  tail call void @blk_queue_max_hw_sectors(ptr noundef %29, i32 noundef %div51) #18
  %pgsz = getelementptr inbounds %struct.tgt_dev_pcie, ptr %dev_spec, i32 0, i32 2
  %32 = ptrtoint ptr %pgsz to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pgsz, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp22 = icmp eq i8 %33, 0
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  %34 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_virt_boundary(ptr noundef %35, i32 noundef 4095) #18
  br label %sw.epilog

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  %conv21 = zext i8 %33 to i32
  %36 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %request_queue, align 4
  %notmask = shl nsw i32 -1, %conv21
  %sub = xor i32 %notmask, -1
  tail call void @blk_queue_virt_boundary(ptr noundef %37, i32 noundef %sub) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then24, %sw.bb.sw.epilog_crit_edge, %mpi3mr_change_queue_depth.exit.sw.epilog_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i56 = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i56)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i56, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i56)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i56, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !612

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef 3) #18
  br label %cleanup

if.then.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %tgtdev.0.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %__mpi3mr_get_tgtdev_by_perst_id.exit.cleanup_crit_edge, %__mpi3mr_get_tgtdev_by_perst_id.exit.thread
  %retval.0 = phi i32 [ -6, %__mpi3mr_get_tgtdev_by_perst_id.exit.cleanup_crit_edge ], [ -6, %__mpi3mr_get_tgtdev_by_perst_id.exit.thread ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpi3mr_slave_destroy(ptr nocapture noundef %sdev) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %dev.addr.0.i = phi ptr [ %3, %if.end ], [ %5, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i40 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i40 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i40, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i41 = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i41, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata3 = getelementptr i8, ptr %3, i32 968
  %6 = ptrtoint ptr %hostdata3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata3, align 8
  %num_luns = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %num_luns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_luns, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %num_luns, align 4
  %tgtdev_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 49, i32 10, i32 5, i32 6
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tgtdev_lock) #18
  %id = getelementptr i8, ptr %3, i32 936
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  %conv9 = trunc i32 %11 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %12 = ptrtoint ptr %tgtdev_lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %tgtdev_lock, align 4
  %13 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !614

do.body4.i:                                       ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/mpi3mr/mpi3mr_os.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 638, 0\0A.popsection", ""() #18, !srcloc !621
  unreachable

do.end9.i:                                        ; preds = %dev_to_shost.exit
  %tgtdev_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 49, i32 12, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end9.i
  %tgtdev.0.in.i = phi ptr [ %tgtdev_list.i, %do.end9.i ], [ %tgtdev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %tgtdev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %tgtdev.0.i = load ptr, ptr %tgtdev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tgtdev.0.i, %tgtdev_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end19_crit_edge, label %for.body.i

for.cond.i.if.end19_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

for.body.i:                                       ; preds = %for.cond.i
  %perst_id.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 6
  %15 = ptrtoint ptr %perst_id.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %perst_id.i, align 4
  %cmp14.i = icmp eq i16 %16, %conv9
  br i1 %cmp14.i, label %found_tgtdev.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

found_tgtdev.i:                                   ; preds = %for.body.i
  %ref_count.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !615
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !614

found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %found_tgtdev.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %found_tgtdev.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !612

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__mpi3mr_get_tgtdev_by_perst_id.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef %.sink.i.i.i.i.i.i) #18
  br label %__mpi3mr_get_tgtdev_by_perst_id.exit

__mpi3mr_get_tgtdev_by_perst_id.exit:             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge
  %tobool11.not = icmp eq ptr %tgtdev.0.i, null
  br i1 %tobool11.not, label %__mpi3mr_get_tgtdev_by_perst_id.exit.if.end19_crit_edge, label %land.lhs.true

__mpi3mr_get_tgtdev_by_perst_id.exit.if.end19_crit_edge: ; preds = %__mpi3mr_get_tgtdev_by_perst_id.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

land.lhs.true:                                    ; preds = %__mpi3mr_get_tgtdev_by_perst_id.exit
  %19 = ptrtoint ptr %num_luns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_luns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not = icmp eq i32 %20, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true.if.then18_crit_edge

land.lhs.true.if.then18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then18

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %starget15 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %starget15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %starget15, align 8
  br label %if.then18

if.then18:                                        ; preds = %if.then14, %land.lhs.true.if.then18_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i43 = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i43)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i43, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i43)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i43, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end19_crit_edge, label %if.then10.i.i.i.i.i, !prof !612

if.end5.i.i.i.i.i.if.end19_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef 3) #18
  br label %if.end19

if.then.i.i:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %tgtdev.0.i) #18
  br label %if.end19

if.end19:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end19_crit_edge, %__mpi3mr_get_tgtdev_by_perst_id.exit.if.end19_crit_edge, %for.cond.i.if.end19_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tgtdev_lock, i32 noundef %call6) #18
  %23 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hostdata, align 8
  tail call void @kfree(ptr noundef %24) #18
  %25 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %hostdata, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpi3mr_target_alloc(ptr noundef %starget) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %dev, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %dev_to_shost.exit.cleanup_crit_edge, label %if.end

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %hostdata = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 14
  %3 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %hostdata, align 8
  %tgtdev_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 49, i32 10, i32 5, i32 6
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tgtdev_lock) #18
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %conv9 = trunc i32 %5 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %6 = ptrtoint ptr %tgtdev_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %tgtdev_lock, align 4
  %7 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !614

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/mpi3mr/mpi3mr_os.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 638, 0\0A.popsection", ""() #18, !srcloc !621
  unreachable

do.end9.i:                                        ; preds = %if.end
  %tgtdev_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 49, i32 12, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end9.i
  %tgtdev.0.in.i = phi ptr [ %tgtdev_list.i, %do.end9.i ], [ %tgtdev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %tgtdev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tgtdev.0.i = load ptr, ptr %tgtdev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tgtdev.0.i, %tgtdev_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end20_crit_edge, label %for.body.i

for.cond.i.if.end20_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

for.body.i:                                       ; preds = %for.cond.i
  %perst_id.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 6
  %9 = ptrtoint ptr %perst_id.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %perst_id.i, align 4
  %cmp14.i = icmp eq i16 %10, %conv9
  br i1 %cmp14.i, label %found_tgtdev.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

found_tgtdev.i:                                   ; preds = %for.body.i
  %perst_id.i.le = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 6
  %ref_count.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !615
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !614

found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %found_tgtdev.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %found_tgtdev.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !612

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__mpi3mr_get_tgtdev_by_perst_id.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %found_tgtdev.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef %.sink.i.i.i.i.i.i) #18
  br label %__mpi3mr_get_tgtdev_by_perst_id.exit

__mpi3mr_get_tgtdev_by_perst_id.exit:             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.__mpi3mr_get_tgtdev_by_perst_id.exit_crit_edge
  %tobool11.not = icmp eq ptr %tgtdev.0.i, null
  br i1 %tobool11.not, label %__mpi3mr_get_tgtdev_by_perst_id.exit.if.end20_crit_edge, label %land.lhs.true

__mpi3mr_get_tgtdev_by_perst_id.exit.if.end20_crit_edge: ; preds = %__mpi3mr_get_tgtdev_by_perst_id.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

land.lhs.true:                                    ; preds = %__mpi3mr_get_tgtdev_by_perst_id.exit
  %is_hidden = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 8
  %13 = ptrtoint ptr %is_hidden to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_hidden, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %starget, ptr %call7.i.i, align 8
  %dev_handle = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %dev_handle to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dev_handle, align 4
  %dev_handle15 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %dev_handle15 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %dev_handle15, align 4
  %19 = ptrtoint ptr %perst_id.i.le to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %perst_id.i.le, align 4
  %perst_id16 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %perst_id16 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %perst_id16, align 2
  %dev_type = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 7
  %22 = ptrtoint ptr %dev_type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dev_type, align 2
  %dev_type17 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %call7.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %dev_type17 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %dev_type17, align 2
  %tgt_dev18 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %call7.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %tgt_dev18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tgtdev.0.i, ptr %tgt_dev18, align 4
  %starget19 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %tgtdev.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %starget19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %starget, ptr %starget19, align 8
  %block_io = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %call7.i.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %block_io, i32 noundef 4) #18
  %27 = ptrtoint ptr %block_io to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %block_io, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %land.lhs.true.if.end20_crit_edge, %__mpi3mr_get_tgtdev_by_perst_id.exit.if.end20_crit_edge, %for.cond.i.if.end20_crit_edge
  %retval2.0 = phi i32 [ 0, %if.then13 ], [ -6, %land.lhs.true.if.end20_crit_edge ], [ -6, %__mpi3mr_get_tgtdev_by_perst_id.exit.if.end20_crit_edge ], [ -6, %for.cond.i.if.end20_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tgtdev_lock, i32 noundef %call6) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.0, %if.end20 ], [ -12, %dev_to_shost.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpi3mr_target_destroy(ptr noundef %starget) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 14
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %dev.addr.0.i = phi ptr [ %dev, %if.end ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata, align 8
  %tgtdev_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 49, i32 10, i32 5, i32 6
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tgtdev_lock) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %6 = ptrtoint ptr %tgtdev_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %tgtdev_lock, align 4
  %7 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !614

do.body4.i:                                       ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/mpi3mr/mpi3mr_os.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 686, 0\0A.popsection", ""() #18, !srcloc !625
  unreachable

do.end9.i:                                        ; preds = %dev_to_shost.exit
  %tgt_dev.i = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %tgt_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tgt_dev.i, align 4
  %tobool10.not.i = icmp eq ptr %9, null
  br i1 %tobool10.not.i, label %do.end9.i.if.end24_crit_edge, label %if.then11.i

do.end9.i.if.end24_crit_edge:                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.then11.i:                                      ; preds = %do.end9.i
  %ref_count.i.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %9, i32 0, i32 13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !615
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then11.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !614

if.then11.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then11.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.land.lhs.true_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !612

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.land.lhs.true_crit_edge:      ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then11.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then11.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef %.sink.i.i.i.i.i.i) #18
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.land.lhs.true_crit_edge
  %starget10 = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %starget10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %starget10, align 8
  %cmp11 = icmp eq ptr %13, %starget
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true.if.then21_crit_edge

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then21

land.lhs.true13:                                  ; preds = %land.lhs.true
  %perst_id = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %9, i32 0, i32 6
  %14 = ptrtoint ptr %perst_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %perst_id, align 4
  %conv14 = zext i16 %15 to i32
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv14)
  %cmp15 = icmp eq i32 %17, %conv14
  br i1 %cmp15, label %if.then17, label %land.lhs.true13.if.then21_crit_edge

land.lhs.true13.if.then21_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then21

if.then17:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %starget10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %starget10, align 8
  br label %if.then21

if.then21:                                        ; preds = %if.then17, %land.lhs.true13.if.then21_crit_edge, %land.lhs.true.if.then21_crit_edge
  %19 = ptrtoint ptr %tgt_dev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %tgt_dev.i, align 4
  %perst_id23 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %perst_id23 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %perst_id23, align 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i50 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i50)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i50, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i50)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i50, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mpi3mr_tgtdev_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !612

if.end5.i.i.i.i.i.mpi3mr_tgtdev_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_tgtdev_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef 3) #18
  br label %mpi3mr_tgtdev_put.exit

if.then.i.i:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %9) #18
  br label %mpi3mr_tgtdev_put.exit

mpi3mr_tgtdev_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mpi3mr_tgtdev_put.exit_crit_edge
  %call.i.i.i.i.i.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #18
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i53 = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i53)
  %cmp.i.i.i.i.i54 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i53, 1
  br i1 %cmp.i.i.i.i.i54, label %if.then.i.i58, label %if.end5.i.i.i.i.i56

if.end5.i.i.i.i.i56:                              ; preds = %mpi3mr_tgtdev_put.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i53)
  %.not.i.i.i.i.i55 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i53, 0
  br i1 %.not.i.i.i.i.i55, label %if.end5.i.i.i.i.i56.if.end24_crit_edge, label %if.then10.i.i.i.i.i57, !prof !612

if.end5.i.i.i.i.i56.if.end24_crit_edge:           ; preds = %if.end5.i.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.then10.i.i.i.i.i57:                            ; preds = %if.end5.i.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef 3) #18
  br label %if.end24

if.then.i.i58:                                    ; preds = %mpi3mr_tgtdev_put.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  tail call void @kfree(ptr noundef nonnull %9) #18
  br label %if.end24

if.end24:                                         ; preds = %if.then.i.i58, %if.then10.i.i.i.i.i57, %if.end5.i.i.i.i.i56.if.end24_crit_edge, %do.end9.i.if.end24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tgtdev_lock, i32 noundef %call5) #18
  %23 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hostdata, align 8
  tail call void @kfree(ptr noundef %24) #18
  %25 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %hostdata, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpi3mr_scan_finished(ptr noundef %shost, i32 noundef %time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %sysif_regs = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 1, i32 4, i32 1
  %0 = ptrtoint ptr %sysif_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysif_regs, align 8
  %ioc_status1 = getelementptr inbounds %struct.mpi3_sysif_registers, ptr %1, i32 0, i32 5
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ioc_status1) #18, !srcloc !626
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !627
  %3 = and i32 %2, 301989888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 3, i32 0, i32 0, i32 2
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.304, ptr noundef %name) #21
  tail call void @mpi3mr_print_fault_info(ptr noundef %hostdata.i) #18
  %scan_failed = getelementptr inbounds %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 73
  %5 = ptrtoint ptr %scan_failed to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4, ptr %scan_failed, align 2
  %scan_started = getelementptr inbounds %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 72
  %6 = ptrtoint ptr %scan_started to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %scan_started, align 1
  %is_waiting = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 5, i32 1, i32 1
  %7 = ptrtoint ptr %is_waiting to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %is_waiting, align 4
  %callback = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 5, i32 2
  %8 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %callback, align 4
  %state = getelementptr inbounds %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 37, i32 5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -32768, ptr %state, align 2
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 29999, i32 %time)
  %cmp = icmp ugt i32 %time, 29999
  br i1 %cmp, label %do.end13, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %name15 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 3, i32 0, i32 0, i32 2
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.307, ptr noundef %name15) #21
  tail call void @mpi3mr_check_rh_fault_ioc(ptr noundef %hostdata.i, i32 noundef 10) #18
  %scan_failed18 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 73
  %10 = ptrtoint ptr %scan_failed18 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4, ptr %scan_failed18, align 2
  %scan_started19 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 72
  %11 = ptrtoint ptr %scan_started19 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %scan_started19, align 1
  %is_waiting21 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 5, i32 1, i32 1
  %12 = ptrtoint ptr %is_waiting21 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %is_waiting21, align 4
  %callback23 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 5, i32 2
  %13 = ptrtoint ptr %callback23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %callback23, align 4
  %state25 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 37, i32 5
  %14 = ptrtoint ptr %state25 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -32768, ptr %state25, align 2
  br label %if.end26

if.end26:                                         ; preds = %do.end13, %if.end.if.end26_crit_edge
  %scan_started27 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 72
  %15 = ptrtoint ptr %scan_started27 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %scan_started27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool28.not = icmp eq i8 %16, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %scan_failed31 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 73
  %17 = ptrtoint ptr %scan_failed31 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %scan_failed31, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool32.not = icmp eq i16 %18, 0
  %name46 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 3, i32 0, i32 0, i32 2
  br i1 %tobool32.not, label %do.end44, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i16 %18 to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.310, ptr noundef %name46, i32 noundef %conv) #21
  br label %if.end49

do.end44:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.313, ptr noundef %name46) #21
  br label %if.end49

if.end49:                                         ; preds = %do.end44, %do.end36
  tail call void @mpi3mr_start_watchdog(ptr noundef %hostdata.i) #18
  %is_driver_loading = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 10, i32 5, i32 2
  %19 = ptrtoint ptr %is_driver_loading to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %is_driver_loading, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end49 ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpi3mr_scan_start(ptr noundef %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %scan_started = getelementptr inbounds %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 72
  %0 = ptrtoint ptr %scan_started to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %scan_started, align 1
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 3, i32 0, i32 0, i32 2
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.315, ptr noundef %name, ptr noundef nonnull @.str.316) #21
  %call2 = tail call i32 @mpi3mr_issue_port_enable(ptr noundef %hostdata.i, i8 noundef zeroext 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end5

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.318, ptr noundef %name, ptr noundef nonnull @.str.316) #21
  %1 = ptrtoint ptr %scan_started to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %scan_started, align 1
  %scan_failed = getelementptr inbounds %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 73
  %2 = ptrtoint ptr %scan_failed to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 4, ptr %scan_failed, align 2
  br label %if.end

if.end:                                           ; preds = %do.end5, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpi3mr_map_queues(ptr noundef %shost) #0 align 64 {
if.end12:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %op_reply_q_offset = getelementptr inbounds %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 109
  %0 = ptrtoint ptr %op_reply_q_offset to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %op_reply_q_offset, align 2
  %nr_queues = getelementptr %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 0, i32 0, i32 1
  %default_qcount = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 3, i32 9
  %2 = ptrtoint ptr %default_qcount to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %default_qcount, align 8
  %conv5 = zext i16 %3 to i32
  %4 = ptrtoint ptr %nr_queues to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv5, ptr %nr_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %do.body20, label %if.end12.thread59.2

do.body20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/mpi3mr/mpi3mr_os.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3189, 0\0A.popsection", ""() #18, !srcloc !628
  unreachable

if.end12.thread59.2:                              ; preds = %if.end12
  %pdev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1
  %active_poll_qcount = getelementptr inbounds %struct.mpi3mr_ioc, ptr %hostdata.i, i32 0, i32 111
  %tag_set = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13
  %conv = zext i16 %1 to i32
  %queue_offset = getelementptr %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %queue_offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %queue_offset, align 4
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %call31 = tail call i32 @blk_mq_pci_map_queues(ptr noundef %tag_set, ptr noundef %7, i32 noundef %conv) #18
  %8 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_queues, align 4
  %nr_queues.1 = getelementptr %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %nr_queues.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %nr_queues.1, align 4
  %nr_queues.2 = getelementptr %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %active_poll_qcount to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %active_poll_qcount, align 2
  %conv10.2 = zext i16 %12 to i32
  %13 = ptrtoint ptr %nr_queues.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv10.2, ptr %nr_queues.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not60.2 = icmp eq i16 %12, 0
  br i1 %tobool.not60.2, label %if.end12.thread59.2.for.inc.2_crit_edge, label %if.end34.2

if.end12.thread59.2.for.inc.2_crit_edge:          ; preds = %if.end12.thread59.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

if.end34.2:                                       ; preds = %if.end12.thread59.2
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.2 = getelementptr %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 0, i32 2
  %queue_offset62.2 = getelementptr %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %queue_offset62.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %queue_offset62.2, align 4
  %call33.2 = tail call i32 @blk_mq_map_queues(ptr noundef %arrayidx.2) #18
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end34.2, %if.end12.thread59.2.for.inc.2_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi3mr_blk_mq_poll(ptr noundef, i32 noundef) #2

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @mpi3mr_bios_param(ptr nocapture noundef readnone %sdev, ptr nocapture noundef readnone %bdev, i64 noundef %capacity, ptr nocapture noundef writeonly %params) #14 align 64 {
if.end179:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %capacity, 11
  %extract.t580 = trunc i64 %shr to i32
  %0 = and i64 %capacity, 4292870144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %cmp182.not = icmp eq i64 %0, 0
  br i1 %cmp182.not, label %if.end179.if.end407_crit_edge, label %if.end376

if.end179.if.end407_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end407

if.end376:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #20
  %1 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9040225091336153120, i64 %capacity, i32 0) #25, !srcloc !629
  %asmresult.i586 = extractvalue { i64, i32 } %1, 0
  %asmresult4.i587 = extractvalue { i64, i32 } %1, 1
  %2 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9040225091336153120, i64 %capacity, i64 %asmresult.i586, i32 %asmresult4.i587) #25, !srcloc !630
  %asmresult10.i588 = extractvalue { i64, i32 } %2, 0
  %extract584 = lshr i64 %asmresult10.i588, 13
  %extract.t585 = trunc i64 %extract584 to i32
  br label %if.end407

if.end407:                                        ; preds = %if.end376, %if.end179.if.end407_crit_edge
  %cylinders.2.off0 = phi i32 [ %extract.t580, %if.end179.if.end407_crit_edge ], [ %extract.t585, %if.end376 ]
  %sectors.0 = phi i32 [ 32, %if.end179.if.end407_crit_edge ], [ 63, %if.end376 ]
  %heads.0 = phi i32 [ 64, %if.end179.if.end407_crit_edge ], [ 255, %if.end376 ]
  %3 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %heads.0, ptr %params, align 4
  %arrayidx408 = getelementptr i32, ptr %params, i32 1
  %4 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sectors.0, ptr %arrayidx408, align 4
  %arrayidx410 = getelementptr i32, ptr %params, i32 2
  %5 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cylinders.2.off0, ptr %arrayidx410, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mpi3mr_check_return_unmap(ptr noundef %mrioc, ptr noundef %scmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 16
  %0 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmnd, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 7
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %add.ptr, align 1
  %pdev = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end39, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %3)
  %cmp = icmp ugt i16 %3, 24
  br i1 %cmp, label %land.lhs.true, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %sub = add nuw nsw i32 %conv, 8
  %and = and i32 %sub, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  %8 = trunc i32 %and to i16
  %conv10 = sub nuw i16 %3, %8
  %logging_level = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 104
  %9 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %logging_level, align 8
  %and11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then4.do.body14_crit_edge, label %if.then13

if.then4.do.body14_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body14

if.then13:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @scsi_print_command(ptr noundef %scmd) #18
  br label %do.body14

do.body14:                                        ; preds = %if.then13, %if.then4.do.body14_crit_edge
  %11 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %logging_level, align 8
  %and16 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body14.do.end27_crit_edge, label %do.end21

do.body14.do.end27_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end27

do.end21:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #20
  %name = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %conv23 = zext i16 %conv10 to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef %name, i32 noundef %conv, i32 noundef %conv23) #21
  br label %do.end27

do.end27:                                         ; preds = %do.end21, %do.body14.do.end27_crit_edge
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %add.ptr29 = getelementptr i8, ptr %14, i32 7
  %15 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %conv10, ptr %add.ptr29, align 1
  %16 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %logging_level, align 8
  %and32 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.end27.cleanup_crit_edge, label %if.then34

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then34:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @scsi_print_command(ptr noundef %scmd) #18
  br label %cleanup

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool40.not = icmp eq i16 %3, 0
  br i1 %tobool40.not, label %do.end44, label %if.end49

do.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #20
  %name46 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef %name46, ptr noundef nonnull @.str.221) #21
  tail call void @scsi_print_command(ptr noundef %scmd) #18
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %18 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %scmd) #18
  br label %cleanup

if.end49:                                         ; preds = %if.end39
  %conv50 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %3)
  %cmp51 = icmp ult i16 %3, 24
  br i1 %cmp51, label %do.end56, label %if.end63

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  %name58 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, ptr noundef %name58, ptr noundef nonnull @.str.221, i32 noundef %conv50) #21
  tail call void @scsi_print_command(ptr noundef %scmd) #18
  %result62 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %19 = ptrtoint ptr %result62 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %result62, align 4
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 21
  %20 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sense_buffer, align 4
  tail call void @scsi_build_sense_buffer(i32 noundef 0, ptr noundef %21, i8 noundef zeroext 5, i8 noundef zeroext 26, i8 noundef zeroext 0) #18
  tail call void @scsi_done(ptr noundef %scmd) #18
  br label %cleanup

if.end63:                                         ; preds = %if.end49
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 1
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv50)
  %cmp66.not = icmp eq i32 %23, %conv50
  br i1 %cmp66.not, label %if.end8.i.i, label %do.end71

do.end71:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #20
  %name73 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, ptr noundef %name73, ptr noundef nonnull @.str.221, i32 noundef %conv50, i32 noundef %23) #21
  tail call void @scsi_print_command(ptr noundef %scmd) #18
  %result78 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %24 = ptrtoint ptr %result78 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %result78, align 4
  %sense_buffer79 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 21
  %25 = ptrtoint ptr %sense_buffer79 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sense_buffer79, align 4
  tail call void @scsi_build_sense_buffer(i32 noundef 0, ptr noundef %26, i8 noundef zeroext 5, i8 noundef zeroext 26, i8 noundef zeroext 0) #18
  tail call void @scsi_done(ptr noundef %scmd) #18
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end63
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv50, i32 noundef 2848) #23
  %tobool83.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool83.not, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @scsi_print_command(ptr noundef %scmd) #18
  %result85 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %27 = ptrtoint ptr %result85 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %result85, align 4
  %sense_buffer86 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 21
  %28 = ptrtoint ptr %sense_buffer86 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sense_buffer86, align 4
  tail call void @scsi_build_sense_buffer(i32 noundef 0, ptr noundef %29, i8 noundef zeroext 5, i8 noundef zeroext 85, i8 noundef zeroext 3) #18
  tail call void @scsi_done(ptr noundef %scmd) #18
  br label %cleanup

if.end87:                                         ; preds = %if.end8.i.i
  %30 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length.i, align 4
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17
  %32 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdb.i.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 0, i32 1
  %34 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nents.i.i, align 4
  %call2.i = tail call i32 @sg_copy_to_buffer(ptr noundef %33, i32 noundef %35, ptr noundef nonnull %call9.i.i, i32 noundef %31) #18
  %arrayidx = getelementptr i8, ptr %call9.i.i, i32 2
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx, align 2
  %conv91 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %37)
  %cmp92 = icmp ult i16 %37, 16
  br i1 %cmp92, label %do.end97, label %if.end105

do.end97:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #20
  %name99 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, ptr noundef %name99, ptr noundef nonnull @.str.221, i32 noundef %conv91) #21
  tail call void @scsi_print_command(ptr noundef %scmd) #18
  %result103 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %38 = ptrtoint ptr %result103 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %result103, align 4
  %sense_buffer104 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 21
  %39 = ptrtoint ptr %sense_buffer104 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sense_buffer104, align 4
  tail call void @scsi_build_sense_buffer(i32 noundef 0, ptr noundef %40, i8 noundef zeroext 5, i8 noundef zeroext 38, i8 noundef zeroext 0) #18
  tail call void @scsi_done(ptr noundef %scmd) #18
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #18
  br label %cleanup

if.end105:                                        ; preds = %if.end87
  %add = add nuw nsw i32 %conv91, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv50)
  %cmp108 = icmp ult i32 %add, %conv50
  br i1 %cmp108, label %if.then110, label %if.end105.if.end133_crit_edge

if.end105.if.end133_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end133

if.then110:                                       ; preds = %if.end105
  %conv113 = trunc i32 %add to i16
  tail call void @scsi_print_command(ptr noundef %scmd) #18
  %logging_level115 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 104
  %41 = ptrtoint ptr %logging_level115 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %logging_level115, align 8
  %and116 = and i32 %42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.then110.do.end130_crit_edge, label %do.end121

if.then110.do.end130_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end130

do.end121:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #20
  %name123 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %conv126 = and i32 %add, 65535
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %name123, i32 noundef %conv50, i32 noundef %conv126) #21
  br label %do.end130

do.end130:                                        ; preds = %do.end121, %if.then110.do.end130_crit_edge
  %43 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cmnd, align 4
  %add.ptr132 = getelementptr i8, ptr %44, i32 7
  %45 = ptrtoint ptr %add.ptr132 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %conv113, ptr %add.ptr132, align 1
  tail call void @scsi_print_command(ptr noundef %scmd) #18
  br label %if.end133

if.end133:                                        ; preds = %do.end130, %if.end105.if.end133_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end133, %do.end97, %if.then84, %do.end71, %do.end56, %do.end44, %if.then34, %do.end27.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end56 ], [ true, %do.end71 ], [ true, %do.end97 ], [ false, %if.end133 ], [ true, %if.then84 ], [ true, %do.end44 ], [ false, %do.end27.cleanup_crit_edge ], [ false, %if.then34 ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.then.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @mpi3mr_host_tag_for_scmd(ptr nocapture noundef readonly %mrioc, ptr noundef %scmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %scmd, i32 -192
  %call1 = tail call i32 @blk_mq_unique_tag(ptr noundef %add.ptr.i.i) #18
  %shr.i = lshr i32 %call1, 16
  %conv.i = trunc i32 %shr.i to i16
  %num_op_reply_q = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 35
  %0 = ptrtoint ptr %num_op_reply_q to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_op_reply_q, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %conv.i)
  %cmp.not = icmp ugt i16 %1, %conv.i
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i56 = trunc i32 %call1 to i16
  %max_host_ios = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 75
  %2 = ptrtoint ptr %max_host_ios to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_host_ios, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %conv.i56)
  %cmp8.not = icmp ugt i16 %3, %conv.i56
  br i1 %cmp8.not, label %if.end32, label %do.end, !prof !612

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 63, i32 noundef 9, ptr noundef null) #18
  br label %cleanup

if.end32:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1
  %add = add nuw i16 %conv.i56, 1
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %add, ptr %add.ptr.i, align 4
  %scmd37 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 4
  %5 = ptrtoint ptr %scmd37 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %scmd, ptr %scmd37, align 4
  %in_lld_scope = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %in_lld_scope to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %in_lld_scope, align 2
  %req_q_idx = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 8
  %7 = ptrtoint ptr %req_q_idx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %req_q_idx, align 4
  %meta_chain_idx = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %meta_chain_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %meta_chain_idx, align 4
  %chain_idx = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 12
  %9 = ptrtoint ptr %chain_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %chain_idx, align 4
  %meta_sg_valid = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %meta_sg_valid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %meta_sg_valid, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ -1, %do.end ], [ %add, %if.end32 ], [ -1, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mpi3mr_setup_eedp(ptr nocapture noundef readonly %scmd, ptr nocapture noundef %scsiio_req) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %prot_op.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 10
  %0 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prot_op.i, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.355)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 6, label %sw.bb16
    i8 3, label %entry.sw.epilog_crit_edge
    i8 4, label %sw.bb2
    i8 1, label %sw.bb3
    i8 2, label %sw.bb6
    i8 5, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %msg_flags = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 5
  %3 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %msg_flags, align 1
  %5 = or i8 %4, -128
  store i8 %5, ptr %msg_flags, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %msg_flags7 = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 5
  %6 = ptrtoint ptr %msg_flags7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msg_flags7, align 1
  %8 = or i8 %7, -128
  store i8 %8, ptr %msg_flags7, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %msg_flags12 = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 5
  %9 = ptrtoint ptr %msg_flags12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %msg_flags12, align 1
  %11 = or i8 %10, -128
  store i8 %11, ptr %msg_flags12, align 1
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %prot_flags = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 12
  %12 = ptrtoint ptr %prot_flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %prot_flags, align 2
  %14 = and i8 %13, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %sw.bb16.if.end_crit_edge, label %if.then

sw.bb16.if.end_crit_edge:                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #20
  %sgl = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 13
  %application_tag_translation_mask = getelementptr inbounds %struct.mpi3_sge_extended_eedp, ptr %sgl, i32 0, i32 5
  %15 = ptrtoint ptr %application_tag_translation_mask to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %application_tag_translation_mask, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb16.if.end_crit_edge
  %eedp_flags.0 = phi i16 [ 7, %if.then ], [ 1, %sw.bb16.if.end_crit_edge ]
  %msg_flags18 = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 5
  %16 = ptrtoint ptr %msg_flags18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msg_flags18, align 1
  %18 = or i8 %17, -128
  store i8 %18, ptr %msg_flags18, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb11, %sw.bb6, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %eedp_flags.1 = phi i16 [ %eedp_flags.0, %if.end ], [ 1, %sw.bb11 ], [ 3, %sw.bb6 ], [ 4, %sw.bb3 ], [ 4, %sw.bb2 ], [ 3, %entry.sw.epilog_crit_edge ]
  %prot_flags22 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 12
  %19 = ptrtoint ptr %prot_flags22 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %prot_flags22, align 2
  %21 = and i8 %20, 2
  %22 = zext i8 %21 to i16
  %23 = shl nuw nsw i16 %22, 7
  %24 = and i8 %20, 16
  %25 = zext i8 %24 to i16
  %26 = or i16 %eedp_flags.1, %25
  %27 = or i16 %26, %23
  %28 = and i8 %20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool43.not = icmp eq i8 %28, 0
  br i1 %tobool43.not, label %sw.epilog.if.end49_crit_edge, label %if.then44

sw.epilog.if.end49_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

if.then44:                                        ; preds = %sw.epilog
  %29 = or i16 %27, -31744
  %add.ptr.i.i = getelementptr i8, ptr %scmd, i32 -192
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i, label %if.then44.scsi_prot_ref_tag.exit_crit_edge, label %land.lhs.true.i.i.i

if.then44.scsi_prot_ref_tag.exit_crit_edge:       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #20
  br label %scsi_prot_ref_tag.exit

land.lhs.true.i.i.i:                              ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #20
  %logical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 37, i32 9
  %32 = ptrtoint ptr %logical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %logical_block_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not.i.i.i = icmp eq i32 %33, 0
  %spec.select.i.i.i = select i1 %tobool2.not.i.i.i, i32 512, i32 %33
  br label %scsi_prot_ref_tag.exit

scsi_prot_ref_tag.exit:                           ; preds = %land.lhs.true.i.i.i, %if.then44.scsi_prot_ref_tag.exit_crit_edge
  %retval1.0.i.i.i = phi i32 [ 512, %if.then44.scsi_prot_ref_tag.exit_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true.i.i.i ]
  %34 = tail call i32 @llvm.ctlz.i32(i32 %retval1.0.i.i.i, i1 true) #18, !range !631
  %sub.i.op.i.i.i = xor i32 %34, 31
  %interval_exp.i.i = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 18, i32 3
  %35 = ptrtoint ptr %interval_exp.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %interval_exp.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  %conv.i.i = zext i8 %36 to i32
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %sub.i.op.i.i.i, i32 %conv.i.i
  %__sector.i.i.i = getelementptr i8, ptr %scmd, i32 -152
  %37 = ptrtoint ptr %__sector.i.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %__sector.i.i.i, align 8
  %sub.i.i = add nsw i32 %spec.select.i.i, -9
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shr.i.i = lshr i64 %38, %sh_prom.i.i
  %conv7.i.i = trunc i64 %shr.i.i to i32
  %primary_reference_tag = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 12, i32 1, i32 4
  %39 = ptrtoint ptr %primary_reference_tag to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv7.i.i, ptr %primary_reference_tag, align 4
  br label %if.end49

if.end49:                                         ; preds = %scsi_prot_ref_tag.exit, %sw.epilog.if.end49_crit_edge
  %eedp_flags.4 = phi i16 [ %29, %scsi_prot_ref_tag.exit ], [ %27, %sw.epilog.if.end49_crit_edge ]
  %40 = ptrtoint ptr %prot_flags22 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %prot_flags22, align 2
  %42 = and i8 %41, 8
  %43 = zext i8 %42 to i16
  %44 = shl nuw i16 %43, 12
  %45 = or i16 %eedp_flags.4, %44
  %46 = or i16 %45, 128
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %47 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device.i, align 4
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %48, i32 0, i32 20
  %49 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sector_size.i, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.356)
  switch i32 %50, label %if.end49.sw.epilog91_crit_edge [
    i32 512, label %if.end49.sw.epilog91.sink.split_crit_edge
    i32 520, label %sw.bb66
    i32 4080, label %sw.bb70
    i32 4088, label %sw.bb74
    i32 4096, label %sw.bb78
    i32 4104, label %sw.bb82
    i32 4160, label %sw.bb86
  ]

if.end49.sw.epilog91.sink.split_crit_edge:        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog91.sink.split

if.end49.sw.epilog91_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog91

sw.bb66:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog91.sink.split

sw.bb70:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog91.sink.split

sw.bb74:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog91.sink.split

sw.bb78:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog91.sink.split

sw.bb82:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog91.sink.split

sw.bb86:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog91.sink.split

sw.epilog91.sink.split:                           ; preds = %sw.bb86, %sw.bb82, %sw.bb78, %sw.bb74, %sw.bb70, %sw.bb66, %if.end49.sw.epilog91.sink.split_crit_edge
  %.sink = phi i8 [ 7, %sw.bb86 ], [ 6, %sw.bb82 ], [ 5, %sw.bb78 ], [ 4, %sw.bb74 ], [ 3, %sw.bb70 ], [ 2, %sw.bb66 ], [ 1, %if.end49.sw.epilog91.sink.split_crit_edge ]
  %sgl87 = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 13
  %52 = ptrtoint ptr %sgl87 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %.sink, ptr %sgl87, align 8
  br label %sw.epilog91

sw.epilog91:                                      ; preds = %sw.epilog91.sink.split, %if.end49.sw.epilog91_crit_edge
  %53 = tail call i16 @llvm.bswap.i16(i16 %46)
  %sgl92 = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 13
  %eedp_flags94 = getelementptr inbounds %struct.mpi3_sge_extended_eedp, ptr %sgl92, i32 0, i32 2
  %54 = ptrtoint ptr %eedp_flags94 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %eedp_flags94, align 2
  %flags = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 13, i32 0, i32 0, i32 3
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -16, ptr %flags, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog91, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpi3mr_build_sg_scmd(ptr noundef %mrioc, ptr noundef %scmd, ptr noundef %scsiio_req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mpi3mr_prepare_sg_scmd(ptr noundef %mrioc, ptr noundef %scmd, ptr noundef %scsiio_req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_flags = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 5
  %0 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msg_flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %1)
  %cmp = icmp eq i8 %1, -128
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %flags = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 256
  store i32 %or, ptr %flags, align 4
  %call3 = tail call fastcc i32 @mpi3mr_prepare_sg_scmd(ptr noundef %mrioc, ptr noundef %scmd, ptr noundef %scsiio_req)
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi3mr_op_request_post(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_build_sense_buffer(i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_unique_tag(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpi3mr_prepare_sg_scmd(ptr noundef %mrioc, ptr noundef %scmd, ptr noundef %scsiio_req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %arrayidx = getelementptr %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 13, i32 3
  %sgl2 = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 13
  %sg_local.0 = select i1 %tobool.not, ptr %sgl2, ptr %arrayidx
  %data_length = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 10
  %3 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp ne i32 %4, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %tobool3.not, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %if.end6, label %if.then5

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mpi3mr_build_zero_len_sge(ptr noundef %sg_local.0) #18
  br label %cleanup

if.end6:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else13, label %if.then8

if.then8:                                         ; preds = %if.end6
  %prot_sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 18
  %5 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then8.scsi_prot_sg_count.exit_crit_edge, label %cond.true.i168

if.then8.scsi_prot_sg_count.exit_crit_edge:       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #20
  br label %scsi_prot_sg_count.exit

cond.true.i168:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %nents.i = getelementptr inbounds %struct.sg_table, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nents.i, align 4
  br label %scsi_prot_sg_count.exit

scsi_prot_sg_count.exit:                          ; preds = %cond.true.i168, %if.then8.scsi_prot_sg_count.exit_crit_edge
  %cond.i173179 = phi ptr [ %8, %cond.true.i168 ], [ null, %if.then8.scsi_prot_sg_count.exit_crit_edge ]
  %cond.i169 = phi i32 [ %10, %cond.true.i168 ], [ 0, %if.then8.scsi_prot_sg_count.exit_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 1
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn.in, align 8
  %dev174178 = getelementptr inbounds %struct.pci_dev, ptr %.pn, i32 0, i32 44
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 15
  %12 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sc_data_direction, align 4
  %call12 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev174178, ptr noundef %cond.i173179, i32 noundef %cond.i169, i32 noundef %13, i32 noundef 0) #18
  %meta_sg_valid = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %meta_sg_valid to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %meta_sg_valid, align 1
  br label %if.end16

if.else13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17
  %15 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdb.i, align 4
  %call15 = tail call i32 @scsi_dma_map(ptr noundef %scmd) #18
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %scsi_prot_sg_count.exit
  %sg_scmd.0 = phi ptr [ %cond.i173179, %scsi_prot_sg_count.exit ], [ %16, %if.else13 ]
  %sges_left.0 = phi i32 [ %call12, %scsi_prot_sg_count.exit ], [ %call15, %if.else13 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sges_left.0)
  %cmp = icmp slt i32 %sges_left.0, 0
  br i1 %cmp, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 1
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.204, ptr noundef %18, ptr noundef null, ptr noundef nonnull @.str.237, i32 noundef %20) #18
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sges_left.0)
  %cmp21 = icmp ugt i32 %sges_left.0, 256
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  %device24 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %21 = ptrtoint ptr %device24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device24, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.204, ptr noundef %22, ptr noundef null, ptr noundef nonnull @.str.238, i32 noundef %sges_left.0) #18
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %op_req_sz = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 38, i32 5
  %23 = ptrtoint ptr %op_req_sz to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %op_req_sz, align 4
  %conv26 = zext i16 %24 to i32
  %sub = add nsw i32 %conv26, -64
  %div157 = lshr i32 %sub, 4
  %flags29 = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 13, i32 0, i32 0, i32 3
  %25 = ptrtoint ptr %flags29 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %26)
  %cmp31 = icmp ne i8 %26, -16
  %brmerge159 = select i1 %cmp31, i1 true, i1 %tobool.not.not
  %sg_local.1.idx = select i1 %brmerge159, i32 0, i32 16
  %sg_local.1 = getelementptr i8, ptr %sg_local.0, i32 %sg_local.1.idx
  %not.brmerge159 = xor i1 %brmerge159, true
  %dec = sext i1 %not.brmerge159 to i32
  %sges_in_segment.0 = add nsw i32 %div157, %dec
  %msg_flags = getelementptr inbounds %struct.mpi3_scsi_io_request, ptr %scsiio_req, i32 0, i32 5
  %27 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %msg_flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %28)
  %cmp38 = icmp eq i8 %28, -128
  %narrow = select i1 %cmp38, i1 %tobool.not, i1 false
  %spec.select = sext i1 %narrow to i32
  %sges_in_segment.1 = add nsw i32 %sges_in_segment.0, %spec.select
  %spec.select160 = select i1 %tobool.not, i32 %sges_in_segment.1, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sges_left.0, i32 %spec.select160)
  %cmp48.not = icmp ugt i32 %sges_left.0, %spec.select160
  br i1 %cmp48.not, label %while.cond.preheader, label %if.end25.fill_in_last_segment_crit_edge

if.end25.fill_in_last_segment_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %fill_in_last_segment

while.cond.preheader:                             ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select160)
  %cmp52183 = icmp ugt i32 %spec.select160, 1
  br i1 %cmp52183, label %while.body.preheader, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %29 = add nuw nsw i32 %sges_left.0, 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %sges_in_segment.3187 = phi i32 [ %dec57, %while.body.while.body_crit_edge ], [ %spec.select160, %while.body.preheader ]
  %sg_local.2185 = phi ptr [ %add.ptr55, %while.body.while.body_crit_edge ], [ %sg_local.1, %while.body.preheader ]
  %sg_scmd.1184 = phi ptr [ %call54, %while.body.while.body_crit_edge ], [ %sg_scmd.0, %while.body.preheader ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg_scmd.1184, i32 0, i32 4
  %30 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_length, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg_scmd.1184, i32 0, i32 3
  %32 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_address, align 4
  tail call void @mpi3mr_add_sg_single(ptr noundef %sg_local.2185, i8 noundef zeroext 0, i32 noundef %31, i32 noundef %33) #18
  %call54 = tail call ptr @sg_next(ptr noundef %sg_scmd.1184) #18
  %add.ptr55 = getelementptr i8, ptr %sg_local.2185, i32 16
  %dec57 = add i32 %sges_in_segment.3187, -1
  %cmp52 = icmp ugt i32 %dec57, 1
  br i1 %cmp52, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %34 = sub i32 %29, %spec.select160
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader.while.end_crit_edge
  %sg_scmd.1.lcssa = phi ptr [ %sg_scmd.0, %while.cond.preheader.while.end_crit_edge ], [ %call54, %while.end.loopexit ]
  %sg_local.2.lcssa = phi ptr [ %sg_local.1, %while.cond.preheader.while.end_crit_edge ], [ %add.ptr55, %while.end.loopexit ]
  %sges_left.1.lcssa = phi i32 [ %sges_left.0, %while.cond.preheader.while.end_crit_edge ], [ %34, %while.end.loopexit ]
  %chain_buf_lock.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 83
  %chain_bitmap.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 82
  %chain_buf_count.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 78
  tail call void @_raw_spin_lock(ptr noundef %chain_buf_lock.i) #18
  %35 = ptrtoint ptr %chain_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chain_bitmap.i, align 4
  %37 = ptrtoint ptr %chain_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chain_buf_count.i, align 4
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %36, i32 noundef %38) #18
  %39 = ptrtoint ptr %chain_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chain_buf_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %40)
  %cmp.i = icmp ult i32 %call.i, %40
  br i1 %cmp.i, label %while.end.mpi3mr_get_chain_idx.exit_crit_edge, label %if.end.i

while.end.mpi3mr_get_chain_idx.exit_crit_edge:    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_get_chain_idx.exit

if.end.i:                                         ; preds = %while.end
  tail call void @_raw_spin_unlock(ptr noundef %chain_buf_lock.i) #18
  tail call void @_raw_spin_lock(ptr noundef %chain_buf_lock.i) #18
  %41 = ptrtoint ptr %chain_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chain_bitmap.i, align 4
  %43 = ptrtoint ptr %chain_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %chain_buf_count.i, align 4
  %call.1.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %42, i32 noundef %44) #18
  %45 = ptrtoint ptr %chain_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chain_buf_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.1.i, i32 %46)
  %cmp.1.i = icmp ult i32 %call.1.i, %46
  br i1 %cmp.1.i, label %if.end.i.mpi3mr_get_chain_idx.exit_crit_edge, label %if.end.1.i

if.end.i.mpi3mr_get_chain_idx.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_get_chain_idx.exit

if.end.1.i:                                       ; preds = %if.end.i
  tail call void @_raw_spin_unlock(ptr noundef %chain_buf_lock.i) #18
  tail call void @_raw_spin_lock(ptr noundef %chain_buf_lock.i) #18
  %47 = ptrtoint ptr %chain_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chain_bitmap.i, align 4
  %49 = ptrtoint ptr %chain_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chain_buf_count.i, align 4
  %call.2.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %48, i32 noundef %50) #18
  %51 = ptrtoint ptr %chain_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %chain_buf_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.2.i, i32 %52)
  %cmp.2.i = icmp ult i32 %call.2.i, %52
  br i1 %cmp.2.i, label %if.end.1.i.mpi3mr_get_chain_idx.exit_crit_edge, label %if.end.2.i

if.end.1.i.mpi3mr_get_chain_idx.exit_crit_edge:   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_get_chain_idx.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  tail call void @_raw_spin_unlock(ptr noundef %chain_buf_lock.i) #18
  tail call void @_raw_spin_lock(ptr noundef %chain_buf_lock.i) #18
  %53 = ptrtoint ptr %chain_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chain_bitmap.i, align 4
  %55 = ptrtoint ptr %chain_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %chain_buf_count.i, align 4
  %call.3.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %54, i32 noundef %56) #18
  %57 = ptrtoint ptr %chain_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chain_buf_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.3.i, i32 %58)
  %cmp.3.i = icmp ult i32 %call.3.i, %58
  br i1 %cmp.3.i, label %if.end.2.i.mpi3mr_get_chain_idx.exit_crit_edge, label %if.end.3.i

if.end.2.i.mpi3mr_get_chain_idx.exit_crit_edge:   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_get_chain_idx.exit

if.end.3.i:                                       ; preds = %if.end.2.i
  tail call void @_raw_spin_unlock(ptr noundef %chain_buf_lock.i) #18
  tail call void @_raw_spin_lock(ptr noundef %chain_buf_lock.i) #18
  %59 = ptrtoint ptr %chain_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chain_bitmap.i, align 4
  %61 = ptrtoint ptr %chain_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %chain_buf_count.i, align 4
  %call.4.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %60, i32 noundef %62) #18
  %63 = ptrtoint ptr %chain_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %chain_buf_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.4.i, i32 %64)
  %cmp.4.i = icmp ult i32 %call.4.i, %64
  br i1 %cmp.4.i, label %if.end.3.i.mpi3mr_get_chain_idx.exit_crit_edge, label %if.end.4.i

if.end.3.i.mpi3mr_get_chain_idx.exit_crit_edge:   ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_get_chain_idx.exit

if.end.4.i:                                       ; preds = %if.end.3.i
  tail call void @_raw_spin_unlock(ptr noundef %chain_buf_lock.i) #18
  tail call void @_raw_spin_lock(ptr noundef %chain_buf_lock.i) #18
  %65 = ptrtoint ptr %chain_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chain_bitmap.i, align 4
  %67 = ptrtoint ptr %chain_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %chain_buf_count.i, align 4
  %call.5.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %66, i32 noundef %68) #18
  %69 = ptrtoint ptr %chain_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %chain_buf_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.5.i, i32 %70)
  %cmp.5.i = icmp ult i32 %call.5.i, %70
  br i1 %cmp.5.i, label %if.end.4.i.mpi3mr_get_chain_idx.exit_crit_edge, label %mpi3mr_get_chain_idx.exit.thread

if.end.4.i.mpi3mr_get_chain_idx.exit_crit_edge:   ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_get_chain_idx.exit

mpi3mr_get_chain_idx.exit.thread:                 ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_raw_spin_unlock(ptr noundef %chain_buf_lock.i) #18
  br label %cleanup

mpi3mr_get_chain_idx.exit:                        ; preds = %if.end.4.i.mpi3mr_get_chain_idx.exit_crit_edge, %if.end.3.i.mpi3mr_get_chain_idx.exit_crit_edge, %if.end.2.i.mpi3mr_get_chain_idx.exit_crit_edge, %if.end.1.i.mpi3mr_get_chain_idx.exit_crit_edge, %if.end.i.mpi3mr_get_chain_idx.exit_crit_edge, %while.end.mpi3mr_get_chain_idx.exit_crit_edge
  %call.lcssa.i = phi i32 [ %call.i, %while.end.mpi3mr_get_chain_idx.exit_crit_edge ], [ %call.1.i, %if.end.i.mpi3mr_get_chain_idx.exit_crit_edge ], [ %call.2.i, %if.end.1.i.mpi3mr_get_chain_idx.exit_crit_edge ], [ %call.3.i, %if.end.2.i.mpi3mr_get_chain_idx.exit_crit_edge ], [ %call.4.i, %if.end.3.i.mpi3mr_get_chain_idx.exit_crit_edge ], [ %call.5.i, %if.end.4.i.mpi3mr_get_chain_idx.exit_crit_edge ]
  %71 = ptrtoint ptr %chain_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chain_bitmap.i, align 4
  tail call void @_set_bit(i32 noundef %call.lcssa.i, ptr noundef %72) #18
  tail call void @_raw_spin_unlock(ptr noundef %chain_buf_lock.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.lcssa.i)
  %cmp59 = icmp slt i32 %call.lcssa.i, 0
  br i1 %cmp59, label %mpi3mr_get_chain_idx.exit.cleanup_crit_edge, label %if.end62

mpi3mr_get_chain_idx.exit.cleanup_crit_edge:      ; preds = %mpi3mr_get_chain_idx.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end62:                                         ; preds = %mpi3mr_get_chain_idx.exit
  call void @__sanitizer_cov_trace_pc() #20
  %chain_sgl_list = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 80
  %73 = ptrtoint ptr %chain_sgl_list to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chain_sgl_list, align 4
  %arrayidx63 = getelementptr %struct.chain_element, ptr %74, i32 %call.lcssa.i
  %chain_idx67 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 12
  %meta_chain_idx = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 1
  %chain_idx67.sink = select i1 %tobool.not, ptr %chain_idx67, ptr %meta_chain_idx
  %75 = ptrtoint ptr %chain_idx67.sink to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call.lcssa.i, ptr %chain_idx67.sink, align 4
  %76 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx63, align 4
  %dma_addr = getelementptr %struct.chain_element, ptr %74, i32 %call.lcssa.i, i32 1
  %78 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma_addr, align 4
  %mul = shl i32 %sges_left.1.lcssa, 4
  tail call void @mpi3mr_add_sg_single(ptr noundef %sg_local.2.lcssa, i8 noundef zeroext 48, i32 noundef %mul, i32 noundef %79) #18
  br label %fill_in_last_segment

fill_in_last_segment:                             ; preds = %if.end62, %if.end25.fill_in_last_segment_crit_edge
  %sg_scmd.2 = phi ptr [ %sg_scmd.0, %if.end25.fill_in_last_segment_crit_edge ], [ %sg_scmd.1.lcssa, %if.end62 ]
  %sg_local.3 = phi ptr [ %sg_local.1, %if.end25.fill_in_last_segment_crit_edge ], [ %77, %if.end62 ]
  %sges_left.2 = phi i32 [ %sges_left.0, %if.end25.fill_in_last_segment_crit_edge ], [ %sges_left.1.lcssa, %if.end62 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sges_left.2)
  %cmp70190 = icmp sgt i32 %sges_left.2, 0
  br i1 %cmp70190, label %while.body72.preheader, label %fill_in_last_segment.cleanup_crit_edge

fill_in_last_segment.cleanup_crit_edge:           ; preds = %fill_in_last_segment
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body72.preheader:                           ; preds = %fill_in_last_segment
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sges_left.2)
  %cmp73200 = icmp eq i32 %sges_left.2, 1
  br i1 %cmp73200, label %while.body72.preheader.cleanup.loopexit_crit_edge, label %while.body72.preheader.if.end81_crit_edge

while.body72.preheader.if.end81_crit_edge:        ; preds = %while.body72.preheader
  br label %if.end81

while.body72.preheader.cleanup.loopexit_crit_edge: ; preds = %while.body72.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.loopexit

if.end81:                                         ; preds = %if.end81.if.end81_crit_edge, %while.body72.preheader.if.end81_crit_edge
  %sg_scmd.3191203 = phi ptr [ %call82, %if.end81.if.end81_crit_edge ], [ %sg_scmd.2, %while.body72.preheader.if.end81_crit_edge ]
  %sg_local.4193202 = phi ptr [ %add.ptr83, %if.end81.if.end81_crit_edge ], [ %sg_local.3, %while.body72.preheader.if.end81_crit_edge ]
  %sges_left.3195201 = phi i32 [ %dec84, %if.end81.if.end81_crit_edge ], [ %sges_left.2, %while.body72.preheader.if.end81_crit_edge ]
  %dma_length79 = getelementptr inbounds %struct.scatterlist, ptr %sg_scmd.3191203, i32 0, i32 4
  %80 = ptrtoint ptr %dma_length79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma_length79, align 4
  %dma_address80 = getelementptr inbounds %struct.scatterlist, ptr %sg_scmd.3191203, i32 0, i32 3
  %82 = ptrtoint ptr %dma_address80 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma_address80, align 4
  tail call void @mpi3mr_add_sg_single(ptr noundef %sg_local.4193202, i8 noundef zeroext 0, i32 noundef %81, i32 noundef %83) #18
  %call82 = tail call ptr @sg_next(ptr noundef %sg_scmd.3191203) #18
  %add.ptr83 = getelementptr i8, ptr %sg_local.4193202, i32 16
  %dec84 = add nsw i32 %sges_left.3195201, -1
  %cmp73 = icmp eq i32 %dec84, 1
  br i1 %cmp73, label %if.end81.cleanup.loopexit_crit_edge, label %if.end81.if.end81_crit_edge

if.end81.if.end81_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end81

if.end81.cleanup.loopexit_crit_edge:              ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %if.end81.cleanup.loopexit_crit_edge, %while.body72.preheader.cleanup.loopexit_crit_edge
  %sg_local.4193.lcssa = phi ptr [ %sg_local.3, %while.body72.preheader.cleanup.loopexit_crit_edge ], [ %add.ptr83, %if.end81.cleanup.loopexit_crit_edge ]
  %sg_scmd.3191.lcssa = phi ptr [ %sg_scmd.2, %while.body72.preheader.cleanup.loopexit_crit_edge ], [ %call82, %if.end81.cleanup.loopexit_crit_edge ]
  %dma_length76 = getelementptr inbounds %struct.scatterlist, ptr %sg_scmd.3191.lcssa, i32 0, i32 4
  %84 = ptrtoint ptr %dma_length76 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_length76, align 4
  %dma_address77 = getelementptr inbounds %struct.scatterlist, ptr %sg_scmd.3191.lcssa, i32 0, i32 3
  %86 = ptrtoint ptr %dma_address77 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dma_address77, align 4
  tail call void @mpi3mr_add_sg_single(ptr noundef %sg_local.4193.lcssa, i8 noundef zeroext 8, i32 noundef %85, i32 noundef %87) #18
  %call82196 = tail call ptr @sg_next(ptr noundef %sg_scmd.3191.lcssa) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %fill_in_last_segment.cleanup_crit_edge, %mpi3mr_get_chain_idx.exit.cleanup_crit_edge, %mpi3mr_get_chain_idx.exit.thread, %if.then23, %if.then18, %if.then5
  %retval.0 = phi i32 [ -12, %if.then18 ], [ -12, %if.then23 ], [ 0, %if.then5 ], [ -1, %mpi3mr_get_chain_idx.exit.cleanup_crit_edge ], [ -1, %mpi3mr_get_chain_idx.exit.thread ], [ 0, %fill_in_last_segment.cleanup_crit_edge ], [ 0, %cleanup.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi3mr_build_zero_len_sge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi3mr_add_sg_single(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpi3mr_issue_tm(ptr noundef %mrioc, i8 noundef zeroext %tm_type, i16 noundef zeroext %handle, i32 noundef %lun, ptr noundef %drv_cmd, ptr nocapture noundef %resp_code, ptr noundef readonly %scmd) unnamed_addr #0 align 64 {
entry:
  %tm_req = alloca %struct.mpi3_scsi_task_mgmt_request, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tm_req) #18
  %0 = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_request, ptr %tm_req, i32 0, i32 2
  %1 = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_request, ptr %tm_req, i32 0, i32 3
  %2 = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_request, ptr %tm_req, i32 0, i32 6
  %3 = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_request, ptr %tm_req, i32 0, i32 7
  %4 = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_request, ptr %tm_req, i32 0, i32 8
  %5 = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_request, ptr %tm_req, i32 0, i32 9
  %6 = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_request, ptr %tm_req, i32 0, i32 11
  %7 = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_request, ptr %tm_req, i32 0, i32 13
  %8 = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_request, ptr %tm_req, i32 0, i32 14
  %9 = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_request, ptr %tm_req, i32 0, i32 14, i32 4
  %name = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 7
  %conv = zext i8 %tm_type to i32
  %conv2 = zext i16 %handle to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef %name, ptr noundef nonnull @.str.248, i32 noundef %conv, i32 noundef %conv2) #21
  %unrecoverable = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 97
  %10 = ptrtoint ptr %unrecoverable to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %unrecoverable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, ptr noundef %name, ptr noundef nonnull @.str.248) #21
  br label %out

if.end:                                           ; preds = %entry
  %12 = call ptr @memset(ptr %tm_req, i32 0, i32 32)
  tail call void @mutex_lock_nested(ptr noundef %drv_cmd, i32 noundef 0) #18
  %state = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 5
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %state, align 2
  %15 = and i16 %14, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool11.not = icmp eq i16 %15, 0
  br i1 %tobool11.not, label %if.end21, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name, ptr noundef nonnull @.str.248) #21
  tail call void @mutex_unlock(ptr noundef %drv_cmd) #18
  br label %out

if.end21:                                         ; preds = %if.end
  %reset_in_progress = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 96
  %16 = ptrtoint ptr %reset_in_progress to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reset_in_progress, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool22.not = icmp eq i8 %17, 0
  br i1 %tobool22.not, label %if.end32, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.255, ptr noundef %name, ptr noundef nonnull @.str.248) #21
  tail call void @mutex_unlock(ptr noundef %drv_cmd) #18
  br label %out

if.end32:                                         ; preds = %if.end21
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %state, align 2
  %is_waiting = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 9
  %19 = ptrtoint ptr %is_waiting to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %is_waiting, align 4
  %callback = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 12
  %20 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %callback, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %handle)
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %3, align 2
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %tm_type, ptr %5, align 2
  %24 = ptrtoint ptr %tm_req to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1280, ptr %tm_req, align 4
  %conv34 = zext i32 %lun to i64
  call void @int_to_scsilun(i64 noundef %conv34, ptr noundef %8) #18
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 33, ptr %0, align 1
  %call37 = call fastcc ptr @mpi3mr_get_tgtdev_by_handle(ptr noundef %mrioc, i16 noundef zeroext %handle)
  %tobool38.not = icmp eq ptr %scmd, null
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end32
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %27, i32 0, i32 21
  %28 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hostdata, align 8
  %tobool40.not = icmp eq ptr %29, null
  br i1 %tobool40.not, label %if.then39.if.end54_crit_edge, label %if.then39.if.end51_crit_edge

if.then39.if.end51_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51

if.then39.if.end54_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end54

if.else:                                          ; preds = %if.end32
  %tobool41.not = icmp eq ptr %call37, null
  br i1 %tobool41.not, label %if.else.if.end80_crit_edge, label %land.lhs.true

if.else.if.end80_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end80

land.lhs.true:                                    ; preds = %if.else
  %starget = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call37, i32 0, i32 1
  %30 = ptrtoint ptr %starget to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %starget, align 8
  %tobool42.not = icmp eq ptr %31, null
  br i1 %tobool42.not, label %land.lhs.true.land.lhs.true56_crit_edge, label %land.lhs.true43

land.lhs.true.land.lhs.true56_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true56

land.lhs.true43:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %hostdata45 = getelementptr inbounds %struct.scsi_target, ptr %31, i32 0, i32 14
  br label %if.end51

if.end51:                                         ; preds = %land.lhs.true43, %if.then39.if.end51_crit_edge
  %sdev_priv_data.0 = phi ptr [ null, %land.lhs.true43 ], [ %29, %if.then39.if.end51_crit_edge ]
  %sdev.0 = phi ptr [ null, %land.lhs.true43 ], [ %27, %if.then39.if.end51_crit_edge ]
  %scsi_tgt_priv_data.0.in = phi ptr [ %hostdata45, %land.lhs.true43 ], [ %29, %if.then39.if.end51_crit_edge ]
  %32 = ptrtoint ptr %scsi_tgt_priv_data.0.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %scsi_tgt_priv_data.0 = load ptr, ptr %scsi_tgt_priv_data.0.in, align 4
  %tobool52.not = icmp eq ptr %scsi_tgt_priv_data.0, null
  br i1 %tobool52.not, label %if.end51.if.end54_crit_edge, label %if.then53

if.end51.if.end54_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end54

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  %block_io = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.0, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %block_io, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %block_io, i32 1, i32 3, i32 1) #18
  %33 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %block_io, ptr %block_io, i32 1, ptr elementtype(i32) %block_io) #18, !srcloc !616
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end51.if.end54_crit_edge, %if.then39.if.end54_crit_edge
  %tobool52.not27 = phi i1 [ false, %if.then53 ], [ true, %if.end51.if.end54_crit_edge ], [ true, %if.then39.if.end54_crit_edge ]
  %scsi_tgt_priv_data.025 = phi ptr [ %scsi_tgt_priv_data.0, %if.then53 ], [ null, %if.end51.if.end54_crit_edge ], [ null, %if.then39.if.end54_crit_edge ]
  %sdev.024 = phi ptr [ %sdev.0, %if.then53 ], [ %sdev.0, %if.end51.if.end54_crit_edge ], [ %27, %if.then39.if.end54_crit_edge ]
  %sdev_priv_data.023 = phi ptr [ %sdev_priv_data.0, %if.then53 ], [ %sdev_priv_data.0, %if.end51.if.end54_crit_edge ], [ null, %if.then39.if.end54_crit_edge ]
  %tobool55.not = icmp eq ptr %call37, null
  br i1 %tobool55.not, label %if.end54.if.end80_crit_edge, label %if.end54.land.lhs.true56_crit_edge

if.end54.land.lhs.true56_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true56

if.end54.if.end80_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end80

land.lhs.true56:                                  ; preds = %if.end54.land.lhs.true56_crit_edge, %land.lhs.true.land.lhs.true56_crit_edge
  %sdev_priv_data.02357 = phi ptr [ %sdev_priv_data.023, %if.end54.land.lhs.true56_crit_edge ], [ null, %land.lhs.true.land.lhs.true56_crit_edge ]
  %sdev.02456 = phi ptr [ %sdev.024, %if.end54.land.lhs.true56_crit_edge ], [ null, %land.lhs.true.land.lhs.true56_crit_edge ]
  %scsi_tgt_priv_data.02555 = phi ptr [ %scsi_tgt_priv_data.025, %if.end54.land.lhs.true56_crit_edge ], [ null, %land.lhs.true.land.lhs.true56_crit_edge ]
  %tobool52.not2754 = phi i1 [ %tobool52.not27, %if.end54.land.lhs.true56_crit_edge ], [ true, %land.lhs.true.land.lhs.true56_crit_edge ]
  %dev_type = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call37, i32 0, i32 7
  %34 = ptrtoint ptr %dev_type to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dev_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp = icmp eq i8 %35, 1
  br i1 %cmp, label %land.lhs.true70, label %land.lhs.true56.if.end80_crit_edge

land.lhs.true56.if.end80_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end80

land.lhs.true70:                                  ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #20
  %reset_to = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call37, i32 0, i32 12, i32 0, i32 1
  %36 = ptrtoint ptr %reset_to to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reset_to, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool73.not = icmp eq i8 %37, 0
  %narrow = select i1 %tobool73.not, i8 60, i8 %37
  %spec.select1 = zext i8 %narrow to i32
  br label %if.end80

if.end80:                                         ; preds = %land.lhs.true70, %land.lhs.true56.if.end80_crit_edge, %if.end54.if.end80_crit_edge, %if.else.if.end80_crit_edge
  %tobool55.not47 = phi i1 [ false, %land.lhs.true56.if.end80_crit_edge ], [ true, %if.end54.if.end80_crit_edge ], [ false, %land.lhs.true70 ], [ true, %if.else.if.end80_crit_edge ]
  %sdev_priv_data.02346 = phi ptr [ %sdev_priv_data.02357, %land.lhs.true56.if.end80_crit_edge ], [ %sdev_priv_data.023, %if.end54.if.end80_crit_edge ], [ %sdev_priv_data.02357, %land.lhs.true70 ], [ null, %if.else.if.end80_crit_edge ]
  %sdev.02445 = phi ptr [ %sdev.02456, %land.lhs.true56.if.end80_crit_edge ], [ %sdev.024, %if.end54.if.end80_crit_edge ], [ %sdev.02456, %land.lhs.true70 ], [ null, %if.else.if.end80_crit_edge ]
  %scsi_tgt_priv_data.02544 = phi ptr [ %scsi_tgt_priv_data.02555, %land.lhs.true56.if.end80_crit_edge ], [ %scsi_tgt_priv_data.025, %if.end54.if.end80_crit_edge ], [ %scsi_tgt_priv_data.02555, %land.lhs.true70 ], [ null, %if.else.if.end80_crit_edge ]
  %tobool52.not2743 = phi i1 [ %tobool52.not2754, %land.lhs.true56.if.end80_crit_edge ], [ %tobool52.not27, %if.end54.if.end80_crit_edge ], [ %tobool52.not2754, %land.lhs.true70 ], [ true, %if.else.if.end80_crit_edge ]
  %timeout.addr.0 = phi i32 [ 60, %land.lhs.true56.if.end80_crit_edge ], [ 60, %if.end54.if.end80_crit_edge ], [ %spec.select1, %land.lhs.true70 ], [ 60, %if.else.if.end80_crit_edge ]
  %done = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 1
  %38 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.272, ptr noundef nonnull @init_completion.__key) #18
  %call81 = call i32 @mpi3mr_admin_request_post(ptr noundef %mrioc, ptr noundef nonnull %tm_req, i16 noundef zeroext 32, i8 noundef zeroext 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end91, label %do.end86

do.end86:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #20
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258, ptr noundef %name, ptr noundef nonnull @.str.248) #21
  br label %out_unlock

if.end91:                                         ; preds = %if.end80
  %mul = mul nuw nsw i32 %timeout.addr.0, 100
  %call93 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef %mul) #18
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %state, align 2
  %conv95 = zext i16 %40 to i32
  %and96 = and i32 %conv95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.then98, label %if.end126

if.then98:                                        ; preds = %if.end91
  %41 = ptrtoint ptr %is_waiting to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %is_waiting, align 4
  %42 = and i16 %40, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool103.not = icmp eq i16 %42, 0
  br i1 %tobool103.not, label %do.body105, label %if.then98.out_unlock_crit_edge

if.then98.out_unlock_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

do.body105:                                       ; preds = %if.then98
  %logging_level = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 104
  %43 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %logging_level, align 8
  %and106 = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %do.body105.do.end118_crit_edge, label %do.end111

do.body105.do.end118_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end118

do.end111:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #20
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.261, ptr noundef %name, i32 noundef %timeout.addr.0) #21
  br label %do.end118

do.end118:                                        ; preds = %do.end111, %do.body105.do.end118_crit_edge
  %45 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %logging_level, align 8
  %and120 = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %do.end118.if.end123_crit_edge, label %if.then122

do.end118.if.end123_crit_edge:                    ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end123

if.then122:                                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273) #21
  %47 = ptrtoint ptr %tm_req to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tm_req, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48) #18
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, i32 noundef %49) #21
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %1, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51) #18
  %call11.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, i32 noundef %52) #21
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %2, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54) #18
  %call11.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, i32 noundef %55) #21
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %4, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57) #18
  %call11.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, i32 noundef %58) #21
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %6, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60) #18
  %call11.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, i32 noundef %61) #21
  %62 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %7, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #18
  %call11.5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, i32 noundef %64) #21
  %65 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %8, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66) #18
  %call11.6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, i32 noundef %67) #21
  %68 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %9, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #18
  %call11.7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, i32 noundef %70) #21
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.283) #21
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %do.end118.if.end123_crit_edge
  %call124 = call i32 @mpi3mr_soft_reset_handler(ptr noundef %mrioc, i32 noundef 5, i8 noundef zeroext 1) #18
  br label %out_unlock

if.end126:                                        ; preds = %if.end91
  %and129 = and i32 %conv95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %do.body132, label %if.end147

do.body132:                                       ; preds = %if.end126
  %logging_level133 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 104
  %71 = ptrtoint ptr %logging_level133 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %logging_level133, align 8
  %and134 = and i32 %72, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %do.body132.out_unlock_crit_edge, label %do.end139

do.body132.out_unlock_crit_edge:                  ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

do.end139:                                        ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #20
  %call143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, ptr noundef %name) #21
  br label %out_unlock

if.end147:                                        ; preds = %if.end126
  %reply = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 2
  %73 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reply, align 4
  %ioc_status = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 7
  %75 = ptrtoint ptr %ioc_status to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ioc_status, align 2
  %conv148 = zext i16 %76 to i32
  %77 = zext i16 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.357)
  switch i16 %76, label %do.body152 [
    i16 0, label %sw.epilog
    i16 75, label %sw.epilog.thread
  ]

sw.epilog.thread:                                 ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #20
  %78 = ptrtoint ptr %resp_code to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %resp_code, align 1
  br label %do.body180

do.body152:                                       ; preds = %if.end147
  %logging_level153 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 104
  %79 = ptrtoint ptr %logging_level153 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %logging_level153, align 8
  %and154 = and i32 %80, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %do.body152.out_unlock_crit_edge, label %do.end159

do.body152.out_unlock_crit_edge:                  ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

do.end159:                                        ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #20
  %ioc_loginfo = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 8
  %81 = ptrtoint ptr %ioc_loginfo to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ioc_loginfo, align 4
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267, ptr noundef %name, i32 noundef %conv2, i32 noundef %conv148, i32 noundef %82) #21
  br label %out_unlock

sw.epilog:                                        ; preds = %if.end147
  %response_data = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_reply, ptr %74, i32 0, i32 10
  %83 = ptrtoint ptr %response_data to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %response_data, align 4
  %85 = lshr i32 %84, 24
  %conv150 = trunc i32 %85 to i8
  %86 = ptrtoint ptr %resp_code to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv150, ptr %resp_code, align 1
  %87 = zext i8 %conv150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.358)
  switch i8 %conv150, label %sw.default178 [
    i8 8, label %sw.epilog.do.body180_crit_edge
    i8 0, label %sw.epilog.do.body180_crit_edge59
    i8 -128, label %if.then176
  ]

sw.epilog.do.body180_crit_edge59:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body180

sw.epilog.do.body180_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body180

if.then176:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body180

sw.default178:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body180

do.body180:                                       ; preds = %sw.default178, %if.then176, %sw.epilog.do.body180_crit_edge, %sw.epilog.do.body180_crit_edge59, %sw.epilog.thread
  %storemerge29 = phi i8 [ %conv150, %sw.default178 ], [ %conv150, %sw.epilog.do.body180_crit_edge ], [ %conv150, %sw.epilog.do.body180_crit_edge59 ], [ -128, %if.then176 ], [ 0, %sw.epilog.thread ]
  %tobool202.not = phi i1 [ false, %sw.default178 ], [ true, %sw.epilog.do.body180_crit_edge ], [ true, %sw.epilog.do.body180_crit_edge59 ], [ false, %if.then176 ], [ true, %sw.epilog.thread ]
  %retval1.0 = phi i32 [ -1, %sw.default178 ], [ 0, %sw.epilog.do.body180_crit_edge ], [ 0, %sw.epilog.do.body180_crit_edge59 ], [ -1, %if.then176 ], [ 0, %sw.epilog.thread ]
  %logging_level181 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 104
  %88 = ptrtoint ptr %logging_level181 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %logging_level181, align 8
  %and182 = and i32 %89, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %do.body180.do.end201_crit_edge, label %do.end187

do.body180.do.end201_crit_edge:                   ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end201

do.end187:                                        ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #20
  %90 = ptrtoint ptr %ioc_status to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %ioc_status, align 2
  %conv194 = zext i16 %91 to i32
  %ioc_loginfo195 = getelementptr inbounds %struct.mpi3mr_drv_cmd, ptr %drv_cmd, i32 0, i32 8
  %92 = ptrtoint ptr %ioc_loginfo195 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ioc_loginfo195, align 4
  %termination_count = getelementptr inbounds %struct.mpi3_scsi_task_mgmt_reply, ptr %74, i32 0, i32 9
  %94 = ptrtoint ptr %termination_count to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %termination_count, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95)
  %call196 = call fastcc ptr @mpi3mr_tm_response_name(i8 noundef zeroext %storemerge29)
  %conv197 = zext i8 %storemerge29 to i32
  %call198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.270, ptr noundef %name, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv194, i32 noundef %93, i32 noundef %96, ptr noundef nonnull %call196, i32 noundef %conv197) #21
  br label %do.end201

do.end201:                                        ; preds = %do.end187, %do.body180.do.end201_crit_edge
  br i1 %tobool202.not, label %if.then203, label %do.end201.if.end204_crit_edge

do.end201.if.end204_crit_edge:                    ; preds = %do.end201
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end204

if.then203:                                       ; preds = %do.end201
  call void @mpi3mr_ioc_disable_intr(ptr noundef %mrioc) #18
  %num_op_reply_q.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 35
  %97 = ptrtoint ptr %num_op_reply_q.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %num_op_reply_q.i, align 4
  %conv.i = zext i16 %98 to i32
  %op_reply_q_offset.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 109
  %99 = ptrtoint ptr %op_reply_q_offset.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %op_reply_q_offset.i, align 2
  %conv1.i = zext i16 %100 to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %cmp11.not.i = icmp eq i16 %98, 0
  br i1 %cmp11.not.i, label %if.then203.mpi3mr_poll_pend_io_completions.exit_crit_edge, label %for.body.lr.ph.i

if.then203.mpi3mr_poll_pend_io_completions.exit_crit_edge: ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_poll_pend_io_completions.exit

for.body.lr.ph.i:                                 ; preds = %if.then203
  %intr_info.i = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 29
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ %conv1.i, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %101 = ptrtoint ptr %intr_info.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %intr_info.i, align 4
  %op_reply_q.i = getelementptr %struct.mpi3mr_intr_info, ptr %102, i32 %i.012.i, i32 2
  %103 = ptrtoint ptr %op_reply_q.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %op_reply_q.i, align 4
  %call.i3 = call i32 @mpi3mr_process_op_reply_q(ptr noundef %mrioc, ptr noundef %104) #18
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %cmp.i = icmp ult i32 %inc.i, %add.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mpi3mr_poll_pend_io_completions.exit_crit_edge

for.body.i.mpi3mr_poll_pend_io_completions.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mpi3mr_poll_pend_io_completions.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

mpi3mr_poll_pend_io_completions.exit:             ; preds = %for.body.i.mpi3mr_poll_pend_io_completions.exit_crit_edge, %if.then203.mpi3mr_poll_pend_io_completions.exit_crit_edge
  call void @mpi3mr_ioc_enable_intr(ptr noundef %mrioc) #18
  %105 = ptrtoint ptr %num_op_reply_q.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %num_op_reply_q.i, align 4
  %conv.i5 = zext i16 %106 to i32
  %107 = ptrtoint ptr %op_reply_q_offset.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %op_reply_q_offset.i, align 2
  %conv1.i7 = zext i16 %108 to i32
  %add.i8 = add nuw nsw i32 %conv1.i7, %conv.i5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %cmp11.not.i9 = icmp eq i16 %106, 0
  br i1 %cmp11.not.i9, label %mpi3mr_poll_pend_io_completions.exit.if.end204_crit_edge, label %for.body.lr.ph.i11

mpi3mr_poll_pend_io_completions.exit.if.end204_crit_edge: ; preds = %mpi3mr_poll_pend_io_completions.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end204

for.body.lr.ph.i11:                               ; preds = %mpi3mr_poll_pend_io_completions.exit
  %intr_info.i10 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 29
  br label %for.body.i17

for.body.i17:                                     ; preds = %for.body.i17.for.body.i17_crit_edge, %for.body.lr.ph.i11
  %i.012.i12 = phi i32 [ %conv1.i7, %for.body.lr.ph.i11 ], [ %inc.i15, %for.body.i17.for.body.i17_crit_edge ]
  %109 = ptrtoint ptr %intr_info.i10 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %intr_info.i10, align 4
  %op_reply_q.i13 = getelementptr %struct.mpi3mr_intr_info, ptr %110, i32 %i.012.i12, i32 2
  %111 = ptrtoint ptr %op_reply_q.i13 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %op_reply_q.i13, align 4
  %call.i14 = call i32 @mpi3mr_process_op_reply_q(ptr noundef %mrioc, ptr noundef %112) #18
  %inc.i15 = add nuw nsw i32 %i.012.i12, 1
  %cmp.i16 = icmp ult i32 %inc.i15, %add.i8
  br i1 %cmp.i16, label %for.body.i17.for.body.i17_crit_edge, label %for.body.i17.if.end204_crit_edge

for.body.i17.if.end204_crit_edge:                 ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end204

for.body.i17.for.body.i17_crit_edge:              ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i17

if.end204:                                        ; preds = %for.body.i17.if.end204_crit_edge, %mpi3mr_poll_pend_io_completions.exit.if.end204_crit_edge, %do.end201.if.end204_crit_edge
  %113 = zext i8 %tm_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.359)
  switch i8 %tm_type, label %if.end204.out_unlock_crit_edge [
    i8 3, label %sw.bb206
    i8 5, label %sw.bb211
  ]

if.end204.out_unlock_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

sw.bb206:                                         ; preds = %if.end204
  br i1 %tobool52.not2743, label %out_unlock.thread, label %out_unlock.thread33

out_unlock.thread:                                ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #20
  %114 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 -32768, ptr %state, align 2
  call void @mutex_unlock(ptr noundef %drv_cmd) #18
  br label %if.end226

out_unlock.thread33:                              ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #20
  %pend_count = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.02544, i32 0, i32 9
  %115 = ptrtoint ptr %pend_count to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %pend_count, align 4
  %shost = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 2
  %116 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %shost, align 4
  %tag_set = getelementptr inbounds %struct.Scsi_Host, ptr %117, i32 0, i32 13
  %118 = ptrtoint ptr %scsi_tgt_priv_data.02544 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %scsi_tgt_priv_data.02544, align 4
  call void @blk_mq_tagset_busy_iter(ptr noundef %tag_set, ptr noundef nonnull @mpi3mr_count_tgt_pending, ptr noundef %119) #18
  %120 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 -32768, ptr %state, align 2
  call void @mutex_unlock(ptr noundef %drv_cmd) #18
  br label %if.then223

sw.bb211:                                         ; preds = %if.end204
  %tobool212.not = icmp eq ptr %sdev_priv_data.02346, null
  br i1 %tobool212.not, label %sw.bb211.out_unlock_crit_edge, label %if.end214

sw.bb211.out_unlock_crit_edge:                    ; preds = %sw.bb211
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

if.end214:                                        ; preds = %sw.bb211
  call void @__sanitizer_cov_trace_pc() #20
  %pend_count215 = getelementptr inbounds %struct.mpi3mr_sdev_priv_data, ptr %sdev_priv_data.02346, i32 0, i32 3
  %121 = ptrtoint ptr %pend_count215 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %pend_count215, align 4
  %shost216 = getelementptr inbounds %struct.mpi3mr_ioc, ptr %mrioc, i32 0, i32 2
  %122 = ptrtoint ptr %shost216 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %shost216, align 4
  %tag_set217 = getelementptr inbounds %struct.Scsi_Host, ptr %123, i32 0, i32 13
  call void @blk_mq_tagset_busy_iter(ptr noundef %tag_set217, ptr noundef nonnull @mpi3mr_count_dev_pending, ptr noundef %sdev.02445) #18
  br label %out_unlock

out_unlock:                                       ; preds = %if.end214, %sw.bb211.out_unlock_crit_edge, %if.end204.out_unlock_crit_edge, %do.end159, %do.body152.out_unlock_crit_edge, %do.end139, %do.body132.out_unlock_crit_edge, %if.end123, %if.then98.out_unlock_crit_edge, %do.end86
  %retval1.1 = phi i32 [ %call81, %do.end86 ], [ %retval1.0, %if.end204.out_unlock_crit_edge ], [ %retval1.0, %if.end214 ], [ %retval1.0, %sw.bb211.out_unlock_crit_edge ], [ -1, %if.then98.out_unlock_crit_edge ], [ -1, %if.end123 ], [ -1, %do.end139 ], [ -1, %do.body132.out_unlock_crit_edge ], [ -1, %do.end159 ], [ -1, %do.body152.out_unlock_crit_edge ]
  %124 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 -32768, ptr %state, align 2
  call void @mutex_unlock(ptr noundef %drv_cmd) #18
  br i1 %tobool52.not2743, label %out_unlock.if.end226_crit_edge, label %out_unlock.if.then223_crit_edge

out_unlock.if.then223_crit_edge:                  ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then223

out_unlock.if.end226_crit_edge:                   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end226

if.then223:                                       ; preds = %out_unlock.if.then223_crit_edge, %out_unlock.thread33
  %retval1.137 = phi i32 [ %retval1.0, %out_unlock.thread33 ], [ %retval1.1, %out_unlock.if.then223_crit_edge ]
  %block_io224 = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %scsi_tgt_priv_data.02544, i32 0, i32 4
  %call.i.i2 = call zeroext i1 @__kasan_check_write(ptr noundef %block_io224, i32 noundef 4) #18
  %125 = ptrtoint ptr %block_io224 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %block_io224, align 4
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, %if.then223
  %c.0.i.i = phi i32 [ %126, %if.then223 ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge ]
  %sub.i.i = add i32 %c.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.body1.i.i.if.end226_crit_edge, label %do.cond3.i.i, !prof !614

do.body1.i.i.if.end226_crit_edge:                 ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end226

do.cond3.i.i:                                     ; preds = %do.body1.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !617
  call void @llvm.prefetch.p0(ptr %block_io224, i32 1, i32 3, i32 1) #18
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond3.i.i
  %127 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %block_io224, ptr %block_io224, i32 %c.0.i.i, i32 %sub.i.i, ptr elementtype(i32) %block_io224) #18, !srcloc !618
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %127, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %127, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !619
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %c.0.i.i
  br i1 %cmp.not.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.if.end226_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, !prof !612

arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body1.i.i

arch_atomic_cmpxchg.exit.i.i.i.if.end226_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end226

if.end226:                                        ; preds = %arch_atomic_cmpxchg.exit.i.i.i.if.end226_crit_edge, %do.body1.i.i.if.end226_crit_edge, %out_unlock.if.end226_crit_edge, %out_unlock.thread
  %retval1.132 = phi i32 [ %retval1.0, %out_unlock.thread ], [ %retval1.1, %out_unlock.if.end226_crit_edge ], [ %retval1.137, %do.body1.i.i.if.end226_crit_edge ], [ %retval1.137, %arch_atomic_cmpxchg.exit.i.i.i.if.end226_crit_edge ]
  br i1 %tobool55.not47, label %if.end226.out_crit_edge, label %if.then228

if.end226.out_crit_edge:                          ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then228:                                       ; preds = %if.end226
  %ref_count.i = getelementptr inbounds %struct.mpi3mr_tgt_dev, ptr %call37, i32 0, i32 13
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #18
  %128 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #18, !srcloc !611
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %128, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i, !prof !612

if.end5.i.i.i.i.i.out_crit_edge:                  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef 3) #18
  br label %out

if.then.i.i:                                      ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !613
  call void @kfree(ptr noundef %call37) #18
  br label %out

out:                                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.out_crit_edge, %if.end226.out_crit_edge, %if.then23, %if.then12, %if.then
  %retval1.2 = phi i32 [ -1, %if.then ], [ -1, %if.then12 ], [ -1, %if.then23 ], [ %retval1.132, %if.end226.out_crit_edge ], [ %retval1.132, %if.end5.i.i.i.i.i.out_crit_edge ], [ %retval1.132, %if.then10.i.i.i.i.i ], [ %retval1.132, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tm_req) #18
  ret i32 %retval1.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi3mr_soft_reset_handler(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @mpi3mr_tm_response_name(i8 noundef zeroext %resp_code) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %resp_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.360)
  switch i8 %resp_code, label %sw.default [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 2, label %sw.bb1
    i8 4, label %sw.bb2
    i8 5, label %sw.bb3
    i8 8, label %sw.bb4
    i8 9, label %sw.bb5
    i8 10, label %sw.bb6
    i8 -128, label %sw.bb7
    i8 -127, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %desc.0 = phi ptr [ @.str.145, %sw.default ], [ @.str.293, %sw.bb8 ], [ @.str.292, %sw.bb7 ], [ @.str.291, %sw.bb6 ], [ @.str.290, %sw.bb5 ], [ @.str.289, %sw.bb4 ], [ @.str.288, %sw.bb3 ], [ @.str.287, %sw.bb2 ], [ @.str.286, %sw.bb1 ], [ @.str.285, %entry.sw.epilog_crit_edge ]
  ret ptr %desc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi3mr_ioc_disable_intr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi3mr_ioc_enable_intr(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mpi3mr_count_tgt_pending(ptr noundef readonly %rq, ptr noundef readonly %data, i1 noundef zeroext %reserved) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.scsi_target, ptr %data, i32 0, i32 14
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.then

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then:                                          ; preds = %entry
  %in_lld_scope = getelementptr %struct.request, ptr %rq, i32 2, i32 20
  %2 = ptrtoint ptr %in_lld_scope to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_lld_scope, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %if.then
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.out_crit_edge, label %land.lhs.true

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

land.lhs.true:                                    ; preds = %if.end
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 55, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %7, i32 -24
  %cmp = icmp eq ptr %add.ptr.i15, %data
  br i1 %cmp, label %if.then7, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %pend_count = getelementptr inbounds %struct.mpi3mr_stgt_priv_data, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %pend_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pend_count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %pend_count, align 4
  br label %out

out:                                              ; preds = %if.then7, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge, %if.then.out_crit_edge, %entry.out_crit_edge
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mpi3mr_count_dev_pending(ptr noundef readonly %rq, ptr noundef readonly %data, i1 noundef zeroext %reserved) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %data, i32 0, i32 21
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.then

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then:                                          ; preds = %entry
  %in_lld_scope = getelementptr %struct.request, ptr %rq, i32 2, i32 20
  %2 = ptrtoint ptr %in_lld_scope to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_lld_scope, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %if.then
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %cmp = icmp eq ptr %5, %data
  br i1 %cmp, label %if.then4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %pend_count = getelementptr inbounds %struct.mpi3mr_sdev_priv_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pend_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pend_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %pend_count, align 4
  br label %out

out:                                              ; preds = %if.then4, %if.end.out_crit_edge, %if.then.out_crit_edge, %entry.out_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mpi3mr_print_scmd(ptr noundef %rq, ptr noundef %data, i1 noundef zeroext %reserved) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.then

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then:                                          ; preds = %entry
  %in_lld_scope = getelementptr %struct.request, ptr %rq, i32 2, i32 20
  %0 = ptrtoint ptr %in_lld_scope to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_lld_scope, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.then.out_crit_edge, label %do.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i11 = getelementptr %struct.request, ptr %rq, i32 2, i32 19
  %name = getelementptr inbounds %struct.mpi3mr_ioc, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %add.ptr.i11 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr.i11, align 4
  %conv = zext i16 %3 to i32
  %req_q_idx = getelementptr %struct.request, ptr %rq, i32 2, i32 22
  %4 = ptrtoint ptr %req_q_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %req_q_idx, align 4
  %conv4 = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv4, 1
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, ptr noundef %name, ptr noundef nonnull @.str.303, i32 noundef %conv, i32 noundef %add) #21
  tail call void @scsi_print_command(ptr noundef nonnull %add.ptr.i) #18
  br label %out

out:                                              ; preds = %do.end, %if.then.out_crit_edge, %entry.out_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi3mr_check_rh_fault_ioc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi3mr_start_watchdog(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi3mr_issue_port_enable(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_pci_map_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_map_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_choose_state(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi3mr_memset_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi3mr_reinit_ioc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_unblock_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 322)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 322)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !220, !221, !222, !223, !224, !225, !226, !227, !229, !230, !231, !232, !234, !235, !236, !238, !239, !241, !242, !243, !244, !246, !247, !248, !249, !251, !252, !253, !255, !257, !259, !261, !263, !265, !266, !267, !268, !270, !271, !272, !274, !276, !278, !280, !282, !284, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !305, !306, !307, !308, !309, !310, !312, !314, !316, !318, !319, !321, !322, !324, !325, !327, !328, !330, !331, !333, !334, !336, !337, !339, !340, !342, !343, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !358, !360, !361, !362, !364, !365, !366, !368, !369, !370, !372, !373, !375, !376, !377, !378, !379, !380, !382, !383, !384, !386, !387, !388, !389, !391, !392, !393, !395, !396, !397, !399, !401, !403, !405, !406, !407, !408, !410, !411, !412, !414, !415, !416, !418, !419, !420, !422, !423, !424, !426, !427, !428, !430, !432, !434, !436, !438, !440, !442, !444, !445, !446, !448, !449, !450, !451, !453, !454, !455, !457, !458, !460, !461, !462, !464, !465, !466, !468, !469, !470, !472, !473, !474, !476, !477, !478, !480, !481, !482, !484, !485, !487, !488, !489, !490, !491, !493, !494, !495, !497, !498, !499, !501, !502, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !536, !537, !538, !540, !541, !542, !543, !545, !546, !547, !548, !550, !551, !552, !554, !555, !556, !558, !559, !560, !562, !563, !564, !565, !567, !568, !569, !571, !573, !574, !576, !577, !578, !579, !581, !582, !583, !584, !586, !587, !588, !590, !591, !592, !594, !595, !596, !597, !599, !600}
!llvm.module.flags = !{!601, !602, !603, !604, !605, !606, !607, !608}
!llvm.ident = !{!609}

!0 = !{ptr @mrioc_list, !1, !"mrioc_list", i1 false, i1 false}
!1 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 13, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 14, i32 1}
!4 = !{ptr @mrioc_list_lock, !3, !"mrioc_list_lock", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author287, !6, !"__UNIQUE_ID_author287", i1 false, i1 false}
!6 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 18, i32 1}
!7 = !{ptr @__UNIQUE_ID_description288, !8, !"__UNIQUE_ID_description288", i1 false, i1 false}
!8 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 19, i32 1}
!9 = !{ptr @__UNIQUE_ID_license289, !10, !"__UNIQUE_ID_license289", i1 false, i1 false}
!10 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 20, i32 1}
!11 = !{ptr @__UNIQUE_ID_version290, !12, !"__UNIQUE_ID_version290", i1 false, i1 false}
!12 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 21, i32 1}
!13 = !{ptr @prot_mask, !14, !"prot_mask", i1 false, i1 false}
!14 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 24, i32 5}
!15 = !{ptr @__param_prot_mask, !16, !"__param_prot_mask", i1 false, i1 false}
!16 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 25, i32 1}
!17 = !{ptr @__UNIQUE_ID_prot_masktype291, !16, !"__UNIQUE_ID_prot_masktype291", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_prot_mask292, !19, !"__UNIQUE_ID_prot_mask292", i1 false, i1 false}
!19 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 26, i32 1}
!20 = !{ptr @__param_prot_guard_mask, !21, !"__param_prot_guard_mask", i1 false, i1 false}
!21 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 29, i32 1}
!22 = !{ptr @__UNIQUE_ID_prot_guard_masktype293, !21, !"__UNIQUE_ID_prot_guard_masktype293", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_prot_guard_mask294, !24, !"__UNIQUE_ID_prot_guard_mask294", i1 false, i1 false}
!24 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 30, i32 1}
!25 = !{ptr @__param_logging_level, !26, !"__param_logging_level", i1 false, i1 false}
!26 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 32, i32 1}
!27 = !{ptr @__UNIQUE_ID_logging_leveltype295, !26, !"__UNIQUE_ID_logging_leveltype295", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_logging_level296, !29, !"__UNIQUE_ID_logging_level296", i1 false, i1 false}
!29 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 33, i32 1}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 506, i32 2}
!32 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mpi3mr_flush_host_io._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @mpi3mr_flush_host_io._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 509, i32 2}
!38 = !{ptr @mpi3mr_flush_host_io._entry.4, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mpi3mr_flush_host_io._entry_ptr.6, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1487, i32 2}
!42 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mpi3mr_flush_delayed_cmd_lists._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mpi3mr_flush_delayed_cmd_lists._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1494, i32 2}
!47 = !{ptr @mpi3mr_flush_delayed_cmd_lists._entry.9, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mpi3mr_flush_delayed_cmd_lists._entry_ptr.11, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2215, i32 4}
!51 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mpi3mr_os_handle_events._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mpi3mr_os_handle_events._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2273, i32 3}
!56 = !{ptr @mpi3mr_os_handle_events._entry.14, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mpi3mr_os_handle_events._entry_ptr.16, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2281, i32 4}
!60 = !{ptr @mpi3mr_os_handle_events._entry.17, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mpi3mr_os_handle_events._entry_ptr.19, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2514, i32 10}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2534, i32 10}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2545, i32 9}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2637, i32 3}
!70 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mpi3mr_process_op_reply_desc._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mpi3mr_process_op_reply_desc._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2640, i32 3}
!75 = !{ptr @mpi3mr_process_op_reply_desc._entry.25, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mpi3mr_process_op_reply_desc._entry_ptr.27, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2644, i32 3}
!79 = !{ptr @mpi3mr_process_op_reply_desc._entry.28, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @mpi3mr_process_op_reply_desc._entry_ptr.30, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2649, i32 4}
!83 = !{ptr @mpi3mr_process_op_reply_desc._entry.31, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @mpi3mr_process_op_reply_desc._entry_ptr.33, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3268, i32 2}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @mpi3mr_wait_for_host_io._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @mpi3mr_wait_for_host_io._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3281, i32 2}
!92 = !{ptr @mpi3mr_wait_for_host_io._entry.36, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mpi3mr_wait_for_host_io._entry_ptr.38, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @logging_level, !95, !"logging_level", i1 false, i1 false}
!95 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 31, i32 12}
!96 = !{ptr @___asan_gen_.370, !16, !"__param_str_prot_mask", i1 false, i1 false}
!97 = !{ptr @___asan_gen_.373, !21, !"__param_str_prot_guard_mask", i1 false, i1 false}
!98 = !{ptr @prot_guard_mask, !99, !"prot_guard_mask", i1 false, i1 false}
!99 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 28, i32 12}
!100 = !{ptr @___asan_gen_.376, !26, !"__param_str_logging_level", i1 false, i1 false}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 709, i32 2}
!103 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mpi3mr_remove_tgtdev_from_host._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @mpi3mr_remove_tgtdev_from_host._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 720, i32 2}
!108 = !{ptr @mpi3mr_remove_tgtdev_from_host._entry.41, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @mpi3mr_remove_tgtdev_from_host._entry_ptr.43, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 969, i32 4}
!112 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @mpi3mr_update_tgtdev._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @mpi3mr_update_tgtdev._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 971, i32 4}
!117 = !{ptr @mpi3mr_update_tgtdev._entry.46, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @mpi3mr_update_tgtdev._entry_ptr.48, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1671, i32 3}
!121 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @mpi3mr_dev_rmhs_send_tm._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @mpi3mr_dev_rmhs_send_tm._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1679, i32 2}
!126 = !{ptr @mpi3mr_dev_rmhs_send_tm._entry.51, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @mpi3mr_dev_rmhs_send_tm._entry_ptr.53, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1685, i32 3}
!130 = !{ptr @mpi3mr_dev_rmhs_send_tm._entry.54, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @mpi3mr_dev_rmhs_send_tm._entry_ptr.56, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1702, i32 3}
!134 = !{ptr @mpi3mr_dev_rmhs_send_tm._entry.57, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @mpi3mr_dev_rmhs_send_tm._entry_ptr.59, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1590, i32 3}
!138 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @mpi3mr_dev_rmhs_complete_tm._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @mpi3mr_dev_rmhs_complete_tm._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1596, i32 2}
!143 = !{ptr @mpi3mr_dev_rmhs_complete_tm._entry.62, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @mpi3mr_dev_rmhs_complete_tm._entry_ptr.64, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1612, i32 3}
!147 = !{ptr @mpi3mr_dev_rmhs_complete_tm._entry.65, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @mpi3mr_dev_rmhs_complete_tm._entry_ptr.67, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1520, i32 2}
!151 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @mpi3mr_dev_rmhs_complete_iou._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @mpi3mr_dev_rmhs_complete_iou._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1527, i32 4}
!156 = !{ptr @mpi3mr_dev_rmhs_complete_iou._entry.70, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @mpi3mr_dev_rmhs_complete_iou._entry_ptr.72, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1535, i32 3}
!160 = !{ptr @mpi3mr_dev_rmhs_complete_iou._entry.73, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @mpi3mr_dev_rmhs_complete_iou._entry_ptr.75, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1539, i32 3}
!164 = !{ptr @mpi3mr_dev_rmhs_complete_iou._entry.76, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @mpi3mr_dev_rmhs_complete_iou._entry_ptr.78, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1551, i32 3}
!168 = !{ptr @mpi3mr_dev_rmhs_complete_iou._entry.79, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @mpi3mr_dev_rmhs_complete_iou._entry_ptr.81, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2075, i32 3}
!172 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @mpi3mr_preparereset_evt_th._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @mpi3mr_preparereset_evt_th._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2082, i32 3}
!177 = !{ptr @mpi3mr_preparereset_evt_th._entry.84, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @mpi3mr_preparereset_evt_th._entry_ptr.86, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1780, i32 3}
!181 = !{ptr @.str.88, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @mpi3mr_send_event_ack._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @mpi3mr_send_event_ack._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1785, i32 2}
!186 = !{ptr @mpi3mr_send_event_ack._entry.89, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @mpi3mr_send_event_ack._entry_ptr.91, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1809, i32 3}
!190 = !{ptr @mpi3mr_send_event_ack._entry.92, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @mpi3mr_send_event_ack._entry_ptr.94, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1821, i32 3}
!194 = !{ptr @mpi3mr_send_event_ack._entry.95, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @mpi3mr_send_event_ack._entry_ptr.97, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.99, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1835, i32 3}
!198 = !{ptr @mpi3mr_send_event_ack._entry.98, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @mpi3mr_send_event_ack._entry_ptr.100, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.102, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1840, i32 2}
!202 = !{ptr @mpi3mr_send_event_ack._entry.101, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @mpi3mr_send_event_ack._entry_ptr.103, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.104, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1734, i32 3}
!206 = !{ptr @.str.105, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @mpi3mr_complete_evt_ack._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @mpi3mr_complete_evt_ack._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.106, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2110, i32 3}
!211 = !{ptr @.str.107, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @mpi3mr_energypackchg_evt_th._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @mpi3mr_energypackchg_evt_th._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.109, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2116, i32 2}
!216 = !{ptr @mpi3mr_energypackchg_evt_th._entry.108, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @mpi3mr_energypackchg_evt_th._entry_ptr.110, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.111, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2138, i32 2}
!220 = !{ptr @.str.112, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @mpi3mr_tempthreshold_evt_th._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @mpi3mr_tempthreshold_evt_th._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.113, !219, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.114, !219, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.115, !219, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.116, !219, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.117, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2164, i32 3}
!229 = !{ptr @.str.118, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @mpi3mr_cablemgmt_evt_th._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @mpi3mr_cablemgmt_evt_th._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.120, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2173, i32 3}
!234 = !{ptr @mpi3mr_cablemgmt_evt_th._entry.119, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @mpi3mr_cablemgmt_evt_th._entry_ptr.121, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @mpi3mr_fwevt_add_to_list.__key, !237, !"__key", i1 false, i1 false}
!237 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 225, i32 2}
!238 = !{ptr @.str.122, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.123, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1074, i32 2}
!241 = !{ptr @.str.124, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @mpi3mr_devinfochg_evt_bh._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @mpi3mr_devinfochg_evt_bh._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.125, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1012, i32 2}
!246 = !{ptr @.str.126, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @mpi3mr_devstatuschg_evt_bh._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @mpi3mr_devstatuschg_evt_bh._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.128, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1027, i32 3}
!251 = !{ptr @mpi3mr_devstatuschg_evt_bh._entry.127, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @mpi3mr_devstatuschg_evt_bh._entry_ptr.129, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.130, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1114, i32 16}
!255 = !{ptr @.str.131, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1117, i32 17}
!257 = !{ptr @.str.132, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1120, i32 16}
!259 = !{ptr @.str.133, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1123, i32 16}
!261 = !{ptr @.str.134, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1126, i32 16}
!263 = !{ptr @.str.135, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1129, i32 2}
!265 = !{ptr @.str.136, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @mpi3mr_sastopochg_evt_debug._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @mpi3mr_sastopochg_evt_debug._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.138, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1131, i32 2}
!270 = !{ptr @mpi3mr_sastopochg_evt_debug._entry.137, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @mpi3mr_sastopochg_evt_debug._entry_ptr.139, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.140, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1145, i32 17}
!274 = !{ptr @.str.141, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1148, i32 17}
!276 = !{ptr @.str.142, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1151, i32 17}
!278 = !{ptr @.str.143, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1154, i32 17}
!280 = !{ptr @.str.144, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1157, i32 17}
!282 = !{ptr @.str.145, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1160, i32 17}
!284 = !{ptr @.str.147, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1165, i32 3}
!286 = !{ptr @mpi3mr_sastopochg_evt_debug._entry.146, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @mpi3mr_sastopochg_evt_debug._entry_ptr.148, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.149, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1258, i32 2}
!290 = !{ptr @.str.150, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @mpi3mr_pcietopochg_evt_debug._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @mpi3mr_pcietopochg_evt_debug._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.152, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1260, i32 2}
!295 = !{ptr @mpi3mr_pcietopochg_evt_debug._entry.151, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @mpi3mr_pcietopochg_evt_debug._entry_ptr.153, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.155, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 1296, i32 3}
!299 = !{ptr @mpi3mr_pcietopochg_evt_debug._entry.154, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @mpi3mr_pcietopochg_evt_debug._entry_ptr.156, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @mpi3mr_pci_id_table, !302, !"mpi3mr_pci_id_table", i1 false, i1 false}
!302 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4494, i32 35}
!303 = !{ptr @.str.157, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4519, i32 2}
!305 = !{ptr @.str.158, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @mpi3mr_init._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @mpi3mr_init._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.159, !304, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.160, !304, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @mpi3mr_pci_driver, !311, !"mpi3mr_pci_driver", i1 false, i1 false}
!311 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4503, i32 26}
!312 = distinct !{null, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4188, i32 30}
!314 = !{ptr @.str.162, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4189, i32 23}
!316 = !{ptr @mpi3mr_probe.__key, !317, !"__key", i1 false, i1 false}
!317 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4195, i32 2}
!318 = !{ptr @.str.163, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @mpi3mr_probe.__key.164, !320, !"__key", i1 false, i1 false}
!320 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4196, i32 2}
!321 = !{ptr @.str.165, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @mpi3mr_probe.__key.166, !323, !"__key", i1 false, i1 false}
!323 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4197, i32 2}
!324 = !{ptr @.str.167, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @mpi3mr_probe.__key.168, !326, !"__key", i1 false, i1 false}
!326 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4198, i32 2}
!327 = !{ptr @.str.169, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @mpi3mr_probe.__key.170, !329, !"__key", i1 false, i1 false}
!329 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4199, i32 2}
!330 = !{ptr @.str.171, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @mpi3mr_probe.__key.172, !332, !"__key", i1 false, i1 false}
!332 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4200, i32 2}
!333 = !{ptr @.str.173, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @mpi3mr_probe.__key.174, !335, !"__key", i1 false, i1 false}
!335 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4201, i32 2}
!336 = !{ptr @.str.175, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @mpi3mr_probe.__key.176, !338, !"__key", i1 false, i1 false}
!338 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4208, i32 2}
!339 = !{ptr @.str.177, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @mpi3mr_probe.__key.178, !341, !"__key", i1 false, i1 false}
!341 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4219, i32 2}
!342 = !{ptr @.str.179, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.180, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4241, i32 2}
!345 = !{ptr @.str.181, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @mpi3mr_probe._entry, !344, !"_entry", i1 false, i1 false}
!347 = !{ptr @mpi3mr_probe._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.182, !344, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.183, !344, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.184, !344, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.185, !344, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.186, !344, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @.str.187, !344, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.188, !344, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @.str.189, !344, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.190, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4258, i32 6}
!358 = !{ptr @.str.192, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4262, i32 3}
!360 = !{ptr @mpi3mr_probe._entry.191, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @mpi3mr_probe._entry_ptr.193, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.195, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4271, i32 3}
!364 = !{ptr @mpi3mr_probe._entry.194, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @mpi3mr_probe._entry_ptr.196, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.198, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4276, i32 3}
!368 = !{ptr @mpi3mr_probe._entry.197, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @mpi3mr_probe._entry_ptr.199, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @mpi3mr_probe._entry.200, !371, !"_entry", i1 false, i1 false}
!371 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4291, i32 3}
!372 = !{ptr @mpi3mr_probe._entry_ptr.201, !371, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.202, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4103, i32 3}
!375 = !{ptr @.str.203, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @.str.204, !374, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @.str.205, !374, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @osintfc_mrioc_security_status._entry, !374, !"_entry", i1 false, i1 false}
!379 = !{ptr @osintfc_mrioc_security_status._entry_ptr, !374, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.207, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4115, i32 3}
!382 = !{ptr @osintfc_mrioc_security_status._entry.206, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @osintfc_mrioc_security_status._entry_ptr.208, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.210, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4123, i32 4}
!386 = !{ptr @.str.211, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @osintfc_mrioc_security_status._entry.209, !385, !"_entry", i1 false, i1 false}
!388 = !{ptr @osintfc_mrioc_security_status._entry_ptr.212, !385, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.214, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4130, i32 3}
!391 = !{ptr @osintfc_mrioc_security_status._entry.213, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @osintfc_mrioc_security_status._entry_ptr.215, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.217, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4142, i32 3}
!395 = !{ptr @osintfc_mrioc_security_status._entry.216, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @osintfc_mrioc_security_status._entry_ptr.218, !394, !"_entry_ptr", i1 false, i1 false}
!397 = distinct !{null, !398, !"warn_non_secure_ctlr", i1 false, i1 false}
!398 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 16, i32 12}
!399 = !{ptr @.str.219, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4033, i32 13}
!401 = !{ptr @mpi3mr_driver_template, !402, !"mpi3mr_driver_template", i1 false, i1 false}
!402 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4031, i32 34}
!403 = !{ptr @.str.220, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3794, i32 4}
!405 = !{ptr @.str.221, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @mpi3mr_check_return_unmap._entry, !404, !"_entry", i1 false, i1 false}
!407 = !{ptr @mpi3mr_check_return_unmap._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.223, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3804, i32 3}
!410 = !{ptr @mpi3mr_check_return_unmap._entry.222, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @mpi3mr_check_return_unmap._entry_ptr.224, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.226, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3814, i32 3}
!414 = !{ptr @mpi3mr_check_return_unmap._entry.225, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @mpi3mr_check_return_unmap._entry_ptr.227, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.229, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3825, i32 3}
!418 = !{ptr @mpi3mr_check_return_unmap._entry.228, !417, !"_entry", i1 false, i1 false}
!419 = !{ptr @mpi3mr_check_return_unmap._entry_ptr.230, !417, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.232, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3848, i32 3}
!422 = !{ptr @mpi3mr_check_return_unmap._entry.231, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @mpi3mr_check_return_unmap._entry_ptr.233, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.235, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3863, i32 3}
!426 = !{ptr @mpi3mr_check_return_unmap._entry.234, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @mpi3mr_check_return_unmap._entry_ptr.236, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.237, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2758, i32 3}
!430 = !{ptr @.str.238, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2764, i32 3}
!432 = !{ptr @.str.239, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3421, i32 2}
!434 = !{ptr @.str.240, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3427, i32 3}
!436 = !{ptr @.str.241, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3436, i32 3}
!438 = !{ptr @.str.242, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3442, i32 2}
!440 = !{ptr @.str.243, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3454, i32 3}
!442 = !{ptr @.str.244, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3461, i32 2}
!444 = !{ptr @.str.245, !443, !"<string literal>", i1 false, i1 false}
!445 = !{ptr @.str.246, !443, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @.str.247, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2962, i32 2}
!448 = !{ptr @.str.248, !447, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @mpi3mr_issue_tm._entry, !447, !"_entry", i1 false, i1 false}
!450 = !{ptr @mpi3mr_issue_tm._entry_ptr, !447, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.250, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2966, i32 3}
!453 = !{ptr @mpi3mr_issue_tm._entry.249, !452, !"_entry", i1 false, i1 false}
!454 = !{ptr @mpi3mr_issue_tm._entry_ptr.251, !452, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @mpi3mr_issue_tm._entry.252, !456, !"_entry", i1 false, i1 false}
!456 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2975, i32 3}
!457 = !{ptr @mpi3mr_issue_tm._entry_ptr.253, !456, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.255, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2981, i32 3}
!460 = !{ptr @mpi3mr_issue_tm._entry.254, !459, !"_entry", i1 false, i1 false}
!461 = !{ptr @mpi3mr_issue_tm._entry_ptr.256, !459, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.258, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3022, i32 3}
!464 = !{ptr @mpi3mr_issue_tm._entry.257, !463, !"_entry", i1 false, i1 false}
!465 = !{ptr @mpi3mr_issue_tm._entry_ptr.259, !463, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.261, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3031, i32 4}
!468 = !{ptr @mpi3mr_issue_tm._entry.260, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @mpi3mr_issue_tm._entry_ptr.262, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.264, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3043, i32 3}
!472 = !{ptr @mpi3mr_issue_tm._entry.263, !471, !"_entry", i1 false, i1 false}
!473 = !{ptr @mpi3mr_issue_tm._entry_ptr.265, !471, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.267, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3059, i32 3}
!476 = !{ptr @mpi3mr_issue_tm._entry.266, !475, !"_entry", i1 false, i1 false}
!477 = !{ptr @mpi3mr_issue_tm._entry_ptr.268, !475, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.270, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3079, i32 2}
!480 = !{ptr @mpi3mr_issue_tm._entry.269, !479, !"_entry", i1 false, i1 false}
!481 = !{ptr @mpi3mr_issue_tm._entry_ptr.271, !479, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @init_completion.__key, !483, !"__key", i1 false, i1 false}
!483 = !{!"../include/linux/completion.h", i32 87, i32 2}
!484 = !{ptr @.str.272, !483, !"<string literal>", i1 false, i1 false}
!485 = !{ptr @.str.273, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/scsi/mpi3mr/mpi3mr_debug.h", i32 138, i32 2}
!487 = !{ptr @.str.274, !486, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @.str.275, !486, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @dprint_dump_req._entry, !486, !"_entry", i1 false, i1 false}
!490 = !{ptr @dprint_dump_req._entry_ptr, !486, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.277, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/scsi/mpi3mr/mpi3mr_debug.h", i32 141, i32 4}
!493 = !{ptr @dprint_dump_req._entry.276, !492, !"_entry", i1 false, i1 false}
!494 = !{ptr @dprint_dump_req._entry_ptr.278, !492, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.280, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/scsi/mpi3mr/mpi3mr_debug.h", i32 142, i32 3}
!497 = !{ptr @dprint_dump_req._entry.279, !496, !"_entry", i1 false, i1 false}
!498 = !{ptr @dprint_dump_req._entry_ptr.281, !496, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.283, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/scsi/mpi3mr/mpi3mr_debug.h", i32 144, i32 2}
!501 = !{ptr @dprint_dump_req._entry.282, !500, !"_entry", i1 false, i1 false}
!502 = !{ptr @dprint_dump_req._entry_ptr.284, !500, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.285, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2884, i32 10}
!505 = !{ptr @.str.286, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2887, i32 10}
!507 = !{ptr @.str.287, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2890, i32 10}
!509 = !{ptr @.str.288, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2893, i32 10}
!511 = !{ptr @.str.289, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2896, i32 10}
!513 = !{ptr @.str.290, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2899, i32 10}
!515 = !{ptr @.str.291, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2902, i32 10}
!517 = !{ptr @.str.292, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2905, i32 10}
!519 = !{ptr @.str.293, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 2908, i32 10}
!521 = !{ptr @.str.294, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3353, i32 2}
!523 = !{ptr @.str.295, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3368, i32 3}
!525 = !{ptr @.str.296, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3374, i32 2}
!527 = !{ptr @.str.297, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3387, i32 3}
!529 = !{ptr @.str.298, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3395, i32 2}
!531 = !{ptr @.str.299, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3327, i32 2}
!533 = !{ptr @.str.300, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3242, i32 2}
!535 = !{ptr @.str.301, !534, !"<string literal>", i1 false, i1 false}
!536 = !{ptr @mpi3mr_print_pending_host_io._entry, !534, !"_entry", i1 false, i1 false}
!537 = !{ptr @mpi3mr_print_pending_host_io._entry_ptr, !534, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @.str.302, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 375, i32 3}
!540 = !{ptr @.str.303, !539, !"<string literal>", i1 false, i1 false}
!541 = !{ptr @mpi3mr_print_scmd._entry, !539, !"_entry", i1 false, i1 false}
!542 = !{ptr @mpi3mr_print_scmd._entry_ptr, !539, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @.str.304, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3509, i32 3}
!545 = !{ptr @.str.305, !544, !"<string literal>", i1 false, i1 false}
!546 = !{ptr @mpi3mr_scan_finished._entry, !544, !"_entry", i1 false, i1 false}
!547 = !{ptr @mpi3mr_scan_finished._entry_ptr, !544, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @.str.307, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3519, i32 3}
!550 = !{ptr @mpi3mr_scan_finished._entry.306, !549, !"_entry", i1 false, i1 false}
!551 = !{ptr @mpi3mr_scan_finished._entry_ptr.308, !549, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @.str.310, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3533, i32 3}
!554 = !{ptr @mpi3mr_scan_finished._entry.309, !553, !"_entry", i1 false, i1 false}
!555 = !{ptr @mpi3mr_scan_finished._entry_ptr.311, !553, !"_entry_ptr", i1 false, i1 false}
!556 = !{ptr @.str.313, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3537, i32 3}
!558 = !{ptr @mpi3mr_scan_finished._entry.312, !557, !"_entry", i1 false, i1 false}
!559 = !{ptr @mpi3mr_scan_finished._entry_ptr.314, !557, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @.str.315, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3481, i32 2}
!562 = !{ptr @.str.316, !561, !"<string literal>", i1 false, i1 false}
!563 = !{ptr @mpi3mr_scan_start._entry, !561, !"_entry", i1 false, i1 false}
!564 = !{ptr @mpi3mr_scan_start._entry_ptr, !561, !"_entry_ptr", i1 false, i1 false}
!565 = !{ptr @.str.318, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 3483, i32 3}
!567 = !{ptr @mpi3mr_scan_start._entry.317, !566, !"_entry", i1 false, i1 false}
!568 = !{ptr @mpi3mr_scan_start._entry_ptr.319, !566, !"_entry_ptr", i1 false, i1 false}
!569 = !{ptr @mrioc_ids, !570, !"mrioc_ids", i1 false, i1 false}
!570 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 15, i32 12}
!571 = !{ptr @mpi3mr_init_drv_cmd.__key, !572, !"__key", i1 false, i1 false}
!572 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4076, i32 2}
!573 = !{ptr @.str.320, !572, !"<string literal>", i1 false, i1 false}
!574 = !{ptr @.str.321, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4436, i32 2}
!576 = !{ptr @.str.322, !575, !"<string literal>", i1 false, i1 false}
!577 = !{ptr @mpi3mr_suspend._entry, !575, !"_entry", i1 false, i1 false}
!578 = !{ptr @mpi3mr_suspend._entry_ptr, !575, !"_entry_ptr", i1 false, i1 false}
!579 = !{ptr @.str.323, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4466, i32 2}
!581 = !{ptr @.str.324, !580, !"<string literal>", i1 false, i1 false}
!582 = !{ptr @mpi3mr_resume._entry, !580, !"_entry", i1 false, i1 false}
!583 = !{ptr @mpi3mr_resume._entry_ptr, !580, !"_entry_ptr", i1 false, i1 false}
!584 = !{ptr @.str.326, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4475, i32 3}
!586 = !{ptr @mpi3mr_resume._entry.325, !585, !"_entry", i1 false, i1 false}
!587 = !{ptr @mpi3mr_resume._entry_ptr.327, !585, !"_entry_ptr", i1 false, i1 false}
!588 = !{ptr @.str.329, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4484, i32 3}
!590 = !{ptr @mpi3mr_resume._entry.328, !589, !"_entry", i1 false, i1 false}
!591 = !{ptr @mpi3mr_resume._entry_ptr.330, !589, !"_entry_ptr", i1 false, i1 false}
!592 = !{ptr @.str.331, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4530, i32 3}
!594 = !{ptr @.str.332, !593, !"<string literal>", i1 false, i1 false}
!595 = !{ptr @mpi3mr_exit._entry, !593, !"_entry", i1 false, i1 false}
!596 = !{ptr @mpi3mr_exit._entry_ptr, !593, !"_entry_ptr", i1 false, i1 false}
!597 = !{ptr @.str.334, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/scsi/mpi3mr/mpi3mr_os.c", i32 4534, i32 3}
!599 = !{ptr @mpi3mr_exit._entry.333, !598, !"_entry", i1 false, i1 false}
!600 = !{ptr @mpi3mr_exit._entry_ptr.335, !598, !"_entry_ptr", i1 false, i1 false}
!601 = !{i32 1, !"wchar_size", i32 2}
!602 = !{i32 1, !"min_enum_size", i32 4}
!603 = !{i32 8, !"branch-target-enforcement", i32 0}
!604 = !{i32 8, !"sign-return-address", i32 0}
!605 = !{i32 8, !"sign-return-address-all", i32 0}
!606 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!607 = !{i32 7, !"uwtable", i32 1}
!608 = !{i32 7, !"frame-pointer", i32 2}
!609 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!610 = !{i64 2148702408}
!611 = !{i64 2148616872, i64 2148616904, i64 2148616933, i64 2148616967, i64 2148616998, i64 2148617021}
!612 = !{!"branch_weights", i32 2000, i32 1}
!613 = !{i64 2149748378}
!614 = !{!"branch_weights", i32 1, i32 2000}
!615 = !{i64 2148614407, i64 2148614439, i64 2148614468, i64 2148614502, i64 2148614533, i64 2148614556}
!616 = !{i64 2148612877, i64 2148612903, i64 2148612932, i64 2148612966, i64 2148612997, i64 2148613020}
!617 = !{i64 2148714700}
!618 = !{i64 1098390, i64 1098414, i64 1098435, i64 1098452, i64 1098469}
!619 = !{i64 2148714926}
!620 = !{i64 1112145}
!621 = !{i64 2155451115, i64 2155451611, i64 2155451152, i64 2155451208, i64 2155451242, i64 2155451266, i64 2155451307, i64 2155451328, i64 2155451356, i64 2155451390}
!622 = !{i64 2155445386, i64 2155445882, i64 2155445423, i64 2155445479, i64 2155445513, i64 2155445537, i64 2155445578, i64 2155445599, i64 2155445627, i64 2155445661}
!623 = !{i8 0, i8 2}
!624 = !{!"auto-init"}
!625 = !{i64 2155456844, i64 2155457340, i64 2155456881, i64 2155456937, i64 2155456971, i64 2155456995, i64 2155457036, i64 2155457057, i64 2155457085, i64 2155457119}
!626 = !{i64 6102889}
!627 = !{i64 2155651292}
!628 = !{i64 2155637192, i64 2155637689, i64 2155637229, i64 2155637285, i64 2155637319, i64 2155637343, i64 2155637384, i64 2155637405, i64 2155637433, i64 2155637467}
!629 = !{i64 965913, i64 965940, i64 965962, i64 965990}
!630 = !{i64 966321, i64 966348, i64 966381, i64 966402, i64 966429, i64 966455}
!631 = !{i32 0, i32 33}
