; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla2xxx/qla_mid.c_pt.bc'
source_filename = "../drivers/scsi/qla2xxx/qla_mid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.fc_vport = type { i32, i32, i64, i64, i32, i32, i32, [64 x i8], ptr, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.work_struct }
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
%struct.qla_qpair = type { %struct.spinlock, %struct.atomic_t, i32, ptr, ptr, i32, i8, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.qla_counters, %struct.list_head, %struct.list_head, i16, i32, i64, %struct.qla_tgt_counters, i16, [94 x i8], %struct.qla_fw_resources, i32, i32, i32, [108 x i8] }
%struct.qla_counters = type { i64, i64, i64, i64 }
%struct.qla_tgt_counters = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_fw_resources = type { i16, i16, i16, i16 }
%struct.srb = type { i8, [3 x i8], %struct.iocb_resource, %struct.kref, ptr, %struct.wait_queue_head, ptr, ptr, i8, i32, i16, i16, ptr, i32, ptr, ptr, %struct.list_head, i32, i32, i32, i32, ptr, %union.anon.83, %struct.anon.106, ptr, ptr, ptr }
%struct.iocb_resource = type { i8, i8, i16 }
%union.anon.83 = type { %struct.srb_iocb }
%struct.srb_iocb = type { %union.anon.84, %struct.timer_list, ptr }
%union.anon.84 = type { %struct.anon.87, [112 x i8] }
%struct.anon.87 = type { i64, i32, i32, %struct.completion, i16 }
%struct.anon.106 = type { i8, %struct.anon.107, %struct.anon.108 }
%struct.anon.107 = type { i32, ptr, i32 }
%struct.anon.108 = type { i32, ptr, i32 }
%struct.anon.100 = type { i16, i16 }
%struct.rsp_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, [64 x i8] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.req_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i32, i16, i32, i32, ptr, i16, [64 x i8] }
%struct.qla_msix_entry = type { i32, i32, i32, i16, [30 x i8], ptr, i32 }
%struct.device_reg_25xxmq = type { i32, i32, i32, i32, i32, i32 }
%struct.cmd_a64_entry_t = type { i8, i8, i8, i8, i32, %union.target_id_t, i16, i16, i16, i16, i16, [16 x i8], i32, [2 x %struct.dsd64] }
%union.target_id_t = type { i16 }
%struct.dsd64 = type <{ i64, i32 }>
%struct.response_t = type { i8, i8, i8, i8, i32, [52 x i8], i32 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vha->vref_count=%u timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s skip enable. loop_state %x topo %x\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.qla24xx_enable_vp = private unnamed_addr constant [18 x i8] c"qla24xx_enable_vp\00", align 1
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Virtual port with id: %d - Enabled.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Virtual port with id: %d - Disabled.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Async_event for VP[%d], mb=0x%x vha=%p.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Async_event for VP[%d], mb=0x%x vha=%p\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Scheduling enable of Vport %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"num_vhosts %ud is bigger than max_npiv_vports %ud.\0A\00", [44 x i8] zeroinitializer }, align 32
@qla2xxx_driver_template = external dso_local global %struct.scsi_host_template, align 8
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"scsi_host_alloc() failed for vport.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't allocate vp_id.\0A\00", [38 x i8] zeroinitializer }, align 32
@ql2xenabledif = external dso_local local_unnamed_addr global i32, align 4
@ql2xmaxlun = external dso_local local_unnamed_addr global i64, align 8
@qla2xxx_transport_vport_template = external dso_local local_unnamed_addr global ptr, align 4
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Detect vport hba %ld at address = %p.\0A\00", [57 x i8] zeroinitializer }, align 32
@ql2xmqsupport = external dso_local local_unnamed_addr global i32, align 4
@ql2xnvmeenable = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't delete req que %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't delete rsp que %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to allocate memory for request queue.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to allocate memory for request_ring.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"No resources to create additional request queue.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"queue_id=%d rid=%d vp_idx=%d qos=%d.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"options=0x%x.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ring_ptr=%p ring_index=%d, cnt=%d id=%d max_q_depth=%d.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s failed.\0A\00", [20 x i8] zeroinitializer }, align 32
@__func__.qla25xx_create_req_que = private unnamed_addr constant [23 x i8] c"qla25xx_create_req_que\00", align 1
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to allocate memory for response queue.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to allocate memory for response ring.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rsp queue_id=%d rid=%d vp_idx=%d hw=%p.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"options=%x id=%d rsp_q_in=%p rsp_q_out=%p\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.qla25xx_create_rsp_que = private unnamed_addr constant [23 x i8] c"qla25xx_create_rsp_que\00", align 1
@qla25xx_create_rsp_que.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&qpair->q_work)\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Entered %s cmd %x index %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.qla24xx_control_vp = private unnamed_addr constant [19 x i8] c"qla24xx_control_vp\00", align 1
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ctrl_vp\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: %s Failed submission. %x.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s hndl %x submitted\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: %s Timeout. %x.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: %s done.\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: %s Failed. %x.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Marking port dead, loop_id=0x%04x : %x.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Entering %s vp_flags: 0x%lx.\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.qla2x00_do_dpc_vp = private unnamed_addr constant [18 x i8] c"qla2x00_do_dpc_vp\00", align 1
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Configure VP scheduled.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Configure VP end.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FCPort update scheduled.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FCPort update end.\0A\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Relogin needed scheduled.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Loop resync scheduled.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Loop resync end.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Exiting %s.\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: change request #3.\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.qla24xx_configure_vp = private unnamed_addr constant [21 x i8] c"qla24xx_configure_vp\00", align 1
@.str.43 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to enable receiving of RSCN requests: 0x%x.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"vp_id %d is bigger than max-supported %d.\0A\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.46 = internal global [10 x i64] [i64 8, i64 16, i64 32784, i64 32785, i64 32786, i64 32787, i64 32788, i64 32789, i64 32816, i64 32822]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 95, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 215, i32 7 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 233, i32 6 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 238, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 295, i32 9 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 303, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 349, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 490, i32 7 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 510, i32 7 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 525, i32 7 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 560, i32 6 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 679, i32 10 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 693, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 719, i32 7 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 729, i32 7 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 742, i32 7 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 752, i32 6 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 770, i32 6 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 788, i32 6 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 802, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 846, i32 7 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 856, i32 7 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 877, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 900, i32 6 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 930, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 963, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 973, i32 13 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 984, i32 7 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 989, i32 36 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 998, i32 37 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1002, i32 37 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1006, i32 37 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 154, i32 7 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 361, i32 6 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 368, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 371, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 385, i32 7 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 389, i32 7 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 402, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 415, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 419, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 424, i32 6 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 251, i32 6 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 254, i32 37 }
@___asan_gen_.183 = private constant [34 x i8] c"../drivers/scsi/qla2xxx/qla_mid.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 40, i32 7 }
@___asan_gen_.185 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 87, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @qla25xx_create_rsp_que.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @init_completion.__key, ptr @.str.45], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla25xx_create_rsp_que.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_vp_stop_timer(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 46
  %0 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vp_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %timer_active = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 23
  %2 = ptrtoint ptr %timer_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timer_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %timer = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 24
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #6
  %4 = ptrtoint ptr %timer_active to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %timer_active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla24xx_deallocate_vp_id(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %vport_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 125
  tail call void @mutex_lock_nested(ptr noundef %vport_lock, i32 noundef 0) #6
  %vport_slock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 126
  %vref_count = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 60
  br label %do.body1

do.body1:                                         ; preds = %if.else.critedge.do.body1_crit_edge, %entry
  %i.059 = phi i32 [ 0, %entry ], [ %inc, %if.else.critedge.do.body1_crit_edge ]
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vport_slock) #6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vref_count, i32 noundef 4) #6
  %2 = ptrtoint ptr %vref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %vref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %if.then, label %if.else.critedge

if.then:                                          ; preds = %do.body1
  %call.i.i52 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vha) #6
  br i1 %call.i.i52, label %if.end.i.i, label %if.then.if.end31_crit_edge

if.then.if.end31_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vha, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vha, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %if.end31

if.else.critedge:                                 ; preds = %do.body1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_slock, i32 noundef %call3) #6
  tail call void @msleep(i32 noundef 20) #6
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, 500
  br i1 %exitcond.not, label %if.then13.critedge, label %if.else.critedge.do.body1_crit_edge

if.else.critedge.do.body1_crit_edge:              ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1

if.then13.critedge:                               ; preds = %if.else.critedge
  %10 = ptrtoint ptr %vref_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vref_count, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 65530, ptr noundef nonnull @.str, i32 noundef %11) #6
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vport_slock) #6
  %call.i.i53 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vha) #6
  br i1 %call.i.i53, label %if.end.i.i56, label %if.then13.critedge.if.end31_crit_edge

if.then13.critedge.if.end31_crit_edge:            ; preds = %if.then13.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end.i.i56:                                     ; preds = %if.then13.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i54 = getelementptr inbounds %struct.list_head, ptr %vha, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i54 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i54, align 4
  %14 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vha, align 4
  %prev1.i.i.i55 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i55, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end.i.i56, %if.then13.critedge.if.end31_crit_edge, %if.end.i.i, %if.then.if.end31_crit_edge
  %call3.lcssa.sink = phi i32 [ %call3, %if.then.if.end31_crit_edge ], [ %call3, %if.end.i.i ], [ %call24, %if.then13.critedge.if.end31_crit_edge ], [ %call24, %if.end.i.i56 ]
  %18 = ptrtoint ptr %vha to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %vha, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %vha, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @qlt_update_vp_map(ptr noundef %vha, i32 noundef 3) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_slock, i32 noundef %call3.lcssa.sink) #6
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 46
  %20 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vp_idx, align 8
  %num_vhosts = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 229
  %22 = ptrtoint ptr %num_vhosts to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_vhosts, align 4
  %dec = add i16 %23, -1
  store i16 %dec, ptr %num_vhosts, align 4
  %conv32 = zext i16 %21 to i32
  %vp_idx_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 228
  tail call void @_clear_bit(i32 noundef %conv32, ptr noundef %vp_idx_map) #6
  tail call void @mutex_unlock(ptr noundef %vport_lock) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlt_update_vp_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_disable_vp(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %flags1 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %2 = getelementptr inbounds i32, ptr %flags1, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load volatile i32, ptr %2, align 4
  %4 = and i32 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qla2x00_wait_for_sess_deletion(ptr noundef %vha) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %flags3 = getelementptr inbounds %struct.qla_hw_data, ptr %6, i32 0, i32 2
  %7 = getelementptr inbounds i32, ptr %flags3, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load4 = load volatile i32, ptr %7, align 4
  %9 = and i32 %bf.load4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @qla24xx_control_vp(ptr noundef %vha, i32 noundef 11)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %ret.0 = phi i32 [ %call, %if.then8 ], [ 0, %if.end.if.end9_crit_edge ]
  %loop_state = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_state, i32 noundef 4) #6
  %10 = ptrtoint ptr %loop_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 2, ptr %loop_state, align 4
  %loop_down_timer = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 21
  %call.i.i66 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_down_timer, i32 noundef 4) #6
  %11 = ptrtoint ptr %loop_down_timer to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 255, ptr %loop_down_timer, align 4
  %vp_fcports = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %12 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %12)
  %fcport.069 = load ptr, ptr %vp_fcports, align 8
  %cmp.not70 = icmp eq ptr %fcport.069, %vp_fcports
  br i1 %cmp.not70, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end9.for.body_crit_edge
  %fcport.071 = phi ptr [ %fcport.0, %for.body.for.body_crit_edge ], [ %fcport.069, %if.end9.for.body_crit_edge ]
  %logout_on_delete = getelementptr inbounds %struct.fc_port, ptr %fcport.071, i32 0, i32 2
  %13 = ptrtoint ptr %logout_on_delete to i32
  call void @__asan_loadN_noabort(i32 %13, i32 3)
  %bf.load11 = load i24, ptr %logout_on_delete, align 4
  %bf.clear12 = and i24 %bf.load11, -262145
  store i24 %bf.clear12, ptr %logout_on_delete, align 4
  %14 = ptrtoint ptr %fcport.071 to i32
  call void @__asan_load4_noabort(i32 %14)
  %fcport.0 = load ptr, ptr %fcport.071, align 8
  %cmp.not = icmp eq ptr %fcport.0, %vp_fcports
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end9.for.end_crit_edge
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %flags19 = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 2
  %17 = getelementptr inbounds i32, ptr %flags19, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load20 = load volatile i32, ptr %17, align 4
  %19 = and i32 %bf.load20, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool23.not = icmp eq i32 %19, 0
  br i1 %tobool23.not, label %if.then24, label %for.end.do.body26_crit_edge

