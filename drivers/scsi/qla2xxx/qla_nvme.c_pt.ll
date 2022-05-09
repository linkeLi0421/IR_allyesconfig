; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla2xxx/qla_nvme.c_pt.bc'
source_filename = "../drivers/scsi/qla2xxx/qla_nvme.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvme_fc_port_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i64, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvme_fc_port_info = type { i64, i64, i32, i32, i32 }
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
%struct.nvme_fc_remote_port = type { i32, i32, i64, i64, ptr, ptr, i32, i32, i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.81, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.81 = type { ptr }
%struct.nvme_fc_local_port = type { i32, i32, i64, i64, ptr, i32, i32 }
%struct.srb = type { i8, [3 x i8], %struct.iocb_resource, %struct.kref, ptr, %struct.wait_queue_head, ptr, ptr, i8, i32, i16, i16, ptr, i32, ptr, ptr, %struct.list_head, i32, i32, i32, i32, ptr, %union.anon.83, %struct.anon.106, ptr, ptr, ptr }
%struct.iocb_resource = type { i8, i8, i16 }
%union.anon.83 = type { %struct.srb_iocb }
%struct.srb_iocb = type { %union.anon.84, %struct.timer_list, ptr }
%union.anon.84 = type { %struct.anon.87, [112 x i8] }
%struct.anon.87 = type { i64, i32, i32, %struct.completion, i16 }
%struct.anon.106 = type { i8, %struct.anon.107, %struct.anon.108 }
%struct.anon.107 = type { i32, ptr, i32 }
%struct.anon.108 = type { i32, ptr, i32 }
%struct.abort_entry_24xx = type { i8, i8, i8, i8, i32, %union.anon.171, i16, i32, i16, [30 x i8], [3 x i8], i8, [4 x i8], %union.anon.172, [4 x i8] }
%union.anon.171 = type { i16 }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type { i16, i16 }
%struct.anon.174 = type { i8, i8, i8, i8 }
%struct.nvmefc_ls_req = type { ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, [4 x i8] }
%struct.qla_qpair = type { %struct.spinlock, %struct.atomic_t, i32, ptr, ptr, i32, i8, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.qla_counters, %struct.list_head, %struct.list_head, i16, i32, i64, %struct.qla_tgt_counters, i16, [94 x i8], %struct.qla_fw_resources, i32, i32, i32, [108 x i8] }
%struct.qla_counters = type { i64, i64, i64, i64 }
%struct.qla_tgt_counters = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_fw_resources = type { i16, i16, i16, i16 }
%struct.nvme_private = type { ptr, ptr, %struct.work_struct, %struct.work_struct, i32, %struct.spinlock }
%struct.page = type { i32, %union.anon.9, %union.anon.55, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.55 = type { %struct.atomic_t }
%struct.nvmefc_fcp_req = type { ptr, ptr, i32, i32, i16, i16, i32, %struct.sg_table, ptr, i32, i32, i16, ptr, ptr, i32, i16, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.req_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i32, i16, i32, i32, ptr, i16, [64 x i8] }
%struct.nvme_fc_cmd_iu = type { i8, i8, i16, [2 x i8], i8, i8, i64, i32, i32, %struct.nvme_command, i8, i8, i16, i32 }
%struct.nvme_command = type { %union.anon.176 }
%union.anon.176 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.177 }
%struct.anon.177 = type { i64, i64 }
%struct.anon.99 = type { i16, i16, i8, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head }
%struct.cmd_nvme = type <{ i8, i8, i8, i8, i32, i16, i16, i16, i16, i64, i16, i16, i64, i64, i32, [3 x i8], i8, %struct.dsd64 }>
%struct.dsd64 = type <{ i64, i32 }>
%struct.anon.80 = type { i8, i8, i8, i8 }
%struct.cmd_a64_entry_t = type { i8, i8, i8, i8, i32, %union.target_id_t, i16, i16, i16, i16, i16, [16 x i8], i32, [2 x %struct.dsd64] }
%union.target_id_t = type { i16 }
%struct.cont_a64_entry_t = type { i8, i8, i8, i8, [5 x %struct.dsd64] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.rsp_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, [64 x i8] }
%struct.response_t = type { i8, i8, i8, i8, i32, [52 x i8], i32 }
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: Not registering target since Host NVME is not enabled\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.qla_nvme_register_remote = private unnamed_addr constant [25 x i8] c"qla_nvme_register_remote\00", align 1
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: traddr=nn-0x%016llx:pn-0x%016llx PortID:%06x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to register remote port. Transport returned %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PortID:%06x Supports SLER\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PortID:%06x Supports PI control\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: unregister remoteport on %p %8phN\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.qla_nvme_unregister_remote_port = private unnamed_addr constant [32 x i8] c"qla_nvme_unregister_remote_port\00", align 1
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Failed to unregister nvme_remote_port (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unregister localport=%p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unregister of localport failed\0A\00", [32 x i8] zeroinitializer }, align 32
@qla_nvme_fc_transport = internal global { %struct.nvme_fc_port_template, [56 x i8] } { %struct.nvme_fc_port_template { ptr @qla_nvme_localport_delete, ptr @qla_nvme_remoteport_delete, ptr @qla_nvme_alloc_queue, ptr null, ptr @qla_nvme_ls_req, ptr @qla_nvme_post_cmd, ptr @qla_nvme_ls_abort, ptr @qla_nvme_fcp_abort, ptr null, ptr @qla_nvme_map_queues, i32 8, i16 1024, i16 64, i64 4294967295, i32 8, i32 4, i32 144, i32 144 }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/qla2xxx/qla_nvme.c\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"register_localport: host-traddr=nn-0x%llx:pn-0x%llx on portID:%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"register_localport failed: ret=%x\0A\00", [61 x i8] zeroinitializer }, align 32
@ql2xabts_wait_nvme = external dso_local local_unnamed_addr global i32, align 4
@qla_nvme_abort_set_option.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Abort I/O IOCB completed with error, comp_status=%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"BA_RJT was received for the ABTS rjt_vendorUnique = %u\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ba_rjt_reasonCodeExpl = %u, ba_rjt_reasonCode = %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"IOCB request is completed successfully comp_status=%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"IOCB request is failed, comp_status=%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid Abort IO IOCB Completion Status %x\0A\00", [52 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"localport delete of %p completed.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"remoteport_delete of %p %8phN completed.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: handle %p, idx =%d, qsize %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.qla_nvme_alloc_queue = private unnamed_addr constant [21 x i8] c"qla_nvme_alloc_queue\00", align 1
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Illegal qidx=%d. Max=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Returning existing qpair of %p for idx=%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to allocate qpair\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nvme_ls\00", [24 x i8] zeroinitializer }, align 32
@qla_nvme_ls_req.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->cmd_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qla2x00_start_sp failed = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@qla_nvme_sp_ls_done.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@qla_nvme_sp_ls_done.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&priv->ls_work)\00", [62 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@qla_nvme_post_cmd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&sp->nvme_ls_waitq\00", [45 x i8] zeroinitializer }, align 32
@qla_nvme_post_cmd.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nvme_cmd\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"qla2x00_start_nvme_mq failed = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@qla_nvme_ls_abort.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&priv->abort_work)\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s called for sp=%p, hndl=%x on fcport=%p desc=%p deleted=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.qla_nvme_abort_work = private unnamed_addr constant [20 x i8] c"qla_nvme_abort_work\00", align 1
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s Calling done on sp: %p, type: 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: %s command for sp=%p, handle=%x on fcport=%p rval=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Failed to abort\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Aborted\00", [24 x i8] zeroinitializer }, align 32
@ql2xasynctmfenable = external dso_local local_unnamed_addr global i32, align 4
@qla_nvme_fcp_abort.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci map queue failed 0x%x\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 16, i64 0, i64 4, i64 5, i64 6, i64 40, i64 41, i64 42, i64 49, i64 78]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 27, i32 7 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 60, i32 6 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 68, i32 7 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 78, i32 10 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 82, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 731, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 741, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 756, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 761, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"qla_nvme_fc_transport\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 703, i32 37 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 780, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 792, i32 6 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 800, i32 7 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 850, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 857, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 860, i32 10 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 866, i32 10 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 872, i32 10 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 877, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 87, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 683, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 698, i32 6 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 107, i32 6 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 112, i32 7 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 124, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 132, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 338, i32 13 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 344, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 362, i32 7 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 213, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 326, i32 6 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 638, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 640, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 644, i32 13 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 656, i32 7 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 307, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 240, i32 9 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 248, i32 7 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 265, i32 6 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 266, i32 40 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 266, i32 60 }
@___asan_gen_.184 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 391, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [35 x i8] c"../drivers/scsi/qla2xxx/qla_nvme.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 675, i32 10 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @qla_nvme_fc_transport, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @init_completion.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @qla_nvme_ls_req.__key, ptr @.str.26, ptr @.str.27, ptr @qla_nvme_sp_ls_done.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @qla_nvme_post_cmd.__key, ptr @.str.31, ptr @qla_nvme_post_cmd.__key.32, ptr @.str.33, ptr @.str.34, ptr @qla_nvme_ls_abort.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @qla_nvme_fcp_abort.__key, ptr @.str.41], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_nvme_fc_transport to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_nvme_ls_req.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_nvme_sp_ls_done.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_nvme_post_cmd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_nvme_post_cmd.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_nvme_ls_abort.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_nvme_fcp_abort.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla_nvme_register_remote(ptr noundef %vha, ptr noundef %fcport) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.nvme_fc_port_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %req) #6
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load volatile i32, ptr %flags, align 8
  %1 = and i32 %bf.load, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 8448, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qla_nvme_register_remote) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %nvme_local_port = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 29
  %2 = ptrtoint ptr %nvme_local_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvme_local_port, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @qla_nvme_register_hba(ptr noundef %vha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %nvme_prli_service_param = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 10
  %4 = ptrtoint ptr %nvme_prli_service_param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nvme_prli_service_param, align 8
  %and = and i32 %5, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %lor.lhs.false

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %nvme_flag = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 3
  %6 = ptrtoint ptr %nvme_flag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nvme_flag, align 1
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %and12 = and i8 %7, -2
  %9 = ptrtoint ptr %nvme_flag to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and12, ptr %nvme_flag, align 1
  %10 = getelementptr inbounds i8, ptr %req, i32 16
  %11 = call ptr @memset(ptr %10, i32 0, i32 16)
  %port_name = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 5
  %12 = ptrtoint ptr %port_name to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %port_name, align 1
  %port_name15 = getelementptr inbounds %struct.nvme_fc_port_info, ptr %req, i32 0, i32 1
  %14 = ptrtoint ptr %port_name15 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %port_name15, align 8
  %node_name = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 4
  %15 = ptrtoint ptr %node_name to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %node_name, align 1
  %17 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %req, align 8
  %port_role = getelementptr inbounds %struct.nvme_fc_port_info, ptr %req, i32 0, i32 2
  %dev_loss_tmo = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 71
  %18 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dev_loss_tmo, align 8
  %conv19 = trunc i64 %19 to i32
  %dev_loss_tmo20 = getelementptr inbounds %struct.nvme_fc_port_info, ptr %req, i32 0, i32 4
  %20 = ptrtoint ptr %dev_loss_tmo20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv19, ptr %dev_loss_tmo20, align 8
  %and22 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end9.if.end26_crit_edge, label %if.then24

if.end9.if.end26_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %port_role to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %port_role, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end9.if.end26_crit_edge
  %and28 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end32_crit_edge, label %if.then30

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %port_role to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port_role, align 8
  %or = or i32 %23, 32
  store i32 %or, ptr %port_role, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end26.if.end32_crit_edge
  %and34 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end39_crit_edge, label %if.then36

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %port_role to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_role, align 8
  %or38 = or i32 %25, 64
  store i32 %or38, ptr %port_role, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end32.if.end39_crit_edge
  %d_id = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 6
  %26 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load40 = load i32, ptr %d_id, align 8
  %bf.lshr41 = lshr i32 %bf.load40, 8
  %port_id = getelementptr inbounds %struct.nvme_fc_port_info, ptr %req, i32 0, i32 3
  %27 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bf.lshr41, ptr %port_id, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 8450, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.qla_nvme_register_remote, i64 noundef %16, i64 noundef %13, i32 noundef %bf.lshr41) #6
  %28 = ptrtoint ptr %nvme_local_port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nvme_local_port, align 8
  %nvme_remote_port = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 46
  %call46 = call i32 @nvme_fc_register_remoteport(ptr noundef %29, ptr noundef nonnull %req, ptr noundef %nvme_remote_port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 8494, ptr noundef nonnull @.str.2, i32 noundef %call46) #6
  br label %cleanup

