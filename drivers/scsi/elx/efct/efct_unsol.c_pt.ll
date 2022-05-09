; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/efct/efct_unsol.c_pt.bc'
source_filename = "../drivers/scsi/elx/efct/efct_unsol.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.87 = type { i32, i32 }
%struct.efc_hw_sequence = type { %struct.list_head, ptr, i8, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.efc_hw_rq_buffer = type { i16, %struct.efc_dma }
%struct.efc_dma = type { ptr, ptr, i32, i32, i32, ptr }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.efct = type { ptr, [6 x ptr], i32, i8, i8, i8, [16 x %struct.efct_intr_context], i32, [32 x i8], i32, %struct.list_head, %struct.efct_scsi_tgt, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.efct_hw, i32, ptr, i32, %struct.xarray, i32, i32, ptr }
%struct.efct_intr_context = type { ptr, i32 }
%struct.efct_scsi_tgt = type { i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, ptr, %struct.list_head, %struct.spinlock, i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.efct_hw = type { ptr, %struct.sli4, i16, i16, i32, i32, i8, i8, i16, %struct.efct_hw_config, [5 x i32], [32 x %struct.sli4_queue], [32 x %struct.sli4_queue], [32 x i16], [1 x %struct.sli4_queue], [97 x %struct.sli4_queue], [16 x %struct.sli4_queue], i32, i32, i32, i32, i32, i32, %struct.list_head, [128 x %struct.efct_queue_hash], [128 x %struct.efct_queue_hash], [128 x %struct.efct_queue_hash], [32 x ptr], [32 x ptr], [1 x ptr], [97 x ptr], [16 x ptr], i32, i32, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, %struct.sli4_link_event, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.efc_dma, %struct.efc_dma, %struct.efc_dma, %struct.atomic_t, [32 x i32], [32 x i32], %struct.atomic_t, ptr }
%struct.sli4 = type { ptr, ptr, [6 x ptr], i32, i32, i32, i16, i16, i16, i16, %struct.sli4_queue_info, i16, i8, i8, [2 x i8], i16, i32, i8, [8 x i8], [8 x i8], [2 x i32], [2 x [16 x i8]], [16 x i8], [3 x i32], [64 x i8], [32 x i8], i32, i32, [5 x %struct.sli4_extent], i32, %struct.sli4_params, i32, i32, i32, ptr, ptr, %struct.efc_dma, ptr, %struct.efc_dma }
%struct.sli4_queue_info = type { [5 x i16], [5 x i32], [5 x i16], [5 x i16], [5 x i32] }
%struct.sli4_extent = type { i32, i32, i32, ptr, ptr, i32 }
%struct.sli4_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.efct_hw_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [4 x i32] }
%struct.sli4_queue = type { %struct.efc_dma, %struct.spinlock, i32, i16, i16, i16, i16, i8, ptr, i16, i32, i32, i32, i64, %union.anon.85 }
%union.anon.85 = type { i32 }
%struct.efct_queue_hash = type { i8, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sli4_link_event = type { i32, i32, i32, i32, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.efct_node = type { %struct.list_head, %struct.kref, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, [32 x i8], i32, i32, i32, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.78 = type { ptr }
%struct.fcp_resp_with_ext = type { %struct.fcp_resp, %struct.fcp_resp_ext }
%struct.fcp_resp = type { [8 x i8], i16, i8, i8 }
%struct.fcp_resp_ext = type { i32, i32, i32 }
%struct.fcp_cmnd = type { %struct.scsi_lun, i8, i8, i8, i8, [16 x i8], i32 }
%struct.scsi_lun = type { [8 x i8] }
%struct.efct_io = type { ptr, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.kref, ptr, i32, i32, i32, i32, ptr, i32, i32, %struct.efct_scsi_tgt_io, i32, ptr, i32, ptr, i32, i8, i8, i8, i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, i8, %union.efct_hw_io_param_u, i32, i64, ptr, ptr, %struct.efc_dma, i32, i8, i8, i32 }
%struct.efct_scsi_tgt_io = type { %struct.se_cmd, [96 x i8], i32, i32, i64, i32, i8, ptr, i32, i32, i32, i32, i8, i8, i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%union.efct_hw_io_param_u = type { %struct.sli_bls_params }
%struct.sli_bls_params = type { i32, i32, i16, i16, i32, i32, i8, [12 x i8], i16, i16 }
%struct.efct_hw_send_frame_context = type { ptr, ptr, %struct.efct_hw_wqe, ptr, ptr, ptr, %struct.efc_dma }
%struct.efct_hw_wqe = type { %struct.list_head, i8, i8, i32, i32, ptr }

@efct_dispatch_fcp_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 348, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Sequence payload is NULL.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efct_dispatch_fcp_cmd\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/elx/efct/efct_unsol.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efct_dispatch_fcp_cmd._entry_ptr = internal global ptr @efct_dispatch_fcp_cmd._entry, section ".printk_index", align 4
@efct_dispatch_fcp_cmd._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 369, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to send busy task: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@efct_dispatch_fcp_cmd._entry_ptr.7 = internal global ptr @efct_dispatch_fcp_cmd._entry.5, section ".printk_index", align 4
@efct_dispatch_fcp_cmd._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 387, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Additional CDB not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@efct_dispatch_fcp_cmd._entry_ptr.10 = internal global ptr @efct_dispatch_fcp_cmd._entry.8, section ".printk_index", align 4
@efct_node_recv_abts_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 484, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SCSI IO allocation failed for ABTS received \00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"efct_node_recv_abts_frame\00", [38 x i8] zeroinitializer }, align 32
@efct_node_recv_abts_frame._entry_ptr = internal global ptr @efct_node_recv_abts_frame._entry, section ".printk_index", align 4
@efct_node_recv_abts_frame._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 488, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"s_id %06x d_id %06x ox_id %04x rx_id %04x\0A\00", [53 x i8] zeroinitializer }, align 32
@efct_node_recv_abts_frame._entry_ptr.15 = internal global ptr @efct_node_recv_abts_frame._entry.13, section ".printk_index", align 4
@efct_dispatch_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 60, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Node not found, drop cmd d_id:%x s_id:%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efct_dispatch_frame\00", [44 x i8] zeroinitializer }, align 32
@efct_dispatch_frame._entry_ptr = internal global ptr @efct_dispatch_frame._entry, section ".printk_index", align 4
@efct_dispatch_frame._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 70, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ABTS: Node not found, d_id:%x s_id:%x\0A\00", [57 x i8] zeroinitializer }, align 32
@efct_dispatch_frame._entry_ptr.20 = internal global ptr @efct_dispatch_frame._entry.18, section ".printk_index", align 4
@efct_dispatch_frame._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 74, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Received ABTS for Node:%p\0A\00", [37 x i8] zeroinitializer }, align 32
@efct_dispatch_frame._entry_ptr.23 = internal global ptr @efct_dispatch_frame._entry.21, section ".printk_index", align 4
@efct_validate_fcp_cmd.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"efct\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efct_validate_fcp_cmd\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drop ox_id %04x payload (%zd) less than (%zd)\0A\00", [49 x i8] zeroinitializer }, align 32
@efct_sframe_send_task_set_full_or_busy.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"efct_sframe_send_task_set_full_or_busy\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"efct_sframe_send_fcp_rsp failed %d\0A\00", [60 x i8] zeroinitializer }, align 32
@efct_sframe_common_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 265, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Fill send frame failed offset %d size %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efct_sframe_common_send\00", [40 x i8] zeroinitializer }, align 32
@efct_sframe_common_send._entry_ptr = internal global ptr @efct_sframe_common_send._entry, section ".printk_index", align 4
@efct_sframe_common_send._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 282, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efct_sframe_common_send._entry_ptr.32 = internal global ptr @efct_sframe_common_send._entry.31, section ".printk_index", align 4
@efct_sframe_common_send.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.30, ptr @.str.2, ptr @.str.33, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"efct_hw_send_frame failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__const.efct_dispatch_unsol_tmf.tmflist = private unnamed_addr constant [5 x %struct.anon.87] [%struct.anon.87 { i32 2, i32 3 }, %struct.anon.87 { i32 4, i32 4 }, %struct.anon.87 { i32 16, i32 6 }, %struct.anon.87 { i32 32, i32 8 }, %struct.anon.87 { i32 64, i32 7 }], align 4
@efct_dispatch_unsol_tmf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TMF x%x rejected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efct_dispatch_unsol_tmf\00", [40 x i8] zeroinitializer }, align 32
@efct_dispatch_unsol_tmf._entry_ptr = internal global ptr @efct_dispatch_unsol_tmf._entry, section ".printk_index", align 4
@efct_process_abts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 418, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Abort ox_id [%04x] rx_id [%04x]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efct_process_abts\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@efct_process_abts._entry_ptr = internal global ptr @efct_process_abts._entry, section ".printk_index", align 4
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"abts\00", [27 x i8] zeroinitializer }, align 32
@efct_process_abts._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.37, ptr @.str.2, i32 454, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Abort: ox_id [%04x], IO not found\0A\00", [61 x i8] zeroinitializer }, align 32
@efct_process_abts._entry_ptr.42 = internal global ptr @efct_process_abts._entry.40, section ".printk_index", align 4
@switch.table.efct_dispatch_fcp_cmd = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 8, i32 16, i32 0, i32 64], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 348, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 369, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 387, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 483, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 485, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 58, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 69, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 74, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 149, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 333, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 264, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 281, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 294, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 131, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 417, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 425, i32 22 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [38 x i8] c"../drivers/scsi/elx/efct/efct_unsol.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 453, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [35 x i8] c"switch.table.efct_dispatch_fcp_cmd\00", align 1
@llvm.compiler.used = appending global [56 x ptr] [ptr @efct_dispatch_fcp_cmd._entry, ptr @efct_dispatch_fcp_cmd._entry.5, ptr @efct_dispatch_fcp_cmd._entry.8, ptr @efct_dispatch_fcp_cmd._entry_ptr, ptr @efct_dispatch_fcp_cmd._entry_ptr.10, ptr @efct_dispatch_fcp_cmd._entry_ptr.7, ptr @efct_dispatch_frame._entry, ptr @efct_dispatch_frame._entry.18, ptr @efct_dispatch_frame._entry.21, ptr @efct_dispatch_frame._entry_ptr, ptr @efct_dispatch_frame._entry_ptr.20, ptr @efct_dispatch_frame._entry_ptr.23, ptr @efct_dispatch_unsol_tmf._entry, ptr @efct_dispatch_unsol_tmf._entry_ptr, ptr @efct_node_recv_abts_frame._entry, ptr @efct_node_recv_abts_frame._entry.13, ptr @efct_node_recv_abts_frame._entry_ptr, ptr @efct_node_recv_abts_frame._entry_ptr.15, ptr @efct_process_abts._entry, ptr @efct_process_abts._entry.40, ptr @efct_process_abts._entry_ptr, ptr @efct_process_abts._entry_ptr.42, ptr @efct_sframe_common_send._entry, ptr @efct_sframe_common_send._entry.31, ptr @efct_sframe_common_send._entry_ptr, ptr @efct_sframe_common_send._entry_ptr.32, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @switch.table.efct_dispatch_fcp_cmd], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_dispatch_fcp_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_dispatch_fcp_cmd._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_dispatch_fcp_cmd._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_node_recv_abts_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_node_recv_abts_frame._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_dispatch_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_dispatch_frame._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_dispatch_frame._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_sframe_common_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_sframe_common_send._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_dispatch_unsol_tmf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_process_abts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_process_abts._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.efct_dispatch_fcp_cmd to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_unsolicited_cb(ptr noundef %arg, ptr noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %header.i = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 3
  %0 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %header.i, align 4
  %dma.i = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma.i, align 4
  %fh_s_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %fh_s_id.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fh_s_id.i, align 1
  %conv.i.i = zext i8 %5 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %arrayidx1.i.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %7 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %9 to i32
  %or6.i.i = or i32 %or.i.i, %conv5.i.i
  %fh_d_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fh_d_id.i, align 1
  %conv.i66.i = zext i8 %11 to i32
  %shl.i67.i = shl nuw nsw i32 %conv.i66.i, 16
  %arrayidx1.i68.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx1.i68.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.i68.i, align 1
  %conv2.i69.i = zext i8 %13 to i32
  %shl3.i70.i = shl nuw nsw i32 %conv2.i69.i, 8
  %or.i71.i = or i32 %shl3.i70.i, %shl.i67.i
  %arrayidx4.i72.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx4.i72.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4.i72.i, align 1
  %conv5.i73.i = zext i8 %15 to i32
  %or6.i74.i = or i32 %or.i71.i, %conv5.i73.i
  %fh_type.i = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %fh_type.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fh_type.i, align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %entry.if.end_crit_edge [
    i8 8, label %if.then12.i
    i8 0, label %if.else.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then12.i:                                      ; preds = %entry
  %lookup.i.i = getelementptr inbounds %struct.efct, ptr %arg, i32 0, i32 23
  %call.i.i = tail call ptr @xa_load(ptr noundef %lookup.i.i, i32 noundef %or6.i.i) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then12.i
  %ref.i.i = getelementptr inbounds %struct.efct_node, ptr %call.i.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #5
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #5, !srcloc !84
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !85

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end16.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !86

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end16.i_crit_edge:         ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #5
  br label %if.end16.i

do.end.i:                                         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arg, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.16, i32 noundef %or6.i74.i, i32 noundef %or6.i.i) #8
  %hw.i = getelementptr inbounds %struct.efct, ptr %arg, i32 0, i32 19
  %call.i75.i = tail call i32 @efct_hw_rqpair_sequence_free(ptr noundef %hw.i, ptr noundef %seq) #5
  br label %cleanup

if.end16.i:                                       ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end16.i_crit_edge
  %call17.i = tail call i32 @efct_dispatch_fcp_cmd(ptr noundef nonnull %call.i.i, ptr noundef %seq) #5
  br label %if.end33.i

if.else.i:                                        ; preds = %entry
  %lookup.i76.i = getelementptr inbounds %struct.efct, ptr %arg, i32 0, i32 23
  %call.i77.i = tail call ptr @xa_load(ptr noundef %lookup.i76.i, i32 noundef %or6.i.i) #5
  %tobool.not.i78.i = icmp eq ptr %call.i77.i, null
  br i1 %tobool.not.i78.i, label %do.end23.i, label %if.then.i83.i

if.then.i83.i:                                    ; preds = %if.else.i
  %ref.i79.i = getelementptr inbounds %struct.efct_node, ptr %call.i77.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i80.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i79.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %ref.i79.i, i32 1, i32 3, i32 1) #5
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i79.i, ptr %ref.i79.i, i32 1, ptr elementtype(i32) %ref.i79.i) #5, !srcloc !84
  %asmresult.i.i.i.i.i.i.i81.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i81.i)
  %tobool1.not.i.i.i.i.i82.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i81.i, 0
  br i1 %tobool1.not.i.i.i.i.i82.i, label %if.then.i83.i.if.end15.sink.split.i.i.i.i.i88.i_crit_edge, label %if.else.i.i.i.i.i86.i, !prof !85