for.end.do.body26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qla2x00_wait_for_sess_deletion(ptr noundef %vha) #6
  br label %do.body26

do.body26:                                        ; preds = %if.then24, %for.end.do.body26_crit_edge
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %21, i32 0, i32 6
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #6
  tail call void @qlt_update_vp_map(ptr noundef %vha, i32 noundef 4) #6
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %hardware_lock35 = getelementptr inbounds %struct.qla_hw_data, ptr %23, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock35, i32 noundef %call31) #6
  %24 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %24)
  %fcport.017.i = load ptr, ptr %vp_fcports, align 8
  %cmp.not18.i = icmp eq ptr %fcport.017.i, %vp_fcports
  br i1 %cmp.not18.i, label %do.body26.qla2x00_mark_vp_devices_dead.exit_crit_edge, label %do.body26.for.body.i_crit_edge

do.body26.for.body.i_crit_edge:                   ; preds = %do.body26
  br label %for.body.i

do.body26.qla2x00_mark_vp_devices_dead.exit_crit_edge: ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla2x00_mark_vp_devices_dead.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body26.for.body.i_crit_edge
  %fcport.019.i = phi ptr [ %fcport.0.i, %for.body.i.for.body.i_crit_edge ], [ %fcport.017.i, %do.body26.for.body.i_crit_edge ]
  %loop_id.i = getelementptr inbounds %struct.fc_port, ptr %fcport.019.i, i32 0, i32 7
  %25 = ptrtoint ptr %loop_id.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %loop_id.i, align 4
  %conv.i = zext i16 %26 to i32
  %vha2.i = getelementptr inbounds %struct.fc_port, ptr %fcport.019.i, i32 0, i32 1
  %27 = ptrtoint ptr %vha2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vha2.i, align 8
  %vp_idx.i = getelementptr inbounds %struct.scsi_qla_host, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %vp_idx.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vp_idx.i, align 8
  %conv3.i = zext i16 %30 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 262144, ptr noundef %vha, i32 noundef 40961, ptr noundef nonnull @.str.32, i32 noundef %conv.i, i32 noundef %conv3.i) #6
  tail call void @qla2x00_mark_device_lost(ptr noundef %vha, ptr noundef %fcport.019.i, i32 noundef 0) #6
  tail call void @qla2x00_set_fcport_state(ptr noundef %fcport.019.i, i32 noundef 1) #6
  %31 = ptrtoint ptr %fcport.019.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %fcport.0.i = load ptr, ptr %fcport.019.i, align 8
  %cmp.not.i = icmp eq ptr %fcport.0.i, %vp_fcports
  br i1 %cmp.not.i, label %for.body.i.qla2x00_mark_vp_devices_dead.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.qla2x00_mark_vp_devices_dead.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla2x00_mark_vp_devices_dead.exit

qla2x00_mark_vp_devices_dead.exit:                ; preds = %for.body.i.qla2x00_mark_vp_devices_dead.exit_crit_edge, %do.body26.qla2x00_mark_vp_devices_dead.exit_crit_edge
  %vp_state = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 49
  %call.i.i67 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vp_state, i32 noundef 4) #6
  %32 = ptrtoint ptr %vp_state to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 2, ptr %vp_state, align 4
  %flags36 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %33 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load37 = load volatile i32, ptr %flags36, align 8
  %bf.clear38 = and i32 %bf.load37, -268435457
  store volatile i32 %bf.clear38, ptr %flags36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp40 = icmp eq i32 %ret.0, 0
  %fc_vport = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 45
  %34 = ptrtoint ptr %fc_vport to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fc_vport, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %vport_last_state.i = getelementptr inbounds %struct.fc_vport, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %vport_last_state.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %vport_last_state.i, align 4
  %. = select i1 %cmp40, i32 2, i32 9
  %not.cmp40 = xor i1 %cmp40, true
  %.72 = sext i1 %not.cmp40 to i32
  store i32 %., ptr %35, align 8
  ret i32 %.72
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_wait_for_sess_deletion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_control_vp(ptr noundef %vha, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %comp = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 46
  %2 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vp_idx, align 8
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %comp) #6
  %8 = getelementptr inbounds i8, ptr %comp, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 52)
  %10 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %comp, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #6
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 262144, ptr noundef %vha, i32 noundef 4289, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.qla24xx_control_vp, i32 noundef %cmd, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_npiv_vports = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 231
  %11 = ptrtoint ptr %max_npiv_vports to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max_npiv_vports, align 64
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %12)
  %cmp3.not = icmp ult i16 %3, %12
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vref_count.i = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 60
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %vref_count.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %vref_count.i, i32 1, i32 3, i32 1) #6
  %13 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count.i, ptr %vref_count.i, i32 1, ptr elementtype(i32) %vref_count.i) #6, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  call void @arm_heavy_mb() #6
  %flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 8
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i = load volatile i32, ptr %flags.i, align 8
  %15 = and i32 %bf.load.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef %vref_count.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %vref_count.i, i32 1, i32 3, i32 1) #6
  %16 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count.i, ptr %vref_count.i, i32 1, ptr elementtype(i32) %vref_count.i) #6, !srcloc !117
  %vref_waitq.i = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 74
  call void @__wake_up(ptr noundef %vref_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %cleanup

if.end9.i:                                        ; preds = %if.end
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 52
  %17 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw.i, align 4
  %base_qpair.i = getelementptr inbounds %struct.qla_hw_data, ptr %18, i32 0, i32 34
  %19 = ptrtoint ptr %base_qpair.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_qpair.i, align 4
  %ref_count.i.i = getelementptr inbounds %struct.qla_qpair, ptr %20, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #6
  %21 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #6, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  call void @arm_heavy_mb() #6
  %delete_in_progress.i.i = getelementptr inbounds %struct.qla_qpair, ptr %20, i32 0, i32 6
  %22 = ptrtoint ptr %delete_in_progress.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i.i = load i8, ptr %delete_in_progress.i.i, align 64
  %23 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i, label %if.end9.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i1.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #6
  %24 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #6, !srcloc !117
  br label %do.body16.critedge.i

if.end9.i.i:                                      ; preds = %if.end9.i
  %srb_mempool.i.i = getelementptr inbounds %struct.qla_qpair, ptr %20, i32 0, i32 9
  %25 = ptrtoint ptr %srb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %srb_mempool.i.i, align 8
  %call.i.i = call noalias ptr @mempool_alloc(ptr noundef %26, i32 noundef 3264) #6
  %tobool10.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not.i.i, label %if.else12.i.i, label %if.end7

if.else12.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i2.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #6
  %27 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #6, !srcloc !117
  br label %do.body16.critedge.i

do.body16.critedge.i:                             ; preds = %if.else12.i.i, %if.then.i.i
  %call.i.i2.i = call zeroext i1 @__kasan_check_write(ptr noundef %vref_count.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %vref_count.i, i32 1, i32 3, i32 1) #6
  %28 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count.i, ptr %vref_count.i, i32 1, ptr elementtype(i32) %vref_count.i) #6, !srcloc !117
  %vref_waitq18.i = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 74
  call void @__wake_up(ptr noundef %vref_waitq18.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end9.i.i
  %iocbs.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 13
  %29 = call ptr @memset(ptr %call.i.i, i32 0, i32 424)
  %30 = ptrtoint ptr %iocbs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %iocbs.i.i.i, align 4
  %vha2.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 7
  %qpair3.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 14
  %31 = ptrtoint ptr %qpair3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %20, ptr %qpair3.i.i.i, align 8
  %elem.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 16
  %32 = ptrtoint ptr %elem.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %elem.i.i.i, ptr %elem.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 16, i32 1
  %33 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %elem.i.i.i, ptr %prev.i.i.i.i, align 4
  %34 = ptrtoint ptr %vha2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %7, ptr %vha2.i.i.i, align 8
  %type = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 11
  %35 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 22, ptr %type, align 2
  %name = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 12
  %36 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.26, ptr %name, align 8
  %comp8 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 21
  %37 = ptrtoint ptr %comp8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %comp, ptr %comp8, align 8
  %done = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 24
  %38 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @qla_ctrlvp_sp_done, ptr %done, align 4
  %u = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22
  %timeout = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 2
  %39 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @qla2x00_async_iocb_timeout, ptr %timeout, align 8
  %call9 = call i32 @qla2x00_get_async_timeout(ptr noundef %vha) #6
  %add = add i32 %call9, 2
  call void @qla2x00_init_timer(ptr noundef nonnull %call.i.i, i32 noundef %add) #6
  %conv10 = trunc i32 %cmd to i16
  %40 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv10, ptr %u, align 8
  %vp_index17 = getelementptr inbounds %struct.anon.100, ptr %u, i32 0, i32 1
  %41 = ptrtoint ptr %vp_index17 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %3, ptr %vp_index17, align 2
  %call18 = call i32 @qla2x00_start_sp(ptr noundef nonnull %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  %42 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name, align 8
  br i1 %cmp19.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.qla24xx_control_vp, ptr noundef %43, i32 noundef %call18) #6
  br label %done30

if.end23:                                         ; preds = %if.end7
  %handle = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 9
  %44 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %handle, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 262144, ptr noundef %vha, i32 noundef 4415, ptr noundef nonnull @.str.28, ptr noundef %43, i32 noundef %45) #6
  call void @wait_for_completion(ptr noundef nonnull %comp) #6
  %46 = ptrtoint ptr %comp8 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %comp8, align 8
  %rc = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 19
  %47 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rc, align 8
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %48, label %sw.default [
    i32 256, label %sw.bb
    i32 0, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 262144, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.qla24xx_control_vp, ptr noundef %51, i32 noundef 256) #6
  br label %done30

sw.bb27:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 262144, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.qla24xx_control_vp, ptr noundef %53) #6
  br label %done30

sw.default:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 262144, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.qla24xx_control_vp, ptr noundef %55, i32 noundef %48) #6
  br label %done30

done30:                                           ; preds = %sw.default, %sw.bb27, %sw.bb, %if.then21
  %rval.0 = phi i32 [ %call18, %if.then21 ], [ %48, %sw.default ], [ 0, %sw.bb27 ], [ 256, %sw.bb ]
  %free = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 25
  %56 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %free, align 8
  call void %57(ptr noundef nonnull %call.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %done30, %do.body16.critedge.i, %if.then.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rval.0, %done30 ], [ 6, %lor.lhs.false.cleanup_crit_edge ], [ 6, %entry.cleanup_crit_edge ], [ 259, %if.then.i ], [ 259, %do.body16.critedge.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %comp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_enable_vp(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
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
  %loop_state = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_state, i32 noundef 4) #6
  %6 = ptrtoint ptr %loop_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %loop_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call.i.i36 = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_state, i32 noundef 4) #6
  %8 = ptrtoint ptr %loop_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %loop_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp4 = icmp eq i32 %9, 6
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false5

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %current_topology = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 49
  %10 = ptrtoint ptr %current_topology to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %current_topology, align 2
  %12 = and i8 %11, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %lor.lhs.false5.if.then_crit_edge, label %if.end

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %vp_err_state = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 50
  %13 = ptrtoint ptr %vp_err_state to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %vp_err_state, align 8
  %fc_vport = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 45
  %14 = ptrtoint ptr %fc_vport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fc_vport, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %vport_last_state.i = getelementptr inbounds %struct.fc_vport, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %vport_last_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %vport_last_state.i, align 4
  store i32 3, ptr %15, align 8
  %19 = ptrtoint ptr %loop_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %loop_state, align 4
  %current_topology7 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 49
  %21 = ptrtoint ptr %current_topology7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %current_topology7, align 2
  %conv8 = zext i8 %22 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 4194304, ptr noundef %vha, i32 noundef 32779, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.qla24xx_enable_vp, i32 noundef %20, i32 noundef %conv8) #6
  br label %enable_failed