if.end49:                                         ; preds = %if.end39
  %30 = ptrtoint ptr %nvme_remote_port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nvme_remote_port, align 4
  %32 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %dev_loss_tmo, align 8
  %conv52 = trunc i64 %33 to i32
  %call53 = call i32 @nvme_fc_set_remoteport_devloss(ptr noundef %31, i32 noundef %conv52) #6
  %34 = ptrtoint ptr %nvme_prli_service_param to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nvme_prli_service_param, align 8
  %and55 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end49.if.end59_crit_edge, label %if.then57

if.end49.if.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then57:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_id, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 8490, ptr noundef nonnull @.str.3, i32 noundef %37) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end49.if.end59_crit_edge
  %38 = ptrtoint ptr %nvme_prli_service_param to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nvme_prli_service_param, align 8
  %and61 = and i32 %39, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end59.if.end65_crit_edge, label %if.then63

if.end59.if.end65_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port_id, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 8491, ptr noundef nonnull @.str.4, i32 noundef %41) #6
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end59.if.end65_crit_edge
  %42 = ptrtoint ptr %nvme_remote_port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nvme_remote_port, align 4
  %private = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %private, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %fcport, ptr %45, align 4
  %47 = ptrtoint ptr %nvme_flag to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %nvme_flag, align 1
  %49 = or i8 %48, 4
  store i8 %49, ptr %nvme_flag, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then48, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call46, %if.then48 ], [ 0, %if.end65 ], [ 0, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %req) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla_nvme_register_hba(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  %pinfo = alloca %struct.nvme_fc_port_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pinfo) #6
  %0 = getelementptr inbounds i8, ptr %pinfo, i32 24
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %nvme_local_port = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 29
  %4 = ptrtoint ptr %nvme_local_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvme_local_port, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !114

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 780, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = load i32, ptr getelementptr inbounds (%struct.nvme_fc_port_template, ptr @qla_nvme_fc_transport, i32 0, i32 10), align 8
  %max_qpairs = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 32
  %7 = ptrtoint ptr %max_qpairs to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %max_qpairs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool21.not = icmp eq i8 %8, 0
  %narrow = select i1 %tobool21.not, i8 1, i8 %8
  %spec.select = zext i8 %narrow to i32
  %conv26 = and i32 %6, 255
  %9 = tail call i32 @llvm.umin.i32(i32 %conv26, i32 %spec.select)
  store i32 %9, ptr getelementptr inbounds (%struct.nvme_fc_port_template, ptr @qla_nvme_fc_transport, i32 0, i32 10), align 8
  %node_name = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 25
  %10 = ptrtoint ptr %node_name to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %node_name, align 1
  %12 = ptrtoint ptr %pinfo to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %pinfo, align 8
  %port_name = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 26
  %13 = ptrtoint ptr %port_name to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %port_name, align 1
  %port_name38 = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 1
  %15 = ptrtoint ptr %port_name38 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %port_name38, align 8
  %port_role = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 2
  %16 = ptrtoint ptr %port_role to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %port_role, align 8
  %d_id = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 17
  %17 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load = load i32, ptr %d_id, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  %port_id = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 3
  %18 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bf.lshr, ptr %port_id, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.10, i64 noundef %11, i64 noundef %14, i32 noundef %bf.lshr) #6
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host, align 8
  %dma_boundary = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 32
  %21 = ptrtoint ptr %dma_boundary to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_boundary, align 8
  %conv42 = zext i32 %22 to i64
  store i64 %conv42, ptr getelementptr inbounds (%struct.nvme_fc_port_template, ptr @qla_nvme_fc_transport, i32 0, i32 13), align 8
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %call43 = tail call ptr @get_device(ptr noundef %dev) #6
  %call45 = call i32 @nvme_fc_register_localport(ptr noundef nonnull %pinfo, ptr noundef nonnull @qla_nvme_fc_transport, ptr noundef %call43, ptr noundef %nvme_local_port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.11, i32 noundef %call45) #6
  br label %if.end49

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %nvme_local_port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nvme_local_port, align 8
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %vha, ptr %private, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pinfo) #6
  ret i32 %call45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_register_remoteport(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_set_remoteport_devloss(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_nvme_unregister_remote_port(ptr noundef %fcport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vha = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 1
  %0 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha, align 8
  %port_name = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 5
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %1, i32 noundef 8466, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla_nvme_unregister_remote_port, ptr noundef %fcport, ptr noundef %port_name) #6
  %2 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vha, align 8
  %pci_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %pci_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %pci_flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nvme_remote_port = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 46
  %7 = ptrtoint ptr %nvme_remote_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nvme_remote_port, align 4
  %call2 = tail call i32 @nvme_fc_set_remoteport_devloss(ptr noundef %8, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nvme_del_done = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 9
  %9 = ptrtoint ptr %nvme_del_done to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %nvme_del_done, align 4
  %wait.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #6
  %nvme_remote_port3 = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 46
  %10 = ptrtoint ptr %nvme_remote_port3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nvme_remote_port3, align 4
  %call4 = tail call i32 @nvme_fc_unregister_remoteport(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vha, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %13, i32 noundef 8468, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.qla_nvme_unregister_remote_port, i32 noundef %call4) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  tail call void @wait_for_completion(ptr noundef %nvme_del_done) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_unregister_remoteport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_nvme_delete(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nvme_local_port = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 29
  %0 = ptrtoint ptr %nvme_local_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvme_local_port, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %nvme_del_done = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 30
  %2 = ptrtoint ptr %nvme_del_done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nvme_del_done, align 4
  %wait.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 30, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #6
  %3 = ptrtoint ptr %nvme_local_port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nvme_local_port, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 8470, ptr noundef nonnull @.str.7, ptr noundef %4) #6
  %5 = ptrtoint ptr %nvme_local_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nvme_local_port, align 8
  %call = tail call i32 @nvme_fc_unregister_localport(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 8469, ptr noundef nonnull @.str.8) #6
  br label %if.end6

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @wait_for_completion(ptr noundef %nvme_del_done) #6
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_unregister_localport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_register_localport(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_nvme_abort_set_option(ptr nocapture noundef %abt, ptr nocapture noundef readonly %orig_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xabts_wait_nvme to i32))
  %0 = load i32, ptr @ql2xabts_wait_nvme, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.srb, ptr %orig_sp, i32 0, i32 11
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type, align 2
  %.off = add i16 %2, -19
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %land.lhs.true6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true6:                                   ; preds = %land.lhs.true
  %fcport = getelementptr inbounds %struct.srb, ptr %orig_sp, i32 0, i32 6
  %3 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fcport, align 4
  %vha = getelementptr inbounds %struct.fc_port, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vha, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %6, i32 0, i32 52
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %fw_attributes_ext = getelementptr inbounds %struct.qla_hw_data, ptr %8, i32 0, i32 140
  %9 = ptrtoint ptr %fw_attributes_ext to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fw_attributes_ext, align 2
  %11 = and i16 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool8.not = icmp eq i16 %11, 0
  br i1 %tobool8.not, label %land.lhs.true6.cleanup_crit_edge, label %if.end

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true6
  %options = getelementptr inbounds %struct.abort_entry_24xx, ptr %abt, i32 0, i32 6
  %12 = ptrtoint ptr %options to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %options, align 2
  %14 = and i16 %13, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool14.not = icmp eq i16 %14, 0
  br i1 %tobool14.not, label %if.end.if.end45_crit_edge, label %land.rhs

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

land.rhs:                                         ; preds = %if.end
  %.b71 = load i1, ptr @qla_nvme_abort_set_option.__already_done, align 1
  br i1 %.b71, label %land.rhs.if.end45_crit_edge, label %if.then23, !prof !114

land.rhs.if.end45_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then23:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @qla_nvme_abort_set_option.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 817, i32 noundef 9, ptr noundef null) #6
  br label %if.end45

if.end45:                                         ; preds = %if.then23, %land.rhs.if.end45_crit_edge, %if.end.if.end45_crit_edge
  %15 = ptrtoint ptr %options to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %options, align 2
  %17 = getelementptr inbounds %struct.abort_entry_24xx, ptr %abt, i32 0, i32 13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 512, ptr %17, align 4
  %19 = or i16 %16, 6144
  store i16 %19, ptr %options, align 2
  %r_a_tov = getelementptr inbounds %struct.qla_hw_data, ptr %8, i32 0, i32 68
  %20 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %r_a_tov, align 8
  %22 = udiv i16 %21, 10
  %23 = shl nuw nsw i16 %22, 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %rsp_timeout = getelementptr inbounds %struct.abort_entry_24xx, ptr %abt, i32 0, i32 13, i32 0, i32 1
  %25 = ptrtoint ptr %rsp_timeout to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %rsp_timeout, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_nvme_abort_process_comp_status(ptr nocapture noundef readonly %abt, ptr nocapture noundef readonly %orig_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xabts_wait_nvme to i32))
  %0 = load i32, ptr @ql2xabts_wait_nvme, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.srb, ptr %orig_sp, i32 0, i32 11
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type, align 2
  %.off = add i16 %2, -19
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %land.lhs.true6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true6:                                   ; preds = %land.lhs.true
  %fcport = getelementptr inbounds %struct.srb, ptr %orig_sp, i32 0, i32 6
  %3 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fcport, align 4
  %vha7 = getelementptr inbounds %struct.fc_port, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %vha7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vha7, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %6, i32 0, i32 52
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %fw_attributes_ext = getelementptr inbounds %struct.qla_hw_data, ptr %8, i32 0, i32 140
  %9 = ptrtoint ptr %fw_attributes_ext to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fw_attributes_ext, align 2
  %11 = and i16 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool9.not = icmp eq i16 %11, 0
  br i1 %tobool9.not, label %land.lhs.true6.cleanup_crit_edge, label %if.end

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true6
  %12 = getelementptr inbounds %struct.abort_entry_24xx, ptr %abt, i32 0, i32 5
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv12 = zext i16 %15 to i32
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %sw.default [
    i16 4, label %if.end.sw.bb_crit_edge
    i16 5, label %if.end.sw.bb_crit_edge39
    i16 6, label %if.end.sw.bb_crit_edge40
    i16 40, label %if.end.sw.bb_crit_edge41
    i16 41, label %if.end.sw.bb_crit_edge42
    i16 42, label %if.end.sw.bb_crit_edge43
    i16 78, label %sw.bb14
    i16 0, label %sw.bb18
    i16 49, label %sw.bb20
  ]

if.end.sw.bb_crit_edge43:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge42:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge41:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge40:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge39:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge39, %if.end.sw.bb_crit_edge40, %if.end.sw.bb_crit_edge41, %if.end.sw.bb_crit_edge42, %if.end.sw.bb_crit_edge43
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %6, i32 noundef 61597, ptr noundef nonnull @.str.12, i32 noundef %conv12) #6
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = getelementptr inbounds %struct.abort_entry_24xx, ptr %abt, i32 0, i32 13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %conv15 = zext i8 %19 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %6, i32 noundef 61598, ptr noundef nonnull @.str.13, i32 noundef %conv15) #6
  %ba_rjt_reasonCodeExpl = getelementptr inbounds %struct.anon.174, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %ba_rjt_reasonCodeExpl to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ba_rjt_reasonCodeExpl, align 1
  %conv16 = zext i8 %21 to i32
  %ba_rjt_reasonCode = getelementptr inbounds %struct.abort_entry_24xx, ptr %abt, i32 0, i32 13, i32 0, i32 1
  %22 = ptrtoint ptr %ba_rjt_reasonCode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ba_rjt_reasonCode, align 2
  %conv17 = zext i8 %23 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 570425344, ptr noundef %6, i32 noundef 61598, ptr noundef nonnull @.str.14, i32 noundef %conv16, i32 noundef %conv17) #6
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33587200, ptr noundef %6, i32 noundef 61599, ptr noundef nonnull @.str.15, i32 noundef 0) #6
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %6, i32 noundef 61600, ptr noundef nonnull @.str.16, i32 noundef 49) #6
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %6, i32 noundef 61601, ptr noundef nonnull @.str.17, i32 noundef %conv12) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb20, %sw.bb18, %sw.bb14, %sw.bb, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dbg(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_wait_nvme_release_cmd_kref(ptr noundef %orig_sp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xabts_wait_nvme to i32))
  %0 = load i32, ptr @ql2xabts_wait_nvme, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.srb, ptr %orig_sp, i32 0, i32 11
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type, align 2
  %.off = add i16 %2, -19
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %land.lhs.true6, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true6:                                   ; preds = %land.lhs.true
  %fcport = getelementptr inbounds %struct.srb, ptr %orig_sp, i32 0, i32 6
  %3 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fcport, align 4
  %vha = getelementptr inbounds %struct.fc_port, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vha, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %6, i32 0, i32 52
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %fw_attributes_ext = getelementptr inbounds %struct.qla_hw_data, ptr %8, i32 0, i32 140
  %9 = ptrtoint ptr %fw_attributes_ext to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fw_attributes_ext, align 2
  %11 = and i16 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool8.not = icmp eq i16 %11, 0
  br i1 %tobool8.not, label %land.lhs.true6.return_crit_edge, label %if.end