if.then.i83.i.if.end15.sink.split.i.i.i.i.i88.i_crit_edge: ; preds = %if.then.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i88.i

if.else.i.i.i.i.i86.i:                            ; preds = %if.then.i83.i
  %add.i.i.i.i.i84.i = add i32 %asmresult.i.i.i.i.i.i.i81.i, 1
  %24 = or i32 %add.i.i.i.i.i84.i, %asmresult.i.i.i.i.i.i.i81.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i.i85.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i.i85.i, label %if.else.i.i.i.i.i86.i.do.end29.i_crit_edge, label %if.else.i.i.i.i.i86.i.if.end15.sink.split.i.i.i.i.i88.i_crit_edge, !prof !86

if.else.i.i.i.i.i86.i.if.end15.sink.split.i.i.i.i.i88.i_crit_edge: ; preds = %if.else.i.i.i.i.i86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i88.i

if.else.i.i.i.i.i86.i.do.end29.i_crit_edge:       ; preds = %if.else.i.i.i.i.i86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29.i

if.end15.sink.split.i.i.i.i.i88.i:                ; preds = %if.else.i.i.i.i.i86.i.if.end15.sink.split.i.i.i.i.i88.i_crit_edge, %if.then.i83.i.if.end15.sink.split.i.i.i.i.i88.i_crit_edge
  %.sink.i.i.i.i.i87.i = phi i32 [ 2, %if.then.i83.i.if.end15.sink.split.i.i.i.i.i88.i_crit_edge ], [ 1, %if.else.i.i.i.i.i86.i.if.end15.sink.split.i.i.i.i.i88.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i79.i, i32 noundef %.sink.i.i.i.i.i87.i) #5
  br label %do.end29.i