if.end:                                           ; preds = %lor.lhs.false5
  %vport_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 125
  tail call void @mutex_lock_nested(ptr noundef %vport_lock, i32 noundef 0) #6
  %call9 = tail call i32 @qla24xx_modify_vp_config(ptr noundef %vha) #6
  tail call void @mutex_unlock(ptr noundef %vport_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp11.not = icmp eq i32 %call9, 0
  br i1 %cmp11.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %fc_vport14 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 45
  %23 = ptrtoint ptr %fc_vport14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fc_vport14, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %vport_last_state.i37 = getelementptr inbounds %struct.fc_vport, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %vport_last_state.i37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %vport_last_state.i37, align 4
  store i32 9, ptr %24, align 8
  br label %enable_failed

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 46
  %28 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vp_idx, align 8
  %conv16 = zext i16 %29 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 4194304, ptr noundef %vha, i32 noundef 32794, ptr noundef nonnull @.str.2, i32 noundef %conv16) #6
  br label %cleanup

enable_failed:                                    ; preds = %if.then13, %if.then
  %vp_idx17 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 46
  %30 = ptrtoint ptr %vp_idx17 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vp_idx17, align 8
  %conv18 = zext i16 %31 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 4194304, ptr noundef %vha, i32 noundef 32795, ptr noundef nonnull @.str.3, i32 noundef %conv18) #6
  br label %cleanup

cleanup:                                          ; preds = %enable_failed, %if.end15
  %retval.0 = phi i32 [ 1, %enable_failed ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dbg(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_modify_vp_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_alert_all_vps(ptr noundef %rsp, ptr noundef %mb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.rsp_que, ptr %rsp, i32 0, i32 13
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %vport_slock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 126
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vport_slock) #6
  %vp_list = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 227
  %2 = ptrtoint ptr %vp_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vp_list, align 4
  %cmp12.not83 = icmp eq ptr %3, %vp_list
  br i1 %cmp12.not83, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx21 = getelementptr i16, ptr %mb, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vha.088 = phi ptr [ %3, %for.body.lr.ph ], [ %tvp.090, %for.inc.for.body_crit_edge ]
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %for.inc.for.body_crit_edge ]
  %flags.084 = phi i32 [ %call2, %for.body.lr.ph ], [ %flags.2, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %vha.088 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tvp.090 = load ptr, ptr %vha.088, align 8
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %vha.088, i32 0, i32 46
  %5 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vp_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %for.body.if.end45_crit_edge, label %if.then

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then:                                          ; preds = %for.body
  %arrayidx.i = getelementptr %struct.scsi_qla_host, ptr %vha.088, i32 0, i32 12
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not = icmp eq i32 %9, 0
  br i1 %tobool15.not, label %if.end, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %if.then
  %vref_count = getelementptr inbounds %struct.scsi_qla_host, ptr %vha.088, i32 0, i32 60
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #6
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #6, !srcloc !115
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_slock, i32 noundef %flags.084) #6
  %11 = ptrtoint ptr %mb to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mb, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %12, label %if.end.do.body31_crit_edge [
    i16 -32752, label %if.end.do.body31.sink.split_crit_edge
    i16 -32751, label %if.end.do.body31.sink.split_crit_edge91
    i16 -32750, label %if.end.do.body31.sink.split_crit_edge92
    i16 -32749, label %if.end.do.body31.sink.split_crit_edge93
    i16 -32720, label %if.end.do.body31.sink.split_crit_edge94
    i16 -32714, label %if.end.do.body31.sink.split_crit_edge95
    i16 -32748, label %if.end.sw.bb20_crit_edge
    i16 -32747, label %if.end.sw.bb20_crit_edge96
  ]

if.end.sw.bb20_crit_edge96:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20

if.end.sw.bb20_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20

if.end.do.body31.sink.split_crit_edge95:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31.sink.split

if.end.do.body31.sink.split_crit_edge94:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31.sink.split

if.end.do.body31.sink.split_crit_edge93:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31.sink.split

if.end.do.body31.sink.split_crit_edge92:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31.sink.split

if.end.do.body31.sink.split_crit_edge91:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31.sink.split

if.end.do.body31.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31.sink.split

if.end.do.body31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

sw.bb20:                                          ; preds = %if.end.sw.bb20_crit_edge, %if.end.sw.bb20_crit_edge96
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx21, align 2
  %16 = and i16 %15, 255
  %17 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vp_idx, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp25 = icmp eq i16 %16, %18
  br i1 %cmp25, label %sw.bb20.do.body31.sink.split_crit_edge, label %sw.bb20.do.body31_crit_edge

sw.bb20.do.body31_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

sw.bb20.do.body31.sink.split_crit_edge:           ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31.sink.split

do.body31.sink.split:                             ; preds = %sw.bb20.do.body31.sink.split_crit_edge, %if.end.do.body31.sink.split_crit_edge, %if.end.do.body31.sink.split_crit_edge91, %if.end.do.body31.sink.split_crit_edge92, %if.end.do.body31.sink.split_crit_edge93, %if.end.do.body31.sink.split_crit_edge94, %if.end.do.body31.sink.split_crit_edge95
  %.str.5.sink = phi ptr [ @.str.4, %if.end.do.body31.sink.split_crit_edge ], [ @.str.4, %if.end.do.body31.sink.split_crit_edge91 ], [ @.str.4, %if.end.do.body31.sink.split_crit_edge92 ], [ @.str.4, %if.end.do.body31.sink.split_crit_edge93 ], [ @.str.4, %if.end.do.body31.sink.split_crit_edge94 ], [ @.str.4, %if.end.do.body31.sink.split_crit_edge95 ], [ @.str.5, %sw.bb20.do.body31.sink.split_crit_edge ]
  %conv28 = zext i16 %12 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %vha.088, i32 noundef 20516, ptr noundef nonnull %.str.5.sink, i32 noundef %i.085, i32 noundef %conv28, ptr noundef %vha.088) #6
  tail call void @qla2x00_async_event(ptr noundef %vha.088, ptr noundef %rsp, ptr noundef %mb) #6
  br label %do.body31

do.body31:                                        ; preds = %do.body31.sink.split, %sw.bb20.do.body31_crit_edge, %if.end.do.body31_crit_edge
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vport_slock) #6
  %call.i.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #6
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #6, !srcloc !117
  %vref_waitq = getelementptr inbounds %struct.scsi_qla_host, ptr %vha.088, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end45

if.end45:                                         ; preds = %do.body31, %for.body.if.end45_crit_edge
  %flags.1 = phi i32 [ %call39, %do.body31 ], [ %flags.084, %for.body.if.end45_crit_edge ]
  %inc = add i32 %i.085, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end45, %if.then.for.inc_crit_edge
  %flags.2 = phi i32 [ %flags.084, %if.then.for.inc_crit_edge ], [ %flags.1, %if.end45 ]
  %i.1 = phi i32 [ %i.085, %if.then.for.inc_crit_edge ], [ %inc, %if.end45 ]
  %cmp12.not = icmp eq ptr %tvp.090, %vp_list
  br i1 %cmp12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %entry.for.end_crit_edge ], [ %flags.2, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_slock, i32 noundef %flags.0.lcssa) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_async_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_vp_abort_isp(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %0 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dpc_flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @qla24xx_control_vp(ptr noundef %vha, i32 noundef 11)
  %vp_fcports = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %3 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %3)
  %fcport.035 = load ptr, ptr %vp_fcports, align 8
  %cmp.not36 = icmp eq ptr %fcport.035, %vp_fcports
  br i1 %cmp.not36, label %if.then.if.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %fcport.037 = phi ptr [ %fcport.0, %for.body.for.body_crit_edge ], [ %fcport.035, %if.then.for.body_crit_edge ]
  %logout_on_delete = getelementptr inbounds %struct.fc_port, ptr %fcport.037, i32 0, i32 2
  %4 = ptrtoint ptr %logout_on_delete to i32
  call void @__asan_loadN_noabort(i32 %4, i32 3)
  %bf.load = load i24, ptr %logout_on_delete, align 4
  %bf.clear = and i24 %bf.load, -262145
  store i24 %bf.clear, ptr %logout_on_delete, align 4
  %5 = ptrtoint ptr %fcport.037 to i32
  call void @__asan_load4_noabort(i32 %5)
  %fcport.0 = load ptr, ptr %fcport.037, align 8
  %cmp.not = icmp eq ptr %fcport.0, %vp_fcports
  br i1 %cmp.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %loop_state = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_state, i32 noundef 4) #6
  %6 = ptrtoint ptr %loop_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %loop_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp9.not = icmp eq i32 %7, 2
  br i1 %cmp9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_state, i32 noundef 4) #6
  %8 = ptrtoint ptr %loop_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 2, ptr %loop_state, align 4
  tail call void @qla2x00_mark_all_devices_lost(ptr noundef %vha) #6
  br label %if.end17

if.else:                                          ; preds = %if.end
  %loop_down_timer = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 21
  %call.i.i33 = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_down_timer, i32 noundef 4) #6
  %9 = ptrtoint ptr %loop_down_timer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %loop_down_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %if.then14, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_down_timer, i32 noundef 4) #6
  %11 = ptrtoint ptr %loop_down_timer to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 255, ptr %loop_down_timer, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else.if.end17_crit_edge, %if.then10
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 46
  %12 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vp_idx, align 8
  %conv = zext i16 %13 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 4194304, ptr noundef %vha, i32 noundef 32797, ptr noundef nonnull @.str.6, i32 noundef %conv) #6
  %call18 = tail call i32 @qla24xx_enable_vp(ptr noundef %vha)
  ret i32 %call18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_mark_all_devices_lost(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_do_dpc_all_vps(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %vp_list = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 227
  %4 = ptrtoint ptr %vp_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vp_list, align 4
  %cmp.i.not = icmp eq ptr %5, %vp_list
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %dpc_flags) #6
  %current_topology = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 49
  %6 = ptrtoint ptr %current_topology to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %current_topology, align 2
  %8 = and i8 %7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %do.body7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body7:                                         ; preds = %if.end3
  %vport_slock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 126
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vport_slock) #6
  %9 = ptrtoint ptr %vp_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vp_list, align 4
  %cmp21.not73 = icmp eq ptr %10, %vp_list
  br i1 %cmp21.not73, label %do.body7.for.end_crit_edge, label %do.body7.for.body_crit_edge

do.body7.for.body_crit_edge:                      ; preds = %do.body7
  br label %for.body

do.body7.for.end_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body7.for.body_crit_edge
  %vp.075 = phi ptr [ %tvp.080, %for.inc.for.body_crit_edge ], [ %10, %do.body7.for.body_crit_edge ]
  %flags.074 = phi i32 [ %flags.1, %for.inc.for.body_crit_edge ], [ %call10, %do.body7.for.body_crit_edge ]
  %11 = ptrtoint ptr %vp.075 to i32
  call void @__asan_load4_noabort(i32 %11)
  %tvp.080 = load ptr, ptr %vp.075, align 8
  %vp_idx23 = getelementptr inbounds %struct.scsi_qla_host, ptr %vp.075, i32 0, i32 46
  %12 = ptrtoint ptr %vp_idx23 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vp_idx23, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool24.not = icmp eq i16 %13, 0
  br i1 %tobool24.not, label %for.body.for.inc_crit_edge, label %if.then25

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then25:                                        ; preds = %for.body
  %vref_count = getelementptr inbounds %struct.scsi_qla_host, ptr %vp.075, i32 0, i32 60
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #6
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #6, !srcloc !115
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_slock, i32 noundef %flags.074) #6
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vp.075, i32 0, i32 52
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44, i32 8
  %19 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i.i, align 4
  %vp_flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vp.075, i32 0, i32 48
  %21 = ptrtoint ptr %vp_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vp_flags.i, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 67141632, ptr noundef %vp.075, i32 noundef 16402, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.qla2x00_do_dpc_vp, i32 noundef %22) #6
  %vp_flags1.i = getelementptr inbounds %struct.scsi_qla_host, ptr %20, i32 0, i32 48
  %23 = ptrtoint ptr %vp_flags1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %vp_flags1.i, align 4
  %25 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.then25.if.end7.i_crit_edge, label %if.then.i