land.lhs.true6.return_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %land.lhs.true6
  %cmd_kref = getelementptr inbounds %struct.srb, ptr %orig_sp, i32 0, i32 3
  %put_fn = getelementptr inbounds %struct.srb, ptr %orig_sp, i32 0, i32 26
  %12 = ptrtoint ptr %put_fn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %put_fn, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_kref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %cmd_kref, i32 1, i32 3, i32 1) #6
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_kref, ptr %cmd_kref, i32 1, ptr elementtype(i32) %cmd_kref) #6, !srcloc !116
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !114

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %cmd_kref, i32 noundef 3) #6
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void %13(ptr noundef %cmd_kref) #6
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %land.lhs.true6.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla_nvme_localport_delete(ptr nocapture noundef readonly %lport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %lport, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %nvme_local_port = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %nvme_local_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvme_local_port, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %1, i32 noundef 8463, ptr noundef nonnull @.str.19, ptr noundef %3) #6
  %4 = ptrtoint ptr %nvme_local_port to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %nvme_local_port, align 8
  %nvme_del_done = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 30
  tail call void @complete(ptr noundef %nvme_del_done) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla_nvme_remoteport_delete(ptr nocapture noundef readonly %rport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %rport, i32 0, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nvme_remote_port = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %nvme_remote_port to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %nvme_remote_port, align 4
  %nvme_flag = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %nvme_flag to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nvme_flag, align 1
  %7 = and i8 %6, -7
  store i8 %7, ptr %nvme_flag, align 1
  %vha = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vha, align 8
  %port_name = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 5
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %9, i32 noundef 8464, ptr noundef nonnull @.str.20, ptr noundef %3, ptr noundef %port_name) #6
  %nvme_del_done = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 9
  tail call void @complete(ptr noundef %nvme_del_done) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_nvme_alloc_queue(ptr nocapture noundef readonly %lport, i32 noundef %qidx, i16 noundef zeroext %qsize, ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qidx)
  %tobool.not = icmp eq i32 %qidx, 0
  %dec = add i32 %qidx, -1
  %spec.select = select i1 %tobool.not, i32 0, i32 %dec
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %lport, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %conv = zext i16 %qsize to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %1, i32 noundef 8452, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.qla_nvme_alloc_queue, ptr noundef %handle, i32 noundef %spec.select, i32 noundef %conv) #6
  %4 = load i32, ptr getelementptr inbounds (%struct.nvme_fc_port_template, ptr @qla_nvme_fc_transport, i32 0, i32 10), align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %4)
  %cmp = icmp ugt i32 %spec.select, %4
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %1, i32 noundef 8495, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.qla_nvme_alloc_queue, i32 noundef %spec.select, i32 noundef %4) #6
  br label %cleanup

if.end3:                                          ; preds = %entry
  %max_qpairs = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 32
  %5 = ptrtoint ptr %max_qpairs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %max_qpairs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 34
  %7 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_qpair, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end3
  %queue_pair_map = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 26
  %9 = ptrtoint ptr %queue_pair_map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queue_pair_map, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %spec.select
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %handle, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %1, i32 noundef 8481, ptr noundef nonnull @.str.23, ptr noundef nonnull %12, i32 noundef %spec.select) #6
  br label %cleanup

if.end10:                                         ; preds = %if.else
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 46
  %14 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vp_idx, align 8
  %conv11 = zext i16 %15 to i32
  %call = tail call ptr @qla2xxx_create_qpair(ptr noundef %1, i32 noundef 5, i32 noundef %conv11, i1 noundef zeroext true) #6
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool12.not, label %if.then13, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %1, i32 noundef 8482, ptr noundef nonnull @.str.24) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end10.if.end15_crit_edge, %if.then5
  %qpair.0 = phi ptr [ %call, %if.end10.if.end15_crit_edge ], [ %8, %if.then5 ]
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %qpair.0, ptr %handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.then7, %if.then2
  %retval.0 = phi i32 [ -22, %if.then2 ], [ 0, %if.then7 ], [ 0, %if.end15 ], [ -22, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_nvme_ls_req(ptr nocapture noundef readnone %lport, ptr nocapture noundef readonly %rport, ptr noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %rport, i32 0, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private2 = getelementptr inbounds %struct.nvmefc_ls_req, ptr %fd, i32 0, i32 7
  %4 = ptrtoint ptr %private2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %deleted = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %deleted to i32
  call void @__asan_loadN_noabort(i32 %6, i32 3)
  %bf.load = load i24, ptr %deleted, align 4
  %7 = and i24 %bf.load, 6291456
  %tobool3.not = icmp eq i24 %7, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vha4 = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %vha4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vha4, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 52
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %11, i32 0, i32 2
  %12 = getelementptr inbounds i32, ptr %flags, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load5 = load volatile i32, ptr %12, align 4
  %14 = and i32 %bf.load5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %vref_count.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 60
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %vref_count.i, i32 1, i32 3, i32 1) #6
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count.i, ptr %vref_count.i, i32 1, ptr elementtype(i32) %vref_count.i) #6, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 8
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i = load volatile i32, ptr %flags.i, align 8
  %17 = and i32 %bf.load.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %vref_count.i, i32 1, i32 3, i32 1) #6
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count.i, ptr %vref_count.i, i32 1, ptr elementtype(i32) %vref_count.i) #6, !srcloc !120
  %vref_waitq.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %cleanup

if.end9.i:                                        ; preds = %if.end10
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %base_qpair.i = getelementptr inbounds %struct.qla_hw_data, ptr %20, i32 0, i32 34
  %21 = ptrtoint ptr %base_qpair.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_qpair.i, align 4
  %ref_count.i.i = getelementptr inbounds %struct.qla_qpair, ptr %22, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #6
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #6, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %delete_in_progress.i.i = getelementptr inbounds %struct.qla_qpair, ptr %22, i32 0, i32 6
  %24 = ptrtoint ptr %delete_in_progress.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i.i = load i8, ptr %delete_in_progress.i.i, align 64
  %25 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i, label %if.end9.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i1.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #6
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #6, !srcloc !120
  br label %do.body16.critedge.i

if.end9.i.i:                                      ; preds = %if.end9.i
  %srb_mempool.i.i = getelementptr inbounds %struct.qla_qpair, ptr %22, i32 0, i32 9
  %27 = ptrtoint ptr %srb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %srb_mempool.i.i, align 8
  %call.i.i = tail call noalias ptr @mempool_alloc(ptr noundef %28, i32 noundef 2592) #6
  %tobool10.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not.i.i, label %if.else12.i.i, label %if.end13

if.else12.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i2.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #6
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #6, !srcloc !120
  br label %do.body16.critedge.i

do.body16.critedge.i:                             ; preds = %if.else12.i.i, %if.then.i.i
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %vref_count.i, i32 1, i32 3, i32 1) #6
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count.i, ptr %vref_count.i, i32 1, ptr elementtype(i32) %vref_count.i) #6, !srcloc !120
  %vref_waitq18.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq18.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end9.i.i
  %31 = call ptr @memset(ptr %call.i.i, i32 0, i32 424)
  %fcport1.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %fcport1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %3, ptr %fcport1.i.i.i, align 4
  %iocbs.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 13
  %33 = ptrtoint ptr %iocbs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %iocbs.i.i.i, align 4
  %vha2.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 7
  %qpair3.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 14
  %34 = ptrtoint ptr %qpair3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %22, ptr %qpair3.i.i.i, align 8
  %elem.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 16
  %35 = ptrtoint ptr %elem.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %elem.i.i.i, ptr %elem.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 16, i32 1
  %36 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %elem.i.i.i, ptr %prev.i.i.i.i, align 4
  %37 = ptrtoint ptr %vha2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %9, ptr %vha2.i.i.i, align 8
  %type = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 11
  %38 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 20, ptr %type, align 2
  %name = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 12
  %39 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.25, ptr %name, align 8
  %done = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 24
  %40 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @qla_nvme_sp_ls_done, ptr %done, align 4
  %put_fn = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 26
  %41 = ptrtoint ptr %put_fn to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @qla_nvme_release_ls_cmd_kref, ptr %put_fn, align 4
  %priv14 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %priv14 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %5, ptr %priv14, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i.i, ptr %5, align 4
  %cmd_kref = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 3
  %call.i.i.i.i91 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_kref, i32 noundef 4) #6
  %44 = ptrtoint ptr %cmd_kref to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 1, ptr %cmd_kref, align 4
  %cmd_lock = getelementptr inbounds %struct.nvme_private, ptr %5, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %cmd_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @qla_nvme_ls_req.__key, i16 noundef signext 3) #6
  %fd17 = getelementptr inbounds %struct.nvme_private, ptr %5, i32 0, i32 1
  %45 = ptrtoint ptr %fd17 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %fd, ptr %fd17, align 4
  %desc = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %fd, ptr %desc, align 8
  %dir = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %47 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %dir, align 4
  %dl = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %48 = ptrtoint ptr %dl to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %dl, align 8
  %rqstlen = getelementptr inbounds %struct.nvmefc_ls_req, ptr %fd, i32 0, i32 2
  %49 = ptrtoint ptr %rqstlen to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rqstlen, align 8
  %cmd_len = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %51 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %cmd_len, align 4
  %rsplen = getelementptr inbounds %struct.nvmefc_ls_req, ptr %fd, i32 0, i32 5
  %52 = ptrtoint ptr %rsplen to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rsplen, align 4
  %rsp_len = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %54 = ptrtoint ptr %rsp_len to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %rsp_len, align 8
  %rspdma = getelementptr inbounds %struct.nvmefc_ls_req, ptr %fd, i32 0, i32 4
  %55 = ptrtoint ptr %rspdma to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rspdma, align 8
  %rsp_dma = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %rsp_dma, align 8
  %timeout = getelementptr inbounds %struct.nvmefc_ls_req, ptr %fd, i32 0, i32 6
  %58 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %timeout, align 8
  %timeout_sec = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %60 = ptrtoint ptr %timeout_sec to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %timeout_sec, align 4
  %61 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %11, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %63 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fd, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %64) #6
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end13
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i93, !prof !114

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i93:                                      ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #6
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44, i32 3
  %65 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i92 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i92, label %if.end.i.i, label %if.then.i93.dev_name.exit.i_crit_edge