do.end23.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arg, align 8
  %dev25.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25.i, ptr noundef nonnull @.str.19, i32 noundef %or6.i74.i, i32 noundef %or6.i.i) #8
  br label %if.end

do.end29.i:                                       ; preds = %if.end15.sink.split.i.i.i.i.i88.i, %if.else.i.i.i.i.i86.i.do.end29.i_crit_edge
  %27 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arg, align 8
  %dev31.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %call.i77.i) #8
  %call32.i = tail call i32 @efct_node_recv_abts_frame(ptr noundef nonnull %call.i77.i, ptr noundef %seq) #5
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end29.i, %if.end16.i
  %node.0.i = phi ptr [ %call.i.i, %if.end16.i ], [ %call.i77.i, %do.end29.i ]
  %ref.i = getelementptr inbounds %struct.efct_node, ptr %node.0.i, i32 0, i32 1
  %release.i = getelementptr inbounds %struct.efct_node, ptr %node.0.i, i32 0, i32 2
  %29 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %release.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #5
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #5, !srcloc !88
  %asmresult.i.i.i.i.i.i.i90.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i90.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i90.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i91.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i90.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i90.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.kref_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !86

if.end5.i.i.i.i.i.kref_put.exit.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kref_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #5
  br label %kref_put.exit.i