if.then25.if.end7.i_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then.i:                                        ; preds = %if.then25
  %call4.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %vp_flags.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.then6.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.then.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 67108864, ptr noundef %vp.075, i32 noundef 16404, ptr noundef nonnull @.str.34) #6
  %fc_vport1.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vp.075, i32 0, i32 45
  %26 = ptrtoint ptr %fc_vport1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fc_vport1.i.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 262144, ptr noundef %vp.075, i32 noundef 40962, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.qla24xx_configure_vp) #6
  %28 = ptrtoint ptr %vp_idx23 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vp_idx23, align 8
  %call.i.i70 = tail call i32 @qla2x00_send_change_request(ptr noundef %vp.075, i16 noundef zeroext 3, i16 noundef zeroext %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %cmp.not.i.i = icmp eq i32 %call.i.i70, 0
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 262144, ptr noundef %vp.075, i32 noundef 40963, ptr noundef nonnull @.str.43, i32 noundef %call.i.i70) #6
  br label %qla24xx_configure_vp.exit.i

if.else.i.i:                                      ; preds = %if.then6.i
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %vp_flags.i) #6
  %flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vp.075, i32 0, i32 8
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load.i.i = load volatile i32, ptr %flags.i.i, align 8
  %bf.set.i.i = or i32 %bf.load.i.i, 1073741824
  store volatile i32 %bf.set.i.i, ptr %flags.i.i, align 8
  %call2.i.i = tail call i32 @qla24xx_configure_vhba(ptr noundef %vp.075) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %if.else.i.i.qla24xx_configure_vp.exit.i_crit_edge

if.else.i.i.qla24xx_configure_vp.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla24xx_configure_vp.exit.i

if.end4.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %vp_state.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vp.075, i32 0, i32 49
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vp_state.i.i, i32 noundef 4) #6
  %31 = ptrtoint ptr %vp_state.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 1, ptr %vp_state.i.i, align 4
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %27, align 8
  %vport_last_state.i.i.i = getelementptr inbounds %struct.fc_vport, ptr %27, i32 0, i32 1
  %34 = ptrtoint ptr %vport_last_state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %vport_last_state.i.i.i, align 4
  store i32 1, ptr %27, align 8
  br label %qla24xx_configure_vp.exit.i

qla24xx_configure_vp.exit.i:                      ; preds = %if.end4.i.i, %if.else.i.i.qla24xx_configure_vp.exit.i_crit_edge, %if.then.i.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 67108864, ptr noundef %vp.075, i32 noundef 16405, ptr noundef nonnull @.str.35) #6
  br label %qla2x00_do_dpc_vp.exit

if.end7.i:                                        ; preds = %if.then.i.if.end7.i_crit_edge, %if.then25.if.end7.i_crit_edge
  %dpc_flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vp.075, i32 0, i32 11
  %arrayidx.i.i = getelementptr %struct.scsi_qla_host, ptr %vp.075, i32 0, i32 12
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %tobool9.not.i = icmp sgt i32 %36, -1
  br i1 %tobool9.not.i, label %if.end7.i.if.end15.i_crit_edge, label %if.then10.i

if.end7.i.if.end15.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then10.i:                                      ; preds = %if.end7.i
  %loop_state.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vp.075, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_state.i, i32 noundef 4) #6
  %37 = ptrtoint ptr %loop_state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %loop_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %38)
  %cmp.i71 = icmp eq i32 %38, 5
  br i1 %cmp.i71, label %if.then12.i, label %if.then10.i.if.end15.i_crit_edge

if.then10.i.if.end15.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %purex_list.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vp.075, i32 0, i32 69
  tail call void @qla24xx_process_purex_list(ptr noundef %purex_list.i) #6
  tail call void @_clear_bit(i32 noundef 63, ptr noundef %dpc_flags.i) #6
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.then10.i.if.end15.i_crit_edge, %if.end7.i.if.end15.i_crit_edge
  %39 = ptrtoint ptr %dpc_flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %dpc_flags.i, align 4
  %41 = and i32 %40, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool18.not.i = icmp eq i32 %41, 0
  br i1 %tobool18.not.i, label %if.end15.i.if.end21.i_crit_edge, label %if.then19.i

if.end15.i.if.end21.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 67108864, ptr noundef %vp.075, i32 noundef 16406, ptr noundef nonnull @.str.36) #6
  tail call void @qla2x00_update_fcports(ptr noundef %vp.075) #6
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %dpc_flags.i) #6
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 67108864, ptr noundef %vp.075, i32 noundef 16407, ptr noundef nonnull @.str.37) #6
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end15.i.if.end21.i_crit_edge
  %42 = ptrtoint ptr %dpc_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %dpc_flags.i, align 4
  %44 = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool24.not.i = icmp eq i32 %44, 0
  br i1 %tobool24.not.i, label %if.end21.i.if.end41.i_crit_edge, label %land.lhs.true.i

if.end21.i.if.end41.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  %45 = ptrtoint ptr %dpc_flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %dpc_flags.i, align 4
  %47 = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool27.not.i = icmp eq i32 %47, 0
  br i1 %tobool27.not.i, label %land.lhs.true28.i, label %land.lhs.true.i.if.end41.i_crit_edge

land.lhs.true.i.if.end41.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

land.lhs.true28.i:                                ; preds = %land.lhs.true.i
  %loop_state29.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vp.075, i32 0, i32 9
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_state29.i, i32 noundef 4) #6
  %48 = ptrtoint ptr %loop_state29.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %loop_state29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp31.not.i = icmp eq i32 %49, 2
  br i1 %cmp31.not.i, label %land.lhs.true28.i.if.end41.i_crit_edge, label %if.then32.i

land.lhs.true28.i.if.end41.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.then32.i:                                      ; preds = %land.lhs.true28.i
  %relogin_jif.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vp.075, i32 0, i32 10
  %50 = ptrtoint ptr %relogin_jif.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %relogin_jif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool33.not.i = icmp eq i32 %51, 0
  br i1 %tobool33.not.i, label %if.then32.i.if.then36.i_crit_edge, label %lor.lhs.false.i

if.then32.i.if.then36.i_crit_edge:                ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i

lor.lhs.false.i:                                  ; preds = %if.then32.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %52, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp35.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp35.i, label %lor.lhs.false.i.if.then36.i_crit_edge, label %lor.lhs.false.i.if.end41.i_crit_edge

lor.lhs.false.i.if.end41.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

lor.lhs.false.i.if.then36.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i

if.then36.i:                                      ; preds = %lor.lhs.false.i.if.then36.i_crit_edge, %if.then32.i.if.then36.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %53, 100
  %54 = ptrtoint ptr %relogin_jif.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i, ptr %relogin_jif.i, align 8
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %dpc_flags.i) #6
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 67108864, ptr noundef %vp.075, i32 noundef 16408, ptr noundef nonnull @.str.38) #6
  %call39.i = tail call i32 @qla24xx_post_relogin_work(ptr noundef %vp.075) #6
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then36.i, %lor.lhs.false.i.if.end41.i_crit_edge, %land.lhs.true28.i.if.end41.i_crit_edge, %land.lhs.true.i.if.end41.i_crit_edge, %if.end21.i.if.end41.i_crit_edge
  %call43.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %dpc_flags.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end41.i.if.end51.i_crit_edge, label %land.lhs.true45.i

if.end41.i.if.end51.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

land.lhs.true45.i:                                ; preds = %if.end41.i
  %call47.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %dpc_flags.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %land.lhs.true45.i.if.end51.i_crit_edge

land.lhs.true45.i.if.end51.i_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.then49.i:                                      ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %dpc_flags.i) #6
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then49.i, %land.lhs.true45.i.if.end51.i_crit_edge, %if.end41.i.if.end51.i_crit_edge
  %call53.i = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %dpc_flags.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end51.i.if.end63.i_crit_edge, label %if.then55.i

if.end51.i.if.end63.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i

if.then55.i:                                      ; preds = %if.end51.i
  %call57.i = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %dpc_flags.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.then59.i, label %if.then55.i.if.end63.i_crit_edge

if.then55.i.if.end63.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i

if.then59.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 67108864, ptr noundef %vp.075, i32 noundef 16410, ptr noundef nonnull @.str.39) #6
  %call60.i = tail call i32 @qla2x00_loop_resync(ptr noundef %vp.075) #6
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %dpc_flags.i) #6
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 67108864, ptr noundef %vp.075, i32 noundef 16411, ptr noundef nonnull @.str.40) #6
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then59.i, %if.then55.i.if.end63.i_crit_edge, %if.end51.i.if.end63.i_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 67141632, ptr noundef %vp.075, i32 noundef 16412, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.qla2x00_do_dpc_vp) #6
  br label %qla2x00_do_dpc_vp.exit

qla2x00_do_dpc_vp.exit:                           ; preds = %if.end63.i, %qla24xx_configure_vp.exit.i
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vport_slock) #6
  %call.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #6
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #6, !srcloc !117
  br label %for.inc

for.inc:                                          ; preds = %qla2x00_do_dpc_vp.exit, %for.body.for.inc_crit_edge
  %flags.1 = phi i32 [ %call37, %qla2x00_do_dpc_vp.exit ], [ %flags.074, %for.body.for.inc_crit_edge ]
  %cmp21.not = icmp eq ptr %tvp.080, %vp_list
  br i1 %cmp21.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body7.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call10, %do.body7.for.end_crit_edge ], [ %flags.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_slock, i32 noundef %flags.0.lcssa) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_vport_create_req_sanity_check(ptr nocapture noundef readonly %fc_vport) local_unnamed_addr #0 align 64 {
entry:
  %port_name = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %port_name) #6
  %roles = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 4
  %4 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %roles, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load volatile i32, ptr %flags, align 8
  %7 = and i32 %bf.load, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %switch_cap = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 37
  %8 = ptrtoint ptr %switch_cap to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %switch_cap, align 2
  %10 = and i16 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool3.not = icmp eq i16 %10, 0
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %port_name6 = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 3
  %11 = ptrtoint ptr %port_name6 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %port_name6, align 8
  %13 = ptrtoint ptr %port_name to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %port_name, align 8
  %port_name8 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %port_name, ptr noundef dereferenceable(8) %port_name8, i32 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11.not = icmp eq i32 %bcmp, 0
  br i1 %tobool11.not, label %if.end5.cleanup_crit_edge, label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %vport_slock.i = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 126
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vport_slock.i) #6
  %vp_list.i = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 227
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end13
  %vha.0.in.i = phi ptr [ %vp_list.i, %if.end13 ], [ %vha.0.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %vha.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %vha.0.i = load ptr, ptr %vha.0.in.i, align 4
  %cmp12.not.i = icmp eq ptr %vha.0.i, %vp_list.i
  br i1 %cmp12.not.i, label %qla24xx_find_vhost_by_name.exit.thread, label %for.body.i

qla24xx_find_vhost_by_name.exit.thread:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_slock.i, i32 noundef %call2.i) #6
  br label %if.end18

for.body.i:                                       ; preds = %for.cond.i
  %port_name14.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha.0.i, i32 0, i32 26
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %port_name, ptr noundef dereferenceable(8) %port_name14.i, i32 8) #10
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %qla24xx_find_vhost_by_name.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

qla24xx_find_vhost_by_name.exit:                  ; preds = %for.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_slock.i, i32 noundef %call2.i) #6
  %tobool16.not = icmp eq ptr %vha.0.i, null
  br i1 %tobool16.not, label %qla24xx_find_vhost_by_name.exit.if.end18_crit_edge, label %qla24xx_find_vhost_by_name.exit.cleanup_crit_edge