if.then.i93.dev_name.exit.i_crit_edge:            ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i93.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %68, %if.end.i.i ], [ %66, %if.then.i93.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %64, i32 noundef %50) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %69 = load ptr, ptr @mem_map, align 4
  %70 = ptrtoint ptr %64 to i32
  %sub.i = add i32 %70, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %69, i32 %shr.i
  %and.i = and i32 %70, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %50, i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i94 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %cmd_dma = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %cmd_dma to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %retval.0.i94, ptr %cmd_dma, align 4
  %72 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %11, align 128
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %74 = ptrtoint ptr %rqstlen to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rqstlen, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %dev29, i32 noundef %retval.0.i94, i32 noundef %75, i32 noundef 1) #6
  %call33 = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp.not = icmp eq i32 %call33, 0
  br i1 %cmp.not, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.then34

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %9, i32 noundef 28686, ptr noundef nonnull @.str.27, i32 noundef %call33) #6
  %nvme_ls_waitq = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %nvme_ls_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %76 = ptrtoint ptr %priv14 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %priv14, align 4
  %77 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %5, align 4
  %78 = ptrtoint ptr %vha2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vha2.i.i.i, align 8
  %vref_count.i95 = getelementptr inbounds %struct.scsi_qla_host, ptr %79, i32 0, i32 60
  %call.i.i.i96 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count.i95, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %vref_count.i95, i32 1, i32 3, i32 1) #6
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count.i95, ptr %vref_count.i95, i32 1, ptr elementtype(i32) %vref_count.i95) #6, !srcloc !120
  %81 = ptrtoint ptr %vha2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vha2.i.i.i, align 8
  %vref_waitq.i97 = getelementptr inbounds %struct.scsi_qla_host, ptr %82, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq.i97, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %83 = ptrtoint ptr %qpair3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %qpair3.i.i.i, align 8
  store ptr null, ptr %qpair3.i.i.i, align 8
  %85 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @qla2xxx_rel_done_warning, ptr %done, align 4
  %free.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 25
  %86 = ptrtoint ptr %free.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @qla2xxx_rel_free_warning, ptr %free.i.i, align 8
  %srb_mempool.i.i98 = getelementptr inbounds %struct.qla_qpair, ptr %84, i32 0, i32 9
  %87 = ptrtoint ptr %srb_mempool.i.i98 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %srb_mempool.i.i98, align 8
  tail call void @mempool_free(ptr noundef nonnull %call.i.i, ptr noundef %88) #6
  %ref_count.i.i99 = getelementptr inbounds %struct.qla_qpair, ptr %84, i32 0, i32 1
  %call.i.i.i.i100 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i99, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i99, i32 1, i32 3, i32 1) #6
  %89 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i99, ptr %ref_count.i.i99, i32 1, ptr elementtype(i32) %ref_count.i.i99) #6, !srcloc !120
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %dma_map_single_attrs.exit.cleanup_crit_edge, %do.body16.critedge.i, %if.then.i, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.then34 ], [ 258, %lor.lhs.false.cleanup_crit_edge ], [ 258, %entry.cleanup_crit_edge ], [ 258, %if.end.cleanup_crit_edge ], [ 0, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ 258, %if.then.i ], [ 258, %do.body16.critedge.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_nvme_post_cmd(ptr nocapture noundef readnone %lport, ptr nocapture noundef readonly %rport, ptr noundef %hw_queue_handle, ptr noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fd, i32 0, i32 13
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %private1 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %rport, i32 0, i32 5
  %2 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool3.not = icmp eq ptr %hw_queue_handle, null
  %tobool4.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.rhs, !prof !122

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.rhs:                                          ; preds = %if.end
  %deleted = getelementptr inbounds %struct.fc_port, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %deleted to i32
  call void @__asan_loadN_noabort(i32 %6, i32 3)
  %bf.load = load i24, ptr %deleted, align 4
  %7 = and i24 %bf.load, 6291456
  %tobool5.not = icmp eq i24 %7, 0
  br i1 %tobool5.not, label %if.end9, label %lor.rhs.cleanup_crit_edge, !prof !114

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %lor.rhs
  %nvme_flag = getelementptr inbounds %struct.fc_port, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %nvme_flag to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nvme_flag, align 1
  %10 = and i8 %9, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %vha13 = getelementptr inbounds %struct.fc_port, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %vha13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vha13, align 8
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dpc_flags, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  %16 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool20.not = icmp eq i8 %16, 0
  %or.cond98 = select i1 %tobool14.not, i1 %tobool20.not, i1 false
  br i1 %or.cond98, label %if.end22, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %ref_count.i = getelementptr inbounds %struct.qla_qpair, ptr %hw_queue_handle, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #6
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #6, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %delete_in_progress.i = getelementptr inbounds %struct.qla_qpair, ptr %hw_queue_handle, i32 0, i32 6
  %18 = ptrtoint ptr %delete_in_progress.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %delete_in_progress.i, align 64
  %19 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #6
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #6, !srcloc !120
  br label %cleanup

if.end9.i:                                        ; preds = %if.end22
  %srb_mempool.i = getelementptr inbounds %struct.qla_qpair, ptr %hw_queue_handle, i32 0, i32 9
  %21 = ptrtoint ptr %srb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %srb_mempool.i, align 8
  %call.i = tail call noalias ptr @mempool_alloc(ptr noundef %22, i32 noundef 2592) #6
  %tobool10.not.i = icmp eq ptr %call.i, null
  br i1 %tobool10.not.i, label %if.else12.i, label %do.body

if.else12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #6
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #6, !srcloc !120
  br label %cleanup

do.body:                                          ; preds = %if.end9.i
  %24 = call ptr @memset(ptr %call.i, i32 0, i32 424)
  %fcport1.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %fcport1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %5, ptr %fcport1.i.i, align 4
  %iocbs.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 13
  %26 = ptrtoint ptr %iocbs.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %iocbs.i.i, align 4
  %vha2.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %vha2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %12, ptr %vha2.i.i, align 8
  %qpair3.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 14
  %28 = ptrtoint ptr %qpair3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %hw_queue_handle, ptr %qpair3.i.i, align 8
  %elem.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 16
  %29 = ptrtoint ptr %elem.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %elem.i.i, ptr %elem.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 16, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %elem.i.i, ptr %prev.i.i.i, align 4
  %nvme_ls_waitq = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %nvme_ls_waitq, ptr noundef nonnull @.str.31, ptr noundef nonnull @qla_nvme_post_cmd.__key) #6
  %cmd_kref = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_kref, i32 noundef 4) #6
  %31 = ptrtoint ptr %cmd_kref to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 1, ptr %cmd_kref, align 4
  %cmd_lock = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %cmd_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @qla_nvme_post_cmd.__key.32, i16 noundef signext 3) #6
  %priv31 = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %priv31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %1, ptr %priv31, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %1, align 4
  %type = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 11
  %34 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 19, ptr %type, align 2
  %name = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 12
  %35 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.33, ptr %name, align 8
  %done = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 24
  %36 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @qla_nvme_sp_done, ptr %done, align 4
  %put_fn = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 26
  %37 = ptrtoint ptr %put_fn to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @qla_nvme_release_fcp_cmd_kref, ptr %put_fn, align 4
  %38 = ptrtoint ptr %qpair3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %hw_queue_handle, ptr %qpair3.i.i, align 8
  %39 = ptrtoint ptr %vha2.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %12, ptr %vha2.i.i, align 8
  %cmd_sp = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 15
  %40 = ptrtoint ptr %cmd_sp to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %cmd_sp, align 4
  %desc = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %fd, ptr %desc, align 8
  %42 = ptrtoint ptr %fcport1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fcport1.i.i, align 4
  %vha1.i = getelementptr inbounds %struct.fc_port, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %vha1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vha1.i, align 8
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %45, i32 0, i32 52
  %46 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw.i, align 4
  %u.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22
  %48 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fd, align 8
  %req4.i = getelementptr inbounds %struct.qla_qpair, ptr %hw_queue_handle, i32 0, i32 12
  %50 = ptrtoint ptr %req4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %req4.i, align 4
  %rsp5.i = getelementptr inbounds %struct.qla_qpair, ptr %hw_queue_handle, i32 0, i32 13
  %52 = ptrtoint ptr %rsp5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rsp5.i, align 8
  %sg_cnt.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fd, i32 0, i32 9
  %54 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sg_cnt.i, align 8
  %conv.i = trunc i32 %55 to i16
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %hw_queue_handle) #6
  %call11.i = tail call i32 @qla2xxx_get_next_handle(ptr noundef %51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp eq i32 %call11.i, 0
  br i1 %cmp12.i, label %do.body.if.then38_crit_edge, label %if.end.i

do.body.if.then38_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv.i)
  %cmp.i.i = icmp ugt i16 %conv.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.qla24xx_calc_iocbs.exit.i_crit_edge

if.end.i.qla24xx_calc_iocbs.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla24xx_calc_iocbs.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i16 %conv.i, -1
  %sub.i.i.frozen = freeze i16 %sub.i.i
  %div12.i.i = udiv i16 %sub.i.i.frozen, 5
  %56 = mul i16 %div12.i.i, 5
  %rem34.i.i.decomposed = sub i16 %sub.i.i.frozen, %56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem34.i.i.decomposed)
  %tobool.not.i.i = icmp eq i16 %rem34.i.i.decomposed, 0
  %spec.select.v.i.i = select i1 %tobool.not.i.i, i16 1, i16 2
  %spec.select.i.i = add nuw nsw i16 %spec.select.v.i.i, %div12.i.i
  br label %qla24xx_calc_iocbs.exit.i

qla24xx_calc_iocbs.exit.i:                        ; preds = %if.then.i.i, %if.end.i.qla24xx_calc_iocbs.exit.i_crit_edge
  %iocbs.0.i.i = phi i16 [ 1, %if.end.i.qla24xx_calc_iocbs.exit.i_crit_edge ], [ %spec.select.i.i, %if.then.i.i ]
  %cnt15.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 8
  %57 = ptrtoint ptr %cnt15.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %cnt15.i, align 4
  %conv16.i = zext i16 %58 to i32
  %conv17.i = zext i16 %iocbs.0.i.i to i32
  %add.i = add nuw nsw i32 %conv17.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv16.i)
  %cmp18.i = icmp ugt i32 %add.i, %conv16.i
  br i1 %cmp18.i, label %if.then20.i, label %qla24xx_calc_iocbs.exit.i.if.end76.i_crit_edge

qla24xx_calc_iocbs.exit.i.if.end76.i_crit_edge:   ; preds = %qla24xx_calc_iocbs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

if.then20.i:                                      ; preds = %qla24xx_calc_iocbs.exit.i
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %47, i32 0, i32 54
  %59 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %isp_type.i, align 8
  %61 = and i32 %60, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %if.else.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  %out_ptr.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 7
  %63 = ptrtoint ptr %out_ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %out_ptr.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %64, align 2
  br label %if.end47.i