if.then.i91.i:                                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void %30(ptr noundef %ref.i) #5
  br label %kref_put.exit.i

kref_put.exit.i:                                  ; preds = %if.then.i91.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.kref_put.exit.i_crit_edge
  %hw35.i = getelementptr inbounds %struct.efct, ptr %arg, i32 0, i32 19
  %call.i92.i = tail call i32 @efct_hw_rqpair_sequence_free(ptr noundef %hw35.i, ptr noundef %seq) #5
  br label %cleanup

if.end:                                           ; preds = %do.end23.i, %entry.if.end_crit_edge
  %efcport = getelementptr inbounds %struct.efct, ptr %arg, i32 0, i32 13
  %32 = ptrtoint ptr %efcport to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %efcport, align 4
  tail call void @efc_dispatch_frame(ptr noundef %33, ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kref_put.exit.i, %do.end.i
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_dispatch_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_dispatch_fcp_cmd(ptr noundef %node, ptr noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  %fcprsp.i = alloca %struct.fcp_resp_with_ext, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %efct1 = getelementptr inbounds %struct.efct_node, ptr %node, i32 0, i32 3
  %0 = ptrtoint ptr %efct1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efct1, align 4
  %header = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 3
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  %payload = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 4
  %6 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %payload, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #8
  br label %cleanup41

if.end:                                           ; preds = %entry
  %dma3 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %dma3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma3, align 4
  %len.i = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %7, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %13)
  %cmp.i = icmp ult i32 %13, 32
  br i1 %cmp.i, label %if.then.i, label %if.end7

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_validate_fcp_cmd.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_dispatch_fcp_cmd, %if.then4.i)) #5
          to label %cleanup41 [label %if.then4.i], !srcloc !90

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %fh_ox_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 9
  %16 = ptrtoint ptr %fh_ox_id.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fh_ox_id.i, align 4
  %conv.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %payload, align 4
  %len7.i = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %19, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %len7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len7.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_validate_fcp_cmd.__UNIQUE_ID_ddebug313, ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %conv.i, i32 noundef %21, i32 noundef 32) #5
  br label %cleanup41

if.end7:                                          ; preds = %if.end
  %call8 = tail call i64 @scsilun_to_int(ptr noundef %11) #5
  %conv = trunc i64 %call8 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv)
  %cmp = icmp eq i32 %conv, -1
  br i1 %cmp, label %if.end7.cleanup41_crit_edge, label %if.end11

if.end7.cleanup41_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

if.end11:                                         ; preds = %if.end7
  %call12 = tail call ptr @efct_scsi_io_alloc(ptr noundef %node) #5
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end24

if.then14:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fcprsp.i) #5
  %22 = getelementptr inbounds %struct.fcp_resp, ptr %fcprsp.i, i32 0, i32 3
  %23 = getelementptr inbounds %struct.fcp_resp_with_ext, ptr %fcprsp.i, i32 0, i32 1
  %24 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %payload, align 4
  %dma.i = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma.i, align 4
  %28 = ptrtoint ptr %efct1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %efct1, align 4
  %30 = call ptr @memset(ptr %fcprsp.i, i32 0, i32 24)
  %active_ios_lock.i = getelementptr inbounds %struct.efct_node, ptr %node, i32 0, i32 6
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %active_ios_lock.i) #5
  %active_ios.i = getelementptr inbounds %struct.efct_node, ptr %node, i32 0, i32 7
  %31 = ptrtoint ptr %active_ios.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %active_ios.i, align 4
  %cmp.i.not.i = icmp eq ptr %32, %active_ios.i
  %conv7.i = select i1 %cmp.i.not.i, i8 8, i8 40
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv7.i, ptr %22, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %active_ios_lock.i, i32 noundef %call3.i) #5
  %fc_dl.i = getelementptr inbounds %struct.fcp_cmnd, ptr %27, i32 0, i32 6
  %34 = ptrtoint ptr %fc_dl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fc_dl.i, align 4
  %36 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %23, align 4
  %call.i.i = call fastcc i32 @efct_sframe_common_send(ptr noundef %node, ptr noundef %seq, ptr noundef nonnull %fcprsp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not.i, label %efct_sframe_send_task_set_full_or_busy.exit.thread, label %do.body11.i

efct_sframe_send_task_set_full_or_busy.exit.thread: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fcprsp.i) #5
  br label %cleanup41

do.body11.i:                                      ; preds = %if.then14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_sframe_send_task_set_full_or_busy.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_dispatch_fcp_cmd, %if.then17.i)) #5
          to label %do.end20 [label %if.then17.i], !srcloc !90