qla24xx_find_vhost_by_name.exit.cleanup_crit_edge: ; preds = %qla24xx_find_vhost_by_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

qla24xx_find_vhost_by_name.exit.if.end18_crit_edge: ; preds = %qla24xx_find_vhost_by_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end18:                                         ; preds = %qla24xx_find_vhost_by_name.exit.if.end18_crit_edge, %qla24xx_find_vhost_by_name.exit.thread
  %num_vhosts = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 229
  %15 = ptrtoint ptr %num_vhosts to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_vhosts, align 4
  %max_npiv_vports = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 231
  %17 = ptrtoint ptr %max_npiv_vports to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %max_npiv_vports, align 64
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp21 = icmp ugt i16 %16, %18
  br i1 %cmp21, label %if.then23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %conv20 = zext i16 %18 to i32
  %conv19 = zext i16 %16 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 262144, ptr noundef null, i32 noundef 40964, ptr noundef nonnull @.str.7, i32 noundef %conv19, i32 noundef %conv20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end18.cleanup_crit_edge, %qla24xx_find_vhost_by_name.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %if.then23 ], [ -38, %entry.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ], [ -95, %if.end2.cleanup_crit_edge ], [ -76, %if.end5.cleanup_crit_edge ], [ -76, %qla24xx_find_vhost_by_name.exit.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %port_name) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qla24xx_create_vhost(ptr noundef %fc_vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call1 = tail call ptr @qla2x00_create_host(ptr noundef nonnull @qla2xxx_driver_template, ptr noundef %3) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef null, i32 noundef 40965, ptr noundef nonnull @.str.8) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %host2 = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 5
  %4 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host2, align 8
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %6 = ptrtoint ptr %dd_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %dd_data, align 4
  %node_name = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 2
  %7 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %node_name, align 8
  %node_name3 = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 25
  %9 = ptrtoint ptr %node_name3 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %node_name3, align 1
  %port_name = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 3
  %10 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %port_name, align 8
  %port_name4 = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 26
  %12 = ptrtoint ptr %port_name4 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %port_name4, align 1
  %fc_vport6 = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 45
  %13 = ptrtoint ptr %fc_vport6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %fc_vport, ptr %fc_vport6, align 4
  %device_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 13
  %14 = ptrtoint ptr %device_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %device_flags, align 4
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 52
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 4
  %vport_lock.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 125
  tail call void @mutex_lock_nested(ptr noundef %vport_lock.i, i32 noundef 0) #6
  %vp_idx_map.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 228
  %max_npiv_vports.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 231
  %17 = ptrtoint ptr %max_npiv_vports.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %max_npiv_vports.i, align 64
  %conv.i = zext i16 %18 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %vp_idx_map.i, i32 noundef %add.i) #6
  %19 = ptrtoint ptr %max_npiv_vports.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_npiv_vports.i, align 64
  %conv2.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv2.i)
  %cmp.i = icmp ugt i32 %call.i, %conv2.i
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 262144, ptr noundef nonnull %call1, i32 noundef 40960, ptr noundef nonnull @.str.44, i32 noundef %call.i, i32 noundef %conv2.i) #6
  %.pre = trunc i32 %call.i to i16
  br label %qla24xx_allocate_vp_id.exit

if.end.i:                                         ; preds = %if.end
  tail call void @_set_bit(i32 noundef %call.i, ptr noundef %vp_idx_map.i) #6
  %num_vhosts.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 229
  %21 = ptrtoint ptr %num_vhosts.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_vhosts.i, align 4
  %inc.i = add i16 %22, 1
  store i16 %inc.i, ptr %num_vhosts.i, align 4
  %conv9.i = trunc i32 %call.i to i16
  %vp_idx.i = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 46
  %23 = ptrtoint ptr %vp_idx.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv9.i, ptr %vp_idx.i, align 8
  %vport_slock.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 126
  %call14.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vport_slock.i) #6
  %vp_list.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 227
  %prev.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 227, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call1, ptr noundef %25, ptr noundef %vp_list.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call1, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %vp_list.i, ptr %call1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call1, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call1, ptr %25, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_slock.i, i32 noundef %call14.i) #6
  %hardware_lock.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 6
  %call26.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock.i) #6
  tail call void @qlt_update_vp_map(ptr noundef nonnull %call1, i32 noundef 1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock.i, i32 noundef %call26.i) #6
  br label %qla24xx_allocate_vp_id.exit

qla24xx_allocate_vp_id.exit:                      ; preds = %list_add_tail.exit.i, %if.then.i
  %conv.pre-phi = phi i16 [ %.pre, %if.then.i ], [ %conv9.i, %list_add_tail.exit.i ]
  tail call void @mutex_unlock(ptr noundef %vport_lock.i) #6
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 46
  %30 = ptrtoint ptr %vp_idx to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.pre-phi, ptr %vp_idx, align 8
  %conv9 = and i32 %call.i, 65535
  %max_npiv_vports = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 231
  %31 = ptrtoint ptr %max_npiv_vports to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %max_npiv_vports, align 64
  %conv10 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9, i32 %conv10)
  %cmp = icmp ugt i32 %conv9, %conv10
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %qla24xx_allocate_vp_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 262144, ptr noundef nonnull %call1, i32 noundef 40966, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end13:                                         ; preds = %qla24xx_allocate_vp_id.exit
  %call14 = tail call i32 @qla2x00_reserve_mgmt_server_loop_id(ptr noundef nonnull %call1) #6
  %conv15 = trunc i32 %call14 to i16
  %mgmt_svr_loop_id = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 19
  %33 = ptrtoint ptr %mgmt_svr_loop_id to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv15, ptr %mgmt_svr_loop_id, align 2
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 11
  %34 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %dpc_flags, align 4
  %dpc_active = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 92
  %35 = ptrtoint ptr %dpc_active to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %dpc_active, align 4
  tail call void @_set_bit(i32 noundef 12, ptr noundef %dpc_flags) #6
  tail call void @_set_bit(i32 noundef 9, ptr noundef %dpc_flags) #6
  %vp_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 48
  tail call void @_set_bit(i32 noundef 4, ptr noundef %vp_flags) #6
  %loop_state = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_state, i32 noundef 4) #6
  %36 = ptrtoint ptr %loop_state to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 2, ptr %loop_state, align 4
  %loop_down_timer = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 21
  %call.i.i95 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_down_timer, i32 noundef 4) #6
  %37 = ptrtoint ptr %loop_down_timer to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 255, ptr %loop_down_timer, align 4
  tail call void @qla2x00_start_timer(ptr noundef nonnull %call1, i32 noundef 1) #6
  %req = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 38
  %38 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %req, align 8
  %req18 = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 54
  %40 = ptrtoint ptr %req18 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %req18, align 8
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 5
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.clear = and i32 %bf.load, 524288
  %flags19 = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 8
  %42 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load20 = load volatile i32, ptr %flags19, align 8
  %bf.clear21 = and i32 %bf.load20, -524289
  %bf.set = or i32 %bf.clear21, %bf.clear
  store volatile i32 %bf.set, ptr %flags19, align 8
  %43 = load ptr, ptr %req, align 8
  %length = getelementptr inbounds %struct.req_que, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %length, align 2
  %conv23 = zext i16 %45 to i32
  %add = add nuw nsw i32 %conv23, 128
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 26
  %46 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add, ptr %can_queue, align 4
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 27
  %47 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 3, ptr %cmd_per_lun, align 8
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 55
  %48 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %device_type, align 4
  %and = and i32 %49, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end13.if.else_crit_edge, label %land.lhs.true

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xenabledif to i32))
  %50 = load i32, ptr @ql2xenabledif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool25.not = icmp eq i32 %50, 0
  br i1 %tobool25.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end13.if.else_crit_edge
  br label %if.end28