if.else.i:                                        ; preds = %if.then20.i
  %req_q_out.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 4
  %67 = ptrtoint ptr %req_q_out.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %req_q_out.i, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #6, !srcloc !123
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #6
  %conv43.i = trunc i32 %70 to i16
  %call44.i = tail call zeroext i1 @qla2x00_check_reg16_for_disconnect(ptr noundef %45, i16 noundef zeroext %conv43.i) #6
  br i1 %call44.i, label %if.else.i.qla2x00_start_nvme_mq.exit.thread_crit_edge, label %if.else.i.if.end47.i_crit_edge

if.else.i.if.end47.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.else.i.qla2x00_start_nvme_mq.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla2x00_start_nvme_mq.exit.thread

if.end47.i:                                       ; preds = %if.else.i.if.end47.i_crit_edge, %if.then41.i
  %cnt.0.i = phi i16 [ %66, %if.then41.i ], [ %conv43.i, %if.else.i.if.end47.i_crit_edge ]
  %ring_index.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 5
  %71 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ring_index.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %cnt.0.i, i16 %72)
  %cmp50.i = icmp ugt i16 %cnt.0.i, %72
  br i1 %cmp50.i, label %if.then52.i, label %if.else58.i

if.then52.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i16 %cnt.0.i, %72
  br label %if.end67.i

if.else58.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  %length.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 9
  %73 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %length.i, align 2
  %sub63.neg.i = sub i16 %cnt.0.i, %72
  %sub64.i = add i16 %sub63.neg.i, %74
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.else58.i, %if.then52.i
  %storemerge385.i = phi i16 [ %sub64.i, %if.else58.i ], [ %sub.i, %if.then52.i ]
  %75 = ptrtoint ptr %cnt15.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %storemerge385.i, ptr %cnt15.i, align 4
  %conv69.i = zext i16 %storemerge385.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv69.i)
  %cmp72.i = icmp ugt i32 %add.i, %conv69.i
  br i1 %cmp72.i, label %if.end67.i.if.then38_crit_edge, label %if.end67.i.if.end76.i_crit_edge

if.end67.i.if.end76.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

if.end67.i.if.then38_crit_edge:                   ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

if.end76.i:                                       ; preds = %if.end67.i.if.end76.i_crit_edge, %qla24xx_calc_iocbs.exit.i.if.end76.i_crit_edge
  %sqid.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fd, i32 0, i32 11
  %76 = ptrtoint ptr %sqid.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %sqid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool77.not.i = icmp eq i16 %77, 0
  br i1 %tobool77.not.i, label %if.then81.i, label %if.end76.i.if.end88.i_crit_edge, !prof !124

if.end76.i.if.end88.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88.i

if.then81.i:                                      ; preds = %if.end76.i
  %sqe.i = getelementptr inbounds %struct.nvme_fc_cmd_iu, ptr %49, i32 0, i32 9
  %78 = ptrtoint ptr %sqe.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sqe.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %79)
  %cmp83.i = icmp eq i8 %79, 12
  br i1 %cmp83.i, label %if.then85.i, label %if.then81.i.if.end88.i_crit_edge

if.then81.i.if.end88.i_crit_edge:                 ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88.i

if.then85.i:                                      ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #8
  %aen_op.i = getelementptr inbounds %struct.anon.99, ptr %u.i, i32 0, i32 2
  %80 = ptrtoint ptr %aen_op.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %aen_op.i, align 4
  %nvme_active_aen_cnt.i = getelementptr inbounds %struct.qla_hw_data, ptr %47, i32 0, i32 293
  %call.i.i.i87 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nvme_active_aen_cnt.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %nvme_active_aen_cnt.i, i32 1, i32 3, i32 1) #6
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nvme_active_aen_cnt.i, ptr %nvme_active_aen_cnt.i, i32 1, ptr elementtype(i32) %nvme_active_aen_cnt.i) #6, !srcloc !118
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then85.i, %if.then81.i.if.end88.i_crit_edge, %if.end76.i.if.end88.i_crit_edge
  %current_outstanding_cmd.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 17
  %82 = ptrtoint ptr %current_outstanding_cmd.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call11.i, ptr %current_outstanding_cmd.i, align 4
  %outstanding_cmds.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 16
  %83 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %outstanding_cmds.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %84, i32 %call11.i
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %handle89.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 9
  %86 = ptrtoint ptr %handle89.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call11.i, ptr %handle89.i, align 8
  %87 = ptrtoint ptr %cnt15.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %cnt15.i, align 4
  %sub93.i = sub i16 %88, %iocbs.0.i.i
  store i16 %sub93.i, ptr %cnt15.i, align 4
  %ring_ptr.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 2
  %89 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ring_ptr.i, align 4
  %id.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 12
  %91 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %id.i, align 4
  %conv.i.i = zext i16 %92 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 16
  %conv1.i.i = and i32 %call11.i, 65535
  %or.i.i = or i32 %shl.i.i, %conv1.i.i
  %handle97.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 4
  %93 = ptrtoint ptr %handle97.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or.i.i, ptr %handle97.i, align 4
  %add.ptr.i = getelementptr i32, ptr %90, i32 2
  %94 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 56)
  %entry_status.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 3
  %95 = ptrtoint ptr %entry_status.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %entry_status.i, align 1
  %96 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -120, ptr %90, align 8
  %io_dir.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fd, i32 0, i32 10
  %97 = ptrtoint ptr %io_dir.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %io_dir.i, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %98, label %if.end88.i.if.end145.i_crit_edge [
    i32 2, label %if.then100.i
    i32 1, label %if.then108.i
    i32 0, label %if.then141.i
  ]

if.end88.i.if.end145.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145.i

if.then100.i:                                     ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  %control_flags.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 10
  %100 = ptrtoint ptr %control_flags.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 512, ptr %control_flags.i, align 8
  %payload_length.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fd, i32 0, i32 6
  %101 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %payload_length.i, align 4
  %conv101.i = zext i32 %102 to i64
  %counters.i = getelementptr inbounds %struct.qla_qpair, ptr %hw_queue_handle, i32 0, i32 18
  %103 = ptrtoint ptr %counters.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %counters.i, align 8
  %add102.i = add i64 %104, %conv101.i
  store i64 %add102.i, ptr %counters.i, align 8
  %input_requests.i = getelementptr inbounds %struct.qla_qpair, ptr %hw_queue_handle, i32 0, i32 18, i32 1
  %105 = ptrtoint ptr %input_requests.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %input_requests.i, align 8
  %inc.i = add i64 %106, 1
  store i64 %inc.i, ptr %input_requests.i, align 8
  br label %if.end145.i

if.then108.i:                                     ; preds = %if.end88.i
  %control_flags109.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 10
  %107 = ptrtoint ptr %control_flags109.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 256, ptr %control_flags109.i, align 8
  %flags110.i = getelementptr inbounds %struct.scsi_qla_host, ptr %45, i32 0, i32 8
  %108 = ptrtoint ptr %flags110.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %bf.load.i88 = load volatile i32, ptr %flags110.i, align 8
  %109 = and i32 %bf.load.i88, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool111.not.i = icmp eq i32 %109, 0
  br i1 %tobool111.not.i, label %if.then108.i.if.end130.i_crit_edge, label %land.lhs.true.i

if.then108.i.if.end130.i_crit_edge:               ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130.i

land.lhs.true.i:                                  ; preds = %if.then108.i
  %110 = ptrtoint ptr %fcport1.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fcport1.i.i, align 4
  %nvme_prli_service_param.i = getelementptr inbounds %struct.fc_port, ptr %111, i32 0, i32 10
  %112 = ptrtoint ptr %nvme_prli_service_param.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nvme_prli_service_param.i, align 8
  %and113.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  br i1 %tobool114.not.i, label %land.lhs.true.i.if.end130.i_crit_edge, label %if.then115.i

land.lhs.true.i.if.end130.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130.i

if.then115.i:                                     ; preds = %land.lhs.true.i
  %payload_length116.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fd, i32 0, i32 6
  %114 = ptrtoint ptr %payload_length116.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %payload_length116.i, align 4
  %nvme_first_burst_size.i = getelementptr inbounds %struct.fc_port, ptr %111, i32 0, i32 11
  %116 = ptrtoint ptr %nvme_first_burst_size.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nvme_first_burst_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %117)
  %cmp118.not.i = icmp ule i32 %115, %117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp123.i = icmp eq i32 %117, 0
  %or.cond389.i = or i1 %cmp118.not.i, %cmp123.i
  br i1 %or.cond389.i, label %if.then125.i, label %if.then115.i.if.end130.i_crit_edge

if.then115.i.if.end130.i_crit_edge:               ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130.i

if.then125.i:                                     ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %control_flags109.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 264, ptr %control_flags109.i, align 8
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.then125.i, %if.then115.i.if.end130.i_crit_edge, %land.lhs.true.i.if.end130.i_crit_edge, %if.then108.i.if.end130.i_crit_edge
  %payload_length131.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fd, i32 0, i32 6
  %119 = ptrtoint ptr %payload_length131.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %payload_length131.i, align 4
  %conv132.i = zext i32 %120 to i64
  %output_bytes.i = getelementptr inbounds %struct.qla_qpair, ptr %hw_queue_handle, i32 0, i32 18, i32 2
  %121 = ptrtoint ptr %output_bytes.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %output_bytes.i, align 8
  %add134.i = add i64 %122, %conv132.i
  store i64 %add134.i, ptr %output_bytes.i, align 8
  %output_requests.i = getelementptr inbounds %struct.qla_qpair, ptr %hw_queue_handle, i32 0, i32 18, i32 3
  %123 = ptrtoint ptr %output_requests.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %output_requests.i, align 8
  %inc136.i = add i64 %124, 1
  store i64 %inc136.i, ptr %output_requests.i, align 8
  br label %if.end145.i

if.then141.i:                                     ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  %control_flags142.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 10
  %125 = ptrtoint ptr %control_flags142.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %control_flags142.i, align 8
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then141.i, %if.end130.i, %if.then100.i, %if.end88.i.if.end145.i_crit_edge
  %126 = ptrtoint ptr %fcport1.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %fcport1.i.i, align 4
  %edif.i = getelementptr inbounds %struct.fc_port, ptr %127, i32 0, i32 72
  %128 = ptrtoint ptr %edif.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load147.i = load i16, ptr %edif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load147.i)
  %tobool149.not.i = icmp sgt i16 %bf.load147.i, -1
  br i1 %tobool149.not.i, label %if.end145.i.if.end159.i_crit_edge, label %land.lhs.true150.i

if.end145.i.if.end159.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159.i

land.lhs.true150.i:                               ; preds = %if.end145.i
  %129 = ptrtoint ptr %io_dir.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %io_dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp152.not.i = icmp eq i32 %130, 0
  br i1 %cmp152.not.i, label %land.lhs.true150.i.if.end159.i_crit_edge, label %if.then154.i

land.lhs.true150.i.if.end159.i_crit_edge:         ; preds = %land.lhs.true150.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159.i

if.then154.i:                                     ; preds = %land.lhs.true150.i
  call void @__sanitizer_cov_trace_pc() #8
  %control_flags155.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 10
  %131 = ptrtoint ptr %control_flags155.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %control_flags155.i, align 8
  %133 = or i16 %132, 2
  store i16 %133, ptr %control_flags155.i, align 8
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then154.i, %land.lhs.true150.i.if.end159.i_crit_edge, %if.end145.i.if.end159.i_crit_edge
  %flags160.i = getelementptr inbounds %struct.scsi_qla_host, ptr %45, i32 0, i32 8
  %134 = ptrtoint ptr %flags160.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %bf.load161.i = load volatile i32, ptr %flags160.i, align 8
  %135 = and i32 %bf.load161.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool164.not.i = icmp eq i32 %135, 0
  br i1 %tobool164.not.i, label %if.end159.i.if.end176.i_crit_edge, label %land.lhs.true165.i

if.end159.i.if.end176.i_crit_edge:                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176.i