if.then17.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %29, align 8
  %dev.i73 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_sframe_send_task_set_full_or_busy.__UNIQUE_ID_ddebug315, ptr noundef %dev.i73, ptr noundef nonnull @.str.28, i32 noundef %call.i.i) #5
  br label %do.end20

do.end20:                                         ; preds = %if.then17.i, %do.body11.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fcprsp.i) #5
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.6, i32 noundef %call.i.i) #8
  br label %cleanup41

if.end24:                                         ; preds = %if.end11
  %hw_priv = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 5
  %41 = ptrtoint ptr %hw_priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_priv, align 4
  %hw_priv25 = getelementptr inbounds %struct.efct_io, ptr %call12, i32 0, i32 17
  %43 = ptrtoint ptr %hw_priv25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %hw_priv25, align 4
  %app_id = getelementptr inbounds %struct.efct_io, ptr %call12, i32 0, i32 47
  %44 = ptrtoint ptr %app_id to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %app_id, align 8
  %fh_ox_id.i74 = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 9
  %45 = ptrtoint ptr %fh_ox_id.i74 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %fh_ox_id.i74, align 4
  %conv.i75 = zext i16 %46 to i32
  %init_task_tag.i = getelementptr inbounds %struct.efct_io, ptr %call12, i32 0, i32 8
  %47 = ptrtoint ptr %init_task_tag.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv.i75, ptr %init_task_tag.i, align 8
  %fc_dl.i76 = getelementptr inbounds %struct.fcp_cmnd, ptr %11, i32 0, i32 6
  %48 = ptrtoint ptr %fc_dl.i76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fc_dl.i76, align 4
  %exp_xfer_len.i = getelementptr inbounds %struct.efct_io, ptr %call12, i32 0, i32 16
  %50 = ptrtoint ptr %exp_xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %exp_xfer_len.i, align 8
  %transferred.i = getelementptr inbounds %struct.efct_io, ptr %call12, i32 0, i32 20
  %51 = ptrtoint ptr %transferred.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %transferred.i, align 8
  %fh_f_ctl.i = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 5
  %52 = ptrtoint ptr %fh_f_ctl.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %fh_f_ctl.i, align 1
  %54 = and i8 %53, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i, label %if.end24.efct_populate_io_fcp_cmd.exit_crit_edge, label %if.then.i77

if.end24.efct_populate_io_fcp_cmd.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %efct_populate_io_fcp_cmd.exit

if.then.i77:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %fh_cs_ctl.i = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 2
  %55 = ptrtoint ptr %fh_cs_ctl.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %fh_cs_ctl.i, align 4
  br label %efct_populate_io_fcp_cmd.exit

efct_populate_io_fcp_cmd.exit:                    ; preds = %if.then.i77, %if.end24.efct_populate_io_fcp_cmd.exit_crit_edge
  %.sink.i = phi i8 [ %56, %if.then.i77 ], [ 0, %if.end24.efct_populate_io_fcp_cmd.exit_crit_edge ]
  %57 = getelementptr inbounds %struct.efct_io, ptr %call12, i32 0, i32 45
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %.sink.i, ptr %57, align 4
  %seq_init.i = getelementptr inbounds %struct.efct_io, ptr %call12, i32 0, i32 37
  %59 = ptrtoint ptr %seq_init.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %seq_init.i, align 1
  %fc_tm_flags = getelementptr inbounds %struct.fcp_cmnd, ptr %11, i32 0, i32 3
  %60 = ptrtoint ptr %fc_tm_flags to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %fc_tm_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool26.not = icmp eq i8 %61, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %efct_populate_io_fcp_cmd.exit
  %62 = ptrtoint ptr %exp_xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %exp_xfer_len.i, align 8
  %conv.i79 = zext i8 %61 to i32
  %and.i = and i32 %conv.i79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i80 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i80, label %for.inc.i, label %if.then27.for.end.thread.i_crit_edge

if.then27.for.end.thread.i_crit_edge:             ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.inc.3.i.for.end.thread.i_crit_edge, %for.inc.2.i.for.end.thread.i_crit_edge, %for.inc.1.i.for.end.thread.i_crit_edge, %for.inc.i.for.end.thread.i_crit_edge, %if.then27.for.end.thread.i_crit_edge
  %i.022.lcssa.i = phi i32 [ 0, %if.then27.for.end.thread.i_crit_edge ], [ 1, %for.inc.i.for.end.thread.i_crit_edge ], [ 2, %for.inc.1.i.for.end.thread.i_crit_edge ], [ 3, %for.inc.2.i.for.end.thread.i_crit_edge ], [ 4, %for.inc.3.i.for.end.thread.i_crit_edge ]
  %cmd.i = getelementptr [5 x %struct.anon.87], ptr @__const.efct_dispatch_unsol_tmf.tmflist, i32 0, i32 %i.022.lcssa.i, i32 1
  %63 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cmd.i, align 4
  %tmf_cmd.i = getelementptr inbounds %struct.efct_io, ptr %call12, i32 0, i32 32
  %65 = ptrtoint ptr %tmf_cmd.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %tmf_cmd.i, align 8
  %call.i = tail call i32 @efct_scsi_recv_tmf(ptr noundef nonnull %call12, i32 noundef %conv, i32 noundef %64, ptr noundef null, i32 noundef 0) #5
  br label %cleanup41

for.inc.i:                                        ; preds = %if.then27
  %and.1.i = and i32 %conv.i79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.for.end.thread.i_crit_edge

for.inc.i.for.end.thread.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %and.2.i = and i32 %conv.i79, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.thread.i_crit_edge

for.inc.1.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %and.3.i = and i32 %conv.i79, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.end.thread.i_crit_edge

for.inc.2.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %and.4.i = and i32 %conv.i79, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %do.end.i, label %for.inc.3.i.for.end.thread.i_crit_edge

for.inc.3.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i