if.end28:                                         ; preds = %if.else, %land.lhs.true.if.end28_crit_edge
  %.sink = phi i16 [ 16, %if.else ], [ 32, %land.lhs.true.if.end28_crit_edge ]
  %max_cmd_len27 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 24
  %51 = ptrtoint ptr %max_cmd_len27 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %.sink, ptr %max_cmd_len27, align 4
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 20
  %52 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %max_channel, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @ql2xmaxlun to i32))
  %53 = load i64, ptr @ql2xmaxlun, align 8
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 22
  %54 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %max_lun, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 17
  %55 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %host_no, align 4
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 23
  %57 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %unique_id, align 8
  %max_fibre_devices = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 44
  %58 = ptrtoint ptr %max_fibre_devices to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %max_fibre_devices, align 4
  %conv29 = zext i16 %59 to i32
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 21
  %60 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv29, ptr %max_id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qla2xxx_transport_vport_template to i32))
  %61 = load ptr, ptr @qla2xxx_transport_vport_template, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 12
  %62 = ptrtoint ptr %transportt to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %transportt, align 4
  %host_no30 = getelementptr inbounds %struct.scsi_qla_host, ptr %call1, i32 0, i32 6
  %63 = ptrtoint ptr %host_no30 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %host_no30, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 262144, ptr noundef nonnull %call1, i32 noundef 40967, ptr noundef nonnull @.str.10, i32 noundef %64, ptr noundef nonnull %call1) #6
  %65 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load32 = load volatile i32, ptr %flags19, align 8
  %bf.set34 = or i32 %bf.load32, -2147483648
  store volatile i32 %bf.set34, ptr %flags19, align 8
  %vport_lock = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 125
  tail call void @mutex_lock_nested(ptr noundef %vport_lock, i32 noundef 0) #6
  %66 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vp_idx, align 8
  %conv36 = zext i16 %67 to i32
  %vp_idx_map = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 228
  tail call void @_set_bit(i32 noundef %conv36, ptr noundef %vp_idx_map) #6
  %cur_vport_count = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 232
  %68 = ptrtoint ptr %cur_vport_count to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cur_vport_count, align 4
  %inc = add i32 %69, 1
  store i32 %inc, ptr %cur_vport_count, align 4
  tail call void @mutex_unlock(ptr noundef %vport_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then12, %if.then
  %retval.0 = phi ptr [ null, %if.then12 ], [ %call1, %if.end28 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla2x00_create_host(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_reserve_mgmt_server_loop_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_start_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla25xx_delete_req_que(ptr noundef %vha, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load volatile i32, ptr %flags, align 8
  %1 = and i32 %bf.load, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %options = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 10
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %options, align 4
  %4 = or i16 %3, 1
  store i16 %4, ptr %options, align 4
  %call = tail call i32 @qla25xx_init_req_que(ptr noundef %vha, ptr noundef nonnull %req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @qla25xx_free_req_que(ptr noundef %vha, ptr noundef nonnull %req)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 258, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla25xx_init_req_que(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla25xx_free_req_que(ptr nocapture noundef readonly %vha, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %id = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %length = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 9
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %length, align 2
  %conv = zext i16 %7 to i32
  %add = shl nuw nsw i32 %conv, 6
  %mul = add nuw nsw i32 %add, 64
  %ring = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring, align 4
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %9, i32 noundef %11, i32 noundef 0) #6
  %12 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ring, align 4
  %13 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %req_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %req_q_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req_q_map, align 4
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr ptr, ptr %15, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx, align 4
  %vport_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 125
  tail call void @mutex_lock_nested(ptr noundef %vport_lock, i32 noundef 0) #6
  %req_qid_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 27
  tail call void @_clear_bit(i32 noundef %idxprom, ptr noundef %req_qid_map) #6
  tail call void @mutex_unlock(ptr noundef %vport_lock) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %req, i32 0, i32 16
  %17 = ptrtoint ptr %outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %outstanding_cmds, align 4
  tail call void @kfree(ptr noundef %18) #6
  tail call void @kfree(ptr noundef %req) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla25xx_delete_rsp_que(ptr noundef %vha, ptr noundef %rsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rsp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load volatile i32, ptr %flags, align 8
  %1 = and i32 %bf.load, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %options = getelementptr inbounds %struct.rsp_que, ptr %rsp, i32 0, i32 9
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %options, align 2
  %4 = or i16 %3, 1
  store i16 %4, ptr %options, align 2
  %call = tail call i32 @qla25xx_init_rsp_que(ptr noundef %vha, ptr noundef nonnull %rsp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @qla25xx_free_rsp_que(ptr noundef %vha, ptr noundef nonnull %rsp)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 258, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla25xx_init_rsp_que(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla25xx_free_rsp_que(ptr nocapture noundef readonly %vha, ptr noundef %rsp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %id = getelementptr inbounds %struct.rsp_que, ptr %rsp, i32 0, i32 11
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 2
  %msix = getelementptr inbounds %struct.rsp_que, ptr %rsp, i32 0, i32 14
  %4 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msix, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %vector = getelementptr inbounds %struct.qla_msix_entry, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vector, align 4
  %handle = getelementptr inbounds %struct.qla_msix_entry, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle, align 4
  %call = tail call ptr @free_irq(i32 noundef %9, ptr noundef %11) #6
  %12 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msix, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %13, align 4
  %15 = load ptr, ptr %msix, align 4
  %in_use = getelementptr inbounds %struct.qla_msix_entry, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %in_use to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %in_use, align 4
  %17 = load ptr, ptr %msix, align 4
  %handle9 = getelementptr inbounds %struct.qla_msix_entry, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %handle9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %handle9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %length = getelementptr inbounds %struct.rsp_que, ptr %rsp, i32 0, i32 8
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %length, align 4
  %conv = zext i16 %22 to i32
  %add = shl nuw nsw i32 %conv, 6
  %mul = add nuw nsw i32 %add, 64
  %ring = getelementptr inbounds %struct.rsp_que, ptr %rsp, i32 0, i32 1
  %23 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring, align 4
  %25 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rsp, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %24, i32 noundef %26, i32 noundef 0) #6
  %27 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %ring, align 4
  %28 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %rsp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool12.not = icmp eq i16 %3, 0
  br i1 %tobool12.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rsp_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 25
  %29 = ptrtoint ptr %rsp_q_map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rsp_q_map, align 16
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr ptr, ptr %30, i32 %idxprom
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx, align 4
  %vport_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 125
  tail call void @mutex_lock_nested(ptr noundef %vport_lock, i32 noundef 0) #6
  %rsp_qid_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 28
  tail call void @_clear_bit(i32 noundef %idxprom, ptr noundef %rsp_qid_map) #6
  tail call void @mutex_unlock(ptr noundef %vport_lock) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  tail call void @kfree(ptr noundef %rsp) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla25xx_delete_queues(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xmqsupport to i32))
  %2 = load i32, ptr @ql2xmqsupport, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xnvmeenable to i32))
  %3 = load i32, ptr @ql2xnvmeenable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %for.cond13.preheader, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.cond13.preheader:                             ; preds = %lor.lhs.false
  %max_req_queues = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %max_req_queues to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_req_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp14116 = icmp ugt i8 %5, 1
  br i1 %cmp14116, label %for.body16.lr.ph, label %for.cond13.preheader.for.cond29.preheader_crit_edge

for.cond13.preheader.for.cond29.preheader_crit_edge: ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond29.preheader

for.body16.lr.ph:                                 ; preds = %for.cond13.preheader
  %req_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 24
  %req_qid_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 27
  %flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  br label %for.body16

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %qp_list = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 43
  %6 = ptrtoint ptr %qp_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qp_list, align 8
  %cmp.not113 = icmp eq ptr %7, %qp_list
  br i1 %cmp.not113, label %if.then.cleanup_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn.in114 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %7, %if.then.for.body_crit_edge ]
  %qpair.0 = getelementptr i8, ptr %.pn.in114, i32 -184
  %8 = ptrtoint ptr %.pn.in114 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn.in114, align 8
  %call = tail call i32 @qla2xxx_delete_qpair(ptr noundef %vha, ptr noundef %qpair.0) #6
  %cmp.not = icmp eq ptr %.pn, %qp_list
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond29.preheader:                             ; preds = %for.inc27.for.cond29.preheader_crit_edge, %for.cond13.preheader.for.cond29.preheader_crit_edge
  %max_rsp_queues = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 31
  %9 = ptrtoint ptr %max_rsp_queues to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %max_rsp_queues, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp31120 = icmp ugt i8 %10, 1
  br i1 %cmp31120, label %for.body33.lr.ph, label %for.cond29.preheader.cleanup_crit_edge

for.cond29.preheader.cleanup_crit_edge:           ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body33.lr.ph:                                 ; preds = %for.cond29.preheader
  %rsp_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 25
  %rsp_qid_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 28
  %flags.i97 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  br label %for.body33

for.body16:                                       ; preds = %for.inc27.for.body16_crit_edge, %for.body16.lr.ph
  %cnt.0117 = phi i32 [ 1, %for.body16.lr.ph ], [ %inc, %for.inc27.for.body16_crit_edge ]
  %11 = ptrtoint ptr %req_q_map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req_q_map, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 %cnt.0117
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %for.body16.for.inc27_crit_edge, label %land.lhs.true

for.body16.for.inc27_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27

land.lhs.true:                                    ; preds = %for.body16
  %div3.i = lshr i32 %cnt.0117, 5
  %arrayidx.i = getelementptr i32, ptr %req_qid_map, i32 %div3.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %cnt.0117, 31
  %17 = shl nuw i32 1, %and.i
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  br i1 %tobool19.not, label %land.lhs.true.for.inc27_crit_edge, label %land.lhs.true.i

land.lhs.true.for.inc27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.i = load volatile i32, ptr %flags.i, align 8
  %20 = and i32 %bf.load.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool1.not.i = icmp eq i32 %20, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.inc27_crit_edge, label %if.then.i

land.lhs.true.i.for.inc27_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27

if.then.i:                                        ; preds = %land.lhs.true.i
  %options.i = getelementptr inbounds %struct.req_que, ptr %14, i32 0, i32 10
  %21 = ptrtoint ptr %options.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %options.i, align 4
  %23 = or i16 %22, 1
  store i16 %23, ptr %options.i, align 4
  %call.i = tail call i32 @qla25xx_init_req_que(ptr noundef %vha, ptr noundef nonnull %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then24

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @qla25xx_free_req_que(ptr noundef %vha, ptr noundef nonnull %14) #6
  br label %for.inc27

if.then24:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.req_que, ptr %14, i32 0, i32 12
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %id, align 4
  %conv25 = zext i16 %25 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 234, ptr noundef nonnull @.str.11, i32 noundef %conv25) #6
  br label %cleanup

for.inc27:                                        ; preds = %if.end.i, %land.lhs.true.i.for.inc27_crit_edge, %land.lhs.true.for.inc27_crit_edge, %for.body16.for.inc27_crit_edge
  %inc = add nuw nsw i32 %cnt.0117, 1
  %26 = ptrtoint ptr %max_req_queues to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %max_req_queues, align 8
  %conv = zext i8 %27 to i32
  %cmp14 = icmp ult i32 %inc, %conv
  br i1 %cmp14, label %for.inc27.for.body16_crit_edge, label %for.inc27.for.cond29.preheader_crit_edge

for.inc27.for.cond29.preheader_crit_edge:         ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond29.preheader

for.inc27.for.body16_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body16

for.body33:                                       ; preds = %for.inc49.for.body33_crit_edge, %for.body33.lr.ph
  %cnt.1121 = phi i32 [ 1, %for.body33.lr.ph ], [ %inc50, %for.inc49.for.body33_crit_edge ]
  %28 = ptrtoint ptr %rsp_q_map to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rsp_q_map, align 16
  %arrayidx34 = getelementptr ptr, ptr %29, i32 %cnt.1121
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %31, null
  br i1 %tobool35.not, label %for.body33.for.inc49_crit_edge, label %land.lhs.true36

for.body33.for.inc49_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc49

land.lhs.true36:                                  ; preds = %for.body33
  %div3.i91 = lshr i32 %cnt.1121, 5
  %arrayidx.i92 = getelementptr i32, ptr %rsp_qid_map, i32 %div3.i91
  %32 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i92, align 4
  %and.i93 = and i32 %cnt.1121, 31
  %34 = shl nuw i32 1, %and.i93
  %35 = and i32 %33, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool39.not = icmp eq i32 %35, 0
  br i1 %tobool39.not, label %land.lhs.true36.for.inc49_crit_edge, label %land.lhs.true.i100

land.lhs.true36.for.inc49_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc49

land.lhs.true.i100:                               ; preds = %land.lhs.true36
  %36 = ptrtoint ptr %flags.i97 to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load.i98 = load volatile i32, ptr %flags.i97, align 8
  %37 = and i32 %bf.load.i98, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool1.not.i99 = icmp eq i32 %37, 0
  br i1 %tobool1.not.i99, label %land.lhs.true.i100.for.inc49_crit_edge, label %if.then.i104

land.lhs.true.i100.for.inc49_crit_edge:           ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc49

if.then.i104:                                     ; preds = %land.lhs.true.i100
  %options.i101 = getelementptr inbounds %struct.rsp_que, ptr %31, i32 0, i32 9
  %38 = ptrtoint ptr %options.i101 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %options.i101, align 2
  %40 = or i16 %39, 1
  store i16 %40, ptr %options.i101, align 2
  %call.i102 = tail call i32 @qla25xx_init_rsp_que(ptr noundef %vha, ptr noundef nonnull %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp.not.i103 = icmp eq i32 %call.i102, 0
  br i1 %cmp.not.i103, label %if.end.i105, label %if.then44

if.end.i105:                                      ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @qla25xx_free_rsp_que(ptr noundef %vha, ptr noundef nonnull %31) #6
  br label %for.inc49

if.then44:                                        ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #8
  %id45 = getelementptr inbounds %struct.rsp_que, ptr %31, i32 0, i32 11
  %41 = ptrtoint ptr %id45 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %id45, align 2
  %conv46 = zext i16 %42 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 235, ptr noundef nonnull @.str.12, i32 noundef %conv46) #6
  br label %cleanup

for.inc49:                                        ; preds = %if.end.i105, %land.lhs.true.i100.for.inc49_crit_edge, %land.lhs.true36.for.inc49_crit_edge, %for.body33.for.inc49_crit_edge
  %inc50 = add nuw nsw i32 %cnt.1121, 1
  %43 = ptrtoint ptr %max_rsp_queues to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %max_rsp_queues, align 1
  %conv30 = zext i8 %44 to i32
  %cmp31 = icmp ult i32 %inc50, %conv30
  br i1 %cmp31, label %for.inc49.for.body33_crit_edge, label %for.inc49.cleanup_crit_edge

for.inc49.cleanup_crit_edge:                      ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc49.for.body33_crit_edge:                   ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body33

cleanup:                                          ; preds = %for.inc49.cleanup_crit_edge, %if.then44, %if.then24, %for.cond29.preheader.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 258, %if.then24 ], [ 258, %if.then44 ], [ 0, %for.cond29.preheader.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %for.inc49.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2xxx_delete_qpair(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla25xx_create_req_que(ptr noundef %ha, i16 noundef zeroext %options, i8 noundef zeroext %vp_idx, i16 noundef zeroext %rid, i32 noundef %rsp_que, i8 noundef zeroext %qos, i1 noundef zeroext %startqp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 140) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %3, i32 noundef 217, ptr noundef nonnull @.str.13) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2048, ptr %length, align 2
  %6 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ha, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 131136, ptr noundef nonnull %call7.i.i, i32 noundef 3264, i32 noundef 0) #6
  %ring = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %ring, align 4
  %cmp8 = icmp eq ptr %call.i, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %3, i32 noundef 218, ptr noundef nonnull @.str.14) #6
  br label %que_failed

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @qla2x00_alloc_outstanding_cmds(ptr noundef %ha, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end16, label %if.end11.que_failed_crit_edge

if.end11.que_failed_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %que_failed

if.end16:                                         ; preds = %if.end11
  %mq_lock = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 127
  tail call void @mutex_lock_nested(ptr noundef %mq_lock, i32 noundef 0) #6
  %req_qid_map = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 27
  %max_req_queues = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 30
  %9 = ptrtoint ptr %max_req_queues to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %max_req_queues, align 8
  %conv17 = zext i8 %10 to i32
  %call18 = tail call i32 @_find_first_zero_bit_be(ptr noundef %req_qid_map, i32 noundef %conv17) #6
  %conv19 = trunc i32 %call18 to i16
  %conv20 = and i32 %call18, 65535
  %11 = ptrtoint ptr %max_req_queues to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_req_queues, align 8
  %conv22 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20, i32 %conv22)
  %cmp23.not = icmp ult i32 %conv20, %conv22
  br i1 %cmp23.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %mq_lock) #6
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %3, i32 noundef 219, ptr noundef nonnull @.str.15) #6
  br label %que_failed

if.end27:                                         ; preds = %if.end16
  tail call void @_set_bit(i32 noundef %conv20, ptr noundef %req_qid_map) #6
  %req_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 24
  %13 = ptrtoint ptr %req_q_map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req_q_map, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %conv20
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %rid31 = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 11
  %16 = ptrtoint ptr %rid31 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %rid, ptr %rid31, align 2
  %conv32 = zext i8 %vp_idx to i16
  %vp_idx33 = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 14
  %17 = ptrtoint ptr %vp_idx33 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv32, ptr %vp_idx33, align 8
  %conv34 = zext i8 %qos to i16
  %qos35 = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 13
  %18 = ptrtoint ptr %qos35 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv34, ptr %qos35, align 2
  %conv38 = zext i16 %rid to i32
  %conv40 = zext i8 %vp_idx to i32
  %conv42 = zext i8 %qos to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1048576, ptr noundef %3, i32 noundef 49154, ptr noundef nonnull @.str.16, i32 noundef %conv20, i32 noundef %conv38, i32 noundef %conv40, i32 noundef %conv42) #6
  %19 = ptrtoint ptr %rid31 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rid31, align 2
  %conv45 = zext i16 %20 to i32
  %21 = ptrtoint ptr %vp_idx33 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vp_idx33, align 8
  %conv47 = zext i16 %22 to i32
  %23 = ptrtoint ptr %qos35 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %qos35, align 2
  %conv49 = zext i16 %24 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %3, i32 noundef 220, ptr noundef nonnull @.str.16, i32 noundef %conv20, i32 noundef %conv45, i32 noundef %conv47, i32 noundef %conv49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsp_que)
  %cmp50 = icmp slt i32 %rsp_que, 0
  br i1 %cmp50, label %if.end27.if.end55_crit_edge, label %if.else