land.lhs.true165.i:                               ; preds = %if.end159.i
  %sqe166.i = getelementptr inbounds %struct.nvme_fc_cmd_iu, ptr %49, i32 0, i32 9
  %136 = ptrtoint ptr %sqe166.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %sqe166.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %137)
  %cmp169.i = icmp eq i8 %137, 12
  br i1 %cmp169.i, label %if.then171.i, label %land.lhs.true165.i.if.end176.i_crit_edge

land.lhs.true165.i.if.end176.i_crit_edge:         ; preds = %land.lhs.true165.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176.i

if.then171.i:                                     ; preds = %land.lhs.true165.i
  call void @__sanitizer_cov_trace_pc() #8
  %control_flags172.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 10
  %138 = ptrtoint ptr %control_flags172.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %control_flags172.i, align 8
  %140 = or i16 %139, 32
  store i16 %140, ptr %control_flags172.i, align 8
  br label %if.end176.i

if.end176.i:                                      ; preds = %if.then171.i, %land.lhs.true165.i.if.end176.i_crit_edge, %if.end159.i.if.end176.i_crit_edge
  %141 = ptrtoint ptr %fcport1.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %fcport1.i.i, align 4
  %loop_id.i = getelementptr inbounds %struct.fc_port, ptr %142, i32 0, i32 7
  %143 = ptrtoint ptr %loop_id.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %loop_id.i, align 4
  %145 = tail call i16 @llvm.bswap.i16(i16 %144) #6
  %146 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %add.ptr.i, align 8
  %147 = ptrtoint ptr %fcport1.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %fcport1.i.i, align 4
  %d_id.i = getelementptr inbounds %struct.fc_port, ptr %148, i32 0, i32 6
  %al_pa.i = getelementptr inbounds %struct.anon.80, ptr %d_id.i, i32 0, i32 2
  %149 = ptrtoint ptr %al_pa.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %al_pa.i, align 2
  %port_id.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 15
  %151 = ptrtoint ptr %port_id.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %port_id.i, align 8
  %152 = load ptr, ptr %fcport1.i.i, align 4
  %d_id181.i = getelementptr inbounds %struct.fc_port, ptr %152, i32 0, i32 6
  %area.i = getelementptr inbounds %struct.anon.80, ptr %d_id181.i, i32 0, i32 1
  %153 = ptrtoint ptr %area.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %area.i, align 1
  %arrayidx183.i = getelementptr %struct.cmd_nvme, ptr %90, i32 0, i32 15, i32 1
  %155 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %arrayidx183.i, align 1
  %156 = load ptr, ptr %fcport1.i.i, align 4
  %d_id185.i = getelementptr inbounds %struct.fc_port, ptr %156, i32 0, i32 6
  %157 = ptrtoint ptr %d_id185.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %d_id185.i, align 8
  %arrayidx187.i = getelementptr %struct.cmd_nvme, ptr %90, i32 0, i32 15, i32 2
  %159 = ptrtoint ptr %arrayidx187.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %arrayidx187.i, align 2
  %160 = load ptr, ptr %fcport1.i.i, align 4
  %vha189.i = getelementptr inbounds %struct.fc_port, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %vha189.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %vha189.i, align 8
  %vp_idx.i = getelementptr inbounds %struct.scsi_qla_host, ptr %162, i32 0, i32 46
  %163 = ptrtoint ptr %vp_idx.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %vp_idx.i, align 8
  %conv190.i = trunc i16 %164 to i8
  %vp_index.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 16
  %165 = ptrtoint ptr %vp_index.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv190.i, ptr %vp_index.i, align 1
  %rsplen.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fd, i32 0, i32 5
  %166 = ptrtoint ptr %rsplen.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %rsplen.i, align 2
  %168 = tail call i16 @llvm.bswap.i16(i16 %167) #6
  %nvme_rsp_dsd_len.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 8
  %169 = ptrtoint ptr %nvme_rsp_dsd_len.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %nvme_rsp_dsd_len.i, align 2
  %rspdma.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fd, i32 0, i32 3
  %170 = ptrtoint ptr %rspdma.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %rspdma.i, align 4
  %conv191.i = zext i32 %171 to i64
  %nvme_rsp_dseg_address.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 13
  %172 = tail call i64 @llvm.bswap.i64(i64 %conv191.i) #6
  %173 = ptrtoint ptr %nvme_rsp_dseg_address.i to i32
  call void @__asan_storeN_noabort(i32 %173, i32 8)
  store i64 %172, ptr %nvme_rsp_dseg_address.i, align 1
  %cmdlen.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fd, i32 0, i32 4
  %174 = ptrtoint ptr %cmdlen.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %cmdlen.i, align 8
  %176 = tail call i16 @llvm.bswap.i16(i16 %175) #6
  %nvme_cmnd_dseg_len.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 11
  %177 = ptrtoint ptr %nvme_cmnd_dseg_len.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %nvme_cmnd_dseg_len.i, align 2
  %cmddma.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fd, i32 0, i32 2
  %178 = ptrtoint ptr %cmddma.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %cmddma.i, align 8
  %conv192.i = zext i32 %179 to i64
  %180 = tail call i64 @llvm.bswap.i64(i64 %conv192.i) #6
  %nvme_cmnd_dseg_address.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 12
  %181 = ptrtoint ptr %nvme_cmnd_dseg_address.i to i32
  call void @__asan_storeN_noabort(i32 %181, i32 8)
  store i64 %180, ptr %nvme_cmnd_dseg_address.i, align 4
  %182 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %dseg_count.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 7
  %183 = ptrtoint ptr %dseg_count.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %182, ptr %dseg_count.i, align 4
  %payload_length193.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fd, i32 0, i32 6
  %184 = ptrtoint ptr %payload_length193.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %payload_length193.i, align 4
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #6
  %byte_count.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 14
  %187 = ptrtoint ptr %byte_count.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %byte_count.i, align 4
  %conv195.i = and i32 %55, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv195.i)
  %cmp196393.not.i = icmp eq i32 %conv195.i, 0
  br i1 %cmp196393.not.i, label %if.end176.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end176.i.for.end.i_crit_edge:                  ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end176.i
  %first_sgl.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fd, i32 0, i32 8
  %188 = ptrtoint ptr %first_sgl.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %first_sgl.i, align 4
  %nvme_dsd.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 17
  %ring_index202.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 5
  %length206.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 9
  %ring.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end218.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end218.i.for.body.i_crit_edge ]
  %sg.0397.i = phi ptr [ %189, %for.body.lr.ph.i ], [ %call220.i, %if.end218.i.for.body.i_crit_edge ]
  %avail_dsds.0396.i = phi i16 [ 1, %for.body.lr.ph.i ], [ %dec.i, %if.end218.i.for.body.i_crit_edge ]
  %cur_dsd.0394.i = phi ptr [ %nvme_dsd.i, %for.body.lr.ph.i ], [ %incdec.ptr.i.i, %if.end218.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %avail_dsds.0396.i)
  %cmp199.i = icmp eq i16 %avail_dsds.0396.i, 0
  br i1 %cmp199.i, label %if.then201.i, label %for.body.i.if.end218.i_crit_edge

for.body.i.if.end218.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end218.i

if.then201.i:                                     ; preds = %for.body.i
  %190 = ptrtoint ptr %ring_index202.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %ring_index202.i, align 4
  %inc203.i = add i16 %191, 1
  store i16 %inc203.i, ptr %ring_index202.i, align 4
  %192 = ptrtoint ptr %length206.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %length206.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc203.i, i16 %193)
  %cmp208.i = icmp eq i16 %inc203.i, %193
  br i1 %cmp208.i, label %if.then210.i, label %if.else213.i

if.then210.i:                                     ; preds = %if.then201.i
  call void @__sanitizer_cov_trace_pc() #8
  %194 = ptrtoint ptr %ring_index202.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 0, ptr %ring_index202.i, align 4
  %195 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %ring.i, align 4
  br label %if.end215.i

if.else213.i:                                     ; preds = %if.then201.i
  call void @__sanitizer_cov_trace_pc() #8
  %197 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ring_ptr.i, align 4
  %incdec.ptr.i = getelementptr %struct.cmd_a64_entry_t, ptr %198, i32 1
  br label %if.end215.i

if.end215.i:                                      ; preds = %if.else213.i, %if.then210.i
  %storemerge384.i = phi ptr [ %incdec.ptr.i, %if.else213.i ], [ %196, %if.then210.i ]
  %199 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %storemerge384.i, ptr %ring_ptr.i, align 4
  %200 = ptrtoint ptr %storemerge384.i to i32
  call void @__asan_storeN_noabort(i32 %200, i32 4)
  store i32 167772160, ptr %storemerge384.i, align 1
  %dsd.i = getelementptr inbounds %struct.cont_a64_entry_t, ptr %storemerge384.i, i32 0, i32 4
  br label %if.end218.i

if.end218.i:                                      ; preds = %if.end215.i, %for.body.i.if.end218.i_crit_edge
  %cur_dsd.1.i = phi ptr [ %dsd.i, %if.end215.i ], [ %cur_dsd.0394.i, %for.body.i.if.end218.i_crit_edge ]
  %avail_dsds.1.i = phi i16 [ 5, %if.end215.i ], [ %avail_dsds.0396.i, %for.body.i.if.end218.i_crit_edge ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0397.i, i32 0, i32 3
  %201 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %dma_address.i.i, align 4
  %conv.i390.i = zext i32 %202 to i64
  %203 = tail call i64 @llvm.bswap.i64(i64 %conv.i390.i) #6
  %204 = ptrtoint ptr %cur_dsd.1.i to i32
  call void @__asan_storeN_noabort(i32 %204, i32 8)
  store i64 %203, ptr %cur_dsd.1.i, align 1
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0397.i, i32 0, i32 4
  %205 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %dma_length.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.1.i, i32 0, i32 1
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #6
  %208 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %208, i32 4)
  store i32 %207, ptr %length.i.i, align 1
  %incdec.ptr.i.i = getelementptr %struct.dsd64, ptr %cur_dsd.1.i, i32 1
  %dec.i = add i16 %avail_dsds.1.i, -1
  %call220.i = tail call ptr @sg_next(ptr noundef %sg.0397.i) #6
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %conv195.i
  br i1 %exitcond.not.i, label %if.end218.i.for.end.i_crit_edge, label %if.end218.i.for.body.i_crit_edge

if.end218.i.for.body.i_crit_edge:                 ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end218.i.for.end.i_crit_edge:                  ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end218.i.for.end.i_crit_edge, %if.end176.i.for.end.i_crit_edge
  %conv221.i = trunc i16 %iocbs.0.i.i to i8
  %entry_count.i = getelementptr inbounds %struct.cmd_nvme, ptr %90, i32 0, i32 1
  %209 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %conv221.i, ptr %entry_count.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %ring_index225.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 5
  %210 = ptrtoint ptr %ring_index225.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %ring_index225.i, align 4
  %inc226.i = add i16 %211, 1
  store i16 %inc226.i, ptr %ring_index225.i, align 4
  %length229.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 9
  %212 = ptrtoint ptr %length229.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %length229.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc226.i, i16 %213)
  %cmp231.i = icmp eq i16 %inc226.i, %213
  br i1 %cmp231.i, label %if.then233.i, label %if.else237.i

if.then233.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %214 = ptrtoint ptr %ring_index225.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 0, ptr %ring_index225.i, align 4
  %ring235.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 1
  %215 = ptrtoint ptr %ring235.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %ring235.i, align 4
  br label %if.end240.i

if.else237.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %217 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ring_ptr.i, align 4
  %incdec.ptr239.i = getelementptr %struct.cmd_a64_entry_t, ptr %218, i32 1
  br label %if.end240.i