do.end.i:                                         ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  %node.i = getelementptr inbounds %struct.efct_io, ptr %call12, i32 0, i32 3
  %66 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %node.i, align 4
  %efct.i = getelementptr inbounds %struct.efct_node, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %efct.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %efct.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %dev.i81 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i81, ptr noundef nonnull @.str.34, i32 noundef %conv.i79) #8
  %call8.i = tail call i32 @efct_scsi_send_tmf_resp(ptr noundef nonnull %call12, i32 noundef 4, ptr noundef null, ptr noundef nonnull @efct_fc_tmf_rejected_cb, ptr noundef null) #5
  br label %cleanup41

if.else:                                          ; preds = %efct_populate_io_fcp_cmd.exit
  %fc_pri_ta.i = getelementptr inbounds %struct.fcp_cmnd, ptr %11, i32 0, i32 2
  %72 = ptrtoint ptr %fc_pri_ta.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %fc_pri_ta.i, align 1
  %74 = and i8 %73, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %74)
  %75 = icmp ult i8 %74, 5
  br i1 %75, label %switch.lookup, label %if.else.efct_get_flags_fcp_cmd.exit_crit_edge

if.else.efct_get_flags_fcp_cmd.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %efct_get_flags_fcp_cmd.exit

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %and.i82 = zext i8 %74 to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.efct_dispatch_fcp_cmd, i32 0, i32 %and.i82
  %76 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %76)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %efct_get_flags_fcp_cmd.exit

efct_get_flags_fcp_cmd.exit:                      ; preds = %switch.lookup, %if.else.efct_get_flags_fcp_cmd.exit_crit_edge
  %flags.0.i = phi i32 [ 0, %if.else.efct_get_flags_fcp_cmd.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %fc_flags.i = getelementptr inbounds %struct.fcp_cmnd, ptr %11, i32 0, i32 4
  %77 = ptrtoint ptr %fc_flags.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %fc_flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %78)
  %tobool31.not = icmp ult i8 %78, 4
  br i1 %tobool31.not, label %if.end38, label %do.end35

do.end35:                                         ; preds = %efct_get_flags_fcp_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.9) #8
  br label %cleanup41

if.end38:                                         ; preds = %efct_get_flags_fcp_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  %81 = and i8 %78, 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %flags.0.i, %82
  %84 = and i8 %78, 2
  %85 = zext i8 %84 to i32
  %86 = or i32 %83, %85
  %conv39 = and i64 %call8, 4294967295
  %fc_cdb = getelementptr inbounds %struct.fcp_cmnd, ptr %11, i32 0, i32 5
  tail call void @efct_scsi_recv_cmd(ptr noundef nonnull %call12, i64 noundef %conv39, ptr noundef %fc_cdb, i32 noundef 16, i32 noundef %86) #5
  br label %cleanup41

cleanup41:                                        ; preds = %if.end38, %do.end35, %do.end.i, %for.end.thread.i, %do.end20, %efct_sframe_send_task_set_full_or_busy.exit.thread, %if.end7.cleanup41_crit_edge, %if.then4.i, %if.then.i, %do.end
  %retval.1 = phi i32 [ -5, %do.end ], [ -5, %if.end7.cleanup41_crit_edge ], [ %call.i.i, %do.end20 ], [ -5, %do.end35 ], [ 0, %if.end38 ], [ -5, %if.then.i ], [ -5, %if.then4.i ], [ 0, %efct_sframe_send_task_set_full_or_busy.exit.thread ], [ 0, %for.end.thread.i ], [ 0, %do.end.i ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @scsilun_to_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efct_scsi_io_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efct_scsi_recv_cmd(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_node_recv_abts_frame(ptr noundef %node, ptr nocapture noundef readonly %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %efct1 = getelementptr inbounds %struct.efct_node, ptr %node, i32 0, i32 3
  %0 = ptrtoint ptr %efct1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efct1, align 4
  %header = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 3
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  %abort_cnt = getelementptr inbounds %struct.efct_node, ptr %node, i32 0, i32 13
  %6 = ptrtoint ptr %abort_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %abort_cnt, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %abort_cnt, align 4
  %call = tail call ptr @efct_scsi_io_alloc(ptr noundef %node) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %hw_priv = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 5
  %8 = ptrtoint ptr %hw_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_priv, align 4
  %hw_priv2 = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 17
  %10 = ptrtoint ptr %hw_priv2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %hw_priv2, align 4
  %seq_init = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 37
  %11 = ptrtoint ptr %seq_init to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %seq_init, align 1
  %12 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %call, align 8
  %node4 = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %node4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %node, ptr %node4, align 4
  %cmd_tgt = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 34
  %14 = ptrtoint ptr %cmd_tgt to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %cmd_tgt, align 2
  %15 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %header, align 4
  %dma6 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dma6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma6, align 4
  %fh_ox_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %fh_ox_id.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %fh_ox_id.i, align 4
  %fh_rx_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %18, i32 0, i32 10
  %21 = ptrtoint ptr %fh_rx_id.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fh_rx_id.i, align 2
  %call.i = tail call ptr @efct_io_find_tgt_io(ptr noundef %1, ptr noundef %node, i16 noundef zeroext %20, i16 noundef zeroext %22) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  %23 = ptrtoint ptr %efct1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %efct1, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %conv15.i = zext i16 %20 to i32
  br i1 %tobool.not.i, label %do.end11.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  %conv4.i = zext i16 %22 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14.i, ptr noundef nonnull @.str.36, i32 noundef %conv15.i, i32 noundef %conv4.i) #8
  %display_name.i = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 2
  %27 = ptrtoint ptr %display_name.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.39, ptr %display_name.i, align 8
  %init_task_tag.i = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 8
  %28 = ptrtoint ptr %init_task_tag.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv15.i, ptr %init_task_tag.i, align 8
  %abort_rx_id.i = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 33
  %29 = ptrtoint ptr %abort_rx_id.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %22, ptr %abort_rx_id.i, align 4
  %tmf_cmd.i = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 32
  %30 = ptrtoint ptr %tmf_cmd.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %tmf_cmd.i, align 8
  %lun.i = getelementptr inbounds %struct.efct_io, ptr %call.i, i32 0, i32 15, i32 4
  %31 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %lun.i, align 8
  %conv6.i = trunc i64 %32 to i32
  %call7.i = tail call i32 @efct_scsi_recv_tmf(ptr noundef nonnull %call, i32 noundef %conv6.i, i32 noundef 1, ptr noundef nonnull %call.i, i32 noundef 0) #5
  %ref.i = getelementptr inbounds %struct.efct_io, ptr %call.i, i32 0, i32 6
  %release.i = getelementptr inbounds %struct.efct_io, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %release.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #5
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #5, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !86

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #5
  br label %if.end

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void %34(ptr noundef %ref.i) #5
  br label %if.end

do.end11.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14.i, ptr noundef nonnull @.str.41, i32 noundef %conv15.i) #8
  %call16.i = tail call ptr @efct_bls_send_rjt(ptr noundef nonnull %call, ptr noundef %18) #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %fh_s_id = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 3
  %40 = ptrtoint ptr %fh_s_id to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fh_s_id, align 1
  %conv.i = zext i8 %41 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr %struct.fc_frame_header, ptr %5, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %43 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.fc_frame_header, ptr %5, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %45 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %fh_d_id = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 1
  %46 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %fh_d_id, align 1
  %conv.i34 = zext i8 %47 to i32
  %shl.i35 = shl nuw nsw i32 %conv.i34, 16
  %arrayidx1.i36 = getelementptr %struct.fc_frame_header, ptr %5, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %arrayidx1.i36 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx1.i36, align 1
  %conv2.i37 = zext i8 %49 to i32
  %shl3.i38 = shl nuw nsw i32 %conv2.i37, 8
  %or.i39 = or i32 %shl3.i38, %shl.i35
  %arrayidx4.i40 = getelementptr %struct.fc_frame_header, ptr %5, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %arrayidx4.i40 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx4.i40, align 1
  %conv5.i41 = zext i8 %51 to i32
  %or6.i42 = or i32 %or.i39, %conv5.i41
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 9
  %52 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %fh_ox_id, align 4
  %conv = zext i16 %53 to i32
  %fh_rx_id = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 10
  %54 = ptrtoint ptr %fh_rx_id to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %fh_rx_id, align 2
  %conv17 = zext i16 %55 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.14, i32 noundef %or6.i, i32 noundef %or6.i42, i32 noundef %conv, i32 noundef %conv17) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %do.end11.i, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_rqpair_sequence_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efct_sframe_common_send(ptr nocapture noundef readonly %node, ptr noundef %seq, ptr nocapture noundef readonly %payload) unnamed_addr #0 align 64 {