if.end27.if.end55_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %rsp_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 25
  %25 = ptrtoint ptr %rsp_q_map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rsp_q_map, align 16
  %arrayidx53 = getelementptr ptr, ptr %26, i32 %rsp_que
  %27 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx53, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.end27.if.end55_crit_edge
  %.sink = phi ptr [ %28, %if.else ], [ null, %if.end27.if.end55_crit_edge ]
  %29 = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 15
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.sink, ptr %29, align 4
  %31 = ptrtoint ptr %rid31 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rid31, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %32)
  %tobool.not = icmp ult i16 %32, 256
  %33 = or i16 %options, 16
  %spec.select = select i1 %tobool.not, i16 %options, i16 %33
  %conv64 = trunc i16 %32 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv64)
  %tobool65.not = icmp eq i8 %conv64, 0
  %34 = or i16 %spec.select, 32
  %options.addr.1 = select i1 %tobool65.not, i16 %spec.select, i16 %34
  %options71 = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 10
  %35 = ptrtoint ptr %options71 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %options.addr.1, ptr %options71, align 8
  %conv73 = zext i16 %options.addr.1 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1048576, ptr noundef %3, i32 noundef 49155, ptr noundef nonnull @.str.17, i32 noundef %conv73) #6
  %36 = ptrtoint ptr %options71 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %options71, align 8
  %conv75 = zext i16 %37 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %3, i32 noundef 221, ptr noundef nonnull @.str.17, i32 noundef %conv75) #6
  %num_outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 18
  %38 = ptrtoint ptr %num_outstanding_cmds to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_outstanding_cmds, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp77275 = icmp ugt i16 %39, 1
  br i1 %cmp77275, label %for.body.lr.ph, label %if.end55.for.end_crit_edge

if.end55.for.end_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end55
  %outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %cnt.0276 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %40 = ptrtoint ptr %outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %outstanding_cmds, align 8
  %arrayidx79 = getelementptr ptr, ptr %41, i32 %cnt.0276
  %42 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx79, align 4
  %inc = add nuw nsw i32 %cnt.0276, 1
  %43 = ptrtoint ptr %num_outstanding_cmds to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %num_outstanding_cmds, align 8
  %conv76 = zext i16 %44 to i32
  %cmp77 = icmp ult i32 %inc, %conv76
  br i1 %cmp77, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end55.for.end_crit_edge
  %current_outstanding_cmd = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 17
  %45 = ptrtoint ptr %current_outstanding_cmd to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %current_outstanding_cmd, align 4
  %46 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ring, align 4
  %ring_ptr = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %ring_ptr, align 8
  %ring_index = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %ring_index to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %ring_index, align 4
  %50 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %length, align 2
  %cnt82 = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 8
  %52 = ptrtoint ptr %cnt82 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %cnt82, align 4
  %id = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 12
  %53 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv19, ptr %id, align 4
  %mqenable = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 23
  %54 = ptrtoint ptr %mqenable to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mqenable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool84.not = icmp eq i8 %55, 0
  br i1 %tobool84.not, label %lor.lhs.false, label %for.end.cond.true_crit_edge

for.end.cond.true_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

lor.lhs.false:                                    ; preds = %for.end
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 54
  %56 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %isp_type, align 8
  %58 = and i32 %57, 45711360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %cond.false, label %lor.lhs.false.cond.true_crit_edge

lor.lhs.false.cond.true_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

cond.true:                                        ; preds = %lor.lhs.false.cond.true_crit_edge, %for.end.cond.true_crit_edge
  %mqiobase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 20
  %60 = ptrtoint ptr %mqiobase to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mqiobase, align 32
  %mul118 = shl nuw nsw i32 %conv20, 12
  %add.ptr = getelementptr i8, ptr %61, i32 %mul118
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 9
  %62 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iobase, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %63, %cond.false ]
  %req_q_in119 = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %req_q_in119 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %cond, ptr %req_q_in119, align 4
  %req_q_out = getelementptr inbounds %struct.device_reg_25xxmq, ptr %cond, i32 0, i32 1
  %req_q_out120 = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %req_q_out120 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %req_q_out, ptr %req_q_out120, align 8
  %66 = ptrtoint ptr %req_q_map to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %req_q_map, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %max_q_depth = getelementptr inbounds %struct.req_que, ptr %69, i32 0, i32 19
  %70 = ptrtoint ptr %max_q_depth to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_q_depth, align 4
  %max_q_depth123 = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 19
  %72 = ptrtoint ptr %max_q_depth123 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %max_q_depth123, align 4
  %conv126 = zext i16 %51 to i32
  %add.ptr127 = getelementptr %struct.cmd_a64_entry_t, ptr %47, i32 %conv126
  %out_ptr = getelementptr inbounds %struct.req_que, ptr %call7.i.i, i32 0, i32 7
  %73 = ptrtoint ptr %out_ptr to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr127, ptr %out_ptr, align 8
  tail call void @mutex_unlock(ptr noundef %mq_lock) #6
  %74 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ring_ptr, align 8
  %76 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %ring_index, align 4
  %conv131 = zext i16 %77 to i32
  %78 = ptrtoint ptr %cnt82 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %cnt82, align 4
  %conv133 = zext i16 %79 to i32
  %80 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %id, align 4
  %conv135 = zext i16 %81 to i32
  %82 = ptrtoint ptr %max_q_depth123 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_q_depth123, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1048576, ptr noundef %3, i32 noundef 49156, ptr noundef nonnull @.str.18, ptr noundef %75, i32 noundef %conv131, i32 noundef %conv133, i32 noundef %conv135, i32 noundef %83) #6
  %84 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ring_ptr, align 8
  %86 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %ring_index, align 4
  %conv139 = zext i16 %87 to i32
  %88 = ptrtoint ptr %cnt82 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %cnt82, align 4
  %conv141 = zext i16 %89 to i32
  %90 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %id, align 4
  %conv143 = zext i16 %91 to i32
  %92 = ptrtoint ptr %max_q_depth123 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_q_depth123, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %3, i32 noundef 222, ptr noundef nonnull @.str.18, ptr noundef %85, i32 noundef %conv139, i32 noundef %conv141, i32 noundef %conv143, i32 noundef %93) #6
  br i1 %startqp, label %if.then146, label %cond.end.if.end157_crit_edge

cond.end.if.end157_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.then146:                                       ; preds = %cond.end
  %call147 = tail call i32 @qla25xx_init_req_que(ptr noundef %3, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %cmp148.not = icmp eq i32 %call147, 0
  br i1 %cmp148.not, label %if.end156, label %if.then150

if.then150:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %3, i32 noundef 223, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.qla25xx_create_req_que) #6
  tail call void @mutex_lock_nested(ptr noundef %mq_lock, i32 noundef 0) #6
  tail call void @_clear_bit(i32 noundef %conv20, ptr noundef %req_qid_map) #6
  tail call void @mutex_unlock(ptr noundef %mq_lock) #6
  br label %que_failed

if.end156:                                        ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 8
  %94 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load, 2097152
  store volatile i32 %bf.set, ptr %flags, align 8
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %cond.end.if.end157_crit_edge
  %95 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %id, align 4
  %conv159 = zext i16 %96 to i32
  br label %cleanup

que_failed:                                       ; preds = %if.then150, %if.then25, %if.end11.que_failed_crit_edge, %if.then10
  tail call fastcc void @qla25xx_free_req_que(ptr noundef %3, ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %que_failed, %if.end157, %if.then
  %retval.0 = phi i32 [ %conv159, %if.end157 ], [ 0, %que_failed ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_alloc_outstanding_cmds(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla25xx_create_rsp_que(ptr noundef %ha, i16 noundef zeroext %options, i8 noundef zeroext %vp_idx, i16 noundef zeroext %rid, ptr noundef %qpair, i1 noundef zeroext %startqp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 136) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %3, i32 noundef 102, ptr noundef nonnull @.str.20) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.rsp_que, ptr %call7.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 128, ptr %length, align 4
  %6 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ha, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 8256, ptr noundef nonnull %call7.i.i, i32 noundef 3264, i32 noundef 0) #6
  %ring = getelementptr inbounds %struct.rsp_que, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %ring, align 4
  %cmp8 = icmp eq ptr %call.i, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %3, i32 noundef 225, ptr noundef nonnull @.str.21) #6
  br label %que_failed

if.end11:                                         ; preds = %if.end
  %mq_lock = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 127
  tail call void @mutex_lock_nested(ptr noundef %mq_lock, i32 noundef 0) #6
  %rsp_qid_map = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 28
  %max_rsp_queues = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 31
  %9 = ptrtoint ptr %max_rsp_queues to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %max_rsp_queues, align 1
  %conv12 = zext i8 %10 to i32
  %call13 = tail call i32 @_find_first_zero_bit_be(ptr noundef %rsp_qid_map, i32 noundef %conv12) #6
  %conv15 = and i32 %call13, 65535
  %11 = ptrtoint ptr %max_rsp_queues to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_rsp_queues, align 1
  %conv17 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15, i32 %conv17)
  %cmp18.not = icmp ult i32 %conv15, %conv17
  br i1 %cmp18.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %mq_lock) #6
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %3, i32 noundef 226, ptr noundef nonnull @.str.15) #6
  br label %que_failed