if.end240.i:                                      ; preds = %if.else237.i, %if.then233.i
  %storemerge.i = phi ptr [ %incdec.ptr239.i, %if.else237.i ], [ %216, %if.then233.i ]
  %219 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %storemerge.i, ptr %ring_ptr.i, align 4
  %aen_op242.i = getelementptr inbounds %struct.anon.99, ptr %u.i, i32 0, i32 2
  %220 = ptrtoint ptr %aen_op242.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %aen_op242.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool243.not.i = icmp eq i8 %221, 0
  br i1 %tobool243.not.i, label %if.then244.i, label %if.end240.i.if.end247.i_crit_edge

if.end240.i.if.end247.i_crit_edge:                ; preds = %if.end240.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end247.i

if.then244.i:                                     ; preds = %if.end240.i
  call void @__sanitizer_cov_trace_pc() #8
  %222 = ptrtoint ptr %qpair3.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %qpair3.i.i, align 8
  %cmd_cnt.i = getelementptr inbounds %struct.qla_qpair, ptr %223, i32 0, i32 28
  %224 = ptrtoint ptr %cmd_cnt.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %cmd_cnt.i, align 8
  %inc246.i = add i32 %225, 1
  store i32 %inc246.i, ptr %cmd_cnt.i, align 8
  br label %if.end247.i

if.end247.i:                                      ; preds = %if.then244.i, %if.end240.i.if.end247.i_crit_edge
  %req_q_in.i = getelementptr inbounds %struct.req_que, ptr %51, i32 0, i32 3
  %226 = ptrtoint ptr %req_q_in.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %req_q_in.i, align 4
  %228 = ptrtoint ptr %ring_index225.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %ring_index225.i, align 4
  %conv249.i = zext i16 %229 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  %230 = tail call i32 @llvm.bswap.i32(i32 %conv249.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 %230) #6, !srcloc !127
  %231 = ptrtoint ptr %flags160.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %bf.load251.i = load volatile i32, ptr %flags160.i, align 8
  %232 = and i32 %bf.load251.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool254.not.i = icmp eq i32 %232, 0
  br i1 %tobool254.not.i, label %if.end247.i.qla2x00_start_nvme_mq.exit.thread_crit_edge, label %land.lhs.true255.i

if.end247.i.qla2x00_start_nvme_mq.exit.thread_crit_edge: ; preds = %if.end247.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla2x00_start_nvme_mq.exit.thread

land.lhs.true255.i:                               ; preds = %if.end247.i
  %ring_ptr256.i = getelementptr inbounds %struct.rsp_que, ptr %53, i32 0, i32 2
  %233 = ptrtoint ptr %ring_ptr256.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %ring_ptr256.i, align 4
  %signature.i = getelementptr inbounds %struct.response_t, ptr %234, i32 0, i32 6
  %235 = ptrtoint ptr %signature.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %signature.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559030611, i32 %236)
  %cmp257.not.i = icmp eq i32 %236, -559030611
  br i1 %cmp257.not.i, label %land.lhs.true255.i.qla2x00_start_nvme_mq.exit.thread_crit_edge, label %if.then259.i

land.lhs.true255.i.qla2x00_start_nvme_mq.exit.thread_crit_edge: ; preds = %land.lhs.true255.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla2x00_start_nvme_mq.exit.thread

if.then259.i:                                     ; preds = %land.lhs.true255.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qla24xx_process_response_queue(ptr noundef %45, ptr noundef %53) #6
  br label %qla2x00_start_nvme_mq.exit.thread

qla2x00_start_nvme_mq.exit.thread:                ; preds = %if.then259.i, %land.lhs.true255.i.qla2x00_start_nvme_mq.exit.thread_crit_edge, %if.end247.i.qla2x00_start_nvme_mq.exit.thread_crit_edge, %if.else.i.qla2x00_start_nvme_mq.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_queue_handle, i32 noundef %call8.i) #6
  br label %cleanup

if.then38:                                        ; preds = %if.end67.i.if.then38_crit_edge, %do.body.if.then38_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %hw_queue_handle, i32 noundef %call8.i) #6
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %12, i32 noundef 8493, ptr noundef nonnull @.str.34, i32 noundef -16) #6
  tail call void @__wake_up(ptr noundef %nvme_ls_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %237 = ptrtoint ptr %priv31 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr null, ptr %priv31, align 4
  %238 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr null, ptr %1, align 4
  %239 = ptrtoint ptr %qpair3.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %qpair3.i.i, align 8
  store ptr null, ptr %qpair3.i.i, align 8
  %241 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr @qla2xxx_rel_done_warning, ptr %done, align 4
  %free.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 25
  %242 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr @qla2xxx_rel_free_warning, ptr %free.i, align 8
  %srb_mempool.i89 = getelementptr inbounds %struct.qla_qpair, ptr %240, i32 0, i32 9
  %243 = ptrtoint ptr %srb_mempool.i89 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %srb_mempool.i89, align 8
  tail call void @mempool_free(ptr noundef nonnull %call.i, ptr noundef %244) #6
  %ref_count.i90 = getelementptr inbounds %struct.qla_qpair, ptr %240, i32 0, i32 1
  %call.i.i.i91 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i90, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %ref_count.i90, i32 1, i32 3, i32 1) #6
  %245 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i90, ptr %ref_count.i90, i32 1, ptr elementtype(i32) %ref_count.i90) #6, !srcloc !120
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %qla2x00_start_nvme_mq.exit.thread, %if.else12.i, %if.then.i, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -16, %lor.rhs.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ], [ -16, %if.end12.cleanup_crit_edge ], [ -16, %if.then38 ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %qla2x00_start_nvme_mq.exit.thread ], [ -16, %if.then.i ], [ -16, %if.else12.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla_nvme_ls_abort(ptr nocapture noundef readnone %lport, ptr nocapture noundef readnone %rport, ptr nocapture noundef readonly %fd) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvmefc_ls_req, ptr %fd, i32 0, i32 7
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %cmd_lock = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_kref = getelementptr inbounds %struct.srb, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_kref, i32 noundef 4) #6
  %4 = ptrtoint ptr %cmd_kref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cmd_kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end
  %6 = phi i32 [ %5, %if.end ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cmd_kref, i32 noundef 4) #6
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #6
  %8 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %cmd_kref, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %cmd_kref, ptr %cmd_kref, i32 %9, i32 %add.i.i.i.i, ptr elementtype(i32) %cmd_kref) #6, !srcloc !128
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !114

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !114

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %cmd_kref, i32 noundef 0) #6
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %15 = phi i32 [ %12, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.i.i.i.i.not = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call2) #6
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.cleanup_crit_edge, label %if.end11

kref_get_unless_zero.exit.cleanup_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #8
  %abort_work = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 3
  call void @__init_work(ptr noundef %abort_work, i32 noundef 0) #6
  %16 = ptrtoint ptr %abort_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %abort_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 3, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.35, ptr noundef nonnull @qla_nvme_ls_abort.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry17 = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 3, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @qla_nvme_abort_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %abort_work) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %kref_get_unless_zero.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla_nvme_fcp_abort(ptr nocapture noundef readnone %lport, ptr nocapture noundef readnone %rport, ptr nocapture noundef readnone %hw_queue_handle, ptr nocapture noundef readonly %fd) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fd, i32 0, i32 13
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %cmd_lock = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_kref = getelementptr inbounds %struct.srb, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_kref, i32 noundef 4) #6
  %4 = ptrtoint ptr %cmd_kref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cmd_kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end
  %6 = phi i32 [ %5, %if.end ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cmd_kref, i32 noundef 4) #6
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #6
  %8 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %cmd_kref, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %cmd_kref, ptr %cmd_kref, i32 %9, i32 %add.i.i.i.i, ptr elementtype(i32) %cmd_kref) #6, !srcloc !128
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !114

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !114

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %cmd_kref, i32 noundef 0) #6
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %15 = phi i32 [ %12, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.i.i.i.i.not = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call2) #6
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.cleanup_crit_edge, label %if.end11

kref_get_unless_zero.exit.cleanup_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #8
  %abort_work = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 3
  call void @__init_work(ptr noundef %abort_work, i32 noundef 0) #6
  %16 = ptrtoint ptr %abort_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %abort_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 3, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.35, ptr noundef nonnull @qla_nvme_fcp_abort.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry17 = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 3, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @qla_nvme_abort_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %abort_work) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %kref_get_unless_zero.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla_nvme_map_queues(ptr nocapture noundef readonly %lport, ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %lport, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %irq_offset = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 83
  %6 = ptrtoint ptr %irq_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_offset, align 4
  %call = tail call i32 @blk_mq_pci_map_queues(ptr noundef %map, ptr noundef %5, i32 noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %1, i32 noundef 8670, ptr noundef nonnull @.str.41, i32 noundef %call) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla2xxx_create_qpair(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla_nvme_sp_ls_done(ptr noundef %sp, i32 noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %cmd_kref = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_kref, i32 noundef 4) #6
  %2 = ptrtoint ptr %cmd_kref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cmd_kref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.rhs, label %if.end38

land.rhs:                                         ; preds = %entry
  %.b62 = load i1, ptr @qla_nvme_sp_ls_done.__already_done, align 1
  br i1 %.b62, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !114

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @qla_nvme_sp_ls_done.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 206, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res)
  %tobool39.not = icmp eq i32 %res, 0
  %spec.store.select = select i1 %tobool39.not, i32 0, i32 -22
  %comp_status = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %comp_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.store.select, ptr %comp_status, align 4
  %ls_work = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 2
  tail call void @__init_work(ptr noundef %ls_work, i32 noundef 0) #6
  %5 = ptrtoint ptr %ls_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %ls_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.28, ptr noundef nonnull @qla_nvme_sp_ls_done.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry46 = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %entry46 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry46, ptr %entry46, align 4
  %prev.i = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 2, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry46, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @qla_nvme_ls_complete, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %ls_work) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla_nvme_release_ls_cmd_kref(ptr noundef %kref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %kref, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.body2

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_lock = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %1, align 4
  %3 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %priv1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call4) #6
  %fd10 = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %fd10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fd10, align 4
  %done = getelementptr inbounds %struct.nvmefc_ls_req, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %done, align 8
  %comp_status = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %comp_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %comp_status, align 4
  tail call void %7(ptr noundef %5, i32 noundef %9) #6
  br label %out