entry:
  %hdr = alloca %struct.fc_frame_header, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %efct1 = getelementptr inbounds %struct.efct_node, ptr %node, i32 0, i32 3
  %0 = ptrtoint ptr %efct1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efct1, align 4
  %hw2 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19
  %header = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 3
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hdr) #5
  %6 = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 1
  %7 = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 2
  %8 = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 3
  %9 = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 4
  %10 = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 5
  %11 = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 5, i32 1
  %12 = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 5, i32 2
  %13 = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 6
  %14 = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 7
  %15 = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 8
  %16 = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 9
  %17 = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 10
  %18 = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 11
  %payload3 = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 4
  %19 = call ptr @memset(ptr %hdr, i32 255, i32 24)
  %20 = ptrtoint ptr %payload3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %payload3, align 4
  %dma4 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %21, i32 0, i32 1
  %size = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %21, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %phys = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %21, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phys, align 4
  %26 = ptrtoint ptr %dma4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma4, align 4
  %28 = call ptr @memset(ptr %hdr, i32 0, i32 24)
  %29 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 7, ptr %hdr, align 4
  %fh_s_id = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 3
  %30 = call ptr @memcpy(ptr %6, ptr %fh_s_id, i32 3)
  %fh_d_id13 = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 1
  %31 = call ptr @memcpy(ptr %8, ptr %fh_d_id13, i32 3)
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %9, align 4
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -103, ptr %10, align 1
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %11, align 2
  %35 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %12, align 1
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 9
  %36 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %fh_ox_id, align 4
  %38 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %16, align 4
  %fh_rx_id = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 10
  %39 = ptrtoint ptr %fh_rx_id to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %fh_rx_id, align 2
  %41 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %17, align 2
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %7, align 4
  %43 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %14, align 1
  %44 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %15, align 2
  %45 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %18, align 4
  %send_frame_seq_id = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19, i32 55
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_frame_seq_id, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @llvm.prefetch.p0(ptr %send_frame_seq_id, i32 1, i32 3, i32 1) #5
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_frame_seq_id, ptr %send_frame_seq_id, i32 1, ptr elementtype(i32) %send_frame_seq_id) #5, !srcloc !92
  %asmresult.i.i.i = extractvalue { i32, i32 } %46, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !93
  %conv18 = trunc i32 %asmresult.i.i.i to i8
  %dec = add i8 %conv18, -1
  %47 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %dec, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %23)
  %cmp = icmp ult i32 %23, 68
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef 68, i32 noundef %23) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %50 = call ptr @memset(ptr %27, i32 0, i32 68)
  %seq21 = getelementptr inbounds %struct.efct_hw_send_frame_context, ptr %27, i32 0, i32 5
  %51 = ptrtoint ptr %seq21 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %seq, ptr %seq21, align 4
  %add22 = add i32 %25, 68
  %payload23 = getelementptr inbounds %struct.efct_hw_send_frame_context, ptr %27, i32 0, i32 6
  %phys24 = getelementptr inbounds %struct.efct_hw_send_frame_context, ptr %27, i32 0, i32 6, i32 2
  %52 = ptrtoint ptr %phys24 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add22, ptr %phys24, align 4
  %add.ptr25 = getelementptr i8, ptr %27, i32 68
  %53 = ptrtoint ptr %payload23 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr25, ptr %payload23, align 4
  %size29 = getelementptr inbounds %struct.efct_hw_send_frame_context, ptr %27, i32 0, i32 6, i32 3
  %54 = ptrtoint ptr %size29 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 24, ptr %size29, align 4
  %len = getelementptr inbounds %struct.efct_hw_send_frame_context, ptr %27, i32 0, i32 6, i32 4
  %55 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 24, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %23)
  %cmp32 = icmp ult i32 %23, 92
  br i1 %cmp32, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.29, i32 noundef 92, i32 noundef %23) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end
  %58 = call ptr @memcpy(ptr %add.ptr25, ptr %payload, i32 24)
  %call45 = call i32 @efct_hw_send_frame(ptr noundef %hw2, ptr noundef nonnull %hdr, i8 noundef zeroext 54, i8 noundef zeroext 66, ptr noundef %payload23, ptr noundef %27, ptr noundef nonnull @efct_sframe_common_send_cb, ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool.not = icmp eq i32 %call45, 0
  br i1 %tobool.not, label %if.end40.cleanup_crit_edge, label %do.body47

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body47:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_sframe_common_send.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_sframe_common_send, %if.then52)) #5
          to label %cleanup [label %if.then52], !srcloc !90