if.end22:                                         ; preds = %if.end11
  %conv14 = trunc i32 %call13 to i16
  tail call void @_set_bit(i32 noundef %conv15, ptr noundef %rsp_qid_map) #6
  %msix = getelementptr inbounds %struct.qla_qpair, ptr %qpair, i32 0, i32 15
  %13 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msix, align 32
  %msix26 = getelementptr inbounds %struct.rsp_que, ptr %call7.i.i, i32 0, i32 14
  %15 = ptrtoint ptr %msix26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %msix26, align 4
  %rsp_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 25
  %16 = ptrtoint ptr %rsp_q_map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rsp_q_map, align 16
  %arrayidx = getelementptr ptr, ptr %17, i32 %conv15
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %rid27 = getelementptr inbounds %struct.rsp_que, ptr %call7.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %rid27 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %rid, ptr %rid27, align 8
  %conv28 = zext i8 %vp_idx to i16
  %vp_idx29 = getelementptr inbounds %struct.rsp_que, ptr %call7.i.i, i32 0, i32 12
  %20 = ptrtoint ptr %vp_idx29 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv28, ptr %vp_idx29, align 4
  %hw = getelementptr inbounds %struct.rsp_que, ptr %call7.i.i, i32 0, i32 13
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ha, ptr %hw, align 8
  %conv32 = zext i16 %rid to i32
  %conv34 = zext i8 %vp_idx to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %3, i32 noundef 228, ptr noundef nonnull @.str.22, i32 noundef %conv15, i32 noundef %conv32, i32 noundef %conv34, ptr noundef %ha) #6
  %22 = ptrtoint ptr %rid27 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %rid27, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %23)
  %tobool.not = icmp ult i16 %23, 256
  %24 = or i16 %options, 16
  %spec.select = select i1 %tobool.not, i16 %options, i16 %24
  %conv44 = trunc i16 %23 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv44)
  %tobool45.not = icmp eq i8 %conv44, 0
  %25 = or i16 %spec.select, 32
  %options.addr.1 = select i1 %tobool45.not, i16 %spec.select, i16 %25
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 54
  %26 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %isp_type, align 8
  %28 = and i32 %27, 45719552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %29 = icmp eq i32 %28, 0
  %30 = or i16 %options.addr.1, 64
  %options.addr.2 = select i1 %29, i16 %30, i16 %options.addr.1
  %31 = or i16 %options.addr.2, 2
  %options95 = getelementptr inbounds %struct.rsp_que, ptr %call7.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %options95 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %options95, align 2
  %id = getelementptr inbounds %struct.rsp_que, ptr %call7.i.i, i32 0, i32 11
  %33 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv14, ptr %id, align 2
  %mqenable = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 23
  %34 = ptrtoint ptr %mqenable to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mqenable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool97.not = icmp eq i8 %35, 0
  %36 = and i32 %27, 45711360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %37 = icmp eq i32 %36, 0
  %or.cond = select i1 %tobool97.not, i1 %37, i1 false
  br i1 %or.cond, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %mqiobase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 20
  %38 = ptrtoint ptr %mqiobase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mqiobase, align 32
  %mul134 = shl nuw nsw i32 %conv15, 12
  %add.ptr = getelementptr i8, ptr %39, i32 %mul134
  br label %cond.end

cond.false:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 9
  %40 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iobase, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %41, %cond.false ]
  %rsp_q_in = getelementptr inbounds %struct.device_reg_25xxmq, ptr %cond, i32 0, i32 2
  %rsp_q_in135 = getelementptr inbounds %struct.rsp_que, ptr %call7.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %rsp_q_in135 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %rsp_q_in, ptr %rsp_q_in135, align 4
  %rsp_q_out = getelementptr inbounds %struct.device_reg_25xxmq, ptr %cond, i32 0, i32 3
  %rsp_q_out136 = getelementptr inbounds %struct.rsp_que, ptr %call7.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %rsp_q_out136 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %rsp_q_out, ptr %rsp_q_out136, align 8
  %44 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ring, align 4
  %46 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %length, align 4
  %conv139 = zext i16 %47 to i32
  %add.ptr140 = getelementptr %struct.response_t, ptr %45, i32 %conv139
  %in_ptr = getelementptr inbounds %struct.rsp_que, ptr %call7.i.i, i32 0, i32 7
  %48 = ptrtoint ptr %in_ptr to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr140, ptr %in_ptr, align 8
  tail call void @mutex_unlock(ptr noundef %mq_lock) #6
  %49 = ptrtoint ptr %options95 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %options95, align 2
  %conv143 = zext i16 %50 to i32
  %51 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %id, align 2
  %conv145 = zext i16 %52 to i32
  %53 = ptrtoint ptr %rsp_q_in135 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rsp_q_in135, align 4
  %55 = ptrtoint ptr %rsp_q_out136 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rsp_q_out136, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1048576, ptr noundef %3, i32 noundef 49163, ptr noundef nonnull @.str.23, i32 noundef %conv143, i32 noundef %conv145, ptr noundef %54, ptr noundef %56) #6
  %57 = ptrtoint ptr %options95 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %options95, align 2
  %conv149 = zext i16 %58 to i32
  %59 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %id, align 2
  %conv151 = zext i16 %60 to i32
  %61 = ptrtoint ptr %rsp_q_in135 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rsp_q_in135, align 4
  %63 = ptrtoint ptr %rsp_q_out136 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rsp_q_out136, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %3, i32 noundef 229, ptr noundef nonnull @.str.23, i32 noundef %conv149, i32 noundef %conv151, ptr noundef %62, ptr noundef %64) #6
  %65 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %msix, align 32
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 2
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load = load volatile i32, ptr %flags, align 8
  %68 = and i32 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool155.not = icmp eq i32 %68, 0
  %cond156 = select i1 %tobool155.not, i32 4, i32 3
  %call157 = tail call i32 @qla25xx_request_irq(ptr noundef %ha, ptr noundef %qpair, ptr noundef %66, i32 noundef %cond156) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %cond.end.que_failed_crit_edge

cond.end.que_failed_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %que_failed

if.end160:                                        ; preds = %cond.end
  br i1 %startqp, label %if.then162, label %if.end160.if.end176_crit_edge

if.end160.if.end176_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

if.then162:                                       ; preds = %if.end160
  %call163 = tail call i32 @qla25xx_init_rsp_que(ptr noundef %3, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164.not = icmp eq i32 %call163, 0
  br i1 %cmp164.not, label %if.end172, label %if.then166

if.then166:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %3, i32 noundef 231, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.qla25xx_create_rsp_que) #6
  tail call void @mutex_lock_nested(ptr noundef %mq_lock, i32 noundef 0) #6
  tail call void @_clear_bit(i32 noundef %conv15, ptr noundef %rsp_qid_map) #6
  tail call void @mutex_unlock(ptr noundef %mq_lock) #6
  br label %que_failed

if.end172:                                        ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #8
  %flags173 = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 8
  %69 = ptrtoint ptr %flags173 to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load174 = load volatile i32, ptr %flags173, align 8
  %bf.set = or i32 %bf.load174, 1048576
  store volatile i32 %bf.set, ptr %flags173, align 8
  br label %if.end176

if.end176:                                        ; preds = %if.end172, %if.end160.if.end176_crit_edge
  %req = getelementptr inbounds %struct.rsp_que, ptr %call7.i.i, i32 0, i32 15
  %70 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %req, align 8
  tail call void @qla2x00_init_response_q_entries(ptr noundef nonnull %call7.i.i) #6
  %hw177 = getelementptr inbounds %struct.qla_qpair, ptr %qpair, i32 0, i32 16
  %71 = ptrtoint ptr %hw177 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw177, align 4
  %wq = getelementptr inbounds %struct.qla_hw_data, ptr %72, i32 0, i32 235
  %73 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wq, align 16
  %tobool178.not = icmp eq ptr %74, null
  br i1 %tobool178.not, label %if.end176.if.end185_crit_edge, label %do.body

if.end176.if.end185_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end185

do.body:                                          ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #8
  %q_work = getelementptr inbounds %struct.qla_qpair, ptr %qpair, i32 0, i32 17
  tail call void @__init_work(ptr noundef %q_work, i32 noundef 0) #6
  %75 = ptrtoint ptr %q_work to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -64, ptr %q_work, align 8
  %lockdep_map = getelementptr inbounds %struct.qla_qpair, ptr %qpair, i32 0, i32 17, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.24, ptr noundef nonnull @qla25xx_create_rsp_que.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry183 = getelementptr inbounds %struct.qla_qpair, ptr %qpair, i32 0, i32 17, i32 1
  %76 = ptrtoint ptr %entry183 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %entry183, ptr %entry183, align 4
  %prev.i = getelementptr inbounds %struct.qla_qpair, ptr %qpair, i32 0, i32 17, i32 1, i32 1
  %77 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %entry183, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qla_qpair, ptr %qpair, i32 0, i32 17, i32 2
  %78 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @qla_do_work, ptr %func, align 4
  br label %if.end185

if.end185:                                        ; preds = %do.body, %if.end176.if.end185_crit_edge
  %79 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %id, align 2
  %conv187 = zext i16 %80 to i32
  br label %cleanup

que_failed:                                       ; preds = %if.then166, %cond.end.que_failed_crit_edge, %if.then20, %if.then10
  tail call fastcc void @qla25xx_free_rsp_que(ptr noundef %3, ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %que_failed, %if.end185, %if.then
  %retval.0 = phi i32 [ %conv187, %if.end185 ], [ 0, %que_failed ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla25xx_request_irq(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_init_response_q_entries(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla_do_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %vha1 = getelementptr i8, ptr %work, i32 -48
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #6
  %rsp = getelementptr i8, ptr %work, i32 -16
  %2 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsp, align 8
  tail call void @qla24xx_process_response_queue(ptr noundef %1, ptr noundef %3) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla_ctrlvp_sp_done(ptr nocapture noundef readonly %sp, i32 noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %comp = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 21
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @complete(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_async_iocb_timeout(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_init_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_get_async_timeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_start_sp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_mark_device_lost(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_set_fcport_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla24xx_process_purex_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_update_fcports(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_post_relogin_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_loop_resync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_send_change_request(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_configure_vhba(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla24xx_process_response_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 95, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 215, i32 7}
!4 = !{ptr @__func__.qla24xx_enable_vp, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 216, i32 7}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 233, i32 6}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 238, i32 6}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 295, i32 9}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 303, i32 10}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 349, i32 6}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 490, i32 7}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 510, i32 7}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 525, i32 7}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 560, i32 6}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 679, i32 10}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 693, i32 10}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 719, i32 7}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 729, i32 7}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 742, i32 7}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 752, i32 6}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 770, i32 6}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 788, i32 6}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 802, i32 8}
!42 = !{ptr @__func__.qla25xx_create_req_que, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 802, i32 24}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 846, i32 7}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 856, i32 7}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 877, i32 6}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 900, i32 6}
!52 = !{ptr @__func__.qla25xx_create_rsp_que, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 918, i32 24}
!54 = !{ptr @qla25xx_create_rsp_que.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 930, i32 3}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 963, i32 6}
!59 = !{ptr @__func__.qla24xx_control_vp, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 963, i32 39}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 973, i32 13}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 984, i32 7}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 989, i32 36}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 998, i32 37}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 1002, i32 37}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 1006, i32 37}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 154, i32 7}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 361, i32 6}
!77 = !{ptr @__func__.qla2x00_do_dpc_vp, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 361, i32 40}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 368, i32 8}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 371, i32 8}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 385, i32 7}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 389, i32 7}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 402, i32 8}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 415, i32 8}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 419, i32 8}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 424, i32 6}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 251, i32 6}
!97 = !{ptr @__func__.qla24xx_configure_vp, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 251, i32 34}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 254, i32 37}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/qla2xxx/qla_mid.c", i32 40, i32 7}
!103 = !{ptr @init_completion.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../include/linux/completion.h", i32 87, i32 2}
!105 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i64 2148378198, i64 2148378224, i64 2148378253, i64 2148378287, i64 2148378318, i64 2148378341}
!116 = !{i64 2156790504}
!117 = !{i64 2148380663, i64 2148380689, i64 2148380718, i64 2148380752, i64 2148380783, i64 2148380806}
!118 = !{i64 2156789607}