out:                                              ; preds = %do.body2, %entry.out_crit_edge
  %add.ptr = getelementptr i8, ptr %kref, i32 -8
  %vha.i = getelementptr i8, ptr %kref, i32 64
  %10 = ptrtoint ptr %vha.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vha.i, align 8
  %vref_count.i = getelementptr inbounds %struct.scsi_qla_host, ptr %11, i32 0, i32 60
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %vref_count.i, i32 1, i32 3, i32 1) #6
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count.i, ptr %vref_count.i, i32 1, ptr elementtype(i32) %vref_count.i) #6, !srcloc !120
  %13 = ptrtoint ptr %vha.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vha.i, align 8
  %vref_waitq.i = getelementptr inbounds %struct.scsi_qla_host, ptr %14, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %qpair.i = getelementptr i8, ptr %kref, i32 88
  %15 = ptrtoint ptr %qpair.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qpair.i, align 8
  store ptr null, ptr %qpair.i, align 8
  %done.i.i = getelementptr i8, ptr %kref, i32 404
  %17 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @qla2xxx_rel_done_warning, ptr %done.i.i, align 4
  %free.i.i = getelementptr i8, ptr %kref, i32 408
  %18 = ptrtoint ptr %free.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @qla2xxx_rel_free_warning, ptr %free.i.i, align 8
  %srb_mempool.i.i = getelementptr inbounds %struct.qla_qpair, ptr %16, i32 0, i32 9
  %19 = ptrtoint ptr %srb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %srb_mempool.i.i, align 8
  tail call void @mempool_free(ptr noundef %add.ptr, ptr noundef %20) #6
  %ref_count.i.i = getelementptr inbounds %struct.qla_qpair, ptr %16, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #6
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #6, !srcloc !120
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_start_sp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla_nvme_ls_complete(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %cmd_kref = getelementptr inbounds %struct.srb, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_kref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %cmd_kref, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_kref, ptr %cmd_kref, i32 1, ptr elementtype(i32) %cmd_kref) #6, !srcloc !116
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !114

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %cmd_kref, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @qla_nvme_release_ls_cmd_kref(ptr noundef %cmd_kref) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_rel_done_warning(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_rel_free_warning(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla_nvme_sp_done(ptr noundef %sp, i32 noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %comp_status = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %comp_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %res, ptr %comp_status, align 4
  %cmd_kref = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_kref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %cmd_kref, i32 1, i32 3, i32 1) #6
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_kref, ptr %cmd_kref, i32 1, ptr elementtype(i32) %cmd_kref) #6, !srcloc !116
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !114

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %cmd_kref, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @qla_nvme_release_fcp_cmd_kref(ptr noundef %cmd_kref) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla_nvme_release_fcp_cmd_kref(ptr noundef %kref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %kref, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %desc = getelementptr i8, ptr %kref, i32 136
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 8
  %cmd_lock = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 5
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %1, align 4
  %5 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %priv1, align 4
  %comp_status = getelementptr inbounds %struct.nvme_private, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %comp_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %comp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10 = icmp eq i32 %7, 0
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rsp_pyld_len = getelementptr i8, ptr %kref, i32 130
  %8 = ptrtoint ptr %rsp_pyld_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rsp_pyld_len, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %transferred_length = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %3, i32 0, i32 14
  %11 = ptrtoint ptr %transferred_length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %transferred_length, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12
  %.sink33 = phi i16 [ %10, %if.then12 ], [ 0, %if.else ]
  %.sink = phi i32 [ 0, %if.then12 ], [ 6, %if.else ]
  %12 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %3, i32 0, i32 15
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %.sink33, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %3, i32 0, i32 16
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call5) #6
  %done = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %3, i32 0, i32 12
  %16 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %done, align 4
  tail call void %17(ptr noundef %3) #6
  br label %out

out:                                              ; preds = %if.end16, %entry.out_crit_edge
  %add.ptr = getelementptr i8, ptr %kref, i32 -8
  %qpair = getelementptr i8, ptr %kref, i32 88
  %18 = ptrtoint ptr %qpair to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qpair, align 8
  store ptr null, ptr %qpair, align 8
  %done.i = getelementptr i8, ptr %kref, i32 404
  %20 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @qla2xxx_rel_done_warning, ptr %done.i, align 4
  %free.i = getelementptr i8, ptr %kref, i32 408
  %21 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @qla2xxx_rel_free_warning, ptr %free.i, align 8
  %srb_mempool.i = getelementptr inbounds %struct.qla_qpair, ptr %19, i32 0, i32 9
  %22 = ptrtoint ptr %srb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %srb_mempool.i, align 8
  tail call void @mempool_free(ptr noundef %add.ptr, ptr noundef %23) #6
  %ref_count.i = getelementptr inbounds %struct.qla_qpair, ptr %19, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #6
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #6, !srcloc !120
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2xxx_get_next_handle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qla2x00_check_reg16_for_disconnect(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla24xx_process_response_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla_nvme_abort_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -52
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fcport2 = getelementptr inbounds %struct.srb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fcport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcport2, align 4
  %vha = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vha, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 52
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %handle4 = getelementptr inbounds %struct.srb, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %handle4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle4, align 8
  %desc = getelementptr inbounds %struct.srb, ptr %1, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 8
  %deleted = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %deleted to i32
  call void @__asan_loadN_noabort(i32 %12, i32 3)
  %bf.load = load i24, ptr %deleted, align 4
  %bf.lshr = lshr i24 %bf.load, 21
  %bf.clear = and i24 %bf.lshr, 3
  %bf.cast = zext i24 %bf.clear to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %5, i32 noundef 65535, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.qla_nvme_abort_work, ptr noundef %1, i32 noundef %9, ptr noundef %3, ptr noundef %11, i32 noundef %bf.cast) #6
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %7, i32 0, i32 2
  %13 = getelementptr inbounds i32, ptr %flags, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load6 = load volatile i32, ptr %13, align 4
  %15 = and i32 %bf.load6, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %16 = ptrtoint ptr %deleted to i32
  call void @__asan_loadN_noabort(i32 %16, i32 3)
  %bf.load10 = load i24, ptr %deleted, align 4
  %17 = and i24 %bf.load10, 6291456
  %cmp = icmp eq i24 %17, 4194304
  br i1 %cmp, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load15 = load volatile i32, ptr %flags, align 8
  %19 = and i32 %bf.load15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not = icmp eq i32 %19, 0
  br i1 %tobool18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %fcport2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fcport2, align 4
  %vha21 = getelementptr inbounds %struct.fc_port, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %vha21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vha21, align 8
  %type = getelementptr inbounds %struct.srb, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %type, align 2
  %conv = zext i16 %25 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %23, i32 noundef 65535, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.qla_nvme_abort_work, ptr noundef %1, i32 noundef %conv) #6
  %done = getelementptr inbounds %struct.srb, ptr %1, i32 0, i32 24
  %26 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %done, align 4
  tail call void %27(ptr noundef %1, i32 noundef 0) #6
  br label %out

if.end22:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xabts_wait_nvme to i32))
  %28 = load i32, ptr @ql2xabts_wait_nvme, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool23.not = icmp eq i32 %28, 0
  br i1 %tobool23.not, label %if.end22.land.end39_crit_edge, label %land.rhs

if.end22.land.end39_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end39

land.rhs:                                         ; preds = %if.end22
  %type24 = getelementptr inbounds %struct.srb, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %type24 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %type24, align 2
  %.off = add i16 %30, -19
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %land.rhs33, label %land.rhs.land.end39_crit_edge

land.rhs.land.end39_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end39

land.rhs33:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %fcport2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fcport2, align 4
  %vha35 = getelementptr inbounds %struct.fc_port, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %vha35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vha35, align 8
  %hw36 = getelementptr inbounds %struct.scsi_qla_host, ptr %34, i32 0, i32 52
  %35 = ptrtoint ptr %hw36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw36, align 4
  %fw_attributes_ext = getelementptr inbounds %struct.qla_hw_data, ptr %36, i32 0, i32 140
  %37 = ptrtoint ptr %fw_attributes_ext to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %fw_attributes_ext, align 2
  %39 = and i16 %38, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool38 = icmp eq i16 %39, 0
  br label %land.end39

land.end39:                                       ; preds = %land.rhs33, %land.rhs.land.end39_crit_edge, %if.end22.land.end39_crit_edge
  %40 = phi i1 [ true, %if.end22.land.end39_crit_edge ], [ %tobool38, %land.rhs33 ], [ true, %land.rhs.land.end39_crit_edge ]
  %41 = ptrtoint ptr %handle4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %handle4, align 8
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %7, i32 0, i32 234
  %43 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %isp_ops, align 4
  %abort_command = getelementptr inbounds %struct.isp_operations, ptr %44, i32 0, i32 13
  %45 = ptrtoint ptr %abort_command to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %abort_command, align 4
  %call = tail call i32 %46(ptr noundef %1) #6
  %47 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vha, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp42.not = icmp eq i32 %call, 0
  %cond = select i1 %cmp42.not, ptr @.str.40, ptr @.str.39
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %48, i32 noundef 8491, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.qla_nvme_abort_work, ptr noundef nonnull %cond, ptr noundef %1, i32 noundef %42, ptr noundef %3, i32 noundef %call) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xasynctmfenable to i32))
  %49 = load i32, ptr @ql2xasynctmfenable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool44.not = icmp eq i32 %49, 0
  %brmerge = or i1 %cmp42.not, %tobool44.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 269, i32 %call)
  %cmp48.not = icmp eq i32 %call, 269
  %or.cond = or i1 %cmp48.not, %brmerge
  %or.cond.not = xor i1 %or.cond, true
  %brmerge93 = select i1 %or.cond.not, i1 true, i1 %40
  br i1 %brmerge93, label %land.end39.out_crit_edge, label %land.end39.cleanup_crit_edge

land.end39.cleanup_crit_edge:                     ; preds = %land.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.end39.out_crit_edge:                         ; preds = %land.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %land.end39.out_crit_edge, %if.then19, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %cmd_kref = getelementptr inbounds %struct.srb, ptr %1, i32 0, i32 3
  %put_fn = getelementptr inbounds %struct.srb, ptr %1, i32 0, i32 26
  %50 = ptrtoint ptr %put_fn to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %put_fn, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_kref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %cmd_kref, i32 1, i32 3, i32 1) #6
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_kref, ptr %cmd_kref, i32 1, ptr elementtype(i32) %cmd_kref) #6, !srcloc !116
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !114

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %cmd_kref, i32 noundef 3) #6
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void %51(ptr noundef %cmd_kref) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %land.end39.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_pci_map_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !68, !70, !72, !73, !75, !76, !77, !79, !80, !82, !84, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 27, i32 7}
!2 = !{ptr @__func__.qla_nvme_register_remote, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 28, i32 7}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 60, i32 6}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 68, i32 7}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 78, i32 10}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 82, i32 10}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 731, i32 6}
!14 = !{ptr @__func__.qla_nvme_unregister_remote_port, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 732, i32 6}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 741, i32 4}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 756, i32 4}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 761, i32 8}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 780, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 792, i32 6}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 800, i32 7}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 817, i32 2}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 850, i32 10}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 857, i32 10}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 860, i32 10}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 866, i32 10}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 872, i32 10}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 877, i32 10}
!42 = !{ptr @init_completion.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/completion.h", i32 87, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @qla_nvme_fc_transport, !46, !"qla_nvme_fc_transport", i1 false, i1 false}
!46 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 703, i32 37}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 683, i32 6}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 698, i32 6}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 107, i32 6}
!53 = !{ptr @__func__.qla_nvme_alloc_queue, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 108, i32 6}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 112, i32 7}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 124, i32 11}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 132, i32 11}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 338, i32 13}
!63 = !{ptr @qla_nvme_ls_req.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 344, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 362, i32 7}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 206, i32 6}
!70 = !{ptr @qla_nvme_sp_ls_done.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 213, i32 2}
!72 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @qla_nvme_post_cmd.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 638, i32 2}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @qla_nvme_post_cmd.__key.32, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 640, i32 2}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 644, i32 13}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 656, i32 7}
!86 = !{ptr @qla_nvme_ls_abort.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 307, i32 2}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 240, i32 9}
!91 = !{ptr @__func__.qla_nvme_abort_work, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 241, i32 9}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 248, i32 7}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 265, i32 6}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 266, i32 40}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 266, i32 60}
!101 = !{ptr @qla_nvme_fcp_abort.__key, !102, !"__key", i1 false, i1 false}
!102 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 391, i32 2}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/qla2xxx/qla_nvme.c", i32 675, i32 10}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{!"branch_weights", i32 2000, i32 1}
!115 = !{i64 2148927666}
!116 = !{i64 2148842106, i64 2148842138, i64 2148842167, i64 2148842201, i64 2148842232, i64 2148842255}
!117 = !{i64 2150093046}
!118 = !{i64 2148838111, i64 2148838137, i64 2148838166, i64 2148838200, i64 2148838231, i64 2148838254}
!119 = !{i64 2156647573}
!120 = !{i64 2148840576, i64 2148840602, i64 2148840631, i64 2148840665, i64 2148840696, i64 2148840719}
!121 = !{i64 2156646676}
!122 = !{!"branch_weights", i32 4001, i32 4000000}
!123 = !{i64 5908446}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{i64 2156679384}
!126 = !{i64 2156060049}
!127 = !{i64 5908028}
!128 = !{i64 1323624, i64 1323648, i64 1323669, i64 1323686, i64 1323703}