if.then52:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 8
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_sframe_common_send.__UNIQUE_ID_ddebug314, ptr noundef %dev54, ptr noundef nonnull @.str.33, i32 noundef %call45) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %do.body47, %if.end40.cleanup_crit_edge, %do.end37, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end37 ], [ %call45, %if.then52 ], [ 0, %if.end40.cleanup_crit_edge ], [ %call45, %do.body47 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hdr) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_send_frame(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_sframe_common_send_cb(ptr nocapture noundef readonly %arg, ptr nocapture noundef readnone %cqe, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %wqcb = getelementptr inbounds %struct.efct_hw_send_frame_context, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %wqcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wqcb, align 4
  tail call void @efct_hw_reqtag_free(ptr noundef %1, ptr noundef %3) #5
  %seq = getelementptr inbounds %struct.efct_hw_send_frame_context, ptr %arg, i32 0, i32 5
  %4 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %seq, align 4
  %call.i = tail call i32 @efct_hw_rqpair_sequence_free(ptr noundef %1, ptr noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efct_hw_reqtag_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_scsi_recv_tmf(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_scsi_send_tmf_resp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_fc_tmf_rejected_cb(ptr noundef %io, i32 noundef %scsi_status, i32 noundef %flags, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @efct_scsi_io_free(ptr noundef %io) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efct_scsi_io_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efct_io_find_tgt_io(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efct_bls_send_rjt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !69, !71, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 348, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @efct_dispatch_fcp_cmd._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @efct_dispatch_fcp_cmd._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 369, i32 4}
!10 = !{ptr @efct_dispatch_fcp_cmd._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @efct_dispatch_fcp_cmd._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 387, i32 4}
!14 = !{ptr @efct_dispatch_fcp_cmd._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @efct_dispatch_fcp_cmd._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 483, i32 3}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @efct_node_recv_abts_frame._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @efct_node_recv_abts_frame._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 485, i32 3}
!23 = !{ptr @efct_node_recv_abts_frame._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @efct_node_recv_abts_frame._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 58, i32 4}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @efct_dispatch_frame._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @efct_dispatch_frame._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 69, i32 4}
!32 = !{ptr @efct_dispatch_frame._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @efct_dispatch_frame._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 74, i32 3}
!36 = !{ptr @efct_dispatch_frame._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @efct_dispatch_frame._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 149, i32 3}
!40 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @efct_validate_fcp_cmd.__UNIQUE_ID_ddebug313, !39, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 333, i32 3}
!45 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @efct_sframe_send_task_set_full_or_busy.__UNIQUE_ID_ddebug315, !44, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 264, i32 3}
!49 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @efct_sframe_common_send._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @efct_sframe_common_send._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @efct_sframe_common_send._entry.31, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 281, i32 3}
!54 = !{ptr @efct_sframe_common_send._entry_ptr.32, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 294, i32 3}
!57 = !{ptr @efct_sframe_common_send.__UNIQUE_ID_ddebug314, !56, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 131, i32 3}
!60 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @efct_dispatch_unsol_tmf._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @efct_dispatch_unsol_tmf._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 417, i32 3}
!65 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @efct_process_abts._entry, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @efct_process_abts._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 425, i32 22}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/elx/efct/efct_unsol.c", i32 453, i32 3}
!73 = !{ptr @efct_process_abts._entry.40, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @efct_process_abts._entry_ptr.42, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2148354693, i64 2148354725, i64 2148354754, i64 2148354788, i64 2148354819, i64 2148354842}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2148442718}
!88 = !{i64 2148357158, i64 2148357190, i64 2148357219, i64 2148357253, i64 2148357284, i64 2148357307}
!89 = !{i64 2149318832}
!90 = !{i64 2148966540, i64 2148966545, i64 2148966558, i64 2148966602, i64 2148966636, i64 2148966657}
!91 = !{i64 2148438598}
!92 = !{i64 2148353883, i64 2148353915, i64 2148353944, i64 2148353978, i64 2148354009, i64 2148354032}
!93 = !{i64 2148438827}
